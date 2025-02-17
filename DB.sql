PGDMP  5    (                }            fanclub    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16449    fanclub    DATABASE     z   CREATE DATABASE fanclub WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Japanese_Japan.932';
    DROP DATABASE fanclub;
                     postgres    false            �           0    0    DATABASE fanclub    ACL     1   GRANT ALL ON DATABASE fanclub TO fanclub_adomin;
                        postgres    false    4853            �            1259    16452    members    TABLE     G  CREATE TABLE public.members (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    role character varying(20) NOT NULL,
    CONSTRAINT members_role_check CHECK (((role)::text = ANY ((ARRAY['staff'::character varying, 'customer'::character varying])::text[])))
);
    DROP TABLE public.members;
       public         heap r       postgres    false            �           0    0    TABLE members    ACL     M   GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.members TO fanclub_adomin;
          public               postgres    false    218            �            1259    16451    members_id_seq    SEQUENCE     �   CREATE SEQUENCE public.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.members_id_seq;
       public               postgres    false    218            �           0    0    members_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.members_id_seq OWNED BY public.members.id;
          public               postgres    false    217            �           0    0    SEQUENCE members_id_seq    ACL     ?   GRANT ALL ON SEQUENCE public.members_id_seq TO fanclub_adomin;
          public               postgres    false    217            W           2604    16455 
   members id    DEFAULT     h   ALTER TABLE ONLY public.members ALTER COLUMN id SET DEFAULT nextval('public.members_id_seq'::regclass);
 9   ALTER TABLE public.members ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �          0    16452    members 
   TABLE DATA           <   COPY public.members (id, username, email, role) FROM stdin;
    public               postgres    false    218   	       �           0    0    members_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.members_id_seq', 2, true);
          public               postgres    false    217            Z           2606    16460    members members_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.members DROP CONSTRAINT members_email_key;
       public                 postgres    false    218            \           2606    16458    members members_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.members DROP CONSTRAINT members_pkey;
       public                 postgres    false    218            �   .   x�3�,.ILK����zY6�gi>AŒK�K�sS��b���� �Z�     