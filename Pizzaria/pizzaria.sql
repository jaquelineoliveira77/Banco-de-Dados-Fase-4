PGDMP         '                y            Pizzaria    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    32861    Pizzaria    DATABASE     j   CREATE DATABASE "Pizzaria" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Pizzaria";
                postgres    false            ?            1259    57876    ingrediente    TABLE     r   CREATE TABLE public.ingrediente (
    id_ingrediente integer NOT NULL,
    nome character varying(64) NOT NULL
);
    DROP TABLE public.ingrediente;
       public         heap    postgres    false            ?            1259    57865    pizza    TABLE     ?   CREATE TABLE public.pizza (
    id_pizza integer NOT NULL,
    nome character varying(64) NOT NULL,
    preco numeric(5,2) NOT NULL,
    calorias integer,
    gluten boolean DEFAULT true,
    id_tipo integer
);
    DROP TABLE public.pizza;
       public         heap    postgres    false            ?            1259    57881    pizza_ingrediente    TABLE     n   CREATE TABLE public.pizza_ingrediente (
    id_pizza integer NOT NULL,
    id_ingrediente integer NOT NULL
);
 %   DROP TABLE public.pizza_ingrediente;
       public         heap    postgres    false            ?            1259    57860    tipo    TABLE     d   CREATE TABLE public.tipo (
    id_tipo integer NOT NULL,
    tipo character varying(64) NOT NULL
);
    DROP TABLE public.tipo;
       public         heap    postgres    false            ?          0    57876    ingrediente 
   TABLE DATA           ;   COPY public.ingrediente (id_ingrediente, nome) FROM stdin;
    public          postgres    false    202   ?       ?          0    57865    pizza 
   TABLE DATA           Q   COPY public.pizza (id_pizza, nome, preco, calorias, gluten, id_tipo) FROM stdin;
    public          postgres    false    201   ?       ?          0    57881    pizza_ingrediente 
   TABLE DATA           E   COPY public.pizza_ingrediente (id_pizza, id_ingrediente) FROM stdin;
    public          postgres    false    203          ?          0    57860    tipo 
   TABLE DATA           -   COPY public.tipo (id_tipo, tipo) FROM stdin;
    public          postgres    false    200   N       2           2606    57880    ingrediente ingrediente_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT ingrediente_pkey PRIMARY KEY (id_ingrediente);
 F   ALTER TABLE ONLY public.ingrediente DROP CONSTRAINT ingrediente_pkey;
       public            postgres    false    202            0           2606    57870    pizza pizza_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT pizza_pkey PRIMARY KEY (id_pizza);
 :   ALTER TABLE ONLY public.pizza DROP CONSTRAINT pizza_pkey;
       public            postgres    false    201            .           2606    57864    tipo tipo_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.tipo
    ADD CONSTRAINT tipo_pkey PRIMARY KEY (id_tipo);
 8   ALTER TABLE ONLY public.tipo DROP CONSTRAINT tipo_pkey;
       public            postgres    false    200            3           2606    57871    pizza pizza_id_tipo_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT pizza_id_tipo_fkey FOREIGN KEY (id_tipo) REFERENCES public.tipo(id_tipo);
 B   ALTER TABLE ONLY public.pizza DROP CONSTRAINT pizza_id_tipo_fkey;
       public          postgres    false    201    200    2862            5           2606    57889 7   pizza_ingrediente pizza_ingrediente_id_ingrediente_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pizza_ingrediente
    ADD CONSTRAINT pizza_ingrediente_id_ingrediente_fkey FOREIGN KEY (id_ingrediente) REFERENCES public.ingrediente(id_ingrediente);
 a   ALTER TABLE ONLY public.pizza_ingrediente DROP CONSTRAINT pizza_ingrediente_id_ingrediente_fkey;
       public          postgres    false    2866    203    202            4           2606    57884 1   pizza_ingrediente pizza_ingrediente_id_pizza_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pizza_ingrediente
    ADD CONSTRAINT pizza_ingrediente_id_pizza_fkey FOREIGN KEY (id_pizza) REFERENCES public.pizza(id_pizza);
 [   ALTER TABLE ONLY public.pizza_ingrediente DROP CONSTRAINT pizza_ingrediente_id_pizza_fkey;
       public          postgres    false    203    2864    201            ?   8  x??R;N1?=??V???WJ?=????l???+?uRq?\?1? )t??y??U??z?k҅=j?r?D5i?aKɚÞa~~ՠ?U???8?)FJ,\???1U??3{?Fg0bJu???rqG?p@?V]φ??v??0?5??k??I????Hg2u?Wl???a??????V?o䣃4?	Æ?N=??OB_?Mi????e ???Q?Ba??z?P?e?6?I??<:4?S(??]??Gh[?<??
?ZM??;???Rj???b???Y2?s???Fw?2L???݈?Bu?<?D8?;?k??`???;??4?o??K      ?     x?E?Mn?0???Sp??@`[???"u?fJb	0L??'G??jT?x?????I?"OK. ??)?A?y?
????:I]!
nvY,?ف?????$=???A???(Q?????p??i?(??<}?G?h?{?8G?6[m?`4??3???e????'??[1B?n??6l?
?3B?ÅMh0l???????g?Z\?Jի?????
>?x????y??-54d'??m??v|?8?A[?̾?)SL׊?$???rd?      ?   6   x????0İ7YL?+?J/鿎 !e?N???f{8^?/?d???"e??ߣ?vn      ?   3   x?3?)JL?L???K??2?t-.HM?2?9]??S?L8????R?b???? ???     