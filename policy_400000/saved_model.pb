??
??
?
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
d
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0	
?
&QNetwork/EncodingNetwork/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&QNetwork/EncodingNetwork/conv2d/kernel
?
:QNetwork/EncodingNetwork/conv2d/kernel/Read/ReadVariableOpReadVariableOp&QNetwork/EncodingNetwork/conv2d/kernel*&
_output_shapes
: *
dtype0
?
$QNetwork/EncodingNetwork/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$QNetwork/EncodingNetwork/conv2d/bias
?
8QNetwork/EncodingNetwork/conv2d/bias/Read/ReadVariableOpReadVariableOp$QNetwork/EncodingNetwork/conv2d/bias*
_output_shapes
: *
dtype0
?
(QNetwork/EncodingNetwork/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*9
shared_name*(QNetwork/EncodingNetwork/conv2d_1/kernel
?
<QNetwork/EncodingNetwork/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp(QNetwork/EncodingNetwork/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
?
&QNetwork/EncodingNetwork/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&QNetwork/EncodingNetwork/conv2d_1/bias
?
:QNetwork/EncodingNetwork/conv2d_1/bias/Read/ReadVariableOpReadVariableOp&QNetwork/EncodingNetwork/conv2d_1/bias*
_output_shapes
:@*
dtype0
?
(QNetwork/EncodingNetwork/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*9
shared_name*(QNetwork/EncodingNetwork/conv2d_2/kernel
?
<QNetwork/EncodingNetwork/conv2d_2/kernel/Read/ReadVariableOpReadVariableOp(QNetwork/EncodingNetwork/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0
?
&QNetwork/EncodingNetwork/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&QNetwork/EncodingNetwork/conv2d_2/bias
?
:QNetwork/EncodingNetwork/conv2d_2/bias/Read/ReadVariableOpReadVariableOp&QNetwork/EncodingNetwork/conv2d_2/bias*
_output_shapes
:@*
dtype0
?
%QNetwork/EncodingNetwork/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%QNetwork/EncodingNetwork/dense/kernel
?
9QNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpReadVariableOp%QNetwork/EncodingNetwork/dense/kernel* 
_output_shapes
:
??*
dtype0
?
#QNetwork/EncodingNetwork/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#QNetwork/EncodingNetwork/dense/bias
?
7QNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpReadVariableOp#QNetwork/EncodingNetwork/dense/bias*
_output_shapes	
:?*
dtype0
?
QNetwork/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameQNetwork/dense_1/kernel
?
+QNetwork/dense_1/kernel/Read/ReadVariableOpReadVariableOpQNetwork/dense_1/kernel*
_output_shapes
:	?*
dtype0
?
QNetwork/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameQNetwork/dense_1/bias
{
)QNetwork/dense_1/bias/Read/ReadVariableOpReadVariableOpQNetwork/dense_1/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?3
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?2
value?2B?2 B?2
?

train_step
metadata
model_variables
_all_assets

action
distribution
get_initial_state
get_metadata
	get_train_step


signatures*
GA
VARIABLE_VALUEVariable%train_step/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
0
1
2
3
4
5
6
7
8
9*

_wrapped_policy*
* 
* 
* 
* 
* 
K

action
get_initial_state
get_train_step
get_metadata* 
lf
VARIABLE_VALUE&QNetwork/EncodingNetwork/conv2d/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE$QNetwork/EncodingNetwork/conv2d/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE(QNetwork/EncodingNetwork/conv2d_1/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE&QNetwork/EncodingNetwork/conv2d_1/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE(QNetwork/EncodingNetwork/conv2d_2/kernel,model_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE&QNetwork/EncodingNetwork/conv2d_2/bias,model_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE%QNetwork/EncodingNetwork/dense/kernel,model_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE#QNetwork/EncodingNetwork/dense/bias,model_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEQNetwork/dense_1/kernel,model_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEQNetwork/dense_1/bias,model_variables/9/.ATTRIBUTES/VARIABLE_VALUE*


_q_network*
* 
* 
* 
* 
?
_encoder
_q_value_layer
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses*
?
#_flat_preprocessing_layers
$_postprocessing_layers
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses*
?

kernel
bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*
J
0
1
2
3
4
5
6
7
8
9*
J
0
1
2
3
4
5
6
7
8
9*
* 
?
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*
* 
* 
	
60* 
'
70
81
92
:3
;4*
<
0
1
2
3
4
5
6
7*
<
0
1
2
3
4
5
6
7*
* 
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 
?
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
* 
* 
* 

0
1*
* 
* 
* 
?
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses* 
?

kernel
bias
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses*
?

kernel
bias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses*
?

kernel
bias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses*
?
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses* 
?

kernel
bias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses*
* 
.
60
71
82
93
:4
;5*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 
* 
* 

0
1*

0
1*
* 
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 
?
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 
?
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses* 
* 
* 

0
1*

0
1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
l
action_0_discountPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
action_0_observationPlaceholder*/
_output_shapes
:?????????TT*
dtype0*$
shape:?????????TT
j
action_0_rewardPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
m
action_0_step_typePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallaction_0_discountaction_0_observationaction_0_rewardaction_0_step_type&QNetwork/EncodingNetwork/conv2d/kernel$QNetwork/EncodingNetwork/conv2d/bias(QNetwork/EncodingNetwork/conv2d_1/kernel&QNetwork/EncodingNetwork/conv2d_1/bias(QNetwork/EncodingNetwork/conv2d_2/kernel&QNetwork/EncodingNetwork/conv2d_2/bias%QNetwork/EncodingNetwork/dense/kernel#QNetwork/EncodingNetwork/dense/biasQNetwork/dense_1/kernelQNetwork/dense_1/bias*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_7068135
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
PartitionedCallPartitionedCallget_initial_state_batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_7068147
?
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_7068169
?
StatefulPartitionedCall_1StatefulPartitionedCallVariable*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_7068162
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOp:QNetwork/EncodingNetwork/conv2d/kernel/Read/ReadVariableOp8QNetwork/EncodingNetwork/conv2d/bias/Read/ReadVariableOp<QNetwork/EncodingNetwork/conv2d_1/kernel/Read/ReadVariableOp:QNetwork/EncodingNetwork/conv2d_1/bias/Read/ReadVariableOp<QNetwork/EncodingNetwork/conv2d_2/kernel/Read/ReadVariableOp:QNetwork/EncodingNetwork/conv2d_2/bias/Read/ReadVariableOp9QNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOp7QNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOp+QNetwork/dense_1/kernel/Read/ReadVariableOp)QNetwork/dense_1/bias/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_7068440
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable&QNetwork/EncodingNetwork/conv2d/kernel$QNetwork/EncodingNetwork/conv2d/bias(QNetwork/EncodingNetwork/conv2d_1/kernel&QNetwork/EncodingNetwork/conv2d_1/bias(QNetwork/EncodingNetwork/conv2d_2/kernel&QNetwork/EncodingNetwork/conv2d_2/bias%QNetwork/EncodingNetwork/dense/kernel#QNetwork/EncodingNetwork/dense/biasQNetwork/dense_1/kernelQNetwork/dense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_7068483Ԝ
?
?
+__inference_function_with_signature_7068105
	step_type

reward
discount
observation!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *2
f-R+
)__inference_polymorphic_action_fn_7068082k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*#
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????TT: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_name0/step_type:MI
#
_output_shapes
:?????????
"
_user_specified_name
0/reward:OK
#
_output_shapes
:?????????
$
_user_specified_name
0/discount:^Z
/
_output_shapes
:?????????TT
'
_user_specified_name0/observation
?j
?
)__inference_polymorphic_action_fn_7068323
time_step_step_type
time_step_reward
time_step_discount
time_step_observationX
>qnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource: M
?qnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource: Z
@qnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource: @O
Aqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource:@Z
@qnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource:@@O
Aqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource:@Q
=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource:
??M
>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:	?B
/qnetwork_dense_1_matmul_readvariableop_resource:	?>
0qnetwork_dense_1_biasadd_readvariableop_resource:
identity	??6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp?5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp?8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp?7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp?8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp?7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp?5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?'QNetwork/dense_1/BiasAdd/ReadVariableOp?&QNetwork/dense_1/MatMul/ReadVariableOp?
$QNetwork/EncodingNetwork/lambda/CastCasttime_step_observation*

DstT0*

SrcT0*/
_output_shapes
:?????????TTn
)QNetwork/EncodingNetwork/lambda/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C?
'QNetwork/EncodingNetwork/lambda/truedivRealDiv(QNetwork/EncodingNetwork/lambda/Cast:y:02QNetwork/EncodingNetwork/lambda/truediv/y:output:0*
T0*/
_output_shapes
:?????????TT?
5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOp>qnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
&QNetwork/EncodingNetwork/conv2d/Conv2DConv2D+QNetwork/EncodingNetwork/lambda/truediv:z:0=QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
'QNetwork/EncodingNetwork/conv2d/BiasAddBiasAdd/QNetwork/EncodingNetwork/conv2d/Conv2D:output:0>QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
$QNetwork/EncodingNetwork/conv2d/ReluRelu0QNetwork/EncodingNetwork/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
(QNetwork/EncodingNetwork/conv2d_1/Conv2DConv2D2QNetwork/EncodingNetwork/conv2d/Relu:activations:0?QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingVALID*
strides
?
8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpAqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
)QNetwork/EncodingNetwork/conv2d_1/BiasAddBiasAdd1QNetwork/EncodingNetwork/conv2d_1/Conv2D:output:0@QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@?
&QNetwork/EncodingNetwork/conv2d_1/ReluRelu2QNetwork/EncodingNetwork/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@?
7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
(QNetwork/EncodingNetwork/conv2d_2/Conv2DConv2D4QNetwork/EncodingNetwork/conv2d_1/Relu:activations:0?QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpAqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
)QNetwork/EncodingNetwork/conv2d_2/BiasAddBiasAdd1QNetwork/EncodingNetwork/conv2d_2/Conv2D:output:0@QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
&QNetwork/EncodingNetwork/conv2d_2/ReluRelu2QNetwork/EncodingNetwork/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@w
&QNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  ?
(QNetwork/EncodingNetwork/flatten/ReshapeReshape4QNetwork/EncodingNetwork/conv2d_2/Relu:activations:0/QNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:???????????
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOp=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%QNetwork/EncodingNetwork/dense/MatMulMatMul1QNetwork/EncodingNetwork/flatten/Reshape:output:0<QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&QNetwork/EncodingNetwork/dense/BiasAddBiasAdd/QNetwork/EncodingNetwork/dense/MatMul:product:0=QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#QNetwork/EncodingNetwork/dense/ReluRelu/QNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
&QNetwork/dense_1/MatMul/ReadVariableOpReadVariableOp/qnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
QNetwork/dense_1/MatMulMatMul1QNetwork/EncodingNetwork/dense/Relu:activations:0.QNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'QNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp0qnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
QNetwork/dense_1/BiasAddBiasAdd!QNetwork/dense_1/MatMul:product:0/QNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
!Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Categorical/mode/ArgMaxArgMax!QNetwork/dense_1/BiasAdd:output:0*Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????T
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R T
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB j
Deterministic/sample/ShapeShape Categorical/mode/ArgMax:output:0*
T0	*
_output_shapes
:\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ?
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:?
 Deterministic/sample/BroadcastToBroadcastTo Categorical/mode/ArgMax:output:0$Deterministic/sample/concat:output:0*
T0	*'
_output_shapes
:?????????u
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0	*
_output_shapes
:t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0	*#
_output_shapes
:?????????Y
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:?????????Q
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:?????????\
IdentityIdentityclip_by_value:z:0^NoOp*
T0	*#
_output_shapes
:??????????
NoOpNoOp7^QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp6^QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp9^QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp8^QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp9^QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp8^QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp6^QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5^QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp(^QNetwork/dense_1/BiasAdd/ReadVariableOp'^QNetwork/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????TT: : : : : : : : : : 2p
6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp2n
5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp2t
8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp2r
7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp2t
8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp2r
7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp2n
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2l
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2R
'QNetwork/dense_1/BiasAdd/ReadVariableOp'QNetwork/dense_1/BiasAdd/ReadVariableOp2P
&QNetwork/dense_1/MatMul/ReadVariableOp&QNetwork/dense_1/MatMul/ReadVariableOp:X T
#
_output_shapes
:?????????
-
_user_specified_nametime_step/step_type:UQ
#
_output_shapes
:?????????
*
_user_specified_nametime_step/reward:WS
#
_output_shapes
:?????????
,
_user_specified_nametime_step/discount:fb
/
_output_shapes
:?????????TT
/
_user_specified_nametime_step/observation
?$
?
 __inference__traced_save_7068440
file_prefix'
#savev2_variable_read_readvariableop	E
Asavev2_qnetwork_encodingnetwork_conv2d_kernel_read_readvariableopC
?savev2_qnetwork_encodingnetwork_conv2d_bias_read_readvariableopG
Csavev2_qnetwork_encodingnetwork_conv2d_1_kernel_read_readvariableopE
Asavev2_qnetwork_encodingnetwork_conv2d_1_bias_read_readvariableopG
Csavev2_qnetwork_encodingnetwork_conv2d_2_kernel_read_readvariableopE
Asavev2_qnetwork_encodingnetwork_conv2d_2_bias_read_readvariableopD
@savev2_qnetwork_encodingnetwork_dense_kernel_read_readvariableopB
>savev2_qnetwork_encodingnetwork_dense_bias_read_readvariableop6
2savev2_qnetwork_dense_1_kernel_read_readvariableop4
0savev2_qnetwork_dense_1_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableopAsavev2_qnetwork_encodingnetwork_conv2d_kernel_read_readvariableop?savev2_qnetwork_encodingnetwork_conv2d_bias_read_readvariableopCsavev2_qnetwork_encodingnetwork_conv2d_1_kernel_read_readvariableopAsavev2_qnetwork_encodingnetwork_conv2d_1_bias_read_readvariableopCsavev2_qnetwork_encodingnetwork_conv2d_2_kernel_read_readvariableopAsavev2_qnetwork_encodingnetwork_conv2d_2_bias_read_readvariableop@savev2_qnetwork_encodingnetwork_dense_kernel_read_readvariableop>savev2_qnetwork_encodingnetwork_dense_bias_read_readvariableop2savev2_qnetwork_dense_1_kernel_read_readvariableop0savev2_qnetwork_dense_1_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapest
r: : : : : @:@:@@:@:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
??:!	

_output_shapes	
:?:%
!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?
7
%__inference_get_initial_state_7068378

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?
=
+__inference_function_with_signature_7068142

batch_size?
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_get_initial_state_7068141*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?
-
+__inference_function_with_signature_7068165?
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *%
f R
__inference_<lambda>_7067868*(
_construction_contextkEagerRuntime*
_input_shapes 
?
'
%__inference_signature_wrapper_7068169?
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference_function_with_signature_7068165*(
_construction_contextkEagerRuntime*
_input_shapes 
?
7
%__inference_signature_wrapper_7068147

batch_size?
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference_function_with_signature_7068142*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?
k
+__inference_function_with_signature_7068154
unknown:	 
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *%
f R
__inference_<lambda>_7067865^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
?1
?
#__inference__traced_restore_7068483
file_prefix#
assignvariableop_variable:	 S
9assignvariableop_1_qnetwork_encodingnetwork_conv2d_kernel: E
7assignvariableop_2_qnetwork_encodingnetwork_conv2d_bias: U
;assignvariableop_3_qnetwork_encodingnetwork_conv2d_1_kernel: @G
9assignvariableop_4_qnetwork_encodingnetwork_conv2d_1_bias:@U
;assignvariableop_5_qnetwork_encodingnetwork_conv2d_2_kernel:@@G
9assignvariableop_6_qnetwork_encodingnetwork_conv2d_2_bias:@L
8assignvariableop_7_qnetwork_encodingnetwork_dense_kernel:
??E
6assignvariableop_8_qnetwork_encodingnetwork_dense_bias:	?=
*assignvariableop_9_qnetwork_dense_1_kernel:	?7
)assignvariableop_10_qnetwork_dense_1_bias:
identity_12??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp9assignvariableop_1_qnetwork_encodingnetwork_conv2d_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp7assignvariableop_2_qnetwork_encodingnetwork_conv2d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp;assignvariableop_3_qnetwork_encodingnetwork_conv2d_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp9assignvariableop_4_qnetwork_encodingnetwork_conv2d_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp;assignvariableop_5_qnetwork_encodingnetwork_conv2d_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp9assignvariableop_6_qnetwork_encodingnetwork_conv2d_2_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp8assignvariableop_7_qnetwork_encodingnetwork_dense_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp6assignvariableop_8_qnetwork_encodingnetwork_dense_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp*assignvariableop_9_qnetwork_dense_1_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp)assignvariableop_10_qnetwork_dense_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_11Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_12IdentityIdentity_11:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_12Identity_12:output:0*+
_input_shapes
: : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?i
?
)__inference_polymorphic_action_fn_7068082
	time_step
time_step_1
time_step_2
time_step_3X
>qnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource: M
?qnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource: Z
@qnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource: @O
Aqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource:@Z
@qnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource:@@O
Aqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource:@Q
=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource:
??M
>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:	?B
/qnetwork_dense_1_matmul_readvariableop_resource:	?>
0qnetwork_dense_1_biasadd_readvariableop_resource:
identity	??6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp?5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp?8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp?7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp?8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp?7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp?5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?'QNetwork/dense_1/BiasAdd/ReadVariableOp?&QNetwork/dense_1/MatMul/ReadVariableOp?
$QNetwork/EncodingNetwork/lambda/CastCasttime_step_3*

DstT0*

SrcT0*/
_output_shapes
:?????????TTn
)QNetwork/EncodingNetwork/lambda/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C?
'QNetwork/EncodingNetwork/lambda/truedivRealDiv(QNetwork/EncodingNetwork/lambda/Cast:y:02QNetwork/EncodingNetwork/lambda/truediv/y:output:0*
T0*/
_output_shapes
:?????????TT?
5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOp>qnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
&QNetwork/EncodingNetwork/conv2d/Conv2DConv2D+QNetwork/EncodingNetwork/lambda/truediv:z:0=QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
'QNetwork/EncodingNetwork/conv2d/BiasAddBiasAdd/QNetwork/EncodingNetwork/conv2d/Conv2D:output:0>QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
$QNetwork/EncodingNetwork/conv2d/ReluRelu0QNetwork/EncodingNetwork/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
(QNetwork/EncodingNetwork/conv2d_1/Conv2DConv2D2QNetwork/EncodingNetwork/conv2d/Relu:activations:0?QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingVALID*
strides
?
8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpAqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
)QNetwork/EncodingNetwork/conv2d_1/BiasAddBiasAdd1QNetwork/EncodingNetwork/conv2d_1/Conv2D:output:0@QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@?
&QNetwork/EncodingNetwork/conv2d_1/ReluRelu2QNetwork/EncodingNetwork/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@?
7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
(QNetwork/EncodingNetwork/conv2d_2/Conv2DConv2D4QNetwork/EncodingNetwork/conv2d_1/Relu:activations:0?QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpAqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
)QNetwork/EncodingNetwork/conv2d_2/BiasAddBiasAdd1QNetwork/EncodingNetwork/conv2d_2/Conv2D:output:0@QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
&QNetwork/EncodingNetwork/conv2d_2/ReluRelu2QNetwork/EncodingNetwork/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@w
&QNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  ?
(QNetwork/EncodingNetwork/flatten/ReshapeReshape4QNetwork/EncodingNetwork/conv2d_2/Relu:activations:0/QNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:???????????
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOp=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%QNetwork/EncodingNetwork/dense/MatMulMatMul1QNetwork/EncodingNetwork/flatten/Reshape:output:0<QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&QNetwork/EncodingNetwork/dense/BiasAddBiasAdd/QNetwork/EncodingNetwork/dense/MatMul:product:0=QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#QNetwork/EncodingNetwork/dense/ReluRelu/QNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
&QNetwork/dense_1/MatMul/ReadVariableOpReadVariableOp/qnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
QNetwork/dense_1/MatMulMatMul1QNetwork/EncodingNetwork/dense/Relu:activations:0.QNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'QNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp0qnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
QNetwork/dense_1/BiasAddBiasAdd!QNetwork/dense_1/MatMul:product:0/QNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
!Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Categorical/mode/ArgMaxArgMax!QNetwork/dense_1/BiasAdd:output:0*Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????T
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R T
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB j
Deterministic/sample/ShapeShape Categorical/mode/ArgMax:output:0*
T0	*
_output_shapes
:\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ?
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:?
 Deterministic/sample/BroadcastToBroadcastTo Categorical/mode/ArgMax:output:0$Deterministic/sample/concat:output:0*
T0	*'
_output_shapes
:?????????u
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0	*
_output_shapes
:t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0	*#
_output_shapes
:?????????Y
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:?????????Q
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:?????????\
IdentityIdentityclip_by_value:z:0^NoOp*
T0	*#
_output_shapes
:??????????
NoOpNoOp7^QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp6^QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp9^QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp8^QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp9^QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp8^QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp6^QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5^QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp(^QNetwork/dense_1/BiasAdd/ReadVariableOp'^QNetwork/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????TT: : : : : : : : : : 2p
6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp2n
5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp2t
8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp2r
7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp2t
8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp2r
7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp2n
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2l
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2R
'QNetwork/dense_1/BiasAdd/ReadVariableOp'QNetwork/dense_1/BiasAdd/ReadVariableOp2P
&QNetwork/dense_1/MatMul/ReadVariableOp&QNetwork/dense_1/MatMul/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	time_step:NJ
#
_output_shapes
:?????????
#
_user_specified_name	time_step:NJ
#
_output_shapes
:?????????
#
_user_specified_name	time_step:ZV
/
_output_shapes
:?????????TT
#
_user_specified_name	time_step
?
c
__inference_<lambda>_7067865!
readvariableop_resource:	 
identity	??ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	T
IdentityIdentityReadVariableOp:value:0^NoOp*
T0	*
_output_shapes
: W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp
?i
?
)__inference_polymorphic_action_fn_7068246
	step_type

reward
discount
observationX
>qnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource: M
?qnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource: Z
@qnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource: @O
Aqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource:@Z
@qnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource:@@O
Aqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource:@Q
=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource:
??M
>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:	?B
/qnetwork_dense_1_matmul_readvariableop_resource:	?>
0qnetwork_dense_1_biasadd_readvariableop_resource:
identity	??6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp?5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp?8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp?7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp?8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp?7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp?5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?'QNetwork/dense_1/BiasAdd/ReadVariableOp?&QNetwork/dense_1/MatMul/ReadVariableOp?
$QNetwork/EncodingNetwork/lambda/CastCastobservation*

DstT0*

SrcT0*/
_output_shapes
:?????????TTn
)QNetwork/EncodingNetwork/lambda/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C?
'QNetwork/EncodingNetwork/lambda/truedivRealDiv(QNetwork/EncodingNetwork/lambda/Cast:y:02QNetwork/EncodingNetwork/lambda/truediv/y:output:0*
T0*/
_output_shapes
:?????????TT?
5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOp>qnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
&QNetwork/EncodingNetwork/conv2d/Conv2DConv2D+QNetwork/EncodingNetwork/lambda/truediv:z:0=QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
'QNetwork/EncodingNetwork/conv2d/BiasAddBiasAdd/QNetwork/EncodingNetwork/conv2d/Conv2D:output:0>QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
$QNetwork/EncodingNetwork/conv2d/ReluRelu0QNetwork/EncodingNetwork/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
(QNetwork/EncodingNetwork/conv2d_1/Conv2DConv2D2QNetwork/EncodingNetwork/conv2d/Relu:activations:0?QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingVALID*
strides
?
8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpAqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
)QNetwork/EncodingNetwork/conv2d_1/BiasAddBiasAdd1QNetwork/EncodingNetwork/conv2d_1/Conv2D:output:0@QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@?
&QNetwork/EncodingNetwork/conv2d_1/ReluRelu2QNetwork/EncodingNetwork/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@?
7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
(QNetwork/EncodingNetwork/conv2d_2/Conv2DConv2D4QNetwork/EncodingNetwork/conv2d_1/Relu:activations:0?QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpAqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
)QNetwork/EncodingNetwork/conv2d_2/BiasAddBiasAdd1QNetwork/EncodingNetwork/conv2d_2/Conv2D:output:0@QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
&QNetwork/EncodingNetwork/conv2d_2/ReluRelu2QNetwork/EncodingNetwork/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@w
&QNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  ?
(QNetwork/EncodingNetwork/flatten/ReshapeReshape4QNetwork/EncodingNetwork/conv2d_2/Relu:activations:0/QNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:???????????
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOp=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%QNetwork/EncodingNetwork/dense/MatMulMatMul1QNetwork/EncodingNetwork/flatten/Reshape:output:0<QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&QNetwork/EncodingNetwork/dense/BiasAddBiasAdd/QNetwork/EncodingNetwork/dense/MatMul:product:0=QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#QNetwork/EncodingNetwork/dense/ReluRelu/QNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
&QNetwork/dense_1/MatMul/ReadVariableOpReadVariableOp/qnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
QNetwork/dense_1/MatMulMatMul1QNetwork/EncodingNetwork/dense/Relu:activations:0.QNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'QNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp0qnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
QNetwork/dense_1/BiasAddBiasAdd!QNetwork/dense_1/MatMul:product:0/QNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
!Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Categorical/mode/ArgMaxArgMax!QNetwork/dense_1/BiasAdd:output:0*Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????T
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R T
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB j
Deterministic/sample/ShapeShape Categorical/mode/ArgMax:output:0*
T0	*
_output_shapes
:\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ?
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:?
 Deterministic/sample/BroadcastToBroadcastTo Categorical/mode/ArgMax:output:0$Deterministic/sample/concat:output:0*
T0	*'
_output_shapes
:?????????u
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0	*
_output_shapes
:t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0	*#
_output_shapes
:?????????Y
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:?????????Q
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:?????????\
IdentityIdentityclip_by_value:z:0^NoOp*
T0	*#
_output_shapes
:??????????
NoOpNoOp7^QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp6^QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp9^QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp8^QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp9^QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp8^QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp6^QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5^QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp(^QNetwork/dense_1/BiasAdd/ReadVariableOp'^QNetwork/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????TT: : : : : : : : : : 2p
6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp2n
5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp2t
8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp2r
7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp2t
8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp2r
7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp2n
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2l
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2R
'QNetwork/dense_1/BiasAdd/ReadVariableOp'QNetwork/dense_1/BiasAdd/ReadVariableOp2P
&QNetwork/dense_1/MatMul/ReadVariableOp&QNetwork/dense_1/MatMul/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	step_type:KG
#
_output_shapes
:?????????
 
_user_specified_namereward:MI
#
_output_shapes
:?????????
"
_user_specified_name
discount:\X
/
_output_shapes
:?????????TT
%
_user_specified_nameobservation
?
?
%__inference_signature_wrapper_7068135
discount
observation

reward
	step_type!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference_function_with_signature_7068105k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*#
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????TT:?????????:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:?????????
$
_user_specified_name
0/discount:^Z
/
_output_shapes
:?????????TT
'
_user_specified_name0/observation:MI
#
_output_shapes
:?????????
"
_user_specified_name
0/reward:PL
#
_output_shapes
:?????????
%
_user_specified_name0/step_type
?
7
%__inference_get_initial_state_7068141

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?N
?
/__inference_polymorphic_distribution_fn_7068375
	step_type

reward
discount
observationX
>qnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource: M
?qnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource: Z
@qnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource: @O
Aqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource:@Z
@qnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource:@@O
Aqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource:@Q
=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource:
??M
>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:	?B
/qnetwork_dense_1_matmul_readvariableop_resource:	?>
0qnetwork_dense_1_biasadd_readvariableop_resource:
identity	

identity_1	

identity_2	??6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp?5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp?8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp?7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp?8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp?7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp?5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?'QNetwork/dense_1/BiasAdd/ReadVariableOp?&QNetwork/dense_1/MatMul/ReadVariableOp?
$QNetwork/EncodingNetwork/lambda/CastCastobservation*

DstT0*

SrcT0*/
_output_shapes
:?????????TTn
)QNetwork/EncodingNetwork/lambda/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C?
'QNetwork/EncodingNetwork/lambda/truedivRealDiv(QNetwork/EncodingNetwork/lambda/Cast:y:02QNetwork/EncodingNetwork/lambda/truediv/y:output:0*
T0*/
_output_shapes
:?????????TT?
5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOp>qnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
&QNetwork/EncodingNetwork/conv2d/Conv2DConv2D+QNetwork/EncodingNetwork/lambda/truediv:z:0=QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
'QNetwork/EncodingNetwork/conv2d/BiasAddBiasAdd/QNetwork/EncodingNetwork/conv2d/Conv2D:output:0>QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
$QNetwork/EncodingNetwork/conv2d/ReluRelu0QNetwork/EncodingNetwork/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
(QNetwork/EncodingNetwork/conv2d_1/Conv2DConv2D2QNetwork/EncodingNetwork/conv2d/Relu:activations:0?QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingVALID*
strides
?
8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpAqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
)QNetwork/EncodingNetwork/conv2d_1/BiasAddBiasAdd1QNetwork/EncodingNetwork/conv2d_1/Conv2D:output:0@QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@?
&QNetwork/EncodingNetwork/conv2d_1/ReluRelu2QNetwork/EncodingNetwork/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@?
7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
(QNetwork/EncodingNetwork/conv2d_2/Conv2DConv2D4QNetwork/EncodingNetwork/conv2d_1/Relu:activations:0?QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpAqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
)QNetwork/EncodingNetwork/conv2d_2/BiasAddBiasAdd1QNetwork/EncodingNetwork/conv2d_2/Conv2D:output:0@QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
&QNetwork/EncodingNetwork/conv2d_2/ReluRelu2QNetwork/EncodingNetwork/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@w
&QNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  ?
(QNetwork/EncodingNetwork/flatten/ReshapeReshape4QNetwork/EncodingNetwork/conv2d_2/Relu:activations:0/QNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:???????????
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOp=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%QNetwork/EncodingNetwork/dense/MatMulMatMul1QNetwork/EncodingNetwork/flatten/Reshape:output:0<QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&QNetwork/EncodingNetwork/dense/BiasAddBiasAdd/QNetwork/EncodingNetwork/dense/MatMul:product:0=QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#QNetwork/EncodingNetwork/dense/ReluRelu/QNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
&QNetwork/dense_1/MatMul/ReadVariableOpReadVariableOp/qnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
QNetwork/dense_1/MatMulMatMul1QNetwork/EncodingNetwork/dense/Relu:activations:0.QNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'QNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp0qnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
QNetwork/dense_1/BiasAddBiasAdd!QNetwork/dense_1/MatMul:product:0/QNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
!Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Categorical/mode/ArgMaxArgMax!QNetwork/dense_1/BiasAdd:output:0*Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????T
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R T
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R Y
IdentityIdentityDeterministic/atol:output:0^NoOp*
T0	*
_output_shapes
: m

Identity_1Identity Categorical/mode/ArgMax:output:0^NoOp*
T0	*#
_output_shapes
:?????????[

Identity_2IdentityDeterministic/rtol:output:0^NoOp*
T0	*
_output_shapes
: ?
NoOpNoOp7^QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp6^QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp9^QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp8^QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp9^QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp8^QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp6^QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5^QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp(^QNetwork/dense_1/BiasAdd/ReadVariableOp'^QNetwork/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????TT: : : : : : : : : : 2p
6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp6QNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp2n
5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp5QNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp2t
8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp8QNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp2r
7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp7QNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp2t
8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp8QNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp2r
7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp7QNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp2n
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2l
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2R
'QNetwork/dense_1/BiasAdd/ReadVariableOp'QNetwork/dense_1/BiasAdd/ReadVariableOp2P
&QNetwork/dense_1/MatMul/ReadVariableOp&QNetwork/dense_1/MatMul/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	step_type:KG
#
_output_shapes
:?????????
 
_user_specified_namereward:MI
#
_output_shapes
:?????????
"
_user_specified_name
discount:\X
/
_output_shapes
:?????????TT
%
_user_specified_nameobservation
?
e
%__inference_signature_wrapper_7068162
unknown:	 
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference_function_with_signature_7068154^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
]

__inference_<lambda>_7067868*(
_construction_contextkEagerRuntime*
_input_shapes "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
action?
4

0/discount&
action_0_discount:0?????????
F
0/observation5
action_0_observation:0?????????TT
0
0/reward$
action_0_reward:0?????????
6
0/step_type'
action_0_step_type:0?????????6
action,
StatefulPartitionedCall:0	?????????tensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:?}
?

train_step
metadata
model_variables
_all_assets

action
distribution
get_initial_state
get_metadata
	get_train_step


signatures"
_generic_user_object
:	 (2Variable
 "
trackable_dict_wrapper
g
0
1
2
3
4
5
6
7
8
9"
trackable_tuple_wrapper
5
_wrapped_policy"
trackable_dict_wrapper
?2?
)__inference_polymorphic_action_fn_7068246
)__inference_polymorphic_action_fn_7068323?
???
FullArgSpec(
args ?
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults?
? 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_polymorphic_distribution_fn_7068375?
???
FullArgSpec(
args ?
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults?
? 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_get_initial_state_7068378?
???
FullArgSpec!
args?
jself
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference_<lambda>_7067868"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference_<lambda>_7067865"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
`

action
get_initial_state
get_train_step
get_metadata"
signature_map
@:> 2&QNetwork/EncodingNetwork/conv2d/kernel
2:0 2$QNetwork/EncodingNetwork/conv2d/bias
B:@ @2(QNetwork/EncodingNetwork/conv2d_1/kernel
4:2@2&QNetwork/EncodingNetwork/conv2d_1/bias
B:@@@2(QNetwork/EncodingNetwork/conv2d_2/kernel
4:2@2&QNetwork/EncodingNetwork/conv2d_2/bias
9:7
??2%QNetwork/EncodingNetwork/dense/kernel
2:0?2#QNetwork/EncodingNetwork/dense/bias
*:(	?2QNetwork/dense_1/kernel
#:!2QNetwork/dense_1/bias
.

_q_network"
_generic_user_object
?B?
%__inference_signature_wrapper_7068135
0/discount0/observation0/reward0/step_type"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_7068147
batch_size"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_7068162"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_7068169"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
_encoder
_q_value_layer
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#_flat_preprocessing_layers
$_postprocessing_layers
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
'
60"
trackable_list_wrapper
C
70
81
92
:3
;4"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
?
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
J
60
71
82
93
:4
;5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper;
__inference_<lambda>_7067865?

? 
? "? 	4
__inference_<lambda>_7067868?

? 
? "? R
%__inference_get_initial_state_7068378)"?
?
?

batch_size 
? "? ?
)__inference_polymorphic_action_fn_7068246?
???
???
???
TimeStep,
	step_type?
	step_type?????????&
reward?
reward?????????*
discount?
discount?????????<
observation-?*
observation?????????TT
? 
? "R?O

PolicyStep&
action?
action?????????	
state? 
info? ?
)__inference_polymorphic_action_fn_7068323?
???
???
???
TimeStep6
	step_type)?&
time_step/step_type?????????0
reward&?#
time_step/reward?????????4
discount(?%
time_step/discount?????????F
observation7?4
time_step/observation?????????TT
? 
? "R?O

PolicyStep&
action?
action?????????	
state? 
info? ?
/__inference_polymorphic_distribution_fn_7068375?
???
???
???
TimeStep,
	step_type?
	step_type?????????&
reward?
reward?????????*
discount?
discount?????????<
observation-?*
observation?????????TT
? 
? "???

PolicyStep?
action??????
`
B??

atol? 	

loc??????????	

rtol? 	
J?G

allow_nan_statsp

namejDeterministic_1

validate_argsp 
?
j
parameters
? 
?
jnameEtf_agents.policies.greedy_policy.DeterministicWithLogProb_ACTTypeSpec 
state? 
info? ?
%__inference_signature_wrapper_7068135?
???
? 
???
.

0/discount ?

0/discount?????????
@
0/observation/?,
0/observation?????????TT
*
0/reward?
0/reward?????????
0
0/step_type!?
0/step_type?????????"+?(
&
action?
action?????????	`
%__inference_signature_wrapper_706814770?-
? 
&?#
!

batch_size?

batch_size "? Y
%__inference_signature_wrapper_70681620?

? 
? "?

int64?
int64 	=
%__inference_signature_wrapper_7068169?

? 
? "? 