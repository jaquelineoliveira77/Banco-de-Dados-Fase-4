PGDMP         3                y            Seriados    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    41161    Seriados    DATABASE     j   CREATE DATABASE "Seriados" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Seriados";
                postgres    false            ?            1259    41390    genero    TABLE     h   CREATE TABLE public.genero (
    id_genero integer NOT NULL,
    nome character varying(64) NOT NULL
);
    DROP TABLE public.genero;
       public         heap    postgres    false            ?            1259    41410    plataforma_seriado    TABLE     ?   CREATE TABLE public.plataforma_seriado (
    id_plataforma integer NOT NULL,
    id_seriado integer NOT NULL,
    data_inicio timestamp without time zone NOT NULL,
    data_fim timestamp without time zone
);
 &   DROP TABLE public.plataforma_seriado;
       public         heap    postgres    false            ?            1259    41405    plataforma_streaming    TABLE     ?   CREATE TABLE public.plataforma_streaming (
    id_plataforma integer NOT NULL,
    nome character varying(64) NOT NULL,
    preco_mensal numeric(5,2) NOT NULL,
    offline boolean,
    preco_anual numeric(5,2)
);
 (   DROP TABLE public.plataforma_streaming;
       public         heap    postgres    false            ?            1259    41395    seriado    TABLE     ?   CREATE TABLE public.seriado (
    id_seriado integer NOT NULL,
    nome character varying(64) NOT NULL,
    ano_inicio integer,
    ano_fim integer,
    id_genero integer NOT NULL
);
    DROP TABLE public.seriado;
       public         heap    postgres    false            ?          0    41390    genero 
   TABLE DATA           1   COPY public.genero (id_genero, nome) FROM stdin;
    public          postgres    false    200   ?       ?          0    41410    plataforma_seriado 
   TABLE DATA           ^   COPY public.plataforma_seriado (id_plataforma, id_seriado, data_inicio, data_fim) FROM stdin;
    public          postgres    false    203   @       ?          0    41405    plataforma_streaming 
   TABLE DATA           g   COPY public.plataforma_streaming (id_plataforma, nome, preco_mensal, offline, preco_anual) FROM stdin;
    public          postgres    false    202   ?       ?          0    41395    seriado 
   TABLE DATA           S   COPY public.seriado (id_seriado, nome, ano_inicio, ano_fim, id_genero) FROM stdin;
    public          postgres    false    201          -           2606    41394    genero genero_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id_genero);
 <   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey;
       public            postgres    false    200            3           2606    41414 *   plataforma_seriado plataforma_seriado_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.plataforma_seriado
    ADD CONSTRAINT plataforma_seriado_pkey PRIMARY KEY (id_plataforma, id_seriado, data_inicio);
 T   ALTER TABLE ONLY public.plataforma_seriado DROP CONSTRAINT plataforma_seriado_pkey;
       public            postgres    false    203    203    203            1           2606    41409 .   plataforma_streaming plataforma_streaming_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.plataforma_streaming
    ADD CONSTRAINT plataforma_streaming_pkey PRIMARY KEY (id_plataforma);
 X   ALTER TABLE ONLY public.plataforma_streaming DROP CONSTRAINT plataforma_streaming_pkey;
       public            postgres    false    202            /           2606    41399    seriado seriado_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.seriado
    ADD CONSTRAINT seriado_pkey PRIMARY KEY (id_seriado);
 >   ALTER TABLE ONLY public.seriado DROP CONSTRAINT seriado_pkey;
       public            postgres    false    201            5           2606    41415 8   plataforma_seriado plataforma_seriado_id_plataforma_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.plataforma_seriado
    ADD CONSTRAINT plataforma_seriado_id_plataforma_fkey FOREIGN KEY (id_plataforma) REFERENCES public.plataforma_streaming(id_plataforma);
 b   ALTER TABLE ONLY public.plataforma_seriado DROP CONSTRAINT plataforma_seriado_id_plataforma_fkey;
       public          postgres    false    203    2865    202            6           2606    41420 5   plataforma_seriado plataforma_seriado_id_seriado_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.plataforma_seriado
    ADD CONSTRAINT plataforma_seriado_id_seriado_fkey FOREIGN KEY (id_seriado) REFERENCES public.seriado(id_seriado);
 _   ALTER TABLE ONLY public.plataforma_seriado DROP CONSTRAINT plataforma_seriado_id_seriado_fkey;
       public          postgres    false    203    201    2863            4           2606    41400    seriado seriado_id_genero_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.seriado
    ADD CONSTRAINT seriado_id_genero_fkey FOREIGN KEY (id_genero) REFERENCES public.genero(id_genero);
 H   ALTER TABLE ONLY public.seriado DROP CONSTRAINT seriado_id_genero_fkey;
       public          postgres    false    201    2861    200            ?   :   x?3?.-H-R?H-:?9??ˈ????Ë???9?2??L???Լ??k?2??b???? 0??      ?   K   x?3?4?4204?50?52T00?#??.?H?D??@??M?$e
?22C?2?hh?&e
?2?5?D????? ???      ?   g   x?3??K-I?ɬ?42ճ4?,?42??33?2?(??MU(;?6%5??$??ii?g`?e???????X?ih?gi
?dhdq?p?d??Vr?C???????? C?k      ?   s   x?3??IMO?K)V?OS???/*?/?4204????4?2??HUp?I,? ???D???9?KR??3?r@?? QC.NG?Q%?
ΉE%?EH??Be?R?32SsR@??}1z\\\  ?#?     