�
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.16.12v2.16.0-rc0-18-g5bc9d26649c8��
z
bias6VarHandleOp*
_output_shapes
: *

debug_namebias6/*
dtype0*
shape:
*
shared_namebias6
[
bias6/Read/ReadVariableOpReadVariableOpbias6*
_output_shapes
:
*
dtype0
z
bias5VarHandleOp*
_output_shapes
: *

debug_namebias5/*
dtype0*
shape:T*
shared_namebias5
[
bias5/Read/ReadVariableOpReadVariableOpbias5*
_output_shapes
:T*
dtype0
z
bias4VarHandleOp*
_output_shapes
: *

debug_namebias4/*
dtype0*
shape:x*
shared_namebias4
[
bias4/Read/ReadVariableOpReadVariableOpbias4*
_output_shapes
:x*
dtype0
z
bias2VarHandleOp*
_output_shapes
: *

debug_namebias2/*
dtype0*
shape:*
shared_namebias2
[
bias2/Read/ReadVariableOpReadVariableOpbias2*
_output_shapes
:*
dtype0
z
bias1VarHandleOp*
_output_shapes
: *

debug_namebias1/*
dtype0*
shape:*
shared_namebias1
[
bias1/Read/ReadVariableOpReadVariableOpbias1*
_output_shapes
:*
dtype0
x
fc3VarHandleOp*
_output_shapes
: *

debug_namefc3/*
dtype0*
shape
:T
*
shared_namefc3
[
fc3/Read/ReadVariableOpReadVariableOpfc3*
_output_shapes

:T
*
dtype0
x
fc2VarHandleOp*
_output_shapes
: *

debug_namefc2/*
dtype0*
shape
:xT*
shared_namefc2
[
fc2/Read/ReadVariableOpReadVariableOpfc2*
_output_shapes

:xT*
dtype0
y
fc1VarHandleOp*
_output_shapes
: *

debug_namefc1/*
dtype0*
shape:	�x*
shared_namefc1
\
fc1/Read/ReadVariableOpReadVariableOpfc1*
_output_shapes
:	�x*
dtype0
�
conv2VarHandleOp*
_output_shapes
: *

debug_nameconv2/*
dtype0*
shape:*
shared_nameconv2
g
conv2/Read/ReadVariableOpReadVariableOpconv2*&
_output_shapes
:*
dtype0
�
conv1VarHandleOp*
_output_shapes
: *

debug_nameconv1/*
dtype0*
shape:*
shared_nameconv1
g
conv1/Read/ReadVariableOpReadVariableOpconv1*&
_output_shapes
:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
|
	conv1
	conv2
fc1
fc2
fc3
	bias1
	bias2
	bias4
		bias5
	
bias6

signatures*
?9
VARIABLE_VALUEconv1 conv1/.ATTRIBUTES/VARIABLE_VALUE*
?9
VARIABLE_VALUEconv2 conv2/.ATTRIBUTES/VARIABLE_VALUE*
;5
VARIABLE_VALUEfc1fc1/.ATTRIBUTES/VARIABLE_VALUE*
;5
VARIABLE_VALUEfc2fc2/.ATTRIBUTES/VARIABLE_VALUE*
;5
VARIABLE_VALUEfc3fc3/.ATTRIBUTES/VARIABLE_VALUE*
?9
VARIABLE_VALUEbias1 bias1/.ATTRIBUTES/VARIABLE_VALUE*
?9
VARIABLE_VALUEbias2 bias2/.ATTRIBUTES/VARIABLE_VALUE*
?9
VARIABLE_VALUEbias4 bias4/.ATTRIBUTES/VARIABLE_VALUE*
?9
VARIABLE_VALUEbias5 bias5/.ATTRIBUTES/VARIABLE_VALUE*
?9
VARIABLE_VALUEbias6 bias6/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCallStatefulPartitionedCallsaver_filenameconv1conv2fc1fc2fc3bias1bias2bias4bias5bias6Const*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_save_2256157
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv1conv2fc1fc2fc3bias1bias2bias4bias5bias6*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__traced_restore_2256196�~
�.
�
#__inference__traced_restore_2256196
file_prefix0
assignvariableop_conv1:2
assignvariableop_1_conv2:)
assignvariableop_2_fc1:	�x(
assignvariableop_3_fc2:xT(
assignvariableop_4_fc3:T
&
assignvariableop_5_bias1:&
assignvariableop_6_bias2:&
assignvariableop_7_bias4:x&
assignvariableop_8_bias5:T&
assignvariableop_9_bias6:

identity_11��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B conv1/.ATTRIBUTES/VARIABLE_VALUEB conv2/.ATTRIBUTES/VARIABLE_VALUEBfc1/.ATTRIBUTES/VARIABLE_VALUEBfc2/.ATTRIBUTES/VARIABLE_VALUEBfc3/.ATTRIBUTES/VARIABLE_VALUEB bias1/.ATTRIBUTES/VARIABLE_VALUEB bias2/.ATTRIBUTES/VARIABLE_VALUEB bias4/.ATTRIBUTES/VARIABLE_VALUEB bias5/.ATTRIBUTES/VARIABLE_VALUEB bias6/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv1Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_fc1Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_fc2Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_fc3Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_bias1Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_bias2Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_bias4Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_bias5Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_bias6Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_11Identity_11:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%
!

_user_specified_namebias6:%	!

_user_specified_namebias5:%!

_user_specified_namebias4:%!

_user_specified_namebias2:%!

_user_specified_namebias1:#

_user_specified_namefc3:#

_user_specified_namefc2:#

_user_specified_namefc1:%!

_user_specified_nameconv2:%!

_user_specified_nameconv1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�P
�
 __inference__traced_save_2256157
file_prefix6
read_disablecopyonread_conv1:8
read_1_disablecopyonread_conv2:/
read_2_disablecopyonread_fc1:	�x.
read_3_disablecopyonread_fc2:xT.
read_4_disablecopyonread_fc3:T
,
read_5_disablecopyonread_bias1:,
read_6_disablecopyonread_bias2:,
read_7_disablecopyonread_bias4:x,
read_8_disablecopyonread_bias5:T,
read_9_disablecopyonread_bias6:

savev2_const
identity_21��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: _
Read/DisableCopyOnReadDisableCopyOnReadread_disablecopyonread_conv1*
_output_shapes
 �
Read/ReadVariableOpReadVariableOpread_disablecopyonread_conv1^Read/DisableCopyOnRead*&
_output_shapes
:*
dtype0b
IdentityIdentityRead/ReadVariableOp:value:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:c
Read_1/DisableCopyOnReadDisableCopyOnReadread_1_disablecopyonread_conv2*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOpread_1_disablecopyonread_conv2^Read_1/DisableCopyOnRead*&
_output_shapes
:*
dtype0f

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*&
_output_shapes
:k

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*&
_output_shapes
:a
Read_2/DisableCopyOnReadDisableCopyOnReadread_2_disablecopyonread_fc1*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOpread_2_disablecopyonread_fc1^Read_2/DisableCopyOnRead*
_output_shapes
:	�x*
dtype0_

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	�xd

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	�xa
Read_3/DisableCopyOnReadDisableCopyOnReadread_3_disablecopyonread_fc2*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOpread_3_disablecopyonread_fc2^Read_3/DisableCopyOnRead*
_output_shapes

:xT*
dtype0^

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:xTc

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:xTa
Read_4/DisableCopyOnReadDisableCopyOnReadread_4_disablecopyonread_fc3*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOpread_4_disablecopyonread_fc3^Read_4/DisableCopyOnRead*
_output_shapes

:T
*
dtype0^

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes

:T
c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:T
c
Read_5/DisableCopyOnReadDisableCopyOnReadread_5_disablecopyonread_bias1*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOpread_5_disablecopyonread_bias1^Read_5/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:c
Read_6/DisableCopyOnReadDisableCopyOnReadread_6_disablecopyonread_bias2*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOpread_6_disablecopyonread_bias2^Read_6/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:c
Read_7/DisableCopyOnReadDisableCopyOnReadread_7_disablecopyonread_bias4*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOpread_7_disablecopyonread_bias4^Read_7/DisableCopyOnRead*
_output_shapes
:x*
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:xa
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:xc
Read_8/DisableCopyOnReadDisableCopyOnReadread_8_disablecopyonread_bias5*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOpread_8_disablecopyonread_bias5^Read_8/DisableCopyOnRead*
_output_shapes
:T*
dtype0[
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes
:Ta
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:Tc
Read_9/DisableCopyOnReadDisableCopyOnReadread_9_disablecopyonread_bias6*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOpread_9_disablecopyonread_bias6^Read_9/DisableCopyOnRead*
_output_shapes
:
*
dtype0[
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
:
a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:
L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B conv1/.ATTRIBUTES/VARIABLE_VALUEB conv2/.ATTRIBUTES/VARIABLE_VALUEBfc1/.ATTRIBUTES/VARIABLE_VALUEBfc2/.ATTRIBUTES/VARIABLE_VALUEBfc3/.ATTRIBUTES/VARIABLE_VALUEB bias1/.ATTRIBUTES/VARIABLE_VALUEB bias2/.ATTRIBUTES/VARIABLE_VALUEB bias4/.ATTRIBUTES/VARIABLE_VALUEB bias5/.ATTRIBUTES/VARIABLE_VALUEB bias6/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_20Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_21IdentityIdentity_20:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_21Identity_21:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
: : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:%
!

_user_specified_namebias6:%	!

_user_specified_namebias5:%!

_user_specified_namebias4:%!

_user_specified_namebias2:%!

_user_specified_namebias1:#

_user_specified_namefc3:#

_user_specified_namefc2:#

_user_specified_namefc1:%!

_user_specified_nameconv2:%!

_user_specified_nameconv1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:�
�
	conv1
	conv2
fc1
fc2
fc3
	bias1
	bias2
	bias4
		bias5
	
bias6

signatures"
_generic_user_object
:2conv1
:2conv2
:	�x2fc1
:xT2fc2
:T
2fc3
:2bias1
:2bias2
:x2bias4
:T2bias5
:
2bias6
"
signature_map