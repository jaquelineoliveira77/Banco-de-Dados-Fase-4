PGDMP                          z         	   Atividade    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    98856 	   Atividade    DATABASE     k   CREATE DATABASE "Atividade" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Atividade";
                postgres    false            ?            1259    98915    ingrediente    TABLE     ?   CREATE TABLE public.ingrediente (
    id_ingrediente integer NOT NULL,
    nome character varying(64) NOT NULL,
    gluten boolean DEFAULT true,
    lactose boolean DEFAULT true
);
    DROP TABLE public.ingrediente;
       public         heap    postgres    false            ?            1259    98948    pizza    TABLE       CREATE TABLE public.pizza (
    id_pizza integer NOT NULL,
    nome character varying(64),
    preco numeric(5,2),
    calorias integer,
    dt_hr_cadastro timestamp without time zone,
    id_tipo integer,
    CONSTRAINT pizza_preco_check CHECK ((preco >= (1)::numeric))
);
    DROP TABLE public.pizza;
       public         heap    postgres    false            ?            1259    98922    pizza_ingrediente    TABLE     n   CREATE TABLE public.pizza_ingrediente (
    id_pizza integer NOT NULL,
    id_ingrediente integer NOT NULL
);
 %   DROP TABLE public.pizza_ingrediente;
       public         heap    postgres    false            ?            1259    98897    tipo    TABLE     d   CREATE TABLE public.tipo (
    id_tipo integer NOT NULL,
    tipo character varying(64) NOT NULL
);
    DROP TABLE public.tipo;
       public         heap    postgres    false            ?          0    98915    ingrediente 
   TABLE DATA           L   COPY public.ingrediente (id_ingrediente, nome, gluten, lactose) FROM stdin;
    public          postgres    false    201   ?       ?          0    98948    pizza 
   TABLE DATA           Y   COPY public.pizza (id_pizza, nome, preco, calorias, dt_hr_cadastro, id_tipo) FROM stdin;
    public          postgres    false    203   ?       ?          0    98922    pizza_ingrediente 
   TABLE DATA           E   COPY public.pizza_ingrediente (id_pizza, id_ingrediente) FROM stdin;
    public          postgres    false    202   ?       ?          0    98897    tipo 
   TABLE DATA           -   COPY public.tipo (id_tipo, tipo) FROM stdin;
    public          postgres    false    200          2           2606    98921    ingrediente ingrediente_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT ingrediente_pkey PRIMARY KEY (id_ingrediente);
 F   ALTER TABLE ONLY public.ingrediente DROP CONSTRAINT ingrediente_pkey;
       public            postgres    false    201            4           2606    98955    pizza pizza_nome_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT pizza_nome_key UNIQUE (nome);
 >   ALTER TABLE ONLY public.pizza DROP CONSTRAINT pizza_nome_key;
       public            postgres    false    203            6           2606    98953    pizza pizza_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT pizza_pkey PRIMARY KEY (id_pizza);
 :   ALTER TABLE ONLY public.pizza DROP CONSTRAINT pizza_pkey;
       public            postgres    false    203            0           2606    98901    tipo tipo_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.tipo
    ADD CONSTRAINT tipo_pkey PRIMARY KEY (id_tipo);
 8   ALTER TABLE ONLY public.tipo DROP CONSTRAINT tipo_pkey;
       public            postgres    false    200            8           2606    98956    pizza pizza_id_tipo_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT pizza_id_tipo_fkey FOREIGN KEY (id_tipo) REFERENCES public.tipo(id_tipo);
 B   ALTER TABLE ONLY public.pizza DROP CONSTRAINT pizza_id_tipo_fkey;
       public          postgres    false    203    200    2864            7           2606    98930 7   pizza_ingrediente pizza_ingrediente_id_ingrediente_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pizza_ingrediente
    ADD CONSTRAINT pizza_ingrediente_id_ingrediente_fkey FOREIGN KEY (id_ingrediente) REFERENCES public.ingrediente(id_ingrediente);
 a   ALTER TABLE ONLY public.pizza_ingrediente DROP CONSTRAINT pizza_ingrediente_id_ingrediente_fkey;
       public          postgres    false    201    202    2866            ?   ?   x???MN?0F??)r?j???֣? OjM3J?क?:?Xs?^?a@l?Ί??=+[??г??f ck?1%`?@'??w6???r=? ?A0??ZG???/?????????lk!8? RFr=O?o?3S=??<??8hSWA7*`??tUqW???&te??????;m*?e?8?f???#?6鯲 ????'N?????E?|?uxџ
<?׎??.???y??S???!???k?=o?????K      ?   ?   x?e?Kn? ???)|?~tY?SE?6j!?1?=O??#?b%ȵ?*?X}??@p6?????:!?x?#q??K &?5??v?p???o*8??p??d?HJ?͞?8?9?b?݄Ǘ?[?l͉V0??s?3?ق??c??%?7???,v??y.?dU?F[̶3?dj?v???Z???.:/?>????뤑????5\|X?~}??¤?i,95??^??;?ܜ<?Y?Ʌ?????_iv=1?~ ?[k       ?   /   x??I   ?????(??:H???'?Ų(7???r? ??????      ?   A   x?3?)JL?L???K??2?t-.HM?2?9]??S?L8????R?L9?R?SK?2??b???? "~o     