��$
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
�
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.02v2.6.0-rc2-32-g919f693420e8�� 
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:H*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:H*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Hl* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:Hl*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:l*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:l*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:l�* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:l�*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:�*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:��*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:�*
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_4/kernel
}
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*(
_output_shapes
:��*
dtype0
s
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_4/bias
l
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes	
:�*
dtype0
�
.audio2_face/articulation_layer/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*?
shared_name0.audio2_face/articulation_layer/conv2d_5/kernel
�
Baudio2_face/articulation_layer/conv2d_5/kernel/Read/ReadVariableOpReadVariableOp.audio2_face/articulation_layer/conv2d_5/kernel*(
_output_shapes
:��*
dtype0
�
,audio2_face/articulation_layer/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*=
shared_name.,audio2_face/articulation_layer/conv2d_5/bias
�
@audio2_face/articulation_layer/conv2d_5/bias/Read/ReadVariableOpReadVariableOp,audio2_face/articulation_layer/conv2d_5/bias*
_output_shapes	
:�*
dtype0
�
.audio2_face/articulation_layer/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.audio2_face/articulation_layer/conv2d_6/kernel
�
Baudio2_face/articulation_layer/conv2d_6/kernel/Read/ReadVariableOpReadVariableOp.audio2_face/articulation_layer/conv2d_6/kernel*&
_output_shapes
:*
dtype0
�
,audio2_face/articulation_layer/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,audio2_face/articulation_layer/conv2d_6/bias
�
@audio2_face/articulation_layer/conv2d_6/bias/Read/ReadVariableOpReadVariableOp,audio2_face/articulation_layer/conv2d_6/bias*
_output_shapes
:*
dtype0
�
.audio2_face/articulation_layer/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*?
shared_name0.audio2_face/articulation_layer/conv2d_7/kernel
�
Baudio2_face/articulation_layer/conv2d_7/kernel/Read/ReadVariableOpReadVariableOp.audio2_face/articulation_layer/conv2d_7/kernel*(
_output_shapes
:��*
dtype0
�
,audio2_face/articulation_layer/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*=
shared_name.,audio2_face/articulation_layer/conv2d_7/bias
�
@audio2_face/articulation_layer/conv2d_7/bias/Read/ReadVariableOpReadVariableOp,audio2_face/articulation_layer/conv2d_7/bias*
_output_shapes	
:�*
dtype0
�
.audio2_face/articulation_layer/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.audio2_face/articulation_layer/conv2d_8/kernel
�
Baudio2_face/articulation_layer/conv2d_8/kernel/Read/ReadVariableOpReadVariableOp.audio2_face/articulation_layer/conv2d_8/kernel*&
_output_shapes
:*
dtype0
�
,audio2_face/articulation_layer/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,audio2_face/articulation_layer/conv2d_8/bias
�
@audio2_face/articulation_layer/conv2d_8/bias/Read/ReadVariableOpReadVariableOp,audio2_face/articulation_layer/conv2d_8/bias*
_output_shapes
:*
dtype0
�
.audio2_face/articulation_layer/conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*?
shared_name0.audio2_face/articulation_layer/conv2d_9/kernel
�
Baudio2_face/articulation_layer/conv2d_9/kernel/Read/ReadVariableOpReadVariableOp.audio2_face/articulation_layer/conv2d_9/kernel*(
_output_shapes
:��*
dtype0
�
,audio2_face/articulation_layer/conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*=
shared_name.,audio2_face/articulation_layer/conv2d_9/bias
�
@audio2_face/articulation_layer/conv2d_9/bias/Read/ReadVariableOpReadVariableOp,audio2_face/articulation_layer/conv2d_9/bias*
_output_shapes	
:�*
dtype0
�
/audio2_face/articulation_layer/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/audio2_face/articulation_layer/conv2d_10/kernel
�
Caudio2_face/articulation_layer/conv2d_10/kernel/Read/ReadVariableOpReadVariableOp/audio2_face/articulation_layer/conv2d_10/kernel*&
_output_shapes
:*
dtype0
�
-audio2_face/articulation_layer/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-audio2_face/articulation_layer/conv2d_10/bias
�
Aaudio2_face/articulation_layer/conv2d_10/bias/Read/ReadVariableOpReadVariableOp-audio2_face/articulation_layer/conv2d_10/bias*
_output_shapes
:*
dtype0
�
/audio2_face/articulation_layer/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*@
shared_name1/audio2_face/articulation_layer/conv2d_11/kernel
�
Caudio2_face/articulation_layer/conv2d_11/kernel/Read/ReadVariableOpReadVariableOp/audio2_face/articulation_layer/conv2d_11/kernel*(
_output_shapes
:��*
dtype0
�
-audio2_face/articulation_layer/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*>
shared_name/-audio2_face/articulation_layer/conv2d_11/bias
�
Aaudio2_face/articulation_layer/conv2d_11/bias/Read/ReadVariableOpReadVariableOp-audio2_face/articulation_layer/conv2d_11/bias*
_output_shapes	
:�*
dtype0
�
/audio2_face/articulation_layer/conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/audio2_face/articulation_layer/conv2d_12/kernel
�
Caudio2_face/articulation_layer/conv2d_12/kernel/Read/ReadVariableOpReadVariableOp/audio2_face/articulation_layer/conv2d_12/kernel*&
_output_shapes
:*
dtype0
�
-audio2_face/articulation_layer/conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-audio2_face/articulation_layer/conv2d_12/bias
�
Aaudio2_face/articulation_layer/conv2d_12/bias/Read/ReadVariableOpReadVariableOp-audio2_face/articulation_layer/conv2d_12/bias*
_output_shapes
:*
dtype0
�
/audio2_face/articulation_layer/conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*@
shared_name1/audio2_face/articulation_layer/conv2d_13/kernel
�
Caudio2_face/articulation_layer/conv2d_13/kernel/Read/ReadVariableOpReadVariableOp/audio2_face/articulation_layer/conv2d_13/kernel*(
_output_shapes
:��*
dtype0
�
-audio2_face/articulation_layer/conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*>
shared_name/-audio2_face/articulation_layer/conv2d_13/bias
�
Aaudio2_face/articulation_layer/conv2d_13/bias/Read/ReadVariableOpReadVariableOp-audio2_face/articulation_layer/conv2d_13/bias*
_output_shapes	
:�*
dtype0
�
/audio2_face/articulation_layer/conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/audio2_face/articulation_layer/conv2d_14/kernel
�
Caudio2_face/articulation_layer/conv2d_14/kernel/Read/ReadVariableOpReadVariableOp/audio2_face/articulation_layer/conv2d_14/kernel*&
_output_shapes
:*
dtype0
�
-audio2_face/articulation_layer/conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-audio2_face/articulation_layer/conv2d_14/bias
�
Aaudio2_face/articulation_layer/conv2d_14/bias/Read/ReadVariableOpReadVariableOp-audio2_face/articulation_layer/conv2d_14/bias*
_output_shapes
:*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�%*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	�%*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:%*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:%*
dtype0
� 
ConstConst*&
_output_shapes
:@*
dtype0*� 
value� B� @"� 5q�>��>�)��,��3��>�/T?�1	��	��&��GU<��wk>��FD��s��<�#>@�[F�?^�V�"�׾.��=B�I��t�_�3�pS���Pо*4?�>X�	�x�^��!s��8ÿ��*��N�>��@���`޾x�G��>�=�o;U�@��)�S0s��
�>�����7R?��?b�?+�? �9��ݖ?˱(@���?�ZD��n��-�>t�������MQ�?g=I9�� �0�ڏ �A5�?u����M�U�o��㿲%ƽdͿ�tH?���= �=�IU?o�Ŀ5�ؾ� j?��g?DT[�o?�w��'ڿ�KݼG��ó�?���
V�?���n?�j?yî�Ub?FS���?�[o<"#??x�0?�Q>w�;>S�F�����þ�־8f��N��q�>GaD?%b�=��>���?��j?���N?��+?���?Q�?��#?�K
��@�?}��gS���r1?c�>KE3?q�?��5>�-���"?n
��Qc�?�򌿕2.?H���w�?�A>���F�5?�6@&灿2\�?��$>�Л�}���6�[�H2�?�����?�<ջ��w�˿�48?C� @�`��[���5��L�?�O�>��̿׻/?���P8$?��C?b+?R���ߑ?c|��{˝?}�>�2(?�ƶ>���>ʓ)��+�?մϾ�ߤ�2H~?T����NH>KϞ?rȭ?y?U�����0>!!�?'C�� \��Q�g�?&� �|�?y��>"3�?��X�0�W>����~����|�h>\B�NO?��?��k?��x�%9n���� et?�}?~�?1s�ӊ>�n�����y���=���>F������=���7g>윬?�l?�?�C�="?��?� ˾�t���˝>��?�V=��f>��j?�#;?&��?�Խcf��ˤÿX��4���!?L I?w�f��
��D
u�Z"??��>p�'�Z?��>�?���@>^`�������	?�	�?N���]G>�?x�2���>ug��0�?�m!������<$��>��O��K��� �?�1?���hw"=���(�?|.X�N�n���>��dJ��l�#�I9�?��F>1�>-�¿yz�$��>#wĿ� �?�����)��+�>��f�{�>�^�?��ݿ+W��"-	@A�?��>���?��S? T?�<�>	X�Z��t#�����?Ø���+�>]vW��R�x� �6�5?���>�	@k��0*�?'�@)�?���?��:?.:�?I�*���ͧ�>Mv��-��%t�٣�>hj߾�[�=��=���������>O��!�?�{�hg@+&�?��Ŀ(�@O}�>k�J?8�;�	? ��?n�&?�k�����O� �>���<�>ڷ��qd@?����p�о>f�>�*?ux�?/��'?={]{�~]�?��c��r^�Z'�ž?�nG��9��1�>H��?	8�>�7����a<A�~;�<�˱��E�>m8%���L���?Hn�(y�>>!��.�ܿ�D=z<�/ћ?Q!���?�����J�?H�>����8�:?_i�?g~޿�*>R��j> �Կ�s���E>}��>��>\�k?����TC&?���Y���㿹����3?ge�?��?��?ۍ?��#���
?Bܚ�i;	��Vn>�wj���@��>�g�|��W^@�.+l?�hƿ��#?�$���@�Rx�nUa?�� ���O���?䐕>@ɖ>�&V>4R��Y�ҾLb�?';�� �ֿ���?��	���]�3u�>ӓ:��q�?T��|��?F�?4ؙ�]���>ZUf>�Fi?�2g>s��?l�{�c��^��Zھ?�>��}�̴��<rU?�vɿ���?��r����?�� ��s�>UyI��ݿsb?h�@M��n�>�HJ? ��������%�@-�	� @@	f?ٮ|?�񅿧��>��>B�g�� [?9l��8_�>�gѾ6.B��l>�(!�@�%@�-�b��?>�?Mt�/�=>����E�>-��>p�=Q#?�:2>�)��" @H1ȽK8�>"Q�Ji�?�7�D�?|T{��!���雾;� �Q�S�tN���1n��N>��V>aO��^ ��x��!L|��ǭ?K@ȿ^C��|�b>�	�=rK���؅�D�(?���"��>3ņ���B�sG<?d봾��?�ʦ�v�v>	�㾽��?��?��潹�?W腿�?g�p��g�/G�G��?�F8?�� �a@8X��t����������^�c��>�k[�K�?Ԣw=*�b�~�ټ��=�j?��?E������w�?��?TZ���Vn����\o?/ϝ?��?WH�?[ ��`5s�ad��?��?�	�?���?3����r>S_�t��P����>&F�� ����޿��=�y��h��>e��V��,1�4�R�+EF�։b��}¿Q�?-J��2�m�vh�(GS?��ÿ�7T���?p�(��"�3x3��g?Ƚ�]���e�W;B�������??���?���>Us#��%�?����ޡ�?�1?EoĿa��?-h�f�&����?�-'?B���ײ�=�v?��<����?8 �?U�?OK�>�]/�ז�>�����k�?�?��E�>"ir?I�a��C�>��/�(?�\�C�D�^8�>���?���=��sC���m�8�q?�5?�,?��	����m���=?s���%?��K?�5q��� ���?��?�F?g���y�.?���?n\f?r=S>��?�^�������wP�=�so���Z?�����L]�qD�>=.��U��>�-!>V[a?�E�?��="�տ6��>�M�
B���y����>�um�?A�ξQ�d���;m@�!�e��]��-�>1I�Pح��*>�f�u�t���c���?�d� {�>��?a�+@�������?wy�})@!�? #ʾg}�>)�ƾ�տ�?��i�>�!?FX�?�ס���nP�?�Y�?���i��;F8�?\Q��-����ѿ�es�M`?�M���C�c��?�H��Dj�>�,V�%lw��a?�aW<�J>�M�[�[��d���=��чB?�>W���3Ia�H�O�����?Qd��s�b>~b>?��=�s4�u%�R���ƁȾ�f�?_E@8&پ���|�O?+EL����>�i?+I��10�?򔠾����?=~���UQ����>G\;?T1ž#�?�X ?/��?`f$�z�=Șm��֤�G�2?�M�㗾1y@�E6?2V�>�Rs?C��}�>�OJ��,��,E?��?��������@p��?I��?"���.R?��F?I���<���������-}G?�T�b��=�?x�>�:�����J\ʿ�C�?Ш$�����jF�?��7�?nd%��֔����?!7�?5�_?ܮ�f����(����?�=�?M�u?�!Ծbf�r�>ir2>�ŭ�&�{�?�"/��ڽ��4��8��<�u?�>1?g� ?�O��0\�?�mQ��C?���l�?�:���Æ=�?|��[�d�L?JӦ��N����V?в>�F���Ǭ���A��1`��㦾��ÿ}?��4?^�e?v����%?�a���AW?�W]?������?��?��?�a@�"
?+Q��ۦ��RG�A\?�ź�д:��=�7D?�6U?K�6?��]?av�=ǩ�	��?T3Y?��|<b	�>�q1��z�4��>'�?��-p��:6.���%���⽑����yd?B>����/���.�X����F�+/��%��8|>+W�2�?���>�A����?��b����> ����?r
���@�J�?���>�=@���>�zq>�0>e�*��\>�n�=���l��&�{�3ؘ�A:d��+?K�?Vr(���?B�>��d>�V���?	��?��o?��l��A{�A���.\�>Xx0�	�}>���>q`�=³�?�`}��'2�y�?k�P��J�<j����נ�Q��R�=�%���w�?l���3�1Yo?~����߄>T8 ��="0��

NoOpNoOp
�i
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*�i
value�iB�i B�i
�
FormantLayer
ArticulationLayer
OutputLayer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
�
	kernels_size

outputs
formant_layers
regularization_losses
	variables
trainable_variables
	keras_api
�
kernels_size
emotion_strides
conv2d_strides
articulation_layer
regularization_losses
	variables
trainable_variables
	keras_api
d
output_layer
regularization_losses
	variables
trainable_variables
	keras_api
 
�
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322
423
524
625
726
827
928
:29
;30
<31
=32
>33
�
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322
423
524
625
726
827
928
:29
;30
<31
=32
>33
�

?layers
@layer_metrics
Alayer_regularization_losses
regularization_losses
Bmetrics
	variables
Cnon_trainable_variables
trainable_variables
 
#
D0
E1
F2
G3
H4
 
�
Ilayer_with_weights-0
Ilayer-0
Jlayer_with_weights-1
Jlayer-1
Klayer_with_weights-2
Klayer-2
Llayer_with_weights-3
Llayer-3
Mlayer_with_weights-4
Mlayer-4
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
 
F
0
1
2
 3
!4
"5
#6
$7
%8
&9
F
0
1
2
 3
!4
"5
#6
$7
%8
&9
�

Rlayers
Slayer_metrics
Tlayer_regularization_losses
regularization_losses
Umetrics
	variables
Vnon_trainable_variables
trainable_variables
#
W0
X1
Y2
Z3
[4
#
\0
]1
^2
_3
`4
#
a0
b1
c2
d3
e4
#
f0
g1
h2
i3
j4
 
�
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615
716
817
918
:19
�
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615
716
817
918
:19
�

klayers
llayer_metrics
mlayer_regularization_losses
regularization_losses
nmetrics
	variables
onon_trainable_variables
trainable_variables
�
player-0
qlayer_with_weights-0
qlayer-1
rlayer-2
slayer_with_weights-1
slayer-3
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
 

;0
<1
=2
>3

;0
<1
=2
>3
�

xlayers
ylayer_metrics
zlayer_regularization_losses
regularization_losses
{metrics
	variables
|non_trainable_variables
trainable_variables
IG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_4/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_4/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.audio2_face/articulation_layer/conv2d_5/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,audio2_face/articulation_layer/conv2d_5/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.audio2_face/articulation_layer/conv2d_6/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,audio2_face/articulation_layer/conv2d_6/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.audio2_face/articulation_layer/conv2d_7/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,audio2_face/articulation_layer/conv2d_7/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.audio2_face/articulation_layer/conv2d_8/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,audio2_face/articulation_layer/conv2d_8/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.audio2_face/articulation_layer/conv2d_9/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,audio2_face/articulation_layer/conv2d_9/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/audio2_face/articulation_layer/conv2d_10/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-audio2_face/articulation_layer/conv2d_10/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/audio2_face/articulation_layer/conv2d_11/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-audio2_face/articulation_layer/conv2d_11/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/audio2_face/articulation_layer/conv2d_12/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-audio2_face/articulation_layer/conv2d_12/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/audio2_face/articulation_layer/conv2d_13/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-audio2_face/articulation_layer/conv2d_13/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/audio2_face/articulation_layer/conv2d_14/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-audio2_face/articulation_layer/conv2d_14/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUE
dense/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_1/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_1/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 
 
 
 
 
 
 
 
 
i

kernel
bias
}regularization_losses
~	variables
trainable_variables
�	keras_api
l

kernel
 bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

!kernel
"bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

#kernel
$bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

%kernel
&bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
 
F
0
1
2
 3
!4
"5
#6
$7
%8
&9
F
0
1
2
 3
!4
"5
#6
$7
%8
&9
�
�layers
�layer_metrics
 �layer_regularization_losses
Nregularization_losses
�metrics
O	variables
�non_trainable_variables
Ptrainable_variables

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

�0
�1

�0
�1

�0
�1

�0
�1

�0
�1
P
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
 
 
 
 
V
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

;kernel
<bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
V
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

=kernel
>bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
 

;0
<1
=2
>3

;0
<1
=2
>3
�
�layers
�layer_metrics
 �layer_regularization_losses
tregularization_losses
�metrics
u	variables
�non_trainable_variables
vtrainable_variables

0
 
 
 
 
 

0
1

0
1
�
�layers
�layer_metrics
 �layer_regularization_losses
}regularization_losses
�metrics
~	variables
�non_trainable_variables
trainable_variables
 

0
 1

0
 1
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

!0
"1

!0
"1
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

#0
$1

#0
$1
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

%0
&1

%0
&1
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
#
I0
J1
K2
L3
M4
 
 
 
 
l

'kernel
(bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

)kernel
*bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

+kernel
,bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

-kernel
.bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

/kernel
0bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

1kernel
2bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

3kernel
4bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

5kernel
6bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

7kernel
8bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

9kernel
:bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
 
 
 
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

;0
<1

;0
<1
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 
 
 
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

=0
>1

=0
>1
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables

p0
q1
r2
s3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

'0
(1

'0
(1
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

)0
*1

)0
*1
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

+0
,1

+0
,1
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

-0
.1

-0
.1
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

/0
01

/0
01
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

10
21

10
21
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

30
41

30
41
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

50
61

50
61
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

70
81

70
81
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 

90
:1

90
:1
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
�
serving_default_input_1Placeholder*/
_output_shapes
:��������� @*
dtype0*$
shape:��������� @
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasConst.audio2_face/articulation_layer/conv2d_5/kernel,audio2_face/articulation_layer/conv2d_5/bias.audio2_face/articulation_layer/conv2d_6/kernel,audio2_face/articulation_layer/conv2d_6/bias.audio2_face/articulation_layer/conv2d_7/kernel,audio2_face/articulation_layer/conv2d_7/bias.audio2_face/articulation_layer/conv2d_8/kernel,audio2_face/articulation_layer/conv2d_8/bias.audio2_face/articulation_layer/conv2d_9/kernel,audio2_face/articulation_layer/conv2d_9/bias/audio2_face/articulation_layer/conv2d_10/kernel-audio2_face/articulation_layer/conv2d_10/bias/audio2_face/articulation_layer/conv2d_11/kernel-audio2_face/articulation_layer/conv2d_11/bias/audio2_face/articulation_layer/conv2d_12/kernel-audio2_face/articulation_layer/conv2d_12/bias/audio2_face/articulation_layer/conv2d_13/kernel-audio2_face/articulation_layer/conv2d_13/bias/audio2_face/articulation_layer/conv2d_14/kernel-audio2_face/articulation_layer/conv2d_14/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������%:���������@*D
_read_only_resource_inputs&
$"	
 !"#*0
config_proto 

CPU

GPU2*0J 8� */
f*R(
&__inference_signature_wrapper_10392441
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOpBaudio2_face/articulation_layer/conv2d_5/kernel/Read/ReadVariableOp@audio2_face/articulation_layer/conv2d_5/bias/Read/ReadVariableOpBaudio2_face/articulation_layer/conv2d_6/kernel/Read/ReadVariableOp@audio2_face/articulation_layer/conv2d_6/bias/Read/ReadVariableOpBaudio2_face/articulation_layer/conv2d_7/kernel/Read/ReadVariableOp@audio2_face/articulation_layer/conv2d_7/bias/Read/ReadVariableOpBaudio2_face/articulation_layer/conv2d_8/kernel/Read/ReadVariableOp@audio2_face/articulation_layer/conv2d_8/bias/Read/ReadVariableOpBaudio2_face/articulation_layer/conv2d_9/kernel/Read/ReadVariableOp@audio2_face/articulation_layer/conv2d_9/bias/Read/ReadVariableOpCaudio2_face/articulation_layer/conv2d_10/kernel/Read/ReadVariableOpAaudio2_face/articulation_layer/conv2d_10/bias/Read/ReadVariableOpCaudio2_face/articulation_layer/conv2d_11/kernel/Read/ReadVariableOpAaudio2_face/articulation_layer/conv2d_11/bias/Read/ReadVariableOpCaudio2_face/articulation_layer/conv2d_12/kernel/Read/ReadVariableOpAaudio2_face/articulation_layer/conv2d_12/bias/Read/ReadVariableOpCaudio2_face/articulation_layer/conv2d_13/kernel/Read/ReadVariableOpAaudio2_face/articulation_layer/conv2d_13/bias/Read/ReadVariableOpCaudio2_face/articulation_layer/conv2d_14/kernel/Read/ReadVariableOpAaudio2_face/articulation_layer/conv2d_14/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpConst_1*/
Tin(
&2$*
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
GPU2*0J 8� **
f%R#
!__inference__traced_save_10394936
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/bias.audio2_face/articulation_layer/conv2d_5/kernel,audio2_face/articulation_layer/conv2d_5/bias.audio2_face/articulation_layer/conv2d_6/kernel,audio2_face/articulation_layer/conv2d_6/bias.audio2_face/articulation_layer/conv2d_7/kernel,audio2_face/articulation_layer/conv2d_7/bias.audio2_face/articulation_layer/conv2d_8/kernel,audio2_face/articulation_layer/conv2d_8/bias.audio2_face/articulation_layer/conv2d_9/kernel,audio2_face/articulation_layer/conv2d_9/bias/audio2_face/articulation_layer/conv2d_10/kernel-audio2_face/articulation_layer/conv2d_10/bias/audio2_face/articulation_layer/conv2d_11/kernel-audio2_face/articulation_layer/conv2d_11/bias/audio2_face/articulation_layer/conv2d_12/kernel-audio2_face/articulation_layer/conv2d_12/bias/audio2_face/articulation_layer/conv2d_13/kernel-audio2_face/articulation_layer/conv2d_13/bias/audio2_face/articulation_layer/conv2d_14/kernel-audio2_face/articulation_layer/conv2d_14/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*.
Tin'
%2#*
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
GPU2*0J 8� *-
f(R&
$__inference__traced_restore_10395048��
��
�%
I__inference_audio2_face_layer_call_and_return_conditional_losses_10393194
input_1X
>formant_layer_sequential_conv2d_conv2d_readvariableop_resource:HM
?formant_layer_sequential_conv2d_biasadd_readvariableop_resource:HZ
@formant_layer_sequential_conv2d_1_conv2d_readvariableop_resource:HlO
Aformant_layer_sequential_conv2d_1_biasadd_readvariableop_resource:l[
@formant_layer_sequential_conv2d_2_conv2d_readvariableop_resource:l�P
Aformant_layer_sequential_conv2d_2_biasadd_readvariableop_resource:	�\
@formant_layer_sequential_conv2d_3_conv2d_readvariableop_resource:��P
Aformant_layer_sequential_conv2d_3_biasadd_readvariableop_resource:	�\
@formant_layer_sequential_conv2d_4_conv2d_readvariableop_resource:��P
Aformant_layer_sequential_conv2d_4_biasadd_readvariableop_resource:	�!
articulation_layer_tile_inputV
:articulation_layer_conv2d_5_conv2d_readvariableop_resource:��J
;articulation_layer_conv2d_5_biasadd_readvariableop_resource:	�T
:articulation_layer_conv2d_6_conv2d_readvariableop_resource:I
;articulation_layer_conv2d_6_biasadd_readvariableop_resource:V
:articulation_layer_conv2d_7_conv2d_readvariableop_resource:��J
;articulation_layer_conv2d_7_biasadd_readvariableop_resource:	�T
:articulation_layer_conv2d_8_conv2d_readvariableop_resource:I
;articulation_layer_conv2d_8_biasadd_readvariableop_resource:V
:articulation_layer_conv2d_9_conv2d_readvariableop_resource:��J
;articulation_layer_conv2d_9_biasadd_readvariableop_resource:	�U
;articulation_layer_conv2d_10_conv2d_readvariableop_resource:J
<articulation_layer_conv2d_10_biasadd_readvariableop_resource:W
;articulation_layer_conv2d_11_conv2d_readvariableop_resource:��K
<articulation_layer_conv2d_11_biasadd_readvariableop_resource:	�U
;articulation_layer_conv2d_12_conv2d_readvariableop_resource:J
<articulation_layer_conv2d_12_biasadd_readvariableop_resource:W
;articulation_layer_conv2d_13_conv2d_readvariableop_resource:��K
<articulation_layer_conv2d_13_biasadd_readvariableop_resource:	�U
;articulation_layer_conv2d_14_conv2d_readvariableop_resource:J
<articulation_layer_conv2d_14_biasadd_readvariableop_resource:R
>output_layer_sequential_1_dense_matmul_readvariableop_resource:
��N
?output_layer_sequential_1_dense_biasadd_readvariableop_resource:	�S
@output_layer_sequential_1_dense_1_matmul_readvariableop_resource:	�%O
Aoutput_layer_sequential_1_dense_1_biasadd_readvariableop_resource:%
identity

identity_1��3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_10/Conv2D/ReadVariableOp�3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_11/Conv2D/ReadVariableOp�3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_12/Conv2D/ReadVariableOp�3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_13/Conv2D/ReadVariableOp�3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_14/Conv2D/ReadVariableOp�2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_5/Conv2D/ReadVariableOp�2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_6/Conv2D/ReadVariableOp�2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_7/Conv2D/ReadVariableOp�2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_8/Conv2D/ReadVariableOp�2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_9/Conv2D/ReadVariableOp�6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp�5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp�6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp�5output_layer/sequential_1/dense/MatMul/ReadVariableOp�8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp�7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp�
5formant_layer/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp>formant_layer_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype027
5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp�
&formant_layer/sequential/conv2d/Conv2DConv2Dinput_1=formant_layer/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2(
&formant_layer/sequential/conv2d/Conv2D�
6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp?formant_layer_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype028
6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp�
'formant_layer/sequential/conv2d/BiasAddBiasAdd/formant_layer/sequential/conv2d/Conv2D:output:0>formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2)
'formant_layer/sequential/conv2d/BiasAdd�
$formant_layer/sequential/conv2d/ReluRelu0formant_layer/sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H2&
$formant_layer/sequential/conv2d/Relu�
7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype029
7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_1/Conv2DConv2D2formant_layer/sequential/conv2d/Relu:activations:0?formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_1/Conv2D�
8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02:
8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_1/BiasAddBiasAdd1formant_layer/sequential/conv2d_1/Conv2D:output:0@formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2+
)formant_layer/sequential/conv2d_1/BiasAdd�
&formant_layer/sequential/conv2d_1/ReluRelu2formant_layer/sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l2(
&formant_layer/sequential/conv2d_1/Relu�
7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype029
7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_2/Conv2DConv2D4formant_layer/sequential/conv2d_1/Relu:activations:0?formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_2/Conv2D�
8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_2/BiasAddBiasAdd1formant_layer/sequential/conv2d_2/Conv2D:output:0@formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2+
)formant_layer/sequential/conv2d_2/BiasAdd�
&formant_layer/sequential/conv2d_2/ReluRelu2formant_layer/sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2(
&formant_layer/sequential/conv2d_2/Relu�
7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype029
7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_3/Conv2DConv2D4formant_layer/sequential/conv2d_2/Relu:activations:0?formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_3/Conv2D�
8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_3/BiasAddBiasAdd1formant_layer/sequential/conv2d_3/Conv2D:output:0@formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2+
)formant_layer/sequential/conv2d_3/BiasAdd�
&formant_layer/sequential/conv2d_3/ReluRelu2formant_layer/sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2(
&formant_layer/sequential/conv2d_3/Relu�
7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype029
7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_4/Conv2DConv2D4formant_layer/sequential/conv2d_3/Relu:activations:0?formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_4/Conv2D�
8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_4/BiasAddBiasAdd1formant_layer/sequential/conv2d_4/Conv2D:output:0@formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2+
)formant_layer/sequential/conv2d_4/BiasAdd�
&formant_layer/sequential/conv2d_4/ReluRelu2formant_layer/sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2(
&formant_layer/sequential/conv2d_4/Relu�
articulation_layer/ShapeShape4formant_layer/sequential/conv2d_4/Relu:activations:0*
T0*
_output_shapes
:2
articulation_layer/Shape�
&articulation_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&articulation_layer/strided_slice/stack�
(articulation_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(articulation_layer/strided_slice/stack_1�
(articulation_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(articulation_layer/strided_slice/stack_2�
 articulation_layer/strided_sliceStridedSlice!articulation_layer/Shape:output:0/articulation_layer/strided_slice/stack:output:01articulation_layer/strided_slice/stack_1:output:01articulation_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 articulation_layer/strided_slice�
#articulation_layer/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#articulation_layer/Tile/multiples/1�
#articulation_layer/Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#articulation_layer/Tile/multiples/2�
#articulation_layer/Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#articulation_layer/Tile/multiples/3�
!articulation_layer/Tile/multiplesPack)articulation_layer/strided_slice:output:0,articulation_layer/Tile/multiples/1:output:0,articulation_layer/Tile/multiples/2:output:0,articulation_layer/Tile/multiples/3:output:0*
N*
T0*
_output_shapes
:2#
!articulation_layer/Tile/multiples�
articulation_layer/TileTilearticulation_layer_tile_input*articulation_layer/Tile/multiples:output:0*
T0*/
_output_shapes
:���������@2
articulation_layer/Tile�
1articulation_layer/conv2d_5/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype023
1articulation_layer/conv2d_5/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_5/Conv2DConv2D4formant_layer/sequential/conv2d_4/Relu:activations:09articulation_layer/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �*
paddingSAME*
strides
2$
"articulation_layer/conv2d_5/Conv2D�
2articulation_layer/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype024
2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_5/BiasAddBiasAdd+articulation_layer/conv2d_5/Conv2D:output:0:articulation_layer/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �2%
#articulation_layer/conv2d_5/BiasAdd�
 articulation_layer/conv2d_5/ReluRelu,articulation_layer/conv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:��������� �2"
 articulation_layer/conv2d_5/Relu�
1articulation_layer/conv2d_6/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype023
1articulation_layer/conv2d_6/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_6/Conv2DConv2D articulation_layer/Tile:output:09articulation_layer/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
2$
"articulation_layer/conv2d_6/Conv2D�
2articulation_layer/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_6/BiasAddBiasAdd+articulation_layer/conv2d_6/Conv2D:output:0:articulation_layer/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2%
#articulation_layer/conv2d_6/BiasAdd�
 articulation_layer/conv2d_6/ReluRelu,articulation_layer/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:��������� 2"
 articulation_layer/conv2d_6/Relu�
articulation_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2 
articulation_layer/concat/axis�
articulation_layer/concatConcatV2.articulation_layer/conv2d_5/Relu:activations:0.articulation_layer/conv2d_6/Relu:activations:0'articulation_layer/concat/axis:output:0*
N*
T0*0
_output_shapes
:��������� �2
articulation_layer/concat�
1articulation_layer/conv2d_7/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype023
1articulation_layer/conv2d_7/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_7/Conv2DConv2D"articulation_layer/concat:output:09articulation_layer/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2$
"articulation_layer/conv2d_7/Conv2D�
2articulation_layer/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype024
2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_7/BiasAddBiasAdd+articulation_layer/conv2d_7/Conv2D:output:0:articulation_layer/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2%
#articulation_layer/conv2d_7/BiasAdd�
 articulation_layer/conv2d_7/ReluRelu,articulation_layer/conv2d_7/BiasAdd:output:0*
T0*0
_output_shapes
:����������2"
 articulation_layer/conv2d_7/Relu�
1articulation_layer/conv2d_8/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype023
1articulation_layer/conv2d_8/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_8/Conv2DConv2D articulation_layer/Tile:output:09articulation_layer/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2$
"articulation_layer/conv2d_8/Conv2D�
2articulation_layer/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_8/BiasAddBiasAdd+articulation_layer/conv2d_8/Conv2D:output:0:articulation_layer/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2%
#articulation_layer/conv2d_8/BiasAdd�
 articulation_layer/conv2d_8/ReluRelu,articulation_layer/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������2"
 articulation_layer/conv2d_8/Relu�
 articulation_layer/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_1/axis�
articulation_layer/concat_1ConcatV2.articulation_layer/conv2d_7/Relu:activations:0.articulation_layer/conv2d_8/Relu:activations:0)articulation_layer/concat_1/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_1�
1articulation_layer/conv2d_9/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_9_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype023
1articulation_layer/conv2d_9/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_9/Conv2DConv2D$articulation_layer/concat_1:output:09articulation_layer/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2$
"articulation_layer/conv2d_9/Conv2D�
2articulation_layer/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype024
2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_9/BiasAddBiasAdd+articulation_layer/conv2d_9/Conv2D:output:0:articulation_layer/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2%
#articulation_layer/conv2d_9/BiasAdd�
 articulation_layer/conv2d_9/ReluRelu,articulation_layer/conv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:����������2"
 articulation_layer/conv2d_9/Relu�
2articulation_layer/conv2d_10/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2articulation_layer/conv2d_10/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_10/Conv2DConv2D articulation_layer/Tile:output:0:articulation_layer/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_10/Conv2D�
3articulation_layer/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_10/BiasAddBiasAdd,articulation_layer/conv2d_10/Conv2D:output:0;articulation_layer/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2&
$articulation_layer/conv2d_10/BiasAdd�
!articulation_layer/conv2d_10/ReluRelu-articulation_layer/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:���������2#
!articulation_layer/conv2d_10/Relu�
 articulation_layer/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_2/axis�
articulation_layer/concat_2ConcatV2.articulation_layer/conv2d_9/Relu:activations:0/articulation_layer/conv2d_10/Relu:activations:0)articulation_layer/concat_2/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_2�
2articulation_layer/conv2d_11/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype024
2articulation_layer/conv2d_11/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_11/Conv2DConv2D$articulation_layer/concat_2:output:0:articulation_layer/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_11/Conv2D�
3articulation_layer/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype025
3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_11/BiasAddBiasAdd,articulation_layer/conv2d_11/Conv2D:output:0;articulation_layer/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2&
$articulation_layer/conv2d_11/BiasAdd�
!articulation_layer/conv2d_11/ReluRelu-articulation_layer/conv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:����������2#
!articulation_layer/conv2d_11/Relu�
2articulation_layer/conv2d_12/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2articulation_layer/conv2d_12/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_12/Conv2DConv2D articulation_layer/Tile:output:0:articulation_layer/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_12/Conv2D�
3articulation_layer/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_12/BiasAddBiasAdd,articulation_layer/conv2d_12/Conv2D:output:0;articulation_layer/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2&
$articulation_layer/conv2d_12/BiasAdd�
!articulation_layer/conv2d_12/ReluRelu-articulation_layer/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������2#
!articulation_layer/conv2d_12/Relu�
 articulation_layer/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_3/axis�
articulation_layer/concat_3ConcatV2/articulation_layer/conv2d_11/Relu:activations:0/articulation_layer/conv2d_12/Relu:activations:0)articulation_layer/concat_3/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_3�
2articulation_layer/conv2d_13/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype024
2articulation_layer/conv2d_13/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_13/Conv2DConv2D$articulation_layer/concat_3:output:0:articulation_layer/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_13/Conv2D�
3articulation_layer/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype025
3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_13/BiasAddBiasAdd,articulation_layer/conv2d_13/Conv2D:output:0;articulation_layer/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2&
$articulation_layer/conv2d_13/BiasAdd�
!articulation_layer/conv2d_13/ReluRelu-articulation_layer/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:����������2#
!articulation_layer/conv2d_13/Relu�
2articulation_layer/conv2d_14/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2articulation_layer/conv2d_14/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_14/Conv2DConv2D articulation_layer/Tile:output:0:articulation_layer/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
@2%
#articulation_layer/conv2d_14/Conv2D�
3articulation_layer/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_14/BiasAddBiasAdd,articulation_layer/conv2d_14/Conv2D:output:0;articulation_layer/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2&
$articulation_layer/conv2d_14/BiasAdd�
!articulation_layer/conv2d_14/ReluRelu-articulation_layer/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:���������2#
!articulation_layer/conv2d_14/Relu�
 articulation_layer/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_4/axis�
articulation_layer/concat_4ConcatV2/articulation_layer/conv2d_13/Relu:activations:0/articulation_layer/conv2d_14/Relu:activations:0)articulation_layer/concat_4/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_4�
'output_layer/sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2)
'output_layer/sequential_1/flatten/Const�
)output_layer/sequential_1/flatten/ReshapeReshape$articulation_layer/concat_4:output:00output_layer/sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:����������2+
)output_layer/sequential_1/flatten/Reshape�
5output_layer/sequential_1/dense/MatMul/ReadVariableOpReadVariableOp>output_layer_sequential_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype027
5output_layer/sequential_1/dense/MatMul/ReadVariableOp�
&output_layer/sequential_1/dense/MatMulMatMul2output_layer/sequential_1/flatten/Reshape:output:0=output_layer/sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2(
&output_layer/sequential_1/dense/MatMul�
6output_layer/sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOp?output_layer_sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype028
6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp�
'output_layer/sequential_1/dense/BiasAddBiasAdd0output_layer/sequential_1/dense/MatMul:product:0>output_layer/sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2)
'output_layer/sequential_1/dense/BiasAdd�
*output_layer/sequential_1/dropout/IdentityIdentity0output_layer/sequential_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2,
*output_layer/sequential_1/dropout/Identity�
7output_layer/sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp@output_layer_sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype029
7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp�
(output_layer/sequential_1/dense_1/MatMulMatMul3output_layer/sequential_1/dropout/Identity:output:0?output_layer/sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2*
(output_layer/sequential_1/dense_1/MatMul�
8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpAoutput_layer_sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02:
8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp�
)output_layer/sequential_1/dense_1/BiasAddBiasAdd2output_layer/sequential_1/dense_1/MatMul:product:0@output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2+
)output_layer/sequential_1/dense_1/BiasAdd�
IdentityIdentity2output_layer/sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�

Identity_1Identity articulation_layer/Tile:output:0^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1�
NoOpNoOp4^articulation_layer/conv2d_10/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_10/Conv2D/ReadVariableOp4^articulation_layer/conv2d_11/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_11/Conv2D/ReadVariableOp4^articulation_layer/conv2d_12/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_12/Conv2D/ReadVariableOp4^articulation_layer/conv2d_13/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_13/Conv2D/ReadVariableOp4^articulation_layer/conv2d_14/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_14/Conv2D/ReadVariableOp3^articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_5/Conv2D/ReadVariableOp3^articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_6/Conv2D/ReadVariableOp3^articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_7/Conv2D/ReadVariableOp3^articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_8/Conv2D/ReadVariableOp3^articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_9/Conv2D/ReadVariableOp7^formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp6^formant_layer/sequential/conv2d/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp7^output_layer/sequential_1/dense/BiasAdd/ReadVariableOp6^output_layer/sequential_1/dense/MatMul/ReadVariableOp9^output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp8^output_layer/sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapess
q:��������� @: : : : : : : : : : :@: : : : : : : : : : : : : : : : : : : : : : : : 2j
3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_10/Conv2D/ReadVariableOp2articulation_layer/conv2d_10/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_11/Conv2D/ReadVariableOp2articulation_layer/conv2d_11/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_12/Conv2D/ReadVariableOp2articulation_layer/conv2d_12/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_13/Conv2D/ReadVariableOp2articulation_layer/conv2d_13/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_14/Conv2D/ReadVariableOp2articulation_layer/conv2d_14/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_5/Conv2D/ReadVariableOp1articulation_layer/conv2d_5/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_6/Conv2D/ReadVariableOp1articulation_layer/conv2d_6/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_7/Conv2D/ReadVariableOp1articulation_layer/conv2d_7/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_8/Conv2D/ReadVariableOp1articulation_layer/conv2d_8/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_9/Conv2D/ReadVariableOp1articulation_layer/conv2d_9/Conv2D/ReadVariableOp2p
6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp2n
5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp2p
6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp2n
5output_layer/sequential_1/dense/MatMul/ReadVariableOp5output_layer/sequential_1/dense/MatMul/ReadVariableOp2t
8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp2r
7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp:X T
/
_output_shapes
:��������� @
!
_user_specified_name	input_1:,(
&
_output_shapes
:@
�
�
K__inference_formant_layer_layer_call_and_return_conditional_losses_10390783
x-
sequential_10390761:H!
sequential_10390763:H-
sequential_10390765:Hl!
sequential_10390767:l.
sequential_10390769:l�"
sequential_10390771:	�/
sequential_10390773:��"
sequential_10390775:	�/
sequential_10390777:��"
sequential_10390779:	�
identity��"sequential/StatefulPartitionedCall�
"sequential/StatefulPartitionedCallStatefulPartitionedCallxsequential_10390761sequential_10390763sequential_10390765sequential_10390767sequential_10390769sequential_10390771sequential_10390773sequential_10390775sequential_10390777sequential_10390779*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_103905192$
"sequential/StatefulPartitionedCall�
IdentityIdentity+sequential/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identitys
NoOpNoOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:R N
/
_output_shapes
:��������� @

_user_specified_namex
�
�
H__inference_sequential_layer_call_and_return_conditional_losses_10390648

inputs)
conv2d_10390622:H
conv2d_10390624:H+
conv2d_1_10390627:Hl
conv2d_1_10390629:l,
conv2d_2_10390632:l� 
conv2d_2_10390634:	�-
conv2d_3_10390637:�� 
conv2d_3_10390639:	�-
conv2d_4_10390642:�� 
conv2d_4_10390644:	�
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10390622conv2d_10390624*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_103904442 
conv2d/StatefulPartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_10390627conv2d_1_10390629*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@l*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_103904612"
 conv2d_1/StatefulPartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_10390632conv2d_2_10390634*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_103904782"
 conv2d_2/StatefulPartitionedCall�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_10390637conv2d_3_10390639*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_103904952"
 conv2d_3/StatefulPartitionedCall�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_10390642conv2d_4_10390644*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_103905122"
 conv2d_4/StatefulPartitionedCall�
IdentityIdentity)conv2d_4/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:W S
/
_output_shapes
:��������� @
 
_user_specified_nameinputs
�}
�
P__inference_articulation_layer_layer_call_and_return_conditional_losses_10393797
x

tile_inputC
'conv2d_5_conv2d_readvariableop_resource:��7
(conv2d_5_biasadd_readvariableop_resource:	�A
'conv2d_6_conv2d_readvariableop_resource:6
(conv2d_6_biasadd_readvariableop_resource:C
'conv2d_7_conv2d_readvariableop_resource:��7
(conv2d_7_biasadd_readvariableop_resource:	�A
'conv2d_8_conv2d_readvariableop_resource:6
(conv2d_8_biasadd_readvariableop_resource:C
'conv2d_9_conv2d_readvariableop_resource:��7
(conv2d_9_biasadd_readvariableop_resource:	�B
(conv2d_10_conv2d_readvariableop_resource:7
)conv2d_10_biasadd_readvariableop_resource:D
(conv2d_11_conv2d_readvariableop_resource:��8
)conv2d_11_biasadd_readvariableop_resource:	�B
(conv2d_12_conv2d_readvariableop_resource:7
)conv2d_12_biasadd_readvariableop_resource:D
(conv2d_13_conv2d_readvariableop_resource:��8
)conv2d_13_biasadd_readvariableop_resource:	�B
(conv2d_14_conv2d_readvariableop_resource:7
)conv2d_14_biasadd_readvariableop_resource:
identity

identity_1�� conv2d_10/BiasAdd/ReadVariableOp�conv2d_10/Conv2D/ReadVariableOp� conv2d_11/BiasAdd/ReadVariableOp�conv2d_11/Conv2D/ReadVariableOp� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp�conv2d_5/BiasAdd/ReadVariableOp�conv2d_5/Conv2D/ReadVariableOp�conv2d_6/BiasAdd/ReadVariableOp�conv2d_6/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�conv2d_8/BiasAdd/ReadVariableOp�conv2d_8/Conv2D/ReadVariableOp�conv2d_9/BiasAdd/ReadVariableOp�conv2d_9/Conv2D/ReadVariableOp?
ShapeShapex*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicef
Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Tile/multiples/1f
Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :2
Tile/multiples/2f
Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :2
Tile/multiples/3�
Tile/multiplesPackstrided_slice:output:0Tile/multiples/1:output:0Tile/multiples/2:output:0Tile/multiples/3:output:0*
N*
T0*
_output_shapes
:2
Tile/multipless
TileTile
tile_inputTile/multiples:output:0*
T0*/
_output_shapes
:���������@2
Tile�
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_5/Conv2D/ReadVariableOp�
conv2d_5/Conv2DConv2Dx&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �*
paddingSAME*
strides
2
conv2d_5/Conv2D�
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_5/BiasAdd/ReadVariableOp�
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �2
conv2d_5/BiasAdd|
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:��������� �2
conv2d_5/Relu�
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_6/Conv2D/ReadVariableOp�
conv2d_6/Conv2DConv2DTile:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
2
conv2d_6/Conv2D�
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_6/BiasAdd/ReadVariableOp�
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2
conv2d_6/BiasAdd{
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:��������� 2
conv2d_6/Relu\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2conv2d_5/Relu:activations:0conv2d_6/Relu:activations:0concat/axis:output:0*
N*
T0*0
_output_shapes
:��������� �2
concat�
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_7/Conv2D/ReadVariableOp�
conv2d_7/Conv2DConv2Dconcat:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_7/Conv2D�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_7/BiasAdd/ReadVariableOp�
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_7/BiasAdd|
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_7/Relu�
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_8/Conv2D/ReadVariableOp�
conv2d_8/Conv2DConv2DTile:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_8/Conv2D�
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_8/BiasAdd/ReadVariableOp�
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_8/BiasAdd{
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_8/Relu`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis�
concat_1ConcatV2conv2d_7/Relu:activations:0conv2d_8/Relu:activations:0concat_1/axis:output:0*
N*
T0*0
_output_shapes
:����������2

concat_1�
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_9/Conv2D/ReadVariableOp�
conv2d_9/Conv2DConv2Dconcat_1:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_9/Conv2D�
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_9/BiasAdd/ReadVariableOp�
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_9/BiasAdd|
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_9/Relu�
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_10/Conv2D/ReadVariableOp�
conv2d_10/Conv2DConv2DTile:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_10/Conv2D�
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp�
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_10/Relu`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis�
concat_2ConcatV2conv2d_9/Relu:activations:0conv2d_10/Relu:activations:0concat_2/axis:output:0*
N*
T0*0
_output_shapes
:����������2

concat_2�
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02!
conv2d_11/Conv2D/ReadVariableOp�
conv2d_11/Conv2DConv2Dconcat_2:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_11/Conv2D�
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp�
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_11/BiasAdd
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_11/Relu�
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_12/Conv2D/ReadVariableOp�
conv2d_12/Conv2DConv2DTile:output:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_12/Conv2D�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_12/BiasAdd~
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_12/Relu`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_3/axis�
concat_3ConcatV2conv2d_11/Relu:activations:0conv2d_12/Relu:activations:0concat_3/axis:output:0*
N*
T0*0
_output_shapes
:����������2

concat_3�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02!
conv2d_13/Conv2D/ReadVariableOp�
conv2d_13/Conv2DConv2Dconcat_3:output:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_13/Conv2D�
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp�
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_13/BiasAdd
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_13/Relu�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_14/Conv2D/ReadVariableOp�
conv2d_14/Conv2DConv2DTile:output:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
@2
conv2d_14/Conv2D�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_14/BiasAdd~
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_14/Relu`
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_4/axis�
concat_4ConcatV2conv2d_13/Relu:activations:0conv2d_14/Relu:activations:0concat_4/axis:output:0*
N*
T0*0
_output_shapes
:����������2

concat_4u
IdentityIdentityconcat_4:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityt

Identity_1IdentityTile:output:0^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1�
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:���������@�:@: : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp:S O
0
_output_shapes
:���������@�

_user_specified_namex:,(
&
_output_shapes
:@
�4
�
H__inference_sequential_layer_call_and_return_conditional_losses_10394174

inputs?
%conv2d_conv2d_readvariableop_resource:H4
&conv2d_biasadd_readvariableop_resource:HA
'conv2d_1_conv2d_readvariableop_resource:Hl6
(conv2d_1_biasadd_readvariableop_resource:lB
'conv2d_2_conv2d_readvariableop_resource:l�7
(conv2d_2_biasadd_readvariableop_resource:	�C
'conv2d_3_conv2d_readvariableop_resource:��7
(conv2d_3_biasadd_readvariableop_resource:	�C
'conv2d_4_conv2d_readvariableop_resource:��7
(conv2d_4_biasadd_readvariableop_resource:	�
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H2
conv2d/Relu�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l2
conv2d_1/Relu�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
conv2d_2/Relu�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
conv2d_3/Relu�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
conv2d_4/BiasAdd|
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
conv2d_4/Relu
IdentityIdentityconv2d_4/Relu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:W S
/
_output_shapes
:��������� @
 
_user_specified_nameinputs
�
�
+__inference_conv2d_1_layer_call_fn_10394462

inputs!
unknown:Hl
	unknown_0:l
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@l*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_103904612
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@l2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@H: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@H
 
_user_specified_nameinputs
�
�
,__inference_conv2d_11_layer_call_fn_10394738

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_11_layer_call_and_return_conditional_losses_103910932
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_1_layer_call_and_return_conditional_losses_10391476

inputs1
matmul_readvariableop_resource:	�%-
biasadd_readvariableop_resource:%
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�%*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:%*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�)
�
I__inference_audio2_face_layer_call_and_return_conditional_losses_10391819
x0
formant_layer_10391743:H$
formant_layer_10391745:H0
formant_layer_10391747:Hl$
formant_layer_10391749:l1
formant_layer_10391751:l�%
formant_layer_10391753:	�2
formant_layer_10391755:��%
formant_layer_10391757:	�2
formant_layer_10391759:��%
formant_layer_10391761:	�
articulation_layer_103917647
articulation_layer_10391766:��*
articulation_layer_10391768:	�5
articulation_layer_10391770:)
articulation_layer_10391772:7
articulation_layer_10391774:��*
articulation_layer_10391776:	�5
articulation_layer_10391778:)
articulation_layer_10391780:7
articulation_layer_10391782:��*
articulation_layer_10391784:	�5
articulation_layer_10391786:)
articulation_layer_10391788:7
articulation_layer_10391790:��*
articulation_layer_10391792:	�5
articulation_layer_10391794:)
articulation_layer_10391796:7
articulation_layer_10391798:��*
articulation_layer_10391800:	�5
articulation_layer_10391802:)
articulation_layer_10391804:)
output_layer_10391808:
��$
output_layer_10391810:	�(
output_layer_10391812:	�%#
output_layer_10391814:%
identity

identity_1��*articulation_layer/StatefulPartitionedCall�%formant_layer/StatefulPartitionedCall�$output_layer/StatefulPartitionedCall�
%formant_layer/StatefulPartitionedCallStatefulPartitionedCallxformant_layer_10391743formant_layer_10391745formant_layer_10391747formant_layer_10391749formant_layer_10391751formant_layer_10391753formant_layer_10391755formant_layer_10391757formant_layer_10391759formant_layer_10391761*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_formant_layer_layer_call_and_return_conditional_losses_103907832'
%formant_layer/StatefulPartitionedCall�
*articulation_layer/StatefulPartitionedCallStatefulPartitionedCall.formant_layer/StatefulPartitionedCall:output:0articulation_layer_10391764articulation_layer_10391766articulation_layer_10391768articulation_layer_10391770articulation_layer_10391772articulation_layer_10391774articulation_layer_10391776articulation_layer_10391778articulation_layer_10391780articulation_layer_10391782articulation_layer_10391784articulation_layer_10391786articulation_layer_10391788articulation_layer_10391790articulation_layer_10391792articulation_layer_10391794articulation_layer_10391796articulation_layer_10391798articulation_layer_10391800articulation_layer_10391802articulation_layer_10391804*!
Tin
2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:����������:���������@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_articulation_layer_layer_call_and_return_conditional_losses_103911562,
*articulation_layer/StatefulPartitionedCall�
$output_layer/StatefulPartitionedCallStatefulPartitionedCall3articulation_layer/StatefulPartitionedCall:output:0output_layer_10391808output_layer_10391810output_layer_10391812output_layer_10391814*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_output_layer_layer_call_and_return_conditional_losses_103916472&
$output_layer/StatefulPartitionedCall�
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�

Identity_1Identity3articulation_layer/StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1�
NoOpNoOp+^articulation_layer/StatefulPartitionedCall&^formant_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapess
q:��������� @: : : : : : : : : : :@: : : : : : : : : : : : : : : : : : : : : : : : 2X
*articulation_layer/StatefulPartitionedCall*articulation_layer/StatefulPartitionedCall2N
%formant_layer/StatefulPartitionedCall%formant_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:R N
/
_output_shapes
:��������� @

_user_specified_namex:,(
&
_output_shapes
:@
� 
�
J__inference_sequential_1_layer_call_and_return_conditional_losses_10394433
flatten_input8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�%5
'dense_1_biasadd_readvariableop_resource:%
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
flatten/Const�
flatten/ReshapeReshapeflatten_inputflatten/Const:output:0*
T0*(
_output_shapes
:����������2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/BiasAdds
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const�
dropout/dropout/MulMuldense/BiasAdd:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout/dropout/Mult
dropout/dropout/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed{2.
,dropout/dropout/random_uniform/RandomUniform�
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/y�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2
dropout/dropout/GreaterEqual�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout/dropout/Cast�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout/dropout/Mul_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:_ [
0
_output_shapes
:����������
'
_user_specified_nameflatten_input
�
�
/__inference_output_layer_layer_call_fn_10393906
input_1
unknown:
��
	unknown_0:	�
	unknown_1:	�%
	unknown_2:%
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_output_layer_layer_call_and_return_conditional_losses_103916472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:����������
!
_user_specified_name	input_1
�
�
,__inference_conv2d_10_layer_call_fn_10394718

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_10_layer_call_and_return_conditional_losses_103910742
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
,__inference_conv2d_14_layer_call_fn_10394798

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_14_layer_call_and_return_conditional_losses_103911462
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
J__inference_output_layer_layer_call_and_return_conditional_losses_10393964
xE
1sequential_1_dense_matmul_readvariableop_resource:
��A
2sequential_1_dense_biasadd_readvariableop_resource:	�F
3sequential_1_dense_1_matmul_readvariableop_resource:	�%B
4sequential_1_dense_1_biasadd_readvariableop_resource:%
identity��)sequential_1/dense/BiasAdd/ReadVariableOp�(sequential_1/dense/MatMul/ReadVariableOp�+sequential_1/dense_1/BiasAdd/ReadVariableOp�*sequential_1/dense_1/MatMul/ReadVariableOp�
sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
sequential_1/flatten/Const�
sequential_1/flatten/ReshapeReshapex#sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:����������2
sequential_1/flatten/Reshape�
(sequential_1/dense/MatMul/ReadVariableOpReadVariableOp1sequential_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02*
(sequential_1/dense/MatMul/ReadVariableOp�
sequential_1/dense/MatMulMatMul%sequential_1/flatten/Reshape:output:00sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_1/dense/MatMul�
)sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)sequential_1/dense/BiasAdd/ReadVariableOp�
sequential_1/dense/BiasAddBiasAdd#sequential_1/dense/MatMul:product:01sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_1/dense/BiasAdd�
sequential_1/dropout/IdentityIdentity#sequential_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
sequential_1/dropout/Identity�
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp�
sequential_1/dense_1/MatMulMatMul&sequential_1/dropout/Identity:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
sequential_1/dense_1/MatMul�
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp�
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
sequential_1/dense_1/BiasAdd�
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�
NoOpNoOp*^sequential_1/dense/BiasAdd/ReadVariableOp)^sequential_1/dense/MatMul/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2V
)sequential_1/dense/BiasAdd/ReadVariableOp)sequential_1/dense/BiasAdd/ReadVariableOp2T
(sequential_1/dense/MatMul/ReadVariableOp(sequential_1/dense/MatMul/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:S O
0
_output_shapes
:����������

_user_specified_namex
�
d
E__inference_dropout_layer_call_and_return_conditional_losses_10394590

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed{2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�O
�

P__inference_articulation_layer_layer_call_and_return_conditional_losses_10391156
x

tile_input-
conv2d_5_10390986:�� 
conv2d_5_10390988:	�+
conv2d_6_10391003:
conv2d_6_10391005:-
conv2d_7_10391022:�� 
conv2d_7_10391024:	�+
conv2d_8_10391039:
conv2d_8_10391041:-
conv2d_9_10391058:�� 
conv2d_9_10391060:	�,
conv2d_10_10391075: 
conv2d_10_10391077:.
conv2d_11_10391094:��!
conv2d_11_10391096:	�,
conv2d_12_10391111: 
conv2d_12_10391113:.
conv2d_13_10391130:��!
conv2d_13_10391132:	�,
conv2d_14_10391147: 
conv2d_14_10391149:
identity

identity_1��!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall?
ShapeShapex*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicef
Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Tile/multiples/1f
Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :2
Tile/multiples/2f
Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :2
Tile/multiples/3�
Tile/multiplesPackstrided_slice:output:0Tile/multiples/1:output:0Tile/multiples/2:output:0Tile/multiples/3:output:0*
N*
T0*
_output_shapes
:2
Tile/multipless
TileTile
tile_inputTile/multiples:output:0*
T0*/
_output_shapes
:���������@2
Tile�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallxconv2d_5_10390986conv2d_5_10390988*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:��������� �*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_5_layer_call_and_return_conditional_losses_103909852"
 conv2d_5/StatefulPartitionedCall�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallTile:output:0conv2d_6_10391003conv2d_6_10391005*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_6_layer_call_and_return_conditional_losses_103910022"
 conv2d_6/StatefulPartitionedCall\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2)conv2d_5/StatefulPartitionedCall:output:0)conv2d_6/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*0
_output_shapes
:��������� �2
concat�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0conv2d_7_10391022conv2d_7_10391024*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_7_layer_call_and_return_conditional_losses_103910212"
 conv2d_7/StatefulPartitionedCall�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallTile:output:0conv2d_8_10391039conv2d_8_10391041*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_8_layer_call_and_return_conditional_losses_103910382"
 conv2d_8/StatefulPartitionedCall`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis�
concat_1ConcatV2)conv2d_7/StatefulPartitionedCall:output:0)conv2d_8/StatefulPartitionedCall:output:0concat_1/axis:output:0*
N*
T0*0
_output_shapes
:����������2

concat_1�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallconcat_1:output:0conv2d_9_10391058conv2d_9_10391060*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_9_layer_call_and_return_conditional_losses_103910572"
 conv2d_9/StatefulPartitionedCall�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallTile:output:0conv2d_10_10391075conv2d_10_10391077*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_10_layer_call_and_return_conditional_losses_103910742#
!conv2d_10/StatefulPartitionedCall`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis�
concat_2ConcatV2)conv2d_9/StatefulPartitionedCall:output:0*conv2d_10/StatefulPartitionedCall:output:0concat_2/axis:output:0*
N*
T0*0
_output_shapes
:����������2

concat_2�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCallconcat_2:output:0conv2d_11_10391094conv2d_11_10391096*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_11_layer_call_and_return_conditional_losses_103910932#
!conv2d_11/StatefulPartitionedCall�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallTile:output:0conv2d_12_10391111conv2d_12_10391113*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_12_layer_call_and_return_conditional_losses_103911102#
!conv2d_12/StatefulPartitionedCall`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_3/axis�
concat_3ConcatV2*conv2d_11/StatefulPartitionedCall:output:0*conv2d_12/StatefulPartitionedCall:output:0concat_3/axis:output:0*
N*
T0*0
_output_shapes
:����������2

concat_3�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallconcat_3:output:0conv2d_13_10391130conv2d_13_10391132*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_13_layer_call_and_return_conditional_losses_103911292#
!conv2d_13/StatefulPartitionedCall�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCallTile:output:0conv2d_14_10391147conv2d_14_10391149*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_14_layer_call_and_return_conditional_losses_103911462#
!conv2d_14/StatefulPartitionedCall`
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_4/axis�
concat_4ConcatV2*conv2d_13/StatefulPartitionedCall:output:0*conv2d_14/StatefulPartitionedCall:output:0concat_4/axis:output:0*
N*
T0*0
_output_shapes
:����������2

concat_4u
IdentityIdentityconcat_4:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityt

Identity_1IdentityTile:output:0^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1�
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:���������@�:@: : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall:S O
0
_output_shapes
:���������@�

_user_specified_namex:,(
&
_output_shapes
:@
�
�	
&__inference_signature_wrapper_10392441
input_1!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9&

unknown_10:��

unknown_11:	�$

unknown_12:

unknown_13:&

unknown_14:��

unknown_15:	�$

unknown_16:

unknown_17:&

unknown_18:��

unknown_19:	�$

unknown_20:

unknown_21:&

unknown_22:��

unknown_23:	�$

unknown_24:

unknown_25:&

unknown_26:��

unknown_27:	�$

unknown_28:

unknown_29:

unknown_30:
��

unknown_31:	�

unknown_32:	�%

unknown_33:%
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������%:���������@*D
_read_only_resource_inputs&
$"	
 !"#*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference__wrapped_model_103904262
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapess
q:��������� @: : : : : : : : : : :@: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:��������� @
!
_user_specified_name	input_1:,(
&
_output_shapes
:@
�

�
J__inference_output_layer_layer_call_and_return_conditional_losses_10391647
x)
sequential_1_10391637:
��$
sequential_1_10391639:	�(
sequential_1_10391641:	�%#
sequential_1_10391643:%
identity��$sequential_1/StatefulPartitionedCall�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallxsequential_1_10391637sequential_1_10391639sequential_1_10391641sequential_1_10391643*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_103914832&
$sequential_1/StatefulPartitionedCall�
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identityu
NoOpNoOp%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:S O
0
_output_shapes
:����������

_user_specified_namex
�
�
+__inference_conv2d_5_layer_call_fn_10394618

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:��������� �*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_5_layer_call_and_return_conditional_losses_103909852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:��������� �2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������@�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������@�
 
_user_specified_nameinputs
�
c
E__inference_dropout_layer_call_and_return_conditional_losses_10391464

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:����������2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_dense_1_layer_call_fn_10394599

inputs
unknown:	�%
	unknown_0:%
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_103914762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�%
I__inference_audio2_face_layer_call_and_return_conditional_losses_10393048
xX
>formant_layer_sequential_conv2d_conv2d_readvariableop_resource:HM
?formant_layer_sequential_conv2d_biasadd_readvariableop_resource:HZ
@formant_layer_sequential_conv2d_1_conv2d_readvariableop_resource:HlO
Aformant_layer_sequential_conv2d_1_biasadd_readvariableop_resource:l[
@formant_layer_sequential_conv2d_2_conv2d_readvariableop_resource:l�P
Aformant_layer_sequential_conv2d_2_biasadd_readvariableop_resource:	�\
@formant_layer_sequential_conv2d_3_conv2d_readvariableop_resource:��P
Aformant_layer_sequential_conv2d_3_biasadd_readvariableop_resource:	�\
@formant_layer_sequential_conv2d_4_conv2d_readvariableop_resource:��P
Aformant_layer_sequential_conv2d_4_biasadd_readvariableop_resource:	�!
articulation_layer_tile_inputV
:articulation_layer_conv2d_5_conv2d_readvariableop_resource:��J
;articulation_layer_conv2d_5_biasadd_readvariableop_resource:	�T
:articulation_layer_conv2d_6_conv2d_readvariableop_resource:I
;articulation_layer_conv2d_6_biasadd_readvariableop_resource:V
:articulation_layer_conv2d_7_conv2d_readvariableop_resource:��J
;articulation_layer_conv2d_7_biasadd_readvariableop_resource:	�T
:articulation_layer_conv2d_8_conv2d_readvariableop_resource:I
;articulation_layer_conv2d_8_biasadd_readvariableop_resource:V
:articulation_layer_conv2d_9_conv2d_readvariableop_resource:��J
;articulation_layer_conv2d_9_biasadd_readvariableop_resource:	�U
;articulation_layer_conv2d_10_conv2d_readvariableop_resource:J
<articulation_layer_conv2d_10_biasadd_readvariableop_resource:W
;articulation_layer_conv2d_11_conv2d_readvariableop_resource:��K
<articulation_layer_conv2d_11_biasadd_readvariableop_resource:	�U
;articulation_layer_conv2d_12_conv2d_readvariableop_resource:J
<articulation_layer_conv2d_12_biasadd_readvariableop_resource:W
;articulation_layer_conv2d_13_conv2d_readvariableop_resource:��K
<articulation_layer_conv2d_13_biasadd_readvariableop_resource:	�U
;articulation_layer_conv2d_14_conv2d_readvariableop_resource:J
<articulation_layer_conv2d_14_biasadd_readvariableop_resource:R
>output_layer_sequential_1_dense_matmul_readvariableop_resource:
��N
?output_layer_sequential_1_dense_biasadd_readvariableop_resource:	�S
@output_layer_sequential_1_dense_1_matmul_readvariableop_resource:	�%O
Aoutput_layer_sequential_1_dense_1_biasadd_readvariableop_resource:%
identity

identity_1��3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_10/Conv2D/ReadVariableOp�3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_11/Conv2D/ReadVariableOp�3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_12/Conv2D/ReadVariableOp�3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_13/Conv2D/ReadVariableOp�3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_14/Conv2D/ReadVariableOp�2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_5/Conv2D/ReadVariableOp�2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_6/Conv2D/ReadVariableOp�2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_7/Conv2D/ReadVariableOp�2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_8/Conv2D/ReadVariableOp�2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_9/Conv2D/ReadVariableOp�6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp�5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp�6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp�5output_layer/sequential_1/dense/MatMul/ReadVariableOp�8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp�7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp�
5formant_layer/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp>formant_layer_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype027
5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp�
&formant_layer/sequential/conv2d/Conv2DConv2Dx=formant_layer/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2(
&formant_layer/sequential/conv2d/Conv2D�
6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp?formant_layer_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype028
6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp�
'formant_layer/sequential/conv2d/BiasAddBiasAdd/formant_layer/sequential/conv2d/Conv2D:output:0>formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2)
'formant_layer/sequential/conv2d/BiasAdd�
$formant_layer/sequential/conv2d/ReluRelu0formant_layer/sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H2&
$formant_layer/sequential/conv2d/Relu�
7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype029
7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_1/Conv2DConv2D2formant_layer/sequential/conv2d/Relu:activations:0?formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_1/Conv2D�
8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02:
8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_1/BiasAddBiasAdd1formant_layer/sequential/conv2d_1/Conv2D:output:0@formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2+
)formant_layer/sequential/conv2d_1/BiasAdd�
&formant_layer/sequential/conv2d_1/ReluRelu2formant_layer/sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l2(
&formant_layer/sequential/conv2d_1/Relu�
7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype029
7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_2/Conv2DConv2D4formant_layer/sequential/conv2d_1/Relu:activations:0?formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_2/Conv2D�
8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_2/BiasAddBiasAdd1formant_layer/sequential/conv2d_2/Conv2D:output:0@formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2+
)formant_layer/sequential/conv2d_2/BiasAdd�
&formant_layer/sequential/conv2d_2/ReluRelu2formant_layer/sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2(
&formant_layer/sequential/conv2d_2/Relu�
7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype029
7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_3/Conv2DConv2D4formant_layer/sequential/conv2d_2/Relu:activations:0?formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_3/Conv2D�
8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_3/BiasAddBiasAdd1formant_layer/sequential/conv2d_3/Conv2D:output:0@formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2+
)formant_layer/sequential/conv2d_3/BiasAdd�
&formant_layer/sequential/conv2d_3/ReluRelu2formant_layer/sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2(
&formant_layer/sequential/conv2d_3/Relu�
7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype029
7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_4/Conv2DConv2D4formant_layer/sequential/conv2d_3/Relu:activations:0?formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_4/Conv2D�
8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_4/BiasAddBiasAdd1formant_layer/sequential/conv2d_4/Conv2D:output:0@formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2+
)formant_layer/sequential/conv2d_4/BiasAdd�
&formant_layer/sequential/conv2d_4/ReluRelu2formant_layer/sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2(
&formant_layer/sequential/conv2d_4/Relu�
articulation_layer/ShapeShape4formant_layer/sequential/conv2d_4/Relu:activations:0*
T0*
_output_shapes
:2
articulation_layer/Shape�
&articulation_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&articulation_layer/strided_slice/stack�
(articulation_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(articulation_layer/strided_slice/stack_1�
(articulation_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(articulation_layer/strided_slice/stack_2�
 articulation_layer/strided_sliceStridedSlice!articulation_layer/Shape:output:0/articulation_layer/strided_slice/stack:output:01articulation_layer/strided_slice/stack_1:output:01articulation_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 articulation_layer/strided_slice�
#articulation_layer/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#articulation_layer/Tile/multiples/1�
#articulation_layer/Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#articulation_layer/Tile/multiples/2�
#articulation_layer/Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#articulation_layer/Tile/multiples/3�
!articulation_layer/Tile/multiplesPack)articulation_layer/strided_slice:output:0,articulation_layer/Tile/multiples/1:output:0,articulation_layer/Tile/multiples/2:output:0,articulation_layer/Tile/multiples/3:output:0*
N*
T0*
_output_shapes
:2#
!articulation_layer/Tile/multiples�
articulation_layer/TileTilearticulation_layer_tile_input*articulation_layer/Tile/multiples:output:0*
T0*/
_output_shapes
:���������@2
articulation_layer/Tile�
1articulation_layer/conv2d_5/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype023
1articulation_layer/conv2d_5/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_5/Conv2DConv2D4formant_layer/sequential/conv2d_4/Relu:activations:09articulation_layer/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �*
paddingSAME*
strides
2$
"articulation_layer/conv2d_5/Conv2D�
2articulation_layer/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype024
2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_5/BiasAddBiasAdd+articulation_layer/conv2d_5/Conv2D:output:0:articulation_layer/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �2%
#articulation_layer/conv2d_5/BiasAdd�
 articulation_layer/conv2d_5/ReluRelu,articulation_layer/conv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:��������� �2"
 articulation_layer/conv2d_5/Relu�
1articulation_layer/conv2d_6/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype023
1articulation_layer/conv2d_6/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_6/Conv2DConv2D articulation_layer/Tile:output:09articulation_layer/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
2$
"articulation_layer/conv2d_6/Conv2D�
2articulation_layer/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_6/BiasAddBiasAdd+articulation_layer/conv2d_6/Conv2D:output:0:articulation_layer/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2%
#articulation_layer/conv2d_6/BiasAdd�
 articulation_layer/conv2d_6/ReluRelu,articulation_layer/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:��������� 2"
 articulation_layer/conv2d_6/Relu�
articulation_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2 
articulation_layer/concat/axis�
articulation_layer/concatConcatV2.articulation_layer/conv2d_5/Relu:activations:0.articulation_layer/conv2d_6/Relu:activations:0'articulation_layer/concat/axis:output:0*
N*
T0*0
_output_shapes
:��������� �2
articulation_layer/concat�
1articulation_layer/conv2d_7/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype023
1articulation_layer/conv2d_7/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_7/Conv2DConv2D"articulation_layer/concat:output:09articulation_layer/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2$
"articulation_layer/conv2d_7/Conv2D�
2articulation_layer/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype024
2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_7/BiasAddBiasAdd+articulation_layer/conv2d_7/Conv2D:output:0:articulation_layer/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2%
#articulation_layer/conv2d_7/BiasAdd�
 articulation_layer/conv2d_7/ReluRelu,articulation_layer/conv2d_7/BiasAdd:output:0*
T0*0
_output_shapes
:����������2"
 articulation_layer/conv2d_7/Relu�
1articulation_layer/conv2d_8/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype023
1articulation_layer/conv2d_8/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_8/Conv2DConv2D articulation_layer/Tile:output:09articulation_layer/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2$
"articulation_layer/conv2d_8/Conv2D�
2articulation_layer/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_8/BiasAddBiasAdd+articulation_layer/conv2d_8/Conv2D:output:0:articulation_layer/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2%
#articulation_layer/conv2d_8/BiasAdd�
 articulation_layer/conv2d_8/ReluRelu,articulation_layer/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������2"
 articulation_layer/conv2d_8/Relu�
 articulation_layer/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_1/axis�
articulation_layer/concat_1ConcatV2.articulation_layer/conv2d_7/Relu:activations:0.articulation_layer/conv2d_8/Relu:activations:0)articulation_layer/concat_1/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_1�
1articulation_layer/conv2d_9/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_9_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype023
1articulation_layer/conv2d_9/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_9/Conv2DConv2D$articulation_layer/concat_1:output:09articulation_layer/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2$
"articulation_layer/conv2d_9/Conv2D�
2articulation_layer/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype024
2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_9/BiasAddBiasAdd+articulation_layer/conv2d_9/Conv2D:output:0:articulation_layer/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2%
#articulation_layer/conv2d_9/BiasAdd�
 articulation_layer/conv2d_9/ReluRelu,articulation_layer/conv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:����������2"
 articulation_layer/conv2d_9/Relu�
2articulation_layer/conv2d_10/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2articulation_layer/conv2d_10/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_10/Conv2DConv2D articulation_layer/Tile:output:0:articulation_layer/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_10/Conv2D�
3articulation_layer/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_10/BiasAddBiasAdd,articulation_layer/conv2d_10/Conv2D:output:0;articulation_layer/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2&
$articulation_layer/conv2d_10/BiasAdd�
!articulation_layer/conv2d_10/ReluRelu-articulation_layer/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:���������2#
!articulation_layer/conv2d_10/Relu�
 articulation_layer/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_2/axis�
articulation_layer/concat_2ConcatV2.articulation_layer/conv2d_9/Relu:activations:0/articulation_layer/conv2d_10/Relu:activations:0)articulation_layer/concat_2/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_2�
2articulation_layer/conv2d_11/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype024
2articulation_layer/conv2d_11/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_11/Conv2DConv2D$articulation_layer/concat_2:output:0:articulation_layer/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_11/Conv2D�
3articulation_layer/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype025
3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_11/BiasAddBiasAdd,articulation_layer/conv2d_11/Conv2D:output:0;articulation_layer/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2&
$articulation_layer/conv2d_11/BiasAdd�
!articulation_layer/conv2d_11/ReluRelu-articulation_layer/conv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:����������2#
!articulation_layer/conv2d_11/Relu�
2articulation_layer/conv2d_12/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2articulation_layer/conv2d_12/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_12/Conv2DConv2D articulation_layer/Tile:output:0:articulation_layer/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_12/Conv2D�
3articulation_layer/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_12/BiasAddBiasAdd,articulation_layer/conv2d_12/Conv2D:output:0;articulation_layer/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2&
$articulation_layer/conv2d_12/BiasAdd�
!articulation_layer/conv2d_12/ReluRelu-articulation_layer/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������2#
!articulation_layer/conv2d_12/Relu�
 articulation_layer/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_3/axis�
articulation_layer/concat_3ConcatV2/articulation_layer/conv2d_11/Relu:activations:0/articulation_layer/conv2d_12/Relu:activations:0)articulation_layer/concat_3/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_3�
2articulation_layer/conv2d_13/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype024
2articulation_layer/conv2d_13/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_13/Conv2DConv2D$articulation_layer/concat_3:output:0:articulation_layer/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_13/Conv2D�
3articulation_layer/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype025
3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_13/BiasAddBiasAdd,articulation_layer/conv2d_13/Conv2D:output:0;articulation_layer/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2&
$articulation_layer/conv2d_13/BiasAdd�
!articulation_layer/conv2d_13/ReluRelu-articulation_layer/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:����������2#
!articulation_layer/conv2d_13/Relu�
2articulation_layer/conv2d_14/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2articulation_layer/conv2d_14/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_14/Conv2DConv2D articulation_layer/Tile:output:0:articulation_layer/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
@2%
#articulation_layer/conv2d_14/Conv2D�
3articulation_layer/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_14/BiasAddBiasAdd,articulation_layer/conv2d_14/Conv2D:output:0;articulation_layer/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2&
$articulation_layer/conv2d_14/BiasAdd�
!articulation_layer/conv2d_14/ReluRelu-articulation_layer/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:���������2#
!articulation_layer/conv2d_14/Relu�
 articulation_layer/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_4/axis�
articulation_layer/concat_4ConcatV2/articulation_layer/conv2d_13/Relu:activations:0/articulation_layer/conv2d_14/Relu:activations:0)articulation_layer/concat_4/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_4�
'output_layer/sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2)
'output_layer/sequential_1/flatten/Const�
)output_layer/sequential_1/flatten/ReshapeReshape$articulation_layer/concat_4:output:00output_layer/sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:����������2+
)output_layer/sequential_1/flatten/Reshape�
5output_layer/sequential_1/dense/MatMul/ReadVariableOpReadVariableOp>output_layer_sequential_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype027
5output_layer/sequential_1/dense/MatMul/ReadVariableOp�
&output_layer/sequential_1/dense/MatMulMatMul2output_layer/sequential_1/flatten/Reshape:output:0=output_layer/sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2(
&output_layer/sequential_1/dense/MatMul�
6output_layer/sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOp?output_layer_sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype028
6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp�
'output_layer/sequential_1/dense/BiasAddBiasAdd0output_layer/sequential_1/dense/MatMul:product:0>output_layer/sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2)
'output_layer/sequential_1/dense/BiasAdd�
/output_layer/sequential_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @21
/output_layer/sequential_1/dropout/dropout/Const�
-output_layer/sequential_1/dropout/dropout/MulMul0output_layer/sequential_1/dense/BiasAdd:output:08output_layer/sequential_1/dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������2/
-output_layer/sequential_1/dropout/dropout/Mul�
/output_layer/sequential_1/dropout/dropout/ShapeShape0output_layer/sequential_1/dense/BiasAdd:output:0*
T0*
_output_shapes
:21
/output_layer/sequential_1/dropout/dropout/Shape�
Foutput_layer/sequential_1/dropout/dropout/random_uniform/RandomUniformRandomUniform8output_layer/sequential_1/dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed{2H
Foutput_layer/sequential_1/dropout/dropout/random_uniform/RandomUniform�
8output_layer/sequential_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2:
8output_layer/sequential_1/dropout/dropout/GreaterEqual/y�
6output_layer/sequential_1/dropout/dropout/GreaterEqualGreaterEqualOoutput_layer/sequential_1/dropout/dropout/random_uniform/RandomUniform:output:0Aoutput_layer/sequential_1/dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������28
6output_layer/sequential_1/dropout/dropout/GreaterEqual�
.output_layer/sequential_1/dropout/dropout/CastCast:output_layer/sequential_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������20
.output_layer/sequential_1/dropout/dropout/Cast�
/output_layer/sequential_1/dropout/dropout/Mul_1Mul1output_layer/sequential_1/dropout/dropout/Mul:z:02output_layer/sequential_1/dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:����������21
/output_layer/sequential_1/dropout/dropout/Mul_1�
7output_layer/sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp@output_layer_sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype029
7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp�
(output_layer/sequential_1/dense_1/MatMulMatMul3output_layer/sequential_1/dropout/dropout/Mul_1:z:0?output_layer/sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2*
(output_layer/sequential_1/dense_1/MatMul�
8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpAoutput_layer_sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02:
8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp�
)output_layer/sequential_1/dense_1/BiasAddBiasAdd2output_layer/sequential_1/dense_1/MatMul:product:0@output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2+
)output_layer/sequential_1/dense_1/BiasAdd�
IdentityIdentity2output_layer/sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�

Identity_1Identity articulation_layer/Tile:output:0^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1�
NoOpNoOp4^articulation_layer/conv2d_10/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_10/Conv2D/ReadVariableOp4^articulation_layer/conv2d_11/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_11/Conv2D/ReadVariableOp4^articulation_layer/conv2d_12/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_12/Conv2D/ReadVariableOp4^articulation_layer/conv2d_13/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_13/Conv2D/ReadVariableOp4^articulation_layer/conv2d_14/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_14/Conv2D/ReadVariableOp3^articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_5/Conv2D/ReadVariableOp3^articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_6/Conv2D/ReadVariableOp3^articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_7/Conv2D/ReadVariableOp3^articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_8/Conv2D/ReadVariableOp3^articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_9/Conv2D/ReadVariableOp7^formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp6^formant_layer/sequential/conv2d/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp7^output_layer/sequential_1/dense/BiasAdd/ReadVariableOp6^output_layer/sequential_1/dense/MatMul/ReadVariableOp9^output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp8^output_layer/sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapess
q:��������� @: : : : : : : : : : :@: : : : : : : : : : : : : : : : : : : : : : : : 2j
3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_10/Conv2D/ReadVariableOp2articulation_layer/conv2d_10/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_11/Conv2D/ReadVariableOp2articulation_layer/conv2d_11/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_12/Conv2D/ReadVariableOp2articulation_layer/conv2d_12/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_13/Conv2D/ReadVariableOp2articulation_layer/conv2d_13/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_14/Conv2D/ReadVariableOp2articulation_layer/conv2d_14/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_5/Conv2D/ReadVariableOp1articulation_layer/conv2d_5/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_6/Conv2D/ReadVariableOp1articulation_layer/conv2d_6/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_7/Conv2D/ReadVariableOp1articulation_layer/conv2d_7/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_8/Conv2D/ReadVariableOp1articulation_layer/conv2d_8/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_9/Conv2D/ReadVariableOp1articulation_layer/conv2d_9/Conv2D/ReadVariableOp2p
6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp2n
5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp2p
6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp2n
5output_layer/sequential_1/dense/MatMul/ReadVariableOp5output_layer/sequential_1/dense/MatMul/ReadVariableOp2t
8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp2r
7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp:R N
/
_output_shapes
:��������� @

_user_specified_namex:,(
&
_output_shapes
:@
�)
�
I__inference_audio2_face_layer_call_and_return_conditional_losses_10392052
x0
formant_layer_10391976:H$
formant_layer_10391978:H0
formant_layer_10391980:Hl$
formant_layer_10391982:l1
formant_layer_10391984:l�%
formant_layer_10391986:	�2
formant_layer_10391988:��%
formant_layer_10391990:	�2
formant_layer_10391992:��%
formant_layer_10391994:	�
articulation_layer_103919977
articulation_layer_10391999:��*
articulation_layer_10392001:	�5
articulation_layer_10392003:)
articulation_layer_10392005:7
articulation_layer_10392007:��*
articulation_layer_10392009:	�5
articulation_layer_10392011:)
articulation_layer_10392013:7
articulation_layer_10392015:��*
articulation_layer_10392017:	�5
articulation_layer_10392019:)
articulation_layer_10392021:7
articulation_layer_10392023:��*
articulation_layer_10392025:	�5
articulation_layer_10392027:)
articulation_layer_10392029:7
articulation_layer_10392031:��*
articulation_layer_10392033:	�5
articulation_layer_10392035:)
articulation_layer_10392037:)
output_layer_10392041:
��$
output_layer_10392043:	�(
output_layer_10392045:	�%#
output_layer_10392047:%
identity

identity_1��*articulation_layer/StatefulPartitionedCall�%formant_layer/StatefulPartitionedCall�$output_layer/StatefulPartitionedCall�
%formant_layer/StatefulPartitionedCallStatefulPartitionedCallxformant_layer_10391976formant_layer_10391978formant_layer_10391980formant_layer_10391982formant_layer_10391984formant_layer_10391986formant_layer_10391988formant_layer_10391990formant_layer_10391992formant_layer_10391994*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_formant_layer_layer_call_and_return_conditional_losses_103908582'
%formant_layer/StatefulPartitionedCall�
*articulation_layer/StatefulPartitionedCallStatefulPartitionedCall.formant_layer/StatefulPartitionedCall:output:0articulation_layer_10391997articulation_layer_10391999articulation_layer_10392001articulation_layer_10392003articulation_layer_10392005articulation_layer_10392007articulation_layer_10392009articulation_layer_10392011articulation_layer_10392013articulation_layer_10392015articulation_layer_10392017articulation_layer_10392019articulation_layer_10392021articulation_layer_10392023articulation_layer_10392025articulation_layer_10392027articulation_layer_10392029articulation_layer_10392031articulation_layer_10392033articulation_layer_10392035articulation_layer_10392037*!
Tin
2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:����������:���������@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_articulation_layer_layer_call_and_return_conditional_losses_103911562,
*articulation_layer/StatefulPartitionedCall�
$output_layer/StatefulPartitionedCallStatefulPartitionedCall3articulation_layer/StatefulPartitionedCall:output:0output_layer_10392041output_layer_10392043output_layer_10392045output_layer_10392047*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_output_layer_layer_call_and_return_conditional_losses_103916862&
$output_layer/StatefulPartitionedCall�
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�

Identity_1Identity3articulation_layer/StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1�
NoOpNoOp+^articulation_layer/StatefulPartitionedCall&^formant_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapess
q:��������� @: : : : : : : : : : :@: : : : : : : : : : : : : : : : : : : : : : : : 2X
*articulation_layer/StatefulPartitionedCall*articulation_layer/StatefulPartitionedCall2N
%formant_layer/StatefulPartitionedCall%formant_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:R N
/
_output_shapes
:��������� @

_user_specified_namex:,(
&
_output_shapes
:@
�
d
E__inference_dropout_layer_call_and_return_conditional_losses_10391524

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed{2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
ͧ
�%
I__inference_audio2_face_layer_call_and_return_conditional_losses_10393347
input_1X
>formant_layer_sequential_conv2d_conv2d_readvariableop_resource:HM
?formant_layer_sequential_conv2d_biasadd_readvariableop_resource:HZ
@formant_layer_sequential_conv2d_1_conv2d_readvariableop_resource:HlO
Aformant_layer_sequential_conv2d_1_biasadd_readvariableop_resource:l[
@formant_layer_sequential_conv2d_2_conv2d_readvariableop_resource:l�P
Aformant_layer_sequential_conv2d_2_biasadd_readvariableop_resource:	�\
@formant_layer_sequential_conv2d_3_conv2d_readvariableop_resource:��P
Aformant_layer_sequential_conv2d_3_biasadd_readvariableop_resource:	�\
@formant_layer_sequential_conv2d_4_conv2d_readvariableop_resource:��P
Aformant_layer_sequential_conv2d_4_biasadd_readvariableop_resource:	�!
articulation_layer_tile_inputV
:articulation_layer_conv2d_5_conv2d_readvariableop_resource:��J
;articulation_layer_conv2d_5_biasadd_readvariableop_resource:	�T
:articulation_layer_conv2d_6_conv2d_readvariableop_resource:I
;articulation_layer_conv2d_6_biasadd_readvariableop_resource:V
:articulation_layer_conv2d_7_conv2d_readvariableop_resource:��J
;articulation_layer_conv2d_7_biasadd_readvariableop_resource:	�T
:articulation_layer_conv2d_8_conv2d_readvariableop_resource:I
;articulation_layer_conv2d_8_biasadd_readvariableop_resource:V
:articulation_layer_conv2d_9_conv2d_readvariableop_resource:��J
;articulation_layer_conv2d_9_biasadd_readvariableop_resource:	�U
;articulation_layer_conv2d_10_conv2d_readvariableop_resource:J
<articulation_layer_conv2d_10_biasadd_readvariableop_resource:W
;articulation_layer_conv2d_11_conv2d_readvariableop_resource:��K
<articulation_layer_conv2d_11_biasadd_readvariableop_resource:	�U
;articulation_layer_conv2d_12_conv2d_readvariableop_resource:J
<articulation_layer_conv2d_12_biasadd_readvariableop_resource:W
;articulation_layer_conv2d_13_conv2d_readvariableop_resource:��K
<articulation_layer_conv2d_13_biasadd_readvariableop_resource:	�U
;articulation_layer_conv2d_14_conv2d_readvariableop_resource:J
<articulation_layer_conv2d_14_biasadd_readvariableop_resource:R
>output_layer_sequential_1_dense_matmul_readvariableop_resource:
��N
?output_layer_sequential_1_dense_biasadd_readvariableop_resource:	�S
@output_layer_sequential_1_dense_1_matmul_readvariableop_resource:	�%O
Aoutput_layer_sequential_1_dense_1_biasadd_readvariableop_resource:%
identity

identity_1��3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_10/Conv2D/ReadVariableOp�3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_11/Conv2D/ReadVariableOp�3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_12/Conv2D/ReadVariableOp�3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_13/Conv2D/ReadVariableOp�3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_14/Conv2D/ReadVariableOp�2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_5/Conv2D/ReadVariableOp�2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_6/Conv2D/ReadVariableOp�2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_7/Conv2D/ReadVariableOp�2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_8/Conv2D/ReadVariableOp�2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_9/Conv2D/ReadVariableOp�6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp�5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp�6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp�5output_layer/sequential_1/dense/MatMul/ReadVariableOp�8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp�7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp�
5formant_layer/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp>formant_layer_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype027
5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp�
&formant_layer/sequential/conv2d/Conv2DConv2Dinput_1=formant_layer/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2(
&formant_layer/sequential/conv2d/Conv2D�
6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp?formant_layer_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype028
6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp�
'formant_layer/sequential/conv2d/BiasAddBiasAdd/formant_layer/sequential/conv2d/Conv2D:output:0>formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2)
'formant_layer/sequential/conv2d/BiasAdd�
$formant_layer/sequential/conv2d/ReluRelu0formant_layer/sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H2&
$formant_layer/sequential/conv2d/Relu�
7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype029
7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_1/Conv2DConv2D2formant_layer/sequential/conv2d/Relu:activations:0?formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_1/Conv2D�
8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02:
8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_1/BiasAddBiasAdd1formant_layer/sequential/conv2d_1/Conv2D:output:0@formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2+
)formant_layer/sequential/conv2d_1/BiasAdd�
&formant_layer/sequential/conv2d_1/ReluRelu2formant_layer/sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l2(
&formant_layer/sequential/conv2d_1/Relu�
7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype029
7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_2/Conv2DConv2D4formant_layer/sequential/conv2d_1/Relu:activations:0?formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_2/Conv2D�
8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_2/BiasAddBiasAdd1formant_layer/sequential/conv2d_2/Conv2D:output:0@formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2+
)formant_layer/sequential/conv2d_2/BiasAdd�
&formant_layer/sequential/conv2d_2/ReluRelu2formant_layer/sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2(
&formant_layer/sequential/conv2d_2/Relu�
7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype029
7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_3/Conv2DConv2D4formant_layer/sequential/conv2d_2/Relu:activations:0?formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_3/Conv2D�
8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_3/BiasAddBiasAdd1formant_layer/sequential/conv2d_3/Conv2D:output:0@formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2+
)formant_layer/sequential/conv2d_3/BiasAdd�
&formant_layer/sequential/conv2d_3/ReluRelu2formant_layer/sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2(
&formant_layer/sequential/conv2d_3/Relu�
7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype029
7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_4/Conv2DConv2D4formant_layer/sequential/conv2d_3/Relu:activations:0?formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_4/Conv2D�
8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_4/BiasAddBiasAdd1formant_layer/sequential/conv2d_4/Conv2D:output:0@formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2+
)formant_layer/sequential/conv2d_4/BiasAdd�
&formant_layer/sequential/conv2d_4/ReluRelu2formant_layer/sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2(
&formant_layer/sequential/conv2d_4/Relu�
articulation_layer/ShapeShape4formant_layer/sequential/conv2d_4/Relu:activations:0*
T0*
_output_shapes
:2
articulation_layer/Shape�
&articulation_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&articulation_layer/strided_slice/stack�
(articulation_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(articulation_layer/strided_slice/stack_1�
(articulation_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(articulation_layer/strided_slice/stack_2�
 articulation_layer/strided_sliceStridedSlice!articulation_layer/Shape:output:0/articulation_layer/strided_slice/stack:output:01articulation_layer/strided_slice/stack_1:output:01articulation_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 articulation_layer/strided_slice�
#articulation_layer/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#articulation_layer/Tile/multiples/1�
#articulation_layer/Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#articulation_layer/Tile/multiples/2�
#articulation_layer/Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#articulation_layer/Tile/multiples/3�
!articulation_layer/Tile/multiplesPack)articulation_layer/strided_slice:output:0,articulation_layer/Tile/multiples/1:output:0,articulation_layer/Tile/multiples/2:output:0,articulation_layer/Tile/multiples/3:output:0*
N*
T0*
_output_shapes
:2#
!articulation_layer/Tile/multiples�
articulation_layer/TileTilearticulation_layer_tile_input*articulation_layer/Tile/multiples:output:0*
T0*/
_output_shapes
:���������@2
articulation_layer/Tile�
1articulation_layer/conv2d_5/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype023
1articulation_layer/conv2d_5/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_5/Conv2DConv2D4formant_layer/sequential/conv2d_4/Relu:activations:09articulation_layer/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �*
paddingSAME*
strides
2$
"articulation_layer/conv2d_5/Conv2D�
2articulation_layer/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype024
2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_5/BiasAddBiasAdd+articulation_layer/conv2d_5/Conv2D:output:0:articulation_layer/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �2%
#articulation_layer/conv2d_5/BiasAdd�
 articulation_layer/conv2d_5/ReluRelu,articulation_layer/conv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:��������� �2"
 articulation_layer/conv2d_5/Relu�
1articulation_layer/conv2d_6/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype023
1articulation_layer/conv2d_6/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_6/Conv2DConv2D articulation_layer/Tile:output:09articulation_layer/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
2$
"articulation_layer/conv2d_6/Conv2D�
2articulation_layer/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_6/BiasAddBiasAdd+articulation_layer/conv2d_6/Conv2D:output:0:articulation_layer/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2%
#articulation_layer/conv2d_6/BiasAdd�
 articulation_layer/conv2d_6/ReluRelu,articulation_layer/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:��������� 2"
 articulation_layer/conv2d_6/Relu�
articulation_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2 
articulation_layer/concat/axis�
articulation_layer/concatConcatV2.articulation_layer/conv2d_5/Relu:activations:0.articulation_layer/conv2d_6/Relu:activations:0'articulation_layer/concat/axis:output:0*
N*
T0*0
_output_shapes
:��������� �2
articulation_layer/concat�
1articulation_layer/conv2d_7/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype023
1articulation_layer/conv2d_7/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_7/Conv2DConv2D"articulation_layer/concat:output:09articulation_layer/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2$
"articulation_layer/conv2d_7/Conv2D�
2articulation_layer/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype024
2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_7/BiasAddBiasAdd+articulation_layer/conv2d_7/Conv2D:output:0:articulation_layer/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2%
#articulation_layer/conv2d_7/BiasAdd�
 articulation_layer/conv2d_7/ReluRelu,articulation_layer/conv2d_7/BiasAdd:output:0*
T0*0
_output_shapes
:����������2"
 articulation_layer/conv2d_7/Relu�
1articulation_layer/conv2d_8/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype023
1articulation_layer/conv2d_8/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_8/Conv2DConv2D articulation_layer/Tile:output:09articulation_layer/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2$
"articulation_layer/conv2d_8/Conv2D�
2articulation_layer/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_8/BiasAddBiasAdd+articulation_layer/conv2d_8/Conv2D:output:0:articulation_layer/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2%
#articulation_layer/conv2d_8/BiasAdd�
 articulation_layer/conv2d_8/ReluRelu,articulation_layer/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������2"
 articulation_layer/conv2d_8/Relu�
 articulation_layer/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_1/axis�
articulation_layer/concat_1ConcatV2.articulation_layer/conv2d_7/Relu:activations:0.articulation_layer/conv2d_8/Relu:activations:0)articulation_layer/concat_1/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_1�
1articulation_layer/conv2d_9/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_9_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype023
1articulation_layer/conv2d_9/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_9/Conv2DConv2D$articulation_layer/concat_1:output:09articulation_layer/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2$
"articulation_layer/conv2d_9/Conv2D�
2articulation_layer/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype024
2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_9/BiasAddBiasAdd+articulation_layer/conv2d_9/Conv2D:output:0:articulation_layer/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2%
#articulation_layer/conv2d_9/BiasAdd�
 articulation_layer/conv2d_9/ReluRelu,articulation_layer/conv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:����������2"
 articulation_layer/conv2d_9/Relu�
2articulation_layer/conv2d_10/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2articulation_layer/conv2d_10/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_10/Conv2DConv2D articulation_layer/Tile:output:0:articulation_layer/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_10/Conv2D�
3articulation_layer/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_10/BiasAddBiasAdd,articulation_layer/conv2d_10/Conv2D:output:0;articulation_layer/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2&
$articulation_layer/conv2d_10/BiasAdd�
!articulation_layer/conv2d_10/ReluRelu-articulation_layer/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:���������2#
!articulation_layer/conv2d_10/Relu�
 articulation_layer/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_2/axis�
articulation_layer/concat_2ConcatV2.articulation_layer/conv2d_9/Relu:activations:0/articulation_layer/conv2d_10/Relu:activations:0)articulation_layer/concat_2/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_2�
2articulation_layer/conv2d_11/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype024
2articulation_layer/conv2d_11/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_11/Conv2DConv2D$articulation_layer/concat_2:output:0:articulation_layer/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_11/Conv2D�
3articulation_layer/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype025
3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_11/BiasAddBiasAdd,articulation_layer/conv2d_11/Conv2D:output:0;articulation_layer/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2&
$articulation_layer/conv2d_11/BiasAdd�
!articulation_layer/conv2d_11/ReluRelu-articulation_layer/conv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:����������2#
!articulation_layer/conv2d_11/Relu�
2articulation_layer/conv2d_12/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2articulation_layer/conv2d_12/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_12/Conv2DConv2D articulation_layer/Tile:output:0:articulation_layer/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_12/Conv2D�
3articulation_layer/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_12/BiasAddBiasAdd,articulation_layer/conv2d_12/Conv2D:output:0;articulation_layer/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2&
$articulation_layer/conv2d_12/BiasAdd�
!articulation_layer/conv2d_12/ReluRelu-articulation_layer/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������2#
!articulation_layer/conv2d_12/Relu�
 articulation_layer/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_3/axis�
articulation_layer/concat_3ConcatV2/articulation_layer/conv2d_11/Relu:activations:0/articulation_layer/conv2d_12/Relu:activations:0)articulation_layer/concat_3/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_3�
2articulation_layer/conv2d_13/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype024
2articulation_layer/conv2d_13/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_13/Conv2DConv2D$articulation_layer/concat_3:output:0:articulation_layer/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_13/Conv2D�
3articulation_layer/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype025
3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_13/BiasAddBiasAdd,articulation_layer/conv2d_13/Conv2D:output:0;articulation_layer/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2&
$articulation_layer/conv2d_13/BiasAdd�
!articulation_layer/conv2d_13/ReluRelu-articulation_layer/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:����������2#
!articulation_layer/conv2d_13/Relu�
2articulation_layer/conv2d_14/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2articulation_layer/conv2d_14/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_14/Conv2DConv2D articulation_layer/Tile:output:0:articulation_layer/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
@2%
#articulation_layer/conv2d_14/Conv2D�
3articulation_layer/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_14/BiasAddBiasAdd,articulation_layer/conv2d_14/Conv2D:output:0;articulation_layer/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2&
$articulation_layer/conv2d_14/BiasAdd�
!articulation_layer/conv2d_14/ReluRelu-articulation_layer/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:���������2#
!articulation_layer/conv2d_14/Relu�
 articulation_layer/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_4/axis�
articulation_layer/concat_4ConcatV2/articulation_layer/conv2d_13/Relu:activations:0/articulation_layer/conv2d_14/Relu:activations:0)articulation_layer/concat_4/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_4�
'output_layer/sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2)
'output_layer/sequential_1/flatten/Const�
)output_layer/sequential_1/flatten/ReshapeReshape$articulation_layer/concat_4:output:00output_layer/sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:����������2+
)output_layer/sequential_1/flatten/Reshape�
5output_layer/sequential_1/dense/MatMul/ReadVariableOpReadVariableOp>output_layer_sequential_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype027
5output_layer/sequential_1/dense/MatMul/ReadVariableOp�
&output_layer/sequential_1/dense/MatMulMatMul2output_layer/sequential_1/flatten/Reshape:output:0=output_layer/sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2(
&output_layer/sequential_1/dense/MatMul�
6output_layer/sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOp?output_layer_sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype028
6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp�
'output_layer/sequential_1/dense/BiasAddBiasAdd0output_layer/sequential_1/dense/MatMul:product:0>output_layer/sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2)
'output_layer/sequential_1/dense/BiasAdd�
/output_layer/sequential_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @21
/output_layer/sequential_1/dropout/dropout/Const�
-output_layer/sequential_1/dropout/dropout/MulMul0output_layer/sequential_1/dense/BiasAdd:output:08output_layer/sequential_1/dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������2/
-output_layer/sequential_1/dropout/dropout/Mul�
/output_layer/sequential_1/dropout/dropout/ShapeShape0output_layer/sequential_1/dense/BiasAdd:output:0*
T0*
_output_shapes
:21
/output_layer/sequential_1/dropout/dropout/Shape�
Foutput_layer/sequential_1/dropout/dropout/random_uniform/RandomUniformRandomUniform8output_layer/sequential_1/dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed{2H
Foutput_layer/sequential_1/dropout/dropout/random_uniform/RandomUniform�
8output_layer/sequential_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2:
8output_layer/sequential_1/dropout/dropout/GreaterEqual/y�
6output_layer/sequential_1/dropout/dropout/GreaterEqualGreaterEqualOoutput_layer/sequential_1/dropout/dropout/random_uniform/RandomUniform:output:0Aoutput_layer/sequential_1/dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������28
6output_layer/sequential_1/dropout/dropout/GreaterEqual�
.output_layer/sequential_1/dropout/dropout/CastCast:output_layer/sequential_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������20
.output_layer/sequential_1/dropout/dropout/Cast�
/output_layer/sequential_1/dropout/dropout/Mul_1Mul1output_layer/sequential_1/dropout/dropout/Mul:z:02output_layer/sequential_1/dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:����������21
/output_layer/sequential_1/dropout/dropout/Mul_1�
7output_layer/sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp@output_layer_sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype029
7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp�
(output_layer/sequential_1/dense_1/MatMulMatMul3output_layer/sequential_1/dropout/dropout/Mul_1:z:0?output_layer/sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2*
(output_layer/sequential_1/dense_1/MatMul�
8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpAoutput_layer_sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02:
8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp�
)output_layer/sequential_1/dense_1/BiasAddBiasAdd2output_layer/sequential_1/dense_1/MatMul:product:0@output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2+
)output_layer/sequential_1/dense_1/BiasAdd�
IdentityIdentity2output_layer/sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�

Identity_1Identity articulation_layer/Tile:output:0^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1�
NoOpNoOp4^articulation_layer/conv2d_10/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_10/Conv2D/ReadVariableOp4^articulation_layer/conv2d_11/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_11/Conv2D/ReadVariableOp4^articulation_layer/conv2d_12/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_12/Conv2D/ReadVariableOp4^articulation_layer/conv2d_13/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_13/Conv2D/ReadVariableOp4^articulation_layer/conv2d_14/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_14/Conv2D/ReadVariableOp3^articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_5/Conv2D/ReadVariableOp3^articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_6/Conv2D/ReadVariableOp3^articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_7/Conv2D/ReadVariableOp3^articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_8/Conv2D/ReadVariableOp3^articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_9/Conv2D/ReadVariableOp7^formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp6^formant_layer/sequential/conv2d/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp7^output_layer/sequential_1/dense/BiasAdd/ReadVariableOp6^output_layer/sequential_1/dense/MatMul/ReadVariableOp9^output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp8^output_layer/sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapess
q:��������� @: : : : : : : : : : :@: : : : : : : : : : : : : : : : : : : : : : : : 2j
3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_10/Conv2D/ReadVariableOp2articulation_layer/conv2d_10/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_11/Conv2D/ReadVariableOp2articulation_layer/conv2d_11/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_12/Conv2D/ReadVariableOp2articulation_layer/conv2d_12/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_13/Conv2D/ReadVariableOp2articulation_layer/conv2d_13/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_14/Conv2D/ReadVariableOp2articulation_layer/conv2d_14/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_5/Conv2D/ReadVariableOp1articulation_layer/conv2d_5/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_6/Conv2D/ReadVariableOp1articulation_layer/conv2d_6/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_7/Conv2D/ReadVariableOp1articulation_layer/conv2d_7/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_8/Conv2D/ReadVariableOp1articulation_layer/conv2d_8/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_9/Conv2D/ReadVariableOp1articulation_layer/conv2d_9/Conv2D/ReadVariableOp2p
6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp2n
5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp2p
6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp2n
5output_layer/sequential_1/dense/MatMul/ReadVariableOp5output_layer/sequential_1/dense/MatMul/ReadVariableOp2t
8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp2r
7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp:X T
/
_output_shapes
:��������� @
!
_user_specified_name	input_1:,(
&
_output_shapes
:@
�
�
/__inference_sequential_1_layer_call_fn_10394343
flatten_input
unknown:
��
	unknown_0:	�
	unknown_1:	�%
	unknown_2:%
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_103915742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
0
_output_shapes
:����������
'
_user_specified_nameflatten_input
�
�
F__inference_conv2d_3_layer_call_and_return_conditional_losses_10394513

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������@�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������@�
 
_user_specified_nameinputs
�
�
/__inference_output_layer_layer_call_fn_10393945
input_1
unknown:
��
	unknown_0:	�
	unknown_1:	�%
	unknown_2:%
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_output_layer_layer_call_and_return_conditional_losses_103916862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:����������
!
_user_specified_name	input_1
�
�
F__inference_conv2d_5_layer_call_and_return_conditional_losses_10394629

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:��������� �2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:��������� �2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������@�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������@�
 
_user_specified_nameinputs
�
�
F__inference_conv2d_4_layer_call_and_return_conditional_losses_10394533

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������@�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������@�
 
_user_specified_nameinputs
�
�
G__inference_conv2d_11_layer_call_and_return_conditional_losses_10391093

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
/__inference_output_layer_layer_call_fn_10393932
x
unknown:
��
	unknown_0:	�
	unknown_1:	�%
	unknown_2:%
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_output_layer_layer_call_and_return_conditional_losses_103916862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
0
_output_shapes
:����������

_user_specified_namex
�
�
G__inference_conv2d_11_layer_call_and_return_conditional_losses_10394749

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_conv2d_12_layer_call_and_return_conditional_losses_10391110

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
,__inference_conv2d_12_layer_call_fn_10394758

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_12_layer_call_and_return_conditional_losses_103911102
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�(
�
J__inference_output_layer_layer_call_and_return_conditional_losses_10394035
input_1E
1sequential_1_dense_matmul_readvariableop_resource:
��A
2sequential_1_dense_biasadd_readvariableop_resource:	�F
3sequential_1_dense_1_matmul_readvariableop_resource:	�%B
4sequential_1_dense_1_biasadd_readvariableop_resource:%
identity��)sequential_1/dense/BiasAdd/ReadVariableOp�(sequential_1/dense/MatMul/ReadVariableOp�+sequential_1/dense_1/BiasAdd/ReadVariableOp�*sequential_1/dense_1/MatMul/ReadVariableOp�
sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
sequential_1/flatten/Const�
sequential_1/flatten/ReshapeReshapeinput_1#sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:����������2
sequential_1/flatten/Reshape�
(sequential_1/dense/MatMul/ReadVariableOpReadVariableOp1sequential_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02*
(sequential_1/dense/MatMul/ReadVariableOp�
sequential_1/dense/MatMulMatMul%sequential_1/flatten/Reshape:output:00sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_1/dense/MatMul�
)sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)sequential_1/dense/BiasAdd/ReadVariableOp�
sequential_1/dense/BiasAddBiasAdd#sequential_1/dense/MatMul:product:01sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_1/dense/BiasAdd�
"sequential_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"sequential_1/dropout/dropout/Const�
 sequential_1/dropout/dropout/MulMul#sequential_1/dense/BiasAdd:output:0+sequential_1/dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������2"
 sequential_1/dropout/dropout/Mul�
"sequential_1/dropout/dropout/ShapeShape#sequential_1/dense/BiasAdd:output:0*
T0*
_output_shapes
:2$
"sequential_1/dropout/dropout/Shape�
9sequential_1/dropout/dropout/random_uniform/RandomUniformRandomUniform+sequential_1/dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed{2;
9sequential_1/dropout/dropout/random_uniform/RandomUniform�
+sequential_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+sequential_1/dropout/dropout/GreaterEqual/y�
)sequential_1/dropout/dropout/GreaterEqualGreaterEqualBsequential_1/dropout/dropout/random_uniform/RandomUniform:output:04sequential_1/dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2+
)sequential_1/dropout/dropout/GreaterEqual�
!sequential_1/dropout/dropout/CastCast-sequential_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2#
!sequential_1/dropout/dropout/Cast�
"sequential_1/dropout/dropout/Mul_1Mul$sequential_1/dropout/dropout/Mul:z:0%sequential_1/dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:����������2$
"sequential_1/dropout/dropout/Mul_1�
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp�
sequential_1/dense_1/MatMulMatMul&sequential_1/dropout/dropout/Mul_1:z:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
sequential_1/dense_1/MatMul�
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp�
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
sequential_1/dense_1/BiasAdd�
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�
NoOpNoOp*^sequential_1/dense/BiasAdd/ReadVariableOp)^sequential_1/dense/MatMul/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2V
)sequential_1/dense/BiasAdd/ReadVariableOp)sequential_1/dense/BiasAdd/ReadVariableOp2T
(sequential_1/dense/MatMul/ReadVariableOp(sequential_1/dense/MatMul/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:Y U
0
_output_shapes
:����������
!
_user_specified_name	input_1
��
�,
#__inference__wrapped_model_10390426
input_1d
Jaudio2_face_formant_layer_sequential_conv2d_conv2d_readvariableop_resource:HY
Kaudio2_face_formant_layer_sequential_conv2d_biasadd_readvariableop_resource:Hf
Laudio2_face_formant_layer_sequential_conv2d_1_conv2d_readvariableop_resource:Hl[
Maudio2_face_formant_layer_sequential_conv2d_1_biasadd_readvariableop_resource:lg
Laudio2_face_formant_layer_sequential_conv2d_2_conv2d_readvariableop_resource:l�\
Maudio2_face_formant_layer_sequential_conv2d_2_biasadd_readvariableop_resource:	�h
Laudio2_face_formant_layer_sequential_conv2d_3_conv2d_readvariableop_resource:��\
Maudio2_face_formant_layer_sequential_conv2d_3_biasadd_readvariableop_resource:	�h
Laudio2_face_formant_layer_sequential_conv2d_4_conv2d_readvariableop_resource:��\
Maudio2_face_formant_layer_sequential_conv2d_4_biasadd_readvariableop_resource:	�-
)audio2_face_articulation_layer_tile_inputb
Faudio2_face_articulation_layer_conv2d_5_conv2d_readvariableop_resource:��V
Gaudio2_face_articulation_layer_conv2d_5_biasadd_readvariableop_resource:	�`
Faudio2_face_articulation_layer_conv2d_6_conv2d_readvariableop_resource:U
Gaudio2_face_articulation_layer_conv2d_6_biasadd_readvariableop_resource:b
Faudio2_face_articulation_layer_conv2d_7_conv2d_readvariableop_resource:��V
Gaudio2_face_articulation_layer_conv2d_7_biasadd_readvariableop_resource:	�`
Faudio2_face_articulation_layer_conv2d_8_conv2d_readvariableop_resource:U
Gaudio2_face_articulation_layer_conv2d_8_biasadd_readvariableop_resource:b
Faudio2_face_articulation_layer_conv2d_9_conv2d_readvariableop_resource:��V
Gaudio2_face_articulation_layer_conv2d_9_biasadd_readvariableop_resource:	�a
Gaudio2_face_articulation_layer_conv2d_10_conv2d_readvariableop_resource:V
Haudio2_face_articulation_layer_conv2d_10_biasadd_readvariableop_resource:c
Gaudio2_face_articulation_layer_conv2d_11_conv2d_readvariableop_resource:��W
Haudio2_face_articulation_layer_conv2d_11_biasadd_readvariableop_resource:	�a
Gaudio2_face_articulation_layer_conv2d_12_conv2d_readvariableop_resource:V
Haudio2_face_articulation_layer_conv2d_12_biasadd_readvariableop_resource:c
Gaudio2_face_articulation_layer_conv2d_13_conv2d_readvariableop_resource:��W
Haudio2_face_articulation_layer_conv2d_13_biasadd_readvariableop_resource:	�a
Gaudio2_face_articulation_layer_conv2d_14_conv2d_readvariableop_resource:V
Haudio2_face_articulation_layer_conv2d_14_biasadd_readvariableop_resource:^
Jaudio2_face_output_layer_sequential_1_dense_matmul_readvariableop_resource:
��Z
Kaudio2_face_output_layer_sequential_1_dense_biasadd_readvariableop_resource:	�_
Laudio2_face_output_layer_sequential_1_dense_1_matmul_readvariableop_resource:	�%[
Maudio2_face_output_layer_sequential_1_dense_1_biasadd_readvariableop_resource:%
identity

identity_1��?audio2_face/articulation_layer/conv2d_10/BiasAdd/ReadVariableOp�>audio2_face/articulation_layer/conv2d_10/Conv2D/ReadVariableOp�?audio2_face/articulation_layer/conv2d_11/BiasAdd/ReadVariableOp�>audio2_face/articulation_layer/conv2d_11/Conv2D/ReadVariableOp�?audio2_face/articulation_layer/conv2d_12/BiasAdd/ReadVariableOp�>audio2_face/articulation_layer/conv2d_12/Conv2D/ReadVariableOp�?audio2_face/articulation_layer/conv2d_13/BiasAdd/ReadVariableOp�>audio2_face/articulation_layer/conv2d_13/Conv2D/ReadVariableOp�?audio2_face/articulation_layer/conv2d_14/BiasAdd/ReadVariableOp�>audio2_face/articulation_layer/conv2d_14/Conv2D/ReadVariableOp�>audio2_face/articulation_layer/conv2d_5/BiasAdd/ReadVariableOp�=audio2_face/articulation_layer/conv2d_5/Conv2D/ReadVariableOp�>audio2_face/articulation_layer/conv2d_6/BiasAdd/ReadVariableOp�=audio2_face/articulation_layer/conv2d_6/Conv2D/ReadVariableOp�>audio2_face/articulation_layer/conv2d_7/BiasAdd/ReadVariableOp�=audio2_face/articulation_layer/conv2d_7/Conv2D/ReadVariableOp�>audio2_face/articulation_layer/conv2d_8/BiasAdd/ReadVariableOp�=audio2_face/articulation_layer/conv2d_8/Conv2D/ReadVariableOp�>audio2_face/articulation_layer/conv2d_9/BiasAdd/ReadVariableOp�=audio2_face/articulation_layer/conv2d_9/Conv2D/ReadVariableOp�Baudio2_face/formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp�Aaudio2_face/formant_layer/sequential/conv2d/Conv2D/ReadVariableOp�Daudio2_face/formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp�Caudio2_face/formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp�Daudio2_face/formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp�Caudio2_face/formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp�Daudio2_face/formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp�Caudio2_face/formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp�Daudio2_face/formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp�Caudio2_face/formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp�Baudio2_face/output_layer/sequential_1/dense/BiasAdd/ReadVariableOp�Aaudio2_face/output_layer/sequential_1/dense/MatMul/ReadVariableOp�Daudio2_face/output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp�Caudio2_face/output_layer/sequential_1/dense_1/MatMul/ReadVariableOp�
Aaudio2_face/formant_layer/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOpJaudio2_face_formant_layer_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype02C
Aaudio2_face/formant_layer/sequential/conv2d/Conv2D/ReadVariableOp�
2audio2_face/formant_layer/sequential/conv2d/Conv2DConv2Dinput_1Iaudio2_face/formant_layer/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
24
2audio2_face/formant_layer/sequential/conv2d/Conv2D�
Baudio2_face/formant_layer/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOpKaudio2_face_formant_layer_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02D
Baudio2_face/formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp�
3audio2_face/formant_layer/sequential/conv2d/BiasAddBiasAdd;audio2_face/formant_layer/sequential/conv2d/Conv2D:output:0Jaudio2_face/formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H25
3audio2_face/formant_layer/sequential/conv2d/BiasAdd�
0audio2_face/formant_layer/sequential/conv2d/ReluRelu<audio2_face/formant_layer/sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H22
0audio2_face/formant_layer/sequential/conv2d/Relu�
Caudio2_face/formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOpLaudio2_face_formant_layer_sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype02E
Caudio2_face/formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp�
4audio2_face/formant_layer/sequential/conv2d_1/Conv2DConv2D>audio2_face/formant_layer/sequential/conv2d/Relu:activations:0Kaudio2_face/formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
26
4audio2_face/formant_layer/sequential/conv2d_1/Conv2D�
Daudio2_face/formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpMaudio2_face_formant_layer_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02F
Daudio2_face/formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp�
5audio2_face/formant_layer/sequential/conv2d_1/BiasAddBiasAdd=audio2_face/formant_layer/sequential/conv2d_1/Conv2D:output:0Laudio2_face/formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l27
5audio2_face/formant_layer/sequential/conv2d_1/BiasAdd�
2audio2_face/formant_layer/sequential/conv2d_1/ReluRelu>audio2_face/formant_layer/sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l24
2audio2_face/formant_layer/sequential/conv2d_1/Relu�
Caudio2_face/formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOpLaudio2_face_formant_layer_sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype02E
Caudio2_face/formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp�
4audio2_face/formant_layer/sequential/conv2d_2/Conv2DConv2D@audio2_face/formant_layer/sequential/conv2d_1/Relu:activations:0Kaudio2_face/formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
26
4audio2_face/formant_layer/sequential/conv2d_2/Conv2D�
Daudio2_face/formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpMaudio2_face_formant_layer_sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02F
Daudio2_face/formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp�
5audio2_face/formant_layer/sequential/conv2d_2/BiasAddBiasAdd=audio2_face/formant_layer/sequential/conv2d_2/Conv2D:output:0Laudio2_face/formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�27
5audio2_face/formant_layer/sequential/conv2d_2/BiasAdd�
2audio2_face/formant_layer/sequential/conv2d_2/ReluRelu>audio2_face/formant_layer/sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�24
2audio2_face/formant_layer/sequential/conv2d_2/Relu�
Caudio2_face/formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOpLaudio2_face_formant_layer_sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02E
Caudio2_face/formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp�
4audio2_face/formant_layer/sequential/conv2d_3/Conv2DConv2D@audio2_face/formant_layer/sequential/conv2d_2/Relu:activations:0Kaudio2_face/formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
26
4audio2_face/formant_layer/sequential/conv2d_3/Conv2D�
Daudio2_face/formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpMaudio2_face_formant_layer_sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02F
Daudio2_face/formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp�
5audio2_face/formant_layer/sequential/conv2d_3/BiasAddBiasAdd=audio2_face/formant_layer/sequential/conv2d_3/Conv2D:output:0Laudio2_face/formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�27
5audio2_face/formant_layer/sequential/conv2d_3/BiasAdd�
2audio2_face/formant_layer/sequential/conv2d_3/ReluRelu>audio2_face/formant_layer/sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�24
2audio2_face/formant_layer/sequential/conv2d_3/Relu�
Caudio2_face/formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOpLaudio2_face_formant_layer_sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02E
Caudio2_face/formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp�
4audio2_face/formant_layer/sequential/conv2d_4/Conv2DConv2D@audio2_face/formant_layer/sequential/conv2d_3/Relu:activations:0Kaudio2_face/formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
26
4audio2_face/formant_layer/sequential/conv2d_4/Conv2D�
Daudio2_face/formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOpMaudio2_face_formant_layer_sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02F
Daudio2_face/formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp�
5audio2_face/formant_layer/sequential/conv2d_4/BiasAddBiasAdd=audio2_face/formant_layer/sequential/conv2d_4/Conv2D:output:0Laudio2_face/formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�27
5audio2_face/formant_layer/sequential/conv2d_4/BiasAdd�
2audio2_face/formant_layer/sequential/conv2d_4/ReluRelu>audio2_face/formant_layer/sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�24
2audio2_face/formant_layer/sequential/conv2d_4/Relu�
$audio2_face/articulation_layer/ShapeShape@audio2_face/formant_layer/sequential/conv2d_4/Relu:activations:0*
T0*
_output_shapes
:2&
$audio2_face/articulation_layer/Shape�
2audio2_face/articulation_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2audio2_face/articulation_layer/strided_slice/stack�
4audio2_face/articulation_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4audio2_face/articulation_layer/strided_slice/stack_1�
4audio2_face/articulation_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4audio2_face/articulation_layer/strided_slice/stack_2�
,audio2_face/articulation_layer/strided_sliceStridedSlice-audio2_face/articulation_layer/Shape:output:0;audio2_face/articulation_layer/strided_slice/stack:output:0=audio2_face/articulation_layer/strided_slice/stack_1:output:0=audio2_face/articulation_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,audio2_face/articulation_layer/strided_slice�
/audio2_face/articulation_layer/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :21
/audio2_face/articulation_layer/Tile/multiples/1�
/audio2_face/articulation_layer/Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :21
/audio2_face/articulation_layer/Tile/multiples/2�
/audio2_face/articulation_layer/Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :21
/audio2_face/articulation_layer/Tile/multiples/3�
-audio2_face/articulation_layer/Tile/multiplesPack5audio2_face/articulation_layer/strided_slice:output:08audio2_face/articulation_layer/Tile/multiples/1:output:08audio2_face/articulation_layer/Tile/multiples/2:output:08audio2_face/articulation_layer/Tile/multiples/3:output:0*
N*
T0*
_output_shapes
:2/
-audio2_face/articulation_layer/Tile/multiples�
#audio2_face/articulation_layer/TileTile)audio2_face_articulation_layer_tile_input6audio2_face/articulation_layer/Tile/multiples:output:0*
T0*/
_output_shapes
:���������@2%
#audio2_face/articulation_layer/Tile�
=audio2_face/articulation_layer/conv2d_5/Conv2D/ReadVariableOpReadVariableOpFaudio2_face_articulation_layer_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02?
=audio2_face/articulation_layer/conv2d_5/Conv2D/ReadVariableOp�
.audio2_face/articulation_layer/conv2d_5/Conv2DConv2D@audio2_face/formant_layer/sequential/conv2d_4/Relu:activations:0Eaudio2_face/articulation_layer/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �*
paddingSAME*
strides
20
.audio2_face/articulation_layer/conv2d_5/Conv2D�
>audio2_face/articulation_layer/conv2d_5/BiasAdd/ReadVariableOpReadVariableOpGaudio2_face_articulation_layer_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02@
>audio2_face/articulation_layer/conv2d_5/BiasAdd/ReadVariableOp�
/audio2_face/articulation_layer/conv2d_5/BiasAddBiasAdd7audio2_face/articulation_layer/conv2d_5/Conv2D:output:0Faudio2_face/articulation_layer/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �21
/audio2_face/articulation_layer/conv2d_5/BiasAdd�
,audio2_face/articulation_layer/conv2d_5/ReluRelu8audio2_face/articulation_layer/conv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:��������� �2.
,audio2_face/articulation_layer/conv2d_5/Relu�
=audio2_face/articulation_layer/conv2d_6/Conv2D/ReadVariableOpReadVariableOpFaudio2_face_articulation_layer_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02?
=audio2_face/articulation_layer/conv2d_6/Conv2D/ReadVariableOp�
.audio2_face/articulation_layer/conv2d_6/Conv2DConv2D,audio2_face/articulation_layer/Tile:output:0Eaudio2_face/articulation_layer/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
20
.audio2_face/articulation_layer/conv2d_6/Conv2D�
>audio2_face/articulation_layer/conv2d_6/BiasAdd/ReadVariableOpReadVariableOpGaudio2_face_articulation_layer_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>audio2_face/articulation_layer/conv2d_6/BiasAdd/ReadVariableOp�
/audio2_face/articulation_layer/conv2d_6/BiasAddBiasAdd7audio2_face/articulation_layer/conv2d_6/Conv2D:output:0Faudio2_face/articulation_layer/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 21
/audio2_face/articulation_layer/conv2d_6/BiasAdd�
,audio2_face/articulation_layer/conv2d_6/ReluRelu8audio2_face/articulation_layer/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:��������� 2.
,audio2_face/articulation_layer/conv2d_6/Relu�
*audio2_face/articulation_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*audio2_face/articulation_layer/concat/axis�
%audio2_face/articulation_layer/concatConcatV2:audio2_face/articulation_layer/conv2d_5/Relu:activations:0:audio2_face/articulation_layer/conv2d_6/Relu:activations:03audio2_face/articulation_layer/concat/axis:output:0*
N*
T0*0
_output_shapes
:��������� �2'
%audio2_face/articulation_layer/concat�
=audio2_face/articulation_layer/conv2d_7/Conv2D/ReadVariableOpReadVariableOpFaudio2_face_articulation_layer_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02?
=audio2_face/articulation_layer/conv2d_7/Conv2D/ReadVariableOp�
.audio2_face/articulation_layer/conv2d_7/Conv2DConv2D.audio2_face/articulation_layer/concat:output:0Eaudio2_face/articulation_layer/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
20
.audio2_face/articulation_layer/conv2d_7/Conv2D�
>audio2_face/articulation_layer/conv2d_7/BiasAdd/ReadVariableOpReadVariableOpGaudio2_face_articulation_layer_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02@
>audio2_face/articulation_layer/conv2d_7/BiasAdd/ReadVariableOp�
/audio2_face/articulation_layer/conv2d_7/BiasAddBiasAdd7audio2_face/articulation_layer/conv2d_7/Conv2D:output:0Faudio2_face/articulation_layer/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������21
/audio2_face/articulation_layer/conv2d_7/BiasAdd�
,audio2_face/articulation_layer/conv2d_7/ReluRelu8audio2_face/articulation_layer/conv2d_7/BiasAdd:output:0*
T0*0
_output_shapes
:����������2.
,audio2_face/articulation_layer/conv2d_7/Relu�
=audio2_face/articulation_layer/conv2d_8/Conv2D/ReadVariableOpReadVariableOpFaudio2_face_articulation_layer_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02?
=audio2_face/articulation_layer/conv2d_8/Conv2D/ReadVariableOp�
.audio2_face/articulation_layer/conv2d_8/Conv2DConv2D,audio2_face/articulation_layer/Tile:output:0Eaudio2_face/articulation_layer/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
20
.audio2_face/articulation_layer/conv2d_8/Conv2D�
>audio2_face/articulation_layer/conv2d_8/BiasAdd/ReadVariableOpReadVariableOpGaudio2_face_articulation_layer_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>audio2_face/articulation_layer/conv2d_8/BiasAdd/ReadVariableOp�
/audio2_face/articulation_layer/conv2d_8/BiasAddBiasAdd7audio2_face/articulation_layer/conv2d_8/Conv2D:output:0Faudio2_face/articulation_layer/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������21
/audio2_face/articulation_layer/conv2d_8/BiasAdd�
,audio2_face/articulation_layer/conv2d_8/ReluRelu8audio2_face/articulation_layer/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������2.
,audio2_face/articulation_layer/conv2d_8/Relu�
,audio2_face/articulation_layer/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2.
,audio2_face/articulation_layer/concat_1/axis�
'audio2_face/articulation_layer/concat_1ConcatV2:audio2_face/articulation_layer/conv2d_7/Relu:activations:0:audio2_face/articulation_layer/conv2d_8/Relu:activations:05audio2_face/articulation_layer/concat_1/axis:output:0*
N*
T0*0
_output_shapes
:����������2)
'audio2_face/articulation_layer/concat_1�
=audio2_face/articulation_layer/conv2d_9/Conv2D/ReadVariableOpReadVariableOpFaudio2_face_articulation_layer_conv2d_9_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02?
=audio2_face/articulation_layer/conv2d_9/Conv2D/ReadVariableOp�
.audio2_face/articulation_layer/conv2d_9/Conv2DConv2D0audio2_face/articulation_layer/concat_1:output:0Eaudio2_face/articulation_layer/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
20
.audio2_face/articulation_layer/conv2d_9/Conv2D�
>audio2_face/articulation_layer/conv2d_9/BiasAdd/ReadVariableOpReadVariableOpGaudio2_face_articulation_layer_conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02@
>audio2_face/articulation_layer/conv2d_9/BiasAdd/ReadVariableOp�
/audio2_face/articulation_layer/conv2d_9/BiasAddBiasAdd7audio2_face/articulation_layer/conv2d_9/Conv2D:output:0Faudio2_face/articulation_layer/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������21
/audio2_face/articulation_layer/conv2d_9/BiasAdd�
,audio2_face/articulation_layer/conv2d_9/ReluRelu8audio2_face/articulation_layer/conv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:����������2.
,audio2_face/articulation_layer/conv2d_9/Relu�
>audio2_face/articulation_layer/conv2d_10/Conv2D/ReadVariableOpReadVariableOpGaudio2_face_articulation_layer_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02@
>audio2_face/articulation_layer/conv2d_10/Conv2D/ReadVariableOp�
/audio2_face/articulation_layer/conv2d_10/Conv2DConv2D,audio2_face/articulation_layer/Tile:output:0Faudio2_face/articulation_layer/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
21
/audio2_face/articulation_layer/conv2d_10/Conv2D�
?audio2_face/articulation_layer/conv2d_10/BiasAdd/ReadVariableOpReadVariableOpHaudio2_face_articulation_layer_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02A
?audio2_face/articulation_layer/conv2d_10/BiasAdd/ReadVariableOp�
0audio2_face/articulation_layer/conv2d_10/BiasAddBiasAdd8audio2_face/articulation_layer/conv2d_10/Conv2D:output:0Gaudio2_face/articulation_layer/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22
0audio2_face/articulation_layer/conv2d_10/BiasAdd�
-audio2_face/articulation_layer/conv2d_10/ReluRelu9audio2_face/articulation_layer/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:���������2/
-audio2_face/articulation_layer/conv2d_10/Relu�
,audio2_face/articulation_layer/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2.
,audio2_face/articulation_layer/concat_2/axis�
'audio2_face/articulation_layer/concat_2ConcatV2:audio2_face/articulation_layer/conv2d_9/Relu:activations:0;audio2_face/articulation_layer/conv2d_10/Relu:activations:05audio2_face/articulation_layer/concat_2/axis:output:0*
N*
T0*0
_output_shapes
:����������2)
'audio2_face/articulation_layer/concat_2�
>audio2_face/articulation_layer/conv2d_11/Conv2D/ReadVariableOpReadVariableOpGaudio2_face_articulation_layer_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02@
>audio2_face/articulation_layer/conv2d_11/Conv2D/ReadVariableOp�
/audio2_face/articulation_layer/conv2d_11/Conv2DConv2D0audio2_face/articulation_layer/concat_2:output:0Faudio2_face/articulation_layer/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
21
/audio2_face/articulation_layer/conv2d_11/Conv2D�
?audio2_face/articulation_layer/conv2d_11/BiasAdd/ReadVariableOpReadVariableOpHaudio2_face_articulation_layer_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02A
?audio2_face/articulation_layer/conv2d_11/BiasAdd/ReadVariableOp�
0audio2_face/articulation_layer/conv2d_11/BiasAddBiasAdd8audio2_face/articulation_layer/conv2d_11/Conv2D:output:0Gaudio2_face/articulation_layer/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������22
0audio2_face/articulation_layer/conv2d_11/BiasAdd�
-audio2_face/articulation_layer/conv2d_11/ReluRelu9audio2_face/articulation_layer/conv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:����������2/
-audio2_face/articulation_layer/conv2d_11/Relu�
>audio2_face/articulation_layer/conv2d_12/Conv2D/ReadVariableOpReadVariableOpGaudio2_face_articulation_layer_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02@
>audio2_face/articulation_layer/conv2d_12/Conv2D/ReadVariableOp�
/audio2_face/articulation_layer/conv2d_12/Conv2DConv2D,audio2_face/articulation_layer/Tile:output:0Faudio2_face/articulation_layer/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
21
/audio2_face/articulation_layer/conv2d_12/Conv2D�
?audio2_face/articulation_layer/conv2d_12/BiasAdd/ReadVariableOpReadVariableOpHaudio2_face_articulation_layer_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02A
?audio2_face/articulation_layer/conv2d_12/BiasAdd/ReadVariableOp�
0audio2_face/articulation_layer/conv2d_12/BiasAddBiasAdd8audio2_face/articulation_layer/conv2d_12/Conv2D:output:0Gaudio2_face/articulation_layer/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22
0audio2_face/articulation_layer/conv2d_12/BiasAdd�
-audio2_face/articulation_layer/conv2d_12/ReluRelu9audio2_face/articulation_layer/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������2/
-audio2_face/articulation_layer/conv2d_12/Relu�
,audio2_face/articulation_layer/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B :2.
,audio2_face/articulation_layer/concat_3/axis�
'audio2_face/articulation_layer/concat_3ConcatV2;audio2_face/articulation_layer/conv2d_11/Relu:activations:0;audio2_face/articulation_layer/conv2d_12/Relu:activations:05audio2_face/articulation_layer/concat_3/axis:output:0*
N*
T0*0
_output_shapes
:����������2)
'audio2_face/articulation_layer/concat_3�
>audio2_face/articulation_layer/conv2d_13/Conv2D/ReadVariableOpReadVariableOpGaudio2_face_articulation_layer_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02@
>audio2_face/articulation_layer/conv2d_13/Conv2D/ReadVariableOp�
/audio2_face/articulation_layer/conv2d_13/Conv2DConv2D0audio2_face/articulation_layer/concat_3:output:0Faudio2_face/articulation_layer/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
21
/audio2_face/articulation_layer/conv2d_13/Conv2D�
?audio2_face/articulation_layer/conv2d_13/BiasAdd/ReadVariableOpReadVariableOpHaudio2_face_articulation_layer_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02A
?audio2_face/articulation_layer/conv2d_13/BiasAdd/ReadVariableOp�
0audio2_face/articulation_layer/conv2d_13/BiasAddBiasAdd8audio2_face/articulation_layer/conv2d_13/Conv2D:output:0Gaudio2_face/articulation_layer/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������22
0audio2_face/articulation_layer/conv2d_13/BiasAdd�
-audio2_face/articulation_layer/conv2d_13/ReluRelu9audio2_face/articulation_layer/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:����������2/
-audio2_face/articulation_layer/conv2d_13/Relu�
>audio2_face/articulation_layer/conv2d_14/Conv2D/ReadVariableOpReadVariableOpGaudio2_face_articulation_layer_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02@
>audio2_face/articulation_layer/conv2d_14/Conv2D/ReadVariableOp�
/audio2_face/articulation_layer/conv2d_14/Conv2DConv2D,audio2_face/articulation_layer/Tile:output:0Faudio2_face/articulation_layer/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
@21
/audio2_face/articulation_layer/conv2d_14/Conv2D�
?audio2_face/articulation_layer/conv2d_14/BiasAdd/ReadVariableOpReadVariableOpHaudio2_face_articulation_layer_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02A
?audio2_face/articulation_layer/conv2d_14/BiasAdd/ReadVariableOp�
0audio2_face/articulation_layer/conv2d_14/BiasAddBiasAdd8audio2_face/articulation_layer/conv2d_14/Conv2D:output:0Gaudio2_face/articulation_layer/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22
0audio2_face/articulation_layer/conv2d_14/BiasAdd�
-audio2_face/articulation_layer/conv2d_14/ReluRelu9audio2_face/articulation_layer/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:���������2/
-audio2_face/articulation_layer/conv2d_14/Relu�
,audio2_face/articulation_layer/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B :2.
,audio2_face/articulation_layer/concat_4/axis�
'audio2_face/articulation_layer/concat_4ConcatV2;audio2_face/articulation_layer/conv2d_13/Relu:activations:0;audio2_face/articulation_layer/conv2d_14/Relu:activations:05audio2_face/articulation_layer/concat_4/axis:output:0*
N*
T0*0
_output_shapes
:����������2)
'audio2_face/articulation_layer/concat_4�
3audio2_face/output_layer/sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  25
3audio2_face/output_layer/sequential_1/flatten/Const�
5audio2_face/output_layer/sequential_1/flatten/ReshapeReshape0audio2_face/articulation_layer/concat_4:output:0<audio2_face/output_layer/sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:����������27
5audio2_face/output_layer/sequential_1/flatten/Reshape�
Aaudio2_face/output_layer/sequential_1/dense/MatMul/ReadVariableOpReadVariableOpJaudio2_face_output_layer_sequential_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02C
Aaudio2_face/output_layer/sequential_1/dense/MatMul/ReadVariableOp�
2audio2_face/output_layer/sequential_1/dense/MatMulMatMul>audio2_face/output_layer/sequential_1/flatten/Reshape:output:0Iaudio2_face/output_layer/sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������24
2audio2_face/output_layer/sequential_1/dense/MatMul�
Baudio2_face/output_layer/sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOpKaudio2_face_output_layer_sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02D
Baudio2_face/output_layer/sequential_1/dense/BiasAdd/ReadVariableOp�
3audio2_face/output_layer/sequential_1/dense/BiasAddBiasAdd<audio2_face/output_layer/sequential_1/dense/MatMul:product:0Jaudio2_face/output_layer/sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������25
3audio2_face/output_layer/sequential_1/dense/BiasAdd�
6audio2_face/output_layer/sequential_1/dropout/IdentityIdentity<audio2_face/output_layer/sequential_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������28
6audio2_face/output_layer/sequential_1/dropout/Identity�
Caudio2_face/output_layer/sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOpLaudio2_face_output_layer_sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype02E
Caudio2_face/output_layer/sequential_1/dense_1/MatMul/ReadVariableOp�
4audio2_face/output_layer/sequential_1/dense_1/MatMulMatMul?audio2_face/output_layer/sequential_1/dropout/Identity:output:0Kaudio2_face/output_layer/sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%26
4audio2_face/output_layer/sequential_1/dense_1/MatMul�
Daudio2_face/output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpMaudio2_face_output_layer_sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02F
Daudio2_face/output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp�
5audio2_face/output_layer/sequential_1/dense_1/BiasAddBiasAdd>audio2_face/output_layer/sequential_1/dense_1/MatMul:product:0Laudio2_face/output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%27
5audio2_face/output_layer/sequential_1/dense_1/BiasAdd�
IdentityIdentity>audio2_face/output_layer/sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�

Identity_1Identity,audio2_face/articulation_layer/Tile:output:0^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1�
NoOpNoOp@^audio2_face/articulation_layer/conv2d_10/BiasAdd/ReadVariableOp?^audio2_face/articulation_layer/conv2d_10/Conv2D/ReadVariableOp@^audio2_face/articulation_layer/conv2d_11/BiasAdd/ReadVariableOp?^audio2_face/articulation_layer/conv2d_11/Conv2D/ReadVariableOp@^audio2_face/articulation_layer/conv2d_12/BiasAdd/ReadVariableOp?^audio2_face/articulation_layer/conv2d_12/Conv2D/ReadVariableOp@^audio2_face/articulation_layer/conv2d_13/BiasAdd/ReadVariableOp?^audio2_face/articulation_layer/conv2d_13/Conv2D/ReadVariableOp@^audio2_face/articulation_layer/conv2d_14/BiasAdd/ReadVariableOp?^audio2_face/articulation_layer/conv2d_14/Conv2D/ReadVariableOp?^audio2_face/articulation_layer/conv2d_5/BiasAdd/ReadVariableOp>^audio2_face/articulation_layer/conv2d_5/Conv2D/ReadVariableOp?^audio2_face/articulation_layer/conv2d_6/BiasAdd/ReadVariableOp>^audio2_face/articulation_layer/conv2d_6/Conv2D/ReadVariableOp?^audio2_face/articulation_layer/conv2d_7/BiasAdd/ReadVariableOp>^audio2_face/articulation_layer/conv2d_7/Conv2D/ReadVariableOp?^audio2_face/articulation_layer/conv2d_8/BiasAdd/ReadVariableOp>^audio2_face/articulation_layer/conv2d_8/Conv2D/ReadVariableOp?^audio2_face/articulation_layer/conv2d_9/BiasAdd/ReadVariableOp>^audio2_face/articulation_layer/conv2d_9/Conv2D/ReadVariableOpC^audio2_face/formant_layer/sequential/conv2d/BiasAdd/ReadVariableOpB^audio2_face/formant_layer/sequential/conv2d/Conv2D/ReadVariableOpE^audio2_face/formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOpD^audio2_face/formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOpE^audio2_face/formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOpD^audio2_face/formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOpE^audio2_face/formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOpD^audio2_face/formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOpE^audio2_face/formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOpD^audio2_face/formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOpC^audio2_face/output_layer/sequential_1/dense/BiasAdd/ReadVariableOpB^audio2_face/output_layer/sequential_1/dense/MatMul/ReadVariableOpE^audio2_face/output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOpD^audio2_face/output_layer/sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapess
q:��������� @: : : : : : : : : : :@: : : : : : : : : : : : : : : : : : : : : : : : 2�
?audio2_face/articulation_layer/conv2d_10/BiasAdd/ReadVariableOp?audio2_face/articulation_layer/conv2d_10/BiasAdd/ReadVariableOp2�
>audio2_face/articulation_layer/conv2d_10/Conv2D/ReadVariableOp>audio2_face/articulation_layer/conv2d_10/Conv2D/ReadVariableOp2�
?audio2_face/articulation_layer/conv2d_11/BiasAdd/ReadVariableOp?audio2_face/articulation_layer/conv2d_11/BiasAdd/ReadVariableOp2�
>audio2_face/articulation_layer/conv2d_11/Conv2D/ReadVariableOp>audio2_face/articulation_layer/conv2d_11/Conv2D/ReadVariableOp2�
?audio2_face/articulation_layer/conv2d_12/BiasAdd/ReadVariableOp?audio2_face/articulation_layer/conv2d_12/BiasAdd/ReadVariableOp2�
>audio2_face/articulation_layer/conv2d_12/Conv2D/ReadVariableOp>audio2_face/articulation_layer/conv2d_12/Conv2D/ReadVariableOp2�
?audio2_face/articulation_layer/conv2d_13/BiasAdd/ReadVariableOp?audio2_face/articulation_layer/conv2d_13/BiasAdd/ReadVariableOp2�
>audio2_face/articulation_layer/conv2d_13/Conv2D/ReadVariableOp>audio2_face/articulation_layer/conv2d_13/Conv2D/ReadVariableOp2�
?audio2_face/articulation_layer/conv2d_14/BiasAdd/ReadVariableOp?audio2_face/articulation_layer/conv2d_14/BiasAdd/ReadVariableOp2�
>audio2_face/articulation_layer/conv2d_14/Conv2D/ReadVariableOp>audio2_face/articulation_layer/conv2d_14/Conv2D/ReadVariableOp2�
>audio2_face/articulation_layer/conv2d_5/BiasAdd/ReadVariableOp>audio2_face/articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2~
=audio2_face/articulation_layer/conv2d_5/Conv2D/ReadVariableOp=audio2_face/articulation_layer/conv2d_5/Conv2D/ReadVariableOp2�
>audio2_face/articulation_layer/conv2d_6/BiasAdd/ReadVariableOp>audio2_face/articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2~
=audio2_face/articulation_layer/conv2d_6/Conv2D/ReadVariableOp=audio2_face/articulation_layer/conv2d_6/Conv2D/ReadVariableOp2�
>audio2_face/articulation_layer/conv2d_7/BiasAdd/ReadVariableOp>audio2_face/articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2~
=audio2_face/articulation_layer/conv2d_7/Conv2D/ReadVariableOp=audio2_face/articulation_layer/conv2d_7/Conv2D/ReadVariableOp2�
>audio2_face/articulation_layer/conv2d_8/BiasAdd/ReadVariableOp>audio2_face/articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2~
=audio2_face/articulation_layer/conv2d_8/Conv2D/ReadVariableOp=audio2_face/articulation_layer/conv2d_8/Conv2D/ReadVariableOp2�
>audio2_face/articulation_layer/conv2d_9/BiasAdd/ReadVariableOp>audio2_face/articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2~
=audio2_face/articulation_layer/conv2d_9/Conv2D/ReadVariableOp=audio2_face/articulation_layer/conv2d_9/Conv2D/ReadVariableOp2�
Baudio2_face/formant_layer/sequential/conv2d/BiasAdd/ReadVariableOpBaudio2_face/formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp2�
Aaudio2_face/formant_layer/sequential/conv2d/Conv2D/ReadVariableOpAaudio2_face/formant_layer/sequential/conv2d/Conv2D/ReadVariableOp2�
Daudio2_face/formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOpDaudio2_face/formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp2�
Caudio2_face/formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOpCaudio2_face/formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp2�
Daudio2_face/formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOpDaudio2_face/formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp2�
Caudio2_face/formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOpCaudio2_face/formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp2�
Daudio2_face/formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOpDaudio2_face/formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp2�
Caudio2_face/formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOpCaudio2_face/formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp2�
Daudio2_face/formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOpDaudio2_face/formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp2�
Caudio2_face/formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOpCaudio2_face/formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp2�
Baudio2_face/output_layer/sequential_1/dense/BiasAdd/ReadVariableOpBaudio2_face/output_layer/sequential_1/dense/BiasAdd/ReadVariableOp2�
Aaudio2_face/output_layer/sequential_1/dense/MatMul/ReadVariableOpAaudio2_face/output_layer/sequential_1/dense/MatMul/ReadVariableOp2�
Daudio2_face/output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOpDaudio2_face/output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp2�
Caudio2_face/output_layer/sequential_1/dense_1/MatMul/ReadVariableOpCaudio2_face/output_layer/sequential_1/dense_1/MatMul/ReadVariableOp:X T
/
_output_shapes
:��������� @
!
_user_specified_name	input_1:,(
&
_output_shapes
:@
�
�
H__inference_sequential_layer_call_and_return_conditional_losses_10390519

inputs)
conv2d_10390445:H
conv2d_10390447:H+
conv2d_1_10390462:Hl
conv2d_1_10390464:l,
conv2d_2_10390479:l� 
conv2d_2_10390481:	�-
conv2d_3_10390496:�� 
conv2d_3_10390498:	�-
conv2d_4_10390513:�� 
conv2d_4_10390515:	�
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10390445conv2d_10390447*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_103904442 
conv2d/StatefulPartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_10390462conv2d_1_10390464*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@l*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_103904612"
 conv2d_1/StatefulPartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_10390479conv2d_2_10390481*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_103904782"
 conv2d_2/StatefulPartitionedCall�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_10390496conv2d_3_10390498*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_103904952"
 conv2d_3/StatefulPartitionedCall�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_10390513conv2d_4_10390515*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_103905122"
 conv2d_4/StatefulPartitionedCall�
IdentityIdentity)conv2d_4/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:W S
/
_output_shapes
:��������� @
 
_user_specified_nameinputs
�
�	
.__inference_audio2_face_layer_call_fn_10392672
x!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9&

unknown_10:��

unknown_11:	�$

unknown_12:

unknown_13:&

unknown_14:��

unknown_15:	�$

unknown_16:

unknown_17:&

unknown_18:��

unknown_19:	�$

unknown_20:

unknown_21:&

unknown_22:��

unknown_23:	�$

unknown_24:

unknown_25:&

unknown_26:��

unknown_27:	�$

unknown_28:

unknown_29:

unknown_30:
��

unknown_31:	�

unknown_32:	�%

unknown_33:%
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������%:���������@*D
_read_only_resource_inputs&
$"	
 !"#*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_audio2_face_layer_call_and_return_conditional_losses_103920522
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapess
q:��������� @: : : : : : : : : : :@: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:��������� @

_user_specified_namex:,(
&
_output_shapes
:@
�
�
F__inference_conv2d_6_layer_call_and_return_conditional_losses_10391002

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
G__inference_conv2d_13_layer_call_and_return_conditional_losses_10391129

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_layer_call_and_return_conditional_losses_10390444

inputs8
conv2d_readvariableop_resource:H-
biasadd_readvariableop_resource:H
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:H*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:H*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@H2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@H2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� @
 
_user_specified_nameinputs
�
�
/__inference_sequential_1_layer_call_fn_10394304
flatten_input
unknown:
��
	unknown_0:	�
	unknown_1:	�%
	unknown_2:%
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_103914832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
0
_output_shapes
:����������
'
_user_specified_nameflatten_input
�
�
+__inference_conv2d_4_layer_call_fn_10394522

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_103905122
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������@�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������@�
 
_user_specified_nameinputs
�
�
F__inference_conv2d_7_layer_call_and_return_conditional_losses_10391021

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :��������� �: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:��������� �
 
_user_specified_nameinputs
�
a
E__inference_flatten_layer_call_and_return_conditional_losses_10394544

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
0__inference_formant_layer_layer_call_fn_10393422
x!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_formant_layer_layer_call_and_return_conditional_losses_103908582
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:��������� @

_user_specified_namex
�5
�
H__inference_sequential_layer_call_and_return_conditional_losses_10394252
conv2d_input?
%conv2d_conv2d_readvariableop_resource:H4
&conv2d_biasadd_readvariableop_resource:HA
'conv2d_1_conv2d_readvariableop_resource:Hl6
(conv2d_1_biasadd_readvariableop_resource:lB
'conv2d_2_conv2d_readvariableop_resource:l�7
(conv2d_2_biasadd_readvariableop_resource:	�C
'conv2d_3_conv2d_readvariableop_resource:��7
(conv2d_3_biasadd_readvariableop_resource:	�C
'conv2d_4_conv2d_readvariableop_resource:��7
(conv2d_4_biasadd_readvariableop_resource:	�
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2Dconv2d_input$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H2
conv2d/Relu�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l2
conv2d_1/Relu�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
conv2d_2/Relu�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
conv2d_3/Relu�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
conv2d_4/BiasAdd|
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
conv2d_4/Relu
IdentityIdentityconv2d_4/Relu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:��������� @
&
_user_specified_nameconv2d_input
�
�
+__inference_conv2d_7_layer_call_fn_10394658

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_7_layer_call_and_return_conditional_losses_103910212
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :��������� �: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:��������� �
 
_user_specified_nameinputs
�
�
J__inference_sequential_1_layer_call_and_return_conditional_losses_10391574

inputs"
dense_10391562:
��
dense_10391564:	�#
dense_1_10391568:	�%
dense_1_10391570:%
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dropout/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_103914412
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_10391562dense_10391564*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_103914532
dense/StatefulPartitionedCall�
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_103915242!
dropout/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_10391568dense_1_10391570*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_103914762!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_conv2d_12_layer_call_and_return_conditional_losses_10394769

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
0__inference_formant_layer_layer_call_fn_10393447
input_1!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_formant_layer_layer_call_and_return_conditional_losses_103908582
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:��������� @
!
_user_specified_name	input_1
�
�	
.__inference_audio2_face_layer_call_fn_10392749
input_1!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9&

unknown_10:��

unknown_11:	�$

unknown_12:

unknown_13:&

unknown_14:��

unknown_15:	�$

unknown_16:

unknown_17:&

unknown_18:��

unknown_19:	�$

unknown_20:

unknown_21:&

unknown_22:��

unknown_23:	�$

unknown_24:

unknown_25:&

unknown_26:��

unknown_27:	�$

unknown_28:

unknown_29:

unknown_30:
��

unknown_31:	�

unknown_32:	�%

unknown_33:%
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������%:���������@*D
_read_only_resource_inputs&
$"	
 !"#*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_audio2_face_layer_call_and_return_conditional_losses_103920522
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapess
q:��������� @: : : : : : : : : : :@: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:��������� @
!
_user_specified_name	input_1:,(
&
_output_shapes
:@
�
�
J__inference_sequential_1_layer_call_and_return_conditional_losses_10391483

inputs"
dense_10391454:
��
dense_10391456:	�#
dense_1_10391477:	�%
dense_1_10391479:%
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_103914412
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_10391454dense_10391456*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_103914532
dense/StatefulPartitionedCall�
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_103914642
dropout/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_10391477dense_1_10391479*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_103914762!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_layer_call_fn_10394060
conv2d_input!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_103905192
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:��������� @
&
_user_specified_nameconv2d_input
�
�
/__inference_sequential_1_layer_call_fn_10394317

inputs
unknown:
��
	unknown_0:	�
	unknown_1:	�%
	unknown_2:%
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_103914832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�@
�	
K__inference_formant_layer_layer_call_and_return_conditional_losses_10393564
input_1J
0sequential_conv2d_conv2d_readvariableop_resource:H?
1sequential_conv2d_biasadd_readvariableop_resource:HL
2sequential_conv2d_1_conv2d_readvariableop_resource:HlA
3sequential_conv2d_1_biasadd_readvariableop_resource:lM
2sequential_conv2d_2_conv2d_readvariableop_resource:l�B
3sequential_conv2d_2_biasadd_readvariableop_resource:	�N
2sequential_conv2d_3_conv2d_readvariableop_resource:��B
3sequential_conv2d_3_biasadd_readvariableop_resource:	�N
2sequential_conv2d_4_conv2d_readvariableop_resource:��B
3sequential_conv2d_4_biasadd_readvariableop_resource:	�
identity��(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�*sequential/conv2d_3/BiasAdd/ReadVariableOp�)sequential/conv2d_3/Conv2D/ReadVariableOp�*sequential/conv2d_4/BiasAdd/ReadVariableOp�)sequential/conv2d_4/Conv2D/ReadVariableOp�
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp�
sequential/conv2d/Conv2DConv2Dinput_1/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2
sequential/conv2d/Conv2D�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2
sequential/conv2d/BiasAdd�
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H2
sequential/conv2d/Relu�
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp�
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2
sequential/conv2d_1/Conv2D�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2
sequential/conv2d_1/BiasAdd�
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l2
sequential/conv2d_1/Relu�
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp�
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
sequential/conv2d_2/Conv2D�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_2/BiasAdd�
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_2/Relu�
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp�
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
sequential/conv2d_3/Conv2D�
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp�
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_3/BiasAdd�
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_3/Relu�
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02+
)sequential/conv2d_4/Conv2D/ReadVariableOp�
sequential/conv2d_4/Conv2DConv2D&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
sequential/conv2d_4/Conv2D�
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*sequential/conv2d_4/BiasAdd/ReadVariableOp�
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_4/BiasAdd�
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_4/Relu�
IdentityIdentity&sequential/conv2d_4/Relu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity�
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp:X T
/
_output_shapes
:��������� @
!
_user_specified_name	input_1
�
c
*__inference_dropout_layer_call_fn_10394573

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_103915242
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
,__inference_conv2d_13_layer_call_fn_10394778

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_13_layer_call_and_return_conditional_losses_103911292
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_dense_layer_call_and_return_conditional_losses_10391453

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
$__inference__traced_restore_10395048
file_prefix8
assignvariableop_conv2d_kernel:H,
assignvariableop_1_conv2d_bias:H<
"assignvariableop_2_conv2d_1_kernel:Hl.
 assignvariableop_3_conv2d_1_bias:l=
"assignvariableop_4_conv2d_2_kernel:l�/
 assignvariableop_5_conv2d_2_bias:	�>
"assignvariableop_6_conv2d_3_kernel:��/
 assignvariableop_7_conv2d_3_bias:	�>
"assignvariableop_8_conv2d_4_kernel:��/
 assignvariableop_9_conv2d_4_bias:	�^
Bassignvariableop_10_audio2_face_articulation_layer_conv2d_5_kernel:��O
@assignvariableop_11_audio2_face_articulation_layer_conv2d_5_bias:	�\
Bassignvariableop_12_audio2_face_articulation_layer_conv2d_6_kernel:N
@assignvariableop_13_audio2_face_articulation_layer_conv2d_6_bias:^
Bassignvariableop_14_audio2_face_articulation_layer_conv2d_7_kernel:��O
@assignvariableop_15_audio2_face_articulation_layer_conv2d_7_bias:	�\
Bassignvariableop_16_audio2_face_articulation_layer_conv2d_8_kernel:N
@assignvariableop_17_audio2_face_articulation_layer_conv2d_8_bias:^
Bassignvariableop_18_audio2_face_articulation_layer_conv2d_9_kernel:��O
@assignvariableop_19_audio2_face_articulation_layer_conv2d_9_bias:	�]
Cassignvariableop_20_audio2_face_articulation_layer_conv2d_10_kernel:O
Aassignvariableop_21_audio2_face_articulation_layer_conv2d_10_bias:_
Cassignvariableop_22_audio2_face_articulation_layer_conv2d_11_kernel:��P
Aassignvariableop_23_audio2_face_articulation_layer_conv2d_11_bias:	�]
Cassignvariableop_24_audio2_face_articulation_layer_conv2d_12_kernel:O
Aassignvariableop_25_audio2_face_articulation_layer_conv2d_12_bias:_
Cassignvariableop_26_audio2_face_articulation_layer_conv2d_13_kernel:��P
Aassignvariableop_27_audio2_face_articulation_layer_conv2d_13_bias:	�]
Cassignvariableop_28_audio2_face_articulation_layer_conv2d_14_kernel:O
Aassignvariableop_29_audio2_face_articulation_layer_conv2d_14_bias:4
 assignvariableop_30_dense_kernel:
��-
assignvariableop_31_dense_bias:	�5
"assignvariableop_32_dense_1_kernel:	�%.
 assignvariableop_33_dense_1_bias:%
identity_35��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*�
value�B�#B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::*1
dtypes'
%2#2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpBassignvariableop_10_audio2_face_articulation_layer_conv2d_5_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp@assignvariableop_11_audio2_face_articulation_layer_conv2d_5_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpBassignvariableop_12_audio2_face_articulation_layer_conv2d_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp@assignvariableop_13_audio2_face_articulation_layer_conv2d_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpBassignvariableop_14_audio2_face_articulation_layer_conv2d_7_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp@assignvariableop_15_audio2_face_articulation_layer_conv2d_7_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpBassignvariableop_16_audio2_face_articulation_layer_conv2d_8_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp@assignvariableop_17_audio2_face_articulation_layer_conv2d_8_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpBassignvariableop_18_audio2_face_articulation_layer_conv2d_9_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp@assignvariableop_19_audio2_face_articulation_layer_conv2d_9_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpCassignvariableop_20_audio2_face_articulation_layer_conv2d_10_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpAassignvariableop_21_audio2_face_articulation_layer_conv2d_10_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpCassignvariableop_22_audio2_face_articulation_layer_conv2d_11_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOpAassignvariableop_23_audio2_face_articulation_layer_conv2d_11_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOpCassignvariableop_24_audio2_face_articulation_layer_conv2d_12_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOpAassignvariableop_25_audio2_face_articulation_layer_conv2d_12_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOpCassignvariableop_26_audio2_face_articulation_layer_conv2d_13_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOpAassignvariableop_27_audio2_face_articulation_layer_conv2d_13_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOpCassignvariableop_28_audio2_face_articulation_layer_conv2d_14_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOpAassignvariableop_29_audio2_face_articulation_layer_conv2d_14_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp assignvariableop_30_dense_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOpassignvariableop_31_dense_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp"assignvariableop_32_dense_1_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp assignvariableop_33_dense_1_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_339
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_34Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_34f
Identity_35IdentityIdentity_34:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_35�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_35Identity_35:output:0*Y
_input_shapesH
F: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332(
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
�
�
(__inference_dense_layer_call_fn_10394553

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_103914532
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_3_layer_call_and_return_conditional_losses_10390495

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������@�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������@�
 
_user_specified_nameinputs
�
�
5__inference_articulation_layer_layer_call_fn_10393701
x
unknown%
	unknown_0:��
	unknown_1:	�#
	unknown_2:
	unknown_3:%
	unknown_4:��
	unknown_5:	�#
	unknown_6:
	unknown_7:%
	unknown_8:��
	unknown_9:	�$

unknown_10:

unknown_11:&

unknown_12:��

unknown_13:	�$

unknown_14:

unknown_15:&

unknown_16:��

unknown_17:	�$

unknown_18:

unknown_19:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:����������:���������@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_articulation_layer_layer_call_and_return_conditional_losses_103911562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:���������@�:@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
0
_output_shapes
:���������@�

_user_specified_namex:,(
&
_output_shapes
:@
�
�
F__inference_conv2d_8_layer_call_and_return_conditional_losses_10394689

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
G__inference_conv2d_13_layer_call_and_return_conditional_losses_10394789

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_1_layer_call_and_return_conditional_losses_10394473

inputs8
conv2d_readvariableop_resource:Hl-
biasadd_readvariableop_resource:l
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:l*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@l2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@l2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@H
 
_user_specified_nameinputs
�
�
F__inference_conv2d_8_layer_call_and_return_conditional_losses_10391038

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�4
�
H__inference_sequential_layer_call_and_return_conditional_losses_10394213

inputs?
%conv2d_conv2d_readvariableop_resource:H4
&conv2d_biasadd_readvariableop_resource:HA
'conv2d_1_conv2d_readvariableop_resource:Hl6
(conv2d_1_biasadd_readvariableop_resource:lB
'conv2d_2_conv2d_readvariableop_resource:l�7
(conv2d_2_biasadd_readvariableop_resource:	�C
'conv2d_3_conv2d_readvariableop_resource:��7
(conv2d_3_biasadd_readvariableop_resource:	�C
'conv2d_4_conv2d_readvariableop_resource:��7
(conv2d_4_biasadd_readvariableop_resource:	�
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H2
conv2d/Relu�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l2
conv2d_1/Relu�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
conv2d_2/Relu�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
conv2d_3/Relu�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
conv2d_4/BiasAdd|
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
conv2d_4/Relu
IdentityIdentityconv2d_4/Relu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:W S
/
_output_shapes
:��������� @
 
_user_specified_nameinputs
�5
�
H__inference_sequential_layer_call_and_return_conditional_losses_10394291
conv2d_input?
%conv2d_conv2d_readvariableop_resource:H4
&conv2d_biasadd_readvariableop_resource:HA
'conv2d_1_conv2d_readvariableop_resource:Hl6
(conv2d_1_biasadd_readvariableop_resource:lB
'conv2d_2_conv2d_readvariableop_resource:l�7
(conv2d_2_biasadd_readvariableop_resource:	�C
'conv2d_3_conv2d_readvariableop_resource:��7
(conv2d_3_biasadd_readvariableop_resource:	�C
'conv2d_4_conv2d_readvariableop_resource:��7
(conv2d_4_biasadd_readvariableop_resource:	�
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2Dconv2d_input$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H2
conv2d/Relu�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l2
conv2d_1/Relu�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
conv2d_2/Relu�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
conv2d_3/Relu�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
conv2d_4/BiasAdd|
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
conv2d_4/Relu
IdentityIdentityconv2d_4/Relu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:��������� @
&
_user_specified_nameconv2d_input
�
�
+__inference_conv2d_8_layer_call_fn_10394678

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_8_layer_call_and_return_conditional_losses_103910382
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
F__inference_conv2d_1_layer_call_and_return_conditional_losses_10390461

inputs8
conv2d_readvariableop_resource:Hl-
biasadd_readvariableop_resource:l
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:l*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@l2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@l2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@H
 
_user_specified_nameinputs
�
�
J__inference_sequential_1_layer_call_and_return_conditional_losses_10394407
flatten_input8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�%5
'dense_1_biasadd_readvariableop_resource:%
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
flatten/Const�
flatten/ReshapeReshapeflatten_inputflatten/Const:output:0*
T0*(
_output_shapes
:����������2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/BiasAdd{
dropout/IdentityIdentitydense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dropout/Identity�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:_ [
0
_output_shapes
:����������
'
_user_specified_nameflatten_input
�
�
-__inference_sequential_layer_call_fn_10394085

inputs!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_103905192
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� @
 
_user_specified_nameinputs
�
�
F__inference_conv2d_5_layer_call_and_return_conditional_losses_10390985

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:��������� �2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:��������� �2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������@�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������@�
 
_user_specified_nameinputs
�
�
G__inference_conv2d_14_layer_call_and_return_conditional_losses_10394809

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
@2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
C__inference_dense_layer_call_and_return_conditional_losses_10394563

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
F
*__inference_flatten_layer_call_fn_10394538

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_103914412
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_9_layer_call_and_return_conditional_losses_10391057

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_2_layer_call_and_return_conditional_losses_10394493

inputs9
conv2d_readvariableop_resource:l�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@l: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@l
 
_user_specified_nameinputs
�
�
K__inference_formant_layer_layer_call_and_return_conditional_losses_10390858
x-
sequential_10390836:H!
sequential_10390838:H-
sequential_10390840:Hl!
sequential_10390842:l.
sequential_10390844:l�"
sequential_10390846:	�/
sequential_10390848:��"
sequential_10390850:	�/
sequential_10390852:��"
sequential_10390854:	�
identity��"sequential/StatefulPartitionedCall�
"sequential/StatefulPartitionedCallStatefulPartitionedCallxsequential_10390836sequential_10390838sequential_10390840sequential_10390842sequential_10390844sequential_10390846sequential_10390848sequential_10390850sequential_10390852sequential_10390854*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_103906482$
"sequential/StatefulPartitionedCall�
IdentityIdentity+sequential/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identitys
NoOpNoOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:R N
/
_output_shapes
:��������� @

_user_specified_namex
�
�
+__inference_conv2d_2_layer_call_fn_10394482

inputs"
unknown:l�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_103904782
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@l: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@l
 
_user_specified_nameinputs
�
�
-__inference_sequential_layer_call_fn_10394110

inputs!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_103906482
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� @
 
_user_specified_nameinputs
�N
�
!__inference__traced_save_10394936
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableopM
Isavev2_audio2_face_articulation_layer_conv2d_5_kernel_read_readvariableopK
Gsavev2_audio2_face_articulation_layer_conv2d_5_bias_read_readvariableopM
Isavev2_audio2_face_articulation_layer_conv2d_6_kernel_read_readvariableopK
Gsavev2_audio2_face_articulation_layer_conv2d_6_bias_read_readvariableopM
Isavev2_audio2_face_articulation_layer_conv2d_7_kernel_read_readvariableopK
Gsavev2_audio2_face_articulation_layer_conv2d_7_bias_read_readvariableopM
Isavev2_audio2_face_articulation_layer_conv2d_8_kernel_read_readvariableopK
Gsavev2_audio2_face_articulation_layer_conv2d_8_bias_read_readvariableopM
Isavev2_audio2_face_articulation_layer_conv2d_9_kernel_read_readvariableopK
Gsavev2_audio2_face_articulation_layer_conv2d_9_bias_read_readvariableopN
Jsavev2_audio2_face_articulation_layer_conv2d_10_kernel_read_readvariableopL
Hsavev2_audio2_face_articulation_layer_conv2d_10_bias_read_readvariableopN
Jsavev2_audio2_face_articulation_layer_conv2d_11_kernel_read_readvariableopL
Hsavev2_audio2_face_articulation_layer_conv2d_11_bias_read_readvariableopN
Jsavev2_audio2_face_articulation_layer_conv2d_12_kernel_read_readvariableopL
Hsavev2_audio2_face_articulation_layer_conv2d_12_bias_read_readvariableopN
Jsavev2_audio2_face_articulation_layer_conv2d_13_kernel_read_readvariableopL
Hsavev2_audio2_face_articulation_layer_conv2d_13_bias_read_readvariableopN
Jsavev2_audio2_face_articulation_layer_conv2d_14_kernel_read_readvariableopL
Hsavev2_audio2_face_articulation_layer_conv2d_14_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop
savev2_const_1

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*�
value�B�#B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableopIsavev2_audio2_face_articulation_layer_conv2d_5_kernel_read_readvariableopGsavev2_audio2_face_articulation_layer_conv2d_5_bias_read_readvariableopIsavev2_audio2_face_articulation_layer_conv2d_6_kernel_read_readvariableopGsavev2_audio2_face_articulation_layer_conv2d_6_bias_read_readvariableopIsavev2_audio2_face_articulation_layer_conv2d_7_kernel_read_readvariableopGsavev2_audio2_face_articulation_layer_conv2d_7_bias_read_readvariableopIsavev2_audio2_face_articulation_layer_conv2d_8_kernel_read_readvariableopGsavev2_audio2_face_articulation_layer_conv2d_8_bias_read_readvariableopIsavev2_audio2_face_articulation_layer_conv2d_9_kernel_read_readvariableopGsavev2_audio2_face_articulation_layer_conv2d_9_bias_read_readvariableopJsavev2_audio2_face_articulation_layer_conv2d_10_kernel_read_readvariableopHsavev2_audio2_face_articulation_layer_conv2d_10_bias_read_readvariableopJsavev2_audio2_face_articulation_layer_conv2d_11_kernel_read_readvariableopHsavev2_audio2_face_articulation_layer_conv2d_11_bias_read_readvariableopJsavev2_audio2_face_articulation_layer_conv2d_12_kernel_read_readvariableopHsavev2_audio2_face_articulation_layer_conv2d_12_bias_read_readvariableopJsavev2_audio2_face_articulation_layer_conv2d_13_kernel_read_readvariableopHsavev2_audio2_face_articulation_layer_conv2d_13_bias_read_readvariableopJsavev2_audio2_face_articulation_layer_conv2d_14_kernel_read_readvariableopHsavev2_audio2_face_articulation_layer_conv2d_14_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *1
dtypes'
%2#2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :H:H:Hl:l:l�:�:��:�:��:�:��:�:::��:�:::��:�:::��:�:::��:�:::
��:�:	�%:%: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:H: 

_output_shapes
:H:,(
&
_output_shapes
:Hl: 

_output_shapes
:l:-)
'
_output_shapes
:l�:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.	*
(
_output_shapes
:��:!


_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:,(
&
_output_shapes
:: 

_output_shapes
::.*
(
_output_shapes
:��:!

_output_shapes	
:�:,(
&
_output_shapes
:: 

_output_shapes
::.*
(
_output_shapes
:��:!

_output_shapes	
:�:,(
&
_output_shapes
:: 

_output_shapes
::.*
(
_output_shapes
:��:!

_output_shapes	
:�:,(
&
_output_shapes
:: 

_output_shapes
::.*
(
_output_shapes
:��:!

_output_shapes	
:�:,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
��:! 

_output_shapes	
:�:%!!

_output_shapes
:	�%: "

_output_shapes
:%:#

_output_shapes
: 
�
a
E__inference_flatten_layer_call_and_return_conditional_losses_10391441

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
J__inference_output_layer_layer_call_and_return_conditional_losses_10391686
x)
sequential_1_10391676:
��$
sequential_1_10391678:	�(
sequential_1_10391680:	�%#
sequential_1_10391682:%
identity��$sequential_1/StatefulPartitionedCall�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallxsequential_1_10391676sequential_1_10391678sequential_1_10391680sequential_1_10391682*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_103915742&
$sequential_1/StatefulPartitionedCall�
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identityu
NoOpNoOp%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:S O
0
_output_shapes
:����������

_user_specified_namex
�
�
G__inference_conv2d_10_layer_call_and_return_conditional_losses_10391074

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
+__inference_conv2d_3_layer_call_fn_10394502

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_103904952
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������@�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������@�
 
_user_specified_nameinputs
�
�
+__inference_conv2d_6_layer_call_fn_10394638

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_6_layer_call_and_return_conditional_losses_103910022
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�@
�	
K__inference_formant_layer_layer_call_and_return_conditional_losses_10393486
xJ
0sequential_conv2d_conv2d_readvariableop_resource:H?
1sequential_conv2d_biasadd_readvariableop_resource:HL
2sequential_conv2d_1_conv2d_readvariableop_resource:HlA
3sequential_conv2d_1_biasadd_readvariableop_resource:lM
2sequential_conv2d_2_conv2d_readvariableop_resource:l�B
3sequential_conv2d_2_biasadd_readvariableop_resource:	�N
2sequential_conv2d_3_conv2d_readvariableop_resource:��B
3sequential_conv2d_3_biasadd_readvariableop_resource:	�N
2sequential_conv2d_4_conv2d_readvariableop_resource:��B
3sequential_conv2d_4_biasadd_readvariableop_resource:	�
identity��(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�*sequential/conv2d_3/BiasAdd/ReadVariableOp�)sequential/conv2d_3/Conv2D/ReadVariableOp�*sequential/conv2d_4/BiasAdd/ReadVariableOp�)sequential/conv2d_4/Conv2D/ReadVariableOp�
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp�
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2
sequential/conv2d/Conv2D�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2
sequential/conv2d/BiasAdd�
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H2
sequential/conv2d/Relu�
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp�
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2
sequential/conv2d_1/Conv2D�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2
sequential/conv2d_1/BiasAdd�
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l2
sequential/conv2d_1/Relu�
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp�
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
sequential/conv2d_2/Conv2D�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_2/BiasAdd�
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_2/Relu�
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp�
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
sequential/conv2d_3/Conv2D�
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp�
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_3/BiasAdd�
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_3/Relu�
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02+
)sequential/conv2d_4/Conv2D/ReadVariableOp�
sequential/conv2d_4/Conv2DConv2D&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
sequential/conv2d_4/Conv2D�
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*sequential/conv2d_4/BiasAdd/ReadVariableOp�
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_4/BiasAdd�
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_4/Relu�
IdentityIdentity&sequential/conv2d_4/Relu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity�
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp:R N
/
_output_shapes
:��������� @

_user_specified_namex
�
�
/__inference_output_layer_layer_call_fn_10393919
x
unknown:
��
	unknown_0:	�
	unknown_1:	�%
	unknown_2:%
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_output_layer_layer_call_and_return_conditional_losses_103916472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
0
_output_shapes
:����������

_user_specified_namex
�'
�
J__inference_output_layer_layer_call_and_return_conditional_losses_10393990
xE
1sequential_1_dense_matmul_readvariableop_resource:
��A
2sequential_1_dense_biasadd_readvariableop_resource:	�F
3sequential_1_dense_1_matmul_readvariableop_resource:	�%B
4sequential_1_dense_1_biasadd_readvariableop_resource:%
identity��)sequential_1/dense/BiasAdd/ReadVariableOp�(sequential_1/dense/MatMul/ReadVariableOp�+sequential_1/dense_1/BiasAdd/ReadVariableOp�*sequential_1/dense_1/MatMul/ReadVariableOp�
sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
sequential_1/flatten/Const�
sequential_1/flatten/ReshapeReshapex#sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:����������2
sequential_1/flatten/Reshape�
(sequential_1/dense/MatMul/ReadVariableOpReadVariableOp1sequential_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02*
(sequential_1/dense/MatMul/ReadVariableOp�
sequential_1/dense/MatMulMatMul%sequential_1/flatten/Reshape:output:00sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_1/dense/MatMul�
)sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)sequential_1/dense/BiasAdd/ReadVariableOp�
sequential_1/dense/BiasAddBiasAdd#sequential_1/dense/MatMul:product:01sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_1/dense/BiasAdd�
"sequential_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"sequential_1/dropout/dropout/Const�
 sequential_1/dropout/dropout/MulMul#sequential_1/dense/BiasAdd:output:0+sequential_1/dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������2"
 sequential_1/dropout/dropout/Mul�
"sequential_1/dropout/dropout/ShapeShape#sequential_1/dense/BiasAdd:output:0*
T0*
_output_shapes
:2$
"sequential_1/dropout/dropout/Shape�
9sequential_1/dropout/dropout/random_uniform/RandomUniformRandomUniform+sequential_1/dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed{2;
9sequential_1/dropout/dropout/random_uniform/RandomUniform�
+sequential_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+sequential_1/dropout/dropout/GreaterEqual/y�
)sequential_1/dropout/dropout/GreaterEqualGreaterEqualBsequential_1/dropout/dropout/random_uniform/RandomUniform:output:04sequential_1/dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2+
)sequential_1/dropout/dropout/GreaterEqual�
!sequential_1/dropout/dropout/CastCast-sequential_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2#
!sequential_1/dropout/dropout/Cast�
"sequential_1/dropout/dropout/Mul_1Mul$sequential_1/dropout/dropout/Mul:z:0%sequential_1/dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:����������2$
"sequential_1/dropout/dropout/Mul_1�
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp�
sequential_1/dense_1/MatMulMatMul&sequential_1/dropout/dropout/Mul_1:z:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
sequential_1/dense_1/MatMul�
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp�
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
sequential_1/dense_1/BiasAdd�
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�
NoOpNoOp*^sequential_1/dense/BiasAdd/ReadVariableOp)^sequential_1/dense/MatMul/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2V
)sequential_1/dense/BiasAdd/ReadVariableOp)sequential_1/dense/BiasAdd/ReadVariableOp2T
(sequential_1/dense/MatMul/ReadVariableOp(sequential_1/dense/MatMul/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:S O
0
_output_shapes
:����������

_user_specified_namex
�
�
0__inference_formant_layer_layer_call_fn_10393397
x!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_formant_layer_layer_call_and_return_conditional_losses_103907832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:��������� @

_user_specified_namex
�
�
J__inference_sequential_1_layer_call_and_return_conditional_losses_10394388

inputs8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�%5
'dense_1_biasadd_readvariableop_resource:%
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
flatten/Const�
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:����������2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/BiasAdds
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const�
dropout/dropout/MulMuldense/BiasAdd:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout/dropout/Mult
dropout/dropout/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed{2.
,dropout/dropout/random_uniform/RandomUniform�
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/y�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2
dropout/dropout/GreaterEqual�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout/dropout/Cast�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout/dropout/Mul_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
J__inference_sequential_1_layer_call_and_return_conditional_losses_10394362

inputs8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�%5
'dense_1_biasadd_readvariableop_resource:%
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
flatten/Const�
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:����������2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/BiasAdd{
dropout/IdentityIdentitydense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dropout/Identity�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
F
*__inference_dropout_layer_call_fn_10394568

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_103914642
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�}
�
P__inference_articulation_layer_layer_call_and_return_conditional_losses_10393893
input_1

tile_inputC
'conv2d_5_conv2d_readvariableop_resource:��7
(conv2d_5_biasadd_readvariableop_resource:	�A
'conv2d_6_conv2d_readvariableop_resource:6
(conv2d_6_biasadd_readvariableop_resource:C
'conv2d_7_conv2d_readvariableop_resource:��7
(conv2d_7_biasadd_readvariableop_resource:	�A
'conv2d_8_conv2d_readvariableop_resource:6
(conv2d_8_biasadd_readvariableop_resource:C
'conv2d_9_conv2d_readvariableop_resource:��7
(conv2d_9_biasadd_readvariableop_resource:	�B
(conv2d_10_conv2d_readvariableop_resource:7
)conv2d_10_biasadd_readvariableop_resource:D
(conv2d_11_conv2d_readvariableop_resource:��8
)conv2d_11_biasadd_readvariableop_resource:	�B
(conv2d_12_conv2d_readvariableop_resource:7
)conv2d_12_biasadd_readvariableop_resource:D
(conv2d_13_conv2d_readvariableop_resource:��8
)conv2d_13_biasadd_readvariableop_resource:	�B
(conv2d_14_conv2d_readvariableop_resource:7
)conv2d_14_biasadd_readvariableop_resource:
identity

identity_1�� conv2d_10/BiasAdd/ReadVariableOp�conv2d_10/Conv2D/ReadVariableOp� conv2d_11/BiasAdd/ReadVariableOp�conv2d_11/Conv2D/ReadVariableOp� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp�conv2d_5/BiasAdd/ReadVariableOp�conv2d_5/Conv2D/ReadVariableOp�conv2d_6/BiasAdd/ReadVariableOp�conv2d_6/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�conv2d_8/BiasAdd/ReadVariableOp�conv2d_8/Conv2D/ReadVariableOp�conv2d_9/BiasAdd/ReadVariableOp�conv2d_9/Conv2D/ReadVariableOpE
ShapeShapeinput_1*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicef
Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Tile/multiples/1f
Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :2
Tile/multiples/2f
Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :2
Tile/multiples/3�
Tile/multiplesPackstrided_slice:output:0Tile/multiples/1:output:0Tile/multiples/2:output:0Tile/multiples/3:output:0*
N*
T0*
_output_shapes
:2
Tile/multipless
TileTile
tile_inputTile/multiples:output:0*
T0*/
_output_shapes
:���������@2
Tile�
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_5/Conv2D/ReadVariableOp�
conv2d_5/Conv2DConv2Dinput_1&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �*
paddingSAME*
strides
2
conv2d_5/Conv2D�
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_5/BiasAdd/ReadVariableOp�
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �2
conv2d_5/BiasAdd|
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:��������� �2
conv2d_5/Relu�
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_6/Conv2D/ReadVariableOp�
conv2d_6/Conv2DConv2DTile:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
2
conv2d_6/Conv2D�
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_6/BiasAdd/ReadVariableOp�
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2
conv2d_6/BiasAdd{
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:��������� 2
conv2d_6/Relu\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2conv2d_5/Relu:activations:0conv2d_6/Relu:activations:0concat/axis:output:0*
N*
T0*0
_output_shapes
:��������� �2
concat�
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_7/Conv2D/ReadVariableOp�
conv2d_7/Conv2DConv2Dconcat:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_7/Conv2D�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_7/BiasAdd/ReadVariableOp�
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_7/BiasAdd|
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_7/Relu�
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_8/Conv2D/ReadVariableOp�
conv2d_8/Conv2DConv2DTile:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_8/Conv2D�
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_8/BiasAdd/ReadVariableOp�
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_8/BiasAdd{
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_8/Relu`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis�
concat_1ConcatV2conv2d_7/Relu:activations:0conv2d_8/Relu:activations:0concat_1/axis:output:0*
N*
T0*0
_output_shapes
:����������2

concat_1�
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02 
conv2d_9/Conv2D/ReadVariableOp�
conv2d_9/Conv2DConv2Dconcat_1:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_9/Conv2D�
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_9/BiasAdd/ReadVariableOp�
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_9/BiasAdd|
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_9/Relu�
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_10/Conv2D/ReadVariableOp�
conv2d_10/Conv2DConv2DTile:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_10/Conv2D�
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp�
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_10/Relu`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis�
concat_2ConcatV2conv2d_9/Relu:activations:0conv2d_10/Relu:activations:0concat_2/axis:output:0*
N*
T0*0
_output_shapes
:����������2

concat_2�
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02!
conv2d_11/Conv2D/ReadVariableOp�
conv2d_11/Conv2DConv2Dconcat_2:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_11/Conv2D�
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp�
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_11/BiasAdd
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_11/Relu�
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_12/Conv2D/ReadVariableOp�
conv2d_12/Conv2DConv2DTile:output:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_12/Conv2D�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_12/BiasAdd~
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_12/Relu`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_3/axis�
concat_3ConcatV2conv2d_11/Relu:activations:0conv2d_12/Relu:activations:0concat_3/axis:output:0*
N*
T0*0
_output_shapes
:����������2

concat_3�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02!
conv2d_13/Conv2D/ReadVariableOp�
conv2d_13/Conv2DConv2Dconcat_3:output:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_13/Conv2D�
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp�
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_13/BiasAdd
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_13/Relu�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_14/Conv2D/ReadVariableOp�
conv2d_14/Conv2DConv2DTile:output:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
@2
conv2d_14/Conv2D�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_14/BiasAdd~
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_14/Relu`
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_4/axis�
concat_4ConcatV2conv2d_13/Relu:activations:0conv2d_14/Relu:activations:0concat_4/axis:output:0*
N*
T0*0
_output_shapes
:����������2

concat_4u
IdentityIdentityconcat_4:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityt

Identity_1IdentityTile:output:0^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1�
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:���������@�:@: : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp:Y U
0
_output_shapes
:���������@�
!
_user_specified_name	input_1:,(
&
_output_shapes
:@
�
�
)__inference_conv2d_layer_call_fn_10394442

inputs!
unknown:H
	unknown_0:H
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_103904442
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@H2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� @
 
_user_specified_nameinputs
�@
�	
K__inference_formant_layer_layer_call_and_return_conditional_losses_10393603
input_1J
0sequential_conv2d_conv2d_readvariableop_resource:H?
1sequential_conv2d_biasadd_readvariableop_resource:HL
2sequential_conv2d_1_conv2d_readvariableop_resource:HlA
3sequential_conv2d_1_biasadd_readvariableop_resource:lM
2sequential_conv2d_2_conv2d_readvariableop_resource:l�B
3sequential_conv2d_2_biasadd_readvariableop_resource:	�N
2sequential_conv2d_3_conv2d_readvariableop_resource:��B
3sequential_conv2d_3_biasadd_readvariableop_resource:	�N
2sequential_conv2d_4_conv2d_readvariableop_resource:��B
3sequential_conv2d_4_biasadd_readvariableop_resource:	�
identity��(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�*sequential/conv2d_3/BiasAdd/ReadVariableOp�)sequential/conv2d_3/Conv2D/ReadVariableOp�*sequential/conv2d_4/BiasAdd/ReadVariableOp�)sequential/conv2d_4/Conv2D/ReadVariableOp�
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp�
sequential/conv2d/Conv2DConv2Dinput_1/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2
sequential/conv2d/Conv2D�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2
sequential/conv2d/BiasAdd�
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H2
sequential/conv2d/Relu�
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp�
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2
sequential/conv2d_1/Conv2D�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2
sequential/conv2d_1/BiasAdd�
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l2
sequential/conv2d_1/Relu�
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp�
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
sequential/conv2d_2/Conv2D�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_2/BiasAdd�
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_2/Relu�
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp�
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
sequential/conv2d_3/Conv2D�
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp�
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_3/BiasAdd�
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_3/Relu�
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02+
)sequential/conv2d_4/Conv2D/ReadVariableOp�
sequential/conv2d_4/Conv2DConv2D&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
sequential/conv2d_4/Conv2D�
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*sequential/conv2d_4/BiasAdd/ReadVariableOp�
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_4/BiasAdd�
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_4/Relu�
IdentityIdentity&sequential/conv2d_4/Relu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity�
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp:X T
/
_output_shapes
:��������� @
!
_user_specified_name	input_1
�@
�	
K__inference_formant_layer_layer_call_and_return_conditional_losses_10393525
xJ
0sequential_conv2d_conv2d_readvariableop_resource:H?
1sequential_conv2d_biasadd_readvariableop_resource:HL
2sequential_conv2d_1_conv2d_readvariableop_resource:HlA
3sequential_conv2d_1_biasadd_readvariableop_resource:lM
2sequential_conv2d_2_conv2d_readvariableop_resource:l�B
3sequential_conv2d_2_biasadd_readvariableop_resource:	�N
2sequential_conv2d_3_conv2d_readvariableop_resource:��B
3sequential_conv2d_3_biasadd_readvariableop_resource:	�N
2sequential_conv2d_4_conv2d_readvariableop_resource:��B
3sequential_conv2d_4_biasadd_readvariableop_resource:	�
identity��(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�*sequential/conv2d_3/BiasAdd/ReadVariableOp�)sequential/conv2d_3/Conv2D/ReadVariableOp�*sequential/conv2d_4/BiasAdd/ReadVariableOp�)sequential/conv2d_4/Conv2D/ReadVariableOp�
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp�
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2
sequential/conv2d/Conv2D�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2
sequential/conv2d/BiasAdd�
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H2
sequential/conv2d/Relu�
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp�
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2
sequential/conv2d_1/Conv2D�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2
sequential/conv2d_1/BiasAdd�
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l2
sequential/conv2d_1/Relu�
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp�
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
sequential/conv2d_2/Conv2D�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_2/BiasAdd�
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_2/Relu�
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp�
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
sequential/conv2d_3/Conv2D�
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp�
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_3/BiasAdd�
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_3/Relu�
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02+
)sequential/conv2d_4/Conv2D/ReadVariableOp�
sequential/conv2d_4/Conv2DConv2D&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
sequential/conv2d_4/Conv2D�
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*sequential/conv2d_4/BiasAdd/ReadVariableOp�
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_4/BiasAdd�
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
sequential/conv2d_4/Relu�
IdentityIdentity&sequential/conv2d_4/Relu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity�
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp:R N
/
_output_shapes
:��������� @

_user_specified_namex
�
�
+__inference_conv2d_9_layer_call_fn_10394698

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_9_layer_call_and_return_conditional_losses_103910572
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
J__inference_output_layer_layer_call_and_return_conditional_losses_10394009
input_1E
1sequential_1_dense_matmul_readvariableop_resource:
��A
2sequential_1_dense_biasadd_readvariableop_resource:	�F
3sequential_1_dense_1_matmul_readvariableop_resource:	�%B
4sequential_1_dense_1_biasadd_readvariableop_resource:%
identity��)sequential_1/dense/BiasAdd/ReadVariableOp�(sequential_1/dense/MatMul/ReadVariableOp�+sequential_1/dense_1/BiasAdd/ReadVariableOp�*sequential_1/dense_1/MatMul/ReadVariableOp�
sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
sequential_1/flatten/Const�
sequential_1/flatten/ReshapeReshapeinput_1#sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:����������2
sequential_1/flatten/Reshape�
(sequential_1/dense/MatMul/ReadVariableOpReadVariableOp1sequential_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02*
(sequential_1/dense/MatMul/ReadVariableOp�
sequential_1/dense/MatMulMatMul%sequential_1/flatten/Reshape:output:00sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_1/dense/MatMul�
)sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)sequential_1/dense/BiasAdd/ReadVariableOp�
sequential_1/dense/BiasAddBiasAdd#sequential_1/dense/MatMul:product:01sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_1/dense/BiasAdd�
sequential_1/dropout/IdentityIdentity#sequential_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
sequential_1/dropout/Identity�
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp�
sequential_1/dense_1/MatMulMatMul&sequential_1/dropout/Identity:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
sequential_1/dense_1/MatMul�
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp�
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
sequential_1/dense_1/BiasAdd�
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�
NoOpNoOp*^sequential_1/dense/BiasAdd/ReadVariableOp)^sequential_1/dense/MatMul/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2V
)sequential_1/dense/BiasAdd/ReadVariableOp)sequential_1/dense/BiasAdd/ReadVariableOp2T
(sequential_1/dense/MatMul/ReadVariableOp(sequential_1/dense/MatMul/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:Y U
0
_output_shapes
:����������
!
_user_specified_name	input_1
�
�
/__inference_sequential_1_layer_call_fn_10394330

inputs
unknown:
��
	unknown_0:	�
	unknown_1:	�%
	unknown_2:%
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_103915742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
5__inference_articulation_layer_layer_call_fn_10393652
input_1
unknown%
	unknown_0:��
	unknown_1:	�#
	unknown_2:
	unknown_3:%
	unknown_4:��
	unknown_5:	�#
	unknown_6:
	unknown_7:%
	unknown_8:��
	unknown_9:	�$

unknown_10:

unknown_11:&

unknown_12:��

unknown_13:	�$

unknown_14:

unknown_15:&

unknown_16:��

unknown_17:	�$

unknown_18:

unknown_19:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:����������:���������@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_articulation_layer_layer_call_and_return_conditional_losses_103911562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:���������@�:@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:���������@�
!
_user_specified_name	input_1:,(
&
_output_shapes
:@
�
�
F__inference_conv2d_4_layer_call_and_return_conditional_losses_10390512

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������@�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������@�
 
_user_specified_nameinputs
�
�
F__inference_conv2d_7_layer_call_and_return_conditional_losses_10394669

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :��������� �: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:��������� �
 
_user_specified_nameinputs
�
c
E__inference_dropout_layer_call_and_return_conditional_losses_10394578

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:����������2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_9_layer_call_and_return_conditional_losses_10394709

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_1_layer_call_and_return_conditional_losses_10394609

inputs1
matmul_readvariableop_resource:	�%-
biasadd_readvariableop_resource:%
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�%*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:%*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_conv2d_14_layer_call_and_return_conditional_losses_10391146

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
@2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�	
.__inference_audio2_face_layer_call_fn_10392595
x!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9&

unknown_10:��

unknown_11:	�$

unknown_12:

unknown_13:&

unknown_14:��

unknown_15:	�$

unknown_16:

unknown_17:&

unknown_18:��

unknown_19:	�$

unknown_20:

unknown_21:&

unknown_22:��

unknown_23:	�$

unknown_24:

unknown_25:&

unknown_26:��

unknown_27:	�$

unknown_28:

unknown_29:

unknown_30:
��

unknown_31:	�

unknown_32:	�%

unknown_33:%
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������%:���������@*D
_read_only_resource_inputs&
$"	
 !"#*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_audio2_face_layer_call_and_return_conditional_losses_103918192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapess
q:��������� @: : : : : : : : : : :@: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:��������� @

_user_specified_namex:,(
&
_output_shapes
:@
�
�
0__inference_formant_layer_layer_call_fn_10393372
input_1!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_formant_layer_layer_call_and_return_conditional_losses_103907832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:��������� @
!
_user_specified_name	input_1
�
�	
.__inference_audio2_face_layer_call_fn_10392518
input_1!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9&

unknown_10:��

unknown_11:	�$

unknown_12:

unknown_13:&

unknown_14:��

unknown_15:	�$

unknown_16:

unknown_17:&

unknown_18:��

unknown_19:	�$

unknown_20:

unknown_21:&

unknown_22:��

unknown_23:	�$

unknown_24:

unknown_25:&

unknown_26:��

unknown_27:	�$

unknown_28:

unknown_29:

unknown_30:
��

unknown_31:	�

unknown_32:	�%

unknown_33:%
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������%:���������@*D
_read_only_resource_inputs&
$"	
 !"#*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_audio2_face_layer_call_and_return_conditional_losses_103918192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapess
q:��������� @: : : : : : : : : : :@: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:��������� @
!
_user_specified_name	input_1:,(
&
_output_shapes
:@
�
�%
I__inference_audio2_face_layer_call_and_return_conditional_losses_10392895
xX
>formant_layer_sequential_conv2d_conv2d_readvariableop_resource:HM
?formant_layer_sequential_conv2d_biasadd_readvariableop_resource:HZ
@formant_layer_sequential_conv2d_1_conv2d_readvariableop_resource:HlO
Aformant_layer_sequential_conv2d_1_biasadd_readvariableop_resource:l[
@formant_layer_sequential_conv2d_2_conv2d_readvariableop_resource:l�P
Aformant_layer_sequential_conv2d_2_biasadd_readvariableop_resource:	�\
@formant_layer_sequential_conv2d_3_conv2d_readvariableop_resource:��P
Aformant_layer_sequential_conv2d_3_biasadd_readvariableop_resource:	�\
@formant_layer_sequential_conv2d_4_conv2d_readvariableop_resource:��P
Aformant_layer_sequential_conv2d_4_biasadd_readvariableop_resource:	�!
articulation_layer_tile_inputV
:articulation_layer_conv2d_5_conv2d_readvariableop_resource:��J
;articulation_layer_conv2d_5_biasadd_readvariableop_resource:	�T
:articulation_layer_conv2d_6_conv2d_readvariableop_resource:I
;articulation_layer_conv2d_6_biasadd_readvariableop_resource:V
:articulation_layer_conv2d_7_conv2d_readvariableop_resource:��J
;articulation_layer_conv2d_7_biasadd_readvariableop_resource:	�T
:articulation_layer_conv2d_8_conv2d_readvariableop_resource:I
;articulation_layer_conv2d_8_biasadd_readvariableop_resource:V
:articulation_layer_conv2d_9_conv2d_readvariableop_resource:��J
;articulation_layer_conv2d_9_biasadd_readvariableop_resource:	�U
;articulation_layer_conv2d_10_conv2d_readvariableop_resource:J
<articulation_layer_conv2d_10_biasadd_readvariableop_resource:W
;articulation_layer_conv2d_11_conv2d_readvariableop_resource:��K
<articulation_layer_conv2d_11_biasadd_readvariableop_resource:	�U
;articulation_layer_conv2d_12_conv2d_readvariableop_resource:J
<articulation_layer_conv2d_12_biasadd_readvariableop_resource:W
;articulation_layer_conv2d_13_conv2d_readvariableop_resource:��K
<articulation_layer_conv2d_13_biasadd_readvariableop_resource:	�U
;articulation_layer_conv2d_14_conv2d_readvariableop_resource:J
<articulation_layer_conv2d_14_biasadd_readvariableop_resource:R
>output_layer_sequential_1_dense_matmul_readvariableop_resource:
��N
?output_layer_sequential_1_dense_biasadd_readvariableop_resource:	�S
@output_layer_sequential_1_dense_1_matmul_readvariableop_resource:	�%O
Aoutput_layer_sequential_1_dense_1_biasadd_readvariableop_resource:%
identity

identity_1��3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_10/Conv2D/ReadVariableOp�3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_11/Conv2D/ReadVariableOp�3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_12/Conv2D/ReadVariableOp�3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_13/Conv2D/ReadVariableOp�3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp�2articulation_layer/conv2d_14/Conv2D/ReadVariableOp�2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_5/Conv2D/ReadVariableOp�2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_6/Conv2D/ReadVariableOp�2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_7/Conv2D/ReadVariableOp�2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_8/Conv2D/ReadVariableOp�2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp�1articulation_layer/conv2d_9/Conv2D/ReadVariableOp�6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp�5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp�8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp�7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp�6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp�5output_layer/sequential_1/dense/MatMul/ReadVariableOp�8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp�7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp�
5formant_layer/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp>formant_layer_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:H*
dtype027
5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp�
&formant_layer/sequential/conv2d/Conv2DConv2Dx=formant_layer/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2(
&formant_layer/sequential/conv2d/Conv2D�
6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp?formant_layer_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype028
6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp�
'formant_layer/sequential/conv2d/BiasAddBiasAdd/formant_layer/sequential/conv2d/Conv2D:output:0>formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2)
'formant_layer/sequential/conv2d/BiasAdd�
$formant_layer/sequential/conv2d/ReluRelu0formant_layer/sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@H2&
$formant_layer/sequential/conv2d/Relu�
7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:Hl*
dtype029
7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_1/Conv2DConv2D2formant_layer/sequential/conv2d/Relu:activations:0?formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_1/Conv2D�
8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02:
8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_1/BiasAddBiasAdd1formant_layer/sequential/conv2d_1/Conv2D:output:0@formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l2+
)formant_layer/sequential/conv2d_1/BiasAdd�
&formant_layer/sequential/conv2d_1/ReluRelu2formant_layer/sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@l2(
&formant_layer/sequential/conv2d_1/Relu�
7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype029
7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_2/Conv2DConv2D4formant_layer/sequential/conv2d_1/Relu:activations:0?formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_2/Conv2D�
8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_2/BiasAddBiasAdd1formant_layer/sequential/conv2d_2/Conv2D:output:0@formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2+
)formant_layer/sequential/conv2d_2/BiasAdd�
&formant_layer/sequential/conv2d_2/ReluRelu2formant_layer/sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2(
&formant_layer/sequential/conv2d_2/Relu�
7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype029
7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_3/Conv2DConv2D4formant_layer/sequential/conv2d_2/Relu:activations:0?formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_3/Conv2D�
8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_3/BiasAddBiasAdd1formant_layer/sequential/conv2d_3/Conv2D:output:0@formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2+
)formant_layer/sequential/conv2d_3/BiasAdd�
&formant_layer/sequential/conv2d_3/ReluRelu2formant_layer/sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2(
&formant_layer/sequential/conv2d_3/Relu�
7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp@formant_layer_sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype029
7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp�
(formant_layer/sequential/conv2d_4/Conv2DConv2D4formant_layer/sequential/conv2d_3/Relu:activations:0?formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2*
(formant_layer/sequential/conv2d_4/Conv2D�
8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOpAformant_layer_sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp�
)formant_layer/sequential/conv2d_4/BiasAddBiasAdd1formant_layer/sequential/conv2d_4/Conv2D:output:0@formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2+
)formant_layer/sequential/conv2d_4/BiasAdd�
&formant_layer/sequential/conv2d_4/ReluRelu2formant_layer/sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:���������@�2(
&formant_layer/sequential/conv2d_4/Relu�
articulation_layer/ShapeShape4formant_layer/sequential/conv2d_4/Relu:activations:0*
T0*
_output_shapes
:2
articulation_layer/Shape�
&articulation_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&articulation_layer/strided_slice/stack�
(articulation_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(articulation_layer/strided_slice/stack_1�
(articulation_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(articulation_layer/strided_slice/stack_2�
 articulation_layer/strided_sliceStridedSlice!articulation_layer/Shape:output:0/articulation_layer/strided_slice/stack:output:01articulation_layer/strided_slice/stack_1:output:01articulation_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 articulation_layer/strided_slice�
#articulation_layer/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#articulation_layer/Tile/multiples/1�
#articulation_layer/Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#articulation_layer/Tile/multiples/2�
#articulation_layer/Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#articulation_layer/Tile/multiples/3�
!articulation_layer/Tile/multiplesPack)articulation_layer/strided_slice:output:0,articulation_layer/Tile/multiples/1:output:0,articulation_layer/Tile/multiples/2:output:0,articulation_layer/Tile/multiples/3:output:0*
N*
T0*
_output_shapes
:2#
!articulation_layer/Tile/multiples�
articulation_layer/TileTilearticulation_layer_tile_input*articulation_layer/Tile/multiples:output:0*
T0*/
_output_shapes
:���������@2
articulation_layer/Tile�
1articulation_layer/conv2d_5/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype023
1articulation_layer/conv2d_5/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_5/Conv2DConv2D4formant_layer/sequential/conv2d_4/Relu:activations:09articulation_layer/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �*
paddingSAME*
strides
2$
"articulation_layer/conv2d_5/Conv2D�
2articulation_layer/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype024
2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_5/BiasAddBiasAdd+articulation_layer/conv2d_5/Conv2D:output:0:articulation_layer/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:��������� �2%
#articulation_layer/conv2d_5/BiasAdd�
 articulation_layer/conv2d_5/ReluRelu,articulation_layer/conv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:��������� �2"
 articulation_layer/conv2d_5/Relu�
1articulation_layer/conv2d_6/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype023
1articulation_layer/conv2d_6/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_6/Conv2DConv2D articulation_layer/Tile:output:09articulation_layer/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
2$
"articulation_layer/conv2d_6/Conv2D�
2articulation_layer/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_6/BiasAddBiasAdd+articulation_layer/conv2d_6/Conv2D:output:0:articulation_layer/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2%
#articulation_layer/conv2d_6/BiasAdd�
 articulation_layer/conv2d_6/ReluRelu,articulation_layer/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:��������� 2"
 articulation_layer/conv2d_6/Relu�
articulation_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2 
articulation_layer/concat/axis�
articulation_layer/concatConcatV2.articulation_layer/conv2d_5/Relu:activations:0.articulation_layer/conv2d_6/Relu:activations:0'articulation_layer/concat/axis:output:0*
N*
T0*0
_output_shapes
:��������� �2
articulation_layer/concat�
1articulation_layer/conv2d_7/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype023
1articulation_layer/conv2d_7/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_7/Conv2DConv2D"articulation_layer/concat:output:09articulation_layer/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2$
"articulation_layer/conv2d_7/Conv2D�
2articulation_layer/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype024
2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_7/BiasAddBiasAdd+articulation_layer/conv2d_7/Conv2D:output:0:articulation_layer/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2%
#articulation_layer/conv2d_7/BiasAdd�
 articulation_layer/conv2d_7/ReluRelu,articulation_layer/conv2d_7/BiasAdd:output:0*
T0*0
_output_shapes
:����������2"
 articulation_layer/conv2d_7/Relu�
1articulation_layer/conv2d_8/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype023
1articulation_layer/conv2d_8/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_8/Conv2DConv2D articulation_layer/Tile:output:09articulation_layer/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2$
"articulation_layer/conv2d_8/Conv2D�
2articulation_layer/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_8/BiasAddBiasAdd+articulation_layer/conv2d_8/Conv2D:output:0:articulation_layer/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2%
#articulation_layer/conv2d_8/BiasAdd�
 articulation_layer/conv2d_8/ReluRelu,articulation_layer/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������2"
 articulation_layer/conv2d_8/Relu�
 articulation_layer/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_1/axis�
articulation_layer/concat_1ConcatV2.articulation_layer/conv2d_7/Relu:activations:0.articulation_layer/conv2d_8/Relu:activations:0)articulation_layer/concat_1/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_1�
1articulation_layer/conv2d_9/Conv2D/ReadVariableOpReadVariableOp:articulation_layer_conv2d_9_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype023
1articulation_layer/conv2d_9/Conv2D/ReadVariableOp�
"articulation_layer/conv2d_9/Conv2DConv2D$articulation_layer/concat_1:output:09articulation_layer/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2$
"articulation_layer/conv2d_9/Conv2D�
2articulation_layer/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp;articulation_layer_conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype024
2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp�
#articulation_layer/conv2d_9/BiasAddBiasAdd+articulation_layer/conv2d_9/Conv2D:output:0:articulation_layer/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2%
#articulation_layer/conv2d_9/BiasAdd�
 articulation_layer/conv2d_9/ReluRelu,articulation_layer/conv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:����������2"
 articulation_layer/conv2d_9/Relu�
2articulation_layer/conv2d_10/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2articulation_layer/conv2d_10/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_10/Conv2DConv2D articulation_layer/Tile:output:0:articulation_layer/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_10/Conv2D�
3articulation_layer/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_10/BiasAddBiasAdd,articulation_layer/conv2d_10/Conv2D:output:0;articulation_layer/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2&
$articulation_layer/conv2d_10/BiasAdd�
!articulation_layer/conv2d_10/ReluRelu-articulation_layer/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:���������2#
!articulation_layer/conv2d_10/Relu�
 articulation_layer/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_2/axis�
articulation_layer/concat_2ConcatV2.articulation_layer/conv2d_9/Relu:activations:0/articulation_layer/conv2d_10/Relu:activations:0)articulation_layer/concat_2/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_2�
2articulation_layer/conv2d_11/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype024
2articulation_layer/conv2d_11/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_11/Conv2DConv2D$articulation_layer/concat_2:output:0:articulation_layer/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_11/Conv2D�
3articulation_layer/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype025
3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_11/BiasAddBiasAdd,articulation_layer/conv2d_11/Conv2D:output:0;articulation_layer/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2&
$articulation_layer/conv2d_11/BiasAdd�
!articulation_layer/conv2d_11/ReluRelu-articulation_layer/conv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:����������2#
!articulation_layer/conv2d_11/Relu�
2articulation_layer/conv2d_12/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2articulation_layer/conv2d_12/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_12/Conv2DConv2D articulation_layer/Tile:output:0:articulation_layer/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_12/Conv2D�
3articulation_layer/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_12/BiasAddBiasAdd,articulation_layer/conv2d_12/Conv2D:output:0;articulation_layer/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2&
$articulation_layer/conv2d_12/BiasAdd�
!articulation_layer/conv2d_12/ReluRelu-articulation_layer/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������2#
!articulation_layer/conv2d_12/Relu�
 articulation_layer/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_3/axis�
articulation_layer/concat_3ConcatV2/articulation_layer/conv2d_11/Relu:activations:0/articulation_layer/conv2d_12/Relu:activations:0)articulation_layer/concat_3/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_3�
2articulation_layer/conv2d_13/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype024
2articulation_layer/conv2d_13/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_13/Conv2DConv2D$articulation_layer/concat_3:output:0:articulation_layer/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#articulation_layer/conv2d_13/Conv2D�
3articulation_layer/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype025
3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_13/BiasAddBiasAdd,articulation_layer/conv2d_13/Conv2D:output:0;articulation_layer/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2&
$articulation_layer/conv2d_13/BiasAdd�
!articulation_layer/conv2d_13/ReluRelu-articulation_layer/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:����������2#
!articulation_layer/conv2d_13/Relu�
2articulation_layer/conv2d_14/Conv2D/ReadVariableOpReadVariableOp;articulation_layer_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2articulation_layer/conv2d_14/Conv2D/ReadVariableOp�
#articulation_layer/conv2d_14/Conv2DConv2D articulation_layer/Tile:output:0:articulation_layer/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
@2%
#articulation_layer/conv2d_14/Conv2D�
3articulation_layer/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp<articulation_layer_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp�
$articulation_layer/conv2d_14/BiasAddBiasAdd,articulation_layer/conv2d_14/Conv2D:output:0;articulation_layer/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2&
$articulation_layer/conv2d_14/BiasAdd�
!articulation_layer/conv2d_14/ReluRelu-articulation_layer/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:���������2#
!articulation_layer/conv2d_14/Relu�
 articulation_layer/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 articulation_layer/concat_4/axis�
articulation_layer/concat_4ConcatV2/articulation_layer/conv2d_13/Relu:activations:0/articulation_layer/conv2d_14/Relu:activations:0)articulation_layer/concat_4/axis:output:0*
N*
T0*0
_output_shapes
:����������2
articulation_layer/concat_4�
'output_layer/sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2)
'output_layer/sequential_1/flatten/Const�
)output_layer/sequential_1/flatten/ReshapeReshape$articulation_layer/concat_4:output:00output_layer/sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:����������2+
)output_layer/sequential_1/flatten/Reshape�
5output_layer/sequential_1/dense/MatMul/ReadVariableOpReadVariableOp>output_layer_sequential_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype027
5output_layer/sequential_1/dense/MatMul/ReadVariableOp�
&output_layer/sequential_1/dense/MatMulMatMul2output_layer/sequential_1/flatten/Reshape:output:0=output_layer/sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2(
&output_layer/sequential_1/dense/MatMul�
6output_layer/sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOp?output_layer_sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype028
6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp�
'output_layer/sequential_1/dense/BiasAddBiasAdd0output_layer/sequential_1/dense/MatMul:product:0>output_layer/sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2)
'output_layer/sequential_1/dense/BiasAdd�
*output_layer/sequential_1/dropout/IdentityIdentity0output_layer/sequential_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2,
*output_layer/sequential_1/dropout/Identity�
7output_layer/sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp@output_layer_sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�%*
dtype029
7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp�
(output_layer/sequential_1/dense_1/MatMulMatMul3output_layer/sequential_1/dropout/Identity:output:0?output_layer/sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2*
(output_layer/sequential_1/dense_1/MatMul�
8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpAoutput_layer_sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype02:
8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp�
)output_layer/sequential_1/dense_1/BiasAddBiasAdd2output_layer/sequential_1/dense_1/MatMul:product:0@output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������%2+
)output_layer/sequential_1/dense_1/BiasAdd�
IdentityIdentity2output_layer/sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������%2

Identity�

Identity_1Identity articulation_layer/Tile:output:0^NoOp*
T0*/
_output_shapes
:���������@2

Identity_1�
NoOpNoOp4^articulation_layer/conv2d_10/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_10/Conv2D/ReadVariableOp4^articulation_layer/conv2d_11/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_11/Conv2D/ReadVariableOp4^articulation_layer/conv2d_12/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_12/Conv2D/ReadVariableOp4^articulation_layer/conv2d_13/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_13/Conv2D/ReadVariableOp4^articulation_layer/conv2d_14/BiasAdd/ReadVariableOp3^articulation_layer/conv2d_14/Conv2D/ReadVariableOp3^articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_5/Conv2D/ReadVariableOp3^articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_6/Conv2D/ReadVariableOp3^articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_7/Conv2D/ReadVariableOp3^articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_8/Conv2D/ReadVariableOp3^articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2^articulation_layer/conv2d_9/Conv2D/ReadVariableOp7^formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp6^formant_layer/sequential/conv2d/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp9^formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp8^formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp7^output_layer/sequential_1/dense/BiasAdd/ReadVariableOp6^output_layer/sequential_1/dense/MatMul/ReadVariableOp9^output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp8^output_layer/sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapess
q:��������� @: : : : : : : : : : :@: : : : : : : : : : : : : : : : : : : : : : : : 2j
3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp3articulation_layer/conv2d_10/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_10/Conv2D/ReadVariableOp2articulation_layer/conv2d_10/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp3articulation_layer/conv2d_11/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_11/Conv2D/ReadVariableOp2articulation_layer/conv2d_11/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp3articulation_layer/conv2d_12/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_12/Conv2D/ReadVariableOp2articulation_layer/conv2d_12/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp3articulation_layer/conv2d_13/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_13/Conv2D/ReadVariableOp2articulation_layer/conv2d_13/Conv2D/ReadVariableOp2j
3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp3articulation_layer/conv2d_14/BiasAdd/ReadVariableOp2h
2articulation_layer/conv2d_14/Conv2D/ReadVariableOp2articulation_layer/conv2d_14/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2articulation_layer/conv2d_5/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_5/Conv2D/ReadVariableOp1articulation_layer/conv2d_5/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2articulation_layer/conv2d_6/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_6/Conv2D/ReadVariableOp1articulation_layer/conv2d_6/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2articulation_layer/conv2d_7/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_7/Conv2D/ReadVariableOp1articulation_layer/conv2d_7/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2articulation_layer/conv2d_8/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_8/Conv2D/ReadVariableOp1articulation_layer/conv2d_8/Conv2D/ReadVariableOp2h
2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2articulation_layer/conv2d_9/BiasAdd/ReadVariableOp2f
1articulation_layer/conv2d_9/Conv2D/ReadVariableOp1articulation_layer/conv2d_9/Conv2D/ReadVariableOp2p
6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp6formant_layer/sequential/conv2d/BiasAdd/ReadVariableOp2n
5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp5formant_layer/sequential/conv2d/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_1/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_1/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_2/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_2/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_3/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_3/Conv2D/ReadVariableOp2t
8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp8formant_layer/sequential/conv2d_4/BiasAdd/ReadVariableOp2r
7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp7formant_layer/sequential/conv2d_4/Conv2D/ReadVariableOp2p
6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp6output_layer/sequential_1/dense/BiasAdd/ReadVariableOp2n
5output_layer/sequential_1/dense/MatMul/ReadVariableOp5output_layer/sequential_1/dense/MatMul/ReadVariableOp2t
8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp8output_layer/sequential_1/dense_1/BiasAdd/ReadVariableOp2r
7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp7output_layer/sequential_1/dense_1/MatMul/ReadVariableOp:R N
/
_output_shapes
:��������� @

_user_specified_namex:,(
&
_output_shapes
:@
�
�
F__inference_conv2d_2_layer_call_and_return_conditional_losses_10390478

inputs9
conv2d_readvariableop_resource:l�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:l�*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������@�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������@�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@l: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@l
 
_user_specified_nameinputs
�
�
G__inference_conv2d_10_layer_call_and_return_conditional_losses_10394729

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
F__inference_conv2d_6_layer_call_and_return_conditional_losses_10394649

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
-__inference_sequential_layer_call_fn_10394135
conv2d_input!
unknown:H
	unknown_0:H#
	unknown_1:Hl
	unknown_2:l$
	unknown_3:l�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������@�*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_103906482
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:��������� @: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:��������� @
&
_user_specified_nameconv2d_input
�
�
D__inference_conv2d_layer_call_and_return_conditional_losses_10394453

inputs8
conv2d_readvariableop_resource:H-
biasadd_readvariableop_resource:H
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:H*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:H*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@H2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@H2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@H2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� @
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0��������� @<
output_10
StatefulPartitionedCall:0���������%D
output_28
StatefulPartitionedCall:1���������@tensorflow/serving/predict:٬
�
FormantLayer
ArticulationLayer
OutputLayer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses"
_tf_keras_model
�
	kernels_size

outputs
formant_layers
regularization_losses
	variables
trainable_variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_model
�
kernels_size
emotion_strides
conv2d_strides
articulation_layer
regularization_losses
	variables
trainable_variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_model
�
output_layer
regularization_losses
	variables
trainable_variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_model
 "
trackable_list_wrapper
�
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322
423
524
625
726
827
928
:29
;30
<31
=32
>33"
trackable_list_wrapper
�
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322
423
524
625
726
827
928
:29
;30
<31
=32
>33"
trackable_list_wrapper
�

?layers
@layer_metrics
Alayer_regularization_losses
regularization_losses
Bmetrics
	variables
Cnon_trainable_variables
trainable_variables
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
C
D0
E1
F2
G3
H4"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Ilayer_with_weights-0
Ilayer-0
Jlayer_with_weights-1
Jlayer-1
Klayer_with_weights-2
Klayer-2
Llayer_with_weights-3
Llayer-3
Mlayer_with_weights-4
Mlayer-4
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
 "
trackable_list_wrapper
f
0
1
2
 3
!4
"5
#6
$7
%8
&9"
trackable_list_wrapper
f
0
1
2
 3
!4
"5
#6
$7
%8
&9"
trackable_list_wrapper
�

Rlayers
Slayer_metrics
Tlayer_regularization_losses
regularization_losses
Umetrics
	variables
Vnon_trainable_variables
trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
C
W0
X1
Y2
Z3
[4"
trackable_list_wrapper
C
\0
]1
^2
_3
`4"
trackable_list_wrapper
C
a0
b1
c2
d3
e4"
trackable_list_wrapper
C
f0
g1
h2
i3
j4"
trackable_list_wrapper
 "
trackable_list_wrapper
�
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615
716
817
918
:19"
trackable_list_wrapper
�
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615
716
817
918
:19"
trackable_list_wrapper
�

klayers
llayer_metrics
mlayer_regularization_losses
regularization_losses
nmetrics
	variables
onon_trainable_variables
trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
player-0
qlayer_with_weights-0
qlayer-1
rlayer-2
slayer_with_weights-1
slayer-3
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
 "
trackable_list_wrapper
<
;0
<1
=2
>3"
trackable_list_wrapper
<
;0
<1
=2
>3"
trackable_list_wrapper
�

xlayers
ylayer_metrics
zlayer_regularization_losses
regularization_losses
{metrics
	variables
|non_trainable_variables
trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
':%H2conv2d/kernel
:H2conv2d/bias
):'Hl2conv2d_1/kernel
:l2conv2d_1/bias
*:(l�2conv2d_2/kernel
:�2conv2d_2/bias
+:)��2conv2d_3/kernel
:�2conv2d_3/bias
+:)��2conv2d_4/kernel
:�2conv2d_4/bias
J:H��2.audio2_face/articulation_layer/conv2d_5/kernel
;:9�2,audio2_face/articulation_layer/conv2d_5/bias
H:F2.audio2_face/articulation_layer/conv2d_6/kernel
::82,audio2_face/articulation_layer/conv2d_6/bias
J:H��2.audio2_face/articulation_layer/conv2d_7/kernel
;:9�2,audio2_face/articulation_layer/conv2d_7/bias
H:F2.audio2_face/articulation_layer/conv2d_8/kernel
::82,audio2_face/articulation_layer/conv2d_8/bias
J:H��2.audio2_face/articulation_layer/conv2d_9/kernel
;:9�2,audio2_face/articulation_layer/conv2d_9/bias
I:G2/audio2_face/articulation_layer/conv2d_10/kernel
;:92-audio2_face/articulation_layer/conv2d_10/bias
K:I��2/audio2_face/articulation_layer/conv2d_11/kernel
<::�2-audio2_face/articulation_layer/conv2d_11/bias
I:G2/audio2_face/articulation_layer/conv2d_12/kernel
;:92-audio2_face/articulation_layer/conv2d_12/bias
K:I��2/audio2_face/articulation_layer/conv2d_13/kernel
<::�2-audio2_face/articulation_layer/conv2d_13/bias
I:G2/audio2_face/articulation_layer/conv2d_14/kernel
;:92-audio2_face/articulation_layer/conv2d_14/bias
 :
��2dense/kernel
:�2
dense/bias
!:	�%2dense_1/kernel
:%2dense_1/bias
5
0
1
2"
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�

kernel
bias
}regularization_losses
~	variables
trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
 bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

!kernel
"bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

#kernel
$bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

%kernel
&bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
f
0
1
2
 3
!4
"5
#6
$7
%8
&9"
trackable_list_wrapper
f
0
1
2
 3
!4
"5
#6
$7
%8
&9"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
Nregularization_losses
�metrics
O	variables
�non_trainable_variables
Ptrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
p
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

;kernel
<bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

=kernel
>bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
<
;0
<1
=2
>3"
trackable_list_wrapper
<
;0
<1
=2
>3"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
tregularization_losses
�metrics
u	variables
�non_trainable_variables
vtrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
}regularization_losses
�metrics
~	variables
�non_trainable_variables
trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
C
I0
J1
K2
L3
M4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�

'kernel
(bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

)kernel
*bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

+kernel
,bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

-kernel
.bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

/kernel
0bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

1kernel
2bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

3kernel
4bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

5kernel
6bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

7kernel
8bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

9kernel
:bias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
<
p0
q1
r2
s3"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
�
�layers
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�	variables
�non_trainable_variables
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
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
�2�
.__inference_audio2_face_layer_call_fn_10392518
.__inference_audio2_face_layer_call_fn_10392595
.__inference_audio2_face_layer_call_fn_10392672
.__inference_audio2_face_layer_call_fn_10392749�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__wrapped_model_10390426input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_audio2_face_layer_call_and_return_conditional_losses_10392895
I__inference_audio2_face_layer_call_and_return_conditional_losses_10393048
I__inference_audio2_face_layer_call_and_return_conditional_losses_10393194
I__inference_audio2_face_layer_call_and_return_conditional_losses_10393347�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_formant_layer_layer_call_fn_10393372
0__inference_formant_layer_layer_call_fn_10393397
0__inference_formant_layer_layer_call_fn_10393422
0__inference_formant_layer_layer_call_fn_10393447�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_formant_layer_layer_call_and_return_conditional_losses_10393486
K__inference_formant_layer_layer_call_and_return_conditional_losses_10393525
K__inference_formant_layer_layer_call_and_return_conditional_losses_10393564
K__inference_formant_layer_layer_call_and_return_conditional_losses_10393603�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
5__inference_articulation_layer_layer_call_fn_10393652
5__inference_articulation_layer_layer_call_fn_10393701�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
P__inference_articulation_layer_layer_call_and_return_conditional_losses_10393797
P__inference_articulation_layer_layer_call_and_return_conditional_losses_10393893�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_output_layer_layer_call_fn_10393906
/__inference_output_layer_layer_call_fn_10393919
/__inference_output_layer_layer_call_fn_10393932
/__inference_output_layer_layer_call_fn_10393945�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_output_layer_layer_call_and_return_conditional_losses_10393964
J__inference_output_layer_layer_call_and_return_conditional_losses_10393990
J__inference_output_layer_layer_call_and_return_conditional_losses_10394009
J__inference_output_layer_layer_call_and_return_conditional_losses_10394035�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_signature_wrapper_10392441input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_sequential_layer_call_fn_10394060
-__inference_sequential_layer_call_fn_10394085
-__inference_sequential_layer_call_fn_10394110
-__inference_sequential_layer_call_fn_10394135�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_layer_call_and_return_conditional_losses_10394174
H__inference_sequential_layer_call_and_return_conditional_losses_10394213
H__inference_sequential_layer_call_and_return_conditional_losses_10394252
H__inference_sequential_layer_call_and_return_conditional_losses_10394291�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_sequential_1_layer_call_fn_10394304
/__inference_sequential_1_layer_call_fn_10394317
/__inference_sequential_1_layer_call_fn_10394330
/__inference_sequential_1_layer_call_fn_10394343�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_sequential_1_layer_call_and_return_conditional_losses_10394362
J__inference_sequential_1_layer_call_and_return_conditional_losses_10394388
J__inference_sequential_1_layer_call_and_return_conditional_losses_10394407
J__inference_sequential_1_layer_call_and_return_conditional_losses_10394433�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_conv2d_layer_call_fn_10394442�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_layer_call_and_return_conditional_losses_10394453�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_conv2d_1_layer_call_fn_10394462�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv2d_1_layer_call_and_return_conditional_losses_10394473�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_conv2d_2_layer_call_fn_10394482�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv2d_2_layer_call_and_return_conditional_losses_10394493�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_conv2d_3_layer_call_fn_10394502�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv2d_3_layer_call_and_return_conditional_losses_10394513�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_conv2d_4_layer_call_fn_10394522�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv2d_4_layer_call_and_return_conditional_losses_10394533�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_flatten_layer_call_fn_10394538�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_flatten_layer_call_and_return_conditional_losses_10394544�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_dense_layer_call_fn_10394553�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_layer_call_and_return_conditional_losses_10394563�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_dropout_layer_call_fn_10394568
*__inference_dropout_layer_call_fn_10394573�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_dropout_layer_call_and_return_conditional_losses_10394578
E__inference_dropout_layer_call_and_return_conditional_losses_10394590�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_dense_1_layer_call_fn_10394599�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_1_layer_call_and_return_conditional_losses_10394609�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_conv2d_5_layer_call_fn_10394618�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv2d_5_layer_call_and_return_conditional_losses_10394629�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_conv2d_6_layer_call_fn_10394638�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv2d_6_layer_call_and_return_conditional_losses_10394649�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_conv2d_7_layer_call_fn_10394658�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv2d_7_layer_call_and_return_conditional_losses_10394669�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_conv2d_8_layer_call_fn_10394678�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv2d_8_layer_call_and_return_conditional_losses_10394689�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_conv2d_9_layer_call_fn_10394698�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv2d_9_layer_call_and_return_conditional_losses_10394709�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_conv2d_10_layer_call_fn_10394718�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_conv2d_10_layer_call_and_return_conditional_losses_10394729�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_conv2d_11_layer_call_fn_10394738�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_conv2d_11_layer_call_and_return_conditional_losses_10394749�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_conv2d_12_layer_call_fn_10394758�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_conv2d_12_layer_call_and_return_conditional_losses_10394769�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_conv2d_13_layer_call_fn_10394778�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_conv2d_13_layer_call_and_return_conditional_losses_10394789�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_conv2d_14_layer_call_fn_10394798�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_conv2d_14_layer_call_and_return_conditional_losses_10394809�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
	J
Const�
#__inference__wrapped_model_10390426�$ !"#$%&�'()*+,-./0123456789:;<=>8�5
.�+
)�&
input_1��������� @
� "k�h
.
output_1"�
output_1���������%
6
output_2*�'
output_2���������@�
P__inference_articulation_layer_layer_call_and_return_conditional_losses_10393797��'()*+,-./0123456789:3�0
)�&
$�!
x���������@�
� "\�Y
R�O
&�#
0/0����������
%�"
0/1���������@
� �
P__inference_articulation_layer_layer_call_and_return_conditional_losses_10393893��'()*+,-./0123456789:9�6
/�,
*�'
input_1���������@�
� "\�Y
R�O
&�#
0/0����������
%�"
0/1���������@
� �
5__inference_articulation_layer_layer_call_fn_10393652��'()*+,-./0123456789:9�6
/�,
*�'
input_1���������@�
� "N�K
$�!
0����������
#� 
1���������@�
5__inference_articulation_layer_layer_call_fn_10393701��'()*+,-./0123456789:3�0
)�&
$�!
x���������@�
� "N�K
$�!
0����������
#� 
1���������@�
I__inference_audio2_face_layer_call_and_return_conditional_losses_10392895�$ !"#$%&�'()*+,-./0123456789:;<=>6�3
,�)
#� 
x��������� @
p 
� "S�P
I�F
�
0/0���������%
%�"
0/1���������@
� �
I__inference_audio2_face_layer_call_and_return_conditional_losses_10393048�$ !"#$%&�'()*+,-./0123456789:;<=>6�3
,�)
#� 
x��������� @
p
� "S�P
I�F
�
0/0���������%
%�"
0/1���������@
� �
I__inference_audio2_face_layer_call_and_return_conditional_losses_10393194�$ !"#$%&�'()*+,-./0123456789:;<=><�9
2�/
)�&
input_1��������� @
p 
� "S�P
I�F
�
0/0���������%
%�"
0/1���������@
� �
I__inference_audio2_face_layer_call_and_return_conditional_losses_10393347�$ !"#$%&�'()*+,-./0123456789:;<=><�9
2�/
)�&
input_1��������� @
p
� "S�P
I�F
�
0/0���������%
%�"
0/1���������@
� �
.__inference_audio2_face_layer_call_fn_10392518�$ !"#$%&�'()*+,-./0123456789:;<=><�9
2�/
)�&
input_1��������� @
p 
� "E�B
�
0���������%
#� 
1���������@�
.__inference_audio2_face_layer_call_fn_10392595�$ !"#$%&�'()*+,-./0123456789:;<=>6�3
,�)
#� 
x��������� @
p 
� "E�B
�
0���������%
#� 
1���������@�
.__inference_audio2_face_layer_call_fn_10392672�$ !"#$%&�'()*+,-./0123456789:;<=>6�3
,�)
#� 
x��������� @
p
� "E�B
�
0���������%
#� 
1���������@�
.__inference_audio2_face_layer_call_fn_10392749�$ !"#$%&�'()*+,-./0123456789:;<=><�9
2�/
)�&
input_1��������� @
p
� "E�B
�
0���������%
#� 
1���������@�
G__inference_conv2d_10_layer_call_and_return_conditional_losses_10394729l127�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������
� �
,__inference_conv2d_10_layer_call_fn_10394718_127�4
-�*
(�%
inputs���������@
� " �����������
G__inference_conv2d_11_layer_call_and_return_conditional_losses_10394749n348�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
,__inference_conv2d_11_layer_call_fn_10394738a348�5
.�+
)�&
inputs����������
� "!������������
G__inference_conv2d_12_layer_call_and_return_conditional_losses_10394769l567�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������
� �
,__inference_conv2d_12_layer_call_fn_10394758_567�4
-�*
(�%
inputs���������@
� " �����������
G__inference_conv2d_13_layer_call_and_return_conditional_losses_10394789n788�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
,__inference_conv2d_13_layer_call_fn_10394778a788�5
.�+
)�&
inputs����������
� "!������������
G__inference_conv2d_14_layer_call_and_return_conditional_losses_10394809l9:7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������
� �
,__inference_conv2d_14_layer_call_fn_10394798_9:7�4
-�*
(�%
inputs���������@
� " �����������
F__inference_conv2d_1_layer_call_and_return_conditional_losses_10394473l 7�4
-�*
(�%
inputs���������@H
� "-�*
#� 
0���������@l
� �
+__inference_conv2d_1_layer_call_fn_10394462_ 7�4
-�*
(�%
inputs���������@H
� " ����������@l�
F__inference_conv2d_2_layer_call_and_return_conditional_losses_10394493m!"7�4
-�*
(�%
inputs���������@l
� ".�+
$�!
0���������@�
� �
+__inference_conv2d_2_layer_call_fn_10394482`!"7�4
-�*
(�%
inputs���������@l
� "!����������@��
F__inference_conv2d_3_layer_call_and_return_conditional_losses_10394513n#$8�5
.�+
)�&
inputs���������@�
� ".�+
$�!
0���������@�
� �
+__inference_conv2d_3_layer_call_fn_10394502a#$8�5
.�+
)�&
inputs���������@�
� "!����������@��
F__inference_conv2d_4_layer_call_and_return_conditional_losses_10394533n%&8�5
.�+
)�&
inputs���������@�
� ".�+
$�!
0���������@�
� �
+__inference_conv2d_4_layer_call_fn_10394522a%&8�5
.�+
)�&
inputs���������@�
� "!����������@��
F__inference_conv2d_5_layer_call_and_return_conditional_losses_10394629n'(8�5
.�+
)�&
inputs���������@�
� ".�+
$�!
0��������� �
� �
+__inference_conv2d_5_layer_call_fn_10394618a'(8�5
.�+
)�&
inputs���������@�
� "!���������� ��
F__inference_conv2d_6_layer_call_and_return_conditional_losses_10394649l)*7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0��������� 
� �
+__inference_conv2d_6_layer_call_fn_10394638_)*7�4
-�*
(�%
inputs���������@
� " ���������� �
F__inference_conv2d_7_layer_call_and_return_conditional_losses_10394669n+,8�5
.�+
)�&
inputs��������� �
� ".�+
$�!
0����������
� �
+__inference_conv2d_7_layer_call_fn_10394658a+,8�5
.�+
)�&
inputs��������� �
� "!������������
F__inference_conv2d_8_layer_call_and_return_conditional_losses_10394689l-.7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������
� �
+__inference_conv2d_8_layer_call_fn_10394678_-.7�4
-�*
(�%
inputs���������@
� " �����������
F__inference_conv2d_9_layer_call_and_return_conditional_losses_10394709n/08�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
+__inference_conv2d_9_layer_call_fn_10394698a/08�5
.�+
)�&
inputs����������
� "!������������
D__inference_conv2d_layer_call_and_return_conditional_losses_10394453l7�4
-�*
(�%
inputs��������� @
� "-�*
#� 
0���������@H
� �
)__inference_conv2d_layer_call_fn_10394442_7�4
-�*
(�%
inputs��������� @
� " ����������@H�
E__inference_dense_1_layer_call_and_return_conditional_losses_10394609]=>0�-
&�#
!�
inputs����������
� "%�"
�
0���������%
� ~
*__inference_dense_1_layer_call_fn_10394599P=>0�-
&�#
!�
inputs����������
� "����������%�
C__inference_dense_layer_call_and_return_conditional_losses_10394563^;<0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� }
(__inference_dense_layer_call_fn_10394553Q;<0�-
&�#
!�
inputs����������
� "������������
E__inference_dropout_layer_call_and_return_conditional_losses_10394578^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
E__inference_dropout_layer_call_and_return_conditional_losses_10394590^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� 
*__inference_dropout_layer_call_fn_10394568Q4�1
*�'
!�
inputs����������
p 
� "�����������
*__inference_dropout_layer_call_fn_10394573Q4�1
*�'
!�
inputs����������
p
� "������������
E__inference_flatten_layer_call_and_return_conditional_losses_10394544b8�5
.�+
)�&
inputs����������
� "&�#
�
0����������
� �
*__inference_flatten_layer_call_fn_10394538U8�5
.�+
)�&
inputs����������
� "������������
K__inference_formant_layer_layer_call_and_return_conditional_losses_10393486t
 !"#$%&6�3
,�)
#� 
x��������� @
p 
� ".�+
$�!
0���������@�
� �
K__inference_formant_layer_layer_call_and_return_conditional_losses_10393525t
 !"#$%&6�3
,�)
#� 
x��������� @
p
� ".�+
$�!
0���������@�
� �
K__inference_formant_layer_layer_call_and_return_conditional_losses_10393564z
 !"#$%&<�9
2�/
)�&
input_1��������� @
p 
� ".�+
$�!
0���������@�
� �
K__inference_formant_layer_layer_call_and_return_conditional_losses_10393603z
 !"#$%&<�9
2�/
)�&
input_1��������� @
p
� ".�+
$�!
0���������@�
� �
0__inference_formant_layer_layer_call_fn_10393372m
 !"#$%&<�9
2�/
)�&
input_1��������� @
p 
� "!����������@��
0__inference_formant_layer_layer_call_fn_10393397g
 !"#$%&6�3
,�)
#� 
x��������� @
p 
� "!����������@��
0__inference_formant_layer_layer_call_fn_10393422g
 !"#$%&6�3
,�)
#� 
x��������� @
p
� "!����������@��
0__inference_formant_layer_layer_call_fn_10393447m
 !"#$%&<�9
2�/
)�&
input_1��������� @
p
� "!����������@��
J__inference_output_layer_layer_call_and_return_conditional_losses_10393964f;<=>7�4
-�*
$�!
x����������
p 
� "%�"
�
0���������%
� �
J__inference_output_layer_layer_call_and_return_conditional_losses_10393990f;<=>7�4
-�*
$�!
x����������
p
� "%�"
�
0���������%
� �
J__inference_output_layer_layer_call_and_return_conditional_losses_10394009l;<=>=�:
3�0
*�'
input_1����������
p 
� "%�"
�
0���������%
� �
J__inference_output_layer_layer_call_and_return_conditional_losses_10394035l;<=>=�:
3�0
*�'
input_1����������
p
� "%�"
�
0���������%
� �
/__inference_output_layer_layer_call_fn_10393906_;<=>=�:
3�0
*�'
input_1����������
p 
� "����������%�
/__inference_output_layer_layer_call_fn_10393919Y;<=>7�4
-�*
$�!
x����������
p 
� "����������%�
/__inference_output_layer_layer_call_fn_10393932Y;<=>7�4
-�*
$�!
x����������
p
� "����������%�
/__inference_output_layer_layer_call_fn_10393945_;<=>=�:
3�0
*�'
input_1����������
p
� "����������%�
J__inference_sequential_1_layer_call_and_return_conditional_losses_10394362o;<=>@�=
6�3
)�&
inputs����������
p 

 
� "%�"
�
0���������%
� �
J__inference_sequential_1_layer_call_and_return_conditional_losses_10394388o;<=>@�=
6�3
)�&
inputs����������
p

 
� "%�"
�
0���������%
� �
J__inference_sequential_1_layer_call_and_return_conditional_losses_10394407v;<=>G�D
=�:
0�-
flatten_input����������
p 

 
� "%�"
�
0���������%
� �
J__inference_sequential_1_layer_call_and_return_conditional_losses_10394433v;<=>G�D
=�:
0�-
flatten_input����������
p

 
� "%�"
�
0���������%
� �
/__inference_sequential_1_layer_call_fn_10394304i;<=>G�D
=�:
0�-
flatten_input����������
p 

 
� "����������%�
/__inference_sequential_1_layer_call_fn_10394317b;<=>@�=
6�3
)�&
inputs����������
p 

 
� "����������%�
/__inference_sequential_1_layer_call_fn_10394330b;<=>@�=
6�3
)�&
inputs����������
p

 
� "����������%�
/__inference_sequential_1_layer_call_fn_10394343i;<=>G�D
=�:
0�-
flatten_input����������
p

 
� "����������%�
H__inference_sequential_layer_call_and_return_conditional_losses_10394174}
 !"#$%&?�<
5�2
(�%
inputs��������� @
p 

 
� ".�+
$�!
0���������@�
� �
H__inference_sequential_layer_call_and_return_conditional_losses_10394213}
 !"#$%&?�<
5�2
(�%
inputs��������� @
p

 
� ".�+
$�!
0���������@�
� �
H__inference_sequential_layer_call_and_return_conditional_losses_10394252�
 !"#$%&E�B
;�8
.�+
conv2d_input��������� @
p 

 
� ".�+
$�!
0���������@�
� �
H__inference_sequential_layer_call_and_return_conditional_losses_10394291�
 !"#$%&E�B
;�8
.�+
conv2d_input��������� @
p

 
� ".�+
$�!
0���������@�
� �
-__inference_sequential_layer_call_fn_10394060v
 !"#$%&E�B
;�8
.�+
conv2d_input��������� @
p 

 
� "!����������@��
-__inference_sequential_layer_call_fn_10394085p
 !"#$%&?�<
5�2
(�%
inputs��������� @
p 

 
� "!����������@��
-__inference_sequential_layer_call_fn_10394110p
 !"#$%&?�<
5�2
(�%
inputs��������� @
p

 
� "!����������@��
-__inference_sequential_layer_call_fn_10394135v
 !"#$%&E�B
;�8
.�+
conv2d_input��������� @
p

 
� "!����������@��
&__inference_signature_wrapper_10392441�$ !"#$%&�'()*+,-./0123456789:;<=>C�@
� 
9�6
4
input_1)�&
input_1��������� @"k�h
.
output_1"�
output_1���������%
6
output_2*�'
output_2���������@