PGDMP                         y            Restaurante    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    66052    Restaurante    DATABASE     m   CREATE DATABASE "Restaurante" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Restaurante";
                postgres    false            ?            1259    74291    caracteristica    TABLE     ?   CREATE TABLE public.caracteristica (
    id_caracteristica integer NOT NULL,
    localizacao character varying(64),
    data_inauguracao timestamp without time zone DEFAULT now()
);
 "   DROP TABLE public.caracteristica;
       public         heap    postgres    false            ?            1259    74244    classificacao    TABLE     {   CREATE TABLE public.classificacao (
    id_classificacao integer NOT NULL,
    nome_classificacao character varying(64)
);
 !   DROP TABLE public.classificacao;
       public         heap    postgres    false            ?            1259    74249    restaurante    TABLE     ?   CREATE TABLE public.restaurante (
    id_restaurante integer NOT NULL,
    nome character varying(64) NOT NULL,
    valor numeric(5,2) NOT NULL,
    id_classificacao integer NOT NULL
);
    DROP TABLE public.restaurante;
       public         heap    postgres    false            ?            1259    74270    restaurante_caracteristica    TABLE     ?   CREATE TABLE public.restaurante_caracteristica (
    id_restaurante integer NOT NULL,
    id_caracteristica integer NOT NULL,
    restaurante boolean,
    estacionamento boolean
);
 .   DROP TABLE public.restaurante_caracteristica;
       public         heap    postgres    false            ?          0    74291    caracteristica 
   TABLE DATA           Z   COPY public.caracteristica (id_caracteristica, localizacao, data_inauguracao) FROM stdin;
    public          postgres    false    203          ?          0    74244    classificacao 
   TABLE DATA           M   COPY public.classificacao (id_classificacao, nome_classificacao) FROM stdin;
    public          postgres    false    200   q       ?          0    74249    restaurante 
   TABLE DATA           T   COPY public.restaurante (id_restaurante, nome, valor, id_classificacao) FROM stdin;
    public          postgres    false    201   ?       ?          0    74270    restaurante_caracteristica 
   TABLE DATA           t   COPY public.restaurante_caracteristica (id_restaurante, id_caracteristica, restaurante, estacionamento) FROM stdin;
    public          postgres    false    202   #       4           2606    74296 "   caracteristica caracteristica_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.caracteristica
    ADD CONSTRAINT caracteristica_pkey PRIMARY KEY (id_caracteristica);
 L   ALTER TABLE ONLY public.caracteristica DROP CONSTRAINT caracteristica_pkey;
       public            postgres    false    203            .           2606    74248     classificacao classificacao_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.classificacao
    ADD CONSTRAINT classificacao_pkey PRIMARY KEY (id_classificacao);
 J   ALTER TABLE ONLY public.classificacao DROP CONSTRAINT classificacao_pkey;
       public            postgres    false    200            2           2606    74274 :   restaurante_caracteristica restaurante_caracteristica_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.restaurante_caracteristica
    ADD CONSTRAINT restaurante_caracteristica_pkey PRIMARY KEY (id_restaurante, id_caracteristica);
 d   ALTER TABLE ONLY public.restaurante_caracteristica DROP CONSTRAINT restaurante_caracteristica_pkey;
       public            postgres    false    202    202            0           2606    74253    restaurante restaurante_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.restaurante
    ADD CONSTRAINT restaurante_pkey PRIMARY KEY (id_restaurante);
 F   ALTER TABLE ONLY public.restaurante DROP CONSTRAINT restaurante_pkey;
       public            postgres    false    201            6           2606    74275 I   restaurante_caracteristica restaurante_caracteristica_id_restaurante_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.restaurante_caracteristica
    ADD CONSTRAINT restaurante_caracteristica_id_restaurante_fkey FOREIGN KEY (id_restaurante) REFERENCES public.restaurante(id_restaurante);
 s   ALTER TABLE ONLY public.restaurante_caracteristica DROP CONSTRAINT restaurante_caracteristica_id_restaurante_fkey;
       public          postgres    false    202    2864    201            5           2606    74254 -   restaurante restaurante_id_classificacao_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.restaurante
    ADD CONSTRAINT restaurante_id_classificacao_fkey FOREIGN KEY (id_classificacao) REFERENCES public.classificacao(id_classificacao);
 W   ALTER TABLE ONLY public.restaurante DROP CONSTRAINT restaurante_id_classificacao_fkey;
       public          postgres    false    200    201    2862            ?   H   x?3??ILO-?4204?50?52Q00?#.#????????B?!g?k`?kh??3Aș???!?b???? ?7      ?   -   x?3?,M,)?WH-.)J?I,?2?t??KF0?Pb??$F??? Ƌ?      ?   e   x?U?A@0@???)?M[?7+?I?(?q?F??}?O???Q<??F??%?W+???͎?c
i?m?U?L??^?/?`Xµ2??K???I!?A'?      ?   %   x?3?4?,?,?2?4?Ɯ?@:?˄?̏???? |sc     