
?
Command: %s
53*	vivadotcl2
route_designZ4-113h px� 
~
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2
xcu200Z17-347h px� 
n
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2
xcu200Z17-349h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
route_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
D

Starting %s Task
103*constraints2	
RoutingZ18-103h px� 
k
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
8Z35-254h px� 
L

Phase %s%s
101*constraints2
1 2
Build RT DesignZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
Nodegraph reading from file.  2

00:00:012

00:00:012

6112.8242
0.0002
1617722
190028Z17-722h px� 
I
%s*common20
.Phase 1 Build RT Design | Checksum: 186ef3dfb
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:24 ; elapsed = 00:00:10 . Memory (MB): peak = 6112.824 ; gain = 0.000 ; free physical = 161774 ; free virtual = 190030h px� 
R

Phase %s%s
101*constraints2
2 2
Router InitializationZ18-101h px� 
W

Phase %s%s
101*constraints2
2.1 2
Fix Topology ConstraintsZ18-101h px� 
T
%s*common2;
9Phase 2.1 Fix Topology Constraints | Checksum: 186ef3dfb
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:24 ; elapsed = 00:00:10 . Memory (MB): peak = 6112.824 ; gain = 0.000 ; free physical = 161774 ; free virtual = 190030h px� 
P

Phase %s%s
101*constraints2
2.2 2
Pre Route CleanupZ18-101h px� 
M
%s*common24
2Phase 2.2 Pre Route Cleanup | Checksum: 186ef3dfb
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:24 ; elapsed = 00:00:10 . Memory (MB): peak = 6112.824 ; gain = 0.000 ; free physical = 161775 ; free virtual = 190030h px� 
W

Phase %s%s
101*constraints2
2.3 2
Global Clock Net RoutingZ18-101h px� 
T
%s*common2;
9Phase 2.3 Global Clock Net Routing | Checksum: 18551398d
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:35 ; elapsed = 00:00:15 . Memory (MB): peak = 6214.371 ; gain = 101.547 ; free physical = 161656 ; free virtual = 189913h px� 
L

Phase %s%s
101*constraints2
2.4 2
Update TimingZ18-101h px� 
I
%s*common20
.Phase 2.4 Update Timing | Checksum: 285143076
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:56 ; elapsed = 00:00:24 . Memory (MB): peak = 6214.371 ; gain = 101.547 ; free physical = 161653 ; free virtual = 189909h px� 
z
Intermediate Timing Summary %s164*route29
7| WNS=2.087  | TNS=0.000  | WHS=-0.303 | THS=-133.855|
Z35-416h px� 
Y

Phase %s%s
101*constraints2
2.5 2
Update Timing for Bus SkewZ18-101h px� 
N

Phase %s%s
101*constraints2
2.5.1 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 2.5.1 Update Timing | Checksum: 23b5f4a80
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:33 ; elapsed = 00:00:33 . Memory (MB): peak = 6214.371 ; gain = 101.547 ; free physical = 161642 ; free virtual = 189899h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=2.087  | TNS=0.000  | WHS=N/A    | THS=N/A    |
Z35-416h px� 
V
%s*common2=
;Phase 2.5 Update Timing for Bus Skew | Checksum: 2486086df
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:33 ; elapsed = 00:00:33 . Memory (MB): peak = 6214.371 ; gain = 101.547 ; free physical = 161642 ; free virtual = 189899h px� 
O
%s*common26
4Phase 2 Router Initialization | Checksum: 231528a0d
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:41 ; elapsed = 00:00:35 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161544 ; free virtual = 189801h px� 
L

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101h px� 
M

Phase %s%s
101*constraints2
3.1 2
Global RoutingZ18-101h px� 
J
%s*common21
/Phase 3.1 Global Routing | Checksum: 231528a0d
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:41 ; elapsed = 00:00:35 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161544 ; free virtual = 189801h px� 
R

Phase %s%s
101*constraints2
3.2 2
Initial Net RoutingZ18-101h px� 
O
%s*common26
4Phase 3.2 Initial Net Routing | Checksum: 19f745900
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:58 ; elapsed = 00:00:42 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161541 ; free virtual = 189798h px� 
I
%s*common20
.Phase 3 Initial Routing | Checksum: 1627949a8
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:00 ; elapsed = 00:00:42 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161540 ; free virtual = 189797h px� 
O

Phase %s%s
101*constraints2
4 2
Rip-up And RerouteZ18-101h px� 
Q

Phase %s%s
101*constraints2
4.1 2
Global Iteration 0Z18-101h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=1.815  | TNS=0.000  | WHS=0.002  | THS=0.000  |
Z35-416h px� 
N
%s*common25
3Phase 4.1 Global Iteration 0 | Checksum: 200c591c8
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:18 ; elapsed = 00:01:41 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161541 ; free virtual = 189798h px� 
\

Phase %s%s
101*constraints2
4.2 2
Additional Iteration for HoldZ18-101h px� 
Y
%s*common2@
>Phase 4.2 Additional Iteration for Hold | Checksum: 24af15533
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:18 ; elapsed = 00:01:42 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161543 ; free virtual = 189800h px� 
L
%s*common23
1Phase 4 Rip-up And Reroute | Checksum: 24af15533
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:19 ; elapsed = 00:01:42 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161543 ; free virtual = 189800h px� 
X

Phase %s%s
101*constraints2
5 2
Delay and Skew OptimizationZ18-101h px� 
L

Phase %s%s
101*constraints2
5.1 2
Delay CleanUpZ18-101h px� 
I
%s*common20
.Phase 5.1 Delay CleanUp | Checksum: 24af15533
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:19 ; elapsed = 00:01:42 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161543 ; free virtual = 189800h px� 
V

Phase %s%s
101*constraints2
5.2 2
Clock Skew OptimizationZ18-101h px� 
S
%s*common2:
8Phase 5.2 Clock Skew Optimization | Checksum: 24af15533
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:20 ; elapsed = 00:01:42 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161543 ; free virtual = 189800h px� 
U
%s*common2<
:Phase 5 Delay and Skew Optimization | Checksum: 24af15533
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:20 ; elapsed = 00:01:42 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161543 ; free virtual = 189800h px� 
J

Phase %s%s
101*constraints2
6 2
Post Hold FixZ18-101h px� 
L

Phase %s%s
101*constraints2
6.1 2
Hold Fix IterZ18-101h px� 
N

Phase %s%s
101*constraints2
6.1.1 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 6.1.1 Update Timing | Checksum: 22b29fc4d
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:32 ; elapsed = 00:01:45 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161547 ; free virtual = 189804h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=1.815  | TNS=0.000  | WHS=0.002  | THS=0.000  |
Z35-416h px� 
I
%s*common20
.Phase 6.1 Hold Fix Iter | Checksum: 1d9f3ca35
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:32 ; elapsed = 00:01:45 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161547 ; free virtual = 189803h px� 
G
%s*common2.
,Phase 6 Post Hold Fix | Checksum: 1d9f3ca35
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:32 ; elapsed = 00:01:45 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161544 ; free virtual = 189801h px� 
K

Phase %s%s
101*constraints2
7 2
Route finalizeZ18-101h px� 
H
%s*common2/
-Phase 7 Route finalize | Checksum: 1d9f3ca35
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:36 ; elapsed = 00:01:46 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161540 ; free virtual = 189797h px� 
R

Phase %s%s
101*constraints2
8 2
Verifying routed netsZ18-101h px� 
O
%s*common26
4Phase 8 Verifying routed nets | Checksum: 1d9f3ca35
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:37 ; elapsed = 00:01:46 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161539 ; free virtual = 189796h px� 
N

Phase %s%s
101*constraints2
9 2
Depositing RoutesZ18-101h px� 
�
,Router swapped GT pin %s to physical pin %s
200*route2�
�qsfp0_phy_1_inst/xcvr.eth_xcvr_gt_full_inst/inst/gen_gtwizard_gtye4_top.eth_xcvr_gt_full_gtwizard_gtye4_inst/gen_gtwizard_gtye4.gen_common.gen_common_container[29].gen_enabled_common.gtye4_common_wrapper_inst/common_inst/gtye4_common_gen.GTYE4_COMMON_PRIM_INST/GTREFCLK00�qsfp0_phy_1_inst/xcvr.eth_xcvr_gt_full_inst/inst/gen_gtwizard_gtye4_top.eth_xcvr_gt_full_gtwizard_gtye4_inst/gen_gtwizard_gtye4.gen_common.gen_common_container[29].gen_enabled_common.gtye4_common_wrapper_inst/common_inst/gtye4_common_gen.GTYE4_COMMON_PRIM_INST/GTREFCLK002J
"GTYE4_COMMON_X1Y12/COM0_REFCLKOUT1"GTYE4_COMMON_X1Y12/COM0_REFCLKOUT18Z35-467h px� 
�
,Router swapped GT pin %s to physical pin %s
200*route2�
�qsfp1_phy_1_inst/xcvr.eth_xcvr_gt_full_inst/inst/gen_gtwizard_gtye4_top.eth_xcvr_gt_full_gtwizard_gtye4_inst/gen_gtwizard_gtye4.gen_common.gen_common_container[29].gen_enabled_common.gtye4_common_wrapper_inst/common_inst/gtye4_common_gen.GTYE4_COMMON_PRIM_INST/GTREFCLK00�qsfp1_phy_1_inst/xcvr.eth_xcvr_gt_full_inst/inst/gen_gtwizard_gtye4_top.eth_xcvr_gt_full_gtwizard_gtye4_inst/gen_gtwizard_gtye4.gen_common.gen_common_container[29].gen_enabled_common.gtye4_common_wrapper_inst/common_inst/gtye4_common_gen.GTYE4_COMMON_PRIM_INST/GTREFCLK002J
"GTYE4_COMMON_X1Y11/COM0_REFCLKOUT1"GTYE4_COMMON_X1Y11/COM0_REFCLKOUT18Z35-467h px� 
K
%s*common22
0Phase 9 Depositing Routes | Checksum: 1d9f3ca35
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:40 ; elapsed = 00:01:48 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161539 ; free virtual = 189796h px� 
K

Phase %s%s
101*constraints2
10 2
Resolve XTalkZ18-101h px� 
H
%s*common2/
-Phase 10 Resolve XTalk | Checksum: 1d9f3ca35
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:41 ; elapsed = 00:01:48 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161539 ; free virtual = 189796h px� 
P

Phase %s%s
101*constraints2
11 2
Post Router TimingZ18-101h px� 
u
Estimated Timing Summary %s
57*route28
6| WNS=1.815  | TNS=0.000  | WHS=0.002  | THS=0.000  |
Z35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
M
%s*common24
2Phase 11 Post Router Timing | Checksum: 1d9f3ca35
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:47 ; elapsed = 00:01:49 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161540 ; free virtual = 189797h px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
Y

Phase %s%s
101*constraints2
12 2
Post-Route Event ProcessingZ18-101h px� 
V
%s*common2=
;Phase 12 Post-Route Event Processing | Checksum: 1a80d676b
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:48 ; elapsed = 00:01:50 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161542 ; free virtual = 189799h px� 
E
%s*common2,
*Ending Routing Task | Checksum: 1a80d676b
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:49 ; elapsed = 00:01:51 . Memory (MB): peak = 6314.543 ; gain = 201.719 ; free physical = 161540 ; free virtual = 189797h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1532
22
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
route_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
route_design: 2

00:04:552

00:01:532

6314.5432	
209.7232
1615432
189800Z17-722h px� 

%s4*runtcl2c
aExecuting : report_drc -file fpga_drc_routed.rpt -pb fpga_drc_routed.pb -rpx fpga_drc_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2V
Treport_drc -file fpga_drc_routed.rpt -pb fpga_drc_routed.pb -rpx fpga_drc_routed.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
Y/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga/fpga.runs/impl_1/fpga_drc_routed.rptY/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga/fpga.runs/impl_1/fpga_drc_routed.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file fpga_methodology_drc_routed.rpt -pb fpga_methodology_drc_routed.pb -rpx fpga_methodology_drc_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file fpga_methodology_drc_routed.rpt -pb fpga_methodology_drc_routed.pb -rpx fpga_methodology_drc_routed.rpxZ4-113h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_output_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
508@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_input_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
568@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_input_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
658@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_output_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
1298@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_input_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
1318@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_output_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
1728@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_input_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
1748@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_output_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
1828@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_input_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
1848@Z18-632h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
G
$Running Methodology with %s threads
74*drc2
8Z23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
e/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga/fpga.runs/impl_1/fpga_methodology_drc_routed.rpte/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga/fpga.runs/impl_1/fpga_methodology_drc_routed.rpt8Z2-1520h px� 
R
%s completed successfully
29*	vivadotcl2
report_methodologyZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
report_methodology: 2

00:00:342

00:00:072

6402.5862
0.0002
1615522
189809Z17-722h px� 
�
%s4*runtcl2s
qExecuting : report_power -file fpga_power_routed.rpt -pb fpga_power_summary_routed.pb -rpx fpga_power_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2f
dreport_power -file fpga_power_routed.rpt -pb fpga_power_summary_routed.pb -rpx fpga_power_routed.rpxZ4-113h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_output_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
508@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_input_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
568@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_input_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
658@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_output_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
1298@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_input_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
1318@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_output_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
1728@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_input_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
1748@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_output_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
1828@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2
set_input_delay2<
8/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga.xdc2
1848@Z18-632h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
�Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1812
32
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
report_powerZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
report_power: 2

00:00:292

00:00:132

6402.5862
0.0002
1615372
189808Z17-722h px� 
s
%s4*runtcl2W
UExecuting : report_route_status -file fpga_route_status.rpt -pb fpga_route_status.pb
h px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -report_unconstrained -file fpga_timing_summary_routed.rpt -pb fpga_timing_summary_routed.pb -rpx fpga_timing_summary_routed.rpx -warn_on_violation 
h px� 
v
UpdateTimingParams:%s.
91*timing2=
; Speed grade: -2, Temperature grade: E, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
8Z38-191h px� 
�
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px� 
k
%s4*runtcl2O
MExecuting : report_incremental_reuse -file fpga_incremental_reuse_routed.rpt
h px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
k
%s4*runtcl2O
MExecuting : report_clock_utilization -file fpga_clock_utilization_routed.rpt
h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
report_clock_utilization: 2

00:00:162

00:00:162

6402.5862
0.0002
1615062
189802Z17-722h px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file fpga_bus_skew_routed.rpt -pb fpga_bus_skew_routed.pb -rpx fpga_bus_skew_routed.rpx
h px� 
v
UpdateTimingParams:%s.
91*timing2=
; Speed grade: -2, Temperature grade: E, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
8Z38-191h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.342
00:00:00.072

6402.5862
0.0002
1615042
189807Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PlaceDB: 2

00:00:042

00:00:012

6402.5862
0.0002
1614682
189806Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

6402.5862
0.0002
1614682
189806Z17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote RouteStorage: 2
00:00:00.572
00:00:00.362

6402.5862
0.0002
1614592
189806Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Netlist Cache: 2
00:00:00.032
00:00:00.032

6402.5862
0.0002
1614572
189806Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Device Cache: 2
00:00:00.012
00:00:00.012

6402.5862
0.0002
1614552
189806Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write Physdb Complete: 2

00:00:042

00:00:022

6402.5862
0.0002
1614552
189806Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2W
U/home/weigao/PHY-Project/example/AU200/fpga_10g/fpga/fpga.runs/impl_1/fpga_routed.dcpZ17-1381h px� 


End Record