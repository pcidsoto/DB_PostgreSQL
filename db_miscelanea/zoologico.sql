PGDMP     1                    x         	   zoologico    13.1    13.1 $    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16395 	   zoologico    DATABASE     e   CREATE DATABASE zoologico WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE zoologico;
                postgres    false            �           0    0    DATABASE zoologico    ACL     *   GRANT ALL ON DATABASE zoologico TO pedro;
                   postgres    false    3026            �            1259    16414    animal    TABLE     X   CREATE TABLE public.animal (
    id integer NOT NULL,
    tipo character varying(30)
);
    DROP TABLE public.animal;
       public         heap    pedro    false            �            1259    16412    animal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.animal_id_seq;
       public          pedro    false    205            �           0    0    animal_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.animal_id_seq OWNED BY public.animal.id;
          public          pedro    false    204            �            1259    16398 	   categoria    TABLE     `   CREATE TABLE public.categoria (
    id integer NOT NULL,
    categoria character varying(30)
);
    DROP TABLE public.categoria;
       public         heap    pedro    false            �            1259    16396    categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categoria_id_seq;
       public          pedro    false    201            �           0    0    categoria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;
          public          pedro    false    200            �            1259    16406    detalle    TABLE     [   CREATE TABLE public.detalle (
    id integer NOT NULL,
    origen character varying(30)
);
    DROP TABLE public.detalle;
       public         heap    pedro    false            �            1259    16404    detalle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.detalle_id_seq;
       public          pedro    false    203            �           0    0    detalle_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.detalle_id_seq OWNED BY public.detalle.id;
          public          pedro    false    202            �            1259    16443    lista    TABLE     �   CREATE TABLE public.lista (
    id integer NOT NULL,
    nombre character varying(30),
    fecha date,
    id_categoria integer,
    id_animal integer,
    id_detalle integer
);
    DROP TABLE public.lista;
       public         heap    pedro    false            �            1259    16441    lista_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lista_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.lista_id_seq;
       public          pedro    false    207            �           0    0    lista_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.lista_id_seq OWNED BY public.lista.id;
          public          pedro    false    206            6           2604    16417 	   animal id    DEFAULT     f   ALTER TABLE ONLY public.animal ALTER COLUMN id SET DEFAULT nextval('public.animal_id_seq'::regclass);
 8   ALTER TABLE public.animal ALTER COLUMN id DROP DEFAULT;
       public          pedro    false    205    204    205            4           2604    16401    categoria id    DEFAULT     l   ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);
 ;   ALTER TABLE public.categoria ALTER COLUMN id DROP DEFAULT;
       public          pedro    false    201    200    201            5           2604    16409 
   detalle id    DEFAULT     h   ALTER TABLE ONLY public.detalle ALTER COLUMN id SET DEFAULT nextval('public.detalle_id_seq'::regclass);
 9   ALTER TABLE public.detalle ALTER COLUMN id DROP DEFAULT;
       public          pedro    false    202    203    203            7           2604    16446    lista id    DEFAULT     d   ALTER TABLE ONLY public.lista ALTER COLUMN id SET DEFAULT nextval('public.lista_id_seq'::regclass);
 7   ALTER TABLE public.lista ALTER COLUMN id DROP DEFAULT;
       public          pedro    false    206    207    207            �          0    16414    animal 
   TABLE DATA           *   COPY public.animal (id, tipo) FROM stdin;
    public          pedro    false    205   �#       �          0    16398 	   categoria 
   TABLE DATA           2   COPY public.categoria (id, categoria) FROM stdin;
    public          pedro    false    201   +$       �          0    16406    detalle 
   TABLE DATA           -   COPY public.detalle (id, origen) FROM stdin;
    public          pedro    false    203   b$       �          0    16443    lista 
   TABLE DATA           W   COPY public.lista (id, nombre, fecha, id_categoria, id_animal, id_detalle) FROM stdin;
    public          pedro    false    207   �$       �           0    0    animal_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.animal_id_seq', 3, true);
          public          pedro    false    204            �           0    0    categoria_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.categoria_id_seq', 3, true);
          public          pedro    false    200            �           0    0    detalle_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.detalle_id_seq', 3, true);
          public          pedro    false    202            �           0    0    lista_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.lista_id_seq', 2, true);
          public          pedro    false    206            =           2606    16419    animal animal_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.animal DROP CONSTRAINT animal_pkey;
       public            pedro    false    205            9           2606    16403    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            pedro    false    201            ;           2606    16411    detalle detalle_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.detalle
    ADD CONSTRAINT detalle_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.detalle DROP CONSTRAINT detalle_pkey;
       public            pedro    false    203            ?           2606    16448    lista lista_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.lista
    ADD CONSTRAINT lista_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.lista DROP CONSTRAINT lista_pkey;
       public            pedro    false    207            A           2606    16454    lista fk_animal    FK CONSTRAINT     q   ALTER TABLE ONLY public.lista
    ADD CONSTRAINT fk_animal FOREIGN KEY (id_animal) REFERENCES public.animal(id);
 9   ALTER TABLE ONLY public.lista DROP CONSTRAINT fk_animal;
       public          pedro    false    2877    207    205            @           2606    16449    lista fk_categoria    FK CONSTRAINT     z   ALTER TABLE ONLY public.lista
    ADD CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES public.categoria(id);
 <   ALTER TABLE ONLY public.lista DROP CONSTRAINT fk_categoria;
       public          pedro    false    207    201    2873            B           2606    16459    lista fk_detalle    FK CONSTRAINT     t   ALTER TABLE ONLY public.lista
    ADD CONSTRAINT fk_detalle FOREIGN KEY (id_detalle) REFERENCES public.detalle(id);
 :   ALTER TABLE ONLY public.lista DROP CONSTRAINT fk_detalle;
       public          pedro    false    2875    207    203            �   (   x�3��JL/M,�2�,M-�J��2��L/J����� ���      �   '   x�3��M��LK-��2�t,K�2�J-(������� ��4      �   *   x�3���K�L�2��M��L��2�t/M,I�M�I����� �D	S      �   7   x�3�L+J-�L�4200�54�52�4��".#Μ���!HƈӘӐ+F��� ww�     