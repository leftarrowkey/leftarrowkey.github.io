GDPC                                                                             &   <   res://.import/boss.png-7aaf93b70ee8cba1a167e31324215ac7.stex��      F       E=g[=603��yrM<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexP�      �      &�y���ڞu;>��.p@   res://.import/loading.png-009c4a1dec6f5eb4d5c11432a83bd314.stex ��      �3      �6$5N\���M�憨�$<   res://.import/logo.png-5e59f479404a7ce87a0fab15f867eecc.stexp�      �      ֹ�˪���7�Q\   res://.import/minijam-19-8-2022.apple-touch-icon.png-901195cf4145aaa5df91e2b530b4edbb.stex         ~/      ��,ȗ9��xVk~�P   res://.import/minijam-19-8-2022.icon.png-af7fcd3c3242b191694f4f12ddd8d1a5.stex  �J      �      &�y���ڞu;>��.pL   res://.import/minijam-19-8-2022.png-cce9d9c4fd78c8ef08d2881ac0d36f89.stex   �S      �3      �6$5N\���M�憨�$<   res://.import/play.png-384a56c3f87bfaf732f5976224ba92c2.stex��      v      �I!��m��B�K/,�D   res://.import/projectile.png-37247a08b92d6933bd7a0d14ac338417.stex  ��      F       c{�i>&amt6��51<   res://.import/quit.png-6846b2f867eecf691bad331f8410d32d.stex��      d      �jC8A���+'��g��D   res://.import/spritesheet.png-74ecfaa82622e3fb6a6cb9e2e62e2823.stex  �      l       M�c�TZd�R�B�p�Q   res://Node2D.tscn   �      �      ��`�����^Q}I�I   res://badbulllet.gd.remap   ��      %       fv�Z�"Kҟo�\9h�   res://badbulllet.gdc�      �      �dZ���;�#<D�   res://badbulllet.tscn   @      )      '���Ջ�.�Á	��   res://default_env.tres  p      �       um�`�N��<*ỳ�8@   res://exports/html/minijam-19-8-2022.apple-touch-icon.png.import�G      	      Z�EH�u��j
����4   res://exports/html/minijam-19-8-2022.icon.png.import�P      �      y�zTY�yoF}S���0   res://exports/html/minijam-19-8-2022.png.import `�      �      ���U�ޢ�!WV�A   res://goodbullet.gd.remap   ��      %       s��c�d(fw�/8�?�   res://goodbullet.gdc@�      �      H��B�,���}�!.   res://goodbullet.tscn    �      A      �UN�Zo1ן�l�+�A   res://icon.png  `�      �      G1?��z�c��vN��   res://icon.png.import   0�      �      ��fe��6�B��^ U�   res://img/boss.png.import   0�      �      $�5��	�w��)<1�D�   res://img/loading.png   P�      ��      �>k���S'�4p'   res://img/loading.png.import��      �      ���Kg->ĳZ= 5��   res://img/logo.png.import   ��      �      .f�)	�e�[��>�I   res://img/play.png.import    �      �      �a�/�,W�K.�#�    res://img/projectile.png.import  �      �      �x�H�g���0�mb   res://img/quit.png.import   P�      �      �ŕȺJs��e��_	v    res://img/spritesheet.png.importp�      �      �|�Lݰ�X<�[�   res://mainmenu.tscn 0�      �      0�3L��i�P�)�:   res://play.gd.remap �             �n+�������cd   res://play.gdc  ��      t      �i������� ���em   res://player.gd.remap   0�      !       �ؿk�5s0n��;P   res://player.gdc`�      O      v�(�\`亣��}���
   res://project.binaryP�     x      �~�w��=��3�4    [gd_scene load_steps=8 format=2]

[ext_resource path="res://img/spritesheet.png" type="Texture" id=1]
[ext_resource path="res://player.gd" type="Script" id=2]
[ext_resource path="res://img/boss.png" type="Texture" id=3]

[sub_resource type="AtlasTexture" id=3]
atlas = ExtResource( 1 )
region = Rect2( 0, 0, 8, 8 )

[sub_resource type="SpriteFrames" id=2]
animations = [ {
"frames": [ SubResource( 3 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[sub_resource type="RectangleShape2D" id=4]
extents = Vector2( 513, 33 )

[sub_resource type="SpriteFrames" id=5]
animations = [ {
"frames": [ ExtResource( 3 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[node name="Node2D" type="Node2D"]

[node name="player" type="KinematicBody2D" parent="."]
position = Vector2( 512, 544 )
scale = Vector2( 8, 8 )
collision_mask = 5
script = ExtResource( 2 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="player"]
polygon = PoolVector2Array( -4, 4, -2, 4, -2, 0.999998, 2, 1, 2, 4, 4, 4, 4, -1, 1, -4, 1, -2, -1, -2, -1, -4, -4, -1 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="player/CollisionPolygon2D"]
frames = SubResource( 2 )

[node name="boss" type="KinematicBody2D" parent="."]
position = Vector2( 512, 32 )
collision_layer = 3
collision_mask = 2

[node name="CollisionShape2D" type="CollisionShape2D" parent="boss"]
shape = SubResource( 4 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="boss/CollisionShape2D"]
scale = Vector2( 8, 8 )
frames = SubResource( 5 )
               GDSC            Y      ������������τ�   ��������ض��   �����������������؄򶶶�   ��������Ķ��   �����������������Ą򶶶�   �����϶�   �������Ӷ���   ���������������Ŷ���   ����׶��   ���������������Ӷ���   �����������ض���   ���������Ӷ�   %   CollisionShape2D/VisibilityNotifier2D             
                                                       	      
               "      #      $      %      &      '      .      <      =      F      L      P      Q      W      3YYYYYY;�  V�  Y;�  V�  YYY0�  PQV�  �  T�  PQYYYYYY0�  P�  QV�  �  T�	  P�  P�  R�  QQ�  �  &�  T�
  PQV�  T�  PQ�  &�  V�  �  T�  PQY`      [gd_scene load_steps=5 format=2]

[ext_resource path="res://img/projectile.png" type="Texture" id=1]
[ext_resource path="res://badbulllet.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 8, 8 )

[sub_resource type="SpriteFrames" id=2]
animations = [ {
"frames": [ ExtResource( 1 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[node name="badbulllet" type="KinematicBody2D"]
collision_layer = 5
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="CollisionShape2D"]
scale = Vector2( 8, 8 )
frames = SubResource( 2 )

[node name="VisibilityNotifier2D" type="VisibilityNotifier2D" parent="CollisionShape2D"]
rect = Rect2( -8, -8, 16, 16 )
       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST�   �            b/  WEBPRIFFV/  WEBPVP8LJ/  /��,͘i�F�[�?�m"�?A�Β�b��m#������DMI�!��s����m�<wo��D�?$Y��i���j��$�L3���C*�Q�u����ͤ�n+��K �$���m��?�vBDL *�H��ȶ��N�:��'��L�F�lRh�7��G��{z�����Kn#I�$Z���|�(��� ���r�mkۛ��#$@���ޓ齞���C=�3�Nlnr�6�"��{w���mm��ֶ����LH�v?����-�$���Y��H�ÝoI�,I�l��գ������o����;Å|�dI�$Y�����3���o�O�	DI��6}�u"�7  |��[��W�A���=�y��+���r�v+\!�M�@����X'�����k��u��6�x��̗7 ���7�B6P��ɧg5kРFBDD�� ����F@� ��u9�\6�m>��?��x#�Z��s�z��i�����C߮�-�@�	�$@B��vM�A�z�#�}ھk�56�>0�6�} ����7rQ^.���k�)���'=jԶ��.��0P�mנ�el������a��~h��� �������Z�>>���>b�t!�Hb`�́� 6�.!�R��ա�]�֔3��x����0cFx9�t�ǝ����~�����c�A�T��@'� $f��)��~*��[(	,�����T�/L�x9���;;<Ǐ�	����2�	�$R���E��N�-T�I���V��_�c���/ ��a_��y������m�AbȐQ�IЉ$HL�Ĵ�$ ����Z������Ɲ&̘���zŋ�^<ի��1n�q`��(C:)c��4��Ȧ�I1:`��+�l�I_~h�C�CM�5��򱃈�����T��m�S�X:��@��'b:AL�O"�Щ�(��U>��]~H;4b�5���������׺/����)KY�))�2��^3�$bH;,��� /,Gw5���-��.P�ǭ��#�EYb)CRR��3;5���lhwζ��sWl��#�[|�ub`�,�2� ��zZJ�
+۹����C�=G����Pe %�"E
����mI�d�������u��#��*waȐQ����2a�[8vY��z��+��nZ�b�
[��' h'FǄz�X�^�@����GMt�I���CZ*,��4�&"H1�D�N�M'`��~�%��u��U�������hǦEը� `��		� &����a*Hh��
��D":3D'ha���+��@��HLH�@�W�wȇ���$4������S���"jԀP�҉��v��
e?C{Yu��v�Mޗ���Ԛ*uؾ`�7`�A��
aܻ�� y���/��̺"���D��V�55�B��j@	�(q_�!�|��\�z����
�h@S���3�C5f���2b�Ď=����ЭY�&�P� ���5�=K��zSM|�)~�NI=CU���R�6w�.�ꎂ#��,[������5��SE��mm���p�n�	Ro��a7P�˗.E[Mͩ�8��:{��y���Ԏ4%#��L�rϬ{���Wk׺[��r|I��R4fD�Ą�t^��*v��J�z%�Ȼ���ҫ��&���,��b����֪��d%��k�����Oye��=�שc�f;�ܾER��ެ��I���e��Ym�~�W��4y�C��M��m�Y|�~!K����2[��z���wZIi7�FMn^�fް��Y[�-���v�/FV���&̘�Vn";���[�j�V��WO�����}��Y��u��ޑ��R˽D+�z�z�}v�,M�	��ݴ����{�=?m�,Z�Z���u���Nz�յڪ�K]���U��?�KLM�D�JNwF~��Fv���:�w�;ԁ��]l�کG��T�zg��8�SD���,O����?G�ɦ���̖]�/t��I�ى^X�ֶؙ�\׮~o'�d'�+)9}��a]'����ݱ��®��+|������ڵNX�N���N�zY��ɫ������͘V���f+|(�?�i����\e�w��v}���r�Wb*�ߣ.����s$fy�1����&n����\|�,�8j�,�nK��-Qvi�4�L�w���~��6��#�u�3~W<���u��[�^��V��$Ǘޠ?�A�l�N�X�9�X04߹�^,��N@cHu��91EeĈw��+ү�Z��i܋;�8��]6���s�2R+~�����r~q�ߗV��*Sx���P�r�Nt��W �/ ���FT�svH�(���?�Es��r5�4�u���No�2�Uy���uJX�����lg�S(SK.�2���Tk��up�F�)s�b��0����܆K�SV�z�[P������fҤQ�)G��0�2B�Nx�2����*W/�e��@?���-{I�x��V��~??o�W�v)ʔE��$`b�����h��3 �Bd���V��ϓ�<����W)r����������8���q��
 �76r����p?��'�"(����@��Pn:#� -����>�T2jj	н�!LX�[(=�'�\���.!�a',	ݝE4��o���%��1��껀�y�IF w���a�`�b�'�:4�p =av��;��A�:��z�A�    �Ai�gޒ�=-�,L ���s�鍂'L��>P��ZU�(ȍ'^@� ��V����h),p�&D/��n%�QTP �9Yu2��/�JI"�,E��>�$ν�{B|!���DA���d��vf�^H���Zu�"��¹��	�@O�{Ӏ��r3�6��C��t �ĺ], >��DZ�9s��P�Բ)`���@F�R�����-�RO<ܳ1�"�Hأ�V0��	�I�ї�ͺ@˽�Bl ��_�G"1����1{
���MLͭ���!!�A
R�L�0��x$�[�Ɩ ��#{��c����6pcRL��lL�\��n&[0"����� �~~���04�|�'�A<}�_0H�Gߏ�f��b�ul;�� ��b��O�'���N/�^�$2����tNu<�m����dkY��2}�� ��;u/�������u����R?y�x3?}�FR�����]������PP����O~���?�}���G�kY���O1ߦo$	`f�����l껆����R+)�޺�m�Yg������D�d�c;^������X��	h#F��O���9Ё9���.�ڲ�z�pa2����v�^�_X(޷~/v�c��QW��DԦu]��lKK�����)=���z�k��F}�q�nl��n@��'�I�WHj��߶����7�#㾠�9�ڃ~�����������[­��p쎷��k�[6p�k��zï�z���������0^��n��J�����ew��0��%������J�9-��}]�5�N�����b��死G���b�x�6�z[lž��,��f̦�d
 ��bK[���=-���
(a�A܂��W�aB�i��*���n�7q�e�~mw��.��N;�?�Iǝ*����m�#�ϗP�!�^�򽟟�W�f���F��TKlx7����˽}W��\oT�ē]�a�����G+��~��dm��������rw����j׾k\�zX��Ӏy�XG����Z�O�2`H�rK�/��~-�';2��~5I�^/�֎��Uٺ��|���˻�W��z��^P��UXLB���i��;X����:���Ͻ�Q˸^��b�W���b�ܚW�R[՚}������&�aՆ��}{˓Ws���ϛ�B����L���$�����f��f�F"p�Dm�[��o۵��q���sp$�Q�K��]�u�٧~8!����u8����j�������W a���n۵Śy��Nو�sEIiр�@�N�׿�o[W�m�Z���o΅ x  8�인��U��6c����}���7�xn�s}�s�j�ڭ{�6MY��Vl�]o����e�]fԓjf����_ۯ��g�۾W�%<�7�z����_��H�t�w�7[Y��B�(�|���}��\�Je��N��}f��C��%F�%�0�9'�<�?/܂@�?�8��M�}DX][3�D�Ny��v���ՖZ���(ٍt��{}��.��<W����Y�Ď��<�S�~7��5?���`y�W�O����w��Yؒ��nrӌ�nm����"d�Ȟ
(�c�W����߲����~��sC;��.x�m�i/�nc�{��Y��A��ʋ;�0�+F,x wl��nZy5t3͠}�W�5��y�}o8�*��,a�}IHX�;Դ��oX#���C2Ѐ��δ�w!UQY"�Ⱦ$P�S�q����6|�[��	��D��**�ح���S6��FMK����+4�@��T�RKj�w���s�W^_XE%K����?�����@�����q'�/̽h�h4�� ��|���,[���:K��}ay�t��[�z�\�s�&P���]�'/;�k��e�G�<�׽FM�Y�O�{��2��^�X�S�[�%��h�S�XiGS󴷕�s8�kU�ܒ7�N��óm}�hN_�0�7L�|���[Y�uK�z��9\���Y/y�7��Ӌ���_�;�[ԗD	�nx�L��YЭK����T�����l����W&�������K*kx��Rk�w���h�M\�>-�P���m���^0�����~���{_��}�k���y{g�rN'�'&[�杗�Ӿv�7~�^k�~���%�n|7��߷�����[��r�|�@�Y�߷��l�}g�F@��_�]_�*��bB����Z4��S�^�G���L������|�,[�k����讨�� ���Ů3�M�FA|�0gf��ac�9���[�}k��|h�&#`  ���'�AF{�sP$�/��.�X�|�v���|k��V8m�}�v�٪u�{c����Y*?�E��mr���ˏ��O��7+;���u�:�>s�L���V>�g:*Y4��g_�[���Oݻ?�4e"G�����ߦ��6�{�gGӺ[)y#�MW�q����2x�߯|�'m��3οzW�R;��9}f�J�|.?��'9u����~׾���?khaw��]�3fkӦ��2�2}:�ju)�Ȥ��>iNq��X�&�%'�tD�0 ��q2�Î�<�'�Q�K��t�'�"` n��靟N��pB�2����Y�����@``���`�r������A��ߵ;�j}�Q]�_y�ԨV���Sp���]yK�W��~����21Yɥ-=�I/�5�W'�h�c$��<(�@��M?���积��]�ꗝ��='UR�2ed��Q����ާ^�i���&=^�{�����Jw���Җ^y/���|]��~�${��@*���oyWd�mv�%����)�o���7x�n�k�1���  H؝�H���?a���j��N���X����lS/��s�{ͯUk�Gn���l��������߫_5;���W��{�!b�?w��o����}��t?������77ܻ����[��^�������u]�h�2����h��*����g��gb�k������_;v����j��̚ �{��;�޷����~��j��н��� v���M���+=�������ޮ3]`� 
�̾��v���߀��tZk�ό�+o�=��v�vfo�$�(��{m���_���������ӫՍ	+k\��po��N��+��)���v�~VZl��J�����[#�v����wQ~��*��D����tqڷJ�����SN�HH:.?���M��5�����W�vn\U��s��9X��u��2�.�{e/p]���[�JU9G�� �����f��}�\y7��]/�Z��^���]z�׼���x�~5�	G��p������\�ݱ;Q�v�>���?�
,_W��;��;���G��������ZM�	G$���l�2|�wv�]~�-�XOXP�i�dd�;/�ƚ9 @�����m\����o��������#��0��@`$������:yG޵[�^C+��+���ԙ@�]N&���&rx����2./?��
�@ �xJﳱٷ�Q��;|Cy�nH�]P�y�[r�qu�/�w`�d���׀���>?���pOZN�B�2/[���D"/������S&��=g���7=S�t�����=5�E�f���%�]^�f:l��Yo����9)�dqx��+�$LD��&��=r���F�a������Ąh��L�	,
8Q4�ӊxEq	O @X�݈��K �MH�+JL,�v�r�P�-�&�������#���#�)E8������ݟu~�W��%̙��=�����V���
�>��Vܜ��5�$������o�����y�W^I[��w�:���^�B+:{� C^�]����	��i�E���p�|ɶ�V�{־��M�=o���Yb����_��^r�2��-�)�.�\���Bݷ������%yZH��Q/��1�6����/�~�g}s�F��*�/��efk��Vן�L�W�V���P���6u\���P�R�!m�>��mn�GK+C���獠��tn�&���������_�����O}����u���������׿�����V�TYy��v��U�B3ߏo�~a.����\�T�JM�x���������۾oY	�f��g��[��I�:}��������'���[^}�Oj'��N��;���������|^ݫ�L�J��ʵ�2�ps���qź�wyڸL�JJ�w���y��e�^lm	�n����S��;G�;��Nw�����	'!
y֏ݭ�������я��#�1�a�4 ��[P��{/��q��Iw����7b0]$R87��6��L���DBY��w�S���5���p�پ��������5�)���3ן������������[��7k���:�HҸ�X+�$\�[	9-��;�f�����?�T:��w����{�{���0a|e��n�s��5[��0�������~������?�>�j��_����?o�����d�g�MA'H  �)F�G��Y���n��@/�?���)�4��v���|{�]��x�6!CM���S�Ƶ�;��$�	��I�O��'5��B��]����7����LJ��dw3#�u�~�:�3Ώ����s�������L~�'!!�; ��y�-�v�y�hҸ�8�^���w#Sc����i�^�� ��D	��w�ۋt�,۵_��^�
���^@MV����*P�}�@�<���\#��%ͽ �PQ��RAw6a�u��	 ��]YY��$m�_����W�0�ȹha�����U �����pBA'�����x�UjW 姜x}p%�f�G��0�`��A���\�&�WM�@*(���>�-��<�w	|���DP^֚����>��E�G#0���(ɦP�%-���~�  ,�
C� � ��U�7�D� ���f~�y�wP�ye38]�yh��eB���� Nmu����	�q���� �BA %	�$K�e�;6���6Ұ_��Y"�W p�y�C^��*�f�ǟ`1Y�� �F���RM��٦�]���y���a(�BL$7E#h4	 $0  `�f��W�>.�@B�>$�ͼh����-��@ �x�  pa_�����V 	Cb=��3�1IjJ\�t2� cd�4 ��{˷+}`��.5���ce���9����������3?oA ���0 ����᭫A�RS
���bO�s�F�JR&IЕ� 55 ��&Vϕ>B-A�F���c�����������f~�  �dB� k��2u���EcSS҅��0�q�9���[�, B�b!�GWJQ�������v�0#��>$��!{���]��K,	�V�����+�pC��@	�S�ʻ��t`h���zv��y��{�܋��F��h�������
�>�I�6"O�>��x��_�}�ׇކ{���vl�`�Ʌ�^r��q'�F�(V��( x�N�jv��[��r�ɡ4��+V�%qr>`�0@,�C` �]����>���Ԯ޶��8�|��KM��TT,[��
#I�����t @�W�[ ��D����!$�kg�m�����s�V����fr�p��Bܑh� �9�`4�+��E�=+H�������������HD@�� F ���}�S�ڨ��ƽ�s�3�ʻ�{ыݝF�#�qNWM����ܪ�n�x��@,�vkJ��@��D�D
�E�0�TkW��j��P��0�ɯ� ���4����<N.$$�F�$ЍI�I����Fzۼ��)���V�^:n81,MB���#�ևID� ������x�td�S��q�Uzi��p��.���c(t'K�B�]Sݴ��z�>��<�<^nw !�,��$�E9�|p���INN�sh0�;@` �$51Y$7�%����M�D��t?$�[����^S�����d�*�@'X��FK�k�AA�xb�  	! B�8�j^7?}E�����2��J+���-`$ $&ޱ��v��["��u�����SNI���S� ���޽�-��3�ye���� y�s�
�8-�T73��F@��でNlz7�|�7z���4y'; �BV�~]��w{@4s����O��=j��C~+�8'Ͻ
 �C��u��w����a@��-��tu8y��Ĉ;�N�ɚ��3}NDO ��~�T�  �|�u�w=+׹�� h�`w�T�6�U��T�ⰹ����2��ګ��=5M�������T�K�,	#�@h�*U�rBSRp�0��M&Oq�� ,�7�b!��0��q�T�8�&J.���LF��P�k��"YJ���Ɯu��Z��s�,��eO'�0��������ԩ�4��)@���)b�^b�$��7�n�,m"� �ըw�@ ��d��Xzʖ?	�E&����Rk�v/��=��q���<�˱����X�s���i\��Q�v��_x�:Y�)r�A#~��938���U��:H6Y"���P��O3��^< ���
#��ɮ���"ʾ4 +�ݫ٩�L��npys%�8u&N��h������Es��`i]�5?k��T�rhN��(����]!!uG��y*��o��H� �@ �  �F�ZviK�;u7/�o�[��k�5k6hPir���9�8\i�@���kug��2t�Ǹ�vj��\�Z�x� �܋ 1z�ÌL$ �7��{�����K �d��a ��QF���#CF ��5�7��s�VC[�S�(�����Y.�o�e,}�w�n�r��nկW��W�^�U��@��	 ��{�9��F	н5�v^[]����=�%  H$��c##KAӖ�,��gXb�3|4�~]��[ט�z�F���s�n���ah��ݹ�;�؅���^�g E���DP(诤�ȁ �?w��,nϫ��L�q�Ӯ�w�W،	A<(��ۗ���P�:rڒ�}�ۏs��Ly�g�'��k���3Ь���[���s��#%��cvZ/ zr��qo��m��-9���90����*L��	�x8���*=u��M�~��e��~���rK��T�PWq��`��^��t���������h���S���w��{=�e�^��u�M4�Ά4�i����[��@��|A�t�/;j�6Z��]
)6�L	�c#�[}�;��f�N�W�qG��'�	�K�4|�ϰ����z�����i�8�&O��Um]�
s$:�G�ݨ�;C/��3zB:�%7�O���w������x�7cf���W]m�l�
7aHY�;��G� �`�Xa��dT�T2��B�[�%_m;�QX��Ҟ�w������}Go���qw��.K߁����iK.Oy+���}�o�_��_~+���`3�����_�,�m�m�^j^�yy�Wz���,}��,I�����(���u�������-�
��M�I�$@n}�25s����
t����һ��O%KDOvdD�Cb!��%2\�D�D�t�SB��s���}�mݷ�=ʄt������ �&�l��w�ׯW_a�����nz7��*KM�����y@#�R�'��ӥ3����e^;�ٮ3w�_�ն�f;�f*H=��"��ǯ�?�3�o�������Q�yK�.v�����<18�>�Lb�IR�J��<e��g�h������WQ��vl3
+P�+Bn��µi�}��}u�OH�Z��p��V>��n�������y� ����BnA�@�)� ��K�@�F	h�� ���L!�
x9y�gXv���js�_�&��rl �@�x�2����Z����u�jm�&���mz7�y���a�x��1��ɼO�[�)������o"���Q4M@ċ�<�o4����(����f������nu�v��)�	s�0gb0x�h����{{^_oS�`J%�w�}�4������vx�����13� �l �p/�[��-O@)�,�&�&�H ��G u�d�db�+��o��ؒ�O����V��M��dSc`ϼ��l�Z?�쮟�lo����������������o��l���,S*�ҕJ� AM �h��& ���)-(�^�)���g�����и]����͵��֧\�JM��xbx��Y�}���z����_o�n��ח}����7 y9�J�@M		�#D�@ &"�0//
��\�-���1���Y��vng뫡���mf�25�t* ���}����u�|��e�~�ݪ��[_޲����MwBz	���h4���NnXr(�   '� _h�����;''��=���Vw�����2�m�
d�|� ��[�f�n۵��߳�ö>]! P.�9)i�i�#�_��Ι{�p��u� ��-!���)#s���o�Rh 	�b�w}�ݾ[w���t^�����_�S��(!��)A� 6Μ|A13����RĔ2�)W��e�.  �vT* 4��쐙Y������	\{  (��H `މ���~�/  H�����()�~�b�~� ` +�� &@D�=��� �����	��p� �0Bb��=zR��Jx��'#"���;�c�����g�Ci�G@O��K���Ep�3
�jԈL���B�P,$�B�0�w@�DHC������`�1a��k4h�6�с�ɦw  k�
րfM��>�iɞvH�p�ր-R;����!Ӄi���	�q�T��]�~�a�ޟ�	6�@L�O�����U��J�I��۱i� ��A���+���cmJ0A'�� ����vlTIJT�M��m�R�����|�	�H�s;ǦP�*�+fR�j�b�δ�K�E�b��`�ĐD1���D��c����Dg��P�b���lg�0�����̫.�iR�d�;�U�zlP�ΌtƀU�k�v�	@'�֖i�؉'%%���Q��ƫ���[�a��R�A>V,� 1�vb��!1�����h'�h�i_I΃��w�{W[Sc�������gο+ؘ���0�ɧjUne[<v��1bttb���ްii�Ʀ�&%%9��L75]�Å�c:5��z�l~��!�ô']6Y�cŚ�*��d���E�dO�N�(A��l&5���M�6��!�&Ld~�7]�x��+ȫ5��*H0�0���!.��>�X%�$S4���X�`�Y-�l�s��IWp�ן�#2Z\a��$Jhiǆi�0�3ha�$E��56�bv���l�/�����b�؅&T���R��Y�I����ʰB���3&ddT��}��é .8��5^�x�qp�.�&���,��m	�]�%T��0J��cG�t�ؑN��n�L��c���Z�T� 8`��~ ��|U0?��ì�m�vu��}z�v-��� !""L�pĄ�q��v�Vsz�xw���pQ>�o ��ܹS��&lp�m�ۣU�Z�4��V�4	0c��Z��n�޷�v��"��'�����/v~+5 ��tw�)(, ��-�N���ݙ��.�+�6=���|y   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/minijam-19-8-2022.apple-touch-icon.png-901195cf4145aaa5df91e2b530b4edbb.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://exports/html/minijam-19-8-2022.apple-touch-icon.png"
dest_files=[ "res://.import/minijam-19-8-2022.apple-touch-icon.png-901195cf4145aaa5df91e2b530b4edbb.stex" ]

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
       GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/minijam-19-8-2022.icon.png-af7fcd3c3242b191694f4f12ddd8d1a5.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://exports/html/minijam-19-8-2022.icon.png"
dest_files=[ "res://.import/minijam-19-8-2022.icon.png-af7fcd3c3242b191694f4f12ddd8d1a5.stex" ]

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
           GDST   X           �3  WEBPRIFF�3  WEBPVP8L�3  /�Õ �'$H��x�L��'�{����ֿ��0m&�=�"�;���UK����^���� i����
HHc�4*]�;���00�PBJ���s�u	����Z{���D���$�q#)����ܣP��B?�ml۪rшT������H�R���+��fӶQ�ɟ��������������������������������������?����?����?����?����?���1}!��dY�b���$M��*��t^�����h��W����?���?yd����QCQF��AF���x��'�v�3��a�_�g�$RO&�������,7)?ʵ�}�S/�ٶ�|�g����7'���Q�_)�����^:?�%n ;�vdeG��o�+h�D|��+�~�~���,����"$�e��1��Y;�*97�86q�e�
��b����9�h/�ǧ���7��W�
�����m:�ϼ�X"UĊ�з5�;���ysܸ�:Ò+� ���S���qòMCs��x�R�R䕈�)#f����I�<�9\�l� �ΕP�"n������ˊs�P��׏������=��-6����{{Ds���k"�^JY�{�M,��7��7�_�2(�m�W�I��
D9��\�E{����#�2�v|q]R<���J$Ӏ��p�&Z��o�^8)�c�ȏڷkW�%���*4{̎ �)n�i�XԮ��io��nh懆�Z�S�2(�Se6I��F�@�kKJ�@w&pZ{|��i�/.�9�5�P>�c�*~~��q�@~RPG���e�J{z���/�9�SX�I"���%V�'��,o��y�U�C�&W��j�d�_MҒ���������[�
'��I[?p�Q�|�_����|c���Ay>!X�W�?������g62�˦�[`�-��G���cu��u{�ٌT�C�X�/��P����(М?�p{��	5��	�-���ǟ�㶼^T��o��>c��Z����>3��L�(m���;pS��|ķ��&�:���YW76�1�k4HQE���E_�H�ԓ��D3K�fE��Ô[D{�\�b�=�G#�4�d����G?q��I�T{��t�Gd�#�=�2b!����Ʀ��) �<~�M��(�R���n�l��(�B��L�0��NC,�R7
ʄLV�62�w�7�~�d��g�����8�S�}��'Fgm��e4�2
B�C��0t�O]�q���~�Eq;�䋂��3�Akj �[��QPVg�J��(�Ϻ�ܛk����OW���"׀��˙�b�)���ƙ�����q��A��2Z��ie|�QNg��wkd��	����J9`R���¸�;����H�MSZC���4������ӎ�?��l,b�l�cp]�Q�k.Jy�g�qhi��.m}�ۣ��J��h���n/��7�2��p��+���U��<��v��m��O�9�)�I����!�Y�e�E@�C�<n\�I9�� 7��S�Ai�ͷ��"u3��
)��1���ǜ���v���O�V΀���7ʧf�@l&��@�2$
ʪ���<���-N9 3͹�K&#+�eb
�nBZ�&H��+28�_|lP�;:��!�`���V&�ks����T����-�{��>sb��R����P���r���K�$6�ׯU��f�N��@��.�D�yK� 5�a���D��W�	�6�^����G�1����J���l ���'ɷU�`�Q�s��p�
)�-�#c�BF9����*Vb	(+Kq=�@��IQPt�x�\��X��4귃qm��)|6�Pn�,w�:�OZ��J)��G���O�%�`@v��
����L���g*�We��A<�g��\�^8�fʴ���$��(ۺ� �ޓf��L<nʁȩ-����/�)����*�є��YV��l�Y� ���@
�V���]�U�2�O!�c�pĆ=��X>��>��`��DO�2X2�Qvys.Gfw����ﯠ�a�؛n�ʠ�l����eBa�����/�:~�m��Rl�+N$|~�b�l�-��k�[ߊźQl9�?
ݟ@ygB<�^2��p�N:�4��|�2N�y�[����˛�3�w��GV�-G�|T�Pz�)������bD`��{e��"~~5X����_L8��$:+�h�<}<�w#����"�is�U��37GA�P�6��˛I>�LF� |�s}��W����)�Z&��H�3����߁�i���r��6�������@�Y��]�����W�;Yrj%��q=2�H���W._0e̠�-���|���w�Ui~�y"QT���sVj�DF���-^����|��8VOË�_eS�4`d �(����3�ow����E��ݿ���S����Y4��"D*P���<��g�'�ރ xN�jM��^2�vU�VRsf��ˢ��R�c��}�������܁|���G%��D>�`e<��ջ%�lW�H>}�c���Ye�6,��rN�����#�"�B��:6��ɽ}*0\e���ce�7��ͷ���Wv}����1���#�Z�k�4�F@�G]�+R�_Z�	���A�J��F����Ra`�,�@����]�����f9(p�>%�c�۴���#��˛ə��$FE�&sM[���4�0c� �VQ�Gr�I�T�ja>����YLl����wC�RA
'/V���e���3���$8�;���#�������ZQP�bܚiA_�WVb���˭0v�mkpq�@y퐶�i�
Bl"���B��~���'�u�g~�p�T�ZS��gG�����D�����+��'���@��*���|��*9�+^��<W��#^�4%�.��B� #PJJlDlDX�����L�XG��q<�N���.��}W=��$�_��1�2��>�Rnv�,B��hdx��N������((�a3='�[2�R�) �muxs�o Z�Dl�L(�?L�E�(]�-�>s���ϰt��<E��R��{���7a�?s��$E����Ώ�S(xcd,�r���H+���
Q���Se�?�7b���B�g�	i�$�Vj�{b�8#��y�2U�/$���*�-Ƅ@*��Pn���`z0j�)�����>����E�U�+�i������@Ӕ�l���so�'�@���v�H?=�mU�.���C�7��:�}�	)��:��8�E��Z(���������8�����/CS����9\+ݼ�+����vn��2�x#i��MHnU�Y��Ee����7����-o��I?�Q�	*�lb:
Fc���KR�B��
��&� d��c�[v`�1�1X�#�ӡ�K���6׳�6#j�����@���@ta�v>�Q��G�J#��^�V�p��DS��,s6 S�t"d_�CVi�0�s�;Ve	��_-q*��i�Vt4g���kG�[t�T#k�j��S
�C~�y|��\�n�xdB¶�~��H���Q��R�j���9�O}�=�U�?5EwA���������l���NZA��'��[����	#kG��(+_b�?��{��@q��8_G��h��Ir;9�(c ��dR�u?!Η�H���8�"!e�Y�b�����_#�]����\[�sF�N�F~���Q	嬰2JFy]��3}��7�C�o~�~�嶋o2�V#\���*�0�Z\�.��	n�cGz����x`�Fj{;�Ƨv����Fֶ� R]�WJW-��tY9$γ
X�\��$���(��u!D��L�����;���Ò
mĞ��p�;T��MB_5�����a\���`�X�e�j&�PW�J)��	�d�F���ݸ�*��\����dR�S�M���s�h��@���R�H�L��J}O��'�}��9�(Q0�)����l4����:��.��R�b��\�zb�@R�!b��Y�^�n z(�������~�uÔ-.�!E�45[�f��a����$�Tt�l�8)��4ǐ����J"�������� T#Q�%ln)jqm��*��W@�!��ߺ3����E�*1f����܀���}z�׽2G˛LVy�
���6n$���L��V�R��3#$u�
�Xb)�aƔ��������o�����B];���g�lu�a��O?��?=}�Ju#N{@��*_B �,�LWK�!�* ���.�����p+}��x̲��,��dL��������^�+oGm��Q�{^�]C��cu�z���$���O`}t�C�=�'��rb����1�\,ux���c k�͵�Y�s�|t0k[Ք��DH���������C�U"�QMF�:ä��u������%8��5��ݖ�n1�ۍ]%�0\���F�
�8ML�c�TE��㍴u;�ubʃ`l��?���Fڟ�fI�L�ɠ
R��rtx����Hu�w
{��)��AV�$2:�CMͼ~���UI�S�0�h��6Eh���H�5���;� F#�u�詹��QX��E�:Y����_^9�(�P�	Ɍ?DR	���N@�S6��DF��͝>�'�Q�$9�TLo�N�6���0�f�!E��
LAOFWA�K[�U'�bRF��K���Y{��ɳ3pp�9��G|��
L]� ��%ķ�ؒ׃������E�?���}��;�~m�^��n���sv�fg���R V���vB�E� ���B��Oؑ��`(+*7����E�MI��vUG
��_q{�}�d�
�c�����Ɍ���$�`��ڌ�	������Tw�
�T4A�������V�Jx��� &/1m����t!��'�"U�n�+�.]�= ��<��XEP�T�LKy̽R�`V���׈�Y}oܱץ��OH��E���v$�H<�65��#��.Q�f]����O��z��r5?X�{1^w�U�|r&D3�|���*����s�Pi���8��ci)e=�w��C�ڝ���)h'Jc�S��G^!��Κ�wu���P��"W@�2\(�����-o2��,��,yA��=A�s7�@�cb�\�)1E����?�����2���`���c�x~�0W�J���ˬ�n�>��G	P�<��ʹ�$S���=���rx(�6U ���l �S����h+�j �u��`ܪ%��d��{���OGm����m�s(��DQ���cnW=�>	P��K=�h=��i���(�R1��\�j¾k�9��J���S��7���!ţ�ƈ�'�5�C��H\QK@���9!�Δ��*��?Dˀ�jb F4yk�¸Cˬd+Q�H��.&�X�u�N��I���# ��1OXK����s�l0NT�m�u4=!�=�{5\��;�`�����T��P.�+�����:Aa��`$F}�H�����E ���I�><���G=֠��2�lRSt<I.��S���Tx��㓈RR��Ϲ�W@�-h��~� �vE#���f�� ���T�&Z�Y�I3��e����Ŷ���Ԡ�6%�*4/���ቶ;?���3.�N'��5�]pRv�S�-��d��b�����I+���_k{@�j�O�.��i���\;
�Q����#�|��]�M��(M2Y�Q��޷�]�qr����-���Hʁk�ۺ����G��S�����`{^ϝ"q�vp(E�s�bJ�5&�
���XFG��h1�j^���	�1�Ϫ��x �@��J���tA9n����<\ȳS%
�Ù���#�K��߽���O~���ٻ��)�I؞���G*k{�� �T����0��\�㖲�C�tj>i5c����#`96��-���إ�3Ĵ �dz�NV�ۻ��n;�q��FR���|��*g$8�M�S�>�s�r ��L�㐳� MN��(ko����<�Y,@�,p�����}����i�p-��!��r�[���q��/9����"�QK�K�B���J�(�q�3/�z#�șЯ.�~����ئ��q��(�8��#!�O���ޅ��3,:ACĻƹ]B���E9�zϛ��ry��{е[9���~@"��.�D���3
��B�㐟�h�øO�4j4Lc���[xD$�<pP��߫g�(
���i�DM!��YQSo�DQU����.�O$�,����"����X�G����1�n��T��=g���������
[	�Ŏ9r;���]}:�m��1�?��P�at�$j+/�
��g�n�'�H9x���g��dW�����R�з�*D��1�����w�����N9�)b+������&DA9vQV���n���({���Ӡ�R��o��]b�eat���Ny��r�*D~Ǆ3��S���w.8��s�UW�~���IB�_Pg��������쀝M�L��^��Q��p7����QXL�;���
ܲG����19o�^��<;�J�U5�3��l��S�ʠ"ܓ�d�5� x��w��r#�y���G-�P9\+�տ��rJ�@$I�xᜌ��p������HSl�8�=_XGJC%���8\}A����Jl�˛i}b���r�l��H!M��1��=bQ,V5�ʡ��_��r@~�䉿7e!56M��;�񍼤/�����Jg�1�)�Sx^�K���R�UsbC�\�N��H�cO�#���s��ܩ���ln��;��{U2�O�I�9?7�m%3ʓ��5u�/I��W��^
�Jٵ~��$9،���Ea8�C͸�(x�,�QB(��ޘ�����6�$�����^��O�k�&�P��@�v���>U�_��T��TԸ3B��_���������MJH�21�W2Ke	�h~R�fI������K��Ӡʹ;�7_pڞ���;��3�����v�S��5��3�*,�����#�V-��ĉ��B�s�U	�����\����/}����x*�/�&|��`�Ҏ��>A�C�9�񆰒H�vN�Z)~=�
�~F����>;�"��a��WQܬ�����p���!�Ni�Tg�^f��<�i�18�JJ��(���ZrK�)O�gW��7�#_.R�o� ���,6�һŏm�6�^Y)���^B�߄�sň��b#�^(W�Y����Sz�UPd-�ܷOZ�)��U�[%Oz�hE����У�f�'�ė��.G����z(�E�'S��2�v�QR����7y��#������D�{��+G�������n�B�{�t������j���o�اfN�8jx�Jj"?����&�U��M���>>e��q�qc�х�FU���#Rk��}��Ǧ=�h�'��ߪAQE^�0[����)��b�����)�Ŵ���pFk�^�|��ҕ8��"u��{�?���?�����������������sCA:��.��;��^�]��C@����x���S�&�IKٷ���f�n���YY�#ע\��]+����|�I�~�j�K�>ֱg~������M��#���ux�4�����,�mJm
X,q�ߐ0v�܃�}-��dB�1ĽqT��h�nY}=����1�v��VшڞW����l��F54��y~�r�=�)�w�i����P'霻���0�.��B��	h�T��Dm�6�S�D�%C���9��nY	����?O���s�ltH/�����i��}����KD���x7w���B�DHFF�>���`1L7�üJ��W��{v���e��WS�bu;�NxG��!e��n��3(��/�,M*o֠�O8�90������|7�� 9�A���T�/f� �0���P�"�r��}Ɓ��B~��D!�Kqǟ�m`��B��$���$��rG</t�����R�}���U���$`�b�8W�c�iӬ����Mk�GRi]�n�E"���eð9����!���XN���mwi��IN���_0����=ZܗQ�
+DV�Jgujn?"��P�o4��!������c�e�}P�� ��lwX�O]�R׸gVy�U�`o�mD{��)GL{�pH�O\~�P���CZ�B�|�J>x�����9BW���w��|0��PehX�U��"���,�-,����C�b:�G�q�x��Kw�����=[5N1(��b���q�����q���w�=m�Vqf[���Cl�0��&u�x=��s�Yw�L�,�.v
&�l�� ��RxL�ٍ�(�w��s��{ܱ�,��2�!���ӆI+��nr��R�a]D��v@�����#ls�<s�z`tY�$�R�w�ĥ����e�ݑA���*�A�a��>lA5�I"R�z~�@�b���CZi��	�W�N��q`��I9`gH��!w�*C�����[@B)"��DT�6�u�<��y�My��	5����u���;B[O�<��1��cy9)��(���|�m��yV_�@l����������ř����U��ͻ�B7G���w� �6�:3Bʯ������A�8��~�{����r�������_9�G������X@t�G0U�yQP�F��r Яy�Ȫ"���nl�{e��2Q\/6����OȹD1�21��k��q�!�R�ҭ�q�R���m :D@9�=�{��q�;t�l��`��2Jcrh�*�&X��\Vʁ -���,{��}
�0󄢞����F��>@I�>������#��؈�$�Px*�s}�V�c�H0��x�DZ�V��pȆ�	n0��n��V�@�d�o�����o���@L��N9�s�᳐���J���3�/ p�����9�UBo'Ґ�)ɔ����H�O�o�:�XԸۆQ	z�J`�9��4������F�(����'!|�P
�L�[�GS�\�`��˴R����%�\��"���Em1Ub���9����m�VD���AjN@8��TIz�N���L9�Nqs����>}s��	��i{S��E퇅����\�� s��a�(��ǐqU2�`(@�$ys�`�/�.�cEh7� l�誣�$C|KH�<��?<���vo��4��t�h�\���w.W��k��N˥l��(���D�S
�p�'���B�A�/Q��l!Y��Q��̡\�X!},c>�H��X��������rS� �L��%S�֔)T>�
��;����k�Tv$�k�a���GR��w ؈�n7���ۯ$y�$޵�S�Ά��ɦy��5��,�r��k� u9�t�,ɺ*�cT:����J�((�bJ.��㓌��p�1�1�%~�rKN�})���S��a����c7�Iɥ$.���\$���8ș�|�!�>w0��;Q]�z�4D�h��"�r�L�˥Ѕ�ذ����s��=�DN�ʜt���Rs.��~�@/-�r�<$�no�Z?�L@Lϵ��7_ ��W��QP���m�.p�*t�o.X�s��G�!�g<�j1���;�C��O:��˥����e�Ӟ���	�c�f9�Ob���!DA�9gM�ɦ�\�݊C�Ѿ�F��o�<ρr�pvTrh=. �Q��q����yT�� C}��60C�yV�O$[�Ӝ)y+�='�(ꏽ_?���J'a���$��������L�ΨC��?�UT_�p% ����[���%H硝�sȥɧ���Np?x}��W��+�W��P�]$���h�SN�J7å�ސL��O���jW�0����b�Bǭ��:D��l�0�O��������	�YB���x��y�"u���J;��R�8�'��&)��d�)�����֞��iW�'wB/��yf�!�}VƝG�E���r);|ΉsA�Î��:�*=1��ls޺����U��h�+�����P2��P�Ֆl���8|]���{���������p���!i�O\�l~���~�@�tO?�P��+E-��g)c�-���|猡�1���3�b�C�f�@��)�%~G�������4�H�8~���m_���@h�GM��!��8cG/o6��J%�r���� e\�,��h��U���Qt��D~�T�8X\�ˏ�C�� ��R������A8��u�� +��v�9]W<�3�H�:�_.��4�!��p'$������g'p�T A?��]�5{R����P�ā�|UO*�����a�B9���@wɺ*=\�a���QP���#���:ԫ��7I��w¤^�mx�DP�� ��G�kHɯ�u�D
MޖK98[>��݆��@�GكjQ�UY�3�}��mg
X8�0h��<TsF��	F���N����()���q"��~��A�J��$0n5��R��Жw)�&tn�,{p;vǛ5Tv�!�:�l(P).�qť
M9`�R�'��}�����������7��F�NX�Zr����=l�|�C<�/�j�"�ǔ�Yw�z>I(�3�r�{�䤤��eF��?0R�y)����R�XL�����Y�ˑ��= 7kl�-{`�>,@+��:H��is�h"Q	+�]�1�rp�)E��ݤ�<��}MB�x~��WG�cv�� �����; 49�3j,7�D�U����¨�LY�Ul>�
�R|߀�Z�/[�'��\�J98l�m�;!�U2�#Uz��2i뇗s�+^����H��煴 ����*Q�7 �m�!t��J�Lن�G˚+��Y�ެ�*;HlK7

$A���;�R��
P@9�=�C�<�r�����$U͋�\#`�=ֻ;��r���o�b�`���>(����%TJY��]��c��#������T�}�s �,\qə��\�W�f2��+��s[��&=E���!3�Z ym��8�({Pw6-����o����a�bi^���g$�j@t�F�9�8,PFi�$�aazL�<���4��ȴ�2#K�,Ϻ���_��lքa-K��1��p�z}���( �H����6��:�.�=�r���%��c�xЗJ90U��H������,���ґc�MCP)A����F
M9�^RO�b�!��Y��gQ&��b�c7����^�e�>ɹД��'�*�e,5T_��2[e)�U�k�3Ie�R�э�r�̾p5�5M5���ѧ����l���$e>Oxhʁ3+!���h����Ā�C��An8��@[^��t��D��'Aj�zv���ݳ���Da�es��r����:S�iYW�����T�(y]-�ݑj�IE�4���}#'�_��7���9�Ʋh֍5_�B��.�ھ��
L9pHe+�/YW� 9����yKfPE�6.�L8X0ۡ��F��������IK>{I-�����	"�ͺ*%����3�**�>�4�ɫ�5ಋ�|J`#�s���M�t��q�q�b�s���A�1˪讑Q�b�Y����<c��3eD�@�^�l��.%8/����<���1I�����|f��q�xP�ǖ+(�Z�Q=2J7���Pq�r����}�=��oiυGcƕ*��q���p-��M9p�N+�}�n��5k������H��Ø�(��-�S(G!��
돃������gQU��)֚o��
���圽�-w�=X$�t�Uy=2J��(��*NR���K��Sȧ�q��(�'�eyHa�O>+u�GS[�H+m��J102�9��o��%�@�mQ b䇧�f��¼��ޒ���ܚ:Գ+�e�PTU���1��֟�K9p��6*��r�$��ʢ�(͍#��O������
O9pM�H��i�u>��h���BQeZ���d��_���t���:{<�ⷬ��=2�W�`�@��S:<�����ʚ�]�:Eu������§.Q��6�v��褡����E�?�R������	����!���D��D���e)��=���|��t���8�o⑋�B��N�����gY�����` �κ*��Q\Q>Tq�8�L9��I��a�	{-�����lX�|����M�~u�,�C�dR�C/�\h���?'�>�Z-�̒P�e��N�(����p���F�Q����Њ��,3�]x�K1��b6)�]���P�A���ğ��Q�A�HʋQN̔�;8��~����嶽�Y��0h��;��/�r�����R�W\)���J��I�'��q�̔��Da|�*q���}"�
U��t�LJ�����<��e��˕��@��*�3e�ӳm�$k�0���1N�C֏�<�
�ƹIc$�<�	��V��u�T����(HY@���(͌#�����K��ҧ�?�,�������A}�ң��PC�bc?�"Jf�O)�c-�f)��Zb��	���Z(�]�R(#��6�S�*�,��dS�LH�G��2�BW�$.� �,�J9����j��ߕ�ʲ*o���}�ЄX���<C<@n�5�q����ux?�
݀�.~��V��I9ؗD<^����/�G�˺*��u�򤹢B� ��%4'��XA��t�^k�'�Y[KAU�EX�;A�5}��A�K���>���uaT4�I5[W�, j���@ʾP�_uIS����z��(�$m�u�>!��H`�ԏH�dP�A^��\��/��6r�o6�l)��Lو� k�l�ֹIy9"ʙ'�`�[hb�
��|=����R8�����^���H�4�L��
(�ٗ])����,�R4�+}#��a���{}'S���S~��x��xW@�
�������p�e~��:�Z�{s�/RJ;�ģΐQ���Y��Z���\���V+�-`�'����r9�ذ�w5E�~��F�+S'R����K��~���]]��%�k[�2��YA<3� �3�KS�Q�K�@Ąݍ�����9ḅ�gN�8rp�f��)�P�Ģ�&t�����Tp3q�S�2�����ұX�}?��E��o����?����?����?����?����?����?����?����?����?����?����?����?����?����?����?����������������������V          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/minijam-19-8-2022.png-cce9d9c4fd78c8ef08d2881ac0d36f89.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://exports/html/minijam-19-8-2022.png"
dest_files=[ "res://.import/minijam-19-8-2022.png-cce9d9c4fd78c8ef08d2881ac0d36f89.stex" ]

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
          GDSC            Z      ������������τ�   ��������ض��   �����������������؄򶶶�   ��������Ķ��   �����������������Ą򶶶�   �����϶�   �������Ӷ���   ���������������Ŷ���   ����׶��   ���������������Ӷ���   �����������ض���   ���������Ӷ�   %   CollisionShape2D/VisibilityNotifier2D             
                                                       	      
               "      #      $      %      &      '      .      =      >      G      M      Q      R      X      3YYYYYY;�  V�  Y;�  V�  YYY0�  PQV�  �  T�  PQYYYYYY0�  P�  QV�  �  T�	  P�  P�  R�  QQ�  �  &�  T�
  PQV�  T�  PQ�  &�  V�  �  T�  PQY`     [gd_scene load_steps=5 format=2]

[ext_resource path="res://img/projectile.png" type="Texture" id=1]
[ext_resource path="res://goodbullet.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 8, 8 )

[sub_resource type="SpriteFrames" id=2]
animations = [ {
"frames": [ ExtResource( 1 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[node name="KinematicBody2D" type="KinematicBody2D"]
collision_layer = 2
collision_mask = 2
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="CollisionShape2D"]
scale = Vector2( 8, 8 )
frames = SubResource( 2 )

[node name="VisibilityNotifier2D" type="VisibilityNotifier2D" parent="CollisionShape2D"]
rect = Rect2( -8, -8, 16, 16 )
               GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
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
              GDST�               *   WEBPRIFF   WEBPVP8L   /� ��f6�����            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/boss.png-7aaf93b70ee8cba1a167e31324215ac7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://img/boss.png"
dest_files=[ "res://.import/boss.png-7aaf93b70ee8cba1a167e31324215ac7.stex" ]

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
          GDST   X           �3  WEBPRIFF�3  WEBPVP8L�3  /�Õ �'$H��x�L��'�{����ֿ��0m&�=�"�;���UK����^���� i����
HHc�4*]�;���00�PBJ���s�u	����Z{���D���$�q#)����ܣP��B?�ml۪rшT������H�R���+��fӶQ�ɟ��������������������������������������?����?����?����?����?���1}!��dY�b���$M��*��t^�����h��W����?���?yd����QCQF��AF���x��'�v�3��a�_�g�$RO&�������,7)?ʵ�}�S/�ٶ�|�g����7'���Q�_)�����^:?�%n ;�vdeG��o�+h�D|��+�~�~���,����"$�e��1��Y;�*97�86q�e�
��b����9�h/�ǧ���7��W�
�����m:�ϼ�X"UĊ�з5�;���ysܸ�:Ò+� ���S���qòMCs��x�R�R䕈�)#f����I�<�9\�l� �ΕP�"n������ˊs�P��׏������=��-6����{{Ds���k"�^JY�{�M,��7��7�_�2(�m�W�I��
D9��\�E{����#�2�v|q]R<���J$Ӏ��p�&Z��o�^8)�c�ȏڷkW�%���*4{̎ �)n�i�XԮ��io��nh懆�Z�S�2(�Se6I��F�@�kKJ�@w&pZ{|��i�/.�9�5�P>�c�*~~��q�@~RPG���e�J{z���/�9�SX�I"���%V�'��,o��y�U�C�&W��j�d�_MҒ���������[�
'��I[?p�Q�|�_����|c���Ay>!X�W�?������g62�˦�[`�-��G���cu��u{�ٌT�C�X�/��P����(М?�p{��	5��	�-���ǟ�㶼^T��o��>c��Z����>3��L�(m���;pS��|ķ��&�:���YW76�1�k4HQE���E_�H�ԓ��D3K�fE��Ô[D{�\�b�=�G#�4�d����G?q��I�T{��t�Gd�#�=�2b!����Ʀ��) �<~�M��(�R���n�l��(�B��L�0��NC,�R7
ʄLV�62�w�7�~�d��g�����8�S�}��'Fgm��e4�2
B�C��0t�O]�q���~�Eq;�䋂��3�Akj �[��QPVg�J��(�Ϻ�ܛk����OW���"׀��˙�b�)���ƙ�����q��A��2Z��ie|�QNg��wkd��	����J9`R���¸�;����H�MSZC���4������ӎ�?��l,b�l�cp]�Q�k.Jy�g�qhi��.m}�ۣ��J��h���n/��7�2��p��+���U��<��v��m��O�9�)�I����!�Y�e�E@�C�<n\�I9�� 7��S�Ai�ͷ��"u3��
)��1���ǜ���v���O�V΀���7ʧf�@l&��@�2$
ʪ���<���-N9 3͹�K&#+�eb
�nBZ�&H��+28�_|lP�;:��!�`���V&�ks����T����-�{��>sb��R����P���r���K�$6�ׯU��f�N��@��.�D�yK� 5�a���D��W�	�6�^����G�1����J���l ���'ɷU�`�Q�s��p�
)�-�#c�BF9����*Vb	(+Kq=�@��IQPt�x�\��X��4귃qm��)|6�Pn�,w�:�OZ��J)��G���O�%�`@v��
����L���g*�We��A<�g��\�^8�fʴ���$��(ۺ� �ޓf��L<nʁȩ-����/�)����*�є��YV��l�Y� ���@
�V���]�U�2�O!�c�pĆ=��X>��>��`��DO�2X2�Qvys.Gfw����ﯠ�a�؛n�ʠ�l����eBa�����/�:~�m��Rl�+N$|~�b�l�-��k�[ߊźQl9�?
ݟ@ygB<�^2��p�N:�4��|�2N�y�[����˛�3�w��GV�-G�|T�Pz�)������bD`��{e��"~~5X����_L8��$:+�h�<}<�w#����"�is�U��37GA�P�6��˛I>�LF� |�s}��W����)�Z&��H�3����߁�i���r��6�������@�Y��]�����W�;Yrj%��q=2�H���W._0e̠�-���|���w�Ui~�y"QT���sVj�DF���-^����|��8VOË�_eS�4`d �(����3�ow����E��ݿ���S����Y4��"D*P���<��g�'�ރ xN�jM��^2�vU�VRsf��ˢ��R�c��}�������܁|���G%��D>�`e<��ջ%�lW�H>}�c���Ye�6,��rN�����#�"�B��:6��ɽ}*0\e���ce�7��ͷ���Wv}����1���#�Z�k�4�F@�G]�+R�_Z�	���A�J��F����Ra`�,�@����]�����f9(p�>%�c�۴���#��˛ə��$FE�&sM[���4�0c� �VQ�Gr�I�T�ja>����YLl����wC�RA
'/V���e���3���$8�;���#�������ZQP�bܚiA_�WVb���˭0v�mkpq�@y퐶�i�
Bl"���B��~���'�u�g~�p�T�ZS��gG�����D�����+��'���@��*���|��*9�+^��<W��#^�4%�.��B� #PJJlDlDX�����L�XG��q<�N���.��}W=��$�_��1�2��>�Rnv�,B��hdx��N������((�a3='�[2�R�) �muxs�o Z�Dl�L(�?L�E�(]�-�>s���ϰt��<E��R��{���7a�?s��$E����Ώ�S(xcd,�r���H+���
Q���Se�?�7b���B�g�	i�$�Vj�{b�8#��y�2U�/$���*�-Ƅ@*��Pn���`z0j�)�����>����E�U�+�i������@Ӕ�l���so�'�@���v�H?=�mU�.���C�7��:�}�	)��:��8�E��Z(���������8�����/CS����9\+ݼ�+����vn��2�x#i��MHnU�Y��Ee����7����-o��I?�Q�	*�lb:
Fc���KR�B��
��&� d��c�[v`�1�1X�#�ӡ�K���6׳�6#j�����@���@ta�v>�Q��G�J#��^�V�p��DS��,s6 S�t"d_�CVi�0�s�;Ve	��_-q*��i�Vt4g���kG�[t�T#k�j��S
�C~�y|��\�n�xdB¶�~��H���Q��R�j���9�O}�=�U�?5EwA���������l���NZA��'��[����	#kG��(+_b�?��{��@q��8_G��h��Ir;9�(c ��dR�u?!Η�H���8�"!e�Y�b�����_#�]����\[�sF�N�F~���Q	嬰2JFy]��3}��7�C�o~�~�嶋o2�V#\���*�0�Z\�.��	n�cGz����x`�Fj{;�Ƨv����Fֶ� R]�WJW-��tY9$γ
X�\��$���(��u!D��L�����;���Ò
mĞ��p�;T��MB_5�����a\���`�X�e�j&�PW�J)��	�d�F���ݸ�*��\����dR�S�M���s�h��@���R�H�L��J}O��'�}��9�(Q0�)����l4����:��.��R�b��\�zb�@R�!b��Y�^�n z(�������~�uÔ-.�!E�45[�f��a����$�Tt�l�8)��4ǐ����J"�������� T#Q�%ln)jqm��*��W@�!��ߺ3����E�*1f����܀���}z�׽2G˛LVy�
���6n$���L��V�R��3#$u�
�Xb)�aƔ��������o�����B];���g�lu�a��O?��?=}�Ju#N{@��*_B �,�LWK�!�* ���.�����p+}��x̲��,��dL��������^�+oGm��Q�{^�]C��cu�z���$���O`}t�C�=�'��rb����1�\,ux���c k�͵�Y�s�|t0k[Ք��DH���������C�U"�QMF�:ä��u������%8��5��ݖ�n1�ۍ]%�0\���F�
�8ML�c�TE��㍴u;�ubʃ`l��?���Fڟ�fI�L�ɠ
R��rtx����Hu�w
{��)��AV�$2:�CMͼ~���UI�S�0�h��6Eh���H�5���;� F#�u�詹��QX��E�:Y����_^9�(�P�	Ɍ?DR	���N@�S6��DF��͝>�'�Q�$9�TLo�N�6���0�f�!E��
LAOFWA�K[�U'�bRF��K���Y{��ɳ3pp�9��G|��
L]� ��%ķ�ؒ׃������E�?���}��;�~m�^��n���sv�fg���R V���vB�E� ���B��Oؑ��`(+*7����E�MI��vUG
��_q{�}�d�
�c�����Ɍ���$�`��ڌ�	������Tw�
�T4A�������V�Jx��� &/1m����t!��'�"U�n�+�.]�= ��<��XEP�T�LKy̽R�`V���׈�Y}oܱץ��OH��E���v$�H<�65��#��.Q�f]����O��z��r5?X�{1^w�U�|r&D3�|���*����s�Pi���8��ci)e=�w��C�ڝ���)h'Jc�S��G^!��Κ�wu���P��"W@�2\(�����-o2��,��,yA��=A�s7�@�cb�\�)1E����?�����2���`���c�x~�0W�J���ˬ�n�>��G	P�<��ʹ�$S���=���rx(�6U ���l �S����h+�j �u��`ܪ%��d��{���OGm����m�s(��DQ���cnW=�>	P��K=�h=��i���(�R1��\�j¾k�9��J���S��7���!ţ�ƈ�'�5�C��H\QK@���9!�Δ��*��?Dˀ�jb F4yk�¸Cˬd+Q�H��.&�X�u�N��I���# ��1OXK����s�l0NT�m�u4=!�=�{5\��;�`�����T��P.�+�����:Aa��`$F}�H�����E ���I�><���G=֠��2�lRSt<I.��S���Tx��㓈RR��Ϲ�W@�-h��~� �vE#���f�� ���T�&Z�Y�I3��e����Ŷ���Ԡ�6%�*4/���ቶ;?���3.�N'��5�]pRv�S�-��d��b�����I+���_k{@�j�O�.��i���\;
�Q����#�|��]�M��(M2Y�Q��޷�]�qr����-���Hʁk�ۺ����G��S�����`{^ϝ"q�vp(E�s�bJ�5&�
���XFG��h1�j^���	�1�Ϫ��x �@��J���tA9n����<\ȳS%
�Ù���#�K��߽���O~���ٻ��)�I؞���G*k{�� �T����0��\�㖲�C�tj>i5c����#`96��-���إ�3Ĵ �dz�NV�ۻ��n;�q��FR���|��*g$8�M�S�>�s�r ��L�㐳� MN��(ko����<�Y,@�,p�����}����i�p-��!��r�[���q��/9����"�QK�K�B���J�(�q�3/�z#�șЯ.�~����ئ��q��(�8��#!�O���ޅ��3,:ACĻƹ]B���E9�zϛ��ry��{е[9���~@"��.�D���3
��B�㐟�h�øO�4j4Lc���[xD$�<pP��߫g�(
���i�DM!��YQSo�DQU����.�O$�,����"����X�G����1�n��T��=g���������
[	�Ŏ9r;���]}:�m��1�?��P�at�$j+/�
��g�n�'�H9x���g��dW�����R�з�*D��1�����w�����N9�)b+������&DA9vQV���n���({���Ӡ�R��o��]b�eat���Ny��r�*D~Ǆ3��S���w.8��s�UW�~���IB�_Pg��������쀝M�L��^��Q��p7����QXL�;���
ܲG����19o�^��<;�J�U5�3��l��S�ʠ"ܓ�d�5� x��w��r#�y���G-�P9\+�տ��rJ�@$I�xᜌ��p������HSl�8�=_XGJC%���8\}A����Jl�˛i}b���r�l��H!M��1��=bQ,V5�ʡ��_��r@~�䉿7e!56M��;�񍼤/�����Jg�1�)�Sx^�K���R�UsbC�\�N��H�cO�#���s��ܩ���ln��;��{U2�O�I�9?7�m%3ʓ��5u�/I��W��^
�Jٵ~��$9،���Ea8�C͸�(x�,�QB(��ޘ�����6�$�����^��O�k�&�P��@�v���>U�_��T��TԸ3B��_���������MJH�21�W2Ke	�h~R�fI������K��Ӡʹ;�7_pڞ���;��3�����v�S��5��3�*,�����#�V-��ĉ��B�s�U	�����\����/}����x*�/�&|��`�Ҏ��>A�C�9�񆰒H�vN�Z)~=�
�~F����>;�"��a��WQܬ�����p���!�Ni�Tg�^f��<�i�18�JJ��(���ZrK�)O�gW��7�#_.R�o� ���,6�һŏm�6�^Y)���^B�߄�sň��b#�^(W�Y����Sz�UPd-�ܷOZ�)��U�[%Oz�hE����У�f�'�ė��.G����z(�E�'S��2�v�QR����7y��#������D�{��+G�������n�B�{�t������j���o�اfN�8jx�Jj"?����&�U��M���>>e��q�qc�х�FU���#Rk��}��Ǧ=�h�'��ߪAQE^�0[����)��b�����)�Ŵ���pFk�^�|��ҕ8��"u��{�?���?�����������������sCA:��.��;��^�]��C@����x���S�&�IKٷ���f�n���YY�#ע\��]+����|�I�~�j�K�>ֱg~������M��#���ux�4�����,�mJm
X,q�ߐ0v�܃�}-��dB�1ĽqT��h�nY}=����1�v��VшڞW����l��F54��y~�r�=�)�w�i����P'霻���0�.��B��	h�T��Dm�6�S�D�%C���9��nY	����?O���s�ltH/�����i��}����KD���x7w���B�DHFF�>���`1L7�üJ��W��{v���e��WS�bu;�NxG��!e��n��3(��/�,M*o֠�O8�90������|7�� 9�A���T�/f� �0���P�"�r��}Ɓ��B~��D!�Kqǟ�m`��B��$���$��rG</t�����R�}���U���$`�b�8W�c�iӬ����Mk�GRi]�n�E"���eð9����!���XN���mwi��IN���_0����=ZܗQ�
+DV�Jgujn?"��P�o4��!������c�e�}P�� ��lwX�O]�R׸gVy�U�`o�mD{��)GL{�pH�O\~�P���CZ�B�|�J>x�����9BW���w��|0��PehX�U��"���,�-,����C�b:�G�q�x��Kw�����=[5N1(��b���q�����q���w�=m�Vqf[���Cl�0��&u�x=��s�Yw�L�,�.v
&�l�� ��RxL�ٍ�(�w��s��{ܱ�,��2�!���ӆI+��nr��R�a]D��v@�����#ls�<s�z`tY�$�R�w�ĥ����e�ݑA���*�A�a��>lA5�I"R�z~�@�b���CZi��	�W�N��q`��I9`gH��!w�*C�����[@B)"��DT�6�u�<��y�My��	5����u���;B[O�<��1��cy9)��(���|�m��yV_�@l����������ř����U��ͻ�B7G���w� �6�:3Bʯ������A�8��~�{����r�������_9�G������X@t�G0U�yQP�F��r Яy�Ȫ"���nl�{e��2Q\/6����OȹD1�21��k��q�!�R�ҭ�q�R���m :D@9�=�{��q�;t�l��`��2Jcrh�*�&X��\Vʁ -���,{��}
�0󄢞����F��>@I�>������#��؈�$�Px*�s}�V�c�H0��x�DZ�V��pȆ�	n0��n��V�@�d�o�����o���@L��N9�s�᳐���J���3�/ p�����9�UBo'Ґ�)ɔ����H�O�o�:�XԸۆQ	z�J`�9��4������F�(����'!|�P
�L�[�GS�\�`��˴R����%�\��"���Em1Ub���9����m�VD���AjN@8��TIz�N���L9�Nqs����>}s��	��i{S��E퇅����\�� s��a�(��ǐqU2�`(@�$ys�`�/�.�cEh7� l�誣�$C|KH�<��?<���vo��4��t�h�\���w.W��k��N˥l��(���D�S
�p�'���B�A�/Q��l!Y��Q��̡\�X!},c>�H��X��������rS� �L��%S�֔)T>�
��;����k�Tv$�k�a���GR��w ؈�n7���ۯ$y�$޵�S�Ά��ɦy��5��,�r��k� u9�t�,ɺ*�cT:����J�((�bJ.��㓌��p�1�1�%~�rKN�})���S��a����c7�Iɥ$.���\$���8ș�|�!�>w0��;Q]�z�4D�h��"�r�L�˥Ѕ�ذ����s��=�DN�ʜt���Rs.��~�@/-�r�<$�no�Z?�L@Lϵ��7_ ��W��QP���m�.p�*t�o.X�s��G�!�g<�j1���;�C��O:��˥����e�Ӟ���	�c�f9�Ob���!DA�9gM�ɦ�\�݊C�Ѿ�F��o�<ρr�pvTrh=. �Q��q����yT�� C}��60C�yV�O$[�Ӝ)y+�='�(ꏽ_?���J'a���$��������L�ΨC��?�UT_�p% ����[���%H硝�sȥɧ���Np?x}��W��+�W��P�]$���h�SN�J7å�ސL��O���jW�0����b�Bǭ��:D��l�0�O��������	�YB���x��y�"u���J;��R�8�'��&)��d�)�����֞��iW�'wB/��yf�!�}VƝG�E���r);|ΉsA�Î��:�*=1��ls޺����U��h�+�����P2��P�Ֆl���8|]���{���������p���!i�O\�l~���~�@�tO?�P��+E-��g)c�-���|猡�1���3�b�C�f�@��)�%~G�������4�H�8~���m_���@h�GM��!��8cG/o6��J%�r���� e\�,��h��U���Qt��D~�T�8X\�ˏ�C�� ��R������A8��u�� +��v�9]W<�3�H�:�_.��4�!��p'$������g'p�T A?��]�5{R����P�ā�|UO*�����a�B9���@wɺ*=\�a���QP���#���:ԫ��7I��w¤^�mx�DP�� ��G�kHɯ�u�D
MޖK98[>��݆��@�GكjQ�UY�3�}��mg
X8�0h��<TsF��	F���N����()���q"��~��A�J��$0n5��R��Жw)�&tn�,{p;vǛ5Tv�!�:�l(P).�qť
M9`�R�'��}�����������7��F�NX�Zr����=l�|�C<�/�j�"�ǔ�Yw�z>I(�3�r�{�䤤��eF��?0R�y)����R�XL�����Y�ˑ��= 7kl�-{`�>,@+��:H��is�h"Q	+�]�1�rp�)E��ݤ�<��}MB�x~��WG�cv�� �����; 49�3j,7�D�U����¨�LY�Ul>�
�R|߀�Z�/[�'��\�J98l�m�;!�U2�#Uz��2i뇗s�+^����H��煴 ����*Q�7 �m�!t��J�Lن�G˚+��Y�ެ�*;HlK7

$A���;�R��
P@9�=�C�<�r�����$U͋�\#`�=ֻ;��r���o�b�`���>(����%TJY��]��c��#������T�}�s �,\qə��\�W�f2��+��s[��&=E���!3�Z ym��8�({Pw6-����o����a�bi^���g$�j@t�F�9�8,PFi�$�aazL�<���4��ȴ�2#K�,Ϻ���_��lքa-K��1��p�z}���( �H����6��:�.�=�r���%��c�xЗJ90U��H������,���ґc�MCP)A����F
M9�^RO�b�!��Y��gQ&��b�c7����^�e�>ɹД��'�*�e,5T_��2[e)�U�k�3Ie�R�э�r�̾p5�5M5���ѧ����l���$e>Oxhʁ3+!���h����Ā�C��An8��@[^��t��D��'Aj�zv���ݳ���Da�es��r����:S�iYW�����T�(y]-�ݑj�IE�4���}#'�_��7���9�Ʋh֍5_�B��.�ھ��
L9pHe+�/YW� 9����yKfPE�6.�L8X0ۡ��F��������IK>{I-�����	"�ͺ*%����3�**�>�4�ɫ�5ಋ�|J`#�s���M�t��q�q�b�s���A�1˪讑Q�b�Y����<c��3eD�@�^�l��.%8/����<���1I�����|f��q�xP�ǖ+(�Z�Q=2J7���Pq�r����}�=��oiυGcƕ*��q���p-��M9p�N+�}�n��5k������H��Ø�(��-�S(G!��
돃������gQU��)֚o��
���圽�-w�=X$�t�Uy=2J��(��*NR���K��Sȧ�q��(�'�eyHa�O>+u�GS[�H+m��J102�9��o��%�@�mQ b䇧�f��¼��ޒ���ܚ:Գ+�e�PTU���1��֟�K9p��6*��r�$��ʢ�(͍#��O������
O9pM�H��i�u>��h���BQeZ���d��_���t���:{<�ⷬ��=2�W�`�@��S:<�����ʚ�]�:Eu������§.Q��6�v��褡����E�?�R������	����!���D��D���e)��=���|��t���8�o⑋�B��N�����gY�����` �κ*��Q\Q>Tq�8�L9��I��a�	{-�����lX�|����M�~u�,�C�dR�C/�\h���?'�>�Z-�̒P�e��N�(����p���F�Q����Њ��,3�]x�K1��b6)�]���P�A���ğ��Q�A�HʋQN̔�;8��~����嶽�Y��0h��;��/�r�����R�W\)���J��I�'��q�̔��Da|�*q���}"�
U��t�LJ�����<��e��˕��@��*�3e�ӳm�$k�0���1N�C֏�<�
�ƹIc$�<�	��V��u�T����(HY@���(͌#�����K��ҧ�?�,�������A}�ң��PC�bc?�"Jf�O)�c-�f)��Zb��	���Z(�]�R(#��6�S�*�,��dS�LH�G��2�BW�$.� �,�J9����j��ߕ�ʲ*o���}�ЄX���<C<@n�5�q����ux?�
݀�.~��V��I9ؗD<^����/�G�˺*��u�򤹢B� ��%4'��XA��t�^k�'�Y[KAU�EX�;A�5}��A�K���>���uaT4�I5[W�, j���@ʾP�_uIS����z��(�$m�u�>!��H`�ԏH�dP�A^��\��/��6r�o6�l)��Lو� k�l�ֹIy9"ʙ'�`�[hb�
��|=����R8�����^���H�4�L��
(�ٗ])����,�R4�+}#��a���{}'S���S~��x��xW@�
�������p�e~��:�Z�{s�/RJ;�ģΐQ���Y��Z���\���V+�-`�'����r9�ذ�w5E�~��F�+S'R����K��~���]]��%�k[�2��YA<3� �3�KS�Q�K�@Ąݍ�����9ḅ�gN�8rp�f��)�P�Ģ�&t�����Tp3q�S�2�����ұX�}?��E��o����?����?����?����?����?����?����?����?����?����?����?����?����?����?����?����������������������V          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/loading.png-009c4a1dec6f5eb4d5c11432a83bd314.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://img/loading.png"
dest_files=[ "res://.import/loading.png-009c4a1dec6f5eb4d5c11432a83bd314.stex" ]

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
 GDST�   K             d  WEBPRIFFX  WEBPVP8LL  /� �,ٶU��ֽ��<��A�	w'�n����9p��������������nq(������s:j���gۅ^�\.����9��D#�Ǘ��Ŷ蹡�q@�$�F	�H��*Ï����Hrݥ��3So����ʔ��#<��" ,�5�������O+��&�|�M`��q���_#���v1�i8=�s���[D�̮p�S�GSS%ጏ~j)0 � ���n� d��!��<'�� �rxX64@W�S�tU��eO����ձz�ϝ< ��~��ܠ��ָ�(G��C�Z@m��qe����%�5��0U#O�[���BSY�j�ѐ��)U#�(q3�/�Y3I�l��ɝijo��������#IO��e��Z�ˢ�A���]Uڔ��x!�R��Ky�/ɯ���{u f�-U��@�L�埖���f$�H�%��#��r�D�B�p#�,.��8v:E��=5�����Y��o���0l��D^���E�0�����Nm�\_�=�Z�l�����'[�	��f������ݩT*5�4L.m��/t0���#Li�	A������l3�?[remap]

importer="texture"
type="StreamTexture"
path="res://.import/logo.png-5e59f479404a7ce87a0fab15f867eecc.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://img/logo.png"
dest_files=[ "res://.import/logo.png-5e59f479404a7ce87a0fab15f867eecc.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
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
         GDST@   %             Z  WEBPRIFFN  WEBPVP8LB  /? 	 �$I��zwҝt�4133�J�����Ţ{�ެ����dҟ��L&/?�������]%��Y]�3�N��̬�)23�)$�{XR������S.i�6%@И@��C�S��J5��EE[]��'Їw��@�N�����p��1�{��E����> hT�u� ^y �������,(���1�L�i`���h �CA,�kq�G�\�@�G�NШd��	��ցy_�?`E�zzK��X�<?�>}	t+<Z�7Q�r)��-�#�v.�� [uuuu��ߢܫ��T���*03��`Q���
��Y�g���)ſE�vR�I?          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/play.png-384a56c3f87bfaf732f5976224ba92c2.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://img/play.png"
dest_files=[ "res://.import/play.png-384a56c3f87bfaf732f5976224ba92c2.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
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
         GDST               *   WEBPRIFF   WEBPVP8L   /@  P��������            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/projectile.png-37247a08b92d6933bd7a0d14ac338417.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://img/projectile.png"
dest_files=[ "res://.import/projectile.png-37247a08b92d6933bd7a0d14ac338417.stex" ]

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
        GDST@   %             H  WEBPRIFF<  WEBPVP8L/  /? 	 �$۶U��}�O�i����ppwwKp���*<�ϻ%j�����9��R9�^���ߤZ�>�[��1������J�f6���%�?���(� *&~���3�^l�m����d�s.VY�ʓ�F�z�(:�p��tx0<(��z�\�� �OR���y0 �Ku]w
lHg�b�O@iX+�#���HjhO�6n�? ��V����o�0	�w��ɗt@�%A�1���
�#����ζw�;���(��������r��l$��̺�]�3�$g#�^<O�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/quit.png-6846b2f867eecf691bad331f8410d32d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://img/quit.png"
dest_files=[ "res://.import/quit.png-6846b2f867eecf691bad331f8410d32d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
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
         GDST                P   WEBPRIFFD   WEBPVP8L7   /�0��$��2A�����
AM$[M��~=����L��HD���9���_
     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/spritesheet.png-74ecfaa82622e3fb6a6cb9e2e62e2823.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://img/spritesheet.png"
dest_files=[ "res://.import/spritesheet.png-74ecfaa82622e3fb6a6cb9e2e62e2823.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
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
    [gd_scene load_steps=5 format=2]

[ext_resource path="res://img/play.png" type="Texture" id=1]
[ext_resource path="res://img/logo.png" type="Texture" id=2]
[ext_resource path="res://img/quit.png" type="Texture" id=3]
[ext_resource path="res://play.gd" type="Script" id=4]

[node name="Control" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0

[node name="TextureRect" type="TextureRect" parent="."]
anchor_right = 1.0
anchor_bottom = 0.5
texture = ExtResource( 2 )
stretch_mode = 1

[node name="play" type="TextureButton" parent="."]
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 1.0
texture_normal = ExtResource( 1 )
expand = true
script = ExtResource( 4 )

[node name="quit" type="TextureButton" parent="."]
visible = false
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 1.0
texture_normal = ExtResource( 3 )
expand = true

[connection signal="pressed" from="play" to="play" method="_on_play_pressed"]
    GDSC            *      ������������ض��   �����϶�   ���������������Ҷ���   �������Ӷ���   �����������Ӷ���      res://Node2D.tscn                                                    	   	   
   
                                                               (      3YYYYYYYYY0�  PQV�  -YYYYYYYY0�  PQV�  �  PQT�  PQY`            GDSC      
   (   �      ������������τ�   ����Ҷ��   ���������¶�   �������Ӷ���   �����޶�   ��������ض��   �����������������؄򶶶�   �����϶�   �������Ŷ���   ����׶��   ����¶��   ���������������������Ҷ�   �������Ӷ���   �������ض���   �������Ӷ���   �������¶���   ��������Ҷ��   ���������������Ŷ���   ��ڶ   ����������������Ҷ��   ϶��   ζ��   ���������Ҷ�   �������������Ӷ�   �����������������������ض���   �     
         res://goodbullet.tscn         shoot                up              down      left      right                                                       	      
                           $      +      ,      3      <      E      M      Z      a      b      c      j      t      }      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   3YYYYYY;�  Y;�  V�  Y;�  �  Y;�  V�  YYYY0�  PQV�  �  ?P�  QYY0�  P�	  QV�  &�
  T�  P�  QV�  ;�  �  T�  PQ�  �  T�  T�  �  �  PQT�  PQT�  P�  Q�  �?  P�  T�  QYYY0�  P�	  QV�  ;�  �  P�  R�  Q�  &�
  T�  P�  QV�  �  T�  �  �  &�
  T�  P�  QV�  �  T�  �  �  &�
  T�  P�  QV�  �  T�  �  �  &�
  T�  P�	  QV�  �  T�  �  �  �  �  �  T�  PQ�  �  �  T�  P�  Q�  �  T�  PQY` [remap]

path="res://badbulllet.gdc"
           [remap]

path="res://goodbullet.gdc"
           [remap]

path="res://play.gdc"
 [remap]

path="res://player.gdc"
               �PNG
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
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       �PNG

   IHDR     X   ��#  piCCPicc  (�u��K�P�OS�E+� ꐡ�CEA�]��Z��K�B��$E����Pp]��t\AD���Z����B��/���sy9Ig�ӗӵs���ZXC�#F5Af����J�~��!�g�>�uU��0�,�l�x�X�r-�{�ì,�O�6]�����o�K>q��E@�3�R+�ʶA<E7�*k݇ID5W���R��A�!BA���"Iݤ̺�RM�*�a��P�M���M�Z��*u�t�5���<mfڟI����9���F��~O=�q_�k���PNsߤ��Z��� �7mM9 �v��gK���4�� �
@�X��j���	�o�/���I:���g��V�!   	pHYs  a  a�?�i    IDATx^��%Eцۄ���D��s�3,H��9�d$	�aAP��"����$�$ȒdY�������.��33]=g����s�E�LO��5=��U�_pε��@ �   @ ��&��!�6�@ �   @ ���0 �
�   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �@ �   @ � @ @:�&B �   @ � 0 ��   @ �   �� ЀN���   @ �    �   @ �   @�0 4��i"  @ �   @  : @ �   @ h  �d�@ �   @ � �T��x����/*�W��׽��@ ����/:��_�җ��_����W��q�Nof̶������v�c=C����J�:Be�~@ �N`�V�:�A4�������1���\�-����[����q��3�ট~z7�$�$פ3�l������裏�߻��^y����/'���z��}��ɿ�V+����_�
���{O@�
�gKjtB�z�;��JLi�zN�6t�;] ��?�I�s�9��c�9�7���L3��&�l�d�N��������|�I�;v�3fL�{�7���O?�z�!�裏�q��%�j��}���Z���]SN9�[|���l�͖|��ߴ�N�&�h"���}��{���i�����.����kI>��#����w/����w��q���v@ ���\͙t���.p�-���T�����k�mV_�*J'͚0��j���\rI7묳v�I(��>��=���w�����+�s�=�LtR�C�:�v�&�뭷�;�#������-��Q�.R�i���V\q�"��ܣŌ&�~�a��w�qz�5�}��	�o��<�
�]ɰ�K���>ۄAZ�[l�{�4-��b
��?��L�_�����#�4��[E{챇�q��]���қ�7�<ӵ1/J�H^��-���n���r�,���`�	b>:1�=���ݨQ��-�ܒ,���h7�h���$}�袋�馛��xc�D��|�Aw�e��_��N�f��Q�N�	�m�j]���>��Y<���O<�6�x���/r��X�k���������~71J1BJ�W]uUw��Ǜ������n��ֹ�8묳�r�-���*�p�a�������"v�M ~��N�[���Į\|�ōc�'�I���j��к��{[~P����&�1j����-�K�������𵦞z�_�g$P첉'����GިS�%��+-olj]t�E�m��&�7�/uN�eQ����酟$����R��7δ���� ٲ~�ε��޸��;��ٖץ��ww[[n�e�M��.o��v�7[�z��X��e]��/�[�sL����IK��cm�Q��\l�'#F��I����C9$3��]���>Kw�����o�4{���LU���O�����`-o�����2,��2�u�b<�����#��k�*�*�n��Z��F���ԭ�Yq�Cݺ��̍)E;��<��=�ؖ>xu���(����7�|=�)��:���:���[)ǲ��c�K/�d�N_�1,�$��?�q�IJ��� ���UѢ��En���g���we[��ު9�����{-�m�sCZ=��=�{��O޽0����[2HXq�M�4J��=�2-Rb�w��fDH��v�m������飾�g�2|��\�(��s�Z�F���2D�ދ�8)�	'�`��>�=h`)�٥>S/��i'�W;Y:���{�D/e!})�>��t23�Zʂ����C�ҭ��F�n��{��9���s��4��ԧ�&I>���]����۽���6���tc�I'�*s{����_~y����z����O^���M���ԣDAy�U��������)��~��M-M.��!�bM��|W�Q}�b�1v�}(D����?i�\փ|�l�� ��%�wFY������C�w o����u*�9\a��\���i��|w���4a��&	��7�\sU��uTn ���>P�F(NWqUi����}��̔�;���`�>Ɣw����=��\�}QFߥ���mU�~�᝞��{��$y�u�Fn���������G�RP��2���<���/�]�[�X�UVY��y�I�N{�-�F���qw�u�i.#k=UbA��.��Ҥꐱ���<��c-b��S�g�_����'�t>�'*7�[�!�G,��oE�ݧqj�oTK|�)Ca�6P{��N+�è�b �B]ɎZh!Ӿ�n��U�2����MJ���~u)>��~���b�/�&G>~3�]Fѩ�N��~ч~(��o�[��3�7G�����s�e����	�g�I�����Y1�4 hB{.�2�(y���+9W�g�*ާ��$�;�#�F_G�c0�N�_Z����.K^=g�M7u��~z��^��J\�^�$�j��L��nl�S?�����*z��7>9*�7׼�*,��ƚNjE��ոVն�څ�C�&�x���߾�1�����\�:��'�x��g�Ҳ�p��\��w�R�)��j�w-Kۥ_>y<��e�я~��Ϫn*w�����GsWB�:����[��jm���̟����2>U�ԅ^9n��GO�^)ָH~�<�z�y7d���L��מּ���6�d�h�o�;��ş�4��T�ҡV������j�D�5��o���,�ݝG��H��tN���~��n��&�'�nXe[�f�e����>��WuAVGՓղo�P �,�Չa��e��g��Fo��o:�[G$Yy2����������^ ��B(��Onv뭷F�Qл���G�F����RzZ�w����̔:���]�o�~W^y���hcJlz�|��B�C�����Q�O晼��f)+��R��2_c�%��a1v�C���4ɼx(�;�~�byg����w�e^Qf�0 t��#���>T�^n��=q%���[6��[�]xᅕ<wZ��vۭ�XN�d�>�qd�ɮ\^}�������V9�_�������D��zZ�u��O���}�ݼ�E��e��GP&FM���i���^���ʼ�願��.�G��|���ϋ� �* ��N2�$NcKӋ���?��3�W���z+j7���
�,���&���c�'��R/-�� Ё�&M/��%o7���W���i��ƔS*�kn�u׭�Β>vSN9e��Wv�_�/�:�i(���N�7�갎)���e��d�Ύ<��N.jo�����2����^��:����a��=��3d�g���N�v�m+5V�=>�yڴ�!n�u����<s�-���1)��NvU���@�R�7�z	Ƙ�j�dmx��T���炞��6E=uc|s�ԛ��E������ �h���y���r�X�>����ql��?�y�9(}��>��J�O<ɤ�^�Ћ���W��墉�?��|ܱN ��x㍠�(s��S��"vk�N�}�ٻ]���r��\��������{�3�Q���!����]n�����Q�"ä?�ܽ���>��*�ga�9���1B7Kk�ჲ.R4VĘ�� rJL1<}�珇����)#���p7��Ǡ��?z4I�:��?�41�g��j�1 t虪Y��D���d#�`P%��ʢ#w�}w�Y��_'K��#F�(r��=��6[��@������Uܮ�Bf��7�����)s��XL-��u{YT��QX�Z��3���]>��O=��ݚ3$������X������h�|餼�v�a�q_4'8���&!%�����3�`�U��_`�2W/����^�}�2w�}�e^�XMʊ��^�ݷ,���:~�����bަ����� �F���W^yŽ��K��TO���s{�wO�݋��瞽x�瞩I�Yg�e��(�(��ƶ�$W+���qϲ�.���Z�W=���I�yV��xY���J�8p-ҚR��(�=�n�P`##�<�~�����b����EY����I.2�����D���w3�<s����?��T�d���x��|��E�:U���J�{��7�"#�?*��TN���p������O��#*ԪX�J"Uƹ�Uhk*�v<6�|s��_�}_�6    IDAT�pLXh{4ɓ�e��f
�*�~� ��y�5K-�TH��W����-1������o���J���j���w<ԥP��%��B(v�;�܌������n�رn�I'Mv�e���������ԦE]4	�jR�Μv�ifyx��$�t1�)'����K�d�����I�Q�Y�G�i���K-���2�Ř�^b�cZ�w9�3�������ks4k�ᝑ��1��ZS��1 @1v�/P�ʢ�nXJ�9}0d=���W_Mb5�ԄV�q��C���ڍV\��_�����L�9�n�=�(t��M2 ���$k���c�ɭ�W�^�7뭷�;��M�����矯U�;D%��.�(�s�ZM���\I�L�{��	-�59��׿n&[����?��ܵ�^�,�T4��{#�5AL�ԷN�Y�C�뮻Fݡ�w���)����,[o�u���_�ſ�d�Ǽ�H���v�;������a9�P��,��:�9����4�"E�]Ś��"k����1�۳T���M㛼u���m��('�jCXQ�;ݧ�~�yQ,�o�192�Wy4��y��w������x%ow�q�[b[�1j���'�-�D�������WۓO>����-���p�H˻s&?���@���կ�$���'���}�{-��,�\���}�-�}�~��{���,x�'J�a���3�"^�k�Xc�A�2��|���?J���k&���/hr=#�b��������0��ո%�yt��o�m.[�
�"��XA�K7�x�n���w?�h���x�/4>z�����{�?�6o�}�<:�k��^-��љ��n��C���^s�5��t�P켡&�ߐv���'��ȔVr�gf������Xٸq�2�Wb�w5�y�M�e�A�y>!�i��� �5g�.޻&H�,,���7����F�Zu�Uk��U}x `����#�Q�����6�=췿���(�)�*��%�\�������D�3���Drl�b��_����#��~���Ga0X���~���O2�W�x#V�bİ����t�$V���'�g�G�I��o?���:�w̢��n�!�Q-R����<�b�[ݫ$I��D� E����*��'?��[p��6k����{���,;��+����z�g�l�w�yg�Xκxq�һ;ԋ�ͳ�2KrT�E���~��Z�]�'�e�<c�E]d:��*A����W\�a9���ϓP�z<K��2��cd��炾�E<uu��ާ�Ɯ����V��6�I�spk.U�kJ?��5�`��mm9��ws+�*�n�_������0#�.m��&-Y�cx#�ș�^y=��-�Xj���=z���w.��xɒl�}r�u�n�vL���+��n7��A;yt������n���w�_�L3M�Lj�_��z���z�|Ҵ�6X�b�q��v������e�����H^o�J��:������ui:ꨣ���.��M:^�r�)fr�"�3�X�zZ����Ϩo�&�[i�V����U�)�M�+��|w�ȑAcZ7�S=;��L�D��8�A㇕GN�0}s˞se����>�eP�t��i��~�X�P��Y�XŶ$i7^��~am�(�><�s�u����](Y�eM�'A����eZ`�E��&�d��&�&%Ǻ�˂�Io�I e��Hvk�Q;&�_��~��DC!Ρ��
+�`*�v��-��HL�G�O;�c�De��WN������V�?W��=�Ob�;��c�%��KlY4����IRբE��k���x����?M���8!���܄�qH�X��:����CɫϪ(�#�<�Y��5h�S;4w��VMJꑗDZ,�U]c��Ub�w��i0�1N����/�\��5��ɲ<��S޲�2z]ҫX���*:�
=��~��XYd��&*��yk�:՗-t�9�d��f�O	M�N�he�giR(�γ�N��iҟ�1+�����EI_F�R�3f�;��ӓ:����p���8�L� ����c��)\�	�`�K��l��F�;��%�<���)i�e���#IR�6��2eN�[�^J���#-�����_���{
�mJ��}��NM<����z�ul�[l�Un۔lP?%z�dA��{�%�j�����}���(�N��*J$�Q���N�?�b(�*���:��w�}׽��;N��Z���ׯ����Z�T��;�|W}�}͢���ȴ,�'u�\YI"V�b�͵�'K]�NgPh��bC @?�1�G\���z�N8�$�Ͳ(���Z�ǘX꣠� ���EǺԎ��:+x�!�Hj�H'̡�Т�j�M�V~M@���������$ǮY��v�|�k��#�B��+��z������:����M7ݔk��>���k�Xg�u�vX-��;"��_���&�Zॹ4�m�t��E���4�Xc�ڬ1����{X�a֒sH]ba}����l��VI.����'�K�_��X�#Z(��_J':=�ʀ��{��L�W&�<��[�g�M��x�Y�3Z�+?�eI=���sǒQ��b��T���CƦ,�7� �z;�y��VŲRf%�Q�E����.N���	O�,��mY�8W[������8X~��)�@�&�Z�Z bo�M�(oˢ��B��<�iM�4�>z�ǩn��6�Y��Ě$�D�J|����eX���(��V���5ˢqYF�^x!�;.�u���i��D�i���_���"sK>U�K�R�6Z%�U��J��zNޱ>��wcu]�y�%�����:�b�KG�)٬e)c�:�g`�1���\˾�ZW�x�1�]Y9�^G�6�1������v��[�c�9&qw���W?^����'u�a s��D�в����eC+�&��&w����*���.���i,���:�N��`�PU�Z*|'��:��]v�r+�%��!�ʰt�.��	�OJ���`Y�s{��w�^��Am�K�N�h_��.�IcL��p����y(�6��#�1y��x,����:�a,�(�b�=��R�<uŜ��׈a�ѦQH�����ߐ�X���*��3�� �֋Zp(~ܺ�)�_��[�ܭT�?iW�����8��zP���i&����Eݘ."5��2 XǕ��Ŵ�.��e������l�O��	-U��O� Y��g���*���;D�=-��|pi�=�o�Ke�����R���OM����N�7���5�Q����/�
���.�r5O���U��ܺ��/�䒦�B=u����ʔzS�V��X!32Sl	` h�#J���9�K���C1��k����������s�=g�\�1����M(�	��:o7"H�� 
�(c���o��� � ��n����[�Q��	i;b$I*�(�G1�YO���>�X	����?��<��<
�A��q:o���7�!o��O>9I�(�u���sO����y�E�XF�*l
i<�Ӽ�7ވ���_|�h��E��ږ��)"S��1oS��	���*?@[�Ĉ�
�*��<���>��I�>���E-%+l*�������4 ��TSM��y���u�߃>�7^1�N�Eф�:�} �4�Zz�-D��2�?�T�����b|����Ik�IR��h���;g򸱎�/���1�,w�q����Kq�����ui��zQ�<���\}Wt�6�l��]���� ً��K�oU���w<t������m,��N.�����ȹ���յz���34�m��V��� �R�U˸�p����裏�g�Eq�]3�x�u�$�߭v�z��+�Rgz���>�ȵ����e9a�y�C��zo]���ɪɔu�NJ���v���dd�����ծ��igA��X&^+����ն�n<N��ՓN:)��Zǩ��)b��H��8뮻�;��s�P������G?�˕�VD&�{b,f���k/�����q�1�2��W��B�������ށ	` ��K�x(UbU,[i�!�r.s���d7��8ϐ#�k_���㼔;��z���^����dT�;M"VZi�P��?��Ě�����WA�:�����֓$+-`:��J��&�
��,2�5��K����N�vݫV��\x�ݡ�����׿�5	kK����8��+��"�*��1滩��e~����(ꩫİ���i��о�s����u�y�4�L��\���m�����e��j�b1������7߼/��3N;��������V�� ŷ�SQ7����MٷC]&�2���v,=�h
��S?ư�ǈ�W$��SO�M-s�]cGޘ7�Ҫ��j�7iҪݯZ�{�(gF����^O>�dnn��Bb�g�ܺ��3�8�ia{�n*t�+��ŵ���$���X �p��ǻ뮻�y䑉����[L#t�8j��1�e��/��b.�܁��F�"�+�Ms,�������M�	)1�m�g뭷vl�A�h���)8�C5�` �������o�-�4�y�^~��1�B���J?���Y��i���X/�hr����رcC�w��,��*@���9[���������Ę����v]�g�Z��dm (rV�&Wǃ��{ܸqn�ȑ�L2���\�����K/�4IY��E҈#���~���'��w_b��1&[����Q��?n!^P1��e$�ݟM��O;�,/�G}4x�/�cxg�,&�h� ��z��ѣ�x�͗��W�: �7b�C��1�V �3�0�[f�eL��կ~eZ_��4Y�qF�>ܖ�X�ZtXL�z�$�@�AK��_ĭ�?{k�����r#��C���to�g�vI�����da��NB+�E�L!E�"��Y�W:�������~��c���O4T�5�r�M79,ʤ�NjQM�:,=�
Q�#�;�$lO!Yu(z��Xc��j����:����~��-�1�(����o����w�]v�ěѲ�9M�iy��(����^z)�(�����myT� ݿ~�Ng������ku�`U���k�����Ҋ+�h�68k��@�T(k����]�WڋI#- -�\�z�!�*�����o� ?��3��{�gr|XL��Q�NY����Q)k�l-����)�_��E����r�YT��q�W�;�ӝr�)fun��fn�}���q�Z(�14>2�Hvgɠ�Y�w�t����Z�߬��<��U��ҋ�M9��ՂHz{�]w�|G���>�K���[b>|x��0��1o�ң�31��Y�X�����Z*kS3]g�����EB���N����uƐ"e�+;gY���Г��6+������û�Zk�����W/�B-d��c[�Rh��ο�1<�*���,(�]2�x[��S;��'��C��1��?��n��g�-Z$�pb�/I���b�$i�M6qJx�DcVe���w:��2k��"��z'��в�'#m�&O�z��T!�z/�/���堃�2��n�<4O����3�J�X��G�Z�/�|Ws�GᶷWߵ��i~�"le<���Ws��o�9�����"}r���Na�!uW�^ �Wb�CU���Iga[[Uo��ƞ��(��:	�dV;��Gc%�-Z�(�Y�ɓ�E>�6�(�c���%�Y��1U"��.�1&vU��o?�RIF-�.���9=�6 9+[�ߵ�^۲���{�u��NP�Z()�����-�TA zx��Q��PcN/��n��V7�sd��Ŗ3�bF��P��/2����XIC�2Um����'���9��Ƙei��5E��zv/�i� v�/:5�3S�Ҽ��n�P�_�:�=3��\r�,��F2+��׷HT�$�<�@f뭕���2�,�f�8v��\�	��G�g�-�d�)��b��/�0w6�N�+��w���,D�n�w��qg�Eq�G!��?��p0fҹ�sy�A][��v�-��]tQ&by�k�g�^�M����:�3X{0�-�b�J���7^,�ޓ���Vگ������
��>�/����S���I��j� 1�6ĪX��k�P�ˢI�7ܐ{c!C��h�~���g^dwj�&J�lȡE�J��.Ä� tџA���%��X���z�)+oޢ��3Ϝ����[��[&Ij��դ���3m�{����K����2������/`���f:���(ґUɬ^Dv�{�Zd�X��1,��_����=�ؘ��Tw��L�Tb�wS/�,!��:`��beB���lZ��չ�5H��X!3ermZ���6� �mV��E2x����4x[/`dUmw�-�]j�u>W�*�2�G��3������O?ݽ�꫹�,X �l.�r�_7bX�c����o}�v3�N޵s��k��#$>2�[�����^qR. �ɧ�\p�dѯ���N��;6J�1Z��|0���_��/����Yz4�PR_�e֩�㎮קI�Z�T�KEc�u~�^x!ѹ�E�5y��SĲ�e�͍��ز}�게���)?�8��M��� �	4=�?Fs�����#��l�M7����o�������4�L������#��5�K�N��ޭ�u�����zѭ�y�gbN�W��L֓$-���i�#
��Ϊ�?u���aEce`Y�u��?��*��F� �9M����ʥ������(��ʺ���;�}o��c,�B��"�w�G�]%ҳ,V^b�d�e�Q�s���_$!�@��;�RG��e�	��9U��� ����4!�o��r/6�)�,iy0����w}$,\��?K���ɓH'��ߢ(�`�	��X ,ڒ֡���AkWѲ�X�;ɡ	�γ�,Zp���wR���wv^|����$�XO����^�|��!b~�ލ7޸���w�y��.2ɘz����-������E��R�e�T~�C=�齮rYs�5M=z�5�b�*��2Y�������[�����ߝ�B�eh[�E�-j�n^�a}df�6��i����h��ҽ3U��]��
��>}�Xb���u�^.���}$�3e�#��#���iHv�8���Mv6�y�$� /c�, ����-�_ㇵ�v�ƌ�[��H�N�h����r��n�`74��{�s�-��s�S�ğ�����z'b��b��J���Q�f�Z��Rc�ܴ偦<!rו�LY���n������E����¦�Ʊ�VZ�k��$��:��^z鼷u�>4�_�V�=��"yc,����RY��o ����P�^Y�+��\S7Ĳ8��=��ӛgdW��Po����������  ޖ��p����]"Y���,�^{mn��%F�����\s͕yiU����,Zx[�(��%x�S� �ܓ�Z5C'�U�����j�U�Fs-��M	d�0p�i�u���ꪫ*q��S�V�E����B��﫼I����n���IC��x�Z��/_.t����� 
�.V	��ȥ�����}�ݺ���{n��.�K"�� :���4g�ku��5�\S�.e, �,)���/�\H��7�)�_��6�̤�i%ұ�/�8��,�!S2�z2Y��k\l�W�q饗�N8��]ު�Sw�<c��ʵa]d��#G��W%�?5R�3��V��v�tAG��g?K�u2T�d y7�j7^��^$R���ѱ�2������1�X��I�4��������^~��'�j#dF�%y|���^�������XAc R�e�]6����mB2l�0S���t��i�Y+�n���^�麇z(ɔR4�:�s��ORMr���k���0�"YϵP�4 H&��[ ��N��S�K��Ə7�0�O�+�$�駟�]�u�:	P���vX�0r��$ι�%�����Z{��Mޓ��$���V\�t|T��=:���h���}-ɫ�S�奈��Z1�d�oL��13U�R��U�B����b��(��K/U.����w��Q��;C�H�=K��9�����<TuR�U1V'w���=W����vG�ᬍ:_<$���>|�YbB���UID՝���]���N��xR����\/��7�{����������[�����Ȕ�e��n!	2p�hL�]�n:���!��L3M��u�^�?!�
���<BB���{���)��&�:I@�N�	՝,|�xF9b-f��[Yx�^��e8S*�w�Jԭm2ZX��k��9�쳛��Y$�����Y畐���zk�PH�5���z �pOV�J    IDAT���iu)��?������ �݋]v�Ŵ|�A�Yt񨏋>�J�gU�tFn�!�e(�,V� cX��oq�y^�u���Ęxw���ȭo�1��Lfj��'SY�����x�+���m�喦�Z�<;����ϴ� �o�ر�Mr?��ϓ��<Ez*��'�<�m^[����FԠ��;@� '�x��q|�M7�&}�7��PKc,fB��+ږ�����$�Ph�n�S����n�	'�vi����w�K�E�w֡m���檽�ފ���8ƼMk3�ț�:��\�)����q?�����~.dW�ĳV}��]�?��o�[�����Y�[~e���n�O�SS��X�_�s���]�[><����#o"[���'-�8�\ߊ��T-���*�1�A��$��_���]�[jk�o��g�4�І�0�L��>?�}�g��X��e'ֺ_}���:�Ҥ=��<��N�w��]�;'�t�I?��D��|=�כn�ɴMސ��Y���?l�6�칔>�FFS�5���?�����E:�=��d
iO�{��}���-Q�|R�8����;��.��G�(���nd'��ۯ�3U���f��w�p���[]T��� �;�hs�L2Ia9�1��[V*��QZ��&���V��_��:�˲(�_�_��$IYw{�?:�DG�U����U�I���!Ez�>���3[l��G��[�p��F�^er��.d�����4묳�>�3���U8� �cK���Ǎg]m��b5���)��D�`�g4}B^��[o=S������0��_�T&��+g�J̐�nc[�8UY�F� HqW\qE�~	͚m.P�
c�i#�BY5��v�!Yl[�K.�$(�C����?�Ђβe�e��\���ح�\/-�Ȥo:�^y,�ߙIbފ�k��*��g��O��r�[j��� 5�G -V���J�#Y'_S��'�|Ҽ��*��U�+�->b,>C岼_n�J���x
��b^�=餓&���������mO��k��j#E!ng�}�e��<7e����|�q+f��)��,���k^��~��o\p�If��s����U1eѓXy��΅���5�%�H ���U�	A�Zs�=w�Zt���j��騣��ry�k�@�?�a�h?*)k�K;��,�H�[j}�<>��J�6<F�u���U93t����)�P�W]uUsy,���s�d�bU���J�����+���<��v+�_�	��Z�̷?_�ӳ�>[�(Q�-S���{Z�z��>�W�Kwe��*1vԵ��������m��P�Yc��+�l����<����*��a�ݲ���~�:��=�����Ô��h!���b�ۈ�/����kd@��Po���b=�û�H�Q��f���M$���D�r�!ڹױvE����(����T_�NT՗�,���HI=���Á�H'N�^{���߲h�H�?ɠ���+���d��$��U��u�Y�]U������ �.JvV�#��,+�����{����Iw�O~�>�-�z�d�~Т�ꫯ.u�/�\�T,��B�N��6�;�]�P��];�>���q�J@Z$�.mG=I=��4x���b������J���:g �$D��b�zɫ�>yG����6�(8ƴS[��S�i�c[�8���[ʵ ���Y��m�Q�\Ћ�.Č��8�P��a(F��^{�U�]�����5��]��.� ���P�\uj��#�Vq�V�GV�;FU�Y���<��]?d�2гb, �kC��Q'T��kc,f����� O"�P �Ŷ�nk~ʄBK�ij��6�$��_=����z�����z���Z�z
��o�@�k��޷��f��- b��+׭��߿��f0�ο�>�6�l3sdJj$W�"qX���믿��\U�p�Yf)<a����O?D:�����y7�(������'$�6�m��L�r�ކj��K/�{���K�m(���^=���2��)���}���2L��,r}�y�"���=��>��
�+j��H
A�,2ڕm���^�|ӢJ�B!�N��}+O;=G�\�bX������z���a��~7-�Ɂ��_7�YǮ�qG.xˬ�>{gm�ɩ)��2��Z{��[:��+p�O��$6�n�!��~!VXF���Z[:���g���믿����ѱ�!z'}S����lie::ǟ���1:E�|�f.��y	>Z�����5���b$�k��zz$�SO=UH�T't̝��5�V��D|����Xc�~�}�8�v�P� �E޷2���&��+�����z ~W�LVՓ#��|��f�H+�q�e�M�gi�Q4��;�fc�:�Ӳ>�T����{��Bz��.��c�j������o�3[o$o�S���LC�Yዳ:A������޶|�x-�V?o5e�^�&�>�S�QO�Ϋ+������v����6lX�Ř���E�X����_���Ĳ���B�h���d�t�M��ں�;�d9r�%���f�����O�i&��9ڷ�r��<y+R��T��P����|��hyO�	hj����'�|r˻ug��ۅ�쳏��y�K1�ׂʺ��ڠ��{�]�^Q�bn���=�W�Ō�R	z��K��XE`>7Na�tI�rrKK��e��W7ѭ�/��T<�=��=��;v}ڸ��U���rS�g���: V���4'���:y�\^u�z֒f��z}��t����)��!�������S��\��6+�Q�`��X�A��3fL�ąr��g�y���M-E�T�G�eI݃�7�uF�'���n��a��w���Z^�w:V�ꪫ�y�T��a���e)Jd�wժ�f{�h����!K���eY����Y���o��o��fJ���/��O��'�(/�������!G*郲��� �6��)�i�p����Qs�1�;������H�/���78T���/>1�*(dE��Q~3 �	ҡ4�n��7wr�W(a���B�,�߈���������
�)z��i�4��F 4��5�y����xW�\�פ�{�q:��:)b*Hz���o�.��2w�%�ť�>Zt�E�Zk����(�Y�8�w�E~�Jg����@=��� V��b�5�(6Q'��?���M7]���I1X����K�~��o}"A����fH�\w�u���w3�<s�o��א��TXM���.���KG�_ټ|�A�w꓉�Xg5Z����W@~�Zh�(��P��W�J�����Za#��-��馛�����e���_ =S��]�M߭����㖩0�ꔾ�����|+2Ȑ#C�`�du��.��Pn��vv���N;oU���~�޴k�b�m��>4�2��V��F�]xK��O�*�	Y
�a]s�5�6�O@Z��w_K������/�˖r�#sZr�+���!�r���[��ȍ��
�#~qf!B-�x뭷Z~�#�Q.�
Q�.��r�,E���7�O�Kn�e������=�F�R�W8��\�_��1��b�ֺ��:��Z~����2�,ޅƙv}��k��Q|Bɖrt��=���)^Y�K,�7���O�nt�A��I��F���E�FP�vV��ޛ�����Nay~����3ϴ��S)rH�7�0�{��������r�5���o4eA��B�{���}��H0b�&TV$�>슯oZ=ztwV4Y�&P�o��MC7`{���;i��L�O/;JyG�m�pM��q��͙q�s�a{�k��뮻��e��ʧŬu�b��ʸb`lg돆+m���.1{��g[J��8in����@�˾��k���ʾ>f�
4fˇg��1n����v����Os����X��l��=)�O֋��l�@$���s��t}'�xb���?G��j�^���N;���E�?�=���<�@�8��V�� �'�P��w(���D?��&��n��)O��M(r�^c�5�xâG��^�sO<�����:qU�Y��dK�g�6}��Ǒ�����4��Z�L/�"��*�Q�0��[��blg���	�'3"S�����(?�B}��"��yn��o�\��B�><����5Z�X�y����c��B+\Q.�'�p�;�#��"U��}��g��)�H�:�[�x1r������g}O��~7��K��ӼPݮ��wo(�Y{�Sn��{�m��6y�R�k5N�Xg�b�s��_L�q�T4oӘ`2�oehXd�8VI�FX^�c{�QG�Z�T�\��R��ҿ�;T�9�dQ6�Ь����qS�&������3��{oS�U���l'i �T��2ԋv��[o�&���Z�^|�ŅƎ��)#�U����]���c��(��c��}�o���e�.�I�3,=B�~+˸O��r!�E�"�*���*�'����c�wE�oaQ��ާ9��/a�ުU(/�	'�0w�K'�>�߼�\pA�<E����!3�O�K�&+��b�,1eю���YLy��-�v���)A�8��^�{��֟���r̈́,���y�f�֮�wm�K$(�b��#~"m&{Z����Q��-��
���>H2ok��b�_�H����<aV���bRRB%��*����/�l�����擓E����n���J�^ԣ�by��cz!��3�F%e����U�鲒��0���a�F�c�E]�uX�[ֲY�[�e��O^��>zûى�3�N�z�Y����6��t����O�l�^ٺ����7����}�l�%�S�:+�?V���OF(���N��X�+��"W�����Z�K}K	�,��}\���>��P��O�i���<���B���T~��ϴߨ�#��s�I'��[���T���tՇj���e>D;��D���|�p���W�ѼBe��-(	�P,��{ok��'��U�74EV���W���t��Ӈ�Z4 5 �x:��J�)��E�q��X��ˢ���rH�'�ìI�-*c�U���W˖�݈���7�,������c���Z,�V^�i�_z�\}7X?��׿6�+f�wk~5��VG��6�l3���3�Hdg�i&�o[���*��%w�R�GTkĈ�~�:���֋e����$��m X���ZG��$I�c}s_}�U�&*�j��d �b����g+3&ԭOB�mD��K�J�S����h�tFn��s����*4+X�^x!q�?��c��P7l�(��g?K�ȶ*~779/7T�<�(a�u�ַ���J�^���*���˅
�9��Ý��fҩ�:k�{�"Q�1��O��&�C���:O?�t�j?S����#�{�� �����?�چ^U.vJv���;�S��Qb�p�������~b���o�Xb	�j�h���<�I|�q�h(f,���j��ꪫ�i��V��?C���'n���w����$���l��m���nE���r���H���Y�<��2�L���*U�djVIgҝr�ݼ�Yɺ-�z%����r��^{�6E.�>~�;\s�=�i;T��˽0뻩ޡT�)�w��'�`�˛l��96����S��!�U��^'=�~�����T��� ����2�Jd�3L'���"\�vOݏo�$!U�S�wx`�v��/�`�����y��Uѫ|�ֲ�.u���|�{�3'�s`s�t!O=�!3Jʫ�!�\��ہ�ie��H�~��z�-<,_
-b����k�l���-���Z��Űa����M54,�H�+�;F�I�2��P���7Z~�.���\q;묳̻Nn�E�(�G�$1�*���������������♵/��z�iHR4(�T�	��w�������b�U�6+��nEc�?v.��^|纽Gr׷,
'�b;�9�4�LӒ+z݊��2�M0�ѿ�bw饗�#�n��J�Ft{��=FȌOvZ;y���ڡm ���l��/pU*���ﯨ��Yp%��z�g���r�h��Q�F�"��2L�b�P��e����dtQr��%R������n��3���S��n���w�k[�����aPy7,sy��}�-�(eb��e��Vji�U���~�߈6fg��:\�Śvɼ�l-�XS�����ךZ�k�;Z}Je��Z��d�Z蕄�1�:2�r��[��MS>>4�Vz���w�u�7�.F�nzRӿm��#�<�Zo+S��&c*�&�V�#Q��1�ؗ��;�,�c���N��n]��n�(�f��(�(���[W��x�|�:%��G<�侧vXg���wSL1��;��_��d���̪�#1Ky7���+�����B4a�M�'��ͻ��[ʲ^�����v�u�$\H?+/����z���:��*�����F�ٚy�K]���Sq���uQHAh(U޶�^�����;���b�W���'�h�R�)W�u��Bh��}�����F�Zw�uK�G�ͮ��� �'�?��Ӆ�,�>U�'�
�P���K.u�H�����]Rˢx�^O|c�~긮,�b�X����w�}w�3�h)��&Oz1��DM�gY�����/�}�Fk������O*�]�o~�/���ct;ا�~�u�QG%��J��ڊO��&��g�f"�d��ȵ8���ⴝ�}k1��Q���Eإ2/��R�[n��
*�'�s�=���$O��w��';���9����[����.+�pO%�0�@�o ��v��.�49�#��Q���@#�ܰd9�X�L2I�/Y��/�)��b�Xk��z>	�>�H�|v��q���k���{�'���w�%����E�d!��n,K�yY�����R��~��O��o�����[6�k]z�d����g���������G��Sω�&�,�P27M��*/�}������$>U�^��r�^��)�0v�7n�y�M�s�	e�T�s�[O>�dKG��Sezn0$�����!3����g�:{A<$����#��1�C�}�ƍs>6������ё+~Wԭ��ɱn~��f�u����X�������SO=��hr,�����c�t�KYe�M75=�O����������a�m���|�z׶��}�x�D����wcǎu�����g�:�U����
���۪�k���^��:��|HC��]���n��6�vY����<Ϟ��Ћ4�h��G�Q1����^G���'�rk����pܜsΙ#���ђE�{�ǜ�jJ��ئ�����畛�H�\$N�p���	I?��&}<f���O8o uw�u��		����_����t��Ǒ;��`U��Qf����ޯ>GGr��7�$��O�lvD����4w�O���LtK�b[�ˢ������:�nG �ZG�[I�-�!o ���3&5���X^ԒE�ǘ;|,�.���D���_-�{u�k�i2���AJ�Q�i��]KKd��C�`B���ҏk��ږ���~{Ϳ�X}�"}?,�4T�<|��[�^OZj��h�g�Bc�η�'w$F\����j���,��@��Z3M������C�eg�������~i��e���!c�TSM�|�����������=�1�}�e���y�~�K��Mߕ*�w����X��e^+Q��c��z�>�j�@�n�pI�s{��+�x��#�isG�<�_��o����'ү*����,�M:����i��i���� ��[��@�HЋ���W����J��! 4�@�1Z�N'e�'~���d�V?���VF�������ݾQB?ׯ{)����/��^����H�1�כV��ų!PC��*���   @ �  �k��{-9χ   @ �   @ 3 �Qq!  @ �   @��0 Է��   @ �  �� �̨��   @ �  P_ ��wH@ �   @ �L @fT\@ �   @ �/ ��;$�   @ �   d&� 3*.�   @ �   ԗ ����C �   @ � 2� �B �   @ � �K @}��! @ �   @ �	` Ȍ�! @ �   @ �%���}���   @ �   ��0 dFŅ�   @ �   ��� P߾Cr@ �   @ �@f 2��B@ �   @ �@}	` �o�!9  @ �   @ 3 �Qq!  @ �   @��0 Է���w    IDAT��   @ �  �� �̨��   @ �  P_ ��wH@ �   @ �L @fT\@ �   @ �/ ��;$�   @ �   d&� 3*.�   @ �   ԗ ����C �   @ � 2� �B �   @ � �K @}��! @ �   @ �	` Ȍ�! @ �   @ �%���}���   @ �   ��0 dFŅ�   @ �   ��� P߾Cr@ �   @ �@f 2��B@ �   @ �@}	` �o�!9  @ �   @ 3 �Qq!  @ �   @��0 Է��   @ �  �� �̨��   @ �  P_ ��wH@ �   @ �L @fT\@ �   @ �/ ��;$�   @ �   d&� 3*.�   @ �   ԗ ����C �   @ � 2� �B �   @ � �K @}��! @ �   @ �	` Ȍ�! @ �   @ �%���}���   @ �   ��0 dFŅ�   @ �   ��� P߾Cr@ �   @ �@f 2��B@ �   @ �@}	` �o�!9  @ �   @ 3 �Qq!  @ �   @��0 Է��   @ �  �� �̨��   @ �  P_ ��wH@ �   @ �L @fT\@ �   @ �/ ��;$�   @ �   d&� 3*.�   @ �   ԗ ����C �   @ � 2� �B �   @ � �K @}��! @ �   @ �	` Ȍ�! @ �   @ �%���}���   @ �   ��0 dFŅ�   @ �   ��� P߾Cr@ �   @ �@f 2��B@ �   @ �@}	` �o�!9  @ �   @ 3 �Qq!  �������$������W���+_��;�QR� �   =_zMjn�����v����R!蹱���H��*�=<C�����׿�&M0�n�Eq��;��q��3�ট~��7�䓻�}�k�O���S����ƍ���}7v������o�'�x�=��#��t�?���裏ܗ��%������(t\T?�_)�	����&�����e<#�2Rj<�e���l�gãJ��,M&���p��7�馛.Õ�\���{���}�]��;�����c���o�ݽ��+� �������n�]v1{��s�=�Y}eVt�=��I&���G������on��W/����D|饗v#G��"G�u0}ﵨ��w��VXa�d�?�l�9M���&��?��5j�����ơ�ƞ�-\p�[j����V��4��xZ��l����G?�QhU}��5�\&uI�e�YƝs�9&���k���x��f�}��n�74���.sGq�I]�*��|���s7�p��v�i�]^���k2I���*1��NpÇ7�Q���7_���e����\\��iE"�	� ���o}�[~�Wy��[W\qEk�vh�����G�c�h
H��M/�䪵���r�je_|qO�G��nv���"򋚞�3�; &�M<��-?	o�z�-?Y��g��~��_p�&�h���m��Ї*�>�䓞��̇>��&,�"�u��Ǜ�.=ˣ���շ�駟6�M�x�&�����2-��5���Z��3O)�H����6�}�J�b���t�%��� 1m��ޛK�b�`ڠ�*�;m5FPk6t \췂����P�X���jo�(�t��n��F���s����ӎ�����0�Uz�SL��sN�*ݟ���>dӊ#V&����J�'T�j�O��ؒj7�/`���e�Yg��cn)sꪯw��SOu����;�3�]�z��h���s~���[o�D�X�ȣa���>�������>�c�S~���QX�E�����'�*�Ų�{ｷ�w�&o�2�1�v��s;���%�����o~���di�ơ�&�,˥��ѷ/�XC���V��:��*�Q `N @�rc�D��e�I'u|�{����t�`Ѧt�kY������hKhCAW�2����3O��B-dr2X���O��^V~V�i":�S&n�/����}�ݝ�u��>��_u�U�O�H�=+��R��u��{u���2�Y.��fQԗ�a	�L�kaQT�����*��c�)m|Q����&�N d �B��:�A��[n�ܼX2d�B�qNW!|�s 2 ]~��3\U�K4W.�m���d�k���@������h�c��v"�:ԋ��}�IϚ��K�{�م)*� e���Om�o�}�I{���wK�W���6��)7�׿�us#@�1�h;c�'���B� ���?��.}�m�ݒ�����!��2�[�;���q�&��M}���o�ܱ�����3�Pb���m�e�2T�m^4�h� V���p= ��.Z kv����*�&1�{�[��Mح O>�d�e�NE;W,���O��>�r��&�r�]p�KA���H�o���aÆ����)�T]N�2�,�V�[ziq�袋���|�N\�r�W;,�)����S-F�h�/JvkU�=�Xsc�@�ɰ�9̡�j%z�z�d�q"���Y�x��d�2��^��}�Y7f̘
I�(� �:P���nj�	�\��j�`#@��-0-�xX��������_��?<��>}BUv����$>�^�[�2�s8����@�Ĳ�.ۈ���Z��`�(N�/4@�����%����^{m�� Eq��]w]);�2\��#@�(�v��(�Q���2z�C���- @�t��-� �k(�o�x����'�]�¤I��+�l�X�c��P֕�}���^�x�Wf�{&���w�q�d� �[]��[o��"[�hR��u��Eq���z ��w�}��th[庬p�����M����5�\�ۥ�����F�X���`�Zbɐ��U���s�*�C� ��ա�?P37�tӠ,�1bo���Ɏv"�zQ�r �]4�1b�[g�uJ}�v��48tj�����薻�����a�_���1Ơ^0��L��|�"�?}V袸]fy ��4�_�P����cn��6u{饗�%�\b����F\��)�tS/��s�����0��_LM��/ƍ� � �������ܩ~-���j�����O=��{뭷z�%��5�RLz�	ln�"�Ћ��U|�駟�U���uVk-���S�/���	��!g�	'�)���>��{���y�W�wʪ��HRN��r��q+f	1 �����N:ɬ�N��}>������]z�<5F��_��W7nܸ�(cȐ���PIj�x�
I�(��` D�⾥�Ƣ��
#�k��L�$k7WS��,�(�Y�~����Md�2�+c��$���[���"�$q�V�v[-,_y�$��s']���k�Qhј֛��a�����5��ex����Eq9e (��ҿ#�<ҍ?��Qч�U�6�(J��x������i��,��]������I�y��i~bY���P�����)��:���b�s �K �Å��=س��Bb�I�L�:=���bM�����)j0*�hҳ�Z����.En7�G�YEv7C���JF�e��]�l���_<I�c�t���w˸�l��m�]rd�h�ʒK.Yhј�Ӥ��W� ������(ǆt-v)j$�{��e���E�K7^�%��֙n�M���䩱6o�f��H�G�8W�9������ |�������s�����<�LS8>ε�O&�-K��W,�ؔE+����������K=�q�i���ǽг_���fm���|I[ĵS{�6��?^���/���^э7���/�K٪T��Imy#M0����3ћ5s��6�S雏�7��[Eޘ����y��׻U����Ӧ5���!︣w���$S���7Q�vv�⍦�M�F�Y��&kLTRe��M3�4����w�g��Ӂ/7�ʑ��ڙ�a��������~�v�a�ʲ�dc~����i�S.|e��i�1�1N1�����7�4e�2��,���Rv��v���{�$�B/��Y��n��+χ��Z�m�ᆡU%��Ҏ��?���[{R/��z(�?z�h�#���Hǐ"��:������,�=3�-�}
Q�¬E;��>��k}�窽yv��n���/`�T��������]��@\5gP��^%OU��<1�V�ƈ�'��X�<������G����J � x徥�����ݻ��t#�GK�49O'�:���Cq�����8}��ƌ��8��@�i(D�[;޲�{$I�+]���G%GW�D�]���~x�*���;�ށSO=5��i��ʸ�*��)o�i�$~�7N� �.��ۧpŊ�������U{�
��pc�q��d �S~�qǙ�S����]�we����Vm������N�tm�E�*C�B{zY4��&��We��[����g5rŐ�l��K���4��h7u@�0 �K�b�?�2�`��o���w��V_}uw�1�$��%��>Mz�5.��i�X�EJ��c\CWT����h�]�RV��]9rd%��+� �_[l���z����}���I���>�i,Zn����1dR+�߇5U�3��V�� �Y��c���1�5h�y�+�^z�Ļˢ�򗿌�	]2o��n�5״9�%OU�������
����*�X4��u�qNW{�4 	` �v�-����w��/�2]p��?pK,��ybM��/��m���?�1�en��7h!��U���Ԏ�e�5���@G�U�(4G.�y9!r��1�!U��;v�Xw�y�^��ib��� B�I���h�g��kJɳ ��$O���]�zX��ɘ'�d�w�}�U����U��k1,��Z9�S2�T�E��X��'����2�[��?��e=�@2\w�u�c5G�s�=�L3�d�S�a�sNװ�"��T� ��E�u�h��b�t\�uf��^{-w\"���S��`��ZͳN8�9��JYM��R4Ѿ����u����Y�0 �9%��׼뮻�܏C�&��`Y�,�?7F��<b-�,�Y�e�^��d�mׂP�W\Ѫ����^-�u*��ȵ(�\s��4-��}�O<����A>1d�� $<'RL!F�"�4~~���.r�����\M�=�߰�ɐ����3�0m��\d��c �*@Y!�Y��:@�0 �ӆX�����E�P�bPT��+��Uy�GrW��й�;�}�n��D��`S�2T��0���%��N?��A����K�V[m�8�����"w�G}4�.P��i�au�d���W�U�x��SO�Nm�{v�]և���Y�S��&�Z�d��Ղ��c��	��y4i����O�u��G'u�2�!;��SW�q���*�a �6�i^����X��~��q��%��=��ﰩ T� �~�c�t��k�VFՙg��La~��\��Ҥw��u���+� �v�m�&�f��"��|���v�e���?���dᯢ.,��Y���9����_����b�����+�O�Ӷ+/�����:��w�y��'
]����������TTO��Y��Y=9�L����䆬#%��f�m����}7�|���L��X?���}2T���oQ�N�� o���r]a�B��������c�`*� zN � ]`CV4� ��v���+�_��~�b��k�Ģݢ.� x�M�����	¼�-�^�;�tJǣY-zN;�4����� ���Iv��TF�v����g��cJ��-v>-��.��ɗ� ����jS�z��n�$���}�{�q�E��1ݠ�����~��4�(\�J��:��!2�7�A>�!�m����馛�,1l����d��k  �z�b=�,OJ���gYB��SY��W,�U�d���oϵ�����3�$�׭h�e�[��]�b�zZ7������;��)cƌqGuT�ª�l��I�gj7��šƞ�;��dN���z�믿�o���w3�i�����Ium`-^�w���oi ȒC�`��X��e}t]� -�v�}�<�z�r�h���)�0}'�(<��C�V�w�A��"�"�++���X�R�g���*g��b���z�f�@y����@o	` h�k�բ.d�-�@҂�rq��?yO&������W!��c��r�-�Wk";l�0w����#��Kz�ŧ���H�NԮ�Ώ�QV C۵�^��n��daW,�Đ��Nɺ�RK����?���-U�4 dy�d<�x�C�ɵ�S��bĈf���u�:c+�=�\׭]ݞ�D�W^ye��B�9VF��n�P��)����e�����)�űN7P����UB ]` hÅL�[��kq��[�*�UW]�k��ɌN!���K��M������M@F��t�^HQR���>�oB�z��Nfyf �_֧���M���#�����J��3�S�h]Se�=�'��Q����^K@�wL����;��c����2�w2vi���Ey��'ݨQ����e�X����5�\3H\f�����*tJ�Lecm�Ti��:�_����z}��&�<]S,������j�@�����[���f~���h��d!_Q�)mR0�!�D��dl�D�̐�((���䈁i%��ae�h
*Z����`�$:�N�s����t��~������{�뚹��{���9{�u>�)���?#w%�+���W�����<��ć��I��w�}w�*^�����Ni6z�~���Y瞝�K\� gw�R��Ӑ4��2� k������'#��ˬ����O���X�Х<5�A����səd�� Hz�+^ѥz��&e�,x� E�t}ғ�T$9�/i�I_���!����7�kn�����:-��~����;����^���2������f�L+����_	��f �����͎�%����g���A��-�����`_c��˺�v�X�?=�g�Y̚�<�f$��y���]s�5�y�����#�yм��;Ke�W:yH?�#&�'|��,�����.KH}-zv@�K�Y�jm�� �f�"�{F�Ӂ����׾6�r���V�|�r�_��m9q��xG����CL�N:�)�F#��u��ż6OM~��t�V��-����%����/��N�E0��ZSȆ�-����E�ݻw��<��=�����>���3$Vk��ӟ��ɆN�n�U����/Π��-��LA������ޑ���dl��v������?��M�j����<����'�T1��2���k����56��,o���v�a���?�S?U����f���+J���G��#K 6;"33g�GrvMo��r�8��'�SFy����, ��U����~�,Y��{����H:%��?�я�x≃?���G��vۆ� � 	���Qs��<�Ue֚�`��ௐ�x��q	��Ɲ���F�k�8����d�SN9em�/���q^k��^�?x���E�Ğ���%�������X�ǣ�k� G�:I��d��Sd�O��O7��x����O��K����7��FB���o\�������������x��EZ�4�jǥ�O|�����/~��xf�}�������A�3>���t�K5�5nx_+��i�Ƨ���m�S����nrț�3���;��M�3��C�߷�>#UG���V�Onl�g�eik��S?�^;�S�|��^KQ�Z^�է��o� ���,��������dᥗ^:��=CT�{��zOOL��&4���5�I���X�_3�}ӞǞiOW\q��)�?��&��b�    IDAT#��m4�u�F�3�5����w��o��������d㰛n�i2#�9�y�d�|��l��X���s���y�DPz����i�16�̗4�8�{ߟ��\��{�v[bD=y��u����e��,?z�3���k�%��f �c6۪��焜ҎY27����S�'@��� �=��}���5����<I=C{�e�}��gM�tmW��#����׿���	'�P��3���K.�ݑ� ة���#��}�٧x�,C���-���k׮�E~��<�ַ���4�R�Z�!��R�����������'�C=t4���'�s�kj��/�P"���t���ԇ����u�,nd{ի^5�d����jrR�������A��( ���_��Q�C�t�3��Ɣ�</p��%bC��p�Em�w�T  ���rU���}u�Qŗ&Y�?�[��v��= �uXk��/��/��;�G9svo�=�_F��G�ұ,}��M��sϝ�sQc���yبݩ*�5����d��U{C�<�>�A*r&x6������Of�~�^�Ga6�Oʒ} rT�o��o���ޟ�2�##�9�4̒���Aɑ��t���8^����_˒� �d������Q˓N:i��fT��3���S=J� ��^�=��z���\���/�|Trϑ�i'�r�e����0��ƞ[m(�{t� @򚁕�{[|��E8�]�e����r_N ��̸����	X�� �ؽ��T���������.�f7����������I��O}j�)c���uTR�Bv|C����㫿,A�9R�W:��ַ��+��.��R��gm���=���Q��L'=Kҩ��^�Y��ay�ӞV-ߋN��i1]��������y�7�32&A��W� � �]˲�߇^����u5����|���x���s�GfVlu%�Sꞙ�9蠃&���Z�7�2B��Zz��x�Q�Yq��X��% �З^�����3�/#s����1����ek!������� ��������J��)�oy�[:=T�z�M�)�����w.k���N�2�<A���:�X��yX�{�<��� �o�	�>�a�,��ʾg�}�}F�������Y?+%��9��u�WN�"m7��g����,z%o��R�J+�+u���d�T��C�.}_Ƚ&���u��4�����n��'@`� ���c��9�7�&��,E�g��[# �կ~ut�w̛b���L�y�i�����?�Y�}��ϐ���%�u=��ܟ���)���Ƀm�>ψ����o��>�����l�6K�q���H����>Y�Q��������߯t�^����2���a��t� i�	T��աW~��^�v�g^bp���������=�]�������g�[kFYPJ��_��̏<��οs]Ȳ�n�_�#@��@��ZS��TW�T�c���_������,����{��o�+Q����;$�U_��M+k�z�A����$�6���G>2��������hV:�w���d�2���>���O}�SC���LOc�Y��o�喹�O� @����.W�8�Bf���W:�	mt� L�M�3�_��~�5׌���/�\��)��~x�
�D!��2�߀�3�jn��%R�ge-������E�� �.� VyMw�����N���cW{��F�,�Y��<��mVOI��+��]Z]��N�RrG뤙��y���������_���v3u�Sf�y4��tҬ�/{,�@:�ӺM[M�oH�:��g}�FS�.X_���S┝�3A�.�5�������gf�ԭ����9 ;��jm�Zk�fYF�k���^���j��!��� ��J�![�&�����>zt��WZ����/��/-R~�j�5/��u�����'?�V�O���:? ��l:y�-�����o������kOg��5��.���I "�����So�^�"g.���7�*U��L7�,�V�4r�- X?R�������T���͂E%g �r�)Ev�O�evN��c:���~��C�R�[�&;��=>���Z�+k�S�	����Y*1��^r�,�f���
4 Ȕ�Z�U�=�lF���u�]7h�-�X#
�	���t/В�2� ��.In�f##y�����6�QdO;��Ѯ]�g8#�y(�3"Vc���̘@J�0���rdh6�+�Vw�luz[NHG~����YԶ~O��(q�_^�]��̎������Ur�o��o�(����ϟ9��Y��sI6B,q%����٠�䲩l
Z�x�U^��QG�>m�v2����g��'�S�� ����N!S�r�N����b[���_ܴ�U��\c�d���9�S��o����A����wd�3}����'K*��o��_��I���~�����<�1��K�^yX���	}���=���]Β3 ����N��Q�'=�I3g���n]r�%[�f��{x���<d�N����|f��glm���n_v�eEf(�m��������Ɏ]�sVy�险�Y� @��:��$"�t �������C3z��2�1��7�L������LC+1|�֫�V6r���?���k��WU:�{n�NnzJ �q2�9�R�t��)z׻�5�	;��e/�<�m5�Z*}��=$;�����z�o�B>�+m����re��!׫_��m��Cg <���d1#�%��x�uY�f���r�g��<�̙����{���ܛ�~��J��������}n���_:� @�������U{�N_[���~v�c�������R#�yP����ƨI�v��H��Y
q��N:��$�z$�Q�c��{챣c�9�oV6|}v���}��;Zg�t�f~���j����Ѿl����2�6GH�#��#p}4�����v:7��2��p߲�z}�.ߕۮy*9�g�g���o��/}�K�����[��I i����R��_��WFW]uU��b��of�dľĕ#��gʬWf��O�Ĭo���e�e��w�����β��O`-�%����!��̏�X�@��8`G�����;'�~�&��nb�`S�!2?�$;u��#���������M������$w�Ŕz8΃l:ʙ�_��[�^z���%w�Ny�`�L����v�`�?�������I�*���x�3&��O}�S���ݪ���o ��#X��r��$��+}��Ϊd `�����Y���V���� ]���5^x�$�^��R/ox�&˦�^IkzZʬy�̩R�,��5�Y������R쐟�`��� C�]�O`5� ԚBV�Yd�s���������~�M��C����fc%�LyM�Tg�d�6K��^����Ⱦ��y�y�g�n��wl%�l�7dvB�������~�-a�>����`W\q�dIF,ө~�^0zֳ�U|�f���k}�z�����.�^�����J-�ǜ葑����١3 ������Mv�]*�~�G��޽�k6�|�{�����?��Ai�\:� %����dP!׽yYF�k�z���?��m���tX�@��t�Ko��*̦N��z�G1k��I�n���wF����G��Z�yDp�@���Z��K><u���u5�J~� ��!�5��|_�͡�::�䓋|l�ә�,�H;���WF��$J�OZ�@a�9����w~�w&k��:�Qf�Լ2��O�+��܃J_���,�Ϛ�-K  kԻ,���mYf d�~��l�9�e_�����k�{f�[r`���5��p_�q���5��&�3� ��JOo�9�9�g���z���yt��y����k��t������T���i7�����LA�a�a�>��D.�Y%�����������z��w�{��h�(uDܞ�Jp��:�oJߣl͹��;p���"߳��|�#�}�C��a@�۝Vй@��0߉�r:�C��u����_���k��y�<���R�O��O��Wk����k��߉3/K�=� ��@����߿���R;:/��x���٤l�Nows�FW��1^��ە�Ͽ�A���N�ڵ��۶}m��/ӕ �*]�`F��馛F!�e�p;�l�֧�<�^��i��p�Ϊ��/: �v�җ������b ������1Y*�}J^��S{FO�����Ⱦ;��6}m�ٛ˴�?�����0]n��W��I��J4y�t��l:u��U�T����?>��K�w�tj���f��ud�y�9�S�J�~��� 2ꞿtz�jyM�Q5v�O��뮛lDV���'?ٹ���=�q��J^	��n���<�Zt ���d	J�IɎ�,��X3ߍ�3�2�/����~��%K;�=��Y�ë��_4������O��&g ԘB�&���v����#���7��;>�ͷv�Q����e9n�ԭ.e�s{��W�$�6�L��n���2��W6��҆}��gҙ���o����{������1a��7�7G�|�;��s22�e ��\���t���Ő�.�t#n���o�Yd  �3�8��~i�����
�����/%u���O��l��1�Y~�'賧˪�k�����??�[�E� ��M Pzmi���|��+Ѻ�#� @�+i����}��J��m�V����mU�<�{챣c�9fU��e9R�L���7�٫��<��SO����^�6Tc��e�{Y��������^�5���}�ݣ�B��T��-�E r6}:%}�9 ��}m�,o���pI0/��V����ȧm-���,�H���5�y�WRUZv�@�K 2U��:�lh�*W�����r˽��$����w��fy̓l��_|�ūP��e�e:k6�*y�Wz��49z���������(��K��7�E ҁ���}�m~�9�/��/&�R�����yi�*�yj�|�=Y��|�y5����Δ� �n� r�=ꨣ���^�����\rG�4���kՏ*Qy����&#�-]x`�ml��%����>�$���?��?��K�u�O�t�GX�_�6HgQ�+��b�o|��:��g5 �}�y�[�g���ݻwW���K�ĠKF�K�G��.Z�����n��b�.>� �:� j�dS5;uz���*kos�v����N�Ԙn�J��� ���N>������=�Y���~p=���{w��TDF%Knt�#�yi��Z��ZG=n�����W�r�U޿�+~�_,��&���Z�7v6}>s�=����e�������/�rt�� {
4 �q�͚�/}�K+Ѻj����?���#��Yz��7T�8�r� [r����G��;�R�(��>���:%S���I'�T�N�F�?��^��Z��o���A�y��E|�"f \z饣�V��M}���"�׼�5�N�HG3l��a�������<d��O>�F@~���ｼoٻ�~�}�儃��N<y�d��E���� J�n������b������Ɨ�k�?#��Q.y-�táe��i��6ڵk�Фv��g��T��W��{�C:�z}~���&T/y�K�e3��	��9:����O|��6��0�y �������X���~������E�N�_9A����Sߜ��K�~��h���?��?��9Kb5��������@kM�Pk������k\����X�����.�Q4Y�ݥ#Vk���>��Ig(�/ӕ��z겫|^����s�2a�y�e=k6�*� A���������g�}�Y����pzI m�/}�$ݮ#l���^�\�o�qR�e���%>���w ����'�@�� ���}��V_��[/���m�ȗuN�d���o�}�O�ow��g2�,;��X���Z�=�zR�� �+�T ��M65�w�ws����ұ��]G���!���-����:u�����GE&�׽�uŏ�)a��׿��(m�Go}�[G{��W��ޑid$�o� ���xz��?y�{�;��)x�vʑa:�����Gv9����^��Z��O<��������m��6	�{7���4�= rD�^8�~ާ dt83XJ\���񣣏>�Dr;6�t�g��Sk� ��,����z�����د������������W�2�ז��7+c7�����o,��d)��!�UW�����ڵ�j'����|f,ۖq<���Y�����/�|�4gy�]wݵ���`��|N��������k��Y>z���|��k���yY���E�̉���ɨko��|��y�z�k�N��r�G����=�y��[�G�g�Y5k��ַ��e��񬱙���D�i�^{�0�]�.N�;^j�6�X�|�\r�Z��J�O����u;u�� �>6���[�b���[�j��9���x�d=tW��L�����_�˶e�h~�c�2��/��/ۦ9��w��Mf ��l��+��Q�2��\��L��|�3�qGt����=�����>w����'<�	3�w����;��.?�k���9�/��uYZ���<g |��_��#���l��?����S��x)=B���}ni��y䑝K���U�o�ky�� �~�,����?��?M�g�Q�W]u_�)��zԣ�~�S�zTc��,���6�e:{d/����P�(�^{��Z�:���{ځ���:}���D�_����~��Y�z��S����ꫯ�G�G��z�h<�8	���>�]�sz@��d�}� F�|�����~���;}���w���_����< �{n1�.{�����Y��p}6���s_=��F�w�.���w��+�쵴f���Gu�,o��=�l�:�ז������ޔ`m #@`i�	 X��u����Z�7���QF��\5���zM֐o����C=tt��'���?��{��NG��%�.�<e�����2��gS����NG�K�e�ִ���"��.�h2a�����Y�2��,j��y �������^ߑ��� Ȟo{�ۊt�r�Q�����}��㎛Mk�3Sٸ��^/�l�Z+ �����K����~C�����3�l�f 56Y��w�;��j��d�U�2���z�S����;����}���o ȃgdK)�~���#�n]���l�|�0އbt�g���R���w�cr4�W,KO�5/�xߢ6��W ଳ�*��J��}�Tgz�:N�Ē�����O���(֜���{gL���̚��������i��/}_H;���?���=��v��ɟ���A���z��t��v��^�z1+%�� ����d�k�kQS8K�a�V~(JG�k�s�4���ϏqK���[���t�v��5+�}ޗ�Nv؞�Cl>���}���;��7�y4�t���$t�W�~�7~cPv�������8�ӟ���/��/��k���j� H'7�ݳ�>�s�l��̀Hдv d}>rti�+.�,!+ X����g;)�F�E��|� �Z�ߧS9���SV}��ѶZ�g������S�����ݛ�e$�M~�w���=3[�A6���Κr�;ߙ�J�[��ы^��I��,�Xo��ٛ��t�e6^d��G�G�Ӽ�e/���� Ȧ�%t	 \v�e�l�Y�J�r��<Gu3���w &7��Ւײl�Wcij�����l-�"��M j�d��v*���$*���U���������4�����a3�%;f�Fu��O�k<�&0�w:u� ��׾�췅m��#'�x��SN�l&8k�?����m�+����t�ju@��j]I;��i��[���ܻ�I��ff�+_��I�J��}3�ڻ\���2B��Vz�e������߅�khX�� @�����;�[c���u���وRd�?���1�S���� �bK�%�%sw�uW���zM:��l����Ń;�2[���P�O|����/��<�Ӕ`P���E.��"��5g ��q�UF�S5g d���i˹'��MozS��r��2�iH�f�P� @��Sklț�o��@of���9r��5=ݠd��"@`�� �X���V����j2Ǥ���p�p��a�ٌng=l�+�bo���kl��Ĵލ>3���Qz��������W��o1��<4�M�����覛n*69�'<�	/�<2�)3J���f �o��oF����\՚�����?x\:�ox�&˦J]��~�(���̒���ҧ}�^���gj�	��7��=�i�?��� �`�.O�� ��X�S r�=��#��dPF�  �IDAT3=m�Ԗ�������G=�Q;!�3��h[��3ezoʃB�=��A6�agٰi��g+�b�.>M����:���g�a6��� ȃ�+^������~����N:���k��H����J���؏�X�7uxG����{���}I� Y����+���;l�{��!����e��dd�{���Zc��"~����KSsO^��E�#@����� �q�M-t�T���	�a-���j�8�']�jL7,\]E��l�d�ǌN>�䢟�������8��\�Ѭ>�Y��oB_��W�������N��>P&���'?yt��7O�dZ�?��O�����W^9	��� �-�w�y��N�J-��N<�f��R�)�u���Z�e!��45�R�{����54.���7�EO�,�f� ��^}����n���y��l�F���Y2(��o{2�`�;X�i_�a��t��y�v��#|�y�K^2��;���dӱ���я��O�G5:"��ϯ�ө� �u/�ˋv~7R�� ��,g��k�69�C�V�tFE�D;&V+ �����j�i�������C�����hZ`� 9��a{X�J^�NE2N����mm������w�i�M:~%�Lw�e�|�<� �=
p���%uq�EM�\{챣�����qd}�2;�����F��+�2�w�}G'�p�(�es���O�@S6l�Zt���ly뭷V�՘�׼�S�t������?x�������}lt�5�T��m�ߴ�����t�<�t@~����Z�Z2p_�=K� ����qv֖+K�r��tp����Kt�R�We�`~��~��hoQ쁉���\��J�Ϟ�k7r�~_�;��������,ކ�u�A�?��������ч>���iN�eȃܣ����#�8b�[t�T%6q��ޯ~���O~�믿~�MM���/O��o�/D�Bޓ�t-n+߻~����;]�_�;m�]�z�\���{ｋ�J�6�M�^���裏���?��y~�����K���g�l]�����E+t��V�|���O���+ M�]��p&�Prl�Ϭ�t�j����iv��9]�����l�1H�.��u�yIw���k���e�i��i��a<3�ߜX��G6v���)����?��&��_�a���m�ݻ�Wқu�Y���ߗϟ��Ho'�Q��le�����Z�LS�]~�j����.��jY뻄w�Q�E��6� @`>+ ��O!@�����i�nχ�����V!h9i�H� X�թK%!@�  @� �
��&��  @� � � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @@ @ @�  @�  4PɊH�  @�  � @�  Ѐ� @��� @�  @��B�|� )�'    IEND�B`� ECFG      application/config/name         minijam-19-8-2022      application/run/main_scene         res://mainmenu.tscn    application/boot_splash/image          res://img/loading.png      application/config/icon         res://icon.png     display/window/stretch/mode         viewport   display/window/stretch/aspect         keep   global/scene          +   gui/common/drop_mouse_on_gui_input_disabled            input/up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script      
   input/down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script      
   input/left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/shoot�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script      )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   )   rendering/environment/default_environment          res://default_env.tres          