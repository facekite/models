??#
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	
?
?
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%??8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve*1.12.02v1.12.0-0-ga6d8ffae09??
q
input_tensorPlaceholder*
dtype0*(
_output_shapes
:??*
shape:??
J
ConstConst*
valueB
 Btest*
dtype0*
_output_shapes
: 
M
Const_1Const*
valueB Btrain*
dtype0*
_output_shapes
: 
L
Const_2Const*
valueB
 Btest*
dtype0*
_output_shapes
: 
?
EqualEqualConstConst_1*
T0*
_output_shapes
: 
?
<nsfw_cls_model/initial_conv_pad/fix_padding/pad/Pad/paddingsConst*
dtype0*
_output_shapes

:*9
value0B."                             
?
3nsfw_cls_model/initial_conv_pad/fix_padding/pad/PadPadinput_tensor<nsfw_cls_model/initial_conv_pad/fix_padding/pad/Pad/paddings*
	Tpaddings0*(
_output_shapes
:??*
T0
?
Insfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*9
_class/
-+loc:@nsfw_cls_model/initial_conv_pad/conv/W*%
valueB"         @   *
dtype0
?
Hnsfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *9
_class/
-+loc:@nsfw_cls_model/initial_conv_pad/conv/W*
valueB
 *    
?
Jnsfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@nsfw_cls_model/initial_conv_pad/conv/W*
valueB
 *A/>*
dtype0*
_output_shapes
: 
?
Snsfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalInsfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal/shape*

seed *
T0*9
_class/
-+loc:@nsfw_cls_model/initial_conv_pad/conv/W*
seed2 *
dtype0*&
_output_shapes
:@
?
Gnsfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal/mulMulSnsfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal/TruncatedNormalJnsfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal/stddev*
T0*9
_class/
-+loc:@nsfw_cls_model/initial_conv_pad/conv/W*&
_output_shapes
:@
?
Cnsfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normalAddGnsfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal/mulHnsfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal/mean*9
_class/
-+loc:@nsfw_cls_model/initial_conv_pad/conv/W*&
_output_shapes
:@*
T0
?
&nsfw_cls_model/initial_conv_pad/conv/W
VariableV2*
shared_name *9
_class/
-+loc:@nsfw_cls_model/initial_conv_pad/conv/W*
	container *
shape:@*
dtype0*&
_output_shapes
:@
?
-nsfw_cls_model/initial_conv_pad/conv/W/AssignAssign&nsfw_cls_model/initial_conv_pad/conv/WCnsfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0*9
_class/
-+loc:@nsfw_cls_model/initial_conv_pad/conv/W
?
+nsfw_cls_model/initial_conv_pad/conv/W/readIdentity&nsfw_cls_model/initial_conv_pad/conv/W*
T0*9
_class/
-+loc:@nsfw_cls_model/initial_conv_pad/conv/W*&
_output_shapes
:@
?
+nsfw_cls_model/initial_conv_pad/conv/Conv2DConv2D3nsfw_cls_model/initial_conv_pad/fix_padding/pad/Pad+nsfw_cls_model/initial_conv_pad/conv/W/read*
paddingVALID*&
_output_shapes
:pp@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
)nsfw_cls_model/initial_conv_pad/conv/convIdentity+nsfw_cls_model/initial_conv_pad/conv/Conv2D*&
_output_shapes
:pp@*
T0
?
nsfw_cls_model/initial_convIdentity)nsfw_cls_model/initial_conv_pad/conv/conv*&
_output_shapes
:pp@*
T0
?
nsfw_cls_model/initial_max_poolMaxPoolnsfw_cls_model/initial_conv*&
_output_shapes
:88@*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME
?
Mnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/Initializer/onesConst*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma*
	container *
shape:@
?
Cnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/AssignAssign<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gammaMnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/Initializer/ones*
_output_shapes
:@*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma*
validate_shape(
?
Ansfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/readIdentity<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma*
_output_shapes
:@*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma
?
Mnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/Initializer/zerosConst*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta*
valueB@*    *
dtype0*
_output_shapes
:@
?
;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta*
	container *
shape:@
?
Bnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/AssignAssign;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/betaMnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/Initializer/zeros*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta*
validate_shape(*
_output_shapes
:@
?
@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/readIdentity;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta*
_output_shapes
:@
?
Tnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean/Initializer/zerosConst*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
?
Bnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean
?
Insfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean/AssignAssignBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_meanTnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean/Initializer/zeros*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean*
validate_shape(*
_output_shapes
:@
?
Gnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean/readIdentityBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean*
_output_shapes
:@*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean
?
Wnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance/Initializer/onesConst*
_output_shapes
:@*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance*
valueB@*  ??*
dtype0
?
Fnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance
VariableV2*
shared_name *Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@
?
Mnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance/AssignAssignFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_varianceWnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance/Initializer/ones*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
Knsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance/readIdentityFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance*
_output_shapes
:@*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance
?
Ensfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/FusedBatchNormFusedBatchNormnsfw_cls_model/initial_max_poolAnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/read@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/readGnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean/readKnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance/read*
data_formatNHWC*>
_output_shapes,
*:88@:@:@:@:@*
is_training( *
epsilon%o?:*
T0
?
<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/ConstConst*
_output_shapes
: *
valueB
 *w??*
dtype0
?
8nsfw_cls_model/resnet_block_layer_1/init_block_fn/relu_1ReluEnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/FusedBatchNorm*&
_output_shapes
:88@*
T0
?
onsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/shapeConst*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
?
nnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/meanConst*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
pnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/stddevConst*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W*
valueB
 *?dN>*
dtype0*
_output_shapes
: 
?
ynsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalonsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/shape*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W*
seed2 *
dtype0*&
_output_shapes
:@@*

seed 
?
mnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/mulMulynsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/TruncatedNormalpnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:@@*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W
?
insfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normalAddmnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/mulnnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/mean*&
_output_shapes
:@@*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W
?
Lnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W*
	container *
shape:@@
?
Snsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/AssignAssignLnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/Winsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal*
use_locking(*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W*
validate_shape(*&
_output_shapes
:@@
?
Qnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/readIdentityLnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W*&
_output_shapes
:@@
?
Qnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/Conv2DConv2D8nsfw_cls_model/resnet_block_layer_1/init_block_fn/relu_1Qnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/read*
paddingSAME*&
_output_shapes
:88@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
Onsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/convIdentityQnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/Conv2D*
T0*&
_output_shapes
:88@
?
fnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
?
ensfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
gnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*
_output_shapes
: *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W*
valueB
 *???=*
dtype0
?
pnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalfnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W*
seed2 
?
dnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulpnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalgnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:@@*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W
?
`nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normalAdddnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/mulensfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/mean*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W*&
_output_shapes
:@@*
T0
?
Cnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W
VariableV2*
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W*
	container 
?
Jnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/AssignAssignCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W`nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W*
validate_shape(*&
_output_shapes
:@@
?
Hnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/readIdentityCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W*&
_output_shapes
:@@*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W
?
Hnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/Conv2DConv2D8nsfw_cls_model/resnet_block_layer_1/init_block_fn/relu_1Hnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/read*
paddingSAME*&
_output_shapes
:88@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
Fnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/convIdentityHnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/Conv2D*
T0*&
_output_shapes
:88@
?
Mnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/Initializer/onesConst*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma
VariableV2*
shared_name *O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
?
Cnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/AssignAssign<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gammaMnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/Initializer/ones*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
Ansfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/readIdentity<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma*
_output_shapes
:@*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma
?
Mnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/Initializer/zerosConst*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta*
valueB@*    *
dtype0*
_output_shapes
:@
?
;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta*
	container *
shape:@
?
Bnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/AssignAssign;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/betaMnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/Initializer/zeros*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta*
validate_shape(*
_output_shapes
:@
?
@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/readIdentity;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta*
_output_shapes
:@*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta
?
Tnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean/Initializer/zerosConst*
_output_shapes
:@*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean*
valueB@*    *
dtype0
?
Bnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean
?
Insfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean/AssignAssignBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_meanTnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean/Initializer/zeros*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean*
validate_shape(*
_output_shapes
:@
?
Gnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean/readIdentityBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean*
_output_shapes
:@*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean
?
Wnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:@*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance*
valueB@*  ??
?
Fnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance*
	container *
shape:@
?
Mnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance/AssignAssignFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_varianceWnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance/Initializer/ones*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance*
validate_shape(*
_output_shapes
:@
?
Knsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance/readIdentityFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance*
_output_shapes
:@
?
Ensfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/FusedBatchNormFusedBatchNormFnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/convAnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/read@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/readGnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean/readKnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance/read*
T0*
data_formatNHWC*>
_output_shapes,
*:88@:@:@:@:@*
is_training( *
epsilon%o?:
?
<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
8nsfw_cls_model/resnet_block_layer_1/init_block_fn/relu_2ReluEnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/FusedBatchNorm*
T0*&
_output_shapes
:88@
?
fnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
?
ensfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
gnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
pnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalfnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/shape*

seed *
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W*
seed2 *
dtype0*&
_output_shapes
:@@
?
dnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulpnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalgnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:@@*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W
?
`nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normalAdddnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/mulensfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/mean*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W*&
_output_shapes
:@@
?
Cnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W*
	container *
shape:@@
?
Jnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/AssignAssignCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W`nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0
?
Hnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/readIdentityCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W*&
_output_shapes
:@@
?
Hnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/Conv2DConv2D8nsfw_cls_model/resnet_block_layer_1/init_block_fn/relu_2Hnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/read*
paddingSAME*&
_output_shapes
:88@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
Fnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/convIdentityHnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/Conv2D*
T0*&
_output_shapes
:88@
?
'nsfw_cls_model/resnet_block_layer_1/addAddFnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/convOnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/conv*
T0*&
_output_shapes
:88@
?
Jnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma*
	container *
shape:@
?
@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gammaJnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/Initializer/ones*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
>nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma*
_output_shapes
:@*
T0
?
Jnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta*
valueB@*    *
dtype0*
_output_shapes
:@
?
8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta*
	container *
shape:@
?
?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/betaJnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta
?
=nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/readIdentity8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta*
_output_shapes
:@
?
Qnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean*
valueB@*    
?
?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean
?
Fnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_meanQnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean*
validate_shape(
?
Dnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean*
_output_shapes
:@
?
Tnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
Cnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance
VariableV2*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@
?
Jnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_varianceTnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance/Initializer/ones*
_output_shapes
:@*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance*
validate_shape(
?
Hnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance*
_output_shapes
:@
?
Bnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/FusedBatchNormFusedBatchNorm'nsfw_cls_model/resnet_block_layer_1/add>nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/read=nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/readDnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean/readHnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance/read*
data_formatNHWC*>
_output_shapes,
*:88@:@:@:@:@*
is_training( *
epsilon%o?:*
T0
~
9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_1/block_fn_1/relu_1ReluBnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/FusedBatchNorm*
T0*&
_output_shapes
:88@
?
cnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W*
valueB
 *    *
dtype0
?
dnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W*
valueB
 *???=
?
mnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/shape*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W*
seed2 *
dtype0*&
_output_shapes
:@@*

seed 
?
ansfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:@@*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W
?
]nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/mean*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W*&
_output_shapes
:@@*
T0
?
@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W
VariableV2*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
?
Gnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W]nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(
?
Ensfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W*&
_output_shapes
:@@
?
Ensfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_1/block_fn_1/relu_1Ensfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/read*&
_output_shapes
:88@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
Cnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/convIdentityEnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/Conv2D*&
_output_shapes
:88@*
T0
?
Jnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma*
	container *
shape:@
?
@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gammaJnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma
?
>nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma*
_output_shapes
:@
?
Jnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/Initializer/zerosConst*
_output_shapes
:@*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta*
valueB@*    *
dtype0
?
8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta*
	container 
?
?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/betaJnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta*
validate_shape(
?
=nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/readIdentity8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta*
_output_shapes
:@
?
Qnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
?
?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean
VariableV2*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
:@
?
Fnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_meanQnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean*
validate_shape(*
_output_shapes
:@
?
Dnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean*
_output_shapes
:@
?
Tnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
Cnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance*
	container *
shape:@
?
Jnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_varianceTnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance/Initializer/ones*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance*
validate_shape(*
_output_shapes
:@
?
Hnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance*
_output_shapes
:@*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance
?
Bnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/FusedBatchNormFusedBatchNormCnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/conv>nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/read=nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/readDnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean/readHnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*>
_output_shapes,
*:88@:@:@:@:@*
is_training( 
~
9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_1/block_fn_1/relu_2ReluBnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/FusedBatchNorm*&
_output_shapes
:88@*
T0
?
cnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W*%
valueB"      @   @   *
dtype0
?
bnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W*
seed2 
?
ansfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:@@*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W
?
]nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W*&
_output_shapes
:@@
?
@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W
VariableV2*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W
?
Gnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W]nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(
?
Ensfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W*&
_output_shapes
:@@
?
Ensfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_1/block_fn_1/relu_2Ensfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:88@*
	dilations
*
T0
?
Cnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/convIdentityEnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/Conv2D*
T0*&
_output_shapes
:88@
?
)nsfw_cls_model/resnet_block_layer_1/add_1AddCnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/conv'nsfw_cls_model/resnet_block_layer_1/add*&
_output_shapes
:88@*
T0
?
Jnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma*
	container *
shape:@
?
@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gammaJnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma
?
>nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma*
_output_shapes
:@*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma
?
Jnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta*
valueB@*    *
dtype0*
_output_shapes
:@
?
8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta*
	container *
shape:@
?
?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/betaJnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta*
validate_shape(
?
=nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/readIdentity8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta*
_output_shapes
:@*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta
?
Qnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean*
valueB@*    
?
?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean*
	container *
shape:@
?
Fnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_meanQnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean/Initializer/zeros*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
Dnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean*
_output_shapes
:@
?
Tnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:@*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance*
valueB@*  ??
?
Cnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance
?
Jnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_varianceTnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance
?
Hnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance*
_output_shapes
:@
?
Bnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/FusedBatchNormFusedBatchNorm)nsfw_cls_model/resnet_block_layer_1/add_1>nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/read=nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/readDnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean/readHnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*>
_output_shapes,
*:88@:@:@:@:@*
is_training( 
~
9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_1/block_fn_2/relu_1ReluBnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/FusedBatchNorm*&
_output_shapes
:88@*
T0
?
cnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/shape*&
_output_shapes
:@@*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W*
seed2 *
dtype0
?
ansfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*&
_output_shapes
:@@*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W
?
]nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W*&
_output_shapes
:@@
?
@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W*
	container *
shape:@@
?
Gnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W]nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W*
validate_shape(*&
_output_shapes
:@@
?
Ensfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W*&
_output_shapes
:@@*
T0
?
Ensfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_1/block_fn_2/relu_1Ensfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:88@
?
Cnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/convIdentityEnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/Conv2D*&
_output_shapes
:88@*
T0
?
Jnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/Initializer/onesConst*
_output_shapes
:@*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma*
valueB@*  ??*
dtype0
?
9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma*
	container *
shape:@
?
@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gammaJnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/Initializer/ones*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
>nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma*
_output_shapes
:@*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma
?
Jnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta*
valueB@*    *
dtype0*
_output_shapes
:@
?
8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta
VariableV2*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
?
?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/betaJnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/Initializer/zeros*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta*
validate_shape(*
_output_shapes
:@
?
=nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/readIdentity8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta*
_output_shapes
:@
?
Qnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
?
?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean
?
Fnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_meanQnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean*
validate_shape(*
_output_shapes
:@
?
Dnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean*
_output_shapes
:@
?
Tnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
Cnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance*
	container *
shape:@
?
Jnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_varianceTnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance/Initializer/ones*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
Hnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance*
_output_shapes
:@
?
Bnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/FusedBatchNormFusedBatchNormCnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/conv>nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/read=nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/readDnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean/readHnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance/read*>
_output_shapes,
*:88@:@:@:@:@*
is_training( *
epsilon%o?:*
T0*
data_formatNHWC
~
9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_1/block_fn_2/relu_2ReluBnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/FusedBatchNorm*
T0*&
_output_shapes
:88@
?
cnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W*%
valueB"      @   @   *
dtype0
?
bnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W*
valueB
 *    *
dtype0
?
dnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W*
seed2 
?
ansfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W*&
_output_shapes
:@@
?
]nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/mean*&
_output_shapes
:@@*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W
?
@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W
VariableV2*
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W*
	container 
?
Gnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W]nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(
?
Ensfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W*&
_output_shapes
:@@*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W
?
Ensfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_1/block_fn_2/relu_2Ensfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:88@
?
Cnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/convIdentityEnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/Conv2D*&
_output_shapes
:88@*
T0
?
)nsfw_cls_model/resnet_block_layer_1/add_2AddCnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/conv)nsfw_cls_model/resnet_block_layer_1/add_1*
T0*&
_output_shapes
:88@
?
Mnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/Initializer/onesConst*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma
VariableV2*
shared_name *O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
?
Cnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/AssignAssign<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gammaMnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/Initializer/ones*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
?
Ansfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/readIdentity<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma*
_output_shapes
:@
?
Mnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/Initializer/zerosConst*
_output_shapes
:@*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta*
valueB@*    *
dtype0
?
;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta*
	container 
?
Bnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/AssignAssign;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/betaMnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta*
validate_shape(
?
@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/readIdentity;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta*
_output_shapes
:@
?
Tnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean/Initializer/zerosConst*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
?
Bnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean*
	container 
?
Insfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean/AssignAssignBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_meanTnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean/Initializer/zeros*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
?
Gnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean/readIdentityBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean*
_output_shapes
:@*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean
?
Wnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance/Initializer/onesConst*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
Fnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance*
	container *
shape:@
?
Mnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance/AssignAssignFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_varianceWnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance/Initializer/ones*
_output_shapes
:@*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance*
validate_shape(
?
Knsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance/readIdentityFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance*
_output_shapes
:@*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance
?
Ensfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/FusedBatchNormFusedBatchNorm)nsfw_cls_model/resnet_block_layer_1/add_2Ansfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/read@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/readGnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean/readKnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance/read*
data_formatNHWC*>
_output_shapes,
*:88@:@:@:@:@*
is_training( *
epsilon%o?:*
T0
?
<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/ConstConst*
_output_shapes
: *
valueB
 *w??*
dtype0
?
8nsfw_cls_model/resnet_block_layer_2/init_block_fn/relu_1ReluEnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/FusedBatchNorm*
T0*&
_output_shapes
:88@
?
bnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/fix_padding/pad/Pad/paddingsConst*9
value0B."                                 *
dtype0*
_output_shapes

:
?
Ynsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/fix_padding/pad/PadPad8nsfw_cls_model/resnet_block_layer_2/init_block_fn/relu_1bnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/fix_padding/pad/Pad/paddings*
	Tpaddings0*&
_output_shapes
:88@*
T0
?
onsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/shapeConst*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W*%
valueB"      @   ?   *
dtype0*
_output_shapes
:
?
nnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/meanConst*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
pnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/stddevConst*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W*
valueB
 *?dN>*
dtype0*
_output_shapes
: 
?
ynsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalonsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/shape*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W*
seed2 *
dtype0*'
_output_shapes
:@?*

seed 
?
mnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/mulMulynsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/TruncatedNormalpnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/stddev*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W*'
_output_shapes
:@?
?
insfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normalAddmnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/mulnnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/mean*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W*'
_output_shapes
:@?
?
Lnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W
VariableV2*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W*
	container *
shape:@?*
dtype0*'
_output_shapes
:@?*
shared_name 
?
Snsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/AssignAssignLnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/Winsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal*'
_output_shapes
:@?*
use_locking(*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W*
validate_shape(
?
Qnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/readIdentityLnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W*'
_output_shapes
:@?*
T0
?
Qnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/Conv2DConv2DYnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/fix_padding/pad/PadQnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:?*
	dilations

?
Onsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/convIdentityQnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/Conv2D*
T0*'
_output_shapes
:?
?
Ynsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/fix_padding/pad/Pad/paddingsConst*9
value0B."                             *
dtype0*
_output_shapes

:
?
Pnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/fix_padding/pad/PadPad8nsfw_cls_model/resnet_block_layer_2/init_block_fn/relu_1Ynsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/fix_padding/pad/Pad/paddings*
T0*
	Tpaddings0*&
_output_shapes
:::@
?
fnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W*%
valueB"      @   ?   *
dtype0*
_output_shapes
:
?
ensfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
gnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
pnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalfnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*'
_output_shapes
:@?*

seed *
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W
?
dnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulpnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalgnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W*'
_output_shapes
:@?
?
`nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normalAdddnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/mulensfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/mean*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W*'
_output_shapes
:@?
?
Cnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W
VariableV2*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W*
	container *
shape:@?*
dtype0*'
_output_shapes
:@?*
shared_name 
?
Jnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/AssignAssignCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W`nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W*
validate_shape(*'
_output_shapes
:@?
?
Hnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/readIdentityCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W*'
_output_shapes
:@?*
T0
?
Hnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/Conv2DConv2DPnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/fix_padding/pad/PadHnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:?
?
Fnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/convIdentityHnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/Conv2D*'
_output_shapes
:?*
T0
?
Mnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:?*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma*
valueB?*  ??
?
<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma
VariableV2*
_output_shapes	
:?*
shared_name *O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma*
	container *
shape:?*
dtype0
?
Cnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/AssignAssign<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gammaMnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/Initializer/ones*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
Ansfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/readIdentity<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma*
_output_shapes	
:?*
T0
?
Mnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/Initializer/zerosConst*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta
?
Bnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/AssignAssign;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/betaMnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta
?
@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/readIdentity;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean*
valueB?*    
?
Bnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean*
	container *
shape:?
?
Insfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean/AssignAssignBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_meanTnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean
?
Gnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean/readIdentityBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean*
_output_shapes	
:?*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean
?
Wnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance/Initializer/onesConst*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Fnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance*
	container *
shape:?
?
Mnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance/AssignAssignFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_varianceWnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance/Initializer/ones*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Knsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance/readIdentityFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance*
_output_shapes	
:?*
T0
?
Ensfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/FusedBatchNormFusedBatchNormFnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/convAnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/read@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/readGnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean/readKnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
?
<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
8nsfw_cls_model/resnet_block_layer_2/init_block_fn/relu_2ReluEnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/FusedBatchNorm*'
_output_shapes
:?*
T0
?
fnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W*%
valueB"      ?   ?   *
dtype0*
_output_shapes
:
?
ensfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
gnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W*
valueB
 *?B=*
dtype0*
_output_shapes
: 
?
pnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalfnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:??*

seed *
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W*
seed2 
?
dnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulpnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalgnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W*(
_output_shapes
:??
?
`nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normalAdddnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/mulensfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/mean*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W*(
_output_shapes
:??*
T0
?
Cnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W
VariableV2*
	container *
shape:??*
dtype0*(
_output_shapes
:??*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W
?
Jnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/AssignAssignCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W`nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
Hnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/readIdentityCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W*(
_output_shapes
:??*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W
?
Hnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/Conv2DConv2D8nsfw_cls_model/resnet_block_layer_2/init_block_fn/relu_2Hnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:?*
	dilations
*
T0
?
Fnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/convIdentityHnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/Conv2D*
T0*'
_output_shapes
:?
?
'nsfw_cls_model/resnet_block_layer_2/addAddFnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/convOnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/conv*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma
VariableV2*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gammaJnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma
?
>nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta
VariableV2*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/betaJnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/Initializer/zeros*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
=nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/readIdentity8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta*
_output_shapes	
:?
?
Qnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean*
	container *
shape:?
?
Fnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_meanQnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean
?
Dnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean*
_output_shapes	
:?*
T0
?
Tnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance*
	container *
shape:?
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_varianceTnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance/Initializer/ones*
_output_shapes	
:?*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance*
validate_shape(
?
Hnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance*
_output_shapes	
:?*
T0
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/FusedBatchNormFusedBatchNorm'nsfw_cls_model/resnet_block_layer_2/add>nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/read=nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/readDnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean/readHnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance/read*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:*
T0
~
9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_2/block_fn_1/relu_1ReluBnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/FusedBatchNorm*
T0*'
_output_shapes
:?
?
cnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W*%
valueB"      ?   ?   *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W*
valueB
 *    *
dtype0
?
dnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W*
valueB
 *?B=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:??*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W*
seed2 
?
ansfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W*(
_output_shapes
:??
?
@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W
VariableV2*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??
?
Gnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W]nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_2/block_fn_1/relu_1Ensfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/read*
paddingSAME*'
_output_shapes
:?*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
Cnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/convIdentityEnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/Conv2D*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/Initializer/onesConst*
_output_shapes	
:?*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma*
valueB?*  ??*
dtype0
?
9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma
VariableV2*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gammaJnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/Initializer/ones*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
>nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma*
_output_shapes	
:?*
T0
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/Initializer/zerosConst*
_output_shapes	
:?*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta*
valueB?*    *
dtype0
?
8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta
?
?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/betaJnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/Initializer/zeros*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
=nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/readIdentity8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta*
_output_shapes	
:?*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta
?
Qnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean
VariableV2*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
Fnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_meanQnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
Dnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean*
_output_shapes	
:?*
T0
?
Tnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance/Initializer/onesConst*
_output_shapes	
:?*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance*
valueB?*  ??*
dtype0
?
Cnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance
VariableV2*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_varianceTnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance
?
Hnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/FusedBatchNormFusedBatchNormCnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/conv>nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/read=nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/readDnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean/readHnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance/read*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:*
T0
~
9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_2/block_fn_1/relu_2ReluBnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/FusedBatchNorm*'
_output_shapes
:?*
T0
?
cnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W*%
valueB"      ?   ?   *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W*
valueB
 *?B=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/shape*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W*
seed2 *
dtype0*(
_output_shapes
:??*

seed *
T0
?
ansfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/mean*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W
?
@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W
VariableV2*
dtype0*(
_output_shapes
:??*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W*
	container *
shape:??
?
Gnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W]nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_2/block_fn_1/relu_2Ensfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:?
?
Cnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/convIdentityEnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/Conv2D*'
_output_shapes
:?*
T0
?
)nsfw_cls_model/resnet_block_layer_2/add_1AddCnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/conv'nsfw_cls_model/resnet_block_layer_2/add*'
_output_shapes
:?*
T0
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/Initializer/onesConst*
_output_shapes	
:?*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma*
valueB?*  ??*
dtype0
?
9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma
?
@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gammaJnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/Initializer/ones*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
>nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma*
_output_shapes	
:?*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta
VariableV2*
_output_shapes	
:?*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta*
	container *
shape:?*
dtype0
?
?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/betaJnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/Initializer/zeros*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
=nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/readIdentity8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta*
_output_shapes	
:?*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta
?
Qnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean*
valueB?*    
?
?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean
VariableV2*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean*
	container *
shape:?*
dtype0
?
Fnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_meanQnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean/Initializer/zeros*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean*
validate_shape(
?
Dnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance*
	container *
shape:?
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_varianceTnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance/Initializer/ones*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Hnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/FusedBatchNormFusedBatchNorm)nsfw_cls_model/resnet_block_layer_2/add_1>nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/read=nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/readDnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean/readHnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
~
9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_2/block_fn_2/relu_1ReluBnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/FusedBatchNorm*'
_output_shapes
:?*
T0
?
cnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W*%
valueB"      ?   ?   *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W*
valueB
 *    
?
dnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W*
valueB
 *?B=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/shape*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W*
seed2 *
dtype0*(
_output_shapes
:??*

seed 
?
ansfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W*(
_output_shapes
:??
?
@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W
VariableV2*
dtype0*(
_output_shapes
:??*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W*
	container *
shape:??
?
Gnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W]nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_2/block_fn_2/relu_1Ensfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:?
?
Cnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/convIdentityEnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/Conv2D*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma
VariableV2*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gammaJnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/Initializer/ones*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma*
validate_shape(
?
>nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma*
_output_shapes	
:?*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta*
	container 
?
?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/betaJnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/Initializer/zeros*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
=nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/readIdentity8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta*
_output_shapes	
:?
?
Qnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean*
	container *
shape:?
?
Fnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_meanQnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
Dnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:?*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance*
valueB?*  ??
?
Cnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance
VariableV2*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_varianceTnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance
?
Hnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance*
_output_shapes	
:?*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/FusedBatchNormFusedBatchNormCnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/conv>nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/read=nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/readDnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean/readHnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
~
9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_2/block_fn_2/relu_2ReluBnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/FusedBatchNorm*
T0*'
_output_shapes
:?
?
cnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W*%
valueB"      ?   ?   *
dtype0
?
bnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W*
valueB
 *    *
dtype0
?
dnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W*
valueB
 *?B=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:??*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W*
seed2 
?
ansfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W
?
]nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W*(
_output_shapes
:??
?
@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W
VariableV2*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??
?
Gnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W]nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_2/block_fn_2/relu_2Ensfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/read*'
_output_shapes
:?*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
Cnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/convIdentityEnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/Conv2D*
T0*'
_output_shapes
:?
?
)nsfw_cls_model/resnet_block_layer_2/add_2AddCnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/conv)nsfw_cls_model/resnet_block_layer_2/add_1*'
_output_shapes
:?*
T0
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/Initializer/onesConst*
_output_shapes	
:?*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma*
valueB?*  ??*
dtype0
?
9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma*
	container *
shape:?
?
@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gammaJnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/Initializer/ones*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
>nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma*
_output_shapes	
:?*
T0
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta*
	container 
?
?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/betaJnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/Initializer/zeros*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
=nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/readIdentity8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta*
_output_shapes	
:?*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta
?
Qnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean
VariableV2*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Fnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_meanQnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
Dnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean*
_output_shapes	
:?*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean
?
Tnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance
VariableV2*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_varianceTnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance/Initializer/ones*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Hnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance*
_output_shapes	
:?*
T0
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/FusedBatchNormFusedBatchNorm)nsfw_cls_model/resnet_block_layer_2/add_2>nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/read=nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/readDnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean/readHnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance/read*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:
~
9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_2/block_fn_3/relu_1ReluBnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/FusedBatchNorm*'
_output_shapes
:?*
T0
?
cnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W*%
valueB"      ?   ?   *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W*
valueB
 *?B=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:??*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W*
seed2 
?
ansfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/mean*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W
?
@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W
VariableV2*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??*
shared_name 
?
Gnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W]nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_2/block_fn_3/relu_1Ensfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/read*
paddingSAME*'
_output_shapes
:?*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
Cnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/convIdentityEnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/Conv2D*'
_output_shapes
:?*
T0
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/Initializer/onesConst*
_output_shapes	
:?*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma*
valueB?*  ??*
dtype0
?
9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma
VariableV2*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gammaJnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma
?
>nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta
VariableV2*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/betaJnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/Initializer/zeros*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
=nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/readIdentity8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta*
_output_shapes	
:?*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta
?
Qnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean
VariableV2*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
Fnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_meanQnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
Dnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance*
	container *
shape:?
?
Jnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_varianceTnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance/Initializer/ones*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Hnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/FusedBatchNormFusedBatchNormCnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/conv>nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/read=nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/readDnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean/readHnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
~
9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_2/block_fn_3/relu_2ReluBnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/FusedBatchNorm*
T0*'
_output_shapes
:?
?
cnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W*%
valueB"      ?   ?   *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W*
valueB
 *    *
dtype0
?
dnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W*
valueB
 *?B=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/shape*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W*
seed2 *
dtype0*(
_output_shapes
:??
?
ansfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W
?
]nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W*(
_output_shapes
:??
?
@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W
VariableV2*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??*
shared_name 
?
Gnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W]nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W*(
_output_shapes
:??*
T0
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_2/block_fn_3/relu_2Ensfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/read*'
_output_shapes
:?*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
Cnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/convIdentityEnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/Conv2D*'
_output_shapes
:?*
T0
?
)nsfw_cls_model/resnet_block_layer_2/add_3AddCnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/conv)nsfw_cls_model/resnet_block_layer_2/add_2*'
_output_shapes
:?*
T0
?
Mnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/Initializer/onesConst*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma*
	container 
?
Cnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/AssignAssign<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gammaMnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/Initializer/ones*
_output_shapes	
:?*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma*
validate_shape(
?
Ansfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/readIdentity<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma*
_output_shapes	
:?
?
Mnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/Initializer/zerosConst*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta*
	container *
shape:?
?
Bnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/AssignAssign;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/betaMnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/Initializer/zeros*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/readIdentity;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta*
_output_shapes	
:?*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta
?
Tnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean/Initializer/zerosConst*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean
VariableV2*
shared_name *U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Insfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean/AssignAssignBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_meanTnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean/Initializer/zeros*
_output_shapes	
:?*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean*
validate_shape(
?
Gnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean/readIdentityBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean*
_output_shapes	
:?
?
Wnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance/Initializer/onesConst*
_output_shapes	
:?*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance*
valueB?*  ??*
dtype0
?
Fnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance
?
Mnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance/AssignAssignFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_varianceWnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance/Initializer/ones*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Knsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance/readIdentityFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance*
_output_shapes	
:?*
T0
?
Ensfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/FusedBatchNormFusedBatchNorm)nsfw_cls_model/resnet_block_layer_2/add_3Ansfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/read@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/readGnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean/readKnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance/read*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:
?
<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
8nsfw_cls_model/resnet_block_layer_3/init_block_fn/relu_1ReluEnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/FusedBatchNorm*'
_output_shapes
:?*
T0
?
bnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/fix_padding/pad/Pad/paddingsConst*9
value0B."                                 *
dtype0*
_output_shapes

:
?
Ynsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/fix_padding/pad/PadPad8nsfw_cls_model/resnet_block_layer_3/init_block_fn/relu_1bnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/fix_padding/pad/Pad/paddings*
T0*
	Tpaddings0*'
_output_shapes
:?
?
onsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W*%
valueB"      ?      *
dtype0
?
nnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/meanConst*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
pnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/stddevConst*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W*
valueB
 *E?>*
dtype0*
_output_shapes
: 
?
ynsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalonsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/shape*

seed *
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W*
seed2 *
dtype0*(
_output_shapes
:??
?
mnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/mulMulynsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/TruncatedNormalpnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/stddev*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W*(
_output_shapes
:??
?
insfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normalAddmnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/mulnnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/mean*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W*(
_output_shapes
:??
?
Lnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W
VariableV2*
dtype0*(
_output_shapes
:??*
shared_name *_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W*
	container *
shape:??
?
Snsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/AssignAssignLnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/Winsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal*
use_locking(*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W*
validate_shape(*(
_output_shapes
:??
?
Qnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/readIdentityLnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W*(
_output_shapes
:??
?
Qnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/Conv2DConv2DYnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/fix_padding/pad/PadQnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:?*
	dilations

?
Onsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/convIdentityQnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/Conv2D*
T0*'
_output_shapes
:?
?
Ynsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/fix_padding/pad/Pad/paddingsConst*
_output_shapes

:*9
value0B."                             *
dtype0
?
Pnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/fix_padding/pad/PadPad8nsfw_cls_model/resnet_block_layer_3/init_block_fn/relu_1Ynsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/fix_padding/pad/Pad/paddings*
T0*
	Tpaddings0*'
_output_shapes
:?
?
fnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W*%
valueB"      ?      *
dtype0*
_output_shapes
:
?
ensfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
gnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W*
valueB
 *?B=*
dtype0*
_output_shapes
: 
?
pnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalfnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:??*

seed *
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W*
seed2 
?
dnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulpnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalgnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W*(
_output_shapes
:??
?
`nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normalAdddnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/mulensfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/mean*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W*(
_output_shapes
:??
?
Cnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W
VariableV2*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??*
shared_name 
?
Jnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/AssignAssignCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W`nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
Hnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/readIdentityCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W*(
_output_shapes
:??
?
Hnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/Conv2DConv2DPnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/fix_padding/pad/PadHnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/read*
paddingVALID*'
_output_shapes
:?*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
Fnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/convIdentityHnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/Conv2D*
T0*'
_output_shapes
:?
?
Mnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/Initializer/onesConst*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma
VariableV2*
shared_name *O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/AssignAssign<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gammaMnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma
?
Ansfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/readIdentity<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma*
_output_shapes	
:?
?
Mnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/Initializer/zerosConst*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta*
	container *
shape:?
?
Bnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/AssignAssign;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/betaMnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/Initializer/zeros*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/readIdentity;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean/Initializer/zerosConst*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean*
	container *
shape:?
?
Insfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean/AssignAssignBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_meanTnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean
?
Gnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean/readIdentityBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean*
_output_shapes	
:?*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean
?
Wnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance/Initializer/onesConst*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Fnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance*
	container 
?
Mnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance/AssignAssignFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_varianceWnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance/Initializer/ones*
_output_shapes	
:?*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance*
validate_shape(
?
Knsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance/readIdentityFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance*
_output_shapes	
:?*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance
?
Ensfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/FusedBatchNormFusedBatchNormFnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/convAnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/read@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/readGnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean/readKnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance/read*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:*
T0*
data_formatNHWC
?
<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
8nsfw_cls_model/resnet_block_layer_3/init_block_fn/relu_2ReluEnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/FusedBatchNorm*'
_output_shapes
:?*
T0
?
fnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
ensfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
gnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W*
valueB
 *??	=*
dtype0*
_output_shapes
: 
?
pnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalfnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/shape*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W*
seed2 *
dtype0*(
_output_shapes
:??*

seed 
?
dnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulpnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalgnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W*(
_output_shapes
:??*
T0
?
`nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normalAdddnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/mulensfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/mean*(
_output_shapes
:??*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W
?
Cnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W
VariableV2*
dtype0*(
_output_shapes
:??*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W*
	container *
shape:??
?
Jnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/AssignAssignCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W`nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
Hnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/readIdentityCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W*(
_output_shapes
:??
?
Hnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/Conv2DConv2D8nsfw_cls_model/resnet_block_layer_3/init_block_fn/relu_2Hnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/read*'
_output_shapes
:?*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
Fnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/convIdentityHnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/Conv2D*
T0*'
_output_shapes
:?
?
'nsfw_cls_model/resnet_block_layer_3/addAddFnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/convOnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/conv*'
_output_shapes
:?*
T0
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gammaJnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/Initializer/ones*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
>nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma*
_output_shapes	
:?*
T0
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta*
valueB?*    
?
8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta*
	container *
shape:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/betaJnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta
?
=nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/readIdentity8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta*
_output_shapes	
:?
?
Qnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean*
valueB?*    
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean*
	container *
shape:?
?
Fnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_meanQnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean/Initializer/zeros*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
Dnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean*
_output_shapes	
:?*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean
?
Tnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance
VariableV2*
_output_shapes	
:?*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance*
	container *
shape:?*
dtype0
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_varianceTnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance/Initializer/ones*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Hnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/FusedBatchNormFusedBatchNorm'nsfw_cls_model/resnet_block_layer_3/add>nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/read=nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/readDnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean/readHnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
~
9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/ConstConst*
_output_shapes
: *
valueB
 *w??*
dtype0
?
5nsfw_cls_model/resnet_block_layer_3/block_fn_1/relu_1ReluBnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/FusedBatchNorm*
T0*'
_output_shapes
:?
?
cnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W*
valueB
 *??	=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/shape*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W*
seed2 *
dtype0*(
_output_shapes
:??
?
ansfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/mean*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W
VariableV2*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??
?
Gnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W]nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_3/block_fn_1/relu_1Ensfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/read*'
_output_shapes
:?*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/convIdentityEnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/Conv2D*'
_output_shapes
:?*
T0
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma*
	container *
shape:?
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gammaJnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma
?
>nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma*
_output_shapes	
:?*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta
VariableV2*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/betaJnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/Initializer/zeros*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
=nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/readIdentity8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta*
_output_shapes	
:?
?
Qnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean
?
Fnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_meanQnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean
?
Dnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance
VariableV2*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_varianceTnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance
?
Hnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance*
_output_shapes	
:?*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/FusedBatchNormFusedBatchNormCnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/conv>nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/read=nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/readDnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean/readHnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance/read*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:
~
9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *w??
?
5nsfw_cls_model/resnet_block_layer_3/block_fn_1/relu_2ReluBnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/FusedBatchNorm*'
_output_shapes
:?*
T0
?
cnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W*
valueB
 *??	=
?
mnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/shape*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W*
seed2 *
dtype0*(
_output_shapes
:??*

seed 
?
ansfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/mean*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W
VariableV2*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??
?
Gnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W]nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_3/block_fn_1/relu_2Ensfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:?*
	dilations
*
T0
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/convIdentityEnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/Conv2D*'
_output_shapes
:?*
T0
?
)nsfw_cls_model/resnet_block_layer_3/add_1AddCnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/conv'nsfw_cls_model/resnet_block_layer_3/add*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma*
	container *
shape:?
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gammaJnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/Initializer/ones*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
>nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta
VariableV2*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/betaJnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta
?
=nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/readIdentity8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta*
_output_shapes	
:?
?
Qnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean
?
Fnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_meanQnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean
?
Dnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance/Initializer/onesConst*
_output_shapes	
:?*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance*
valueB?*  ??*
dtype0
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance*
	container *
shape:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_varianceTnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance/Initializer/ones*
_output_shapes	
:?*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance*
validate_shape(
?
Hnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance*
_output_shapes	
:?*
T0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/FusedBatchNormFusedBatchNorm)nsfw_cls_model/resnet_block_layer_3/add_1>nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/read=nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/readDnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean/readHnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance/read*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:*
T0
~
9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_3/block_fn_2/relu_1ReluBnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/FusedBatchNorm*'
_output_shapes
:?*
T0
?
cnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W*
valueB
 *    
?
dnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W*
valueB
 *??	=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/shape*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W*
seed2 *
dtype0*(
_output_shapes
:??
?
ansfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W
?
]nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W*(
_output_shapes
:??
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W
VariableV2*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??
?
Gnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W]nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_3/block_fn_2/relu_1Ensfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/read*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:?*
	dilations
*
T0*
strides
*
data_formatNHWC
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/convIdentityEnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/Conv2D*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:?*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma*
valueB?*  ??
?
9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma
VariableV2*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gammaJnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma
?
>nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta*
	container 
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/betaJnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/Initializer/zeros*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
=nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/readIdentity8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta*
_output_shapes	
:?
?
Qnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean*
	container *
shape:?
?
Fnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_meanQnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
Dnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean*
_output_shapes	
:?*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean
?
Tnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance
VariableV2*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_varianceTnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance
?
Hnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance*
_output_shapes	
:?*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/FusedBatchNormFusedBatchNormCnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/conv>nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/read=nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/readDnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean/readHnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
~
9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_3/block_fn_2/relu_2ReluBnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/FusedBatchNorm*'
_output_shapes
:?*
T0
?
cnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W*
valueB
 *    *
dtype0
?
dnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W*
valueB
 *??	=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:??*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W*
seed2 
?
ansfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W*(
_output_shapes
:??*
T0
?
]nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/mean*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W
VariableV2*
dtype0*(
_output_shapes
:??*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W*
	container *
shape:??
?
Gnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W]nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_3/block_fn_2/relu_2Ensfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/read*
paddingSAME*'
_output_shapes
:?*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/convIdentityEnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/Conv2D*'
_output_shapes
:?*
T0
?
)nsfw_cls_model/resnet_block_layer_3/add_2AddCnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/conv)nsfw_cls_model/resnet_block_layer_3/add_1*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma*
	container 
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gammaJnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma
?
>nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta
VariableV2*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/betaJnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/Initializer/zeros*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
=nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/readIdentity8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta*
_output_shapes	
:?
?
Qnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean
VariableV2*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Fnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_meanQnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
Dnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_varianceTnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance/Initializer/ones*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Hnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/FusedBatchNormFusedBatchNorm)nsfw_cls_model/resnet_block_layer_3/add_2>nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/read=nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/readDnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean/readHnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance/read*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:
~
9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_3/block_fn_3/relu_1ReluBnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/FusedBatchNorm*
T0*'
_output_shapes
:?
?
cnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W*
valueB
 *??	=
?
mnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:??*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W*
seed2 
?
ansfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W*(
_output_shapes
:??
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W
VariableV2*
dtype0*(
_output_shapes
:??*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W*
	container *
shape:??
?
Gnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W]nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W*(
_output_shapes
:??*
T0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_3/block_fn_3/relu_1Ensfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:?
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/convIdentityEnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/Conv2D*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma*
	container *
shape:?
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gammaJnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/Initializer/ones*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
>nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma*
_output_shapes	
:?*
T0
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta
VariableV2*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/betaJnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/Initializer/zeros*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta*
validate_shape(
?
=nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/readIdentity8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta*
_output_shapes	
:?*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta
?
Qnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean*
valueB?*    
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean*
	container *
shape:?
?
Fnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_meanQnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean
?
Dnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean*
_output_shapes	
:?*
T0
?
Tnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance
VariableV2*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_varianceTnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance/Initializer/ones*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
Hnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance*
_output_shapes	
:?*
T0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/FusedBatchNormFusedBatchNormCnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/conv>nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/read=nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/readDnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean/readHnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
~
9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_3/block_fn_3/relu_2ReluBnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/FusedBatchNorm*
T0*'
_output_shapes
:?
?
cnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W*%
valueB"            
?
bnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W*
valueB
 *??	=*
dtype0
?
mnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/shape*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W*
seed2 *
dtype0*(
_output_shapes
:??*

seed 
?
ansfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W*(
_output_shapes
:??
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W
VariableV2*
dtype0*(
_output_shapes
:??*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W*
	container *
shape:??
?
Gnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W]nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_3/block_fn_3/relu_2Ensfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/read*
paddingSAME*'
_output_shapes
:?*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/convIdentityEnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/Conv2D*
T0*'
_output_shapes
:?
?
)nsfw_cls_model/resnet_block_layer_3/add_3AddCnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/conv)nsfw_cls_model/resnet_block_layer_3/add_2*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma
VariableV2*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gammaJnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/Initializer/ones*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
>nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta*
	container *
shape:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/betaJnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/Initializer/zeros*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
=nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/readIdentity8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta*
_output_shapes	
:?*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta
?
Qnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean*
	container *
shape:?
?
Fnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_meanQnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
Dnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean*
_output_shapes	
:?*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean
?
Tnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance*
	container *
shape:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_varianceTnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance/Initializer/ones*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Hnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/FusedBatchNormFusedBatchNorm)nsfw_cls_model/resnet_block_layer_3/add_3>nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/read=nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/readDnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean/readHnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
~
9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_3/block_fn_4/relu_1ReluBnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/FusedBatchNorm*'
_output_shapes
:?*
T0
?
cnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W*%
valueB"            *
dtype0
?
bnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W*
valueB
 *??	=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:??*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W*
seed2 
?
ansfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal/mean*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W
VariableV2*
dtype0*(
_output_shapes
:??*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W*
	container *
shape:??
?
Gnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W]nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_3/block_fn_4/relu_1Ensfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:?*
	dilations
*
T0
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/convIdentityEnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/Conv2D*'
_output_shapes
:?*
T0
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma
VariableV2*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gammaJnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/Initializer/ones*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
>nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta*
	container 
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/betaJnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/Initializer/zeros*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
=nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/readIdentity8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta*
_output_shapes	
:?*
T0
?
Qnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean
?
Fnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_meanQnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
Dnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean*
_output_shapes	
:?*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean
?
Tnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance*
	container *
shape:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_varianceTnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance/Initializer/ones*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
Hnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/FusedBatchNormFusedBatchNormCnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/conv>nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/read=nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/readDnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean/readHnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance/read*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:
~
9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_3/block_fn_4/relu_2ReluBnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/FusedBatchNorm*
T0*'
_output_shapes
:?
?
cnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W*
valueB
 *??	=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal/shape*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W*
seed2 *
dtype0*(
_output_shapes
:??
?
ansfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W*(
_output_shapes
:??
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W
VariableV2*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??
?
Gnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W]nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W*
validate_shape(
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_3/block_fn_4/relu_2Ensfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/read*'
_output_shapes
:?*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/convIdentityEnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/Conv2D*
T0*'
_output_shapes
:?
?
)nsfw_cls_model/resnet_block_layer_3/add_4AddCnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/conv)nsfw_cls_model/resnet_block_layer_3/add_3*'
_output_shapes
:?*
T0
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma*
	container *
shape:?
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gammaJnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma
?
>nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta*
	container *
shape:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/betaJnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/Initializer/zeros*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta*
validate_shape(
?
=nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/readIdentity8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta*
_output_shapes	
:?*
T0
?
Qnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean
?
Fnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_meanQnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
Dnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:?*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance*
valueB?*  ??
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance
VariableV2*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_varianceTnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance/Initializer/ones*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
Hnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance*
_output_shapes	
:?*
T0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/FusedBatchNormFusedBatchNorm)nsfw_cls_model/resnet_block_layer_3/add_4>nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/read=nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/readDnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean/readHnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
~
9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_3/block_fn_5/relu_1ReluBnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/FusedBatchNorm*
T0*'
_output_shapes
:?
?
cnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W*
valueB
 *??	=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal/shape*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W*
seed2 *
dtype0*(
_output_shapes
:??*

seed *
T0
?
ansfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal/mean*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W*(
_output_shapes
:??*
T0
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W
VariableV2*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??
?
Gnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W]nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W*(
_output_shapes
:??*
T0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_3/block_fn_5/relu_1Ensfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:?
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/convIdentityEnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/Conv2D*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma
VariableV2*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gammaJnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/Initializer/ones*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
>nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma*
_output_shapes	
:?*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta
VariableV2*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/betaJnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/Initializer/zeros*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
=nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/readIdentity8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta*
_output_shapes	
:?*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta
?
Qnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean
VariableV2*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Fnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_meanQnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
Dnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance
VariableV2*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_varianceTnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance/Initializer/ones*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Hnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/FusedBatchNormFusedBatchNormCnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/conv>nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/read=nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/readDnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean/readHnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
~
9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_3/block_fn_5/relu_2ReluBnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/FusedBatchNorm*
T0*'
_output_shapes
:?
?
cnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W*
valueB
 *    
?
dnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W*
valueB
 *??	=*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:??*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W*
seed2 
?
ansfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W
?
]nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W*(
_output_shapes
:??
?
@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W
VariableV2*
dtype0*(
_output_shapes
:??*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W*
	container *
shape:??
?
Gnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W]nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W*
validate_shape(
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_3/block_fn_5/relu_2Ensfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:?
?
Cnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/convIdentityEnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/Conv2D*'
_output_shapes
:?*
T0
?
)nsfw_cls_model/resnet_block_layer_3/add_5AddCnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/conv)nsfw_cls_model/resnet_block_layer_3/add_4*
T0*'
_output_shapes
:?
?
Mnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/Initializer/onesConst*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma
VariableV2*
shared_name *O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/AssignAssign<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gammaMnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma
?
Ansfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/readIdentity<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma*
_output_shapes	
:?
?
Mnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/Initializer/zerosConst*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta*
	container *
shape:?
?
Bnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/AssignAssign;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/betaMnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/Initializer/zeros*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/readIdentity;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean*
valueB?*    
?
Bnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean
VariableV2*
shared_name *U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Insfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean/AssignAssignBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_meanTnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean
?
Gnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean/readIdentityBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean*
_output_shapes	
:?
?
Wnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance/Initializer/onesConst*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Fnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance
VariableV2*
shared_name *Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Mnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance/AssignAssignFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_varianceWnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance/Initializer/ones*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
Knsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance/readIdentityFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance*
_output_shapes	
:?*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance
?
Ensfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/FusedBatchNormFusedBatchNorm)nsfw_cls_model/resnet_block_layer_3/add_5Ansfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/read@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/readGnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean/readKnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance/read*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:
?
<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
8nsfw_cls_model/resnet_block_layer_4/init_block_fn/relu_1ReluEnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/FusedBatchNorm*'
_output_shapes
:?*
T0
?
bnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/fix_padding/pad/Pad/paddingsConst*
dtype0*
_output_shapes

:*9
value0B."                                 
?
Ynsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/fix_padding/pad/PadPad8nsfw_cls_model/resnet_block_layer_4/init_block_fn/relu_1bnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/fix_padding/pad/Pad/paddings*
T0*
	Tpaddings0*'
_output_shapes
:?
?
onsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/shapeConst*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
nnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/meanConst*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
pnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*
valueB
 *?d?=
?
ynsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalonsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:??*

seed *
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*
seed2 
?
mnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/mulMulynsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/TruncatedNormalpnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/stddev*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*(
_output_shapes
:??
?
insfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normalAddmnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/mulnnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal/mean*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*(
_output_shapes
:??
?
Lnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W
VariableV2*
	container *
shape:??*
dtype0*(
_output_shapes
:??*
shared_name *_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W
?
Snsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/AssignAssignLnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/Winsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal*
use_locking(*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*
validate_shape(*(
_output_shapes
:??
?
Qnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/readIdentityLnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*(
_output_shapes
:??
?
Qnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/Conv2DConv2DYnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/fix_padding/pad/PadQnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/read*
paddingVALID*'
_output_shapes
:?*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
Onsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/convIdentityQnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/Conv2D*'
_output_shapes
:?*
T0
?
Ynsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/fix_padding/pad/Pad/paddingsConst*9
value0B."                             *
dtype0*
_output_shapes

:
?
Pnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/fix_padding/pad/PadPad8nsfw_cls_model/resnet_block_layer_4/init_block_fn/relu_1Ynsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/fix_padding/pad/Pad/paddings*
T0*
	Tpaddings0*'
_output_shapes
:?
?
fnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
ensfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
gnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W*
valueB
 *??	=*
dtype0*
_output_shapes
: 
?
pnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalfnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/shape*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W*
seed2 *
dtype0*(
_output_shapes
:??*

seed 
?
dnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulpnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalgnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W*(
_output_shapes
:??
?
`nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normalAdddnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/mulensfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal/mean*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W*(
_output_shapes
:??
?
Cnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W
VariableV2*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??
?
Jnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/AssignAssignCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W`nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
Hnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/readIdentityCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W*(
_output_shapes
:??*
T0
?
Hnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/Conv2DConv2DPnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/fix_padding/pad/PadHnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:?
?
Fnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/convIdentityHnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/Conv2D*'
_output_shapes
:?*
T0
?
Mnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/Initializer/onesConst*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma*
	container *
shape:?
?
Cnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/AssignAssign<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gammaMnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/Initializer/ones*
_output_shapes	
:?*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma*
validate_shape(
?
Ansfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/readIdentity<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma*
_output_shapes	
:?*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma
?
Mnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/Initializer/zerosConst*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta
VariableV2*
shared_name *N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/AssignAssign;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/betaMnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta
?
@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/readIdentity;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean/Initializer/zerosConst*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean*
	container *
shape:?
?
Insfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean/AssignAssignBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_meanTnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean/Initializer/zeros*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
Gnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean/readIdentityBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean*
_output_shapes	
:?
?
Wnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance/Initializer/onesConst*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Fnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance*
	container *
shape:?
?
Mnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance/AssignAssignFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_varianceWnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance/Initializer/ones*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Knsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance/readIdentityFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance*
_output_shapes	
:?
?
Ensfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/FusedBatchNormFusedBatchNormFnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/convAnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/read@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/readGnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean/readKnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
?
<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
8nsfw_cls_model/resnet_block_layer_4/init_block_fn/relu_2ReluEnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/FusedBatchNorm*
T0*'
_output_shapes
:?
?
fnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
ensfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W*
valueB
 *    
?
gnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W*
valueB
 *??<*
dtype0*
_output_shapes
: 
?
pnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalfnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/shape*

seed *
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W*
seed2 *
dtype0*(
_output_shapes
:??
?
dnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulpnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalgnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W*(
_output_shapes
:??
?
`nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normalAdddnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/mulensfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal/mean*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W*(
_output_shapes
:??
?
Cnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W
VariableV2*
dtype0*(
_output_shapes
:??*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W*
	container *
shape:??
?
Jnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/AssignAssignCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W`nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
Hnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/readIdentityCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W*(
_output_shapes
:??
?
Hnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/Conv2DConv2D8nsfw_cls_model/resnet_block_layer_4/init_block_fn/relu_2Hnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/read*'
_output_shapes
:?*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
Fnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/convIdentityHnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/Conv2D*'
_output_shapes
:?*
T0
?
'nsfw_cls_model/resnet_block_layer_4/addAddFnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/convOnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/conv*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma*
	container 
?
@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gammaJnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/Initializer/ones*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
>nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta*
valueB?*    
?
8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta*
	container *
shape:?
?
?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/betaJnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/Initializer/zeros*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
=nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/readIdentity8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta*
_output_shapes	
:?*
T0
?
Qnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean
VariableV2*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
Fnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_meanQnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean/Initializer/zeros*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
Dnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean*
_output_shapes	
:?*
T0
?
Tnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:?*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance*
valueB?*  ??
?
Cnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance
?
Jnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_varianceTnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance/Initializer/ones*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Hnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance*
_output_shapes	
:?*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance
?
Bnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/FusedBatchNormFusedBatchNorm'nsfw_cls_model/resnet_block_layer_4/add>nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/read=nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/readDnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean/readHnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance/read*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:
~
9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_4/block_fn_1/relu_1ReluBnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/FusedBatchNorm*
T0*'
_output_shapes
:?
?
cnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W*
valueB
 *??<
?
mnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*(
_output_shapes
:??*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W
?
ansfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W
?
]nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W*(
_output_shapes
:??
?
@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W
VariableV2*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??
?
Gnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W]nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_4/block_fn_1/relu_1Ensfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:?*
	dilations
*
T0
?
Cnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/convIdentityEnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/Conv2D*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma*
	container 
?
@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gammaJnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/Initializer/ones*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
>nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta*
	container 
?
?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/betaJnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/Initializer/zeros*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
=nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/readIdentity8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta*
_output_shapes	
:?
?
Qnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean*
valueB?*    
?
?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean*
	container *
shape:?
?
Fnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_meanQnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean/Initializer/zeros*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
Dnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:?*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance*
valueB?*  ??
?
Cnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance*
	container *
shape:?
?
Jnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_varianceTnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance/Initializer/ones*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Hnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance*
_output_shapes	
:?*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance
?
Bnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/FusedBatchNormFusedBatchNormCnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/conv>nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/read=nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/readDnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean/readHnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance/read*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:
~
9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/ConstConst*
_output_shapes
: *
valueB
 *w??*
dtype0
?
5nsfw_cls_model/resnet_block_layer_4/block_fn_1/relu_2ReluBnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/FusedBatchNorm*
T0*'
_output_shapes
:?
?
cnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W*
valueB
 *??<*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*(
_output_shapes
:??*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W
?
ansfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal/mean*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W*(
_output_shapes
:??*
T0
?
@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W
VariableV2*
dtype0*(
_output_shapes
:??*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W*
	container *
shape:??
?
Gnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W]nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0
?
Ensfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W
?
Ensfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_4/block_fn_1/relu_2Ensfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:?*
	dilations

?
Cnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/convIdentityEnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/Conv2D*'
_output_shapes
:?*
T0
?
)nsfw_cls_model/resnet_block_layer_4/add_1AddCnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/conv'nsfw_cls_model/resnet_block_layer_4/add*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma*
	container 
?
@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gammaJnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/Initializer/ones*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
>nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma*
_output_shapes	
:?*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma
?
Jnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/Initializer/zerosConst*
_output_shapes	
:?*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta*
valueB?*    *
dtype0
?
8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta
VariableV2*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/betaJnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta
?
=nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/readIdentity8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta*
_output_shapes	
:?
?
Qnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean/Initializer/zerosConst*
_output_shapes	
:?*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean*
valueB?*    *
dtype0
?
?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean
VariableV2*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
Fnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_meanQnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean/Initializer/zeros*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean*
validate_shape(
?
Dnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance
VariableV2*
_output_shapes	
:?*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance*
	container *
shape:?*
dtype0
?
Jnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_varianceTnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance/Initializer/ones*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
Hnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/FusedBatchNormFusedBatchNorm)nsfw_cls_model/resnet_block_layer_4/add_1>nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/read=nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/readDnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean/readHnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
~
9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_4/block_fn_2/relu_1ReluBnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/FusedBatchNorm*
T0*'
_output_shapes
:?
?
cnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/stddevConst*
_output_shapes
: *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W*
valueB
 *??<*
dtype0
?
mnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:??*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W*
seed2 
?
ansfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/stddev*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W*(
_output_shapes
:??
?
]nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal/mean*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W*(
_output_shapes
:??*
T0
?
@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W
VariableV2*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W*
	container *
shape:??*
dtype0*(
_output_shapes
:??
?
Gnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W]nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W
?
Ensfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_4/block_fn_2/relu_1Ensfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:?*
	dilations
*
T0
?
Cnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/convIdentityEnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/Conv2D*
T0*'
_output_shapes
:?
?
Jnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/Initializer/onesConst*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma
VariableV2*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/AssignAssign9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gammaJnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/Initializer/ones*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
>nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/readIdentity9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma*
_output_shapes	
:?
?
Jnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/Initializer/zerosConst*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta*
valueB?*    *
dtype0*
_output_shapes	
:?
?
8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta*
	container *
shape:?
?
?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/AssignAssign8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/betaJnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/Initializer/zeros*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
=nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/readIdentity8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta*
_output_shapes	
:?*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta
?
Qnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean/Initializer/zerosConst*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean*
	container *
shape:?
?
Fnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean/AssignAssign?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_meanQnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean/Initializer/zeros*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
Dnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean/readIdentity?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean*
_output_shapes	
:?
?
Tnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance/Initializer/onesConst*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Cnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance*
	container *
shape:?
?
Jnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance/AssignAssignCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_varianceTnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance/Initializer/ones*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
Hnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance/readIdentityCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance*
_output_shapes	
:?
?
Bnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/FusedBatchNormFusedBatchNormCnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/conv>nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/read=nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/readDnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean/readHnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance/read*C
_output_shapes1
/:?:?:?:?:?*
is_training( *
epsilon%o?:*
T0*
data_formatNHWC
~
9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
5nsfw_cls_model/resnet_block_layer_4/block_fn_2/relu_2ReluBnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/FusedBatchNorm*'
_output_shapes
:?*
T0
?
cnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/shapeConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W*%
valueB"            *
dtype0*
_output_shapes
:
?
bnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/meanConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/stddevConst*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W*
valueB
 *??<*
dtype0*
_output_shapes
: 
?
mnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*(
_output_shapes
:??*

seed *
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W
?
ansfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/mulMulmnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/TruncatedNormaldnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/stddev*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W
?
]nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normalAddansfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/mulbnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal/mean*(
_output_shapes
:??*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W
?
@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W
VariableV2*(
_output_shapes
:??*
shared_name *S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W*
	container *
shape:??*
dtype0
?
Gnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/AssignAssign@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W]nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/readIdentity@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W*(
_output_shapes
:??
?
Ensfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/Conv2DConv2D5nsfw_cls_model/resnet_block_layer_4/block_fn_2/relu_2Ensfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/read*'
_output_shapes
:?*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
Cnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/convIdentityEnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/Conv2D*'
_output_shapes
:?*
T0
?
)nsfw_cls_model/resnet_block_layer_4/add_2AddCnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/conv)nsfw_cls_model/resnet_block_layer_4/add_1*
T0*'
_output_shapes
:?
?
:nsfw_cls_model/bn_after_block_layer/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:?*<
_class2
0.loc:@nsfw_cls_model/bn_after_block_layer/gamma*
valueB?*  ??
?
)nsfw_cls_model/bn_after_block_layer/gamma
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *<
_class2
0.loc:@nsfw_cls_model/bn_after_block_layer/gamma*
	container *
shape:?
?
0nsfw_cls_model/bn_after_block_layer/gamma/AssignAssign)nsfw_cls_model/bn_after_block_layer/gamma:nsfw_cls_model/bn_after_block_layer/gamma/Initializer/ones*
_output_shapes	
:?*
use_locking(*
T0*<
_class2
0.loc:@nsfw_cls_model/bn_after_block_layer/gamma*
validate_shape(
?
.nsfw_cls_model/bn_after_block_layer/gamma/readIdentity)nsfw_cls_model/bn_after_block_layer/gamma*
T0*<
_class2
0.loc:@nsfw_cls_model/bn_after_block_layer/gamma*
_output_shapes	
:?
?
:nsfw_cls_model/bn_after_block_layer/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*;
_class1
/-loc:@nsfw_cls_model/bn_after_block_layer/beta*
valueB?*    
?
(nsfw_cls_model/bn_after_block_layer/beta
VariableV2*
_output_shapes	
:?*
shared_name *;
_class1
/-loc:@nsfw_cls_model/bn_after_block_layer/beta*
	container *
shape:?*
dtype0
?
/nsfw_cls_model/bn_after_block_layer/beta/AssignAssign(nsfw_cls_model/bn_after_block_layer/beta:nsfw_cls_model/bn_after_block_layer/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@nsfw_cls_model/bn_after_block_layer/beta*
validate_shape(*
_output_shapes	
:?
?
-nsfw_cls_model/bn_after_block_layer/beta/readIdentity(nsfw_cls_model/bn_after_block_layer/beta*
T0*;
_class1
/-loc:@nsfw_cls_model/bn_after_block_layer/beta*
_output_shapes	
:?
?
Ansfw_cls_model/bn_after_block_layer/moving_mean/Initializer/zerosConst*B
_class8
64loc:@nsfw_cls_model/bn_after_block_layer/moving_mean*
valueB?*    *
dtype0*
_output_shapes	
:?
?
/nsfw_cls_model/bn_after_block_layer/moving_mean
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *B
_class8
64loc:@nsfw_cls_model/bn_after_block_layer/moving_mean
?
6nsfw_cls_model/bn_after_block_layer/moving_mean/AssignAssign/nsfw_cls_model/bn_after_block_layer/moving_meanAnsfw_cls_model/bn_after_block_layer/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@nsfw_cls_model/bn_after_block_layer/moving_mean*
validate_shape(*
_output_shapes	
:?
?
4nsfw_cls_model/bn_after_block_layer/moving_mean/readIdentity/nsfw_cls_model/bn_after_block_layer/moving_mean*
T0*B
_class8
64loc:@nsfw_cls_model/bn_after_block_layer/moving_mean*
_output_shapes	
:?
?
Dnsfw_cls_model/bn_after_block_layer/moving_variance/Initializer/onesConst*
_output_shapes	
:?*F
_class<
:8loc:@nsfw_cls_model/bn_after_block_layer/moving_variance*
valueB?*  ??*
dtype0
?
3nsfw_cls_model/bn_after_block_layer/moving_variance
VariableV2*
shared_name *F
_class<
:8loc:@nsfw_cls_model/bn_after_block_layer/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
:nsfw_cls_model/bn_after_block_layer/moving_variance/AssignAssign3nsfw_cls_model/bn_after_block_layer/moving_varianceDnsfw_cls_model/bn_after_block_layer/moving_variance/Initializer/ones*
_output_shapes	
:?*
use_locking(*
T0*F
_class<
:8loc:@nsfw_cls_model/bn_after_block_layer/moving_variance*
validate_shape(
?
8nsfw_cls_model/bn_after_block_layer/moving_variance/readIdentity3nsfw_cls_model/bn_after_block_layer/moving_variance*
T0*F
_class<
:8loc:@nsfw_cls_model/bn_after_block_layer/moving_variance*
_output_shapes	
:?
?
2nsfw_cls_model/bn_after_block_layer/FusedBatchNormFusedBatchNorm)nsfw_cls_model/resnet_block_layer_4/add_2.nsfw_cls_model/bn_after_block_layer/gamma/read-nsfw_cls_model/bn_after_block_layer/beta/read4nsfw_cls_model/bn_after_block_layer/moving_mean/read8nsfw_cls_model/bn_after_block_layer/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*C
_output_shapes1
/:?:?:?:?:?*
is_training( 
n
)nsfw_cls_model/bn_after_block_layer/ConstConst*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
%nsfw_cls_model/relu_after_block_layerRelu2nsfw_cls_model/bn_after_block_layer/FusedBatchNorm*
T0*'
_output_shapes
:?
?
2nsfw_cls_model/final_reduce_mean/reduction_indicesConst*
_output_shapes
:*
valueB"      *
dtype0
?
 nsfw_cls_model/final_reduce_meanMean%nsfw_cls_model/relu_after_block_layer2nsfw_cls_model/final_reduce_mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:?
?
nsfw_cls_model/final_squeezeSqueeze nsfw_cls_model/final_reduce_mean*
squeeze_dims
*
T0*
_output_shapes
:	?
m
nsfw_cls_model/Reshape/shapeConst*
_output_shapes
:*
valueB"????   *
dtype0
?
nsfw_cls_model/ReshapeReshapensfw_cls_model/final_squeezensfw_cls_model/Reshape/shape*
T0*
Tshape0*
_output_shapes
:	?
?
Ensfw_cls_model/final_logits/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*5
_class+
)'loc:@nsfw_cls_model/final_logits/kernel*
valueB"      *
dtype0
?
Dnsfw_cls_model/final_logits/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *5
_class+
)'loc:@nsfw_cls_model/final_logits/kernel*
valueB
 *    
?
Fnsfw_cls_model/final_logits/kernel/Initializer/truncated_normal/stddevConst*5
_class+
)'loc:@nsfw_cls_model/final_logits/kernel*
valueB
 *E??=*
dtype0*
_output_shapes
: 
?
Onsfw_cls_model/final_logits/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEnsfw_cls_model/final_logits/kernel/Initializer/truncated_normal/shape*
T0*5
_class+
)'loc:@nsfw_cls_model/final_logits/kernel*
seed2 *
dtype0*
_output_shapes
:	?*

seed 
?
Cnsfw_cls_model/final_logits/kernel/Initializer/truncated_normal/mulMulOnsfw_cls_model/final_logits/kernel/Initializer/truncated_normal/TruncatedNormalFnsfw_cls_model/final_logits/kernel/Initializer/truncated_normal/stddev*
T0*5
_class+
)'loc:@nsfw_cls_model/final_logits/kernel*
_output_shapes
:	?
?
?nsfw_cls_model/final_logits/kernel/Initializer/truncated_normalAddCnsfw_cls_model/final_logits/kernel/Initializer/truncated_normal/mulDnsfw_cls_model/final_logits/kernel/Initializer/truncated_normal/mean*
T0*5
_class+
)'loc:@nsfw_cls_model/final_logits/kernel*
_output_shapes
:	?
?
"nsfw_cls_model/final_logits/kernel
VariableV2*
_output_shapes
:	?*
shared_name *5
_class+
)'loc:@nsfw_cls_model/final_logits/kernel*
	container *
shape:	?*
dtype0
?
)nsfw_cls_model/final_logits/kernel/AssignAssign"nsfw_cls_model/final_logits/kernel?nsfw_cls_model/final_logits/kernel/Initializer/truncated_normal*
use_locking(*
T0*5
_class+
)'loc:@nsfw_cls_model/final_logits/kernel*
validate_shape(*
_output_shapes
:	?
?
'nsfw_cls_model/final_logits/kernel/readIdentity"nsfw_cls_model/final_logits/kernel*
T0*5
_class+
)'loc:@nsfw_cls_model/final_logits/kernel*
_output_shapes
:	?
?
"nsfw_cls_model/final_logits/MatMulMatMulnsfw_cls_model/Reshape'nsfw_cls_model/final_logits/kernel/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
{
"nsfw_cls_model/final_logits/outputIdentity"nsfw_cls_model/final_logits/MatMul*
_output_shapes

:*
T0
w
nsfw_cls_model/final_predictionSoftmax"nsfw_cls_model/final_logits/output*
_output_shapes

:*
T0
P

save/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
?i
save/SaveV2/tensor_namesConst*?i
value?iB?i?BAnsfw_cls_model/bn_after_block_layer/beta/ExponentialMovingAverageBBnsfw_cls_model/bn_after_block_layer/gamma/ExponentialMovingAverageB/nsfw_cls_model/bn_after_block_layer/moving_meanB3nsfw_cls_model/bn_after_block_layer/moving_varianceB;nsfw_cls_model/final_logits/kernel/ExponentialMovingAverageB?nsfw_cls_model/initial_conv_pad/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/ExponentialMovingAverageBTnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_varianceBTnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_varianceB\nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/ExponentialMovingAverageB\nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/ExponentialMovingAverageBensfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/ExponentialMovingAverageBTnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_varianceBTnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_varianceB\nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/ExponentialMovingAverageB\nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/ExponentialMovingAverageBensfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/ExponentialMovingAverageBTnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_varianceBTnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_varianceB\nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/ExponentialMovingAverageB\nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/ExponentialMovingAverageBensfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/ExponentialMovingAverageBTnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_varianceBTnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_varianceB\nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/ExponentialMovingAverageB\nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/ExponentialMovingAverageBensfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/ExponentialMovingAverage*
dtype0*
_output_shapes	
:?
?
save/SaveV2/shape_and_slicesConst*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:?
?V
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices(nsfw_cls_model/bn_after_block_layer/beta)nsfw_cls_model/bn_after_block_layer/gamma/nsfw_cls_model/bn_after_block_layer/moving_mean3nsfw_cls_model/bn_after_block_layer/moving_variance"nsfw_cls_model/final_logits/kernel&nsfw_cls_model/initial_conv_pad/conv/W8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gammaBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_meanFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gammaBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_meanFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_varianceCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/WCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/WLnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gammaBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_meanFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gammaBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_meanFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_varianceCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/WCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/WLnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gammaBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_meanFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gammaBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_meanFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_varianceCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/WCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/WLnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gammaBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_meanFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gammaBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_meanFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_varianceCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/WCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/WLnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*?
dtypes?
?2?
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
_output_shapes
: *
T0
?i
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*?i
value?iB?i?BAnsfw_cls_model/bn_after_block_layer/beta/ExponentialMovingAverageBBnsfw_cls_model/bn_after_block_layer/gamma/ExponentialMovingAverageB/nsfw_cls_model/bn_after_block_layer/moving_meanB3nsfw_cls_model/bn_after_block_layer/moving_varianceB;nsfw_cls_model/final_logits/kernel/ExponentialMovingAverageB?nsfw_cls_model/initial_conv_pad/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/ExponentialMovingAverageBTnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_varianceBTnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_varianceB\nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/ExponentialMovingAverageB\nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/ExponentialMovingAverageBensfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/ExponentialMovingAverageBTnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_varianceBTnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_varianceB\nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/ExponentialMovingAverageB\nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/ExponentialMovingAverageBensfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/ExponentialMovingAverageBTnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_varianceBTnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_varianceB\nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/ExponentialMovingAverageB\nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/ExponentialMovingAverageBensfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/ExponentialMovingAverageBQnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_varianceBQnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/ExponentialMovingAverageBRnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/ExponentialMovingAverageB?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_varianceBYnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/ExponentialMovingAverageBYnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/ExponentialMovingAverageBTnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_varianceBTnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/ExponentialMovingAverageBUnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/ExponentialMovingAverageBBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_varianceB\nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/ExponentialMovingAverageB\nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/ExponentialMovingAverageBensfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/ExponentialMovingAverage*
dtype0
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:?
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*?
dtypes?
?2?*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
?
save/AssignAssign(nsfw_cls_model/bn_after_block_layer/betasave/RestoreV2*
use_locking(*
T0*;
_class1
/-loc:@nsfw_cls_model/bn_after_block_layer/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_1Assign)nsfw_cls_model/bn_after_block_layer/gammasave/RestoreV2:1*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*<
_class2
0.loc:@nsfw_cls_model/bn_after_block_layer/gamma
?
save/Assign_2Assign/nsfw_cls_model/bn_after_block_layer/moving_meansave/RestoreV2:2*
use_locking(*
T0*B
_class8
64loc:@nsfw_cls_model/bn_after_block_layer/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_3Assign3nsfw_cls_model/bn_after_block_layer/moving_variancesave/RestoreV2:3*
_output_shapes	
:?*
use_locking(*
T0*F
_class<
:8loc:@nsfw_cls_model/bn_after_block_layer/moving_variance*
validate_shape(
?
save/Assign_4Assign"nsfw_cls_model/final_logits/kernelsave/RestoreV2:4*
use_locking(*
T0*5
_class+
)'loc:@nsfw_cls_model/final_logits/kernel*
validate_shape(*
_output_shapes
:	?
?
save/Assign_5Assign&nsfw_cls_model/initial_conv_pad/conv/Wsave/RestoreV2:5*
use_locking(*
T0*9
_class/
-+loc:@nsfw_cls_model/initial_conv_pad/conv/W*
validate_shape(*&
_output_shapes
:@
?
save/Assign_6Assign8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/betasave/RestoreV2:6*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta*
validate_shape(*
_output_shapes
:@
?
save/Assign_7Assign9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gammasave/RestoreV2:7*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
save/Assign_8Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_meansave/RestoreV2:8*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean*
validate_shape(*
_output_shapes
:@
?
save/Assign_9AssignCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variancesave/RestoreV2:9*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance
?
save/Assign_10Assign8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/betasave/RestoreV2:10*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta
?
save/Assign_11Assign9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gammasave/RestoreV2:11*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma*
validate_shape(*
_output_shapes
:@
?
save/Assign_12Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_meansave/RestoreV2:12*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean*
validate_shape(*
_output_shapes
:@
?
save/Assign_13AssignCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variancesave/RestoreV2:13*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance
?
save/Assign_14Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/Wsave/RestoreV2:14*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0
?
save/Assign_15Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/Wsave/RestoreV2:15*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W
?
save/Assign_16Assign8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/betasave/RestoreV2:16*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta*
validate_shape(*
_output_shapes
:@
?
save/Assign_17Assign9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gammasave/RestoreV2:17*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma*
validate_shape(*
_output_shapes
:@
?
save/Assign_18Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_meansave/RestoreV2:18*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean*
validate_shape(*
_output_shapes
:@
?
save/Assign_19AssignCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variancesave/RestoreV2:19*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
?
save/Assign_20Assign8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/betasave/RestoreV2:20*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta*
validate_shape(*
_output_shapes
:@
?
save/Assign_21Assign9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gammasave/RestoreV2:21*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma*
validate_shape(*
_output_shapes
:@
?
save/Assign_22Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_meansave/RestoreV2:22*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean*
validate_shape(*
_output_shapes
:@
?
save/Assign_23AssignCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variancesave/RestoreV2:23*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance*
validate_shape(*
_output_shapes
:@
?
save/Assign_24Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/Wsave/RestoreV2:24*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W*
validate_shape(*&
_output_shapes
:@@
?
save/Assign_25Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/Wsave/RestoreV2:25*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0
?
save/Assign_26Assign;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/betasave/RestoreV2:26*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta
?
save/Assign_27Assign<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gammasave/RestoreV2:27*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma*
validate_shape(*
_output_shapes
:@
?
save/Assign_28AssignBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_meansave/RestoreV2:28*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
?
save/Assign_29AssignFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variancesave/RestoreV2:29*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance*
validate_shape(*
_output_shapes
:@
?
save/Assign_30Assign;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/betasave/RestoreV2:30*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta*
validate_shape(*
_output_shapes
:@
?
save/Assign_31Assign<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gammasave/RestoreV2:31*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma*
validate_shape(*
_output_shapes
:@
?
save/Assign_32AssignBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_meansave/RestoreV2:32*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean*
validate_shape(*
_output_shapes
:@
?
save/Assign_33AssignFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variancesave/RestoreV2:33*
_output_shapes
:@*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance*
validate_shape(
?
save/Assign_34AssignCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/Wsave/RestoreV2:34*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W*
validate_shape(*&
_output_shapes
:@@
?
save/Assign_35AssignCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/Wsave/RestoreV2:35*&
_output_shapes
:@@*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W*
validate_shape(
?
save/Assign_36AssignLnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/Wsave/RestoreV2:36*&
_output_shapes
:@@*
use_locking(*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W*
validate_shape(
?
save/Assign_37Assign8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/betasave/RestoreV2:37*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_38Assign9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gammasave/RestoreV2:38*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma
?
save/Assign_39Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_meansave/RestoreV2:39*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_40AssignCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variancesave/RestoreV2:40*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_41Assign8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/betasave/RestoreV2:41*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_42Assign9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gammasave/RestoreV2:42*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_43Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_meansave/RestoreV2:43*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_44AssignCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variancesave/RestoreV2:44*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_45Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/Wsave/RestoreV2:45*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W*
validate_shape(
?
save/Assign_46Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/Wsave/RestoreV2:46*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W*
validate_shape(
?
save/Assign_47Assign8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/betasave/RestoreV2:47*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta
?
save/Assign_48Assign9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gammasave/RestoreV2:48*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_49Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_meansave/RestoreV2:49*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_50AssignCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variancesave/RestoreV2:50*
_output_shapes	
:?*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance*
validate_shape(
?
save/Assign_51Assign8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/betasave/RestoreV2:51*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_52Assign9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gammasave/RestoreV2:52*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_53Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_meansave/RestoreV2:53*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_54AssignCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variancesave/RestoreV2:54*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_55Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/Wsave/RestoreV2:55*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
save/Assign_56Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/Wsave/RestoreV2:56*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
save/Assign_57Assign8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/betasave/RestoreV2:57*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_58Assign9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gammasave/RestoreV2:58*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_59Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_meansave/RestoreV2:59*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_60AssignCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variancesave/RestoreV2:60*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_61Assign8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/betasave/RestoreV2:61*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta*
validate_shape(
?
save/Assign_62Assign9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gammasave/RestoreV2:62*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_63Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_meansave/RestoreV2:63*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean
?
save/Assign_64AssignCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variancesave/RestoreV2:64*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_65Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/Wsave/RestoreV2:65*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W
?
save/Assign_66Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/Wsave/RestoreV2:66*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W
?
save/Assign_67Assign;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/betasave/RestoreV2:67*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta*
validate_shape(*
_output_shapes
:@
?
save/Assign_68Assign<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gammasave/RestoreV2:68*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma*
validate_shape(*
_output_shapes
:@
?
save/Assign_69AssignBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_meansave/RestoreV2:69*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean*
validate_shape(*
_output_shapes
:@
?
save/Assign_70AssignFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variancesave/RestoreV2:70*
_output_shapes
:@*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance*
validate_shape(
?
save/Assign_71Assign;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/betasave/RestoreV2:71*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_72Assign<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gammasave/RestoreV2:72*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_73AssignBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_meansave/RestoreV2:73*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_74AssignFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variancesave/RestoreV2:74*
_output_shapes	
:?*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance*
validate_shape(
?
save/Assign_75AssignCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/Wsave/RestoreV2:75*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W*
validate_shape(*'
_output_shapes
:@?*
use_locking(*
T0
?
save/Assign_76AssignCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/Wsave/RestoreV2:76*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
save/Assign_77AssignLnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/Wsave/RestoreV2:77*
use_locking(*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W*
validate_shape(*'
_output_shapes
:@?
?
save/Assign_78Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/betasave/RestoreV2:78*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_79Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gammasave/RestoreV2:79*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma
?
save/Assign_80Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_meansave/RestoreV2:80*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_81AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variancesave/RestoreV2:81*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_82Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/betasave/RestoreV2:82*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta*
validate_shape(
?
save/Assign_83Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gammasave/RestoreV2:83*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_84Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_meansave/RestoreV2:84*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_85AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variancesave/RestoreV2:85*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_86Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/Wsave/RestoreV2:86*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
save/Assign_87Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/Wsave/RestoreV2:87*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
save/Assign_88Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/betasave/RestoreV2:88*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_89Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gammasave/RestoreV2:89*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_90Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_meansave/RestoreV2:90*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_91AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variancesave/RestoreV2:91*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_92Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/betasave/RestoreV2:92*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta*
validate_shape(
?
save/Assign_93Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gammasave/RestoreV2:93*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_94Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_meansave/RestoreV2:94*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_95AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variancesave/RestoreV2:95*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_96Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/Wsave/RestoreV2:96*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
save/Assign_97Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/Wsave/RestoreV2:97*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W
?
save/Assign_98Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/betasave/RestoreV2:98*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta*
validate_shape(
?
save/Assign_99Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gammasave/RestoreV2:99*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma
?
save/Assign_100Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_meansave/RestoreV2:100*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_101AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variancesave/RestoreV2:101*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_102Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/betasave/RestoreV2:102*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_103Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gammasave/RestoreV2:103*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma
?
save/Assign_104Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_meansave/RestoreV2:104*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_105AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variancesave/RestoreV2:105*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_106Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/Wsave/RestoreV2:106*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W*
validate_shape(
?
save/Assign_107Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/Wsave/RestoreV2:107*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0
?
save/Assign_108Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/betasave/RestoreV2:108*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_109Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gammasave/RestoreV2:109*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_110Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_meansave/RestoreV2:110*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_111AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variancesave/RestoreV2:111*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_112Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/betasave/RestoreV2:112*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta*
validate_shape(
?
save/Assign_113Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gammasave/RestoreV2:113*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_114Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_meansave/RestoreV2:114*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean
?
save/Assign_115AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variancesave/RestoreV2:115*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_116Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/Wsave/RestoreV2:116*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
save/Assign_117Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/Wsave/RestoreV2:117*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
save/Assign_118Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/betasave/RestoreV2:118*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_119Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gammasave/RestoreV2:119*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_120Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_meansave/RestoreV2:120*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean*
validate_shape(
?
save/Assign_121AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variancesave/RestoreV2:121*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_122Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/betasave/RestoreV2:122*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_123Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gammasave/RestoreV2:123*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_124Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_meansave/RestoreV2:124*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_125AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variancesave/RestoreV2:125*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_126Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/Wsave/RestoreV2:126*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0
?
save/Assign_127Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/Wsave/RestoreV2:127*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
save/Assign_128Assign;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/betasave/RestoreV2:128*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_129Assign<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gammasave/RestoreV2:129*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_130AssignBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_meansave/RestoreV2:130*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_131AssignFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variancesave/RestoreV2:131*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_132Assign;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/betasave/RestoreV2:132*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_133Assign<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gammasave/RestoreV2:133*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_134AssignBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_meansave/RestoreV2:134*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean
?
save/Assign_135AssignFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variancesave/RestoreV2:135*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_136AssignCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/Wsave/RestoreV2:136*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
save/Assign_137AssignCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/Wsave/RestoreV2:137*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
save/Assign_138AssignLnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/Wsave/RestoreV2:138*(
_output_shapes
:??*
use_locking(*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W*
validate_shape(
?
save/Assign_139Assign8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/betasave/RestoreV2:139*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_140Assign9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gammasave/RestoreV2:140*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_141Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_meansave/RestoreV2:141*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_142AssignCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variancesave/RestoreV2:142*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_143Assign8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/betasave/RestoreV2:143*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_144Assign9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gammasave/RestoreV2:144*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma*
validate_shape(
?
save/Assign_145Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_meansave/RestoreV2:145*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_146AssignCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variancesave/RestoreV2:146*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_147Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/Wsave/RestoreV2:147*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0
?
save/Assign_148Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/Wsave/RestoreV2:148*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0
?
save/Assign_149Assign8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/betasave/RestoreV2:149*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_150Assign9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gammasave/RestoreV2:150*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_151Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_meansave/RestoreV2:151*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean*
validate_shape(
?
save/Assign_152AssignCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variancesave/RestoreV2:152*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_153Assign8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/betasave/RestoreV2:153*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_154Assign9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gammasave/RestoreV2:154*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_155Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_meansave/RestoreV2:155*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_156AssignCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variancesave/RestoreV2:156*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_157Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/Wsave/RestoreV2:157*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
save/Assign_158Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/Wsave/RestoreV2:158*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W*
validate_shape(
?
save/Assign_159Assign;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/betasave/RestoreV2:159*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta
?
save/Assign_160Assign<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gammasave/RestoreV2:160*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_161AssignBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_meansave/RestoreV2:161*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_162AssignFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variancesave/RestoreV2:162*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance
?
save/Assign_163Assign;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/betasave/RestoreV2:163*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_164Assign<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gammasave/RestoreV2:164*
_output_shapes	
:?*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma*
validate_shape(
?
save/Assign_165AssignBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_meansave/RestoreV2:165*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_166AssignFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variancesave/RestoreV2:166*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance
?
save/Assign_167AssignCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/Wsave/RestoreV2:167*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
save/Assign_168AssignCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/Wsave/RestoreV2:168*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W
?
save/Assign_169AssignLnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/Wsave/RestoreV2:169*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_12^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_13^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_134^save/Assign_135^save/Assign_136^save/Assign_137^save/Assign_138^save/Assign_139^save/Assign_14^save/Assign_140^save/Assign_141^save/Assign_142^save/Assign_143^save/Assign_144^save/Assign_145^save/Assign_146^save/Assign_147^save/Assign_148^save/Assign_149^save/Assign_15^save/Assign_150^save/Assign_151^save/Assign_152^save/Assign_153^save/Assign_154^save/Assign_155^save/Assign_156^save/Assign_157^save/Assign_158^save/Assign_159^save/Assign_16^save/Assign_160^save/Assign_161^save/Assign_162^save/Assign_163^save/Assign_164^save/Assign_165^save/Assign_166^save/Assign_167^save/Assign_168^save/Assign_169^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_74ccc1f023eb4fb2a8a27a226a09dd4a/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
?
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
?U
save_1/SaveV2/tensor_namesConst"/device:CPU:0*?T
value?TB?T?B(nsfw_cls_model/bn_after_block_layer/betaB)nsfw_cls_model/bn_after_block_layer/gammaB/nsfw_cls_model/bn_after_block_layer/moving_meanB3nsfw_cls_model/bn_after_block_layer/moving_varianceB"nsfw_cls_model/final_logits/kernelB&nsfw_cls_model/initial_conv_pad/conv/WB8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/betaB9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/betaB9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/betaB9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/betaB9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/WB;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/betaB<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gammaBBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_varianceB;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/betaB<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gammaBBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_varianceBCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/WBCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/WBLnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/WB8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/betaB9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/betaB9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/betaB9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/betaB9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/betaB9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/betaB9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/WB;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/betaB<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gammaBBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_varianceB;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/betaB<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gammaBBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_varianceBCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/WBCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/WBLnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/WB8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/WB;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/betaB<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gammaBBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_varianceB;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/betaB<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gammaBBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_varianceBCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/WBCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/WBLnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/WB8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/betaB9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/betaB9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/betaB9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/betaB9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/WB;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/betaB<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gammaBBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_varianceB;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/betaB<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gammaBBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_varianceBCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/WBCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/WBLnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*
dtype0*
_output_shapes	
:?
?
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:?
?W
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices(nsfw_cls_model/bn_after_block_layer/beta)nsfw_cls_model/bn_after_block_layer/gamma/nsfw_cls_model/bn_after_block_layer/moving_mean3nsfw_cls_model/bn_after_block_layer/moving_variance"nsfw_cls_model/final_logits/kernel&nsfw_cls_model/initial_conv_pad/conv/W8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gammaBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_meanFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gammaBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_meanFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_varianceCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/WCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/WLnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gammaBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_meanFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gammaBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_meanFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_varianceCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/WCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/WLnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gammaBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_meanFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gammaBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_meanFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_varianceCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/WCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/WLnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_meanCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_meanCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gammaBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_meanFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gammaBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_meanFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_varianceCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/WCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/WLnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W"/device:CPU:0*?
dtypes?
?2?
?
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
?
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
?
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
?
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?U
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*?T
value?TB?T?B(nsfw_cls_model/bn_after_block_layer/betaB)nsfw_cls_model/bn_after_block_layer/gammaB/nsfw_cls_model/bn_after_block_layer/moving_meanB3nsfw_cls_model/bn_after_block_layer/moving_varianceB"nsfw_cls_model/final_logits/kernelB&nsfw_cls_model/initial_conv_pad/conv/WB8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/betaB9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/betaB9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/betaB9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/betaB9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/WB;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/betaB<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gammaBBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_varianceB;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/betaB<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gammaBBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_varianceBCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/WBCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/WBLnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/WB8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/betaB9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/betaB9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/betaB9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/betaB9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/betaB9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/betaB9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/WB;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/betaB<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gammaBBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_varianceB;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/betaB<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gammaBBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_varianceBCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/WBCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/WBLnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/WB8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/betaB9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/WB;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/betaB<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gammaBBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_varianceB;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/betaB<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gammaBBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_varianceBCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/WBCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/WBLnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/WB8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/betaB9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/betaB9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/WB8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/betaB9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gammaB?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_varianceB8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/betaB9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gammaB?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_meanBCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_varianceB@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/WB@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/WB;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/betaB<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gammaBBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_meanBFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_varianceB;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/betaB<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gammaBBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_meanBFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_varianceBCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/WBCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/WBLnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*
dtype0*
_output_shapes	
:?
?
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes	
:?*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*?
dtypes?
?2?*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
?
save_1/AssignAssign(nsfw_cls_model/bn_after_block_layer/betasave_1/RestoreV2*
use_locking(*
T0*;
_class1
/-loc:@nsfw_cls_model/bn_after_block_layer/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_1Assign)nsfw_cls_model/bn_after_block_layer/gammasave_1/RestoreV2:1*
use_locking(*
T0*<
_class2
0.loc:@nsfw_cls_model/bn_after_block_layer/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_2Assign/nsfw_cls_model/bn_after_block_layer/moving_meansave_1/RestoreV2:2*
use_locking(*
T0*B
_class8
64loc:@nsfw_cls_model/bn_after_block_layer/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_3Assign3nsfw_cls_model/bn_after_block_layer/moving_variancesave_1/RestoreV2:3*F
_class<
:8loc:@nsfw_cls_model/bn_after_block_layer/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save_1/Assign_4Assign"nsfw_cls_model/final_logits/kernelsave_1/RestoreV2:4*
_output_shapes
:	?*
use_locking(*
T0*5
_class+
)'loc:@nsfw_cls_model/final_logits/kernel*
validate_shape(
?
save_1/Assign_5Assign&nsfw_cls_model/initial_conv_pad/conv/Wsave_1/RestoreV2:5*&
_output_shapes
:@*
use_locking(*
T0*9
_class/
-+loc:@nsfw_cls_model/initial_conv_pad/conv/W*
validate_shape(
?
save_1/Assign_6Assign8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/betasave_1/RestoreV2:6*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
save_1/Assign_7Assign9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gammasave_1/RestoreV2:7*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_8Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_meansave_1/RestoreV2:8*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_9AssignCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variancesave_1/RestoreV2:9*
_output_shapes
:@*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance*
validate_shape(
?
save_1/Assign_10Assign8nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/betasave_1/RestoreV2:10*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
?
save_1/Assign_11Assign9nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gammasave_1/RestoreV2:11*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_12Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_meansave_1/RestoreV2:12*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_13AssignCnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variancesave_1/RestoreV2:13*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_14Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/Wsave_1/RestoreV2:14*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W
?
save_1/Assign_15Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/Wsave_1/RestoreV2:15*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W
?
save_1/Assign_16Assign8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/betasave_1/RestoreV2:16*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_17Assign9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gammasave_1/RestoreV2:17*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
save_1/Assign_18Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_meansave_1/RestoreV2:18*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_19AssignCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variancesave_1/RestoreV2:19*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_20Assign8nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/betasave_1/RestoreV2:20*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
?
save_1/Assign_21Assign9nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gammasave_1/RestoreV2:21*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma
?
save_1/Assign_22Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_meansave_1/RestoreV2:22*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_23AssignCnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variancesave_1/RestoreV2:23*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
save_1/Assign_24Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/Wsave_1/RestoreV2:24*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0
?
save_1/Assign_25Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/Wsave_1/RestoreV2:25*&
_output_shapes
:@@*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W*
validate_shape(
?
save_1/Assign_26Assign;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/betasave_1/RestoreV2:26*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
save_1/Assign_27Assign<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gammasave_1/RestoreV2:27*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_28AssignBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_meansave_1/RestoreV2:28*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_29AssignFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variancesave_1/RestoreV2:29*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_30Assign;nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/betasave_1/RestoreV2:30*
_output_shapes
:@*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta*
validate_shape(
?
save_1/Assign_31Assign<nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gammasave_1/RestoreV2:31*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_32AssignBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_meansave_1/RestoreV2:32*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_33AssignFnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variancesave_1/RestoreV2:33*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
save_1/Assign_34AssignCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/Wsave_1/RestoreV2:34*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W*
validate_shape(*&
_output_shapes
:@@
?
save_1/Assign_35AssignCnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/Wsave_1/RestoreV2:35*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W*
validate_shape(*&
_output_shapes
:@@
?
save_1/Assign_36AssignLnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/Wsave_1/RestoreV2:36*
use_locking(*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W*
validate_shape(*&
_output_shapes
:@@
?
save_1/Assign_37Assign8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/betasave_1/RestoreV2:37*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save_1/Assign_38Assign9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gammasave_1/RestoreV2:38*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_39Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_meansave_1/RestoreV2:39*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_40AssignCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variancesave_1/RestoreV2:40*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_41Assign8nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/betasave_1/RestoreV2:41*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta
?
save_1/Assign_42Assign9nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gammasave_1/RestoreV2:42*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_43Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_meansave_1/RestoreV2:43*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_44AssignCnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variancesave_1/RestoreV2:44*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save_1/Assign_45Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/Wsave_1/RestoreV2:45*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0
?
save_1/Assign_46Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/Wsave_1/RestoreV2:46*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
save_1/Assign_47Assign8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/betasave_1/RestoreV2:47*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_48Assign9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gammasave_1/RestoreV2:48*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma*
validate_shape(
?
save_1/Assign_49Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_meansave_1/RestoreV2:49*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean
?
save_1/Assign_50AssignCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variancesave_1/RestoreV2:50*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save_1/Assign_51Assign8nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/betasave_1/RestoreV2:51*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta
?
save_1/Assign_52Assign9nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gammasave_1/RestoreV2:52*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_53Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_meansave_1/RestoreV2:53*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_54AssignCnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variancesave_1/RestoreV2:54*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_55Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/Wsave_1/RestoreV2:55*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_56Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/Wsave_1/RestoreV2:56*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_57Assign8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/betasave_1/RestoreV2:57*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_58Assign9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gammasave_1/RestoreV2:58*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma
?
save_1/Assign_59Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_meansave_1/RestoreV2:59*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_60AssignCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variancesave_1/RestoreV2:60*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_61Assign8nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/betasave_1/RestoreV2:61*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta
?
save_1/Assign_62Assign9nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gammasave_1/RestoreV2:62*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_63Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_meansave_1/RestoreV2:63*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean
?
save_1/Assign_64AssignCnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variancesave_1/RestoreV2:64*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_65Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/Wsave_1/RestoreV2:65*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W
?
save_1/Assign_66Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/Wsave_1/RestoreV2:66*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_67Assign;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/betasave_1/RestoreV2:67*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_68Assign<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gammasave_1/RestoreV2:68*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_69AssignBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_meansave_1/RestoreV2:69*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
?
save_1/Assign_70AssignFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variancesave_1/RestoreV2:70*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_71Assign;nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/betasave_1/RestoreV2:71*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save_1/Assign_72Assign<nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gammasave_1/RestoreV2:72*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_73AssignBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_meansave_1/RestoreV2:73*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_74AssignFnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variancesave_1/RestoreV2:74*
_output_shapes	
:?*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance*
validate_shape(
?
save_1/Assign_75AssignCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/Wsave_1/RestoreV2:75*
validate_shape(*'
_output_shapes
:@?*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W
?
save_1/Assign_76AssignCnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/Wsave_1/RestoreV2:76*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_77AssignLnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/Wsave_1/RestoreV2:77*
use_locking(*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W*
validate_shape(*'
_output_shapes
:@?
?
save_1/Assign_78Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/betasave_1/RestoreV2:78*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta*
validate_shape(
?
save_1/Assign_79Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gammasave_1/RestoreV2:79*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma
?
save_1/Assign_80Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_meansave_1/RestoreV2:80*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_81AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variancesave_1/RestoreV2:81*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save_1/Assign_82Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/betasave_1/RestoreV2:82*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_83Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gammasave_1/RestoreV2:83*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma*
validate_shape(
?
save_1/Assign_84Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_meansave_1/RestoreV2:84*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_85AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variancesave_1/RestoreV2:85*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_86Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/Wsave_1/RestoreV2:86*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W*
validate_shape(
?
save_1/Assign_87Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/Wsave_1/RestoreV2:87*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
save_1/Assign_88Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/betasave_1/RestoreV2:88*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta*
validate_shape(
?
save_1/Assign_89Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gammasave_1/RestoreV2:89*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_90Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_meansave_1/RestoreV2:90*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save_1/Assign_91AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variancesave_1/RestoreV2:91*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_92Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/betasave_1/RestoreV2:92*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta*
validate_shape(
?
save_1/Assign_93Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gammasave_1/RestoreV2:93*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save_1/Assign_94Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_meansave_1/RestoreV2:94*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean*
validate_shape(
?
save_1/Assign_95AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variancesave_1/RestoreV2:95*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_96Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/Wsave_1/RestoreV2:96*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_97Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/Wsave_1/RestoreV2:97*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0
?
save_1/Assign_98Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/betasave_1/RestoreV2:98*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta*
validate_shape(
?
save_1/Assign_99Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gammasave_1/RestoreV2:99*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma
?
save_1/Assign_100Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_meansave_1/RestoreV2:100*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean
?
save_1/Assign_101AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variancesave_1/RestoreV2:101*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_102Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/betasave_1/RestoreV2:102*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_103Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gammasave_1/RestoreV2:103*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma*
validate_shape(
?
save_1/Assign_104Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_meansave_1/RestoreV2:104*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_105AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variancesave_1/RestoreV2:105*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_106Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/Wsave_1/RestoreV2:106*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W*
validate_shape(
?
save_1/Assign_107Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/Wsave_1/RestoreV2:107*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_108Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/betasave_1/RestoreV2:108*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save_1/Assign_109Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gammasave_1/RestoreV2:109*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_110Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_meansave_1/RestoreV2:110*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_111AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variancesave_1/RestoreV2:111*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_112Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/betasave_1/RestoreV2:112*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta*
validate_shape(
?
save_1/Assign_113Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gammasave_1/RestoreV2:113*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_114Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_meansave_1/RestoreV2:114*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_115AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variancesave_1/RestoreV2:115*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_116Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/Wsave_1/RestoreV2:116*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_117Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/Wsave_1/RestoreV2:117*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0
?
save_1/Assign_118Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/betasave_1/RestoreV2:118*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_119Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gammasave_1/RestoreV2:119*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma*
validate_shape(
?
save_1/Assign_120Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_meansave_1/RestoreV2:120*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean*
validate_shape(
?
save_1/Assign_121AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variancesave_1/RestoreV2:121*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_122Assign8nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/betasave_1/RestoreV2:122*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta*
validate_shape(
?
save_1/Assign_123Assign9nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gammasave_1/RestoreV2:123*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_124Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_meansave_1/RestoreV2:124*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean*
validate_shape(
?
save_1/Assign_125AssignCnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variancesave_1/RestoreV2:125*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_126Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/Wsave_1/RestoreV2:126*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_127Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/Wsave_1/RestoreV2:127*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_128Assign;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/betasave_1/RestoreV2:128*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_129Assign<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gammasave_1/RestoreV2:129*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma
?
save_1/Assign_130AssignBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_meansave_1/RestoreV2:130*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_131AssignFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variancesave_1/RestoreV2:131*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_132Assign;nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/betasave_1/RestoreV2:132*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta
?
save_1/Assign_133Assign<nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gammasave_1/RestoreV2:133*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_134AssignBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_meansave_1/RestoreV2:134*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_135AssignFnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variancesave_1/RestoreV2:135*
_output_shapes	
:?*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance*
validate_shape(
?
save_1/Assign_136AssignCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/Wsave_1/RestoreV2:136*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_137AssignCnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/Wsave_1/RestoreV2:137*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_138AssignLnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/Wsave_1/RestoreV2:138*
use_locking(*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_139Assign8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/betasave_1/RestoreV2:139*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_140Assign9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gammasave_1/RestoreV2:140*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_141Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_meansave_1/RestoreV2:141*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_142AssignCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variancesave_1/RestoreV2:142*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_143Assign8nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/betasave_1/RestoreV2:143*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_144Assign9nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gammasave_1/RestoreV2:144*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_145Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_meansave_1/RestoreV2:145*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_146AssignCnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variancesave_1/RestoreV2:146*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance
?
save_1/Assign_147Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/Wsave_1/RestoreV2:147*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_148Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/Wsave_1/RestoreV2:148*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_149Assign8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/betasave_1/RestoreV2:149*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_150Assign9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gammasave_1/RestoreV2:150*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_151Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_meansave_1/RestoreV2:151*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_152AssignCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variancesave_1/RestoreV2:152*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance
?
save_1/Assign_153Assign8nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/betasave_1/RestoreV2:153*
_output_shapes	
:?*
use_locking(*
T0*K
_classA
?=loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta*
validate_shape(
?
save_1/Assign_154Assign9nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gammasave_1/RestoreV2:154*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*L
_classB
@>loc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma
?
save_1/Assign_155Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_meansave_1/RestoreV2:155*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*R
_classH
FDloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean
?
save_1/Assign_156AssignCnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variancesave_1/RestoreV2:156*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance
?
save_1/Assign_157Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/Wsave_1/RestoreV2:157*(
_output_shapes
:??*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W*
validate_shape(
?
save_1/Assign_158Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/Wsave_1/RestoreV2:158*
use_locking(*
T0*S
_classI
GEloc:@nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_159Assign;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/betasave_1/RestoreV2:159*
_output_shapes	
:?*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta*
validate_shape(
?
save_1/Assign_160Assign<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gammasave_1/RestoreV2:160*
use_locking(*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_161AssignBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_meansave_1/RestoreV2:161*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_162AssignFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variancesave_1/RestoreV2:162*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance
?
save_1/Assign_163Assign;nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/betasave_1/RestoreV2:163*
use_locking(*
T0*N
_classD
B@loc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_164Assign<nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gammasave_1/RestoreV2:164*
T0*O
_classE
CAloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_165AssignBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_meansave_1/RestoreV2:165*
use_locking(*
T0*U
_classK
IGloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_166AssignFnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variancesave_1/RestoreV2:166*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*Y
_classO
MKloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance
?
save_1/Assign_167AssignCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/Wsave_1/RestoreV2:167*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W*
validate_shape(*(
_output_shapes
:??*
use_locking(*
T0
?
save_1/Assign_168AssignCnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/Wsave_1/RestoreV2:168*(
_output_shapes
:??*
use_locking(*
T0*V
_classL
JHloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W*
validate_shape(
?
save_1/Assign_169AssignLnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/Wsave_1/RestoreV2:169*
use_locking(*
T0*_
_classU
SQloc:@nsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W*
validate_shape(*(
_output_shapes
:??
?
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_100^save_1/Assign_101^save_1/Assign_102^save_1/Assign_103^save_1/Assign_104^save_1/Assign_105^save_1/Assign_106^save_1/Assign_107^save_1/Assign_108^save_1/Assign_109^save_1/Assign_11^save_1/Assign_110^save_1/Assign_111^save_1/Assign_112^save_1/Assign_113^save_1/Assign_114^save_1/Assign_115^save_1/Assign_116^save_1/Assign_117^save_1/Assign_118^save_1/Assign_119^save_1/Assign_12^save_1/Assign_120^save_1/Assign_121^save_1/Assign_122^save_1/Assign_123^save_1/Assign_124^save_1/Assign_125^save_1/Assign_126^save_1/Assign_127^save_1/Assign_128^save_1/Assign_129^save_1/Assign_13^save_1/Assign_130^save_1/Assign_131^save_1/Assign_132^save_1/Assign_133^save_1/Assign_134^save_1/Assign_135^save_1/Assign_136^save_1/Assign_137^save_1/Assign_138^save_1/Assign_139^save_1/Assign_14^save_1/Assign_140^save_1/Assign_141^save_1/Assign_142^save_1/Assign_143^save_1/Assign_144^save_1/Assign_145^save_1/Assign_146^save_1/Assign_147^save_1/Assign_148^save_1/Assign_149^save_1/Assign_15^save_1/Assign_150^save_1/Assign_151^save_1/Assign_152^save_1/Assign_153^save_1/Assign_154^save_1/Assign_155^save_1/Assign_156^save_1/Assign_157^save_1/Assign_158^save_1/Assign_159^save_1/Assign_16^save_1/Assign_160^save_1/Assign_161^save_1/Assign_162^save_1/Assign_163^save_1/Assign_164^save_1/Assign_165^save_1/Assign_166^save_1/Assign_167^save_1/Assign_168^save_1/Assign_169^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_7^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74^save_1/Assign_75^save_1/Assign_76^save_1/Assign_77^save_1/Assign_78^save_1/Assign_79^save_1/Assign_8^save_1/Assign_80^save_1/Assign_81^save_1/Assign_82^save_1/Assign_83^save_1/Assign_84^save_1/Assign_85^save_1/Assign_86^save_1/Assign_87^save_1/Assign_88^save_1/Assign_89^save_1/Assign_9^save_1/Assign_90^save_1/Assign_91^save_1/Assign_92^save_1/Assign_93^save_1/Assign_94^save_1/Assign_95^save_1/Assign_96^save_1/Assign_97^save_1/Assign_98^save_1/Assign_99
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"??
	variables????
?
(nsfw_cls_model/initial_conv_pad/conv/W:0-nsfw_cls_model/initial_conv_pad/conv/W/Assign-nsfw_cls_model/initial_conv_pad/conv/W/read:02Ensfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma:0Cnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/AssignCnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/read:02Onsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta:0Bnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/AssignBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/read:02Onsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/Initializer/zeros:08
?
Dnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean:0Insfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean/AssignInsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean/read:02Vnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_mean/Initializer/zeros:0
?
Hnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance:0Mnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance/AssignMnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance/read:02Ynsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/moving_variance/Initializer/ones:0
?
Nnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W:0Snsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/AssignSnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/read:02knsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal:08
?
Ensfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W:0Jnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/AssignJnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/read:02bnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma:0Cnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/AssignCnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/read:02Onsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta:0Bnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/AssignBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/read:02Onsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/Initializer/zeros:08
?
Dnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean:0Insfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean/AssignInsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean/read:02Vnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_mean/Initializer/zeros:0
?
Hnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance:0Mnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance/AssignMnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance/read:02Ynsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/moving_variance/Initializer/ones:0
?
Ensfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W:0Jnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/AssignJnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/read:02bnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean:0Fnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance:0Jnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean:0Fnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance:0Jnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean:0Fnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance:0Jnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean:0Fnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance:0Jnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma:0Cnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/AssignCnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/read:02Onsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta:0Bnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/AssignBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/read:02Onsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/Initializer/zeros:08
?
Dnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean:0Insfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean/AssignInsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean/read:02Vnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_mean/Initializer/zeros:0
?
Hnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance:0Mnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance/AssignMnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance/read:02Ynsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/moving_variance/Initializer/ones:0
?
Nnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W:0Snsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/AssignSnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/read:02knsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal:08
?
Ensfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W:0Jnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/AssignJnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/read:02bnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma:0Cnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/AssignCnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/read:02Onsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta:0Bnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/AssignBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/read:02Onsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/Initializer/zeros:08
?
Dnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean:0Insfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean/AssignInsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean/read:02Vnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_mean/Initializer/zeros:0
?
Hnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance:0Mnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance/AssignMnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance/read:02Ynsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/moving_variance/Initializer/ones:0
?
Ensfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W:0Jnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/AssignJnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/read:02bnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean:0Fnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance:0Jnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean:0Fnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance:0Jnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean:0Fnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance:0Jnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean:0Fnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance:0Jnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean:0Fnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance:0Jnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean:0Fnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance:0Jnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma:0Cnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/AssignCnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/read:02Onsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta:0Bnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/AssignBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/read:02Onsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/Initializer/zeros:08
?
Dnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean:0Insfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean/AssignInsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean/read:02Vnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_mean/Initializer/zeros:0
?
Hnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance:0Mnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance/AssignMnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance/read:02Ynsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/moving_variance/Initializer/ones:0
?
Nnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W:0Snsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/AssignSnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/read:02knsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal:08
?
Ensfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W:0Jnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/AssignJnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/read:02bnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma:0Cnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/AssignCnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/read:02Onsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta:0Bnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/AssignBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/read:02Onsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/Initializer/zeros:08
?
Dnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean:0Insfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean/AssignInsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean/read:02Vnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_mean/Initializer/zeros:0
?
Hnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance:0Mnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance/AssignMnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance/read:02Ynsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/moving_variance/Initializer/ones:0
?
Ensfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W:0Jnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/AssignJnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/read:02bnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean:0Fnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance:0Jnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean:0Fnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance:0Jnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean:0Fnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance:0Jnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean:0Fnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance:0Jnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean:0Fnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance:0Jnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean:0Fnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance:0Jnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean:0Fnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance:0Jnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean:0Fnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance:0Jnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean:0Fnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance:0Jnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean:0Fnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance:0Jnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma:0Cnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/AssignCnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/read:02Onsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta:0Bnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/AssignBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/read:02Onsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/Initializer/zeros:08
?
Dnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean:0Insfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean/AssignInsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean/read:02Vnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_mean/Initializer/zeros:0
?
Hnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance:0Mnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance/AssignMnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance/read:02Ynsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/moving_variance/Initializer/ones:0
?
Nnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W:0Snsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/AssignSnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/read:02knsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal:08
?
Ensfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W:0Jnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/AssignJnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/read:02bnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma:0Cnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/AssignCnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/read:02Onsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta:0Bnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/AssignBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/read:02Onsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/Initializer/zeros:08
?
Dnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean:0Insfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean/AssignInsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean/read:02Vnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_mean/Initializer/zeros:0
?
Hnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance:0Mnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance/AssignMnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance/read:02Ynsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/moving_variance/Initializer/ones:0
?
Ensfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W:0Jnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/AssignJnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/read:02bnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean:0Fnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance:0Jnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean:0Fnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance:0Jnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean:0Fnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance:0Jnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/Initializer/zeros:08
?
Ansfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean:0Fnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean/AssignFnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean/read:02Snsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_mean/Initializer/zeros:0
?
Ensfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance:0Jnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance/AssignJnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance/read:02Vnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/moving_variance/Initializer/ones:0
?
Bnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
+nsfw_cls_model/bn_after_block_layer/gamma:00nsfw_cls_model/bn_after_block_layer/gamma/Assign0nsfw_cls_model/bn_after_block_layer/gamma/read:02<nsfw_cls_model/bn_after_block_layer/gamma/Initializer/ones:08
?
*nsfw_cls_model/bn_after_block_layer/beta:0/nsfw_cls_model/bn_after_block_layer/beta/Assign/nsfw_cls_model/bn_after_block_layer/beta/read:02<nsfw_cls_model/bn_after_block_layer/beta/Initializer/zeros:08
?
1nsfw_cls_model/bn_after_block_layer/moving_mean:06nsfw_cls_model/bn_after_block_layer/moving_mean/Assign6nsfw_cls_model/bn_after_block_layer/moving_mean/read:02Cnsfw_cls_model/bn_after_block_layer/moving_mean/Initializer/zeros:0
?
5nsfw_cls_model/bn_after_block_layer/moving_variance:0:nsfw_cls_model/bn_after_block_layer/moving_variance/Assign:nsfw_cls_model/bn_after_block_layer/moving_variance/read:02Fnsfw_cls_model/bn_after_block_layer/moving_variance/Initializer/ones:0
?
$nsfw_cls_model/final_logits/kernel:0)nsfw_cls_model/final_logits/kernel/Assign)nsfw_cls_model/final_logits/kernel/read:02Ansfw_cls_model/final_logits/kernel/Initializer/truncated_normal:08"??
trainable_variables????
?
(nsfw_cls_model/initial_conv_pad/conv/W:0-nsfw_cls_model/initial_conv_pad/conv/W/Assign-nsfw_cls_model/initial_conv_pad/conv/W/read:02Ensfw_cls_model/initial_conv_pad/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma:0Cnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/AssignCnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/read:02Onsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta:0Bnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/AssignBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/read:02Onsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_1/beta/Initializer/zeros:08
?
Nnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W:0Snsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/AssignSnsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/read:02knsfw_cls_model/resnet_block_layer_1/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal:08
?
Ensfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W:0Jnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/AssignJnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/read:02bnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma:0Cnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/AssignCnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/read:02Onsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta:0Bnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/AssignBnsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/read:02Onsfw_cls_model/resnet_block_layer_1/init_block_fn/bn_2/beta/Initializer/zeros:08
?
Ensfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W:0Jnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/AssignJnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/read:02bnsfw_cls_model/resnet_block_layer_1/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_1/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_1/bn_2/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_1/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_1/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_1/block_fn_2/bn_2/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_1/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma:0Cnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/AssignCnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/read:02Onsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta:0Bnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/AssignBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/read:02Onsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_1/beta/Initializer/zeros:08
?
Nnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W:0Snsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/AssignSnsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/read:02knsfw_cls_model/resnet_block_layer_2/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal:08
?
Ensfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W:0Jnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/AssignJnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/read:02bnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma:0Cnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/AssignCnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/read:02Onsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta:0Bnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/AssignBnsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/read:02Onsfw_cls_model/resnet_block_layer_2/init_block_fn/bn_2/beta/Initializer/zeros:08
?
Ensfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W:0Jnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/AssignJnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/read:02bnsfw_cls_model/resnet_block_layer_2/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_1/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_1/bn_2/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_2/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_1/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_2/bn_2/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_2/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_1/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_2/block_fn_3/bn_2/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_2/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma:0Cnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/AssignCnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/read:02Onsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta:0Bnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/AssignBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/read:02Onsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_1/beta/Initializer/zeros:08
?
Nnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W:0Snsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/AssignSnsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/read:02knsfw_cls_model/resnet_block_layer_3/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal:08
?
Ensfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W:0Jnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/AssignJnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/read:02bnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma:0Cnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/AssignCnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/read:02Onsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta:0Bnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/AssignBnsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/read:02Onsfw_cls_model/resnet_block_layer_3/init_block_fn/bn_2/beta/Initializer/zeros:08
?
Ensfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W:0Jnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/AssignJnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/read:02bnsfw_cls_model/resnet_block_layer_3/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_1/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_1/bn_2/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_1/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_2/bn_2/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_1/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_3/bn_2/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_3/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_1/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_4/bn_2/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_4/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_1/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_3/block_fn_5/bn_2/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_3/block_fn_5/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma:0Cnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/AssignCnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/read:02Onsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta:0Bnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/AssignBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/read:02Onsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_1/beta/Initializer/zeros:08
?
Nnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W:0Snsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/AssignSnsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/read:02knsfw_cls_model/resnet_block_layer_4/init_block_fn/projection_shortcut/conv/W/Initializer/truncated_normal:08
?
Ensfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W:0Jnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/AssignJnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/read:02bnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
>nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma:0Cnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/AssignCnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/read:02Onsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/gamma/Initializer/ones:08
?
=nsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta:0Bnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/AssignBnsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/read:02Onsfw_cls_model/resnet_block_layer_4/init_block_fn/bn_2/beta/Initializer/zeros:08
?
Ensfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W:0Jnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/AssignJnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/read:02bnsfw_cls_model/resnet_block_layer_4/init_block_fn/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_1/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_1/bn_2/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_4/block_fn_1/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma:0@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta:0?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_1/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W:0Gnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/AssignGnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/read:02_nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_1/conv/W/Initializer/truncated_normal:08
?
;nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma:0@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/Assign@nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/gamma/Initializer/ones:08
?
:nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta:0?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/Assign?nsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/read:02Lnsfw_cls_model/resnet_block_layer_4/block_fn_2/bn_2/beta/Initializer/zeros:08
?
Bnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W:0Gnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/AssignGnsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/read:02_nsfw_cls_model/resnet_block_layer_4/block_fn_2/conv_pad_2/conv/W/Initializer/truncated_normal:08
?
+nsfw_cls_model/bn_after_block_layer/gamma:00nsfw_cls_model/bn_after_block_layer/gamma/Assign0nsfw_cls_model/bn_after_block_layer/gamma/read:02<nsfw_cls_model/bn_after_block_layer/gamma/Initializer/ones:08
?
*nsfw_cls_model/bn_after_block_layer/beta:0/nsfw_cls_model/bn_after_block_layer/beta/Assign/nsfw_cls_model/bn_after_block_layer/beta/read:02<nsfw_cls_model/bn_after_block_layer/beta/Initializer/zeros:08
?
$nsfw_cls_model/final_logits/kernel:0)nsfw_cls_model/final_logits/kernel/Assign)nsfw_cls_model/final_logits/kernel/read:02Ansfw_cls_model/final_logits/kernel/Initializer/truncated_normal:08*?
classify_result?
6
input_tensor&
input_tensor:0??=

prediction/
!nsfw_cls_model/final_prediction:0tensorflow/serving/classify