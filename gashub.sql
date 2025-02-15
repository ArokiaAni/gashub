PGDMP     /    "    	            z            gashub    13.7    13.4 S    #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            &           1262    16394    gashub    DATABASE     b   CREATE DATABASE gashub WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE gashub;
                postgres    false            �            1259    16395    cylindertype    TABLE     �   CREATE TABLE public.cylindertype (
    id integer NOT NULL,
    type character varying(32),
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);
     DROP TABLE public.cylindertype;
       public         heap    postgres    false            �            1259    16398    cylindertype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cylindertype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cylindertype_id_seq;
       public          postgres    false    200            '           0    0    cylindertype_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cylindertype_id_seq OWNED BY public.cylindertype.id;
          public          postgres    false    201            �            1259    16400    cylinderweight    TABLE     �   CREATE TABLE public.cylinderweight (
    id integer NOT NULL,
    weight character varying(32),
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);
 "   DROP TABLE public.cylinderweight;
       public         heap    postgres    false            �            1259    16403    cylinderweight_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cylinderweight_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cylinderweight_id_seq;
       public          postgres    false    202            (           0    0    cylinderweight_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cylinderweight_id_seq OWNED BY public.cylinderweight.id;
          public          postgres    false    203            �            1259    16405 	   feedbacks    TABLE     �  CREATE TABLE public.feedbacks (
    id integer NOT NULL,
    orderid character varying(64),
    userid character varying(64),
    vendorid character varying(64),
    vendorbranch character varying(64),
    rating integer,
    review character varying(256),
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);
    DROP TABLE public.feedbacks;
       public         heap    postgres    false            �            1259    16411    feedbacks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feedbacks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.feedbacks_id_seq;
       public          postgres    false    204            )           0    0    feedbacks_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.feedbacks_id_seq OWNED BY public.feedbacks.id;
          public          postgres    false    205            �            1259    16413 	   inventory    TABLE       CREATE TABLE public.inventory (
    id integer NOT NULL,
    productid character varying(64),
    availablestock integer,
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);
    DROP TABLE public.inventory;
       public         heap    postgres    false            �            1259    16416    inventory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.inventory_id_seq;
       public          postgres    false    206            *           0    0    inventory_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.inventory_id_seq OWNED BY public.inventory.id;
          public          postgres    false    207            �            1259    16418    login    TABLE     �   CREATE TABLE public.login (
    id character varying NOT NULL,
    username character varying(32),
    password character varying(32),
    usertype character varying(32)
);
    DROP TABLE public.login;
       public         heap    postgres    false            �            1259    16424    ordermanagement    TABLE     O  CREATE TABLE public.ordermanagement (
    id integer NOT NULL,
    userid integer,
    deliveryaddressid integer,
    vendorid integer,
    productid character varying(64),
    quantity integer,
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);
 #   DROP TABLE public.ordermanagement;
       public         heap    postgres    false            �            1259    16427    ordermanagement_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ordermanagement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.ordermanagement_id_seq;
       public          postgres    false    209            +           0    0    ordermanagement_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.ordermanagement_id_seq OWNED BY public.ordermanagement.id;
          public          postgres    false    210            �            1259    16429    products    TABLE     ~  CREATE TABLE public.products (
    id integer NOT NULL,
    vendorid character varying(64),
    cylindertypeid character varying(64),
    cylinderweightid character varying(64),
    location character varying(64),
    price double precision,
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16432    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    211            ,           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    212            �            1259    16434    useraddresses    TABLE     b  CREATE TABLE public.useraddresses (
    id integer NOT NULL,
    userid integer,
    name character varying(32),
    addressline1 character varying(128),
    addressline2 character varying(128),
    city character varying(128),
    landmark character varying(128),
    district character varying(128),
    state character varying(128),
    country character varying(128),
    pincode character varying(16),
    latitude double precision,
    longitude double precision,
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);
 !   DROP TABLE public.useraddresses;
       public         heap    postgres    false            �            1259    16440    useraddresses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.useraddresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.useraddresses_id_seq;
       public          postgres    false    213            -           0    0    useraddresses_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.useraddresses_id_seq OWNED BY public.useraddresses.id;
          public          postgres    false    214            �            1259    16442 
   userlogins    TABLE     �   CREATE TABLE public.userlogins (
    id integer NOT NULL,
    userid integer,
    successfullogin bigint,
    failedlogin bigint,
    invalidloginattempt integer
);
    DROP TABLE public.userlogins;
       public         heap    postgres    false            �            1259    16445    userlogins_id_seq    SEQUENCE     �   CREATE SEQUENCE public.userlogins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.userlogins_id_seq;
       public          postgres    false    215            .           0    0    userlogins_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.userlogins_id_seq OWNED BY public.userlogins.id;
          public          postgres    false    216            �            1259    16447    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    firstname character varying(64),
    lastname character varying(64),
    phone character varying(50),
    email character varying(50),
    gender character varying(50),
    dateofbirth date,
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint,
    password character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16450    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    217            /           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    218            �            1259    16452    vendoraddresses    TABLE     t  CREATE TABLE public.vendoraddresses (
    id integer NOT NULL,
    vendorid character varying(64),
    name character varying(32),
    addressline1 character varying(128),
    addressline2 character varying(128),
    city character varying(128),
    landmark character varying(128),
    district character varying(128),
    state character varying(128),
    country character varying(128),
    pincode character varying(16),
    latitude double precision,
    longitude double precision,
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);
 #   DROP TABLE public.vendoraddresses;
       public         heap    postgres    false            �            1259    16458    vendoraddresses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vendoraddresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.vendoraddresses_id_seq;
       public          postgres    false    219            0           0    0    vendoraddresses_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.vendoraddresses_id_seq OWNED BY public.vendoraddresses.id;
          public          postgres    false    220            �            1259    16460    vendors    TABLE     �   CREATE TABLE public.vendors (
    id integer NOT NULL,
    businessname character varying(128),
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);
    DROP TABLE public.vendors;
       public         heap    postgres    false            �            1259    16463    vendors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vendors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.vendors_id_seq;
       public          postgres    false    221            1           0    0    vendors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.vendors_id_seq OWNED BY public.vendors.id;
          public          postgres    false    222            g           2604    16465    cylindertype id    DEFAULT     r   ALTER TABLE ONLY public.cylindertype ALTER COLUMN id SET DEFAULT nextval('public.cylindertype_id_seq'::regclass);
 >   ALTER TABLE public.cylindertype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            h           2604    16466    cylinderweight id    DEFAULT     v   ALTER TABLE ONLY public.cylinderweight ALTER COLUMN id SET DEFAULT nextval('public.cylinderweight_id_seq'::regclass);
 @   ALTER TABLE public.cylinderweight ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            i           2604    16467    feedbacks id    DEFAULT     l   ALTER TABLE ONLY public.feedbacks ALTER COLUMN id SET DEFAULT nextval('public.feedbacks_id_seq'::regclass);
 ;   ALTER TABLE public.feedbacks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            j           2604    16468    inventory id    DEFAULT     l   ALTER TABLE ONLY public.inventory ALTER COLUMN id SET DEFAULT nextval('public.inventory_id_seq'::regclass);
 ;   ALTER TABLE public.inventory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            k           2604    16469    ordermanagement id    DEFAULT     x   ALTER TABLE ONLY public.ordermanagement ALTER COLUMN id SET DEFAULT nextval('public.ordermanagement_id_seq'::regclass);
 A   ALTER TABLE public.ordermanagement ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            l           2604    16470    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            m           2604    16471    useraddresses id    DEFAULT     t   ALTER TABLE ONLY public.useraddresses ALTER COLUMN id SET DEFAULT nextval('public.useraddresses_id_seq'::regclass);
 ?   ALTER TABLE public.useraddresses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            n           2604    16472    userlogins id    DEFAULT     n   ALTER TABLE ONLY public.userlogins ALTER COLUMN id SET DEFAULT nextval('public.userlogins_id_seq'::regclass);
 <   ALTER TABLE public.userlogins ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            o           2604    16473    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            p           2604    16474    vendoraddresses id    DEFAULT     x   ALTER TABLE ONLY public.vendoraddresses ALTER COLUMN id SET DEFAULT nextval('public.vendoraddresses_id_seq'::regclass);
 A   ALTER TABLE public.vendoraddresses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            q           2604    16475 
   vendors id    DEFAULT     h   ALTER TABLE ONLY public.vendors ALTER COLUMN id SET DEFAULT nextval('public.vendors_id_seq'::regclass);
 9   ALTER TABLE public.vendors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            
          0    16395    cylindertype 
   TABLE DATA           d   COPY public.cylindertype (id, type, status, createdby, createdat, updatedby, updatedat) FROM stdin;
    public          postgres    false    200   �d                 0    16400    cylinderweight 
   TABLE DATA           h   COPY public.cylinderweight (id, weight, status, createdby, createdat, updatedby, updatedat) FROM stdin;
    public          postgres    false    202   �d                 0    16405 	   feedbacks 
   TABLE DATA           �   COPY public.feedbacks (id, orderid, userid, vendorid, vendorbranch, rating, review, status, createdby, createdat, updatedby, updatedat) FROM stdin;
    public          postgres    false    204   >e                 0    16413 	   inventory 
   TABLE DATA           v   COPY public.inventory (id, productid, availablestock, status, createdby, createdat, updatedby, updatedat) FROM stdin;
    public          postgres    false    206   �e                 0    16418    login 
   TABLE DATA           A   COPY public.login (id, username, password, usertype) FROM stdin;
    public          postgres    false    208   �e                 0    16424    ordermanagement 
   TABLE DATA           �   COPY public.ordermanagement (id, userid, deliveryaddressid, vendorid, productid, quantity, status, createdby, createdat, updatedby, updatedat) FROM stdin;
    public          postgres    false    209   
f                 0    16429    products 
   TABLE DATA           �   COPY public.products (id, vendorid, cylindertypeid, cylinderweightid, location, price, status, createdby, createdat, updatedby, updatedat) FROM stdin;
    public          postgres    false    211   <f                 0    16434    useraddresses 
   TABLE DATA           �   COPY public.useraddresses (id, userid, name, addressline1, addressline2, city, landmark, district, state, country, pincode, latitude, longitude, status, createdby, createdat, updatedby, updatedat) FROM stdin;
    public          postgres    false    213   �f                 0    16442 
   userlogins 
   TABLE DATA           c   COPY public.userlogins (id, userid, successfullogin, failedlogin, invalidloginattempt) FROM stdin;
    public          postgres    false    215   ;g                 0    16447    users 
   TABLE DATA           �   COPY public.users (id, firstname, lastname, phone, email, gender, dateofbirth, status, createdby, createdat, updatedby, updatedat, password) FROM stdin;
    public          postgres    false    217   �g                 0    16452    vendoraddresses 
   TABLE DATA           �   COPY public.vendoraddresses (id, vendorid, name, addressline1, addressline2, city, landmark, district, state, country, pincode, latitude, longitude, status, createdby, createdat, updatedby, updatedat) FROM stdin;
    public          postgres    false    219   �h                 0    16460    vendors 
   TABLE DATA           g   COPY public.vendors (id, businessname, status, createdby, createdat, updatedby, updatedat) FROM stdin;
    public          postgres    false    221   Xi       2           0    0    cylindertype_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cylindertype_id_seq', 20, true);
          public          postgres    false    201            3           0    0    cylinderweight_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cylinderweight_id_seq', 20, true);
          public          postgres    false    203            4           0    0    feedbacks_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.feedbacks_id_seq', 2, true);
          public          postgres    false    205            5           0    0    inventory_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.inventory_id_seq', 2, true);
          public          postgres    false    207            6           0    0    ordermanagement_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ordermanagement_id_seq', 8, true);
          public          postgres    false    210            7           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 4, true);
          public          postgres    false    212            8           0    0    useraddresses_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.useraddresses_id_seq', 10, true);
          public          postgres    false    214            9           0    0    userlogins_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.userlogins_id_seq', 12, true);
          public          postgres    false    216            :           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 24, true);
          public          postgres    false    218            ;           0    0    vendoraddresses_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.vendoraddresses_id_seq', 39, true);
          public          postgres    false    220            <           0    0    vendors_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vendors_id_seq', 39, true);
          public          postgres    false    222            s           2606    16477    cylindertype cylindertype_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cylindertype
    ADD CONSTRAINT cylindertype_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cylindertype DROP CONSTRAINT cylindertype_pkey;
       public            postgres    false    200            u           2606    16479 "   cylinderweight cylinderweight_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.cylinderweight
    ADD CONSTRAINT cylinderweight_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.cylinderweight DROP CONSTRAINT cylinderweight_pkey;
       public            postgres    false    202            w           2606    16481    feedbacks feedbacks_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.feedbacks DROP CONSTRAINT feedbacks_pkey;
       public            postgres    false    204            y           2606    16483    inventory inventory_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pkey;
       public            postgres    false    206            {           2606    16485 $   ordermanagement ordermanagement_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.ordermanagement
    ADD CONSTRAINT ordermanagement_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.ordermanagement DROP CONSTRAINT ordermanagement_pkey;
       public            postgres    false    209            }           2606    16487    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    211                       2606    16489     useraddresses useraddresses_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.useraddresses
    ADD CONSTRAINT useraddresses_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.useraddresses DROP CONSTRAINT useraddresses_pkey;
       public            postgres    false    213            �           2606    16491    userlogins userlogins_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.userlogins
    ADD CONSTRAINT userlogins_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.userlogins DROP CONSTRAINT userlogins_pkey;
       public            postgres    false    215            �           2606    16493    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            �           2606    16495 $   vendoraddresses vendoraddresses_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.vendoraddresses
    ADD CONSTRAINT vendoraddresses_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.vendoraddresses DROP CONSTRAINT vendoraddresses_pkey;
       public            postgres    false    219            �           2606    16497    vendors vendors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.vendors
    ADD CONSTRAINT vendors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.vendors DROP CONSTRAINT vendors_pkey;
       public            postgres    false    221            
   L   x�34�L����K)�LN��4�?�24�,K-*�"aƙ_�Mܜ�� M����ʍpYi���E�1�%���� #�7i         Q   x�e̱�0C�Z�_���Y�	�S�\*��W��툸Nسy�����`���#�5ԉ���g/h|a��:za��SE�|-
         D   x�3��42�4���N,*�KO��4�L��O�4�?�2�+K��IL�H��4���/QHJDS���� s9�            x�3�4BC �� .#����X� ��Y         9   x�3�LL��̃��FƜ� �gYj^J~�I��Y\Ɯ�ũE`$
��b���� \s         "   x�3�42�44�4��4�42�0���b���� [�l         K   x�3�4��42�T ��Լ��LNSNC �� .c$5ىy��٥��E����
M�
��9?'h^��=... Gw         �   x����
�0E痯��$Ɔ��VHHEA���B����[ps�����
vc��ڔ���0ҋ�����K��B����}
xZ)ϯ��/�`pu�*��nC�B�5 5�\�5SFk���9��%�����K�瘻�����B��9De         =   x�Mǹ� C���b<H>�&\�������do�Y�4��f6p�&V���U��j|�먪��q           x����j�0����(�F�,��.J�4�@w�LK��ĎQ���l�b�xS$���p=�>�\��J�/�<7�VbXlk	����N�01+�(���wf��mq����9Id"�r=:s�G�T	��ҤT�8�ޙ��bw�G}��c�:t�ޥ�b�iv�\a%5�?u���6�1-�"��'T�(�qe�}Φ�&�J<>�����C�Mp;���>d�xf�VĊ݄���pm:�Kb��Es[8�J��n�2^���'�����Zh6���xZ��M��eY��7�L         �   x���A�0���~�~�p�9w����[�N������7��-���<��9��:<��,hQ�EG{Ӡ��車�L�u��3���s����{X���i��z�dB���H��b�V
x��>�!҆m~N����q���d`��74D�         (   x�3��,�)�MJ-�4�?�2��LK,�E����� _?4     