GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex0      �      &�y���ڞu;>��.p   res://Player.gd.remap   P+      !       ��0�F �qq��dX��   res://Player.gdc       4      c�}�+Ѻ=3�S�{�   res://Player.tscn   @      �      X��O��E��*%�H   res://World.gd.remap�+              ���z�����R�U�   res://World.gdc       �       �'C,P	�]_�d   res://World.tscn 	      v      `3�b�d�����5   res://default_env.tres  �      �       um�`�N��<*ỳ�8   res://icon.png  �+      �      G1?��z�c��vN��   res://icon.png.import         �      ��fe��6�B��^ U�   res://project.binary�8      �      �/�)�+R���{��$   res://src/Objects/Draggable.gd.remap�+      0       31'����s�#�d�i    res://src/Objects/Draggable.gdc �      �      Ծ(0AU��Uhm�    res://src/Objects/Draggable.tscn�!      �      ����?�`�	׳���$   res://src/Shaders/Outline.gdshader  `%      �      v⛾g$�)<2x��^>    GDSC            Y      ������������τ�   ����Ҷ��   �������϶���   �������Ŷ���   �����׶�   ���������������¶���   ����¶��   ������������������޶   �������������¶�   ���������Ҷ�   �������������Ӷ�   ,        ui_right      ui_left       ui_down       ui_up                      	                        /      A   	   P   
   W      3YY;�  VY;�  V�  PQYY0�  P�  V�  QX=V�  ;�  V�  T�  P�  Q�  T�  P�  Q�  ;�  V�  T�  P�  Q�  T�  P�  Q�  �  �  P�  R�  QT�	  PQ�  �  �  �
  P�  QY`            [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Player.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
      GDSC                  ���ӄ�   ����������¶                       
                                 	      
                                                         3YY;�  VYYYYYYYYYYYYYYYY`  [gd_scene load_steps=7 format=2]

[ext_resource path="res://Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]
[ext_resource path="res://World.gd" type="Script" id=3]
[ext_resource path="res://src/Objects/Draggable.tscn" type="PackedScene" id=4]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 64, 64, 0, 64, 0, 0, 64, 0 )

[sub_resource type="TileSet" id=2]
0/name = "Wall"
0/texture = ExtResource( 2 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0

[node name="World" type="Node2D"]
script = ExtResource( 3 )

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 512, 288 )

[node name="TileMap" type="TileMap" parent="."]
tile_set = SubResource( 2 )
format = 1
tile_data = PoolIntArray( 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 0, 0, 65536, 0, 0, 65551, 0, 0, 131072, 0, 0, 131087, 0, 0, 196608, 0, 0, 196623, 0, 0, 262144, 0, 0, 262159, 0, 0, 327680, 0, 0, 327695, 0, 0, 393216, 0, 0, 393231, 0, 0, 458752, 0, 0, 458767, 0, 0, 524288, 0, 0, 524289, 0, 0, 524290, 0, 0, 524291, 0, 0, 524292, 0, 0, 524293, 0, 0, 524294, 0, 0, 524295, 0, 0, 524296, 0, 0, 524297, 0, 0, 524298, 0, 0, 524299, 0, 0, 524300, 0, 0, 524301, 0, 0, 524302, 0, 0, 524303, 0, 0, 589824, 0, 0, 589825, 0, 0, 589826, 0, 0, 589827, 0, 0, 589828, 0, 0, 589829, 0, 0, 589830, 0, 0, 589831, 0, 0, 589832, 0, 0, 589833, 0, 0, 589834, 0, 0, 589835, 0, 0, 589836, 0, 0, 589837, 0, 0, 589838, 0, 0, 589839, 0, 0 )

[node name="Draggable" parent="." instance=ExtResource( 4 )]
position = Vector2( 234, 428 )
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSC   &   	   .        ���ׄ�   ��������ƶ��   ������������Ķ��   ����Ӷ��   �����Ӷ�   �����Ӷ�   ��������Ѷ��   ���������������Ŷ���   �����׶�   �������ض���   ������������������������ض��   �����¶�   ����¶��   ���������¶�   �����������������Ҷ�   ������������������������¶��   ��������¶��   ���Ӷ���   ���������ζ�   ����������������Ҷ��   �������Ӷ���   �������������������Ҷ���   ����������ڶ   ��������������������������Ҷ   ����ض��   �����������ض���   ��������Ŷ��   ����ض��   �����������䶶��   �������Ӷ���   �������ⶶ��   �����������Ҷ���   �������������������������Ҷ�   �������������׶�   ����Ӷ��   ׶��   �������ڶ���   ���������������۶���             touch      	   picked_up               _outline_alpha              �?      ?      outline_color                                                       	       
   !      ,      0      6      7      8      C      N      R      S      T      g      p      x            �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -      .   3YYB�  YY8;�  V�  T�  YY5;�  VW�  YY;�  VYY0�  P�  V�  QX=V�  &�  V�  �	  �
  PQYYY0�  P�  V�  QX=V�  &�  �  T�  P�  QV�  �  YYY0�  P�  V�  R�  V�  R�  V�  QX=V�  &�  T�  P�  QV�  �  PQT�  PQ�  �  P�  RQ�  �  �  YYY0�  PQX=V�  ;�  V�  PQT�  P�  T�  QT�  P�  T�  Q�  �  �  T�  PR�  R�  R�  R�  QYY0�   PQX=V�  ;�  V�  PQT�  P�  T�  QT�  P�  T�  Q�  �  �  T�  PR�  R�  R�  R�  QYYY0�!  P�"  V�  QX=V�  �  T�#  �"  �  �  T�$  T�%  P�  R�  QY`    [gd_scene load_steps=6 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://src/Objects/Draggable.gd" type="Script" id=2]
[ext_resource path="res://src/Shaders/Outline.gdshader" type="Shader" id=3]

[sub_resource type="ShaderMaterial" id=3]
shader = ExtResource( 3 )
shader_param/outline_color = Color( 1, 1, 1, 0 )
shader_param/width = 1.0

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[node name="Draggable" type="Area2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
material = SubResource( 3 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[connection signal="input_event" from="." to="." method="_on_Draggable_input_event"]
[connection signal="mouse_entered" from="." to="." method="_on_Draggable_mouse_entered"]
[connection signal="mouse_exited" from="." to="." method="_on_Draggable_mouse_exited"]
shader_type canvas_item;

uniform vec4 outline_color : hint_color = vec4(1.0);
uniform float width : hint_range(0, 10) = 1.0;

void vertex(){
    VERTEX += (UV * 2.0 - 1.0) * width ;
}

void fragment() {
	vec2 original_texture_size = 1.0 / TEXTURE_PIXEL_SIZE;
	vec2 texture_pixel_size_with_margin = 1.0 / (original_texture_size + (width * 2.0));
	vec2 size_with_margin = texture_pixel_size_with_margin * width;
	vec2 uv_size_with_margin = UV - size_with_margin;
	vec2 ratio = TEXTURE_PIXEL_SIZE / texture_pixel_size_with_margin;
	vec2 uv_scaled = uv_size_with_margin * ratio;

	vec4 color = texture(TEXTURE, uv_scaled);

	if (uv_scaled != clamp(uv_scaled, vec2(0.0), vec2(1.0))) {
	    color.a = 0.0;
	}

	if (width < 0.1 || outline_color.a <= 0.0) {
		COLOR = color;
	} else {
		float outline = 0.0;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(-1,-1))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(-1,0))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(-1,1))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(0,-1))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(0,1))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(1,-1))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(1,0))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(1,1))).a;
		outline = min(outline, 1.0);

		COLOR = mix(color, outline_color, outline - color.a);
	}
}
    [remap]

path="res://Player.gdc"
               [remap]

path="res://World.gdc"
[remap]

path="res://src/Objects/Draggable.gdc"
�PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG
      application/config/name         baby-saloon    application/run/main_scene         res://World.tscn   application/config/icon         res://icon.png  +   gui/common/drop_mouse_on_gui_input_disabled            input/touch�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����   alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres   