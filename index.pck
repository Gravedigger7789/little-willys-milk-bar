GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex       �      &�y���ڞu;>��.p   res://World.gd.remap�c              ���z�����R�U�   res://World.gdc �      �       �'C,P	�]_�d   res://World.tscnp      �      *��D����`����   res://default_env.tres  p      �       um�`�N��<*ỳ�8   res://icon.png  �d      �      G1?��z�c��vN��   res://icon.png.import    "      �      ��fe��6�B��^ U�   res://project.binary�q            �}4�n�s��V�s����(   res://src/Controls/LaunchBar.gd.remap   �c      1       ���OHI�T�2_C�v    res://src/Controls/LaunchBar.gdc�$      m      -��랳�������$   res://src/Controls/LaunchBar.tscn    *      y      �ex��Ÿ�\̐��$   res://src/Objects/Bottle.gd.remap   �c      -       �&�N(;��$��I�   res://src/Objects/Bottle.gdc�/      _      ������v����~
*$    res://src/Objects/Bottle.tscn    2      �      Sz�A�63���V��>�$   res://src/Objects/BottleCap.gd.remap d      0       ���Zf�6o�N����w    res://src/Objects/BottleCap.gdc �5      <       m#�u�g �p�J�6�R    res://src/Objects/BottleCap.tscn 6      7      ����E��t"�t�*�,   res://src/Objects/BottleLauncher.gd.remap   Pd      5       �Pz+�*� ��ï$$   res://src/Objects/BottleLauncher.gdc@9            ���dz��N�X���A(   res://src/Objects/BottleLauncher.tscn   P<      �      Ua(�j��(ilݞ$   res://src/Objects/Coaster.gd.remap  �d      .       �׫o��~��aӧ�    res://src/Objects/Coaster.gdc   @@      3      �K �:�n#r��?[4    res://src/Objects/Coaster.tscn  �G      0      ���;W��Gɢ��G$   res://src/Objects/Draggable.gd.remap�d      0       31'����s�#�d�i    res://src/Objects/Draggable.gdc �K      (      ��l����r�z���    res://src/Objects/Draggable.tscn�X      �      em^n�m��H���d0$   res://src/Shaders/Outline.gdshader  �]      �      v⛾g$�)<2x��^>    GDSC                  ���ӄ�   ����������¶                       
                                 	      
                                                         3YY;�  VYYYYYYYYYYYYYYYY`  [gd_scene load_steps=9 format=2]

[ext_resource path="res://src/Objects/Bottle.tscn" type="PackedScene" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]
[ext_resource path="res://World.gd" type="Script" id=3]
[ext_resource path="res://src/Objects/BottleCap.tscn" type="PackedScene" id=4]
[ext_resource path="res://src/Objects/Coaster.tscn" type="PackedScene" id=5]
[ext_resource path="res://src/Objects/BottleLauncher.tscn" type="PackedScene" id=6]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 64, 64, 0, 64, 0, 0, 64, 0 )

[sub_resource type="TileSet" id=2]
resource_local_to_scene = true
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

[node name="TileMap" type="TileMap" parent="."]
tile_set = SubResource( 2 )
format = 1
tile_data = PoolIntArray( 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 0, 0, 16, 0, 0, 17, 0, 0, 18, 0, 0, 19, 0, 0, 20, 0, 0, 21, 0, 0, 22, 0, 0, 23, 0, 0, 24, 0, 0, 25, 0, 0, 26, 0, 0, 27, 0, 0, 28, 0, 0, 29, 0, 0, 65536, 0, 0, 65565, 0, 0, 131072, 0, 0, 131101, 0, 0, 196608, 0, 0, 196637, 0, 0, 262144, 0, 0, 262173, 0, 0, 327680, 0, 0, 327709, 0, 0, 393216, 0, 0, 393245, 0, 0, 458752, 0, 0, 458754, 0, 0, 458756, 0, 0, 458758, 0, 0, 458781, 0, 0, 524288, 0, 0, 524290, 0, 0, 524292, 0, 0, 524294, 0, 0, 524317, 0, 0, 589824, 0, 0, 589826, 0, 0, 589828, 0, 0, 589830, 0, 0, 589853, 0, 0, 655360, 0, 0, 655389, 0, 0, 720896, 0, 0, 720925, 0, 0, 786432, 0, 0, 786461, 0, 0, 851968, 0, 0, 851969, 0, 0, 851970, 0, 0, 851971, 0, 0, 851972, 0, 0, 851973, 0, 0, 851974, 0, 0, 851975, 0, 0, 851976, 0, 0, 851977, 0, 0, 851978, 0, 0, 851979, 0, 0, 851980, 0, 0, 851981, 0, 0, 851982, 0, 0, 851983, 0, 0, 851984, 0, 0, 851985, 0, 0, 851986, 0, 0, 851987, 0, 0, 851988, 0, 0, 851989, 0, 0, 851990, 0, 0, 851991, 0, 0, 851992, 0, 0, 851993, 0, 0, 851994, 0, 0, 851995, 0, 0, 851996, 0, 0, 851997, 0, 0, 917504, 0, 0, 917505, 0, 0, 917506, 0, 0, 917507, 0, 0, 917508, 0, 0, 917509, 0, 0, 917510, 0, 0, 917511, 0, 0, 917512, 0, 0, 917513, 0, 0, 917514, 0, 0, 917515, 0, 0, 917516, 0, 0, 917517, 0, 0, 917518, 0, 0, 917519, 0, 0, 917520, 0, 0, 917521, 0, 0, 917522, 0, 0, 917523, 0, 0, 917524, 0, 0, 917525, 0, 0, 917526, 0, 0, 917527, 0, 0, 917528, 0, 0, 917529, 0, 0, 917530, 0, 0, 917531, 0, 0, 917532, 0, 0, 917533, 0, 0, 983040, 0, 0, 983041, 0, 0, 983042, 0, 0, 983043, 0, 0, 983044, 0, 0, 983045, 0, 0, 983046, 0, 0, 983047, 0, 0, 983048, 0, 0, 983049, 0, 0, 983050, 0, 0, 983051, 0, 0, 983052, 0, 0, 983053, 0, 0, 983054, 0, 0, 983055, 0, 0, 983056, 0, 0, 983057, 0, 0, 983058, 0, 0, 983059, 0, 0, 983060, 0, 0, 983061, 0, 0, 983062, 0, 0, 983063, 0, 0, 983064, 0, 0, 983065, 0, 0, 983066, 0, 0, 983067, 0, 0, 983068, 0, 0, 983069, 0, 0, 1048576, 0, 0, 1048577, 0, 0, 1048578, 0, 0, 1048579, 0, 0, 1048580, 0, 0, 1048581, 0, 0, 1048582, 0, 0, 1048583, 0, 0, 1048584, 0, 0, 1048585, 0, 0, 1048586, 0, 0, 1048587, 0, 0, 1048588, 0, 0, 1048589, 0, 0, 1048590, 0, 0, 1048591, 0, 0, 1048592, 0, 0, 1048593, 0, 0, 1048594, 0, 0, 1048595, 0, 0, 1048596, 0, 0, 1048597, 0, 0, 1048598, 0, 0, 1048599, 0, 0, 1048600, 0, 0, 1048601, 0, 0, 1048602, 0, 0, 1048603, 0, 0, 1048604, 0, 0, 1048605, 0, 0 )

[node name="Coasters" type="Node2D" parent="."]

[node name="Coaster" parent="Coasters" instance=ExtResource( 5 )]
position = Vector2( 160, 800 )

[node name="Coaster2" parent="Coasters" instance=ExtResource( 5 )]
position = Vector2( 288, 800 )

[node name="Coaster3" parent="Coasters" instance=ExtResource( 5 )]
position = Vector2( 416, 800 )

[node name="BottleLauncher" parent="." instance=ExtResource( 6 )]
position = Vector2( 1728, 800 )
input_pickable = true

[node name="BottleCaps" type="Node2D" parent="."]

[node name="BottleCap" parent="BottleCaps" instance=ExtResource( 4 )]
position = Vector2( 1312, 800 )
collision_mask = 1

[node name="BottleCap2" parent="BottleCaps" instance=ExtResource( 4 )]
position = Vector2( 1504, 800 )
collision_mask = 1

[node name="Bottles" type="Node2D" parent="."]

[node name="Bottle" parent="Bottles" instance=ExtResource( 1 )]
position = Vector2( 928, 768 )

[node name="Bottle2" parent="Bottles" instance=ExtResource( 1 )]
position = Vector2( 1120, 768 )
     [gd_resource type="Environment" load_steps=2 format=2]

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
              GDSC         *   �      ������ڶ   ��������Ҷ��   �������¶���   �������¶���   �������������Ҷ�   ������������Ӷ��   ������ض   �����Ӷ�   ���������������Ŷ���   ��������������Ŷ   ���������������Ŷ���   ����׶��   ����Ӷ��$   ��������������������������������Ҷ��   �����Ӷ�   ��������Ӷ��   ��������Ӷ��   ������������Ŷ��   ����������Ӷ   ����ٶ��   �����Ӷ�   ������Ӷ   ���ƶ���   ����������ڶ   �������Ӷ���   �����������Ķ���   d                                	   activated        �?      timeout                                            "      #   	   (   
   -      .      7      8      9      D      H      L      Y      \      i      j      k      v      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   3YYB�  YY8P�  Q;�  Y8P�  Q;�  VY8P�  Q;�  V�  YY;�  �  Y;�  �  YY5;�  V�	  W�	  YYY0�
  P�  V�  QX=V�  &�  V�  &�  V�  �  T�  �3  P�  �  R�  Q�  (V�  �  T�  �3  P�  �  R�  QYYY0�  P�  V�  QX=V�  &�  T�  
�  T�  V�  �  �  �  '�  T�  �  T�  V�  �  �  �  �  T�  �  T�  P�  T�  QYYY0�  P�  V�  QX=V�  �  �  �  �  �  �  �  T�  �  YYY0�  PQX=V�  �  �  �  �  P�  R�  T�  Q�  AP�  PQT�  P�  QR�  Q�  �  P�  QY`   [gd_scene load_steps=7 format=2]

[ext_resource path="res://src/Controls/LaunchBar.gd" type="Script" id=1]

[sub_resource type="Gradient" id=2]
resource_local_to_scene = true
offsets = PoolRealArray( 0, 0.507538, 1 )
colors = PoolColorArray( 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1 )

[sub_resource type="Gradient" id=5]
offsets = PoolRealArray( 0.00584795, 1 )
colors = PoolColorArray( 0.196078, 0.196078, 0.196078, 1, 0.196078, 0.196078, 0.196078, 1 )

[sub_resource type="GradientTexture2D" id=6]
gradient = SubResource( 5 )
width = 200
height = 32

[sub_resource type="Gradient" id=4]
offsets = PoolRealArray( 0.315789, 1 )
colors = PoolColorArray( 1, 1, 1, 1, 1, 1, 1, 1 )

[sub_resource type="GradientTexture2D" id=3]
gradient = SubResource( 4 )
width = 200
height = 32
fill_from = Vector2( 1, 0 )
fill_to = Vector2( 0, 0 )

[node name="LaunchBar" type="Control"]
mouse_filter = 2
script = ExtResource( 1 )
gradient = SubResource( 2 )

[node name="TextureProgress" type="TextureProgress" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -100.0
margin_top = -16.0
margin_right = 100.0
margin_bottom = 16.0
rect_min_size = Vector2( 200, 32 )
mouse_filter = 2
value = 50.0
texture_under = SubResource( 6 )
texture_progress = SubResource( 3 )

[connection signal="value_changed" from="TextureProgress" to="." method="_on_TextureProgress_value_changed"]
       GDSC            G      ��������Ӷ��   ����������������ض��   �������؄�   ��������������ض   ���������������������ض�   ���׶���   ���ׄ�   ���������������ض���   ��������������ض   ���������¶�   �����������Ҷ���   �������Ӷ���   �������Ҷ���   ��������Ҷ��      CollisionShape2D                                                       #   	   .   
   9      >      ?      @      A      B      C      D      E      3YYY5;�  V�  W�  YYY0�  P�  V�  QX=V�  �  T�  P�  T�  Q�  �  T�	  PQT�
  P�  Q�  �  T�  PQT�  �  �  �  P�  QYYYYYYYY` [gd_scene load_steps=6 format=2]

[ext_resource path="res://src/Objects/Draggable.tscn" type="PackedScene" id=1]
[ext_resource path="res://src/Objects/Bottle.gd" type="Script" id=2]
[ext_resource path="res://src/Shaders/Outline.gdshader" type="Shader" id=3]

[sub_resource type="ShaderMaterial" id=1]
resource_local_to_scene = true
shader = ExtResource( 3 )
shader_param/outline_color = Color( 1, 1, 1, 0 )
shader_param/width = 3.0

[sub_resource type="RectangleShape2D" id=2]
resource_local_to_scene = true
extents = Vector2( 32, 64 )

[node name="Bottle" instance=ExtResource( 1 )]
script = ExtResource( 2 )

[node name="Sprite" parent="." index="1"]
material = SubResource( 1 )
scale = Vector2( 1, 2 )

[node name="CollisionShape2D" parent="." index="2"]
shape = SubResource( 2 )

[node name="SnapPosition" parent="." index="3"]
position = Vector2( 0, 52 )

[node name="TopSnapPosition" type="Position2D" parent="." index="4"]
position = Vector2( 0, -52 )
 GDSC                   ��������Ӷ��             3Y`    [gd_scene load_steps=6 format=2]

[ext_resource path="res://src/Objects/Draggable.tscn" type="PackedScene" id=1]
[ext_resource path="res://src/Objects/BottleCap.gd" type="Script" id=2]
[ext_resource path="res://src/Shaders/Outline.gdshader" type="Shader" id=3]

[sub_resource type="ShaderMaterial" id=1]
resource_local_to_scene = true
shader = ExtResource( 3 )
shader_param/outline_color = Color( 1, 1, 1, 0 )
shader_param/width = 3.0

[sub_resource type="RectangleShape2D" id=2]
resource_local_to_scene = true
extents = Vector2( 32, 32 )

[node name="BottleCap" instance=ExtResource( 1 )]
collision_layer = 2
collision_mask = 1
monitoring = false
script = ExtResource( 2 )

[node name="Sprite" parent="." index="1"]
material = SubResource( 1 )

[node name="CollisionShape2D" parent="." index="2"]
shape = SubResource( 2 )
         GDSC            w      ������Ķ   ����������������¶��   ���������Ķ�   ������ڶ   ��������Ķ��   �����϶�   �����Ӷ�   ���������������������ض�   ���׶���   ���ׄ�   ������������¶��   �����Ӷ�   ������Ӷ   ���������¶�   ����Ӷ��   ϶��   ������������ض��   ����������������������ƶ   ����׶��   @                                         	      
                     	      
   $      %      &      1      7      8      M      Z      a      b      c      n      u      3YYY;�  YY5;�  V�  W�  YYY0�  PQX=V�  �  T�  P�  QYYY0�  P�  V�	  QX=V�  T�  P�  QY�  ;�
  �  T�  T�  T�  PQ�  T�  T�  T�  �  �  T�  T�  P�  �
  Q�  �  T�  P�  QYYY0�  P�  V�	  QX=V�  �  T�  P�  QY`           [gd_scene load_steps=7 format=2]

[ext_resource path="res://src/Objects/Coaster.tscn" type="PackedScene" id=1]
[ext_resource path="res://src/Objects/BottleLauncher.gd" type="Script" id=2]
[ext_resource path="res://src/Shaders/Outline.gdshader" type="Shader" id=3]
[ext_resource path="res://src/Controls/LaunchBar.tscn" type="PackedScene" id=4]

[sub_resource type="ShaderMaterial" id=1]
resource_local_to_scene = true
shader = ExtResource( 3 )
shader_param/outline_color = Color( 1, 1, 1, 0 )
shader_param/width = 3.0

[sub_resource type="Gradient" id=2]
resource_local_to_scene = true
offsets = PoolRealArray( 0, 0.507538, 1 )
colors = PoolColorArray( 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1 )

[node name="BottleLauncher" instance=ExtResource( 1 )]
script = ExtResource( 2 )

[node name="Sprite" parent="." index="0"]
material = SubResource( 1 )

[node name="LaunchBar" parent="." index="3" instance=ExtResource( 4 )]
margin_top = -64.0
margin_bottom = -64.0
gradient = SubResource( 2 )
bar_fill_speed = 25
    GDSC   #   	   /   4     ������Ķ   ���ׄ�   ������������Ķ��   ����Ӷ��   �����Ӷ�   �����Ӷ�   ������������ض��   �������؄�   �����������ض���   �����������������������Ҷ���   ���׶���   �����������Ҷ���   ���������Ҷ�   ������¶   �������������Ӷ�   ����������������������Ҷ   ���������¶�   ����Ӷ��   ����ض��   �����������ض���   ��������Ŷ��   ����ض��   �����������䶶��   �������Ӷ���   �������ⶶ��   �����������Ҷ���   ׶��   �����������������׶�   �������ڶ���   ���������������۶���   ���������������������ض�   ���������������ض���   ��������������ض   ����������������������ƶ   ����׶��      put_down      _on_Draggable_put_down     	   picked_up         _on_Draggable_picked_up      �?             _set_outline_alpha        ?      outline_color                                                    #   	   $   
   %      0      @      N      ^      l      q      r      s      ~      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %     &   	  '   
  (     )     *   #  +   $  ,   %  -   0  .   2  /   2YY3�  YY8;�  V�  T�  YY5;�  V�  W�  Y5;�  V�  W�  YYY0�	  P�
  V�  QX=V�  &�
  �
  T�  PRR�  QV�  ;�  �
  T�  PRR�  Q�  &�
  �
  T�  P�  RR�  QV�  ;�  �
  T�  P�  RR�  Q�  �  P�  QYYY0�  P�
  V�  QX=V�  &�
  �
  T�  PRR�  QV�  �
  T�  PRR�  Q�  &�
  �
  T�  P�  RR�  QV�  �
  T�  P�  RR�  Q�  �  P�  QYYY0�  P�  V�  QV�  ;�  V�  PQT�  P�  T�  QT�  P�  T�  Q�  �  �  T�  PR�  R�  T�  R�  R�  QYYY0�  P�  V�  QX=V�  �  T�  �  �  �  T�  T�  P�  R�  QYYY0�  P�
  V�  QX=V�  �
  T�  P�  T�   Q�  �  P�  QYYY0�!  P�"  V�  QX=V�  -Y`             [gd_scene load_steps=6 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://src/Objects/Coaster.gd" type="Script" id=2]
[ext_resource path="res://src/Shaders/Outline.gdshader" type="Shader" id=3]

[sub_resource type="ShaderMaterial" id=2]
resource_local_to_scene = true
shader = ExtResource( 3 )
shader_param/outline_color = Color( 1, 1, 1, 0 )
shader_param/width = 3.0

[sub_resource type="CircleShape2D" id=1]
resource_local_to_scene = true
radius = 32.0

[node name="Coaster" type="Area2D"]
collision_layer = 4
input_pickable = false
monitorable = false
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
material = SubResource( 2 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="SnapPosition" type="Position2D" parent="."]
position = Vector2( 0, 12 )

[connection signal="area_entered" from="." to="." method="_on_Coaster_area_entered"]
[connection signal="area_exited" from="." to="." method="_on_Coaster_area_exited"]
GDSC   ?      b   0     ��������Ӷ��   ������Ķ   ��������ƶ��   �������ض���   ��������Ѷ��   ���������������������¶�   ������������������¶   �����������������Ӷ�   �����Ӷ�   ����Ӷ��   ����������������Ӷ��   ����������������   �����Ӷ�   ����������������    ���������������������������ض���   �������ض���   ��������������Ŷ   �����������¶���   ���������������¶���   �����϶�   ������Ӷ   �������Ŷ���   �����׶�   �����������ض���   ������������������������ض��   ��������¶��   ��������������ض   �����¶�   ����¶��   ���������¶�   �����������������Ҷ�   ��������������������޶��   ���������Ҷ�   �������Ӷ���   �������������������Ҷ���   ��������ض��   ������������������������¶��   ��������¶��   ���Ӷ���   ���������ζ�   ����������������Ҷ��   ������ƶ   ��������������������������Ҷ   �������������Ӷ�   �������������������������Ҷ�   ���������������ض���   ����Ӷ��   ������������ض��   ����������ڶ   ��������������ض   �����������������������Ŷ���   ����������������¶��   ����ض��   �����������ض���   ��������Ŷ��   ����ض��   ����������   �������Ӷ���   �������ⶶ��   �������������϶�   �����������Ӷ���   ������������¶��   �������ڶ���               �������?      touch        �?          	   picked_up               put_down      global_position   333333�?      scale         position                               
                     	      
   '      (      1      ?      H      Q      _      `      a      i      q      y      z      {      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )      *     +     ,   
  -     .     /     0     1     2   #  3   (  4   )  5   *  6   5  7   6  8   ?  9   @  :   A  ;   I  <   P  =   X  >   \  ?   ]  @   e  A   k  B   v  C   w  D   x  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [      \     ]     ^     _     `     a   .  b   2YY3�  YYB�  YB�  YY;�  VY;�  V�  PQY;�  V�  P�  R�  QYY5;�  V�  T�	  Y5;�
  V�  �  P�  R�  QY5;�  V�  W�  Y5;�  V�  T�  Y5;�  V�  �  PQT�  PQYYY0�  PQX=V�  �  T�  �  T�  �  �  T�	  �  T�	  YYY0�  P�  V�  QX=V�  &�  V�  ;�  �  PQ�  �  &P�  T�  P�  QQV�  �  P�  QYYY0�  P�  V�  QX=V�  &�  P�  T�  P�  QP�  4�  �  T�   PQQQV�  �!  PQT�"  PQ�  �#  PQYYY0�$  P�%  V�&  R�  V�  R�'  V�  QX=V�  &�  T�(  P�  QV�  �!  PQT�"  PQ�  �)  PQYYY0�*  PQX=V�  &�  V�  �+  P�  QYYY0�,  PQX=V�  &�  V�  �+  P�  QYYY0�-  P�.  V�  QX=V�  �  �  P�.  �/  T�  QYYY0�)  PQX=V�  �0  P�  RQ�  �  �  PQ�1  �  �  �  Y�  &�  T�	  �  �  T�  �  V�  �2  P�
  R�  T�  �  QYYY0�#  PQX=V�  �  �  �0  P�  RQY�  �  &�3  PQT�  P�  PQQV�  �+  P�  QY�  &�  T�	  �  �  T�  �  V�  �2  P�  R�  QYYY0�  P�.  V�  QX=V�  ;�4  V�5  PQT�6  P�7  T�8  QT�9  P�7  T�:  Q�  �  �4  T�;  PR�	  R�.  R�
  QYYY0�2  P�<  V�  R�=  V�  QX=V�  ;�4  V�5  PQT�6  P�7  T�8  QT�9  P�7  T�:  Q�  �  �4  T�;  P�  R�  R�<  R�
  Q�  �  �4  T�>  PQT�;  P�  R�  R�=  R�
  QY`        [gd_scene load_steps=6 format=2]

[ext_resource path="res://src/Shaders/Outline.gdshader" type="Shader" id=1]
[ext_resource path="res://src/Objects/Coaster.tscn" type="PackedScene" id=2]
[ext_resource path="res://src/Objects/Draggable.gd" type="Script" id=3]

[sub_resource type="ShaderMaterial" id=1]
resource_local_to_scene = true
shader = ExtResource( 1 )
shader_param/outline_color = Color( 1, 1, 1, 0 )
shader_param/width = 3.0

[sub_resource type="RectangleShape2D" id=2]
resource_local_to_scene = true
extents = Vector2( 32, 32 )

[node name="Draggable" instance=ExtResource( 2 )]
collision_layer = 1
collision_mask = 0
input_pickable = true
monitorable = true
script = ExtResource( 3 )

[node name="SpriteShadow" type="Sprite" parent="." index="0"]
modulate = Color( 0, 0, 0, 0.588235 )

[node name="Sprite" parent="." index="1"]
material = SubResource( 1 )

[node name="CollisionShape2D" parent="." index="2"]
shape = SubResource( 2 )

[connection signal="input_event" from="." to="." method="_on_Draggable_input_event"]
[connection signal="mouse_entered" from="." to="." method="_on_Draggable_mouse_entered"]
[connection signal="mouse_exited" from="." to="." method="_on_Draggable_mouse_exited"]
          shader_type canvas_item;

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

path="res://World.gdc"
[remap]

path="res://src/Controls/LaunchBar.gdc"
               [remap]

path="res://src/Objects/Bottle.gdc"
   [remap]

path="res://src/Objects/BottleCap.gdc"
[remap]

path="res://src/Objects/BottleLauncher.gdc"
           [remap]

path="res://src/Objects/Coaster.gdc"
  [remap]

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
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes8                    base      Area2D        class         Coaster       language      GDScript      path      res://src/Objects/Coaster.gd            base      Coaster       class      	   Draggable         language      GDScript      path      res://src/Objects/Draggable.gd     _global_script_class_icons<               Coaster           	   Draggable             application/config/name         baby-saloon    application/run/main_scene         res://World.tscn   application/config/icon         res://icon.png     display/window/size/width      �     display/window/size/height      8     display/window/size/test_width            display/window/size/test_height      �     display/window/dpi/allow_hidpi            display/window/stretch/mode         2d     display/window/stretch/aspect         keep+   gui/common/drop_mouse_on_gui_input_disabled            input/touch�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����   alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         layer_names/2d_physics/layer_1         Bottle     layer_names/2d_physics/layer_2         Cap    layer_names/2d_physics/layer_3         Coaster )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres   