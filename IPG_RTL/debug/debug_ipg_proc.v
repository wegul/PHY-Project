`resetall
`timescale 1ns / 1ps
`default_nettype none

//1. read the received IPG message
//2. generate message
// 3. transmit the generated message to output [63:0] ipg_msg
module debug_ipg_proc(
        input wire clk,



        // The received frame.
        input wire [63:0] rx_ipg_data,
        input wire [5:0] rx_len,

        output reg [519:0] ipg_reply, //will be put in queue
        output reg [63:0] ipg_reply_chunk,

        output reg [2:0] state_reg, state_next,
        output reg [HDR_WIDTH-1:0] rx_hdr, // 0 for read, 1 for write
        output reg [63:0] addr,
        output reg [6:0] addr_count_reg,
        output reg [511:0] rx_payload,

        output reg [9:0] rx_payload_count,
        output reg [9:0] tx_payload_count
    );


    /* 1. parse ipg_reply. The format is: 2bit hdr: 00 c_read, 01 c_write, 10 d_read, 11 d_write.
    c_read means it is a control msg and the payload data is addr to be read.
    d_read means it is a data msg and the payload is answer to a read request.

    d_write means it is a control msg and the payload could be either addr or memory data.

     2. ipg_proc should use a state machine to wait for 64bit address. 
     
     3. If read, ipg_proc return Memory data = repeat the 64bit address 8 times

     3. If write. ipg_proc should use the state machine to wait for 512bit memory data.
    */

    parameter HDR_WIDTH=8;

    localparam READ_REQ=0;
    localparam WRITE_REQ=1;

    localparam [7:0]
               BLOCK_TYPE_CTRL     = 8'h1e, // C7 C6 C5 C4 C3 C2 C1 C0 BT
               BLOCK_TYPE_OS_4     = 8'h2d, // D7 D6 D5 O4 C3 C2 C1 C0 BT
               BLOCK_TYPE_START_4  = 8'h33, // D7 D6 D5    C3 C2 C1 C0 BT
               BLOCK_TYPE_OS_START = 8'h66, // D7 D6 D5    O0 D3 D2 D1 BT
               BLOCK_TYPE_OS_04    = 8'h55, // D7 D6 D5 O4 O0 D3 D2 D1 BT
               BLOCK_TYPE_START_0  = 8'h78, // D7 D6 D5 D4 D3 D2 D1    BT
               BLOCK_TYPE_OS_0     = 8'h4b, // C7 C6 C5 C4 O0 D3 D2 D1 BT
               BLOCK_TYPE_TERM_0   = 8'h87, // C7 C6 C5 C4 C3 C2 C1    BT
               BLOCK_TYPE_TERM_1   = 8'h99, // C7 C6 C5 C4 C3 C2    D0 BT
               BLOCK_TYPE_TERM_2   = 8'haa, // C7 C6 C5 C4 C3    D1 D0 BT
               BLOCK_TYPE_TERM_3   = 8'hb4, // C7 C6 C5 C4    D2 D1 D0 BT
               BLOCK_TYPE_TERM_4   = 8'hcc, // C7 C6 C5    D3 D2 D1 D0 BT
               BLOCK_TYPE_TERM_5   = 8'hd2, // C7 C6    D4 D3 D2 D1 D0 BT
               BLOCK_TYPE_TERM_6   = 8'he1, // C7    D5 D4 D3 D2 D1 D0 BT
               BLOCK_TYPE_TERM_7   = 8'hff; //    D6 D5 D4 D3 D2 D1 D0 BT

    // reg hdr = 0; // 0 for read, 1 for write
    // reg [63:0] addr=0;
    // reg [511:0] rx_payload = 0;

    reg [HDR_WIDTH-1:0] tx_hdr= 0;



    localparam [2:0]
               STATE_WAIT = 3'd0,
               STATE_ADDR = 3'd1,
               STATE_REPLY = 3'd2,
               STATE_WRITE = 3'd3,
               STATE_ENQ = 3'd4;



    initial begin
        state_reg =STATE_WAIT;
        state_next= STATE_WAIT;
        addr_count_reg = 7'd64;
        rx_payload_count = 10'd512;
        rx_payload = 0;
        addr = 0;
    end




    integer i =0;


    always @ (posedge clk) begin
        state_next = STATE_WAIT;

        case(state_reg)
            STATE_WAIT: begin
                if (rx_len > 0) begin
                    rx_hdr = rx_ipg_data[63:63-HDR_WIDTH+1];
                    addr_count_reg = addr_count_reg - rx_len + HDR_WIDTH;
                    // addr[63:addr_count_reg] = rx_ipg_data[63-HDR_LEN:64-rx_len];

                    for(i=63;i>=addr_count_reg;i=i-1) begin
                        addr[i] = rx_ipg_data[i-HDR_WIDTH];
                    end
                    state_next = STATE_ADDR;
                    // $display("===\n case wait %h %d %d %d\n===",addr,j, state_reg,state_next);
                end
                else begin
                    state_next = STATE_WAIT;
                    addr_count_reg = 7'd64;
                end
            end

            STATE_ADDR: begin
                if (rx_len < addr_count_reg) begin
                    // addr[addr_count_reg-1:addr_count_reg-rx_len]=rx_ipg_data[63:64-rx_len];
                    for (i=1;i<=rx_len;i=i+1) begin
                        addr[addr_count_reg-i] = rx_ipg_data[64-i];
                    end
                    addr_count_reg = addr_count_reg - rx_len;
                end
                else begin
                    // addr[addr_count_reg-1:0]=rx_ipg_data[63:64-addr_count_reg];
                    for(i=1;i<=addr_count_reg;i=i+1) begin
                        addr[addr_count_reg-i] = rx_ipg_data [64-i];
                    end
                    addr_count_reg = 0;
                end
                // $display("===\n aaaaa%d\n===",addr_count_reg);

                if (addr_count_reg == 0) begin
                    // finish addr
                    if (rx_hdr == READ_REQ) begin
                        state_next = STATE_REPLY;
                    end
                    else if (rx_hdr == WRITE_REQ) begin
                        state_next = STATE_WRITE;
                    end
                    // //TODO: just for debug
                    // else state_next = STATE_REPLY;

                end
                else begin
                    // $display("===\n bbbb%d\n===",state_next);

                    state_next = STATE_ADDR;
                end
                // $display("===\n case addr end state_next%d\n===",state_next);

            end

            STATE_REPLY: begin
                //generate reply
                ipg_reply = 0;
                for (i = 0;i<520;i =i+16) begin
                    ipg_reply[i +: 16] = i;
                end
                // ipg_reply[519 -:64] = 64'hccc00cccabcdefff;
                state_next = STATE_ENQ;

                tx_payload_count = 10'd520;// TODO: could be variable.
                addr = 0;
                addr_count_reg=7'd64;
            end

            STATE_ENQ: begin
                ipg_reply_chunk[7:0] = BLOCK_TYPE_CTRL;
                if(tx_payload_count > 56) begin
                    ipg_reply_chunk[64:8] = ipg_reply[tx_payload_count-1 -: 56];
                    tx_payload_count = tx_payload_count - 56;
                end
                else begin
                    for (i=0;i<tx_payload_count;i=i+1) begin
                        ipg_reply_chunk[63-i] = ipg_reply[tx_payload_count-i-1];
                    end
                    tx_payload_count = 0;
                end

                if(tx_payload_count == 0) begin
                    state_next = STATE_WAIT;
                end
                else state_next = STATE_ENQ;

            end


            STATE_WRITE: begin
                if (rx_len < rx_payload_count) begin
                    for (i=1;i<=rx_len;i=i+1) begin
                        rx_payload[rx_payload_count-i] = rx_ipg_data[64-i];
                    end
                    rx_payload_count = rx_payload_count - rx_len;
                end
                else begin
                    for(i=1;i<=rx_payload_count;i=i+1) begin
                        rx_payload[rx_payload_count-i] = rx_ipg_data [64-i];
                    end
                    rx_payload_count = 0;
                end
                if (rx_payload_count == 0) begin
                    // finish receiving payload
                    //TODO: write payload in memory
                    // *******
                    // Enqueue Here
                    //*********
                    rx_payload = 0;
                    rx_payload_count =10'd512;
                    addr = 0;
                    addr_count_reg=7'd64;
                end
                else begin
                    state_next = STATE_WRITE;
                end
            end
            // default: begin
            //     $display("===\ndefault called\n===%h",state_reg == STATE_WAIT);
            // end
        endcase
        state_reg=state_next;
        // $display("===\nendcase %d\n===",state_reg);

    end


    // assign ipg_reply = rx_ipg_data*12;




endmodule
