PGDMP      	                    |            site    12.18    12.18     "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    49240    site    DATABASE     �   CREATE DATABASE site WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE site;
                postgres    false                      0    49243 
   Apartments 
   TABLE DATA           �   COPY public."Apartments" ("Id", "Number", number_of_house, number_of_floor, number_of_rooms, "Square", price, path_content, isbronned, who_bronned, description) FROM stdin;
    public          postgres    false    203   c	                 0    49253    Houses 
   TABLE DATA           \   COPY public."Houses" ("Number", number_of_floors, apps_per_floor, path_content) FROM stdin;
    public          postgres    false    205   �                 0    49263    News 
   TABLE DATA           .   COPY public."News" ("Id", "Item") FROM stdin;
    public          postgres    false    207   u                 0    49271    Users 
   TABLE DATA           P   COPY public."Users" ("Id", name, surname, email, password, telefon) FROM stdin;
    public          postgres    false    208   W       '           0    0    Apartments_Id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Apartments_Id_seq"', 34, true);
          public          postgres    false    202            (           0    0    Houses_Number_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Houses_Number_seq"', 1, false);
          public          postgres    false    204            )           0    0    News_Id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."News_Id_seq"', 1, false);
          public          postgres    false    206               |  x^���n�HE��W��{�T�F�D�lI�Y�ƯoJ��������)��<PZ�>���n�Ұ�u��׶�W�_�4����{{K '|*�L�ύ�EX�n[�ŵ�4�����������bB��k�u����v�h�L$&9�����7��+^��u�3T��� �4�Nxh�����Ǥe���V���]�w� 4*��x�z�ٲv���K�{�n����+���u@
ZU���|UKa������Bl���ng}K�{��y�]s�C�^SK�[%��i�������>  �ɋY��ũ�hN�&�A�] ˸��6��'�{��1Kp��H�����}%�&�}�IxB	�}�B�m�
�K�%�T&�Z�_L��脆@����D��L�o���J@8��F�˹�"J�75o��l���1��$�^x�X�r��lȅ���%N4���6'���O�aɄ²�d��ΌᵷM[{sE˶��ݹ���<<sl@C-����S�4�p�އ_�iL"2��S� _a��-k�dk<�43m��
���4��X��Kv��]���:�l��7�8wE3�uȖ�kq��J��h��� 8�}�W�[y3���<��ݨ�N�y^�-��H���15(��d>�4ܮS���z�5+��2D���A#s�D��{?�(3E&��۸U]��|�NM%]���2;�9��N�0 �g�6��0��R����}�Jݪ!�E��$8@�̾Z����wS̫I[LKs�x�J�,���Nk+:e�w�����R�g)��
��g��.��3෽ˑ[�B��~�g�z��iĄ�t�$P�A���(e��}�h8ɝ³�v�읏ɜ�q���ˡ�Ju2鷮at`���<��[˴ό��'ahDq��9��wL���>Y�a�m��è�o�[{�(���S;M)�4o|2��{�<�ÚRMS��:�k��wA�o<{�tܱ���c9�1�}�e�f6y߆btY%-j��]E��Y��@=��}�Ӽ"��x���z�Wy���j?$Xr����	]5ް��D\QH]�Y�Y�O�fO0	��×o�?60]z���������e`�C{�=��j�H����0��iz�Fa):0k���-���_�����T}          v   x^}�M
!@�f�$G�R(�ĖB鏔�~�.������B�p}|��D��Q
5��1)pɘQ� ����q�Dঙ��:�H��%�i�m���"�F�J�6�w%���i��$�;*         �  x^��]rQ���U\S囡 ���b`�A+1Xy���O�
&�!������D�g�����>}�����+l�V�2�C��;x��U��"�9O����1�'��V��nԱ���3
2�R�M�����U|�����HeW���{.�v�4Ҿ6 ޜ�D��ҁ
%��&�5I�-�W��T� �V!~���*� v�4ȃm�i �=�����[�~ ML�\�4��G�_P<e ��P����aϾ��!��x��9r�5�k��Δǩ�EJ<��mȺ$���"��҉��蜻K*�a�Rb� �9�R���@�ڻT�Y�#b��9�yqoش&���FH�m����	|W���+)�AT;{����'�8���S�Y4E@��Bأ$'�(���-m�!�������Q�i��=�Ɍ3IT����Kµ覇�vn�΅3%rnW׼�*�G>�ܽ��k���v��z����?1�ciԷ� a�v^6�uK�G+']�H �U<��aM\x���`��wV	��ca�]� G�Ԋ�0%���LB6��h��K1�m#�]6��a����ǦW�7�mg�V���7&P���4��T�����������D�m��.�մL�<�u/)�M�I�]�R'��_up�>�;X�џ�/�F�.���fӺ���w��	4�W|Z��f��7�h������ƺ>N9�{����lgo�Y���i�n            x^����� � �     