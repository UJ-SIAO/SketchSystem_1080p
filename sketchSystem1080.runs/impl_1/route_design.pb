
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: 4b432763
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:14 ; elapsed = 00:02:04 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: 4b432763
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:17 ; elapsed = 00:02:07 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 4b432763
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:17 ; elapsed = 00:02:07 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 4b432763
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:17 ; elapsed = 00:02:07 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
B
-Phase 2.4 Update Timing | Checksum: 84109048
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:49 ; elapsed = 00:02:29 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-19.784| TNS=-490.859| WHS=-0.317 | THS=-865.304|
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 2.5.1 Update Timing | Checksum: 14307c36a
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:10 ; elapsed = 00:02:43 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-19.784| TNS=-475.108| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
O
:Phase 2.5 Update Timing for Bus Skew | Checksum: dc25b2ce
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:11 ; elapsed = 00:02:44 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
I
4Phase 2 Router Initialization | Checksum: 13b8ac77d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:11 ; elapsed = 00:02:44 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 238a7ba6b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:31 ; elapsed = 00:02:56 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-19.976| TNS=-2989.607| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 2b29f57b0
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:28 ; elapsed = 00:03:33 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-20.180| TNS=-2986.841| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 201676dec
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:35 ; elapsed = 00:03:39 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 201676dec
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:35 ; elapsed = 00:03:39 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 1fb8564b1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:41 ; elapsed = 00:03:43 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-19.861| TNS=-2944.297| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1a8aa5216
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:43 ; elapsed = 00:03:44 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1a8aa5216
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:43 ; elapsed = 00:03:44 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1a8aa5216
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:43 ; elapsed = 00:03:44 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 19012c93d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:49 ; elapsed = 00:03:48 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-19.835| TNS=-2906.189| WHS=-0.032 | THS=-0.054 |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 16f55757e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:49 ; elapsed = 00:03:49 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 1d97adefa
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:50 ; elapsed = 00:03:49 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 1e6b00170
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:50 ; elapsed = 00:03:49 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 1e6b00170
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:50 ; elapsed = 00:03:50 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 14023d6b3
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:55 ; elapsed = 00:03:54 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 10.1 Update Timing | Checksum: ae94cc4c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:05:00 ; elapsed = 00:03:58 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
?
Estimated Timing Summary %s
57*route2L
8| WNS=-19.835| TNS=-2906.189| WHS=0.050  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
F
1Phase 10 Post Router Timing | Checksum: ae94cc4c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:05:00 ; elapsed = 00:03:58 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2o
[Time (s): cpu = 00:05:01 ; elapsed = 00:03:58 . Memory (MB): peak = 1808.277 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1002default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:05:172default:default2
00:04:082default:default2
1808.2772default:default2
0.0002default:defaultZ17-268h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:292default:default2
00:00:112default:default2
1808.2772default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2h
TD:/GitCode/SketchSystem_1080p/sketchSystem1080.runs/impl_1/system_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:362default:default2
00:00:182default:default2
1808.2772default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
Executing : report_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb -rpx system_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
rreport_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb -rpx system_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
XD:/GitCode/SketchSystem_1080p/sketchSystem1080.runs/impl_1/system_wrapper_drc_routed.rptXD:/GitCode/SketchSystem_1080p/sketchSystem1080.runs/impl_1/system_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:282default:default2
00:00:162default:default2
1808.2772default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file system_wrapper_methodology_drc_routed.rpt -pb system_wrapper_methodology_drc_routed.pb -rpx system_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file system_wrapper_methodology_drc_routed.rpt -pb system_wrapper_methodology_drc_routed.pb -rpx system_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
dD:/GitCode/SketchSystem_1080p/sketchSystem1080.runs/impl_1/system_wrapper_methodology_drc_routed.rptdD:/GitCode/SketchSystem_1080p/sketchSystem1080.runs/impl_1/system_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:01:012default:default2
00:00:382default:default2
1891.2272default:default2
82.9492default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb -rpx system_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb -rpx system_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
?Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1122default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:442default:default2
00:00:292default:default2
1986.7112default:default2
95.4842default:defaultZ17-268h px? 
?
%s4*runtcl2}
iExecuting : report_route_status -file system_wrapper_route_status.rpt -pb system_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file system_wrapper_timing_summary_routed.rpt -rpx system_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
?
%s4*runtcl2k
WExecuting : report_incremental_reuse -file system_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
x
TNo incremental reuse to report, no incremental placement and routing data was found.278*	vivadotclZ4-545h px? 
?
%s4*runtcl2k
WExecuting : report_clock_utilization -file system_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
report_clock_utilization: 2default:default2
00:00:072default:default2
00:00:072default:default2
1991.6762default:default2
0.0002default:defaultZ17-268h px? 


End Record