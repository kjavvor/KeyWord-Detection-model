ЬГ
Дэ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
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
$
DisableCopyOnRead
resourceѕ
ч
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%иЛ8"&
exponential_avg_factorfloat%  ђ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ј
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
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
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
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
executor_typestring ѕе
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
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48ХЖ
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
ј
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
ѓ
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
њ
dense_13/biasVarHandleOp*
_output_shapes
: *

debug_namedense_13/bias/*
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:*
dtype0
ю
dense_13/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_13/kernel/*
dtype0*
shape
:@* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:@*
dtype0
њ
dense_12/biasVarHandleOp*
_output_shapes
: *

debug_namedense_12/bias/*
dtype0*
shape:@*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:@*
dtype0
Ю
dense_12/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_12/kernel/*
dtype0*
shape:	ђ@* 
shared_namedense_12/kernel
t
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes
:	ђ@*
dtype0
Њ
dense_11/biasVarHandleOp*
_output_shapes
: *

debug_namedense_11/bias/*
dtype0*
shape:ђ*
shared_namedense_11/bias
l
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes	
:ђ*
dtype0
ъ
dense_11/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_11/kernel/*
dtype0*
shape:
ђђ* 
shared_namedense_11/kernel
u
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel* 
_output_shapes
:
ђђ*
dtype0
я
&batch_normalization_18/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_18/moving_variance/*
dtype0*
shape:ђ*7
shared_name(&batch_normalization_18/moving_variance
ъ
:batch_normalization_18/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_18/moving_variance*
_output_shapes	
:ђ*
dtype0
м
"batch_normalization_18/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_18/moving_mean/*
dtype0*
shape:ђ*3
shared_name$"batch_normalization_18/moving_mean
ќ
6batch_normalization_18/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_18/moving_mean*
_output_shapes	
:ђ*
dtype0
й
batch_normalization_18/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_18/beta/*
dtype0*
shape:ђ*,
shared_namebatch_normalization_18/beta
ѕ
/batch_normalization_18/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_18/beta*
_output_shapes	
:ђ*
dtype0
└
batch_normalization_18/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_18/gamma/*
dtype0*
shape:ђ*-
shared_namebatch_normalization_18/gamma
і
0batch_normalization_18/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_18/gamma*
_output_shapes	
:ђ*
dtype0
ќ
conv2d_18/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_18/bias/*
dtype0*
shape:ђ*
shared_nameconv2d_18/bias
n
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes	
:ђ*
dtype0
Е
conv2d_18/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_18/kernel/*
dtype0*
shape:ђђ*!
shared_nameconv2d_18/kernel

$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*(
_output_shapes
:ђђ*
dtype0
я
&batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_17/moving_variance/*
dtype0*
shape:ђ*7
shared_name(&batch_normalization_17/moving_variance
ъ
:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
_output_shapes	
:ђ*
dtype0
м
"batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_17/moving_mean/*
dtype0*
shape:ђ*3
shared_name$"batch_normalization_17/moving_mean
ќ
6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
_output_shapes	
:ђ*
dtype0
й
batch_normalization_17/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_17/beta/*
dtype0*
shape:ђ*,
shared_namebatch_normalization_17/beta
ѕ
/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*
_output_shapes	
:ђ*
dtype0
└
batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_17/gamma/*
dtype0*
shape:ђ*-
shared_namebatch_normalization_17/gamma
і
0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes	
:ђ*
dtype0
ќ
conv2d_17/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_17/bias/*
dtype0*
shape:ђ*
shared_nameconv2d_17/bias
n
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes	
:ђ*
dtype0
е
conv2d_17/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_17/kernel/*
dtype0*
shape:@ђ*!
shared_nameconv2d_17/kernel
~
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*'
_output_shapes
:@ђ*
dtype0
П
&batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_16/moving_variance/*
dtype0*
shape:@*7
shared_name(&batch_normalization_16/moving_variance
Ю
:batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
_output_shapes
:@*
dtype0
Л
"batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_16/moving_mean/*
dtype0*
shape:@*3
shared_name$"batch_normalization_16/moving_mean
Ћ
6batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*
_output_shapes
:@*
dtype0
╝
batch_normalization_16/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_16/beta/*
dtype0*
shape:@*,
shared_namebatch_normalization_16/beta
Є
/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_16/beta*
_output_shapes
:@*
dtype0
┐
batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_16/gamma/*
dtype0*
shape:@*-
shared_namebatch_normalization_16/gamma
Ѕ
0batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_16/gamma*
_output_shapes
:@*
dtype0
Ћ
conv2d_16/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_16/bias/*
dtype0*
shape:@*
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:@*
dtype0
Д
conv2d_16/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_16/kernel/*
dtype0*
shape: @*!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
: @*
dtype0
П
&batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_15/moving_variance/*
dtype0*
shape: *7
shared_name(&batch_normalization_15/moving_variance
Ю
:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes
: *
dtype0
Л
"batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_15/moving_mean/*
dtype0*
shape: *3
shared_name$"batch_normalization_15/moving_mean
Ћ
6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes
: *
dtype0
╝
batch_normalization_15/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_15/beta/*
dtype0*
shape: *,
shared_namebatch_normalization_15/beta
Є
/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
_output_shapes
: *
dtype0
┐
batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_15/gamma/*
dtype0*
shape: *-
shared_namebatch_normalization_15/gamma
Ѕ
0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*
_output_shapes
: *
dtype0
Ћ
conv2d_15/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_15/bias/*
dtype0*
shape: *
shared_nameconv2d_15/bias
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
: *
dtype0
Д
conv2d_15/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_15/kernel/*
dtype0*
shape: *!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
: *
dtype0
њ
serving_default_conv2d_15_inputPlaceholder*/
_output_shapes
:          *
dtype0*$
shape:          
ч
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_15_inputconv2d_15/kernelconv2d_15/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_16/kernelconv2d_16/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_17/kernelconv2d_17/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_18/kernelconv2d_18/biasbatch_normalization_18/gammabatch_normalization_18/beta"batch_normalization_18/moving_mean&batch_normalization_18/moving_variancedense_11/kerneldense_11/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8ѓ *.
f)R'
%__inference_signature_wrapper_6479013

NoOpNoOp
│Ѓ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ьѓ
valueРѓBяѓ Bоѓ
З
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer-13
layer_with_weights-9
layer-14
layer-15
layer_with_weights-10
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories*
ь
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
#$_self_saveable_object_factories
 %_jit_compiled_convolution_op*
Щ
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,axis
	-gamma
.beta
/moving_mean
0moving_variance
#1_self_saveable_object_factories*
│
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
#8_self_saveable_object_factories* 
ь
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias
#A_self_saveable_object_factories
 B_jit_compiled_convolution_op*
Щ
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses
Iaxis
	Jgamma
Kbeta
Lmoving_mean
Mmoving_variance
#N_self_saveable_object_factories*
│
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
#U_self_saveable_object_factories* 
ь
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias
#^_self_saveable_object_factories
 __jit_compiled_convolution_op*
Щ
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses
faxis
	ggamma
hbeta
imoving_mean
jmoving_variance
#k_self_saveable_object_factories*
│
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses
#r_self_saveable_object_factories* 
ь
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

ykernel
zbias
#{_self_saveable_object_factories
 |_jit_compiled_convolution_op*
Ѓ
}	variables
~trainable_variables
regularization_losses
ђ	keras_api
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
	Ѓaxis

ёgamma
	Ёbeta
єmoving_mean
Єmoving_variance
$ѕ_self_saveable_object_factories*
║
Ѕ	variables
іtrainable_variables
Іregularization_losses
ї	keras_api
Ї__call__
+ј&call_and_return_all_conditional_losses
$Ј_self_saveable_object_factories* 
н
љ	variables
Љtrainable_variables
њregularization_losses
Њ	keras_api
ћ__call__
+Ћ&call_and_return_all_conditional_losses
ќkernel
	Ќbias
$ў_self_saveable_object_factories*
м
Ў	variables
џtrainable_variables
Џregularization_losses
ю	keras_api
Ю__call__
+ъ&call_and_return_all_conditional_losses
Ъ_random_generator
$а_self_saveable_object_factories* 
н
А	variables
бtrainable_variables
Бregularization_losses
ц	keras_api
Ц__call__
+д&call_and_return_all_conditional_losses
Дkernel
	еbias
$Е_self_saveable_object_factories*
м
ф	variables
Фtrainable_variables
гregularization_losses
Г	keras_api
«__call__
+»&call_and_return_all_conditional_losses
░_random_generator
$▒_self_saveable_object_factories* 
н
▓	variables
│trainable_variables
┤regularization_losses
х	keras_api
Х__call__
+и&call_and_return_all_conditional_losses
Иkernel
	╣bias
$║_self_saveable_object_factories*
З
"0
#1
-2
.3
/4
05
?6
@7
J8
K9
L10
M11
\12
]13
g14
h15
i16
j17
y18
z19
ё20
Ё21
є22
Є23
ќ24
Ќ25
Д26
е27
И28
╣29*
▓
"0
#1
-2
.3
?4
@5
J6
K7
\8
]9
g10
h11
y12
z13
ё14
Ё15
ќ16
Ќ17
Д18
е19
И20
╣21*
* 
х
╗non_trainable_variables
╝layers
йmetrics
 Йlayer_regularization_losses
┐layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

└trace_0
┴trace_1* 

┬trace_0
├trace_1* 
* 
S
─
_variables
┼_iterations
к_learning_rate
К_update_step_xla*

╚serving_default* 
* 

"0
#1*

"0
#1*
* 
ў
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

╬trace_0* 

¤trace_0* 
`Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_15/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
-0
.1
/2
03*

-0
.1*
* 
ў
лnon_trainable_variables
Лlayers
мmetrics
 Мlayer_regularization_losses
нlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

Нtrace_0
оtrace_1* 

Оtrace_0
пtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_15/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_15/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_15/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_15/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
Пlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 

яtrace_0* 

▀trace_0* 
* 

?0
@1*

?0
@1*
* 
ў
Яnon_trainable_variables
рlayers
Рmetrics
 сlayer_regularization_losses
Сlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

тtrace_0* 

Тtrace_0* 
`Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
J0
K1
L2
M3*

J0
K1*
* 
ў
уnon_trainable_variables
Уlayers
жmetrics
 Жlayer_regularization_losses
вlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

Вtrace_0
ьtrace_1* 

Ьtrace_0
№trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_16/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_16/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_16/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_16/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
­non_trainable_variables
ыlayers
Ыmetrics
 зlayer_regularization_losses
Зlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 

шtrace_0* 

Шtrace_0* 
* 

\0
]1*

\0
]1*
* 
ў
эnon_trainable_variables
Эlayers
щmetrics
 Щlayer_regularization_losses
чlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

Чtrace_0* 

§trace_0* 
`Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
g0
h1
i2
j3*

g0
h1*
* 
ў
■non_trainable_variables
 layers
ђmetrics
 Ђlayer_regularization_losses
ѓlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*

Ѓtrace_0
ёtrace_1* 

Ёtrace_0
єtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_17/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_17/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_17/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_17/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
Єnon_trainable_variables
ѕlayers
Ѕmetrics
 іlayer_regularization_losses
Іlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses* 

їtrace_0* 

Їtrace_0* 
* 

y0
z1*

y0
z1*
* 
ў
јnon_trainable_variables
Јlayers
љmetrics
 Љlayer_regularization_losses
њlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*

Њtrace_0* 

ћtrace_0* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
$
ё0
Ё1
є2
Є3*

ё0
Ё1*
* 
Џ
Ћnon_trainable_variables
ќlayers
Ќmetrics
 ўlayer_regularization_losses
Ўlayer_metrics
}	variables
~trainable_variables
regularization_losses
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses*

џtrace_0
Џtrace_1* 

юtrace_0
Юtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_18/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_18/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_18/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_18/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ю
ъnon_trainable_variables
Ъlayers
аmetrics
 Аlayer_regularization_losses
бlayer_metrics
Ѕ	variables
іtrainable_variables
Іregularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses* 

Бtrace_0* 

цtrace_0* 
* 

ќ0
Ќ1*

ќ0
Ќ1*
* 
ъ
Цnon_trainable_variables
дlayers
Дmetrics
 еlayer_regularization_losses
Еlayer_metrics
љ	variables
Љtrainable_variables
њregularization_losses
ћ__call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses*

фtrace_0* 

Фtrace_0* 
_Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_11/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ю
гnon_trainable_variables
Гlayers
«metrics
 »layer_regularization_losses
░layer_metrics
Ў	variables
џtrainable_variables
Џregularization_losses
Ю__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses* 

▒trace_0
▓trace_1* 

│trace_0
┤trace_1* 
(
$х_self_saveable_object_factories* 
* 

Д0
е1*

Д0
е1*
* 
ъ
Хnon_trainable_variables
иlayers
Иmetrics
 ╣layer_regularization_losses
║layer_metrics
А	variables
бtrainable_variables
Бregularization_losses
Ц__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses*

╗trace_0* 

╝trace_0* 
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ю
йnon_trainable_variables
Йlayers
┐metrics
 └layer_regularization_losses
┴layer_metrics
ф	variables
Фtrainable_variables
гregularization_losses
«__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses* 

┬trace_0
├trace_1* 

─trace_0
┼trace_1* 
(
$к_self_saveable_object_factories* 
* 

И0
╣1*

И0
╣1*
* 
ъ
Кnon_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
▓	variables
│trainable_variables
┤regularization_losses
Х__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses*

╠trace_0* 

═trace_0* 
`Z
VARIABLE_VALUEdense_13/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_13/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
>
/0
01
L2
M3
i4
j5
є6
Є7*
ѓ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16*

╬0
¤1*
* 
* 
* 
* 
* 
* 

┼0*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 

/0
01*
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

L0
M1*
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

i0
j1*
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

є0
Є1*
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
<
л	variables
Л	keras_api

мtotal

Мcount*
M
н	variables
Н	keras_api

оtotal

Оcount
п
_fn_kwargs*

м0
М1*

л	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

о0
О1*

н	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
■
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_15/kernelconv2d_15/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_16/kernelconv2d_16/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_17/kernelconv2d_17/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_18/kernelconv2d_18/biasbatch_normalization_18/gammabatch_normalization_18/beta"batch_normalization_18/moving_mean&batch_normalization_18/moving_variancedense_11/kerneldense_11/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias	iterationlearning_ratetotal_1count_1totalcountConst*1
Tin*
(2&*
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
GPU 2J 8ѓ *)
f$R"
 __inference__traced_save_6479734
щ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_15/kernelconv2d_15/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_16/kernelconv2d_16/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_17/kernelconv2d_17/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_18/kernelconv2d_18/biasbatch_normalization_18/gammabatch_normalization_18/beta"batch_normalization_18/moving_mean&batch_normalization_18/moving_variancedense_11/kerneldense_11/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias	iterationlearning_ratetotal_1count_1totalcount*0
Tin)
'2%*
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
GPU 2J 8ѓ *,
f'R%
#__inference__traced_restore_6479851Юш
ю
к
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6479353

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
ю
к
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6478404

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
Џ

f
G__inference_dropout_14_layer_call_and_return_conditional_losses_6478622

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Њ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
п

щ
E__inference_dense_11_layer_call_and_return_conditional_losses_6478576

inputs2
matmul_readvariableop_resource:
ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ю
к
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6478332

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
┴
ѓ
F__inference_conv2d_18_layer_call_and_return_conditional_losses_6478550

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
л

э
E__inference_dense_12_layer_call_and_return_conditional_losses_6478605

inputs1
matmul_readvariableop_resource:	ђ@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Њ

М
8__inference_batch_normalization_16_layer_call_fn_6479138

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6478260Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479134:'#
!
_user_specified_name	6479132:'#
!
_user_specified_name	6479130:'#
!
_user_specified_name	6479128:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┴
ѓ
F__inference_conv2d_18_layer_call_and_return_conditional_losses_6479309

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Л

Ш
E__inference_dense_13_layer_call_and_return_conditional_losses_6478634

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ћ
i
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_6479289

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ћ
i
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_6478381

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Џ

О
8__inference_batch_normalization_17_layer_call_fn_6479230

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6478332і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479226:'#
!
_user_specified_name	6479224:'#
!
_user_specified_name	6479222:'#
!
_user_specified_name	6479220:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
щ
џ
*__inference_dense_11_layer_call_fn_6479391

inputs
unknown:
ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_6478576p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479387:'#
!
_user_specified_name	6479385:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
п

щ
E__inference_dense_11_layer_call_and_return_conditional_losses_6479402

inputs2
matmul_readvariableop_resource:
ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
і_
Б
I__inference_sequential_4_layer_call_and_return_conditional_losses_6478732
conv2d_15_input+
conv2d_15_6478644: 
conv2d_15_6478646: ,
batch_normalization_15_6478649: ,
batch_normalization_15_6478651: ,
batch_normalization_15_6478653: ,
batch_normalization_15_6478655: +
conv2d_16_6478659: @
conv2d_16_6478661:@,
batch_normalization_16_6478664:@,
batch_normalization_16_6478666:@,
batch_normalization_16_6478668:@,
batch_normalization_16_6478670:@,
conv2d_17_6478674:@ђ 
conv2d_17_6478676:	ђ-
batch_normalization_17_6478679:	ђ-
batch_normalization_17_6478681:	ђ-
batch_normalization_17_6478683:	ђ-
batch_normalization_17_6478685:	ђ-
conv2d_18_6478689:ђђ 
conv2d_18_6478691:	ђ-
batch_normalization_18_6478694:	ђ-
batch_normalization_18_6478696:	ђ-
batch_normalization_18_6478698:	ђ-
batch_normalization_18_6478700:	ђ$
dense_11_6478704:
ђђ
dense_11_6478706:	ђ#
dense_12_6478715:	ђ@
dense_12_6478717:@"
dense_13_6478726:@
dense_13_6478728:
identityѕб.batch_normalization_15/StatefulPartitionedCallб.batch_normalization_16/StatefulPartitionedCallб.batch_normalization_17/StatefulPartitionedCallб.batch_normalization_18/StatefulPartitionedCallб!conv2d_15/StatefulPartitionedCallб!conv2d_16/StatefulPartitionedCallб!conv2d_17/StatefulPartitionedCallб!conv2d_18/StatefulPartitionedCallб dense_11/StatefulPartitionedCallб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallѕ
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallconv2d_15_inputconv2d_15_6478644conv2d_15_6478646*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_6478472Џ
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0batch_normalization_15_6478649batch_normalization_15_6478651batch_normalization_15_6478653batch_normalization_15_6478655*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6478206ѓ
 max_pooling2d_12/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_6478237б
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_16_6478659conv2d_16_6478661*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_6478498Џ
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0batch_normalization_16_6478664batch_normalization_16_6478666batch_normalization_16_6478668batch_normalization_16_6478670*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6478278ѓ
 max_pooling2d_13/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_6478309Б
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_17_6478674conv2d_17_6478676*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_6478524ю
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_17_6478679batch_normalization_17_6478681batch_normalization_17_6478683batch_normalization_17_6478685*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6478350Ѓ
 max_pooling2d_14/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_6478381Б
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_18_6478689conv2d_18_6478691*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_6478550ю
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_18_6478694batch_normalization_18_6478696batch_normalization_18_6478698batch_normalization_18_6478700*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6478422Ј
*global_average_pooling2d_4/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *`
f[RY
W__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_6478454А
 dense_11/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_4/PartitionedCall:output:0dense_11_6478704dense_11_6478706*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_6478576р
dropout_13/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_6478713љ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0dense_12_6478715dense_12_6478717*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_6478605Я
dropout_14/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_6478724љ
 dense_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_13_6478726dense_13_6478728*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_6478634x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ▀
NoOpNoOp/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:          : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall:'#
!
_user_specified_name	6478728:'#
!
_user_specified_name	6478726:'#
!
_user_specified_name	6478717:'#
!
_user_specified_name	6478715:'#
!
_user_specified_name	6478706:'#
!
_user_specified_name	6478704:'#
!
_user_specified_name	6478700:'#
!
_user_specified_name	6478698:'#
!
_user_specified_name	6478696:'#
!
_user_specified_name	6478694:'#
!
_user_specified_name	6478691:'#
!
_user_specified_name	6478689:'#
!
_user_specified_name	6478685:'#
!
_user_specified_name	6478683:'#
!
_user_specified_name	6478681:'#
!
_user_specified_name	6478679:'#
!
_user_specified_name	6478676:'#
!
_user_specified_name	6478674:'#
!
_user_specified_name	6478670:'#
!
_user_specified_name	6478668:'
#
!
_user_specified_name	6478666:'	#
!
_user_specified_name	6478664:'#
!
_user_specified_name	6478661:'#
!
_user_specified_name	6478659:'#
!
_user_specified_name	6478655:'#
!
_user_specified_name	6478653:'#
!
_user_specified_name	6478651:'#
!
_user_specified_name	6478649:'#
!
_user_specified_name	6478646:'#
!
_user_specified_name	6478644:` \
/
_output_shapes
:          
)
_user_specified_nameconv2d_15_input
м
ъ
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6478206

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
л

э
E__inference_dense_12_layer_call_and_return_conditional_losses_6479449

inputs1
matmul_readvariableop_resource:	ђ@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
 a
ь
I__inference_sequential_4_layer_call_and_return_conditional_losses_6478641
conv2d_15_input+
conv2d_15_6478473: 
conv2d_15_6478475: ,
batch_normalization_15_6478478: ,
batch_normalization_15_6478480: ,
batch_normalization_15_6478482: ,
batch_normalization_15_6478484: +
conv2d_16_6478499: @
conv2d_16_6478501:@,
batch_normalization_16_6478504:@,
batch_normalization_16_6478506:@,
batch_normalization_16_6478508:@,
batch_normalization_16_6478510:@,
conv2d_17_6478525:@ђ 
conv2d_17_6478527:	ђ-
batch_normalization_17_6478530:	ђ-
batch_normalization_17_6478532:	ђ-
batch_normalization_17_6478534:	ђ-
batch_normalization_17_6478536:	ђ-
conv2d_18_6478551:ђђ 
conv2d_18_6478553:	ђ-
batch_normalization_18_6478556:	ђ-
batch_normalization_18_6478558:	ђ-
batch_normalization_18_6478560:	ђ-
batch_normalization_18_6478562:	ђ$
dense_11_6478577:
ђђ
dense_11_6478579:	ђ#
dense_12_6478606:	ђ@
dense_12_6478608:@"
dense_13_6478635:@
dense_13_6478637:
identityѕб.batch_normalization_15/StatefulPartitionedCallб.batch_normalization_16/StatefulPartitionedCallб.batch_normalization_17/StatefulPartitionedCallб.batch_normalization_18/StatefulPartitionedCallб!conv2d_15/StatefulPartitionedCallб!conv2d_16/StatefulPartitionedCallб!conv2d_17/StatefulPartitionedCallб!conv2d_18/StatefulPartitionedCallб dense_11/StatefulPartitionedCallб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб"dropout_13/StatefulPartitionedCallб"dropout_14/StatefulPartitionedCallѕ
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallconv2d_15_inputconv2d_15_6478473conv2d_15_6478475*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_6478472Ў
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0batch_normalization_15_6478478batch_normalization_15_6478480batch_normalization_15_6478482batch_normalization_15_6478484*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6478188ѓ
 max_pooling2d_12/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_6478237б
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_16_6478499conv2d_16_6478501*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_6478498Ў
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0batch_normalization_16_6478504batch_normalization_16_6478506batch_normalization_16_6478508batch_normalization_16_6478510*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6478260ѓ
 max_pooling2d_13/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_6478309Б
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_17_6478525conv2d_17_6478527*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_6478524џ
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_17_6478530batch_normalization_17_6478532batch_normalization_17_6478534batch_normalization_17_6478536*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6478332Ѓ
 max_pooling2d_14/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_6478381Б
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_18_6478551conv2d_18_6478553*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_6478550џ
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_18_6478556batch_normalization_18_6478558batch_normalization_18_6478560batch_normalization_18_6478562*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6478404Ј
*global_average_pooling2d_4/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *`
f[RY
W__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_6478454А
 dense_11/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_4/PartitionedCall:output:0dense_11_6478577dense_11_6478579*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_6478576ы
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_6478593ў
 dense_12/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0dense_12_6478606dense_12_6478608*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_6478605Ћ
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_6478622ў
 dense_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0dense_13_6478635dense_13_6478637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_6478634x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Е
NoOpNoOp/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:          : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall:'#
!
_user_specified_name	6478637:'#
!
_user_specified_name	6478635:'#
!
_user_specified_name	6478608:'#
!
_user_specified_name	6478606:'#
!
_user_specified_name	6478579:'#
!
_user_specified_name	6478577:'#
!
_user_specified_name	6478562:'#
!
_user_specified_name	6478560:'#
!
_user_specified_name	6478558:'#
!
_user_specified_name	6478556:'#
!
_user_specified_name	6478553:'#
!
_user_specified_name	6478551:'#
!
_user_specified_name	6478536:'#
!
_user_specified_name	6478534:'#
!
_user_specified_name	6478532:'#
!
_user_specified_name	6478530:'#
!
_user_specified_name	6478527:'#
!
_user_specified_name	6478525:'#
!
_user_specified_name	6478510:'#
!
_user_specified_name	6478508:'
#
!
_user_specified_name	6478506:'	#
!
_user_specified_name	6478504:'#
!
_user_specified_name	6478501:'#
!
_user_specified_name	6478499:'#
!
_user_specified_name	6478484:'#
!
_user_specified_name	6478482:'#
!
_user_specified_name	6478480:'#
!
_user_specified_name	6478478:'#
!
_user_specified_name	6478475:'#
!
_user_specified_name	6478473:` \
/
_output_shapes
:          
)
_user_specified_nameconv2d_15_input
й
Ђ
F__inference_conv2d_17_layer_call_and_return_conditional_losses_6479217

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ї
┬
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6479077

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
м
ъ
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6479095

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Л
e
,__inference_dropout_14_layer_call_fn_6479454

inputs
identityѕбStatefulPartitionedCall┬
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_6478622o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
м
ъ
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6479187

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Џ

О
8__inference_batch_normalization_18_layer_call_fn_6479322

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6478404і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479318:'#
!
_user_specified_name	6479316:'#
!
_user_specified_name	6479314:'#
!
_user_specified_name	6479312:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
╝
N
2__inference_max_pooling2d_12_layer_call_fn_6479100

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_6478237Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╝
N
2__inference_max_pooling2d_14_layer_call_fn_6479284

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_6478381Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┌
e
G__inference_dropout_14_layer_call_and_return_conditional_losses_6479476

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Џ
X
<__inference_global_average_pooling2d_4_layer_call_fn_6479376

inputs
identity╦
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:                  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *`
f[RY
W__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_6478454i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
б

f
G__inference_dropout_13_layer_call_and_return_conditional_losses_6479424

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ћ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Б
Б
+__inference_conv2d_18_layer_call_fn_6479298

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_6478550x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479294:'#
!
_user_specified_name	6479292:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
а
б
+__inference_conv2d_17_layer_call_fn_6479206

inputs"
unknown:@ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_6478524x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479202:'#
!
_user_specified_name	6479200:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Д
H
,__inference_dropout_13_layer_call_fn_6479412

inputs
identity│
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_6478713a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Л

Ш
E__inference_dense_13_layer_call_and_return_conditional_losses_6479496

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Џ

f
G__inference_dropout_14_layer_call_and_return_conditional_losses_6479471

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Њ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
У
╝
.__inference_sequential_4_layer_call_fn_6478797
conv2d_15_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@ђ

unknown_12:	ђ

unknown_13:	ђ

unknown_14:	ђ

unknown_15:	ђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:	ђ

unknown_22:	ђ

unknown_23:
ђђ

unknown_24:	ђ

unknown_25:	ђ@

unknown_26:@

unknown_27:@

unknown_28:
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallconv2d_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_6478641o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:          : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6478793:'#
!
_user_specified_name	6478791:'#
!
_user_specified_name	6478789:'#
!
_user_specified_name	6478787:'#
!
_user_specified_name	6478785:'#
!
_user_specified_name	6478783:'#
!
_user_specified_name	6478781:'#
!
_user_specified_name	6478779:'#
!
_user_specified_name	6478777:'#
!
_user_specified_name	6478775:'#
!
_user_specified_name	6478773:'#
!
_user_specified_name	6478771:'#
!
_user_specified_name	6478769:'#
!
_user_specified_name	6478767:'#
!
_user_specified_name	6478765:'#
!
_user_specified_name	6478763:'#
!
_user_specified_name	6478761:'#
!
_user_specified_name	6478759:'#
!
_user_specified_name	6478757:'#
!
_user_specified_name	6478755:'
#
!
_user_specified_name	6478753:'	#
!
_user_specified_name	6478751:'#
!
_user_specified_name	6478749:'#
!
_user_specified_name	6478747:'#
!
_user_specified_name	6478745:'#
!
_user_specified_name	6478743:'#
!
_user_specified_name	6478741:'#
!
_user_specified_name	6478739:'#
!
_user_specified_name	6478737:'#
!
_user_specified_name	6478735:` \
/
_output_shapes
:          
)
_user_specified_nameconv2d_15_input
ї
┬
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6478260

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
х
 
F__inference_conv2d_15_layer_call_and_return_conditional_losses_6478472

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:           i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:           S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
б

f
G__inference_dropout_13_layer_call_and_return_conditional_losses_6478593

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ћ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ћ
i
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_6478237

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ю

О
8__inference_batch_normalization_18_layer_call_fn_6479335

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6478422і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479331:'#
!
_user_specified_name	6479329:'#
!
_user_specified_name	6479327:'#
!
_user_specified_name	6479325:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
­
╝
.__inference_sequential_4_layer_call_fn_6478862
conv2d_15_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@ђ

unknown_12:	ђ

unknown_13:	ђ

unknown_14:	ђ

unknown_15:	ђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:	ђ

unknown_22:	ђ

unknown_23:
ђђ

unknown_24:	ђ

unknown_25:	ђ@

unknown_26:@

unknown_27:@

unknown_28:
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallconv2d_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_6478732o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:          : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6478858:'#
!
_user_specified_name	6478856:'#
!
_user_specified_name	6478854:'#
!
_user_specified_name	6478852:'#
!
_user_specified_name	6478850:'#
!
_user_specified_name	6478848:'#
!
_user_specified_name	6478846:'#
!
_user_specified_name	6478844:'#
!
_user_specified_name	6478842:'#
!
_user_specified_name	6478840:'#
!
_user_specified_name	6478838:'#
!
_user_specified_name	6478836:'#
!
_user_specified_name	6478834:'#
!
_user_specified_name	6478832:'#
!
_user_specified_name	6478830:'#
!
_user_specified_name	6478828:'#
!
_user_specified_name	6478826:'#
!
_user_specified_name	6478824:'#
!
_user_specified_name	6478822:'#
!
_user_specified_name	6478820:'
#
!
_user_specified_name	6478818:'	#
!
_user_specified_name	6478816:'#
!
_user_specified_name	6478814:'#
!
_user_specified_name	6478812:'#
!
_user_specified_name	6478810:'#
!
_user_specified_name	6478808:'#
!
_user_specified_name	6478806:'#
!
_user_specified_name	6478804:'#
!
_user_specified_name	6478802:'#
!
_user_specified_name	6478800:` \
/
_output_shapes
:          
)
_user_specified_nameconv2d_15_input
ї
┬
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6478188

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
х
 
F__inference_conv2d_16_layer_call_and_return_conditional_losses_6478498

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         
@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         
@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         
 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         
 
 
_user_specified_nameinputs
Ы
Ќ
*__inference_dense_13_layer_call_fn_6479485

inputs
unknown:@
	unknown_0:
identityѕбStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_6478634o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479481:'#
!
_user_specified_name	6479479:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ш
ў
*__inference_dense_12_layer_call_fn_6479438

inputs
unknown:	ђ@
	unknown_0:@
identityѕбStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_6478605o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479434:'#
!
_user_specified_name	6479432:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ю

О
8__inference_batch_normalization_17_layer_call_fn_6479243

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6478350і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479239:'#
!
_user_specified_name	6479237:'#
!
_user_specified_name	6479235:'#
!
_user_specified_name	6479233:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
Р
б
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6479279

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
Ћ
i
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_6479197

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ћ
i
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_6478309

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┌
e
G__inference_dropout_14_layer_call_and_return_conditional_losses_6478724

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
И
s
W__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_6479382

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:                  ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Н
e
,__inference_dropout_13_layer_call_fn_6479407

inputs
identityѕбStatefulPartitionedCall├
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_6478593p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Њ

М
8__inference_batch_normalization_15_layer_call_fn_6479046

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6478188Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479042:'#
!
_user_specified_name	6479040:'#
!
_user_specified_name	6479038:'#
!
_user_specified_name	6479036:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
я
e
G__inference_dropout_13_layer_call_and_return_conditional_losses_6479429

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
м
ъ
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6478278

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
я
e
G__inference_dropout_13_layer_call_and_return_conditional_losses_6478713

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Р
б
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6479371

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
би
А 
"__inference__wrapped_model_6478170
conv2d_15_inputO
5sequential_4_conv2d_15_conv2d_readvariableop_resource: D
6sequential_4_conv2d_15_biasadd_readvariableop_resource: I
;sequential_4_batch_normalization_15_readvariableop_resource: K
=sequential_4_batch_normalization_15_readvariableop_1_resource: Z
Lsequential_4_batch_normalization_15_fusedbatchnormv3_readvariableop_resource: \
Nsequential_4_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource: O
5sequential_4_conv2d_16_conv2d_readvariableop_resource: @D
6sequential_4_conv2d_16_biasadd_readvariableop_resource:@I
;sequential_4_batch_normalization_16_readvariableop_resource:@K
=sequential_4_batch_normalization_16_readvariableop_1_resource:@Z
Lsequential_4_batch_normalization_16_fusedbatchnormv3_readvariableop_resource:@\
Nsequential_4_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:@P
5sequential_4_conv2d_17_conv2d_readvariableop_resource:@ђE
6sequential_4_conv2d_17_biasadd_readvariableop_resource:	ђJ
;sequential_4_batch_normalization_17_readvariableop_resource:	ђL
=sequential_4_batch_normalization_17_readvariableop_1_resource:	ђ[
Lsequential_4_batch_normalization_17_fusedbatchnormv3_readvariableop_resource:	ђ]
Nsequential_4_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:	ђQ
5sequential_4_conv2d_18_conv2d_readvariableop_resource:ђђE
6sequential_4_conv2d_18_biasadd_readvariableop_resource:	ђJ
;sequential_4_batch_normalization_18_readvariableop_resource:	ђL
=sequential_4_batch_normalization_18_readvariableop_1_resource:	ђ[
Lsequential_4_batch_normalization_18_fusedbatchnormv3_readvariableop_resource:	ђ]
Nsequential_4_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:	ђH
4sequential_4_dense_11_matmul_readvariableop_resource:
ђђD
5sequential_4_dense_11_biasadd_readvariableop_resource:	ђG
4sequential_4_dense_12_matmul_readvariableop_resource:	ђ@C
5sequential_4_dense_12_biasadd_readvariableop_resource:@F
4sequential_4_dense_13_matmul_readvariableop_resource:@C
5sequential_4_dense_13_biasadd_readvariableop_resource:
identityѕбCsequential_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOpбEsequential_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1б2sequential_4/batch_normalization_15/ReadVariableOpб4sequential_4/batch_normalization_15/ReadVariableOp_1бCsequential_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOpбEsequential_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1б2sequential_4/batch_normalization_16/ReadVariableOpб4sequential_4/batch_normalization_16/ReadVariableOp_1бCsequential_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOpбEsequential_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1б2sequential_4/batch_normalization_17/ReadVariableOpб4sequential_4/batch_normalization_17/ReadVariableOp_1бCsequential_4/batch_normalization_18/FusedBatchNormV3/ReadVariableOpбEsequential_4/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1б2sequential_4/batch_normalization_18/ReadVariableOpб4sequential_4/batch_normalization_18/ReadVariableOp_1б-sequential_4/conv2d_15/BiasAdd/ReadVariableOpб,sequential_4/conv2d_15/Conv2D/ReadVariableOpб-sequential_4/conv2d_16/BiasAdd/ReadVariableOpб,sequential_4/conv2d_16/Conv2D/ReadVariableOpб-sequential_4/conv2d_17/BiasAdd/ReadVariableOpб,sequential_4/conv2d_17/Conv2D/ReadVariableOpб-sequential_4/conv2d_18/BiasAdd/ReadVariableOpб,sequential_4/conv2d_18/Conv2D/ReadVariableOpб,sequential_4/dense_11/BiasAdd/ReadVariableOpб+sequential_4/dense_11/MatMul/ReadVariableOpб,sequential_4/dense_12/BiasAdd/ReadVariableOpб+sequential_4/dense_12/MatMul/ReadVariableOpб,sequential_4/dense_13/BiasAdd/ReadVariableOpб+sequential_4/dense_13/MatMul/ReadVariableOpф
,sequential_4/conv2d_15/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0л
sequential_4/conv2d_15/Conv2DConv2Dconv2d_15_input4sequential_4/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
а
-sequential_4/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┬
sequential_4/conv2d_15/BiasAddBiasAdd&sequential_4/conv2d_15/Conv2D:output:05sequential_4/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           є
sequential_4/conv2d_15/ReluRelu'sequential_4/conv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:           ф
2sequential_4/batch_normalization_15/ReadVariableOpReadVariableOp;sequential_4_batch_normalization_15_readvariableop_resource*
_output_shapes
: *
dtype0«
4sequential_4/batch_normalization_15/ReadVariableOp_1ReadVariableOp=sequential_4_batch_normalization_15_readvariableop_1_resource*
_output_shapes
: *
dtype0╠
Csequential_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_4_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0л
Esequential_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_4_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ї
4sequential_4/batch_normalization_15/FusedBatchNormV3FusedBatchNormV3)sequential_4/conv2d_15/Relu:activations:0:sequential_4/batch_normalization_15/ReadVariableOp:value:0<sequential_4/batch_normalization_15/ReadVariableOp_1:value:0Ksequential_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0Msequential_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:           : : : : :*
epsilon%oЃ:*
is_training( О
%sequential_4/max_pooling2d_12/MaxPoolMaxPool8sequential_4/batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:         
 *
ksize
*
paddingVALID*
strides
ф
,sequential_4/conv2d_16/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0№
sequential_4/conv2d_16/Conv2DConv2D.sequential_4/max_pooling2d_12/MaxPool:output:04sequential_4/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@*
paddingSAME*
strides
а
-sequential_4/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_4/conv2d_16/BiasAddBiasAdd&sequential_4/conv2d_16/Conv2D:output:05sequential_4/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@є
sequential_4/conv2d_16/ReluRelu'sequential_4/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:         
@ф
2sequential_4/batch_normalization_16/ReadVariableOpReadVariableOp;sequential_4_batch_normalization_16_readvariableop_resource*
_output_shapes
:@*
dtype0«
4sequential_4/batch_normalization_16/ReadVariableOp_1ReadVariableOp=sequential_4_batch_normalization_16_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
Csequential_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_4_batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0л
Esequential_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_4_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ї
4sequential_4/batch_normalization_16/FusedBatchNormV3FusedBatchNormV3)sequential_4/conv2d_16/Relu:activations:0:sequential_4/batch_normalization_16/ReadVariableOp:value:0<sequential_4/batch_normalization_16/ReadVariableOp_1:value:0Ksequential_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0Msequential_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         
@:@:@:@:@:*
epsilon%oЃ:*
is_training( О
%sequential_4/max_pooling2d_13/MaxPoolMaxPool8sequential_4/batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Ф
,sequential_4/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0­
sequential_4/conv2d_17/Conv2DConv2D.sequential_4/max_pooling2d_13/MaxPool:output:04sequential_4/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
А
-sequential_4/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0├
sequential_4/conv2d_17/BiasAddBiasAdd&sequential_4/conv2d_17/Conv2D:output:05sequential_4/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђЄ
sequential_4/conv2d_17/ReluRelu'sequential_4/conv2d_17/BiasAdd:output:0*
T0*0
_output_shapes
:         ђФ
2sequential_4/batch_normalization_17/ReadVariableOpReadVariableOp;sequential_4_batch_normalization_17_readvariableop_resource*
_output_shapes	
:ђ*
dtype0»
4sequential_4/batch_normalization_17/ReadVariableOp_1ReadVariableOp=sequential_4_batch_normalization_17_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
Csequential_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_4_batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Л
Esequential_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_4_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0њ
4sequential_4/batch_normalization_17/FusedBatchNormV3FusedBatchNormV3)sequential_4/conv2d_17/Relu:activations:0:sequential_4/batch_normalization_17/ReadVariableOp:value:0<sequential_4/batch_normalization_17/ReadVariableOp_1:value:0Ksequential_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0Msequential_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( п
%sequential_4/max_pooling2d_14/MaxPoolMaxPool8sequential_4/batch_normalization_17/FusedBatchNormV3:y:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
г
,sequential_4/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0­
sequential_4/conv2d_18/Conv2DConv2D.sequential_4/max_pooling2d_14/MaxPool:output:04sequential_4/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
А
-sequential_4/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0├
sequential_4/conv2d_18/BiasAddBiasAdd&sequential_4/conv2d_18/Conv2D:output:05sequential_4/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђЄ
sequential_4/conv2d_18/ReluRelu'sequential_4/conv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:         ђФ
2sequential_4/batch_normalization_18/ReadVariableOpReadVariableOp;sequential_4_batch_normalization_18_readvariableop_resource*
_output_shapes	
:ђ*
dtype0»
4sequential_4/batch_normalization_18/ReadVariableOp_1ReadVariableOp=sequential_4_batch_normalization_18_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
Csequential_4/batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_4_batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Л
Esequential_4/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_4_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0њ
4sequential_4/batch_normalization_18/FusedBatchNormV3FusedBatchNormV3)sequential_4/conv2d_18/Relu:activations:0:sequential_4/batch_normalization_18/ReadVariableOp:value:0<sequential_4/batch_normalization_18/ReadVariableOp_1:value:0Ksequential_4/batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0Msequential_4/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( Ј
>sequential_4/global_average_pooling2d_4/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      Ж
,sequential_4/global_average_pooling2d_4/MeanMean8sequential_4/batch_normalization_18/FusedBatchNormV3:y:0Gsequential_4/global_average_pooling2d_4/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:         ђб
+sequential_4/dense_11/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_11_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0┼
sequential_4/dense_11/MatMulMatMul5sequential_4/global_average_pooling2d_4/Mean:output:03sequential_4/dense_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЪ
,sequential_4/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╣
sequential_4/dense_11/BiasAddBiasAdd&sequential_4/dense_11/MatMul:product:04sequential_4/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ}
sequential_4/dense_11/ReluRelu&sequential_4/dense_11/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЅ
 sequential_4/dropout_13/IdentityIdentity(sequential_4/dense_11/Relu:activations:0*
T0*(
_output_shapes
:         ђА
+sequential_4/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_12_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype0И
sequential_4/dense_12/MatMulMatMul)sequential_4/dropout_13/Identity:output:03sequential_4/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ъ
,sequential_4/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0И
sequential_4/dense_12/BiasAddBiasAdd&sequential_4/dense_12/MatMul:product:04sequential_4/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @|
sequential_4/dense_12/ReluRelu&sequential_4/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         @ѕ
 sequential_4/dropout_14/IdentityIdentity(sequential_4/dense_12/Relu:activations:0*
T0*'
_output_shapes
:         @а
+sequential_4/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_13_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0И
sequential_4/dense_13/MatMulMatMul)sequential_4/dropout_14/Identity:output:03sequential_4/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ъ
,sequential_4/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
sequential_4/dense_13/BiasAddBiasAdd&sequential_4/dense_13/MatMul:product:04sequential_4/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
sequential_4/dense_13/SoftmaxSoftmax&sequential_4/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_4/dense_13/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Ю
NoOpNoOpD^sequential_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOpF^sequential_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_13^sequential_4/batch_normalization_15/ReadVariableOp5^sequential_4/batch_normalization_15/ReadVariableOp_1D^sequential_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOpF^sequential_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_13^sequential_4/batch_normalization_16/ReadVariableOp5^sequential_4/batch_normalization_16/ReadVariableOp_1D^sequential_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOpF^sequential_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_13^sequential_4/batch_normalization_17/ReadVariableOp5^sequential_4/batch_normalization_17/ReadVariableOp_1D^sequential_4/batch_normalization_18/FusedBatchNormV3/ReadVariableOpF^sequential_4/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_13^sequential_4/batch_normalization_18/ReadVariableOp5^sequential_4/batch_normalization_18/ReadVariableOp_1.^sequential_4/conv2d_15/BiasAdd/ReadVariableOp-^sequential_4/conv2d_15/Conv2D/ReadVariableOp.^sequential_4/conv2d_16/BiasAdd/ReadVariableOp-^sequential_4/conv2d_16/Conv2D/ReadVariableOp.^sequential_4/conv2d_17/BiasAdd/ReadVariableOp-^sequential_4/conv2d_17/Conv2D/ReadVariableOp.^sequential_4/conv2d_18/BiasAdd/ReadVariableOp-^sequential_4/conv2d_18/Conv2D/ReadVariableOp-^sequential_4/dense_11/BiasAdd/ReadVariableOp,^sequential_4/dense_11/MatMul/ReadVariableOp-^sequential_4/dense_12/BiasAdd/ReadVariableOp,^sequential_4/dense_12/MatMul/ReadVariableOp-^sequential_4/dense_13/BiasAdd/ReadVariableOp,^sequential_4/dense_13/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:          : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2ј
Esequential_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Esequential_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12і
Csequential_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOpCsequential_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2l
4sequential_4/batch_normalization_15/ReadVariableOp_14sequential_4/batch_normalization_15/ReadVariableOp_12h
2sequential_4/batch_normalization_15/ReadVariableOp2sequential_4/batch_normalization_15/ReadVariableOp2ј
Esequential_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1Esequential_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12і
Csequential_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOpCsequential_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp2l
4sequential_4/batch_normalization_16/ReadVariableOp_14sequential_4/batch_normalization_16/ReadVariableOp_12h
2sequential_4/batch_normalization_16/ReadVariableOp2sequential_4/batch_normalization_16/ReadVariableOp2ј
Esequential_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1Esequential_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12і
Csequential_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOpCsequential_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp2l
4sequential_4/batch_normalization_17/ReadVariableOp_14sequential_4/batch_normalization_17/ReadVariableOp_12h
2sequential_4/batch_normalization_17/ReadVariableOp2sequential_4/batch_normalization_17/ReadVariableOp2ј
Esequential_4/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1Esequential_4/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12і
Csequential_4/batch_normalization_18/FusedBatchNormV3/ReadVariableOpCsequential_4/batch_normalization_18/FusedBatchNormV3/ReadVariableOp2l
4sequential_4/batch_normalization_18/ReadVariableOp_14sequential_4/batch_normalization_18/ReadVariableOp_12h
2sequential_4/batch_normalization_18/ReadVariableOp2sequential_4/batch_normalization_18/ReadVariableOp2^
-sequential_4/conv2d_15/BiasAdd/ReadVariableOp-sequential_4/conv2d_15/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_15/Conv2D/ReadVariableOp,sequential_4/conv2d_15/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_16/BiasAdd/ReadVariableOp-sequential_4/conv2d_16/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_16/Conv2D/ReadVariableOp,sequential_4/conv2d_16/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_17/BiasAdd/ReadVariableOp-sequential_4/conv2d_17/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_17/Conv2D/ReadVariableOp,sequential_4/conv2d_17/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_18/BiasAdd/ReadVariableOp-sequential_4/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_18/Conv2D/ReadVariableOp,sequential_4/conv2d_18/Conv2D/ReadVariableOp2\
,sequential_4/dense_11/BiasAdd/ReadVariableOp,sequential_4/dense_11/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_11/MatMul/ReadVariableOp+sequential_4/dense_11/MatMul/ReadVariableOp2\
,sequential_4/dense_12/BiasAdd/ReadVariableOp,sequential_4/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_12/MatMul/ReadVariableOp+sequential_4/dense_12/MatMul/ReadVariableOp2\
,sequential_4/dense_13/BiasAdd/ReadVariableOp,sequential_4/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_13/MatMul/ReadVariableOp+sequential_4/dense_13/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:` \
/
_output_shapes
:          
)
_user_specified_nameconv2d_15_input
Ћ

М
8__inference_batch_normalization_15_layer_call_fn_6479059

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6478206Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479055:'#
!
_user_specified_name	6479053:'#
!
_user_specified_name	6479051:'#
!
_user_specified_name	6479049:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ю
а
+__inference_conv2d_16_layer_call_fn_6479114

inputs!
unknown: @
	unknown_0:@
identityѕбStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_6478498w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         
 : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479110:'#
!
_user_specified_name	6479108:W S
/
_output_shapes
:         
 
 
_user_specified_nameinputs
й
Ђ
F__inference_conv2d_17_layer_call_and_return_conditional_losses_6478524

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
И
s
W__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_6478454

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:                  ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ћ
i
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_6479105

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
х
 
F__inference_conv2d_16_layer_call_and_return_conditional_losses_6479125

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         
@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         
@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         
 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         
 
 
_user_specified_nameinputs
ю
а
+__inference_conv2d_15_layer_call_fn_6479022

inputs!
unknown: 
	unknown_0: 
identityѕбStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_6478472w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479018:'#
!
_user_specified_name	6479016:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Р
б
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6478350

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
└
│
%__inference_signature_wrapper_6479013
conv2d_15_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@ђ

unknown_12:	ђ

unknown_13:	ђ

unknown_14:	ђ

unknown_15:	ђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:	ђ

unknown_22:	ђ

unknown_23:
ђђ

unknown_24:	ђ

unknown_25:	ђ@

unknown_26:@

unknown_27:@

unknown_28:
identityѕбStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCallconv2d_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__wrapped_model_6478170o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:          : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479009:'#
!
_user_specified_name	6479007:'#
!
_user_specified_name	6479005:'#
!
_user_specified_name	6479003:'#
!
_user_specified_name	6479001:'#
!
_user_specified_name	6478999:'#
!
_user_specified_name	6478997:'#
!
_user_specified_name	6478995:'#
!
_user_specified_name	6478993:'#
!
_user_specified_name	6478991:'#
!
_user_specified_name	6478989:'#
!
_user_specified_name	6478987:'#
!
_user_specified_name	6478985:'#
!
_user_specified_name	6478983:'#
!
_user_specified_name	6478981:'#
!
_user_specified_name	6478979:'#
!
_user_specified_name	6478977:'#
!
_user_specified_name	6478975:'#
!
_user_specified_name	6478973:'#
!
_user_specified_name	6478971:'
#
!
_user_specified_name	6478969:'	#
!
_user_specified_name	6478967:'#
!
_user_specified_name	6478965:'#
!
_user_specified_name	6478963:'#
!
_user_specified_name	6478961:'#
!
_user_specified_name	6478959:'#
!
_user_specified_name	6478957:'#
!
_user_specified_name	6478955:'#
!
_user_specified_name	6478953:'#
!
_user_specified_name	6478951:` \
/
_output_shapes
:          
)
_user_specified_nameconv2d_15_input
х
 
F__inference_conv2d_15_layer_call_and_return_conditional_losses_6479033

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:           i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:           S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
▒ў
Л!
 __inference__traced_save_6479734
file_prefixA
'read_disablecopyonread_conv2d_15_kernel: 5
'read_1_disablecopyonread_conv2d_15_bias: C
5read_2_disablecopyonread_batch_normalization_15_gamma: B
4read_3_disablecopyonread_batch_normalization_15_beta: I
;read_4_disablecopyonread_batch_normalization_15_moving_mean: M
?read_5_disablecopyonread_batch_normalization_15_moving_variance: C
)read_6_disablecopyonread_conv2d_16_kernel: @5
'read_7_disablecopyonread_conv2d_16_bias:@C
5read_8_disablecopyonread_batch_normalization_16_gamma:@B
4read_9_disablecopyonread_batch_normalization_16_beta:@J
<read_10_disablecopyonread_batch_normalization_16_moving_mean:@N
@read_11_disablecopyonread_batch_normalization_16_moving_variance:@E
*read_12_disablecopyonread_conv2d_17_kernel:@ђ7
(read_13_disablecopyonread_conv2d_17_bias:	ђE
6read_14_disablecopyonread_batch_normalization_17_gamma:	ђD
5read_15_disablecopyonread_batch_normalization_17_beta:	ђK
<read_16_disablecopyonread_batch_normalization_17_moving_mean:	ђO
@read_17_disablecopyonread_batch_normalization_17_moving_variance:	ђF
*read_18_disablecopyonread_conv2d_18_kernel:ђђ7
(read_19_disablecopyonread_conv2d_18_bias:	ђE
6read_20_disablecopyonread_batch_normalization_18_gamma:	ђD
5read_21_disablecopyonread_batch_normalization_18_beta:	ђK
<read_22_disablecopyonread_batch_normalization_18_moving_mean:	ђO
@read_23_disablecopyonread_batch_normalization_18_moving_variance:	ђ=
)read_24_disablecopyonread_dense_11_kernel:
ђђ6
'read_25_disablecopyonread_dense_11_bias:	ђ<
)read_26_disablecopyonread_dense_12_kernel:	ђ@5
'read_27_disablecopyonread_dense_12_bias:@;
)read_28_disablecopyonread_dense_13_kernel:@5
'read_29_disablecopyonread_dense_13_bias:-
#read_30_disablecopyonread_iteration:	 1
'read_31_disablecopyonread_learning_rate: +
!read_32_disablecopyonread_total_1: +
!read_33_disablecopyonread_count_1: )
read_34_disablecopyonread_total: )
read_35_disablecopyonread_count: 
savev2_const
identity_73ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_18/DisableCopyOnReadбRead_18/ReadVariableOpбRead_19/DisableCopyOnReadбRead_19/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_20/DisableCopyOnReadбRead_20/ReadVariableOpбRead_21/DisableCopyOnReadбRead_21/ReadVariableOpбRead_22/DisableCopyOnReadбRead_22/ReadVariableOpбRead_23/DisableCopyOnReadбRead_23/ReadVariableOpбRead_24/DisableCopyOnReadбRead_24/ReadVariableOpбRead_25/DisableCopyOnReadбRead_25/ReadVariableOpбRead_26/DisableCopyOnReadбRead_26/ReadVariableOpбRead_27/DisableCopyOnReadбRead_27/ReadVariableOpбRead_28/DisableCopyOnReadбRead_28/ReadVariableOpбRead_29/DisableCopyOnReadбRead_29/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_30/DisableCopyOnReadбRead_30/ReadVariableOpбRead_31/DisableCopyOnReadбRead_31/ReadVariableOpбRead_32/DisableCopyOnReadбRead_32/ReadVariableOpбRead_33/DisableCopyOnReadбRead_33/ReadVariableOpбRead_34/DisableCopyOnReadбRead_34/ReadVariableOpбRead_35/DisableCopyOnReadбRead_35/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_15_kernel"/device:CPU:0*
_output_shapes
 Ф
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_15_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_15_bias"/device:CPU:0*
_output_shapes
 Б
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_15_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: Ѕ
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 ▒
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_batch_normalization_15_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
: ѕ
Read_3/DisableCopyOnReadDisableCopyOnRead4read_3_disablecopyonread_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 ░
Read_3/ReadVariableOpReadVariableOp4read_3_disablecopyonread_batch_normalization_15_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: Ј
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_batch_normalization_15_moving_mean"/device:CPU:0*
_output_shapes
 и
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_batch_normalization_15_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: Њ
Read_5/DisableCopyOnReadDisableCopyOnRead?read_5_disablecopyonread_batch_normalization_15_moving_variance"/device:CPU:0*
_output_shapes
 ╗
Read_5/ReadVariableOpReadVariableOp?read_5_disablecopyonread_batch_normalization_15_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_16_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_16_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: @{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_16_bias"/device:CPU:0*
_output_shapes
 Б
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_16_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ѕ
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 ▒
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_batch_normalization_16_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@ѕ
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 ░
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_16_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@Љ
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_batch_normalization_16_moving_mean"/device:CPU:0*
_output_shapes
 ║
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_batch_normalization_16_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ћ
Read_11/DisableCopyOnReadDisableCopyOnRead@read_11_disablecopyonread_batch_normalization_16_moving_variance"/device:CPU:0*
_output_shapes
 Й
Read_11/ReadVariableOpReadVariableOp@read_11_disablecopyonread_batch_normalization_16_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_12/DisableCopyOnReadDisableCopyOnRead*read_12_disablecopyonread_conv2d_17_kernel"/device:CPU:0*
_output_shapes
 х
Read_12/ReadVariableOpReadVariableOp*read_12_disablecopyonread_conv2d_17_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@ђ*
dtype0x
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@ђn
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*'
_output_shapes
:@ђ}
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_conv2d_17_bias"/device:CPU:0*
_output_shapes
 Д
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_conv2d_17_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђІ
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 х
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_batch_normalization_17_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђі
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 ┤
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_batch_normalization_17_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЉ
Read_16/DisableCopyOnReadDisableCopyOnRead<read_16_disablecopyonread_batch_normalization_17_moving_mean"/device:CPU:0*
_output_shapes
 ╗
Read_16/ReadVariableOpReadVariableOp<read_16_disablecopyonread_batch_normalization_17_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЋ
Read_17/DisableCopyOnReadDisableCopyOnRead@read_17_disablecopyonread_batch_normalization_17_moving_variance"/device:CPU:0*
_output_shapes
 ┐
Read_17/ReadVariableOpReadVariableOp@read_17_disablecopyonread_batch_normalization_17_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ
Read_18/DisableCopyOnReadDisableCopyOnRead*read_18_disablecopyonread_conv2d_18_kernel"/device:CPU:0*
_output_shapes
 Х
Read_18/ReadVariableOpReadVariableOp*read_18_disablecopyonread_conv2d_18_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:ђђ*
dtype0y
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ђђo
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*(
_output_shapes
:ђђ}
Read_19/DisableCopyOnReadDisableCopyOnRead(read_19_disablecopyonread_conv2d_18_bias"/device:CPU:0*
_output_shapes
 Д
Read_19/ReadVariableOpReadVariableOp(read_19_disablecopyonread_conv2d_18_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђІ
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_batch_normalization_18_gamma"/device:CPU:0*
_output_shapes
 х
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_batch_normalization_18_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђі
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_batch_normalization_18_beta"/device:CPU:0*
_output_shapes
 ┤
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_batch_normalization_18_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЉ
Read_22/DisableCopyOnReadDisableCopyOnRead<read_22_disablecopyonread_batch_normalization_18_moving_mean"/device:CPU:0*
_output_shapes
 ╗
Read_22/ReadVariableOpReadVariableOp<read_22_disablecopyonread_batch_normalization_18_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЋ
Read_23/DisableCopyOnReadDisableCopyOnRead@read_23_disablecopyonread_batch_normalization_18_moving_variance"/device:CPU:0*
_output_shapes
 ┐
Read_23/ReadVariableOpReadVariableOp@read_23_disablecopyonread_batch_normalization_18_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ~
Read_24/DisableCopyOnReadDisableCopyOnRead)read_24_disablecopyonread_dense_11_kernel"/device:CPU:0*
_output_shapes
 Г
Read_24/ReadVariableOpReadVariableOp)read_24_disablecopyonread_dense_11_kernel^Read_24/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0q
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђg
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђ|
Read_25/DisableCopyOnReadDisableCopyOnRead'read_25_disablecopyonread_dense_11_bias"/device:CPU:0*
_output_shapes
 д
Read_25/ReadVariableOpReadVariableOp'read_25_disablecopyonread_dense_11_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ~
Read_26/DisableCopyOnReadDisableCopyOnRead)read_26_disablecopyonread_dense_12_kernel"/device:CPU:0*
_output_shapes
 г
Read_26/ReadVariableOpReadVariableOp)read_26_disablecopyonread_dense_12_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ђ@*
dtype0p
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ђ@f
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:	ђ@|
Read_27/DisableCopyOnReadDisableCopyOnRead'read_27_disablecopyonread_dense_12_bias"/device:CPU:0*
_output_shapes
 Ц
Read_27/ReadVariableOpReadVariableOp'read_27_disablecopyonread_dense_12_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_28/DisableCopyOnReadDisableCopyOnRead)read_28_disablecopyonread_dense_13_kernel"/device:CPU:0*
_output_shapes
 Ф
Read_28/ReadVariableOpReadVariableOp)read_28_disablecopyonread_dense_13_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

:@|
Read_29/DisableCopyOnReadDisableCopyOnRead'read_29_disablecopyonread_dense_13_bias"/device:CPU:0*
_output_shapes
 Ц
Read_29/ReadVariableOpReadVariableOp'read_29_disablecopyonread_dense_13_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_30/DisableCopyOnReadDisableCopyOnRead#read_30_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ю
Read_30/ReadVariableOpReadVariableOp#read_30_disablecopyonread_iteration^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_31/DisableCopyOnReadDisableCopyOnRead'read_31_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 А
Read_31/ReadVariableOpReadVariableOp'read_31_disablecopyonread_learning_rate^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_32/DisableCopyOnReadDisableCopyOnRead!read_32_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Џ
Read_32/ReadVariableOpReadVariableOp!read_32_disablecopyonread_total_1^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_33/DisableCopyOnReadDisableCopyOnRead!read_33_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Џ
Read_33/ReadVariableOpReadVariableOp!read_33_disablecopyonread_count_1^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_34/DisableCopyOnReadDisableCopyOnReadread_34_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ў
Read_34/ReadVariableOpReadVariableOpread_34_disablecopyonread_total^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_35/DisableCopyOnReadDisableCopyOnReadread_35_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ў
Read_35/ReadVariableOpReadVariableOpread_35_disablecopyonread_count^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: щ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*б
valueўBЋ%B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHи
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ј
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *3
dtypes)
'2%	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_72Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_73IdentityIdentity_72:output:0^NoOp*
T0*
_output_shapes
: Њ
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_73Identity_73:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:=%9

_output_shapes
: 

_user_specified_nameConst:%$!

_user_specified_namecount:%#!

_user_specified_nametotal:'"#
!
_user_specified_name	count_1:'!#
!
_user_specified_name	total_1:- )
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namedense_13/bias:/+
)
_user_specified_namedense_13/kernel:-)
'
_user_specified_namedense_12/bias:/+
)
_user_specified_namedense_12/kernel:-)
'
_user_specified_namedense_11/bias:/+
)
_user_specified_namedense_11/kernel:FB
@
_user_specified_name(&batch_normalization_18/moving_variance:B>
<
_user_specified_name$"batch_normalization_18/moving_mean:;7
5
_user_specified_namebatch_normalization_18/beta:<8
6
_user_specified_namebatch_normalization_18/gamma:.*
(
_user_specified_nameconv2d_18/bias:0,
*
_user_specified_nameconv2d_18/kernel:FB
@
_user_specified_name(&batch_normalization_17/moving_variance:B>
<
_user_specified_name$"batch_normalization_17/moving_mean:;7
5
_user_specified_namebatch_normalization_17/beta:<8
6
_user_specified_namebatch_normalization_17/gamma:.*
(
_user_specified_nameconv2d_17/bias:0,
*
_user_specified_nameconv2d_17/kernel:FB
@
_user_specified_name(&batch_normalization_16/moving_variance:B>
<
_user_specified_name$"batch_normalization_16/moving_mean:;
7
5
_user_specified_namebatch_normalization_16/beta:<	8
6
_user_specified_namebatch_normalization_16/gamma:.*
(
_user_specified_nameconv2d_16/bias:0,
*
_user_specified_nameconv2d_16/kernel:FB
@
_user_specified_name(&batch_normalization_15/moving_variance:B>
<
_user_specified_name$"batch_normalization_15/moving_mean:;7
5
_user_specified_namebatch_normalization_15/beta:<8
6
_user_specified_namebatch_normalization_15/gamma:.*
(
_user_specified_nameconv2d_15/bias:0,
*
_user_specified_nameconv2d_15/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Р
б
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6478422

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
█ф
Ё
#__inference__traced_restore_6479851
file_prefix;
!assignvariableop_conv2d_15_kernel: /
!assignvariableop_1_conv2d_15_bias: =
/assignvariableop_2_batch_normalization_15_gamma: <
.assignvariableop_3_batch_normalization_15_beta: C
5assignvariableop_4_batch_normalization_15_moving_mean: G
9assignvariableop_5_batch_normalization_15_moving_variance: =
#assignvariableop_6_conv2d_16_kernel: @/
!assignvariableop_7_conv2d_16_bias:@=
/assignvariableop_8_batch_normalization_16_gamma:@<
.assignvariableop_9_batch_normalization_16_beta:@D
6assignvariableop_10_batch_normalization_16_moving_mean:@H
:assignvariableop_11_batch_normalization_16_moving_variance:@?
$assignvariableop_12_conv2d_17_kernel:@ђ1
"assignvariableop_13_conv2d_17_bias:	ђ?
0assignvariableop_14_batch_normalization_17_gamma:	ђ>
/assignvariableop_15_batch_normalization_17_beta:	ђE
6assignvariableop_16_batch_normalization_17_moving_mean:	ђI
:assignvariableop_17_batch_normalization_17_moving_variance:	ђ@
$assignvariableop_18_conv2d_18_kernel:ђђ1
"assignvariableop_19_conv2d_18_bias:	ђ?
0assignvariableop_20_batch_normalization_18_gamma:	ђ>
/assignvariableop_21_batch_normalization_18_beta:	ђE
6assignvariableop_22_batch_normalization_18_moving_mean:	ђI
:assignvariableop_23_batch_normalization_18_moving_variance:	ђ7
#assignvariableop_24_dense_11_kernel:
ђђ0
!assignvariableop_25_dense_11_bias:	ђ6
#assignvariableop_26_dense_12_kernel:	ђ@/
!assignvariableop_27_dense_12_bias:@5
#assignvariableop_28_dense_13_kernel:@/
!assignvariableop_29_dense_13_bias:'
assignvariableop_30_iteration:	 +
!assignvariableop_31_learning_rate: %
assignvariableop_32_total_1: %
assignvariableop_33_count_1: #
assignvariableop_34_total: #
assignvariableop_35_count: 
identity_37ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Ч
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*б
valueўBЋ%B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH║
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ┌
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ф
_output_shapesЌ
ћ:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_15_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_15_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_15_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_15_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_15_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_15_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_16_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_16_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_16_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_16_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_16_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_16_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_17_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_17_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_17_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_17_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_17_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_17_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_18_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_18_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_18_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_18_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_18_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_18_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_11_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_11_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_12_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_12_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_28AssignVariableOp#assignvariableop_28_dense_13_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_29AssignVariableOp!assignvariableop_29_dense_13_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0	*
_output_shapes
:Х
AssignVariableOp_30AssignVariableOpassignvariableop_30_iterationIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_31AssignVariableOp!assignvariableop_31_learning_rateIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_32AssignVariableOpassignvariableop_32_total_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_33AssignVariableOpassignvariableop_33_count_1Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_34AssignVariableOpassignvariableop_34_totalIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_35AssignVariableOpassignvariableop_35_countIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 у
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: ░
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_37Identity_37:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%$!

_user_specified_namecount:%#!

_user_specified_nametotal:'"#
!
_user_specified_name	count_1:'!#
!
_user_specified_name	total_1:- )
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namedense_13/bias:/+
)
_user_specified_namedense_13/kernel:-)
'
_user_specified_namedense_12/bias:/+
)
_user_specified_namedense_12/kernel:-)
'
_user_specified_namedense_11/bias:/+
)
_user_specified_namedense_11/kernel:FB
@
_user_specified_name(&batch_normalization_18/moving_variance:B>
<
_user_specified_name$"batch_normalization_18/moving_mean:;7
5
_user_specified_namebatch_normalization_18/beta:<8
6
_user_specified_namebatch_normalization_18/gamma:.*
(
_user_specified_nameconv2d_18/bias:0,
*
_user_specified_nameconv2d_18/kernel:FB
@
_user_specified_name(&batch_normalization_17/moving_variance:B>
<
_user_specified_name$"batch_normalization_17/moving_mean:;7
5
_user_specified_namebatch_normalization_17/beta:<8
6
_user_specified_namebatch_normalization_17/gamma:.*
(
_user_specified_nameconv2d_17/bias:0,
*
_user_specified_nameconv2d_17/kernel:FB
@
_user_specified_name(&batch_normalization_16/moving_variance:B>
<
_user_specified_name$"batch_normalization_16/moving_mean:;
7
5
_user_specified_namebatch_normalization_16/beta:<	8
6
_user_specified_namebatch_normalization_16/gamma:.*
(
_user_specified_nameconv2d_16/bias:0,
*
_user_specified_nameconv2d_16/kernel:FB
@
_user_specified_name(&batch_normalization_15/moving_variance:B>
<
_user_specified_name$"batch_normalization_15/moving_mean:;7
5
_user_specified_namebatch_normalization_15/beta:<8
6
_user_specified_namebatch_normalization_15/gamma:.*
(
_user_specified_nameconv2d_15/bias:0,
*
_user_specified_nameconv2d_15/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ћ

М
8__inference_batch_normalization_16_layer_call_fn_6479151

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6478278Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6479147:'#
!
_user_specified_name	6479145:'#
!
_user_specified_name	6479143:'#
!
_user_specified_name	6479141:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ї
┬
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6479169

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю
к
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6479261

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
╝
N
2__inference_max_pooling2d_13_layer_call_fn_6479192

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_6478309Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Б
H
,__inference_dropout_14_layer_call_fn_6479459

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_6478724`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs"ьL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*├
serving_default»
S
conv2d_15_input@
!serving_default_conv2d_15_input:0          <
dense_130
StatefulPartitionedCall:0         tensorflow/serving/predict:ЉЕ
ј
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer-13
layer_with_weights-9
layer-14
layer-15
layer_with_weights-10
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories"
_tf_keras_sequential
ѓ
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
#$_self_saveable_object_factories
 %_jit_compiled_convolution_op"
_tf_keras_layer
Ј
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,axis
	-gamma
.beta
/moving_mean
0moving_variance
#1_self_saveable_object_factories"
_tf_keras_layer
╩
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
#8_self_saveable_object_factories"
_tf_keras_layer
ѓ
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias
#A_self_saveable_object_factories
 B_jit_compiled_convolution_op"
_tf_keras_layer
Ј
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses
Iaxis
	Jgamma
Kbeta
Lmoving_mean
Mmoving_variance
#N_self_saveable_object_factories"
_tf_keras_layer
╩
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
#U_self_saveable_object_factories"
_tf_keras_layer
ѓ
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias
#^_self_saveable_object_factories
 __jit_compiled_convolution_op"
_tf_keras_layer
Ј
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses
faxis
	ggamma
hbeta
imoving_mean
jmoving_variance
#k_self_saveable_object_factories"
_tf_keras_layer
╩
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses
#r_self_saveable_object_factories"
_tf_keras_layer
ѓ
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

ykernel
zbias
#{_self_saveable_object_factories
 |_jit_compiled_convolution_op"
_tf_keras_layer
ў
}	variables
~trainable_variables
regularization_losses
ђ	keras_api
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
	Ѓaxis

ёgamma
	Ёbeta
єmoving_mean
Єmoving_variance
$ѕ_self_saveable_object_factories"
_tf_keras_layer
Л
Ѕ	variables
іtrainable_variables
Іregularization_losses
ї	keras_api
Ї__call__
+ј&call_and_return_all_conditional_losses
$Ј_self_saveable_object_factories"
_tf_keras_layer
ж
љ	variables
Љtrainable_variables
њregularization_losses
Њ	keras_api
ћ__call__
+Ћ&call_and_return_all_conditional_losses
ќkernel
	Ќbias
$ў_self_saveable_object_factories"
_tf_keras_layer
ж
Ў	variables
џtrainable_variables
Џregularization_losses
ю	keras_api
Ю__call__
+ъ&call_and_return_all_conditional_losses
Ъ_random_generator
$а_self_saveable_object_factories"
_tf_keras_layer
ж
А	variables
бtrainable_variables
Бregularization_losses
ц	keras_api
Ц__call__
+д&call_and_return_all_conditional_losses
Дkernel
	еbias
$Е_self_saveable_object_factories"
_tf_keras_layer
ж
ф	variables
Фtrainable_variables
гregularization_losses
Г	keras_api
«__call__
+»&call_and_return_all_conditional_losses
░_random_generator
$▒_self_saveable_object_factories"
_tf_keras_layer
ж
▓	variables
│trainable_variables
┤regularization_losses
х	keras_api
Х__call__
+и&call_and_return_all_conditional_losses
Иkernel
	╣bias
$║_self_saveable_object_factories"
_tf_keras_layer
љ
"0
#1
-2
.3
/4
05
?6
@7
J8
K9
L10
M11
\12
]13
g14
h15
i16
j17
y18
z19
ё20
Ё21
є22
Є23
ќ24
Ќ25
Д26
е27
И28
╣29"
trackable_list_wrapper
╬
"0
#1
-2
.3
?4
@5
J6
K7
\8
]9
g10
h11
y12
z13
ё14
Ё15
ќ16
Ќ17
Д18
е19
И20
╣21"
trackable_list_wrapper
 "
trackable_list_wrapper
¤
╗non_trainable_variables
╝layers
йmetrics
 Йlayer_regularization_losses
┐layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
М
└trace_0
┴trace_12ў
.__inference_sequential_4_layer_call_fn_6478797
.__inference_sequential_4_layer_call_fn_6478862х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z└trace_0z┴trace_1
Ѕ
┬trace_0
├trace_12╬
I__inference_sequential_4_layer_call_and_return_conditional_losses_6478641
I__inference_sequential_4_layer_call_and_return_conditional_losses_6478732х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┬trace_0z├trace_1
НBм
"__inference__wrapped_model_6478170conv2d_15_input"ў
Љ▓Ї
FullArgSpec
argsџ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
n
─
_variables
┼_iterations
к_learning_rate
К_update_step_xla"
experimentalOptimizer
-
╚serving_default"
signature_map
 "
trackable_dict_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
у
╬trace_02╚
+__inference_conv2d_15_layer_call_fn_6479022ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╬trace_0
ѓ
¤trace_02с
F__inference_conv2d_15_layer_call_and_return_conditional_losses_6479033ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z¤trace_0
*:( 2conv2d_15/kernel
: 2conv2d_15/bias
 "
trackable_dict_wrapper
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
-0
.1
/2
03"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
лnon_trainable_variables
Лlayers
мmetrics
 Мlayer_regularization_losses
нlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
у
Нtrace_0
оtrace_12г
8__inference_batch_normalization_15_layer_call_fn_6479046
8__inference_batch_normalization_15_layer_call_fn_6479059х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zНtrace_0zоtrace_1
Ю
Оtrace_0
пtrace_12Р
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6479077
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6479095х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zОtrace_0zпtrace_1
 "
trackable_list_wrapper
*:( 2batch_normalization_15/gamma
):' 2batch_normalization_15/beta
2:0  (2"batch_normalization_15/moving_mean
6:4  (2&batch_normalization_15/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
Пlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
Ь
яtrace_02¤
2__inference_max_pooling2d_12_layer_call_fn_6479100ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zяtrace_0
Ѕ
▀trace_02Ж
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_6479105ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▀trace_0
 "
trackable_dict_wrapper
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Яnon_trainable_variables
рlayers
Рmetrics
 сlayer_regularization_losses
Сlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
у
тtrace_02╚
+__inference_conv2d_16_layer_call_fn_6479114ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zтtrace_0
ѓ
Тtrace_02с
F__inference_conv2d_16_layer_call_and_return_conditional_losses_6479125ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zТtrace_0
*:( @2conv2d_16/kernel
:@2conv2d_16/bias
 "
trackable_dict_wrapper
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
J0
K1
L2
M3"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
уnon_trainable_variables
Уlayers
жmetrics
 Жlayer_regularization_losses
вlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
у
Вtrace_0
ьtrace_12г
8__inference_batch_normalization_16_layer_call_fn_6479138
8__inference_batch_normalization_16_layer_call_fn_6479151х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zВtrace_0zьtrace_1
Ю
Ьtrace_0
№trace_12Р
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6479169
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6479187х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЬtrace_0z№trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_16/gamma
):'@2batch_normalization_16/beta
2:0@ (2"batch_normalization_16/moving_mean
6:4@ (2&batch_normalization_16/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
­non_trainable_variables
ыlayers
Ыmetrics
 зlayer_regularization_losses
Зlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
Ь
шtrace_02¤
2__inference_max_pooling2d_13_layer_call_fn_6479192ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zшtrace_0
Ѕ
Шtrace_02Ж
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_6479197ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zШtrace_0
 "
trackable_dict_wrapper
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
эnon_trainable_variables
Эlayers
щmetrics
 Щlayer_regularization_losses
чlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
у
Чtrace_02╚
+__inference_conv2d_17_layer_call_fn_6479206ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЧtrace_0
ѓ
§trace_02с
F__inference_conv2d_17_layer_call_and_return_conditional_losses_6479217ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z§trace_0
+:)@ђ2conv2d_17/kernel
:ђ2conv2d_17/bias
 "
trackable_dict_wrapper
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
g0
h1
i2
j3"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
■non_trainable_variables
 layers
ђmetrics
 Ђlayer_regularization_losses
ѓlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
у
Ѓtrace_0
ёtrace_12г
8__inference_batch_normalization_17_layer_call_fn_6479230
8__inference_batch_normalization_17_layer_call_fn_6479243х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЃtrace_0zёtrace_1
Ю
Ёtrace_0
єtrace_12Р
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6479261
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6479279х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЁtrace_0zєtrace_1
 "
trackable_list_wrapper
+:)ђ2batch_normalization_17/gamma
*:(ђ2batch_normalization_17/beta
3:1ђ (2"batch_normalization_17/moving_mean
7:5ђ (2&batch_normalization_17/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Єnon_trainable_variables
ѕlayers
Ѕmetrics
 іlayer_regularization_losses
Іlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
Ь
їtrace_02¤
2__inference_max_pooling2d_14_layer_call_fn_6479284ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zїtrace_0
Ѕ
Їtrace_02Ж
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_6479289ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЇtrace_0
 "
trackable_dict_wrapper
.
y0
z1"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
јnon_trainable_variables
Јlayers
љmetrics
 Љlayer_regularization_losses
њlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
у
Њtrace_02╚
+__inference_conv2d_18_layer_call_fn_6479298ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЊtrace_0
ѓ
ћtrace_02с
F__inference_conv2d_18_layer_call_and_return_conditional_losses_6479309ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zћtrace_0
,:*ђђ2conv2d_18/kernel
:ђ2conv2d_18/bias
 "
trackable_dict_wrapper
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
@
ё0
Ё1
є2
Є3"
trackable_list_wrapper
0
ё0
Ё1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
Ћnon_trainable_variables
ќlayers
Ќmetrics
 ўlayer_regularization_losses
Ўlayer_metrics
}	variables
~trainable_variables
regularization_losses
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
у
џtrace_0
Џtrace_12г
8__inference_batch_normalization_18_layer_call_fn_6479322
8__inference_batch_normalization_18_layer_call_fn_6479335х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zџtrace_0zЏtrace_1
Ю
юtrace_0
Юtrace_12Р
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6479353
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6479371х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zюtrace_0zЮtrace_1
 "
trackable_list_wrapper
+:)ђ2batch_normalization_18/gamma
*:(ђ2batch_normalization_18/beta
3:1ђ (2"batch_normalization_18/moving_mean
7:5ђ (2&batch_normalization_18/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
ъnon_trainable_variables
Ъlayers
аmetrics
 Аlayer_regularization_losses
бlayer_metrics
Ѕ	variables
іtrainable_variables
Іregularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
Э
Бtrace_02┘
<__inference_global_average_pooling2d_4_layer_call_fn_6479376ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zБtrace_0
Њ
цtrace_02З
W__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_6479382ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zцtrace_0
 "
trackable_dict_wrapper
0
ќ0
Ќ1"
trackable_list_wrapper
0
ќ0
Ќ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Цnon_trainable_variables
дlayers
Дmetrics
 еlayer_regularization_losses
Еlayer_metrics
љ	variables
Љtrainable_variables
њregularization_losses
ћ__call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses"
_generic_user_object
Т
фtrace_02К
*__inference_dense_11_layer_call_fn_6479391ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zфtrace_0
Ђ
Фtrace_02Р
E__inference_dense_11_layer_call_and_return_conditional_losses_6479402ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zФtrace_0
#:!
ђђ2dense_11/kernel
:ђ2dense_11/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
гnon_trainable_variables
Гlayers
«metrics
 »layer_regularization_losses
░layer_metrics
Ў	variables
џtrainable_variables
Џregularization_losses
Ю__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
├
▒trace_0
▓trace_12ѕ
,__inference_dropout_13_layer_call_fn_6479407
,__inference_dropout_13_layer_call_fn_6479412Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▒trace_0z▓trace_1
щ
│trace_0
┤trace_12Й
G__inference_dropout_13_layer_call_and_return_conditional_losses_6479424
G__inference_dropout_13_layer_call_and_return_conditional_losses_6479429Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z│trace_0z┤trace_1
D
$х_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
0
Д0
е1"
trackable_list_wrapper
0
Д0
е1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Хnon_trainable_variables
иlayers
Иmetrics
 ╣layer_regularization_losses
║layer_metrics
А	variables
бtrainable_variables
Бregularization_losses
Ц__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
Т
╗trace_02К
*__inference_dense_12_layer_call_fn_6479438ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╗trace_0
Ђ
╝trace_02Р
E__inference_dense_12_layer_call_and_return_conditional_losses_6479449ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╝trace_0
": 	ђ@2dense_12/kernel
:@2dense_12/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
йnon_trainable_variables
Йlayers
┐metrics
 └layer_regularization_losses
┴layer_metrics
ф	variables
Фtrainable_variables
гregularization_losses
«__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
├
┬trace_0
├trace_12ѕ
,__inference_dropout_14_layer_call_fn_6479454
,__inference_dropout_14_layer_call_fn_6479459Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┬trace_0z├trace_1
щ
─trace_0
┼trace_12Й
G__inference_dropout_14_layer_call_and_return_conditional_losses_6479471
G__inference_dropout_14_layer_call_and_return_conditional_losses_6479476Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z─trace_0z┼trace_1
D
$к_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
0
И0
╣1"
trackable_list_wrapper
0
И0
╣1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Кnon_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
▓	variables
│trainable_variables
┤regularization_losses
Х__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
Т
╠trace_02К
*__inference_dense_13_layer_call_fn_6479485ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╠trace_0
Ђ
═trace_02Р
E__inference_dense_13_layer_call_and_return_conditional_losses_6479496ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z═trace_0
!:@2dense_13/kernel
:2dense_13/bias
 "
trackable_dict_wrapper
Z
/0
01
L2
M3
i4
j5
є6
Є7"
trackable_list_wrapper
ъ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
trackable_list_wrapper
0
╬0
¤1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
шBЫ
.__inference_sequential_4_layer_call_fn_6478797conv2d_15_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
шBЫ
.__inference_sequential_4_layer_call_fn_6478862conv2d_15_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
љBЇ
I__inference_sequential_4_layer_call_and_return_conditional_losses_6478641conv2d_15_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
љBЇ
I__inference_sequential_4_layer_call_and_return_conditional_losses_6478732conv2d_15_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
(
┼0"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
х2▓»
д▓б
FullArgSpec*
args"џ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
рBя
%__inference_signature_wrapper_6479013conv2d_15_input"А
џ▓ќ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 $

kwonlyargsџ
jconv2d_15_input
kwonlydefaults
 
annotationsф *
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
НBм
+__inference_conv2d_15_layer_call_fn_6479022inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­Bь
F__inference_conv2d_15_layer_call_and_return_conditional_losses_6479033inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ШBз
8__inference_batch_normalization_15_layer_call_fn_6479046inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
8__inference_batch_normalization_15_layer_call_fn_6479059inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6479077inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6479095inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
▄B┘
2__inference_max_pooling2d_12_layer_call_fn_6479100inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_6479105inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
НBм
+__inference_conv2d_16_layer_call_fn_6479114inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­Bь
F__inference_conv2d_16_layer_call_and_return_conditional_losses_6479125inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ШBз
8__inference_batch_normalization_16_layer_call_fn_6479138inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
8__inference_batch_normalization_16_layer_call_fn_6479151inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6479169inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6479187inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
▄B┘
2__inference_max_pooling2d_13_layer_call_fn_6479192inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_6479197inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
НBм
+__inference_conv2d_17_layer_call_fn_6479206inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­Bь
F__inference_conv2d_17_layer_call_and_return_conditional_losses_6479217inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ШBз
8__inference_batch_normalization_17_layer_call_fn_6479230inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
8__inference_batch_normalization_17_layer_call_fn_6479243inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6479261inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6479279inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
▄B┘
2__inference_max_pooling2d_14_layer_call_fn_6479284inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_6479289inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
НBм
+__inference_conv2d_18_layer_call_fn_6479298inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­Bь
F__inference_conv2d_18_layer_call_and_return_conditional_losses_6479309inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
0
є0
Є1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ШBз
8__inference_batch_normalization_18_layer_call_fn_6479322inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
8__inference_batch_normalization_18_layer_call_fn_6479335inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6479353inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6479371inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ТBс
<__inference_global_average_pooling2d_4_layer_call_fn_6479376inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
W__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_6479382inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
нBЛ
*__inference_dense_11_layer_call_fn_6479391inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№BВ
E__inference_dense_11_layer_call_and_return_conditional_losses_6479402inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
РB▀
,__inference_dropout_13_layer_call_fn_6479407inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
РB▀
,__inference_dropout_13_layer_call_fn_6479412inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
§BЩ
G__inference_dropout_13_layer_call_and_return_conditional_losses_6479424inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
§BЩ
G__inference_dropout_13_layer_call_and_return_conditional_losses_6479429inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
нBЛ
*__inference_dense_12_layer_call_fn_6479438inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№BВ
E__inference_dense_12_layer_call_and_return_conditional_losses_6479449inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
РB▀
,__inference_dropout_14_layer_call_fn_6479454inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
РB▀
,__inference_dropout_14_layer_call_fn_6479459inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
§BЩ
G__inference_dropout_14_layer_call_and_return_conditional_losses_6479471inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
§BЩ
G__inference_dropout_14_layer_call_and_return_conditional_losses_6479476inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
нBЛ
*__inference_dense_13_layer_call_fn_6479485inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№BВ
E__inference_dense_13_layer_call_and_return_conditional_losses_6479496inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
л	variables
Л	keras_api

мtotal

Мcount"
_tf_keras_metric
c
н	variables
Н	keras_api

оtotal

Оcount
п
_fn_kwargs"
_tf_keras_metric
0
м0
М1"
trackable_list_wrapper
.
л	variables"
_generic_user_object
:  (2total
:  (2count
0
о0
О1"
trackable_list_wrapper
.
н	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper╚
"__inference__wrapped_model_6478170А("#-./0?@JKLM\]ghijyzёЁєЄќЌДеИ╣@б=
6б3
1і.
conv2d_15_input          
ф "3ф0
.
dense_13"і
dense_13         щ
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6479077А-./0QбN
GбD
:і7
inputs+                            
p

 
ф "FбC
<і9
tensor_0+                            
џ щ
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_6479095А-./0QбN
GбD
:і7
inputs+                            
p 

 
ф "FбC
<і9
tensor_0+                            
џ М
8__inference_batch_normalization_15_layer_call_fn_6479046ќ-./0QбN
GбD
:і7
inputs+                            
p

 
ф ";і8
unknown+                            М
8__inference_batch_normalization_15_layer_call_fn_6479059ќ-./0QбN
GбD
:і7
inputs+                            
p 

 
ф ";і8
unknown+                            щ
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6479169АJKLMQбN
GбD
:і7
inputs+                           @
p

 
ф "FбC
<і9
tensor_0+                           @
џ щ
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_6479187АJKLMQбN
GбD
:і7
inputs+                           @
p 

 
ф "FбC
<і9
tensor_0+                           @
џ М
8__inference_batch_normalization_16_layer_call_fn_6479138ќJKLMQбN
GбD
:і7
inputs+                           @
p

 
ф ";і8
unknown+                           @М
8__inference_batch_normalization_16_layer_call_fn_6479151ќJKLMQбN
GбD
:і7
inputs+                           @
p 

 
ф ";і8
unknown+                           @ч
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6479261БghijRбO
HбE
;і8
inputs,                           ђ
p

 
ф "GбD
=і:
tensor_0,                           ђ
џ ч
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_6479279БghijRбO
HбE
;і8
inputs,                           ђ
p 

 
ф "GбD
=і:
tensor_0,                           ђ
џ Н
8__inference_batch_normalization_17_layer_call_fn_6479230ўghijRбO
HбE
;і8
inputs,                           ђ
p

 
ф "<і9
unknown,                           ђН
8__inference_batch_normalization_17_layer_call_fn_6479243ўghijRбO
HбE
;і8
inputs,                           ђ
p 

 
ф "<і9
unknown,                           ђ 
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6479353ДёЁєЄRбO
HбE
;і8
inputs,                           ђ
p

 
ф "GбD
=і:
tensor_0,                           ђ
џ  
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_6479371ДёЁєЄRбO
HбE
;і8
inputs,                           ђ
p 

 
ф "GбD
=і:
tensor_0,                           ђ
џ ┘
8__inference_batch_normalization_18_layer_call_fn_6479322юёЁєЄRбO
HбE
;і8
inputs,                           ђ
p

 
ф "<і9
unknown,                           ђ┘
8__inference_batch_normalization_18_layer_call_fn_6479335юёЁєЄRбO
HбE
;і8
inputs,                           ђ
p 

 
ф "<і9
unknown,                           ђй
F__inference_conv2d_15_layer_call_and_return_conditional_losses_6479033s"#7б4
-б*
(і%
inputs          
ф "4б1
*і'
tensor_0           
џ Ќ
+__inference_conv2d_15_layer_call_fn_6479022h"#7б4
-б*
(і%
inputs          
ф ")і&
unknown           й
F__inference_conv2d_16_layer_call_and_return_conditional_losses_6479125s?@7б4
-б*
(і%
inputs         
 
ф "4б1
*і'
tensor_0         
@
џ Ќ
+__inference_conv2d_16_layer_call_fn_6479114h?@7б4
-б*
(і%
inputs         
 
ф ")і&
unknown         
@Й
F__inference_conv2d_17_layer_call_and_return_conditional_losses_6479217t\]7б4
-б*
(і%
inputs         @
ф "5б2
+і(
tensor_0         ђ
џ ў
+__inference_conv2d_17_layer_call_fn_6479206i\]7б4
-б*
(і%
inputs         @
ф "*і'
unknown         ђ┐
F__inference_conv2d_18_layer_call_and_return_conditional_losses_6479309uyz8б5
.б+
)і&
inputs         ђ
ф "5б2
+і(
tensor_0         ђ
џ Ў
+__inference_conv2d_18_layer_call_fn_6479298jyz8б5
.б+
)і&
inputs         ђ
ф "*і'
unknown         ђ░
E__inference_dense_11_layer_call_and_return_conditional_losses_6479402gќЌ0б-
&б#
!і
inputs         ђ
ф "-б*
#і 
tensor_0         ђ
џ і
*__inference_dense_11_layer_call_fn_6479391\ќЌ0б-
&б#
!і
inputs         ђ
ф ""і
unknown         ђ»
E__inference_dense_12_layer_call_and_return_conditional_losses_6479449fДе0б-
&б#
!і
inputs         ђ
ф ",б)
"і
tensor_0         @
џ Ѕ
*__inference_dense_12_layer_call_fn_6479438[Де0б-
&б#
!і
inputs         ђ
ф "!і
unknown         @«
E__inference_dense_13_layer_call_and_return_conditional_losses_6479496eИ╣/б,
%б"
 і
inputs         @
ф ",б)
"і
tensor_0         
џ ѕ
*__inference_dense_13_layer_call_fn_6479485ZИ╣/б,
%б"
 і
inputs         @
ф "!і
unknown         ░
G__inference_dropout_13_layer_call_and_return_conditional_losses_6479424e4б1
*б'
!і
inputs         ђ
p
ф "-б*
#і 
tensor_0         ђ
џ ░
G__inference_dropout_13_layer_call_and_return_conditional_losses_6479429e4б1
*б'
!і
inputs         ђ
p 
ф "-б*
#і 
tensor_0         ђ
џ і
,__inference_dropout_13_layer_call_fn_6479407Z4б1
*б'
!і
inputs         ђ
p
ф ""і
unknown         ђі
,__inference_dropout_13_layer_call_fn_6479412Z4б1
*б'
!і
inputs         ђ
p 
ф ""і
unknown         ђ«
G__inference_dropout_14_layer_call_and_return_conditional_losses_6479471c3б0
)б&
 і
inputs         @
p
ф ",б)
"і
tensor_0         @
џ «
G__inference_dropout_14_layer_call_and_return_conditional_losses_6479476c3б0
)б&
 і
inputs         @
p 
ф ",б)
"і
tensor_0         @
џ ѕ
,__inference_dropout_14_layer_call_fn_6479454X3б0
)б&
 і
inputs         @
p
ф "!і
unknown         @ѕ
,__inference_dropout_14_layer_call_fn_6479459X3б0
)б&
 і
inputs         @
p 
ф "!і
unknown         @у
W__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_6479382ІRбO
HбE
Cі@
inputs4                                    
ф "5б2
+і(
tensor_0                  
џ ┴
<__inference_global_average_pooling2d_4_layer_call_fn_6479376ђRбO
HбE
Cі@
inputs4                                    
ф "*і'
unknown                  э
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_6479105ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ Л
2__inference_max_pooling2d_12_layer_call_fn_6479100џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    э
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_6479197ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ Л
2__inference_max_pooling2d_13_layer_call_fn_6479192џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    э
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_6479289ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ Л
2__inference_max_pooling2d_14_layer_call_fn_6479284џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    ­
I__inference_sequential_4_layer_call_and_return_conditional_losses_6478641б("#-./0?@JKLM\]ghijyzёЁєЄќЌДеИ╣HбE
>б;
1і.
conv2d_15_input          
p

 
ф ",б)
"і
tensor_0         
џ ­
I__inference_sequential_4_layer_call_and_return_conditional_losses_6478732б("#-./0?@JKLM\]ghijyzёЁєЄќЌДеИ╣HбE
>б;
1і.
conv2d_15_input          
p 

 
ф ",б)
"і
tensor_0         
џ ╩
.__inference_sequential_4_layer_call_fn_6478797Ќ("#-./0?@JKLM\]ghijyzёЁєЄќЌДеИ╣HбE
>б;
1і.
conv2d_15_input          
p

 
ф "!і
unknown         ╩
.__inference_sequential_4_layer_call_fn_6478862Ќ("#-./0?@JKLM\]ghijyzёЁєЄќЌДеИ╣HбE
>б;
1і.
conv2d_15_input          
p 

 
ф "!і
unknown         я
%__inference_signature_wrapper_6479013┤("#-./0?@JKLM\]ghijyzёЁєЄќЌДеИ╣SбP
б 
IфF
D
conv2d_15_input1і.
conv2d_15_input          "3ф0
.
dense_13"і
dense_13         