
v
Command: %s
53*	vivadotcl2E
1synth_design -top cvi_ciris -part xc7a12tcpg238-32default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a12t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a12t2default:defaultZ17-349h px� 
�
%s*synth2�
sStarting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 700.961 ; gain = 237.305
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
	cvi_ciris2default:default2
 2default:default2_
Id:/Work/GitLab/FPGA_lib/IP/VIP/clocked_video_input_ciris/rtl/cvi_ciris.sv2default:default2
12default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter BITS_PER_SYMBOL bound to: 8 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter SYMBOLS_PER_BEAT bound to: 1 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter HEIGHT bound to: 600 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter WIDTH bound to: 800 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter SYNC_SIGNALS bound to: Embedded - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter FAMILY bound to: Cyclone IV E - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter FIFO_NUMWORDS bound to: 128 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DEF_METASTAB bound to: OFF - type: string 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter DATA_W bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2!
bt656_decoder2default:default2
 2default:default2c
Md:/Work/GitLab/FPGA_lib/IP/VIP/clocked_video_input_ciris/rtl/bt656_decoder.sv2default:default2
12default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter WIDTH bound to: 800 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter HEIGHT bound to: 600 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter DW bound to: 8 - type: integer 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter V bound to: 5 - type: integer 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter H bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2c
Md:/Work/GitLab/FPGA_lib/IP/VIP/clocked_video_input_ciris/rtl/bt656_decoder.sv2default:default2
1502default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
bt656_decoder2default:default2
 2default:default2
12default:default2
12default:default2c
Md:/Work/GitLab/FPGA_lib/IP/VIP/clocked_video_input_ciris/rtl/bt656_decoder.sv2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

bt_to_avst2default:default2
 2default:default2`
Jd:/Work/GitLab/FPGA_lib/IP/VIP/clocked_video_input_ciris/rtl/bt_to_avst.sv2default:default2
12default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter BITS_PER_SYMBOL bound to: 8 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter SYMBOLS_PER_BEAT bound to: 1 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter HEIGHT bound to: 600 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter WIDTH bound to: 800 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter FIFODEPTH bound to: 128 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter FIFODW bound to: 11 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2#
crs_lib_dc_fifo2default:default2
 2default:default2l
Vd:/Work/GitLab/FPGA_lib/common/common_lib2/fifo/crs_lib_dc_fifo/rtl/crs_lib_dc_fifo.sv2default:default2
62default:default8@Z8-6157h px� 
X
%s
*synth2@
,	Parameter DW bound to: 11 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter AW bound to: 7 - type: integer 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter N bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter MAX_SIZE bound to: 128 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter VENDOR bound to: FPGA - type: string 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2%
crs_lib_async_ram2default:default2
 2default:default2g
Qd:/Work/GitLab/FPGA_lib/common/common_lib2/ram/async_ram/rtl/crs_lib_async_ram.sv2default:default2
32default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter AW bound to: 7 - type: integer 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter DW bound to: 11 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter VENDOR bound to: FPGA - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
crs_lib_async_ram2default:default2
 2default:default2
22default:default2
12default:default2g
Qd:/Work/GitLab/FPGA_lib/common/common_lib2/ram/async_ram/rtl/crs_lib_async_ram.sv2default:default2
32default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
crs_lib_dc_fifo2default:default2
 2default:default2
32default:default2
12default:default2l
Vd:/Work/GitLab/FPGA_lib/common/common_lib2/fifo/crs_lib_dc_fifo/rtl/crs_lib_dc_fifo.sv2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

bt_to_avst2default:default2
 2default:default2
42default:default2
12default:default2`
Jd:/Work/GitLab/FPGA_lib/IP/VIP/clocked_video_input_ciris/rtl/bt_to_avst.sv2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2?
+alt_vipvfr131_common_control_packet_encoder2default:default2
 2default:default2q
[d:/Work/GitLab/FPGA_lib/common/common_lib/rtl/alt_vipvfr131_common_control_packet_encoder.v2default:default2
22default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter BITS_PER_SYMBOL bound to: 8 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter SYMBOLS_PER_BEAT bound to: 1 - type: integer 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter IDLE bound to: 4'b1111 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter WAITING bound to: 4'b1110 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter WIDTH_3 bound to: 4'b0000 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter WIDTH_2 bound to: 4'b0001 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter WIDTH_1 bound to: 4'b0010 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter WIDTH_0 bound to: 4'b0011 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter HEIGHT_3 bound to: 4'b0100 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter HEIGHT_2 bound to: 4'b0101 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter HEIGHT_1 bound to: 4'b0110 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter HEIGHT_0 bound to: 4'b0111 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter INTERLACING bound to: 4'b1000 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter DUMMY_STATE bound to: 4'b1001 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter DUMMY_STATE2 bound to: 4'b1010 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter DUMMY_STATE3 bound to: 4'b1100 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter WAIT_FOR_END bound to: 4'b1011 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter PACKET_LENGTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2q
[d:/Work/GitLab/FPGA_lib/common/common_lib/rtl/alt_vipvfr131_common_control_packet_encoder.v2default:default2
1132default:default8@Z8-155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2*
end_of_video_valid_reg2default:default2q
[d:/Work/GitLab/FPGA_lib/common/common_lib/rtl/alt_vipvfr131_common_control_packet_encoder.v2default:default2
962default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+alt_vipvfr131_common_control_packet_encoder2default:default2
 2default:default2
52default:default2
12default:default2q
[d:/Work/GitLab/FPGA_lib/common/common_lib/rtl/alt_vipvfr131_common_control_packet_encoder.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys26
"alt_vipvfr131_common_stream_output2default:default2
 2default:default2h
Rd:/Work/GitLab/FPGA_lib/common/common_lib/rtl/alt_vipvfr131_common_stream_output.v2default:default2
12default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"alt_vipvfr131_common_stream_output2default:default2
 2default:default2
62default:default2
12default:default2h
Rd:/Work/GitLab/FPGA_lib/common/common_lib/rtl/alt_vipvfr131_common_stream_output.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	cvi_ciris2default:default2
 2default:default2
72default:default2
12default:default2_
Id:/Work/GitLab/FPGA_lib/IP/VIP/clocked_video_input_ciris/rtl/cvi_ciris.sv2default:default2
12default:default8@Z8-6155h px� 
�
!design %s has unconnected port %s3331*oasys2%
crs_lib_async_ram2default:default2
rrst_i2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
crs_lib_async_ram2default:default2
wrst_i2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
	cvi_ciris2default:default2
h_sync_i2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
	cvi_ciris2default:default2
v_sync_i2default:defaultZ8-3331h px� 
�
%s*synth2�
sFinished Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 774.168 ; gain = 310.512
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 774.168 ; gain = 310.512
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a12tcpg238-3
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7a12tcpg238-32default:defaultZ21-403h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 774.168 ; gain = 310.512
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2!
bt656_decoder2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2

bt_to_avst2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2?
+alt_vipvfr131_common_control_packet_encoder2default:defaultZ8-802h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                   START |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_               FIRST_ROW |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                    DATA |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                     END |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2!
bt656_decoder2default:defaultZ8-3354h px� 
�
�The Block RAM %s may get memory collision error if read and write address collide. Use attribute (* rw_addr_collision= "yes" *) to avoid collision 
4524*oasys20
"crs_lib_async_ram:/mem_reg"2default:defaultZ8-6430h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                   START |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                    DATA |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_                     END |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2

bt_to_avst2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                             0101 |                             1111
2default:defaulth p
x
� 
�
%s
*synth2s
_                 WAITING |                             1110 |                             1110
2default:defaulth p
x
� 
�
%s
*synth2s
_                 WIDTH_3 |                             1001 |                             0000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 WIDTH_2 |                             1000 |                             0001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 WIDTH_1 |                             0011 |                             0010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 WIDTH_0 |                             0000 |                             0011
2default:defaulth p
x
� 
�
%s
*synth2s
_                HEIGHT_3 |                             0001 |                             0100
2default:defaulth p
x
� 
�
%s
*synth2s
_                HEIGHT_2 |                             0010 |                             0101
2default:defaulth p
x
� 
�
%s
*synth2s
_                HEIGHT_1 |                             1101 |                             0110
2default:defaulth p
x
� 
�
%s
*synth2s
_                HEIGHT_0 |                             1011 |                             0111
2default:defaulth p
x
� 
�
%s
*synth2s
_             INTERLACING |                             1100 |                             1000
2default:defaulth p
x
� 
�
%s
*synth2s
_             DUMMY_STATE |                             1010 |                             1001
2default:defaulth p
x
� 
�
%s
*synth2s
_            WAIT_FOR_END |                             0100 |                             1011
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2?
+alt_vipvfr131_common_control_packet_encoder2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 774.168 ; gain = 310.512
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               72 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 29    
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               1K Bit         RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 21    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
B
%s
*synth2*
Module bt656_decoder 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 9     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
F
%s
*synth2.
Module crs_lib_async_ram 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               1K Bit         RAMs := 1     
2default:defaulth p
x
� 
D
%s
*synth2,
Module crs_lib_dc_fifo 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
?
%s
*synth2'
Module bt_to_avst 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
`
%s
*synth2H
4Module alt_vipvfr131_common_control_packet_encoder 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               72 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
W
%s
*synth2?
+Module alt_vipvfr131_common_stream_output 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2i
UPart Resources:
DSPs: 40 (col length:40)
BRAMs: 40 (col length: RAMB18 40 RAMB36 20)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
!design %s has unconnected port %s3331*oasys2
	cvi_ciris2default:default2
h_sync_i2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
	cvi_ciris2default:default2
v_sync_i2default:defaultZ8-3331h px� 
�
%s
*synth2�
�RAM Pipeline Warning: Read Address Register Found For RAM INST_bt_to_avst/crs_lib_dc_fifo_inst/u0/mem_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
� 
�
%s
*synth2�
�RAM Pipeline Warning: Read Address Register Found For RAM INST_bt_to_avst/crs_lib_dc_fifo_inst/u0/mem_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
� 
�
�The Block RAM %s may get memory collision error if read and write address collide. Use attribute (* rw_addr_collision= "yes" *) to avoid collision 
4524*oasys2O
;"cvi_ciris/INST_bt_to_avst/crs_lib_dc_fifo_inst/u0/mem_reg"2default:defaultZ8-6430h px� 
�
PSwapped enable and write-enable on %s RAM instances of RAM %s to conserve power
3784*oasys2
12default:default2C
/INST_bt_to_avst/crs_lib_dc_fifo_inst/u0/mem_reg2default:defaultZ8-4652h px� 
�
%s
*synth2�
�RAM Pipeline Warning: Read Address Register Found For RAM INST_bt_to_avst/crs_lib_dc_fifo_inst/u0/mem_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\bt656_decoder/width_o_reg[15] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2Y
EINTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[64]2default:default2
FDCE2default:default2X
DINTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2Y
EINTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[66]2default:default2
FDCE2default:default2X
DINTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2Y
EINTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[67]2default:default2
FDCE2default:default2X
DINTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[3]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[52] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[68] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[60] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2Z
F\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[4] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[12] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[20] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[44] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[36] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[28] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[53] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[69] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[61] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2Z
F\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[5] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[13] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[21] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[45] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[37] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[29] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[54] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[70] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[62] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2Z
F\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[6] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[14] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[22] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[46] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[38] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[30] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[55] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[71] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[63] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2Z
F\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[15] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[23] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[47] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[39] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2[
G\INTS_alt_vipvfr131_common_control_packet_encoder/control_data_reg[31] 2default:defaultZ8-3333h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 911.488 ; gain = 447.832
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
d
%s*synth2L
8
Block RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+------------+-------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name | RTL Object                                      | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px� 
�
%s*synth2�
�+------------+-------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|cvi_ciris   | INST_bt_to_avst/crs_lib_dc_fifo_inst/u0/mem_reg | 128 x 11(NO_CHANGE)    | W |   | 128 x 11(WRITE_FIRST)  |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px� 
�
%s*synth2�
�+------------+-------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 915.098 ; gain = 451.441
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!
Block RAM: Final Mapping	Report
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+-------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name | RTL Object                                      | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+-------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|cvi_ciris   | INST_bt_to_avst/crs_lib_dc_fifo_inst/u0/mem_reg | 128 x 11(NO_CHANGE)    | W |   | 128 x 11(WRITE_FIRST)  |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+-------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2C
/INST_bt_to_avst/crs_lib_dc_fifo_inst/u0/mem_reg2default:default2
Block2default:defaultZ8-7053h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 915.273 ; gain = 451.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 915.273 ; gain = 451.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 915.273 ; gain = 451.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 915.273 ; gain = 451.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 915.273 ; gain = 451.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 915.273 ; gain = 451.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 915.273 ; gain = 451.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |BUFG     |     2|
2default:defaulth px� 
F
%s*synth2.
|2     |CARRY4   |     8|
2default:defaulth px� 
F
%s*synth2.
|3     |LUT1     |     3|
2default:defaulth px� 
F
%s*synth2.
|4     |LUT2     |    27|
2default:defaulth px� 
F
%s*synth2.
|5     |LUT3     |    27|
2default:defaulth px� 
F
%s*synth2.
|6     |LUT4     |    25|
2default:defaulth px� 
F
%s*synth2.
|7     |LUT5     |    41|
2default:defaulth px� 
F
%s*synth2.
|8     |LUT6     |    50|
2default:defaulth px� 
F
%s*synth2.
|9     |MUXF7    |     3|
2default:defaulth px� 
F
%s*synth2.
|10    |RAMB18E1 |     1|
2default:defaulth px� 
F
%s*synth2.
|11    |FDCE     |   195|
2default:defaulth px� 
F
%s*synth2.
|12    |FDPE     |    11|
2default:defaulth px� 
F
%s*synth2.
|13    |FDRE     |    16|
2default:defaulth px� 
F
%s*synth2.
|14    |IBUF     |    12|
2default:defaulth px� 
F
%s*synth2.
|15    |OBUF     |    11|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
�
%s
*synth2�
q+------+---------------------------------------------------+--------------------------------------------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
q|      |Instance                                           |Module                                      |Cells |
2default:defaulth p
x
� 
�
%s
*synth2�
q+------+---------------------------------------------------+--------------------------------------------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
q|1     |top                                                |                                            |   432|
2default:defaulth p
x
� 
�
%s
*synth2�
q|2     |  INST_alt_vipvfr131_common_stream_output          |alt_vipvfr131_common_stream_output          |    23|
2default:defaulth p
x
� 
�
%s
*synth2�
q|3     |  INST_bt_to_avst                                  |bt_to_avst                                  |    96|
2default:defaulth p
x
� 
�
%s
*synth2�
q|4     |    crs_lib_dc_fifo_inst                           |crs_lib_dc_fifo                             |    80|
2default:defaulth p
x
� 
�
%s
*synth2�
q|5     |      u0                                           |crs_lib_async_ram                           |    26|
2default:defaulth p
x
� 
�
%s
*synth2�
q|6     |  INTS_alt_vipvfr131_common_control_packet_encoder |alt_vipvfr131_common_control_packet_encoder |    77|
2default:defaulth p
x
� 
�
%s
*synth2�
q|7     |  bt656_decoder                                    |bt656_decoder                               |   204|
2default:defaulth p
x
� 
�
%s
*synth2�
q+------+---------------------------------------------------+--------------------------------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 915.273 ; gain = 451.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 7 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 915.273 ; gain = 451.617
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 915.273 ; gain = 451.617
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
927.1992default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
122default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1022.1562default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
762default:default2
72default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:172default:default2
00:00:192default:default2
1022.1562default:default2
583.3442default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1022.1562default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2|
hd:/Work/GitLab/FPGA_lib/IP/VIP/clocked_video_input_ciris/syn/Vivado/cvi_ciris.runs/synth_1/cvi_ciris.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2|
hExecuting : report_utilization -file cvi_ciris_utilization_synth.rpt -pb cvi_ciris_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Jun 18 22:46:44 20232default:defaultZ17-206h px� 


End Record