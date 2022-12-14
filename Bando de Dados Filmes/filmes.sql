PGDMP     #    1                z            Filmes    13.4    13.4 #    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    107051    Filmes    DATABASE     h   CREATE DATABASE "Filmes" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Filmes";
                postgres    false            ?            1259    107546    diretor    TABLE     ?   CREATE TABLE public.diretor (
    id_diretor integer NOT NULL,
    nome character varying(64) NOT NULL,
    dt_nascimento timestamp without time zone,
    id_filme integer
);
    DROP TABLE public.diretor;
       public         heap    postgres    false            ?            1259    107536    elenco    TABLE     ~   CREATE TABLE public.elenco (
    id_elenco integer NOT NULL,
    nome character varying(64) NOT NULL,
    id_filme integer
);
    DROP TABLE public.elenco;
       public         heap    postgres    false            ?            1259    107511    filme    TABLE     ?   CREATE TABLE public.filme (
    id_filme integer NOT NULL,
    nome character varying(64) NOT NULL,
    duracao numeric(5,2),
    id_genero integer,
    id_plataforma integer
);
    DROP TABLE public.filme;
       public         heap    postgres    false            ?            1259    107561    filmepremiacao    TABLE     ?   CREATE TABLE public.filmepremiacao (
    id_filmepremiacao integer NOT NULL,
    nome_filme character varying(64) NOT NULL,
    id_premiacao integer,
    ano_premiacao integer,
    id_diretor integer
);
 "   DROP TABLE public.filmepremiacao;
       public         heap    postgres    false            ?            1259    107501    genero    TABLE     j   CREATE TABLE public.genero (
    id_genero integer NOT NULL,
    genero character varying(64) NOT NULL
);
    DROP TABLE public.genero;
       public         heap    postgres    false            ?            1259    107526    informacoesfilme    TABLE     ?   CREATE TABLE public.informacoesfilme (
    id_informacoesfilme integer NOT NULL,
    ano_lancamento integer,
    faturamento numeric(9,2),
    livro boolean,
    id_filme integer
);
 $   DROP TABLE public.informacoesfilme;
       public         heap    postgres    false            ?            1259    107506 
   plataforma    TABLE     v   CREATE TABLE public.plataforma (
    id_plataforma integer NOT NULL,
    plataforma character varying(64) NOT NULL
);
    DROP TABLE public.plataforma;
       public         heap    postgres    false            ?            1259    107556 	   premiacao    TABLE     n   CREATE TABLE public.premiacao (
    id_premiacao integer NOT NULL,
    nome character varying(64) NOT NULL
);
    DROP TABLE public.premiacao;
       public         heap    postgres    false            ?          0    107546    diretor 
   TABLE DATA           L   COPY public.diretor (id_diretor, nome, dt_nascimento, id_filme) FROM stdin;
    public          postgres    false    205   1)       ?          0    107536    elenco 
   TABLE DATA           ;   COPY public.elenco (id_elenco, nome, id_filme) FROM stdin;
    public          postgres    false    204   ?*       ?          0    107511    filme 
   TABLE DATA           R   COPY public.filme (id_filme, nome, duracao, id_genero, id_plataforma) FROM stdin;
    public          postgres    false    202   ?+       ?          0    107561    filmepremiacao 
   TABLE DATA           p   COPY public.filmepremiacao (id_filmepremiacao, nome_filme, id_premiacao, ano_premiacao, id_diretor) FROM stdin;
    public          postgres    false    207   ?,       ?          0    107501    genero 
   TABLE DATA           3   COPY public.genero (id_genero, genero) FROM stdin;
    public          postgres    false    200   @.       ?          0    107526    informacoesfilme 
   TABLE DATA           m   COPY public.informacoesfilme (id_informacoesfilme, ano_lancamento, faturamento, livro, id_filme) FROM stdin;
    public          postgres    false    203   ?.       ?          0    107506 
   plataforma 
   TABLE DATA           ?   COPY public.plataforma (id_plataforma, plataforma) FROM stdin;
    public          postgres    false    201   G/       ?          0    107556 	   premiacao 
   TABLE DATA           7   COPY public.premiacao (id_premiacao, nome) FROM stdin;
    public          postgres    false    206   ?/       G           2606    107550    diretor diretor_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.diretor
    ADD CONSTRAINT diretor_pkey PRIMARY KEY (id_diretor);
 >   ALTER TABLE ONLY public.diretor DROP CONSTRAINT diretor_pkey;
       public            postgres    false    205            E           2606    107540    elenco elenco_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.elenco
    ADD CONSTRAINT elenco_pkey PRIMARY KEY (id_elenco);
 <   ALTER TABLE ONLY public.elenco DROP CONSTRAINT elenco_pkey;
       public            postgres    false    204            A           2606    107515    filme filme_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.filme
    ADD CONSTRAINT filme_pkey PRIMARY KEY (id_filme);
 :   ALTER TABLE ONLY public.filme DROP CONSTRAINT filme_pkey;
       public            postgres    false    202            K           2606    107565 "   filmepremiacao filmepremiacao_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.filmepremiacao
    ADD CONSTRAINT filmepremiacao_pkey PRIMARY KEY (id_filmepremiacao);
 L   ALTER TABLE ONLY public.filmepremiacao DROP CONSTRAINT filmepremiacao_pkey;
       public            postgres    false    207            =           2606    107505    genero genero_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id_genero);
 <   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey;
       public            postgres    false    200            C           2606    107530 &   informacoesfilme informacoesfilme_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.informacoesfilme
    ADD CONSTRAINT informacoesfilme_pkey PRIMARY KEY (id_informacoesfilme);
 P   ALTER TABLE ONLY public.informacoesfilme DROP CONSTRAINT informacoesfilme_pkey;
       public            postgres    false    203            ?           2606    107510    plataforma plataforma_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.plataforma
    ADD CONSTRAINT plataforma_pkey PRIMARY KEY (id_plataforma);
 D   ALTER TABLE ONLY public.plataforma DROP CONSTRAINT plataforma_pkey;
       public            postgres    false    201            I           2606    107560    premiacao premiacao_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.premiacao
    ADD CONSTRAINT premiacao_pkey PRIMARY KEY (id_premiacao);
 B   ALTER TABLE ONLY public.premiacao DROP CONSTRAINT premiacao_pkey;
       public            postgres    false    206            P           2606    107551    diretor diretor_id_filme_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.diretor
    ADD CONSTRAINT diretor_id_filme_fkey FOREIGN KEY (id_filme) REFERENCES public.filme(id_filme);
 G   ALTER TABLE ONLY public.diretor DROP CONSTRAINT diretor_id_filme_fkey;
       public          postgres    false    205    202    2881            O           2606    107541    elenco elenco_id_filme_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.elenco
    ADD CONSTRAINT elenco_id_filme_fkey FOREIGN KEY (id_filme) REFERENCES public.filme(id_filme);
 E   ALTER TABLE ONLY public.elenco DROP CONSTRAINT elenco_id_filme_fkey;
       public          postgres    false    2881    204    202            L           2606    107516    filme filme_id_genero_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.filme
    ADD CONSTRAINT filme_id_genero_fkey FOREIGN KEY (id_genero) REFERENCES public.genero(id_genero);
 D   ALTER TABLE ONLY public.filme DROP CONSTRAINT filme_id_genero_fkey;
       public          postgres    false    2877    200    202            M           2606    107521    filme filme_id_plataforma_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.filme
    ADD CONSTRAINT filme_id_plataforma_fkey FOREIGN KEY (id_plataforma) REFERENCES public.plataforma(id_plataforma);
 H   ALTER TABLE ONLY public.filme DROP CONSTRAINT filme_id_plataforma_fkey;
       public          postgres    false    201    2879    202            R           2606    107571 -   filmepremiacao filmepremiacao_id_diretor_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.filmepremiacao
    ADD CONSTRAINT filmepremiacao_id_diretor_fkey FOREIGN KEY (id_diretor) REFERENCES public.diretor(id_diretor);
 W   ALTER TABLE ONLY public.filmepremiacao DROP CONSTRAINT filmepremiacao_id_diretor_fkey;
       public          postgres    false    205    207    2887            Q           2606    107566 /   filmepremiacao filmepremiacao_id_premiacao_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.filmepremiacao
    ADD CONSTRAINT filmepremiacao_id_premiacao_fkey FOREIGN KEY (id_premiacao) REFERENCES public.premiacao(id_premiacao);
 Y   ALTER TABLE ONLY public.filmepremiacao DROP CONSTRAINT filmepremiacao_id_premiacao_fkey;
       public          postgres    false    206    207    2889            N           2606    107531 /   informacoesfilme informacoesfilme_id_filme_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.informacoesfilme
    ADD CONSTRAINT informacoesfilme_id_filme_fkey FOREIGN KEY (id_filme) REFERENCES public.filme(id_filme);
 Y   ALTER TABLE ONLY public.informacoesfilme DROP CONSTRAINT informacoesfilme_id_filme_fkey;
       public          postgres    false    203    202    2881            ?   A  x?U??J1??3O??d???ي??XT?ƛ?]i?@6U????®?ˏ??3A?c`}~|?)??֠3???^??BpjC??m?&???M??B=?x?O?G?L5?0?LP?ZQ?{??cLc?Bc+cg?
*?C???I???P?J???Sx?ϧa?3???Ib}??#?S?չ9Κ?Ъ??u/}????r?7NX????F?&>|???R?1???Ъb?$??g??s??7??u??????:1?5忑Н???8[?Ƶ3?{?֎??Z2??d? K?ړ??>ư=dN???3???????)??r'?f???_?/pх      ?     x?U?KN1???)rTϣ?%}hJ7?b?6???(	???g??H%6?,??g?&?\?U??T?? ??A?????D?????r6?i?1???b?.e}??Vw?Y}rH?`?h<?Yx? ghq?F?Pħ?6?c?@???%gs??+R<ILp
{ӱ?S??ۺ?c:i?̐F???oӳ?|?a????GN??????{??*?G?!?????J\I??KP?TC?p?]????" ??X?w\?q|???[/_E?,?Z?N?Z|?A?_vQo}      ?   6  x?U?=N?@???S??????
"?D"J?Ҍ?!^??5???uU?ih}1?pRo޼7#?ɘ?Ԋ@??$@?!ܨ?m?r?X7<?PD?旖???U:S5?????V?=?Ʋ?????%?¬???V??Q?s???;Sq?9?-[k????lU??>???G?<??e[lqI?:U'4S?ƞ?e ??l??OvC????????????r?Z?????=?2r???T??t\???? Ŭ-k???w9d?X.???_[?07?An?-!?{?aUg???L???߅+????L???|$???-?Ƒ?n"??Ab??      ?   G  x?=Q?N?@<?_? e?I_???r????JL?R?6?;?S?s??c????=㱂g?W?t??PÍ??7&?Rl#??	????h???L%??&ö?'c?;/5????R֟ZʙJ1L֙?R? ?)ܹRJʅn?{w??0?<???cz???s_k??6mqO?ܙ?8b????:??T?*?u?>7??ԃ?5?ǻ??$?*5z?J=?#/??ك?2?? ??V??2M?9hwR?cǦ??E?ԟ?PMR7^
?Ϥ????a?JGҒx&?փL???k??@???????7KJ??Ñ??-?6????|?F?_??~?      ?   F   x?3?t???M<????|.#N??d0S?935?$3-39?˘?"m??X--J?2???M?KN?????? ?U      ?   ?   x?M?K!?u|?*??]??	z
????r0Sa$????????)4g?????/눥&??o?TөY=lk?M՚jу[??RX?????Vov_;[Kg??y?k?ű???????=??G?v???3?????:J?#۬?9?O>??????????;?      ?   @   x?3??K-I?ɬ?2?t?,?K??2?t?M????2??p?W?M??2?t??O?W(?I??????? ?S?      ?   :   x?3??/NN,?2?t??O?WHIU?/-??2?t???LUp,O,J)?2?tvv?????? rd?     