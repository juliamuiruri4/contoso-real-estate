PGDMP                          {            postgres    12.12    14.6 (Homebrew) �   B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            E           1262    14043    postgres    DATABASE     \   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                azure_pg_admin    false            F           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   azure_pg_admin    false    4165            G           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM azuresu;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO azure_pg_admin;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   azure_pg_admin    false    6                        3079    24781    pg_cron 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS pg_cron WITH SCHEMA public;
    DROP EXTENSION pg_cron;
                   false            H           0    0    EXTENSION pg_cron    COMMENT     @   COMMENT ON EXTENSION pg_cron IS 'Job scheduler for PostgreSQL';
                        false    4            I           0    0    SCHEMA cron    ACL     .   GRANT USAGE ON SCHEMA cron TO azure_pg_admin;
                   azuresu    false    11                        3079    24833    azure 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS azure WITH SCHEMA pg_catalog;
    DROP EXTENSION azure;
                   false            J           0    0    EXTENSION azure    COMMENT     H   COMMENT ON EXTENSION azure IS 'azure extension for PostgreSQL service';
                        false    1                        3079    24577 	   pgaadauth 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS pgaadauth WITH SCHEMA pg_catalog;
    DROP EXTENSION pgaadauth;
                   false            K           0    0    EXTENSION pgaadauth    COMMENT     K   COMMENT ON EXTENSION pgaadauth IS 'Azure Active Directory Authentication';
                        false    2            L           0    0 l   FUNCTION alter_job(job_id bigint, schedule text, command text, database text, username text, active boolean)    ACL     �   GRANT ALL ON FUNCTION cron.alter_job(job_id bigint, schedule text, command text, database text, username text, active boolean) TO azure_pg_admin;
          cron          azuresu    false    310            M           0    0    FUNCTION job_cache_invalidate()    ACL     E   GRANT ALL ON FUNCTION cron.job_cache_invalidate() TO azure_pg_admin;
          cron          azuresu    false    313            N           0    0 .   FUNCTION schedule(schedule text, command text)    ACL     T   GRANT ALL ON FUNCTION cron.schedule(schedule text, command text) TO azure_pg_admin;
          cron          azuresu    false    311            O           0    0 =   FUNCTION schedule(job_name text, schedule text, command text)    ACL     c   GRANT ALL ON FUNCTION cron.schedule(job_name text, schedule text, command text) TO azure_pg_admin;
          cron          azuresu    false    314            P           0    0 w   FUNCTION schedule_in_database(job_name text, schedule text, command text, database text, username text, active boolean)    ACL     �   GRANT ALL ON FUNCTION cron.schedule_in_database(job_name text, schedule text, command text, database text, username text, active boolean) TO azure_pg_admin;
          cron          azuresu    false    282            Q           0    0 "   FUNCTION unschedule(job_id bigint)    ACL     H   GRANT ALL ON FUNCTION cron.unschedule(job_id bigint) TO azure_pg_admin;
          cron          azuresu    false    312            R           0    0 "   FUNCTION unschedule(job_name name)    ACL     H   GRANT ALL ON FUNCTION cron.unschedule(job_name name) TO azure_pg_admin;
          cron          azuresu    false    288            S           0    0 4   FUNCTION pg_replication_origin_advance(text, pg_lsn)    ACL     `   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_advance(text, pg_lsn) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    280            T           0    0 +   FUNCTION pg_replication_origin_create(text)    ACL     W   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_create(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    281            U           0    0 )   FUNCTION pg_replication_origin_drop(text)    ACL     U   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_drop(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    295            V           0    0 (   FUNCTION pg_replication_origin_oid(text)    ACL     T   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_oid(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    296            W           0    0 6   FUNCTION pg_replication_origin_progress(text, boolean)    ACL     b   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_progress(text, boolean) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    297            X           0    0 1   FUNCTION pg_replication_origin_session_is_setup()    ACL     ]   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_is_setup() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    298            Y           0    0 8   FUNCTION pg_replication_origin_session_progress(boolean)    ACL     d   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_progress(boolean) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    299            Z           0    0 .   FUNCTION pg_replication_origin_session_reset()    ACL     Z   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_reset() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    300            [           0    0 2   FUNCTION pg_replication_origin_session_setup(text)    ACL     ^   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_setup(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    301            \           0    0 +   FUNCTION pg_replication_origin_xact_reset()    ACL     W   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_reset() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    302            ]           0    0 K   FUNCTION pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone)    ACL     w   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    303            ^           0    0    FUNCTION pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn)    ACL     �   GRANT ALL ON FUNCTION pg_catalog.pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    283            _           0    0    FUNCTION pg_stat_reset()    ACL     D   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    284            `           0    0 #   FUNCTION pg_stat_reset_shared(text)    ACL     O   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_shared(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    285            a           0    0 4   FUNCTION pg_stat_reset_single_function_counters(oid)    ACL     `   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_single_function_counters(oid) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    287            b           0    0 1   FUNCTION pg_stat_reset_single_table_counters(oid)    ACL     ]   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_single_table_counters(oid) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    286            c           0    0    COLUMN pg_config.name    ACL     D   GRANT SELECT(name) ON TABLE pg_catalog.pg_config TO azure_pg_admin;
       
   pg_catalog          azuresu    false    101            d           0    0    COLUMN pg_config.setting    ACL     G   GRANT SELECT(setting) ON TABLE pg_catalog.pg_config TO azure_pg_admin;
       
   pg_catalog          azuresu    false    101            e           0    0 $   COLUMN pg_hba_file_rules.line_number    ACL     S   GRANT SELECT(line_number) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            f           0    0    COLUMN pg_hba_file_rules.type    ACL     L   GRANT SELECT(type) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            g           0    0 !   COLUMN pg_hba_file_rules.database    ACL     P   GRANT SELECT(database) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            h           0    0 "   COLUMN pg_hba_file_rules.user_name    ACL     Q   GRANT SELECT(user_name) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            i           0    0     COLUMN pg_hba_file_rules.address    ACL     O   GRANT SELECT(address) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            j           0    0     COLUMN pg_hba_file_rules.netmask    ACL     O   GRANT SELECT(netmask) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            k           0    0 $   COLUMN pg_hba_file_rules.auth_method    ACL     S   GRANT SELECT(auth_method) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            l           0    0     COLUMN pg_hba_file_rules.options    ACL     O   GRANT SELECT(options) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            m           0    0    COLUMN pg_hba_file_rules.error    ACL     M   GRANT SELECT(error) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            n           0    0 ,   COLUMN pg_replication_origin_status.local_id    ACL     [   GRANT SELECT(local_id) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    137            o           0    0 /   COLUMN pg_replication_origin_status.external_id    ACL     ^   GRANT SELECT(external_id) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    137            p           0    0 .   COLUMN pg_replication_origin_status.remote_lsn    ACL     ]   GRANT SELECT(remote_lsn) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    137            q           0    0 -   COLUMN pg_replication_origin_status.local_lsn    ACL     \   GRANT SELECT(local_lsn) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    137            r           0    0    COLUMN pg_statistic.starelid    ACL     K   GRANT SELECT(starelid) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            s           0    0    COLUMN pg_statistic.staattnum    ACL     L   GRANT SELECT(staattnum) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            t           0    0    COLUMN pg_statistic.stainherit    ACL     M   GRANT SELECT(stainherit) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            u           0    0    COLUMN pg_statistic.stanullfrac    ACL     N   GRANT SELECT(stanullfrac) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            v           0    0    COLUMN pg_statistic.stawidth    ACL     K   GRANT SELECT(stawidth) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            w           0    0    COLUMN pg_statistic.stadistinct    ACL     N   GRANT SELECT(stadistinct) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            x           0    0    COLUMN pg_statistic.stakind1    ACL     K   GRANT SELECT(stakind1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            y           0    0    COLUMN pg_statistic.stakind2    ACL     K   GRANT SELECT(stakind2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            z           0    0    COLUMN pg_statistic.stakind3    ACL     K   GRANT SELECT(stakind3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            {           0    0    COLUMN pg_statistic.stakind4    ACL     K   GRANT SELECT(stakind4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            |           0    0    COLUMN pg_statistic.stakind5    ACL     K   GRANT SELECT(stakind5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            }           0    0    COLUMN pg_statistic.staop1    ACL     I   GRANT SELECT(staop1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            ~           0    0    COLUMN pg_statistic.staop2    ACL     I   GRANT SELECT(staop2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46                       0    0    COLUMN pg_statistic.staop3    ACL     I   GRANT SELECT(staop3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.staop4    ACL     I   GRANT SELECT(staop4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.staop5    ACL     I   GRANT SELECT(staop5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stacoll1    ACL     K   GRANT SELECT(stacoll1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stacoll2    ACL     K   GRANT SELECT(stacoll2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stacoll3    ACL     K   GRANT SELECT(stacoll3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stacoll4    ACL     K   GRANT SELECT(stacoll4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stacoll5    ACL     K   GRANT SELECT(stacoll5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stanumbers1    ACL     N   GRANT SELECT(stanumbers1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stanumbers2    ACL     N   GRANT SELECT(stanumbers2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stanumbers3    ACL     N   GRANT SELECT(stanumbers3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stanumbers4    ACL     N   GRANT SELECT(stanumbers4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stanumbers5    ACL     N   GRANT SELECT(stanumbers5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stavalues1    ACL     M   GRANT SELECT(stavalues1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stavalues2    ACL     M   GRANT SELECT(stavalues2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stavalues3    ACL     M   GRANT SELECT(stavalues3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stavalues4    ACL     M   GRANT SELECT(stavalues4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stavalues5    ACL     M   GRANT SELECT(stavalues5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_subscription.oid    ACL     I   GRANT SELECT(oid) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0    COLUMN pg_subscription.subdbid    ACL     M   GRANT SELECT(subdbid) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0    COLUMN pg_subscription.subname    ACL     M   GRANT SELECT(subname) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0    COLUMN pg_subscription.subowner    ACL     N   GRANT SELECT(subowner) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0 !   COLUMN pg_subscription.subenabled    ACL     P   GRANT SELECT(subenabled) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0 "   COLUMN pg_subscription.subconninfo    ACL     Q   GRANT SELECT(subconninfo) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0 "   COLUMN pg_subscription.subslotname    ACL     Q   GRANT SELECT(subslotname) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0 $   COLUMN pg_subscription.subsynccommit    ACL     S   GRANT SELECT(subsynccommit) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0 &   COLUMN pg_subscription.subpublications    ACL     U   GRANT SELECT(subpublications) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �            1259    24881    admin_permissions    TABLE     J  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    contosoAdmin    false            �            1259    24879    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          contosoAdmin    false    219            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          contosoAdmin    false    218                       1259    25125    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order integer
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    contosoAdmin    false                        1259    25123 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          contosoAdmin    false    257            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          contosoAdmin    false    256            �            1259    24907    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    contosoAdmin    false            �            1259    24905    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          contosoAdmin    false    223            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          contosoAdmin    false    222            �            1259    24894    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    contosoAdmin    false            �            1259    24892    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          contosoAdmin    false    221            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          contosoAdmin    false    220                       1259    25138    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order integer,
    user_order integer
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    contosoAdmin    false                       1259    25136    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          contosoAdmin    false    259            �           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          contosoAdmin    false    258            �            1259    25028    articles    TABLE     j  CREATE TABLE public.articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    content text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.articles;
       public         heap    contosoAdmin    false                       1259    25242    articles_author_links    TABLE     �   CREATE TABLE public.articles_author_links (
    id integer NOT NULL,
    article_id integer,
    writer_id integer,
    article_order integer
);
 )   DROP TABLE public.articles_author_links;
       public         heap    contosoAdmin    false                       1259    25240    articles_author_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_author_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.articles_author_links_id_seq;
       public          contosoAdmin    false    275            �           0    0    articles_author_links_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.articles_author_links_id_seq OWNED BY public.articles_author_links.id;
          public          contosoAdmin    false    274                       1259    25229    articles_category_links    TABLE     �   CREATE TABLE public.articles_category_links (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    article_order integer
);
 +   DROP TABLE public.articles_category_links;
       public         heap    contosoAdmin    false                       1259    25227    articles_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.articles_category_links_id_seq;
       public          contosoAdmin    false    273            �           0    0    articles_category_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.articles_category_links_id_seq OWNED BY public.articles_category_links.id;
          public          contosoAdmin    false    272            �            1259    25026    articles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public          contosoAdmin    false    241            �           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public          contosoAdmin    false    240            �            1259    25043 
   categories    TABLE       CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.categories;
       public         heap    contosoAdmin    false            �            1259    25041    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          contosoAdmin    false    243            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          contosoAdmin    false    242            �            1259    25106    components_decoration_heroes    TABLE     p   CREATE TABLE public.components_decoration_heroes (
    id integer NOT NULL,
    title character varying(255)
);
 0   DROP TABLE public.components_decoration_heroes;
       public         heap    contosoAdmin    false            �            1259    25104 #   components_decoration_heroes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_decoration_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_decoration_heroes_id_seq;
       public          contosoAdmin    false    253            �           0    0 #   components_decoration_heroes_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_decoration_heroes_id_seq OWNED BY public.components_decoration_heroes.id;
          public          contosoAdmin    false    252            �            1259    25114    components_shared_seos    TABLE     �   CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);
 *   DROP TABLE public.components_shared_seos;
       public         heap    contosoAdmin    false            �            1259    25112    components_shared_seos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.components_shared_seos_id_seq;
       public          contosoAdmin    false    255            �           0    0    components_shared_seos_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;
          public          contosoAdmin    false    254            �            1259    24943    files    TABLE     �  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    contosoAdmin    false            	           1259    25177    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order integer
);
 &   DROP TABLE public.files_folder_links;
       public         heap    contosoAdmin    false                       1259    25175    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          contosoAdmin    false    265            �           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          contosoAdmin    false    264            �            1259    24941    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          contosoAdmin    false    229            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          contosoAdmin    false    228                       1259    25165    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    contosoAdmin    false                       1259    25163    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          contosoAdmin    false    263            �           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          contosoAdmin    false    262            �            1259    25058    globals    TABLE     �   CREATE TABLE public.globals (
    id integer NOT NULL,
    site_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.globals;
       public         heap    contosoAdmin    false                       1259    25255    globals_components    TABLE     �   CREATE TABLE public.globals_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer
);
 &   DROP TABLE public.globals_components;
       public         heap    contosoAdmin    false                       1259    25253    globals_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.globals_components_id_seq;
       public          contosoAdmin    false    277            �           0    0    globals_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.globals_components_id_seq OWNED BY public.globals_components.id;
          public          contosoAdmin    false    276            �            1259    25056    globals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.globals_id_seq;
       public          contosoAdmin    false    245            �           0    0    globals_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;
          public          contosoAdmin    false    244            �            1259    25068 	   homepages    TABLE     �   CREATE TABLE public.homepages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.homepages;
       public         heap    contosoAdmin    false                       1259    25271    homepages_components    TABLE     �   CREATE TABLE public.homepages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer
);
 (   DROP TABLE public.homepages_components;
       public         heap    contosoAdmin    false                       1259    25269    homepages_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.homepages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.homepages_components_id_seq;
       public          contosoAdmin    false    279            �           0    0    homepages_components_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.homepages_components_id_seq OWNED BY public.homepages_components.id;
          public          contosoAdmin    false    278            �            1259    25066    homepages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.homepages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.homepages_id_seq;
       public          contosoAdmin    false    247            �           0    0    homepages_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.homepages_id_seq OWNED BY public.homepages.id;
          public          contosoAdmin    false    246            �            1259    24979    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    contosoAdmin    false            �            1259    24977    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          contosoAdmin    false    233            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          contosoAdmin    false    232            �            1259    25078    listings    TABLE     _  CREATE TABLE public.listings (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    bathrooms text,
    bedrooms text,
    description text,
    type text,
    is_featured text,
    is_recommended text,
    photos text,
    capacity text,
    ammenities text,
    reviews_stars text,
    reviews_number text,
    is_favorited text,
    address text,
    fees text,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.listings;
       public         heap    contosoAdmin    false            �            1259    25076    listings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.listings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.listings_id_seq;
       public          contosoAdmin    false    249            �           0    0    listings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.listings_id_seq OWNED BY public.listings.id;
          public          contosoAdmin    false    248            �            1259    24933    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    contosoAdmin    false            �            1259    24931 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          contosoAdmin    false    227            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          contosoAdmin    false    226                       1259    25152 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order integer
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    contosoAdmin    false                       1259    25150 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          contosoAdmin    false    261            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          contosoAdmin    false    260            �            1259    24920    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    contosoAdmin    false            �            1259    24918    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          contosoAdmin    false    225            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          contosoAdmin    false    224            �            1259    24859    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    contosoAdmin    false            �            1259    24857 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          contosoAdmin    false    215            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          contosoAdmin    false    214            �            1259    24848    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    contosoAdmin    false            �            1259    24846    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          contosoAdmin    false    213            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          contosoAdmin    false    212            �            1259    24840    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    contosoAdmin    false            �            1259    24838    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          contosoAdmin    false    211            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          contosoAdmin    false    210            �            1259    24870    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    contosoAdmin    false            �            1259    24868    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          contosoAdmin    false    217            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          contosoAdmin    false    216            �            1259    24992    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    contosoAdmin    false            �            1259    24990    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          contosoAdmin    false    235            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          contosoAdmin    false    234                       1259    25203    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order integer
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    contosoAdmin    false                       1259    25201     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          contosoAdmin    false    269            �           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          contosoAdmin    false    268            �            1259    25002    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    contosoAdmin    false            �            1259    25000    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          contosoAdmin    false    237            �           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          contosoAdmin    false    236            �            1259    25015    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    contosoAdmin    false            �            1259    25013    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          contosoAdmin    false    239            �           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          contosoAdmin    false    238                       1259    25216    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order integer
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    contosoAdmin    false                       1259    25214    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          contosoAdmin    false    271            �           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          contosoAdmin    false    270            �            1259    24962    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    contosoAdmin    false            �            1259    24960    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          contosoAdmin    false    231            �           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          contosoAdmin    false    230                       1259    25190    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order integer
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    contosoAdmin    false            
           1259    25188 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          contosoAdmin    false    267            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          contosoAdmin    false    266            �            1259    25093    writers    TABLE       CREATE TABLE public.writers (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.writers;
       public         heap    contosoAdmin    false            �            1259    25091    writers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.writers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.writers_id_seq;
       public          contosoAdmin    false    251            �           0    0    writers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.writers_id_seq OWNED BY public.writers.id;
          public          contosoAdmin    false    250            h           2604    24884    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    218    219    219            {           2604    25128    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    257    256    257            j           2604    24910    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    222    223    223            i           2604    24897    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    220    221    221            |           2604    25141    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    258    259    259            s           2604    25031    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    241    240    241            �           2604    25245    articles_author_links id    DEFAULT     �   ALTER TABLE ONLY public.articles_author_links ALTER COLUMN id SET DEFAULT nextval('public.articles_author_links_id_seq'::regclass);
 G   ALTER TABLE public.articles_author_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    274    275    275            �           2604    25232    articles_category_links id    DEFAULT     �   ALTER TABLE ONLY public.articles_category_links ALTER COLUMN id SET DEFAULT nextval('public.articles_category_links_id_seq'::regclass);
 I   ALTER TABLE public.articles_category_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    273    272    273            t           2604    25046    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    242    243    243            y           2604    25109    components_decoration_heroes id    DEFAULT     �   ALTER TABLE ONLY public.components_decoration_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_decoration_heroes_id_seq'::regclass);
 N   ALTER TABLE public.components_decoration_heroes ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    252    253    253            z           2604    25117    components_shared_seos id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);
 H   ALTER TABLE public.components_shared_seos ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    254    255    255            m           2604    24946    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    229    228    229                       2604    25180    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    265    264    265            ~           2604    25168    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    263    262    263            u           2604    25061 
   globals id    DEFAULT     h   ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);
 9   ALTER TABLE public.globals ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    245    244    245            �           2604    25258    globals_components id    DEFAULT     ~   ALTER TABLE ONLY public.globals_components ALTER COLUMN id SET DEFAULT nextval('public.globals_components_id_seq'::regclass);
 D   ALTER TABLE public.globals_components ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    277    276    277            v           2604    25071    homepages id    DEFAULT     l   ALTER TABLE ONLY public.homepages ALTER COLUMN id SET DEFAULT nextval('public.homepages_id_seq'::regclass);
 ;   ALTER TABLE public.homepages ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    246    247    247            �           2604    25274    homepages_components id    DEFAULT     �   ALTER TABLE ONLY public.homepages_components ALTER COLUMN id SET DEFAULT nextval('public.homepages_components_id_seq'::regclass);
 F   ALTER TABLE public.homepages_components ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    278    279    279            o           2604    24982    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    232    233    233            w           2604    25081    listings id    DEFAULT     j   ALTER TABLE ONLY public.listings ALTER COLUMN id SET DEFAULT nextval('public.listings_id_seq'::regclass);
 :   ALTER TABLE public.listings ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    248    249    249            l           2604    24936    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    227    226    227            }           2604    25155 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    260    261    261            k           2604    24923    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    225    224    225            f           2604    24862    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    215    214    215            e           2604    24851    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    212    213    213            d           2604    24843    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    211    210    211            g           2604    24873    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    216    217    217            p           2604    24995    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    234    235    235            �           2604    25206    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    268    269    269            q           2604    25005    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    236    237    237            r           2604    25018    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    239    238    239            �           2604    25219    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    270    271    271            n           2604    24965    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    230    231    231            �           2604    25193    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    266    267    267            x           2604    25096 
   writers id    DEFAULT     h   ALTER TABLE ONLY public.writers ALTER COLUMN id SET DEFAULT nextval('public.writers_id_seq'::regclass);
 9   ALTER TABLE public.writers ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    250    251    251                      0    24881    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    219   uh      )          0    25125    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          contosoAdmin    false    257   �r                0    24907    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    223   �u                0    24894    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    221   �v      +          0    25138    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          contosoAdmin    false    259   fw                0    25028    articles 
   TABLE DATA           �   COPY public.articles (id, title, description, content, slug, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    241   �w      ;          0    25242    articles_author_links 
   TABLE DATA           Y   COPY public.articles_author_links (id, article_id, writer_id, article_order) FROM stdin;
    public          contosoAdmin    false    275   ��      9          0    25229    articles_category_links 
   TABLE DATA           ]   COPY public.articles_category_links (id, article_id, category_id, article_order) FROM stdin;
    public          contosoAdmin    false    273   ��                0    25043 
   categories 
   TABLE DATA           j   COPY public.categories (id, name, slug, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    243   =�      %          0    25106    components_decoration_heroes 
   TABLE DATA           A   COPY public.components_decoration_heroes (id, title) FROM stdin;
    public          contosoAdmin    false    253   ��      '          0    25114    components_shared_seos 
   TABLE DATA           R   COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;
    public          contosoAdmin    false    255   �                0    24943    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    229   _�      1          0    25177    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          contosoAdmin    false    265   �      /          0    25165    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          contosoAdmin    false    263   5�                0    25058    globals 
   TABLE DATA           f   COPY public.globals (id, site_name, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    245   ��      =          0    25255    globals_components 
   TABLE DATA           i   COPY public.globals_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          contosoAdmin    false    277   S�                0    25068 	   homepages 
   TABLE DATA           ]   COPY public.homepages (id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    247   ��      ?          0    25271    homepages_components 
   TABLE DATA           k   COPY public.homepages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          contosoAdmin    false    279   �                0    24979    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    233   2�      !          0    25078    listings 
   TABLE DATA             COPY public.listings (id, title, slug, created_at, bathrooms, bedrooms, description, type, is_featured, is_recommended, photos, capacity, ammenities, reviews_stars, reviews_number, is_favorited, address, fees, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    249   ~�                0    24933    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    227   �      -          0    25152 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          contosoAdmin    false    261   5�      	          0    24920    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    225   R�      �          0    24859    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          contosoAdmin    false    215   o�      �          0    24848    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          contosoAdmin    false    213   �      �          0    24840    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          contosoAdmin    false    211   ̿                0    24870    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          contosoAdmin    false    217   �                0    24992    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    235   �      5          0    25203    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          contosoAdmin    false    269   ��                0    25002    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    237   �                0    25015    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    239   ��      7          0    25216    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          contosoAdmin    false    271   ��                0    24962    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    231   ��      3          0    25190    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          contosoAdmin    false    267   ��      #          0    25093    writers 
   TABLE DATA           h   COPY public.writers (id, name, email, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    251   �      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 141, true);
          public          contosoAdmin    false    218            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 141, true);
          public          contosoAdmin    false    256            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          contosoAdmin    false    222            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          contosoAdmin    false    220            �           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          contosoAdmin    false    258            �           0    0    articles_author_links_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.articles_author_links_id_seq', 6, true);
          public          contosoAdmin    false    274            �           0    0    articles_category_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.articles_category_links_id_seq', 6, true);
          public          contosoAdmin    false    272            �           0    0    articles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.articles_id_seq', 6, true);
          public          contosoAdmin    false    240            �           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 5, true);
          public          contosoAdmin    false    242            �           0    0 #   components_decoration_heroes_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_decoration_heroes_id_seq', 2, true);
          public          contosoAdmin    false    252            �           0    0    components_shared_seos_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 4, true);
          public          contosoAdmin    false    254            �           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          contosoAdmin    false    264            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 22, true);
          public          contosoAdmin    false    228            �           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 16, true);
          public          contosoAdmin    false    262            �           0    0    globals_components_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.globals_components_id_seq', 2, true);
          public          contosoAdmin    false    276            �           0    0    globals_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.globals_id_seq', 2, true);
          public          contosoAdmin    false    244            �           0    0    homepages_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.homepages_components_id_seq', 4, true);
          public          contosoAdmin    false    278            �           0    0    homepages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.homepages_id_seq', 2, true);
          public          contosoAdmin    false    246            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          contosoAdmin    false    232            �           0    0    listings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.listings_id_seq', 29, true);
          public          contosoAdmin    false    248            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          contosoAdmin    false    226            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          contosoAdmin    false    260            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          contosoAdmin    false    224            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 30, true);
          public          contosoAdmin    false    214            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 1, true);
          public          contosoAdmin    false    212            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          contosoAdmin    false    210            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          contosoAdmin    false    216            �           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 29, true);
          public          contosoAdmin    false    234            �           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 29, true);
          public          contosoAdmin    false    268            �           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          contosoAdmin    false    236            �           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          contosoAdmin    false    238            �           0    0    up_users_role_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);
          public          contosoAdmin    false    270            �           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          contosoAdmin    false    230            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          contosoAdmin    false    266            �           0    0    writers_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.writers_id_seq', 4, true);
          public          contosoAdmin    false    250            �           2606    24889 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            contosoAdmin    false    219            �           2606    25130 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            contosoAdmin    false    257            �           2606    25134 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            contosoAdmin    false    257    257            �           2606    24915    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            contosoAdmin    false    223            �           2606    24902    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            contosoAdmin    false    221            �           2606    25143 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            contosoAdmin    false    259            �           2606    25147 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            contosoAdmin    false    259    259            0           2606    25247 0   articles_author_links articles_author_links_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_pkey;
       public            contosoAdmin    false    275            2           2606    25251 2   articles_author_links articles_author_links_unique 
   CONSTRAINT     ~   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_unique UNIQUE (article_id, writer_id);
 \   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_unique;
       public            contosoAdmin    false    275    275            )           2606    25234 4   articles_category_links articles_category_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.articles_category_links DROP CONSTRAINT articles_category_links_pkey;
       public            contosoAdmin    false    273            +           2606    25238 6   articles_category_links articles_category_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_unique UNIQUE (article_id, category_id);
 `   ALTER TABLE ONLY public.articles_category_links DROP CONSTRAINT articles_category_links_unique;
       public            contosoAdmin    false    273    273            �           2606    25036    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            contosoAdmin    false    241            �           2606    25038    articles articles_slug_unique 
   CONSTRAINT     X   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_slug_unique UNIQUE (slug);
 G   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_slug_unique;
       public            contosoAdmin    false    241            �           2606    25051    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            contosoAdmin    false    243            �           2606    25053 !   categories categories_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_slug_unique;
       public            contosoAdmin    false    243            �           2606    25111 >   components_decoration_heroes components_decoration_heroes_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_decoration_heroes
    ADD CONSTRAINT components_decoration_heroes_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_decoration_heroes DROP CONSTRAINT components_decoration_heroes_pkey;
       public            contosoAdmin    false    253            �           2606    25122 2   components_shared_seos components_shared_seos_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.components_shared_seos DROP CONSTRAINT components_shared_seos_pkey;
       public            contosoAdmin    false    255                       2606    25182 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            contosoAdmin    false    265                       2606    25186 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            contosoAdmin    false    265    265            �           2606    24951    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            contosoAdmin    false    229                       2606    25173 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            contosoAdmin    false    263            5           2606    25263 *   globals_components globals_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_components_pkey;
       public            contosoAdmin    false    277            �           2606    25063    globals globals_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_pkey;
       public            contosoAdmin    false    245            9           2606    25268 !   globals_components globals_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_unique UNIQUE (entity_id, component_id, field, component_type);
 K   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_unique;
       public            contosoAdmin    false    277    277    277    277            <           2606    25279 .   homepages_components homepages_components_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_components_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.homepages_components DROP CONSTRAINT homepages_components_pkey;
       public            contosoAdmin    false    279            �           2606    25073    homepages homepages_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.homepages DROP CONSTRAINT homepages_pkey;
       public            contosoAdmin    false    247            @           2606    25284 %   homepages_components homepages_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_unique UNIQUE (entity_id, component_id, field, component_type);
 O   ALTER TABLE ONLY public.homepages_components DROP CONSTRAINT homepages_unique;
       public            contosoAdmin    false    279    279    279    279            �           2606    24987    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            contosoAdmin    false    233            �           2606    25086    listings listings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.listings DROP CONSTRAINT listings_pkey;
       public            contosoAdmin    false    249            �           2606    25088    listings listings_slug_unique 
   CONSTRAINT     X   ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_slug_unique UNIQUE (slug);
 G   ALTER TABLE ONLY public.listings DROP CONSTRAINT listings_slug_unique;
       public            contosoAdmin    false    249            �           2606    24938 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            contosoAdmin    false    227                       2606    25157 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            contosoAdmin    false    261                       2606    25161 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            contosoAdmin    false    261    261            �           2606    24928 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            contosoAdmin    false    225            �           2606    24867 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            contosoAdmin    false    215            �           2606    24856 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            contosoAdmin    false    213            �           2606    24845 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            contosoAdmin    false    211            �           2606    24878 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            contosoAdmin    false    217            �           2606    24997 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            contosoAdmin    false    235                       2606    25208 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            contosoAdmin    false    269                       2606    25212 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            contosoAdmin    false    269    269            �           2606    25010    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            contosoAdmin    false    237            �           2606    25023    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            contosoAdmin    false    239            "           2606    25221 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            contosoAdmin    false    271            $           2606    25225 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            contosoAdmin    false    271    271                       2606    25195 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            contosoAdmin    false    267                       2606    25199 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            contosoAdmin    false    267    267            �           2606    24972 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            contosoAdmin    false    231            �           2606    24974 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            contosoAdmin    false    231            �           2606    24970 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            contosoAdmin    false    231            �           2606    25101    writers writers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.writers
    ADD CONSTRAINT writers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.writers DROP CONSTRAINT writers_pkey;
       public            contosoAdmin    false    251            �           1259    24890 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            contosoAdmin    false    219            �           1259    25131    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            contosoAdmin    false    257            �           1259    25132 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            contosoAdmin    false    257            �           1259    25135 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            contosoAdmin    false    257            �           1259    24891 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            contosoAdmin    false    219            �           1259    24916    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            contosoAdmin    false    223            �           1259    24917    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            contosoAdmin    false    223            �           1259    24903    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            contosoAdmin    false    221            �           1259    25144    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            contosoAdmin    false    259            �           1259    25145    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            contosoAdmin    false    259            �           1259    25148     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            contosoAdmin    false    259            �           1259    25149 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            contosoAdmin    false    259            �           1259    24904    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            contosoAdmin    false    221            ,           1259    25248    articles_author_links_fk    INDEX     `   CREATE INDEX articles_author_links_fk ON public.articles_author_links USING btree (article_id);
 ,   DROP INDEX public.articles_author_links_fk;
       public            contosoAdmin    false    275            -           1259    25249    articles_author_links_inv_fk    INDEX     c   CREATE INDEX articles_author_links_inv_fk ON public.articles_author_links USING btree (writer_id);
 0   DROP INDEX public.articles_author_links_inv_fk;
       public            contosoAdmin    false    275            .           1259    25252 "   articles_author_links_order_inv_fk    INDEX     m   CREATE INDEX articles_author_links_order_inv_fk ON public.articles_author_links USING btree (article_order);
 6   DROP INDEX public.articles_author_links_order_inv_fk;
       public            contosoAdmin    false    275            %           1259    25235    articles_category_links_fk    INDEX     d   CREATE INDEX articles_category_links_fk ON public.articles_category_links USING btree (article_id);
 .   DROP INDEX public.articles_category_links_fk;
       public            contosoAdmin    false    273            &           1259    25236    articles_category_links_inv_fk    INDEX     i   CREATE INDEX articles_category_links_inv_fk ON public.articles_category_links USING btree (category_id);
 2   DROP INDEX public.articles_category_links_inv_fk;
       public            contosoAdmin    false    273            '           1259    25239 $   articles_category_links_order_inv_fk    INDEX     q   CREATE INDEX articles_category_links_order_inv_fk ON public.articles_category_links USING btree (article_order);
 8   DROP INDEX public.articles_category_links_order_inv_fk;
       public            contosoAdmin    false    273            �           1259    25039    articles_created_by_id_fk    INDEX     W   CREATE INDEX articles_created_by_id_fk ON public.articles USING btree (created_by_id);
 -   DROP INDEX public.articles_created_by_id_fk;
       public            contosoAdmin    false    241            �           1259    25040    articles_updated_by_id_fk    INDEX     W   CREATE INDEX articles_updated_by_id_fk ON public.articles USING btree (updated_by_id);
 -   DROP INDEX public.articles_updated_by_id_fk;
       public            contosoAdmin    false    241            �           1259    25054    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public            contosoAdmin    false    243            �           1259    25055    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public            contosoAdmin    false    243            �           1259    24958    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            contosoAdmin    false    229            	           1259    25183    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            contosoAdmin    false    265            
           1259    25184    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            contosoAdmin    false    265                       1259    25187    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            contosoAdmin    false    265                       1259    25174    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            contosoAdmin    false    263            �           1259    24959    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            contosoAdmin    false    229            3           1259    25265    globals_component_type_index    INDEX     e   CREATE INDEX globals_component_type_index ON public.globals_components USING btree (component_type);
 0   DROP INDEX public.globals_component_type_index;
       public            contosoAdmin    false    277            �           1259    25064    globals_created_by_id_fk    INDEX     U   CREATE INDEX globals_created_by_id_fk ON public.globals USING btree (created_by_id);
 ,   DROP INDEX public.globals_created_by_id_fk;
       public            contosoAdmin    false    245            6           1259    25266    globals_entity_fk    INDEX     U   CREATE INDEX globals_entity_fk ON public.globals_components USING btree (entity_id);
 %   DROP INDEX public.globals_entity_fk;
       public            contosoAdmin    false    277            7           1259    25264    globals_field_index    INDEX     S   CREATE INDEX globals_field_index ON public.globals_components USING btree (field);
 '   DROP INDEX public.globals_field_index;
       public            contosoAdmin    false    277            �           1259    25065    globals_updated_by_id_fk    INDEX     U   CREATE INDEX globals_updated_by_id_fk ON public.globals USING btree (updated_by_id);
 ,   DROP INDEX public.globals_updated_by_id_fk;
       public            contosoAdmin    false    245            :           1259    25281    homepages_component_type_index    INDEX     i   CREATE INDEX homepages_component_type_index ON public.homepages_components USING btree (component_type);
 2   DROP INDEX public.homepages_component_type_index;
       public            contosoAdmin    false    279            �           1259    25074    homepages_created_by_id_fk    INDEX     Y   CREATE INDEX homepages_created_by_id_fk ON public.homepages USING btree (created_by_id);
 .   DROP INDEX public.homepages_created_by_id_fk;
       public            contosoAdmin    false    247            =           1259    25282    homepages_entity_fk    INDEX     Y   CREATE INDEX homepages_entity_fk ON public.homepages_components USING btree (entity_id);
 '   DROP INDEX public.homepages_entity_fk;
       public            contosoAdmin    false    279            >           1259    25280    homepages_field_index    INDEX     W   CREATE INDEX homepages_field_index ON public.homepages_components USING btree (field);
 )   DROP INDEX public.homepages_field_index;
       public            contosoAdmin    false    279            �           1259    25075    homepages_updated_by_id_fk    INDEX     Y   CREATE INDEX homepages_updated_by_id_fk ON public.homepages USING btree (updated_by_id);
 .   DROP INDEX public.homepages_updated_by_id_fk;
       public            contosoAdmin    false    247            �           1259    24988    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            contosoAdmin    false    233            �           1259    24989    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            contosoAdmin    false    233            �           1259    25089    listings_created_by_id_fk    INDEX     W   CREATE INDEX listings_created_by_id_fk ON public.listings USING btree (created_by_id);
 -   DROP INDEX public.listings_created_by_id_fk;
       public            contosoAdmin    false    249            �           1259    25090    listings_updated_by_id_fk    INDEX     W   CREATE INDEX listings_updated_by_id_fk ON public.listings USING btree (updated_by_id);
 -   DROP INDEX public.listings_updated_by_id_fk;
       public            contosoAdmin    false    249            �           1259    24939 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            contosoAdmin    false    227            �           1259    25158 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            contosoAdmin    false    261                        1259    25159 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            contosoAdmin    false    261                       1259    25162 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            contosoAdmin    false    261            �           1259    24940 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            contosoAdmin    false    227            �           1259    24929 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            contosoAdmin    false    225            �           1259    24930 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            contosoAdmin    false    225            �           1259    24998    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            contosoAdmin    false    235                       1259    25209    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            contosoAdmin    false    269                       1259    25210     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            contosoAdmin    false    269                       1259    25213 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            contosoAdmin    false    269            �           1259    24999    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            contosoAdmin    false    235            �           1259    25011    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            contosoAdmin    false    237            �           1259    25012    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            contosoAdmin    false    237            �           1259    25024    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            contosoAdmin    false    239                       1259    25222    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            contosoAdmin    false    271                       1259    25223    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            contosoAdmin    false    271                        1259    25226     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            contosoAdmin    false    271            �           1259    25025    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            contosoAdmin    false    239            �           1259    24953    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            contosoAdmin    false    229            �           1259    24957    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            contosoAdmin    false    229            �           1259    24952    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            contosoAdmin    false    229            �           1259    24955    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            contosoAdmin    false    229            �           1259    24956    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            contosoAdmin    false    229            �           1259    24954    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            contosoAdmin    false    229            �           1259    24975    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            contosoAdmin    false    231                       1259    25196    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            contosoAdmin    false    267                       1259    25197 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            contosoAdmin    false    267                       1259    25200 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            contosoAdmin    false    267            �           1259    24976    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            contosoAdmin    false    231            �           1259    25102    writers_created_by_id_fk    INDEX     U   CREATE INDEX writers_created_by_id_fk ON public.writers USING btree (created_by_id);
 ,   DROP INDEX public.writers_created_by_id_fk;
       public            contosoAdmin    false    251            �           1259    25103    writers_updated_by_id_fk    INDEX     U   CREATE INDEX writers_updated_by_id_fk ON public.writers USING btree (updated_by_id);
 ,   DROP INDEX public.writers_updated_by_id_fk;
       public            contosoAdmin    false    251            A           2606    25285 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          contosoAdmin    false    3742    219    221            c           2606    25455 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          contosoAdmin    false    257    219    3738            d           2606    25460 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          contosoAdmin    false    3746    257    223            B           2606    25290 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          contosoAdmin    false    219    3742    221            E           2606    25305 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          contosoAdmin    false    3742    223    221            F           2606    25310 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          contosoAdmin    false    3742    221    223            C           2606    25295 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          contosoAdmin    false    221    3742    221            e           2606    25465 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          contosoAdmin    false    221    259    3742            f           2606    25470 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          contosoAdmin    false    223    259    3746            D           2606    25300 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          contosoAdmin    false    3742    221    221            t           2606    25540 .   articles_author_links articles_author_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_fk;
       public          contosoAdmin    false    3792    275    241            u           2606    25545 2   articles_author_links articles_author_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_inv_fk FOREIGN KEY (writer_id) REFERENCES public.writers(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_inv_fk;
       public          contosoAdmin    false    3818    275    251            r           2606    25530 2   articles_category_links articles_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.articles_category_links DROP CONSTRAINT articles_category_links_fk;
       public          contosoAdmin    false    241    273    3792            s           2606    25535 6   articles_category_links articles_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.articles_category_links DROP CONSTRAINT articles_category_links_inv_fk;
       public          contosoAdmin    false    273    3798    243            W           2606    25395 "   articles articles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_created_by_id_fk;
       public          contosoAdmin    false    221    241    3742            X           2606    25400 "   articles articles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_updated_by_id_fk;
       public          contosoAdmin    false    3742    221    241            Y           2606    25405 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          contosoAdmin    false    3742    221    243            Z           2606    25410 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          contosoAdmin    false    243    221    3742            K           2606    25335    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          contosoAdmin    false    221    3742    229            j           2606    25490 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          contosoAdmin    false    229    265    3758            k           2606    25495 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          contosoAdmin    false    231    265    3772            i           2606    25485 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          contosoAdmin    false    229    263    3758            L           2606    25340    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          contosoAdmin    false    221    229    3742            [           2606    25415     globals globals_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_created_by_id_fk;
       public          contosoAdmin    false    245    3742    221            v           2606    25550 $   globals_components globals_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.globals(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_entity_fk;
       public          contosoAdmin    false    3804    245    277            \           2606    25420     globals globals_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_updated_by_id_fk;
       public          contosoAdmin    false    245    221    3742            ]           2606    25425 $   homepages homepages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.homepages DROP CONSTRAINT homepages_created_by_id_fk;
       public          contosoAdmin    false    221    247    3742            w           2606    25555 (   homepages_components homepages_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.homepages(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.homepages_components DROP CONSTRAINT homepages_entity_fk;
       public          contosoAdmin    false    247    279    3808            ^           2606    25430 $   homepages homepages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.homepages DROP CONSTRAINT homepages_updated_by_id_fk;
       public          contosoAdmin    false    247    221    3742            O           2606    25355 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          contosoAdmin    false    233    221    3742            P           2606    25360 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          contosoAdmin    false    221    3742    233            _           2606    25435 "   listings listings_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.listings DROP CONSTRAINT listings_created_by_id_fk;
       public          contosoAdmin    false    3742    249    221            `           2606    25440 "   listings listings_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.listings DROP CONSTRAINT listings_updated_by_id_fk;
       public          contosoAdmin    false    221    249    3742            I           2606    25325 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          contosoAdmin    false    3742    227    221            g           2606    25475 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          contosoAdmin    false    227    261    3754            h           2606    25480 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          contosoAdmin    false    225    261    3750            J           2606    25330 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          contosoAdmin    false    221    227    3742            G           2606    25315 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          contosoAdmin    false    221    3742    225            H           2606    25320 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          contosoAdmin    false    221    225    3742            Q           2606    25365 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          contosoAdmin    false    3742    221    235            n           2606    25510 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          contosoAdmin    false    235    269    3780            o           2606    25515 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          contosoAdmin    false    269    237    3784            R           2606    25370 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          contosoAdmin    false    221    235    3742            S           2606    25375 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          contosoAdmin    false    237    221    3742            T           2606    25380 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          contosoAdmin    false    3742    221    237            U           2606    25385 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          contosoAdmin    false    3742    221    239            p           2606    25520 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          contosoAdmin    false    271    3788    239            q           2606    25525 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          contosoAdmin    false    3784    237    271            V           2606    25390 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          contosoAdmin    false    239    3742    221            M           2606    25345 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          contosoAdmin    false    231    3742    221            l           2606    25500 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          contosoAdmin    false    231    3772    267            m           2606    25505 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          contosoAdmin    false    3772    231    267            N           2606    25350 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          contosoAdmin    false    231    221    3742            a           2606    25445     writers writers_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.writers
    ADD CONSTRAINT writers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.writers DROP CONSTRAINT writers_created_by_id_fk;
       public          contosoAdmin    false    251    221    3742            b           2606    25450     writers writers_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.writers
    ADD CONSTRAINT writers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.writers DROP CONSTRAINT writers_updated_by_id_fk;
       public          contosoAdmin    false    221    3742    251            �           3256    24798    job cron_job_policy    POLICY     M   CREATE POLICY cron_job_policy ON cron.job USING ((username = CURRENT_USER));
 )   DROP POLICY cron_job_policy ON cron.job;
       cron          azuresu    false    4    4    4    4    4    4    4    4            �           3256    24815 +   job_run_details cron_job_run_details_policy    POLICY     e   CREATE POLICY cron_job_run_details_policy ON cron.job_run_details USING ((username = CURRENT_USER));
 A   DROP POLICY cron_job_run_details_policy ON cron.job_run_details;
       cron          azuresu    false    4    4    4    4    4    4    4    4            �           0    24785    job    ROW SECURITY     /   ALTER TABLE cron.job ENABLE ROW LEVEL SECURITY;          cron          azuresu    false    207            �           0    24806    job_run_details    ROW SECURITY     ;   ALTER TABLE cron.job_run_details ENABLE ROW LEVEL SECURITY;          cron          azuresu    false    209               ]
  x��\]o�}���E��$���E��\�}���Pl&Q#[�$']���CŶF�M�^��."�$��P��pDſٕ��b�\��m+��b�o�Y�����ju��e�ʛ|W,�y��R�������庹]~���-�R�����Z6��صE��>���l�X)Ƈ���]��]�����o����o�^ ���W?Z
)B"���E����c� sq��6��C��us��4�����������K�_��k�V���>ߗ�?dE�濾ވ#�������c^˿�q�?ʼI7#
���������j#w��d.N\=���jF�<ʺ"=/����x��Dn�E���׉Ubf�]�>�U�i�r=\�,��ۮ��������r�?�]���Fn��=Vm��E��WE�/�����-d��Z>��g�����o�d�����$�Y����M�����
�)��I\�f�6�/�5�/���n@�֨����('MMȋ�$�MM�MU��/��p�Τ.μwhL����am^�b�uƔb.���v��\��d\�(��qx�x��bFI�L�L���u0?(*�	����a�E�߭��jTv��o,��Co�92�>����a�Erh�U�G���4?-j�C?/ À	���Eq����� /�V��1�%��p~T�*�3U.p�jQϬe)'��v��/��ql�-��Cm&�M�'1��u���P�$XM(G*q�C�P�H���L��TOCf��i�P}��'�c\[8�-�ء��ʘT��ơl��v�;���DO(L�t�q�[�#q�1O�󹤬q������׺<Sߜf�bn�j��)���xPAjх�s��g�������M#������!O��hpy�����G~����'���˶�|^ Q�O�����}[���霂O������U��tF͢��`֕�g��pѱ��=%���	��f;��._e[;�r[�pޱ-��JoK�!Z��E�j��q�G8K�b 8Fآ@�ޮ��!E��#�0ߩye�9R%n�k�e�ڏ? ,G�m'4���=���L��
����au��4i#&��f4ם��W�4bJ����E���zܖ���}��߷�mm|p�T�0ޱ/{e)#%�=�[�? i��y�>N�0۱����L�����}�+�e�W�8\t,����SE�(�8�XԊ��l�4�W%�h8�w�BsmIks�`TF8�qlM�-yK��pp�حw魍I��z�a�c��o�[$(%�9i}��omL�R����|��oiL��>7�5c�v���2��p���x"��Q�8����i����)7�F�����ơ��޸"J���o��L�7�����`I#�f����h��� 7���CL�ɦKFu�\�uf�)G^�z����o ~���)��z�w�������VO�����(Su˸��q��c�b'l�ݙ�!�}Ҁ����;7q�-���؀�F���w\��#��\���]�����͎Ǐ�8��?�N�N���]�N��Շ��mJƏ��a�v�Ϛ,����2�1
N���
eu1���Ʃ����~Aܜ�PX����!(�c��ө+{�R�2�8��(?>]�̈��[��`Z�I|N��(��pXj��iDL��)ŀc���L1�1�-��;����w60��H�Wq^��R�q�h�X��Oس�3�pv8���5��
����'4[��s�xҊl|bw�a�c_��r�<
#F8����g�O�7:�6�P�H��g�{�(d�e�P�H>o8��T����oaX��5b�m/�:��aq&_)�	����L~/��_�p�[Dy�3�J$� �f��!>�]�E��G	�=��6�P��n��,��=��	�!-p(OG4��v�V!��e��ڷ�U�/���Hֹ������gb
�o84^�U�|HU���h,�3��GKs�	E\8X��@)Hi�n��͋�o|����2.Xi���ӣ #�'A�(|��#Eżs7�FB�JX/7�q/��Ol'��a����z.�tKj���<;��Ob|�q�{̲�Y�Sʕ7�w�r��NP�M~��=eّ>ϲg!π��L��m�-ְf�n�`�7�4w7B��/����gu��LH�En��Y����?~�h���8�d�/��Qq^i�h�VZ�c���^�F-:���E+7�Ri��fz���z�>v�y95n4�3���9߮�zaM�S�L�h�N��jK��S����:6y�$[5��� ��}*>4��㨵���m^��T2�#e5p��S�o�t�#�nt��"����"̆E܍n�ňyf�C�[���7��wv�(��n�s4b��a@>�#n�c�ܯ�!V�X.f7��1���

��pC�����y&<m���v~dCU6q�L��j��ԯ�O���?���HJ̚nH�c����T��M.�ZqL;?�݉5�V�vXg��X���W+�4���+p�1��.����7�1�=w�R����s�0��Ĕ�|�aÜ�6?ȭ�g�3
n�i��g��<�(�޻�pX��&��\��<�HDL�n�I����xҌ���5����˗�1� �      )   �  x��[n1���D�?��?G�G���V.��!��ʘ��biq�(gE�9;�6玣�y��r�xz�/r�����Ҍ��{sF.���YJߞ�J�#�ҌܑGiL�ȫ4)o�S�/&(��	ʴ�;���b�e�\1A�6+&(�f�e��1A�6OLP���i��Z��+�L[��i�P���ϒ�B�H�����ȹ���HZC�B�JY�o0}���Q|S��Ze��V���uT!k]�I�ZOe��P����jÐ��Ҧ!k��煌.��N3;����զ!k�i��Wm��S���{h���;�MC֍�LC֍t���D q��occ>́���H����OD"�"%�!����7�8��A2N阂��u�A��u�A���B�suLB��t�B�;t�B��0���ix���!�-��f��5��5��5/�eާk��g>��4|�i�0�i��i���'኷�L[�虶:��3m�xL�i��f�S7,���S�	7���a_�ZL���įP�8�����> ;q-l'����Ĺ��N�K�o���R��������V�x��S@w�c
�����^�x��7���;�3�������;�t0=��`{�Aw�k
�N�M݉�)�;�7��9��8_�r&t'F��C�����5�,�;8t����S@wb{
�N�O݉�)�;1?������d (<����E�?w�z         �   x�u��n� @g���(��-C�.]�\�#9`qG��}I��V�%�!�h�^�p��K�%��D=��?�#�s�=<0� �n�R25�$�ev��;�z��d�0���VWg��Iy��65�*Vu�-�c<�KQ(
C�n.��L�	��L��)����^7y���\�}�Qئ�EU���������E�_��øɛ�:t]�4�~k         �   x�3�O,.���t�HM�H����,��%CD��K�2��J�R�SR��s3s���s9U�UT
\��ý��<\��<L+�����L����M#�\��]RLL�C�C}2��J+�B�]�@6Q	g�2202�50�52V04�26�24�302�)������ �6�      +      x�3�4�@�=... �         &  x��X�n�6�=y
�@lcF��خ�4-7��͇�,���$Έ1E�$eE��w�}�>ɞ{)���l(KC����s��b��a�]*!�S#�+qꌚ��}�D��چNy�i^�_�.��
�u1˲�[e�TtJ��>��ʺN��p�,��!39��YE�������b��/{_.���[d���3�ϳ�����+��`or	s���[E~���]?y=�L���­ı�Ί��|��OX)�ʉµ�E%�:�sޔ���������6=�jc�^��W�Z�9�w4�GG��_�)�����d�����b�-:��Zq\+��Q��i�h�[{Y��T(�j����S�u���3ɐ�XK�?�KiKq6�AT�v��:�L�*>K�kg�U����ke\S�r�}V�X),Y9_�(�\\�(����tl��F�J���&�>�!�F8N���J���v6$ӆ�<+���+z�5}Z�Af+����
��pժ.���U�:��U�؄/ww=?g�����kX��:E���:m"�^��,͵�H�����ݹl����Jַ�(�u�J7��2�ϻ��KKNK޺M����+�'ِ�E��ɯ\��k�S$��ĖX�Nf%���*"���Z֚c�s��J\8��~]�����%�����}0k ����ȶ8mW�Z�팰{s'B��`e��f O!$� {!�&�`H��J�A�ڢb��u��ԧB:�0L�-CAǨ�R���#�0Jz+j�A7�k�P��*:�m�Ɖg��b>T�� ~�7N�8~����S鯥/ŏ�x�����C��/dN.�� hp��}���T���x�`��BP(�\[��	E	Ӄ�k��F|�j
��)S����(�pȵ3F� �҈�i�s�e��S��~��VD��X=98�������@_<��u]�#�m��v������?|�����Ο��r��'s�{"�B�]� ��B�����1x��}��j�c���k�c��"�^��gßi�UkL(�R��v��_'/R��|Er�{Dh��K�,*`/"Jc^�f/UQYgܺ[/�.���

;X]bM�����"�#r����8�g-!��[����.A.��@S���� <�F�l�q=����Ud)��.D��I�Y������P54MWg��ڦG2\-���|�F�!��n<�0��辡%�9Q�uv���
)�� ��
���!��^����e�qg��*b���69��E^kg���H�'c��߬=�a�r�n����}?D��[����u�֢Qp=r���B��D|�
GN�P	ҳ�h�Tr@ �
e�4AjJ�=���Ql =l�Am��YA%sE�E�P��D����(|n���+	sij�A�X�=����]��DKه.�NNy�!1�LqV~�@b��5ʌ*5$&�)���zꝻ2= �`%5b��Jy"W�Hf�!�A�Uv[J�;��mٲ��jk�@�(��ݍ*8�(+�Q��]��c�OU�j�߹��ngl1���g$��Uk�{��~S�-���Py]7�:e�h	��ƛ�O�9�k\I��	w�ȳ�-(�P���vİ�2C���FU�p@�0�P��^i��6�=��Y�^_�TUk8vG��"u������!(+�k��-�(d�d	9�gP�Oe	�SR�4'w�˝�����ptg�v�$t��
�-��x���7��@3��  �Jx�U�ܟ��H��v��7�f�Wt��>_�EQ��e�U�M�g�]�*�(��=��`�p|�<��h�X���`��D�a�H���V�G��i�#��1u
��a���lI
�i� 	�u>B(_���u)��r�*�j|���c�C�݃K���lc{������H�A�+a&�e@����g<�Hd5��":��J�@�b�&>�Im���3�w�XEB�g��i	�S���ܓnB*���ʴ���d�O��?�ߠ�w�+�P��RIp��m�2���8>$����)��INf�!�5����y(�J�9AJNQ+�D�Y%Q�$ĳR��q/�ԜPꮤ8�:8�q����0 
p޲�8'�y���D�7��N��А�G.ГP����z�!����Ͱ��㖊�h��.����kJ�Bw��%�c[�0Ր���_�E✴x� �4�&B�E=}��
G�hk	t��5�����M�`��a��%���Y��ktQSdG
�1ҵy@�1QVJf�[k�/�Ĕ�l���Ay��=z�����g�?Qy��cܦ�ЕJ"K^�Qk��i�3!dG��3�1�4ڧ{���J7�y-���#_���}Ւ���lBO4#���CVpV��D7��.�t�� ҁ��80���Hu��S�֯%��c��tK~iu�0��i�����d��DPI�j��)���uj��!�7��L�B�,v���<� ��l9���6Yp],�X�Ju�e���-\%a	[A�׏���h���t��X�	�>Y��*'����y���x�,�hr$#����>�����$]̄
c�#Xh�2Ow*T[i��Y���ލ���M5q���/-*���-����e%���,H��T��,̦^�H�\*P<�{zg%yŘ���VWA��O1I���COH��I(�{����tguM�
_���&�$�F?idfɞ���Z���g������c�rM�$�s�$����-��.Cx1~y�_����ꌮO�ܗ�4�Z
����O�#=�צ^Q����M�˝�q�t�;�%-�h&#݅�N�1du~1̞����H�X����O�,��t�f�K�L,Ɓ����b�V@z� 7��?22�U��"M�$�Z�V�U�G鈷P~ 𻈒��l��&}�.�������c�T�7�|�X���Q��OEP���Dΰ� 4fj&g������1�^ �?:�����:�<U�n��}e�BC��xe���a	Ol�/�U���ܸ5Ϡ#���7c��䃽/>���+������IN��d$:Y�!� M1�!*fR��K8��O���2}5�hHb�E%��ͤS3Z8K��g����x��������s��      ;   /   x�3�4�4�4�2�@ژ�L�p���M9M����H%W� ��B      9   0   x�3�4A.#N#NS m�i�i�M���6���f�f@C�=... ��J         q   x�3�,.�/���FFƺ��F&
�FV�V�fz&��8�c���ˈ�$59B`Wi�Sb�1g^bIiQ*�®��8�δ���]�)Nq�	��y����Js��b���� ��I�      %      x�3���TH��O�2��b���� W�F      '   h   x�3���T(H-*��K�Q.)J,�TH��O�t�,N�/K-RȭTv�WH+�L�Kɩ�*$�f�(�g�d@5�qq$��r:B�&��"�sS�&�6��qqq �II         �
  x�ݝ�r��������X�Y(W�	�	���F$��!�Cg��w�H�%��L_Lu�h)Z?���B�!Qf���9-���ٌ�"Ǒ""��a�������Oſ�u����ׇ�aS�|<�n�iv||���$��$�,�«�������R���.{n����>���ߥUc'��t����T��;o6ū��Gٙj�8+^����_�q9�~~)S��,�o����{Gp�㽝�v��J�i%*�yR-�<�&[���D���Lݝ�v����[�*�I�s^&{z9o��t���:�SvG8���J<F���\��&\���f�	D���I�`,��۟�f�J7��Ŕ-0YP���'?�&��"�۟_h����Y�7�9������rGT2Ȣ�^�XT�TC%�`�)�������"��j��ԝ��*��l]�X��5, 5L$K�5$��������ʗ�.�8� W��ɒ�)�	;�_�J�s�T+e)u;�Vv<Y�n��8$Ɲ{g����LX'{"d	)댢2���K$b��n�jT '�4�Y�+T��җe��9|���-(���V3�G^)�Zc�5F�XZ��փ	���J*�j�|�vG@�O��.�/�U��I��I&<qIm3�b�%�5�I��1�lk@���ͪ�2��Bֆe.! 4�XX�+����%=-������"],7�����~c&�*�8�Ĝ��39&՘I�����c&���j��e<���B	`�͎�~��_��$L�'̆	�H�����+1I�pjL�� !ƾ���y�8���E�R�pR,�����NDtzYǗ�z��(~J��q�5�̈́��/���j����0Y嚥8�E:�^r�AM�	ٿ�Qw\�r��	'o�aP�z�@T���.�)����U�Ɓ���Gw��ٹr"�[�PTzjR�U�o�KLR]`�9�"�@<�Z*��1���^�Q�5�O��agJ�ؿ����<�������G�|X�B1`R��L�+�rap>%d�#F��A��c�'��S`��^"P�������GO�q|�ҁ��O�v��U|�T�#ԏ�^�\XFo����_�����G�6 >|��+>��X<��KgX��~��=��ٚ�~�hk�#�4.�+h����s��h)�F��u��f�*��[�5L�^���� w6o/`,�� ���<�WKG4�m�.�ش%��M	����cɶ^���M4�3hx�`>�p����1��6-'��3�c�d�� OќZ�+O���Iϧu~�,^׫��`@-,��r^_����`I=X"T��eJ��?|/����@�ݯ�Fr���P6ó���X�	�>iB�X�'�Uw�iV~����!"\�x�-?���Y�{�Іq.! 0�����t�f��wS���G:����`���`o&)J�Jx���8ˆ�e�Wg��5T��;�'唻��T�{��-�Rɑ;�SIM��~�v]�D�}/dV<AsvGx��eΐj_�A&٦3��)n�h,s'�ʯzC,��+����j���+
0���==[�0�83�Tb��l�_������6���ʎ���G�ٍ�uf���ζ���7^��D)R�]����b9�-T���4r�Cꦰo�ԐC�Mo�e�t��홎�~�>�!u{����T?�!u{���;�����z7m'�����wU{M!�B/������q��:留�h��/�j0�m���oG�3�����_�����x4�a�a�8�������eq�Л�e3�5�8�^��%"G|�T��3�5J�^��3s�3�Vl:Vg͆Z�n��ᬑ�|qù��%��DXF3�8&^	�:����^��C�H�fq<�%�{@��~q���\��R
cy���J&`�NM�f΍k�X5W�Ѝ+�yX6g x���uW�,$�g�*d�V3#[���&1*�t��O?a����k�k��7�b���Mlx*l'�"��q�J� ��#�;�7�W�>�B��q���`�#",��EB��5�������v�9��Hem��DܳB/'GJ��Xe�*�[�	
ߋ�W�_�N��'~���Ղ��:I^�p�[�7�9l�9\s8��`��Ű@�jk{�au�ʝ |�Q�X1Ls��^�,0�ԿO�O����T��.o-�q`Ϻ[-R0����#�ǨnW����R�4�� ��w'M�6���ڝ������`!���c�ҫz�	���=�������0�;�� ���SKh��;��I��SS�P?w�����Y�G0�� ��p��'�5��;����� ��}KW+)�����&5��R�
g� ����g�0c�3\��#�M��)����U��X��vnr�U;�|�&^�k]�������j���q�H3��ɱR��Vf7P{�yev���uƛ�w��@� !`S�G�x0����G�k͛Y�j�g�%�VR�"�|bh�^��p��� �ѭ�M�^	�2�r���j���s�(�xo���[V�:���~V��5��h �sGx�U��L�V�?�y���w��s����	�����v�e�qjV��C	�~�wҴ����X%��sk4�ש�ϣ:u��6h&pY������D�~�4�����o岊U��*�2H�r�����M+��z���귫\��������\����}���f6w�\�w���p���r�o�˗/��R	      1      x������ � �      /   �   x�}��� ���������XI�5���帄Ò엙�!��ᢿ��/�{~�Ƀ���{�a�Ű����;��'e��T����[g���p�h���4�٪��h٪�t�X����9M��8��/w$�L�ru�Nw����!���I���|��-q�U>Z�jÐ���S�_�{�J�?�è�         I   x�3�.)J,�Tp��O�4202�50�52Q04�2��22�352�)�D\Fx�00�24�333�)1#F��� ��"      =   0   x�3�4�4�,�H,JM�+N��LIMK,�)	2c�����&��c���� �z�         >   x�3�4202�50�52Q04�2��2��3�0�)�D\F(�V��V�z��8�!�b���� �2      ?   A   x�3�4��Ģ����|N���2���&�d���e��s�	��1��1=&@q#zb���� ���         <   x�3�t�K��,�P�H���L��4202�50�52V04�26�22�34��)�D\1z\\\ ��E      !   �  x�Ř�n�H���S�b1 �*�Efg;q��-���%�$UL��H-��Uf;/0�y�y��E�XR$�Nz�E2i�"���sI��RG5��,��k�f�R�6�)�{�i�S����n�L��;̧�K��8�7��/�9�s�ʁJk20%��&��4UU��2�<ri����Ȍ��zDƲ�UI�F׊�����9dO"�>�����6kW*{f��c���C�9x���B�n��{�ȇ�n4e����T*߳5SYf��}xC�����k����gGej"kS»�������ȴyx�u(�x5	���79�_u/��#|�RY�S�	UB$x�kʸ2�H�(q��A �C"�>z���W�qקv�i��S|y��;�?r~���s��$�%IV$�fe��۬��ۖ�[�uԌ��-�'J6�4�&��=��Uϔ#c���j~�HVxL&ˡ"3Y�[���U�-��sNM�7v��!�R�C�<���ꁆ��=���}��;,����}����,5�N�x�,�ur8��Du.�pvo�B�䓞X��^3ቘ	�£>���a!�D!ЄG���'�o���=��s:��kp�l�Ҋ��[��v�]���V]��	`�g"�[|��R+�O��e�z�b���u5��j�7�~���&2�s��vM.b<���!��9��+\}��9�e�)�jx�RJ�$���(���A֨�$�Q��]�����8��M�q�H�l��\5���Uθ�SwU�ƣܱ�K�.����~���#p�g)�ߡ�-x��Jfc�\�����'8�#�K8k�\�M����(�w��㩚����_����rЌ�G5?��G����́{<F}94�I��8?D9:@9tmq��[�+MW�LmA�A�ږn�p݁�lf;t��a3�}v�����qZ����Y�k���4�U(�L�cU�Zf+��!��J�Q�xy�Je�;=�1Q�F��l�۶�����@W�t*�k}���RE.�)P�§H3��8��Ћ�$�s�'��Gx�<�I��6EBu9�t_9Y�6��Q�jG
w�f�n��na��6�r�L��|�(��<�.K�|E�a$��X��2y�3"�u�U�a�t��9�j�9����n�]�"�����O�jb��Dn��	��.����!�xkS9C!�~���K�8 �q�B���Ժ������bo��-��[.���/��HeW|�͖�����#'���D���մ������~�o�3�hS9Q��^.�va봬oUYZ�X��O߉����T?��9|��{�ܢ/�^AqhF�'8�l��� !
�q���৓Tr@��a'D�.z�F{�V��t4o�������ӿn
�l����,���j�.^�s�:i�a�U�.m�b�E��
n���c�m��.�i�%���[�z<���Bl���!���'���'��Xf�S��}u�U7 .������7x�(�̥���F�=�r^��{u>0�5d=F��Z��j:2eN�{	7��*r��H~"aU^�ہ'�0I��$Y�,��)�����7�#�Cxi�����3�q���V����Tik�-��ϛ����Rs���Ț���S�*a�;���5��n�V��F6��M|{<
lf���BM�����f�,Q���0e���C�����64G�a��=���%O>�H?;��aX�mi��4�{祱��΁�Ӡ�v��7�e�2w��lg������+�q���vn�v�t��n/}��ɚ����.��,0�-��ľ�S��#_���T�i;.E��SX=Oxxrp(f���>���}�n3�jRj�Z�E�-�bY�H�����W��|�;o��K�����/gw�*'C��|�|2f�9�
m"o�Iޠ��N���NTv/��O9f>,��;�B��š��l��j���M@$O�~rp|f��f��a��yk�$\/��~�O?���?����_�;�14�غ��]Ufd�\�A�\e� �4yj��<?�x;�XP@�"����b�`Xk�?�1�u&���4����I�t��pK�-w��U�=��@�f��C� �<�������ߩt,�6�!�y�Ⱦ��5���i�M?�K�����1ܵ��Q���PL���x�D�G�Ѿx'��^�z�?���            x������ � �      -      x������ � �      	      x������ � �      �      x��]{o�8����)z�vO��$Ycv�2����%A2AC-�n�ՒF{��������ϒDu�:���ٱ-��Y��*�H=<)��g�8�j���M�E���_�˦�j�����@��y�lpv~^�):�0op2?����
�5�.������I��y|^�:�_�F���BQ��'a�5�������&��O���,��t5i�:/��n��/��������w���$�#����%�&?Ia�+��<�V(%mH9�UE���HC֭&�(v���C�<(�(F�<嬑׸�F��уϙ �[�' o���	�!�Y��,��cpj�a��PYA�򂝙����Uͦ`^�h�}���7{@/P��UE��7���Q�� o`w�q��%OkP�U�w���A>HX���W]8
�&�~^)��6oj&��;i �x*^�ݻ.1�~tw�
$(��������^S%�@[G�d��ww'��(�O~}N�}��.Nw�9]2��*�;�� Otȵ�Ҿ�Z��j��C,ʢ1xԴC�,ʜ�P�ʺtV-��g�j�1J��+�a�27�T��{�smvZ����d�k�4�(�e��6]׳P��C6��3���dC5���G����gu~�<��
�X�(b�O.^�rqʞ��� ��Ĩ���na7F���h�!��QU�����(�Y�|�W�Ě�����]�1�&� ��*"T�(¡�O�z8���<(|�ct�C���5��hhË׼%�7X��7�>���{���
�:Ӓ��-pO�V�|�xQ����*y���Ga`̨��5�{�(�ES��QAG�W���Rv��}�g3�o 2��z�m������|RYj�S����A<�OD�3�wV0��.(�JQU��eq��FY���C�$��_�6o��$Pk��n��⒐���n�q���%�p��ؔkP�T�ă�:O�M^p����x���uQ�1��vؖ�@%J~��ˆXbx�ȩ3��������jz ��Wv�[-���#�Ќ�M��U��(1l��}�
��9�䲀��R�m�AJ����?�|�v�U�&�D�w?ɀ�m��)ba�sc�ZK{�g9�,�zi�9x�Z�`�I����䘄�W� WD�o�{]Y��I|�h�(�z4�{&���V�����!9[5�k�W��+�u�WM�͍^e�[s2����d�~F�e�&q��c(S)K�[�Kj�RI;��oe������P��P�Yo?~'z����`[A�Di$�Z��9�����E���]��B	��l�����s;OԵ
�#�5��Bb�\����(��3$�t��1��7%��.�������U�(�5�Kɓx��f��y�3�Vi�y�Ww����	�&(���U���T����Z��V	-��!!�O;����B��2�WQ���J��mBB�F�JG�r ��B�7���tgK��C�����F���-7[i��$7}s)��~ E��%�I��`�Q�h�үc���+ї����b�O�0��}R���V��EA`����}��9�x��%������]��:ߩ�"8a͖�A{�d?�-h͊/��y<l��EN6k�Y�͚l��m�v74���C	��X��\*u��U���DZ@���,�~%��>^@�x6�����3����d��q�u��[��&*
��rNA7���1su�~�n+�����asW�q��	�>i8��%P�Q�K���%����Q8a�����O<ӛ��
�g�,=T�2���TtpPӯHÃ:�f�&On�p,k6���N��	��%gy�R)�h��'�S�k�:��䂠��}k�w��}���\S�ybÃ���������3���#K[��y�HL�hM�.ۍ��w�ln�VMh>����t4��+5� �5u���?%���Q�z�\��N`y���٠T���!�+�d�3Jt1�e~hI����bsNˤ�\�ޣ�:���.#a͖ތ(^��Q���-;3���sGpY;GPe[0�в�Qz�a���YDwBߠ��tJx2��Z���ꈪ��p��k�/���y���tKJ?��ۏ۠���]������x��͛2ݾ�D�ݼ�����Xﶽr
Ky�9tNNZ�- ���Z$m��/я�
t]\����"��˨œ�#54n��R����a���d	���q.�	ǒ���O�� ��du?i�����(���E�&M�{aMzb��Q�ӥa��(�Pӥa��3��<~�O�B"D�Ae��
�v��[�ܓ�19��19�c��R`bg 	�|F ���[���(4�!�\ZV���P�`��9p�k%~�M�#��,���{Z���E:^��.�j��=���۝�c!���Th�^��"l�r�D�����Tlv���˟@ި(���5������ :�{�6N��ia���҃Cz]�n���$[�y��%%�O�9p.D����$�lΓ2���f��f�b�(/���t�>?��^k,ْ�ۛ�;٣b3xStҝ#Н�AX�W��i@0}�-}�T�|~v��s1�fI3�͝�EOnMSt�C���q̑l��-+-���Β7a"�c+}2����y1�>~���Y	�d	��w�9�?-�BP�d���"�-���>��c�]d"�W����;^k�ȡ7�:8>�>��]�Y�}r"�>��ɔ�;��	v&��T`gw�!�Xq�����`�@�h�(j�eR�X�I����%`^�Ѧ�t���]W,�:��A��]�4<�nw0�x��D�\�W.	J�_<t���EZ�FL>ϱ�)E�����z��IB�����	V�n���O@��|w/2侺^�w[/R�lW���q����I������x��<I�=�:G U��&`�Έ%ܐ���͊���H%��	=��q��0x�SMv����4��u[튰iTm�Wl�,��=qF����^�e������$�P��PSHӝ6���(M��Pya�G��22�z���t\�z5�:�2�qL}T.��.nwu�
.P/\�.O�b������]�7A�]�t��vh��>�9�_��'�u�ؐPz�J|���;�v��4���p���o)���V��u��!2T�����F:a%Ee�%֖Y7V�ј�2���~s7)�GV�ݱۘ�~��l��o㡁��d 8o��?�B��6���;�P�sDP7���o�vf�ރǥl�%�1��C�R~��F�8�D�2�8-��ń�:"�iP���q̝���T���Yy�/3�����:�:i�7P1����ý�&ԫGЫi��u�Ay���%�e��T4�4���w�"sh��pT{��;z�@�->~Ղ��Ny5���<)��`785ƺP}�3A�xh��15�J�NO�b!~Z�m:KRu�7��)&U?�	���N�=���u��3&l[�\�$���V'鯭�~"/Ӕֆj{�W�(��$�~���<��⨈b\�T�h����r[e~L�$�U��5���{�1|�uN]C�#J����_��ߴ��p&��/T�B��l �w_����N���g���!����8��I���L�t3�~��3��H[TIpL�oߋ�co'���;?�Q�ڴFp<l���"�"��j��a���� ��&���N��?I�'�>'����;uK��R�[*᧴T)�������C獌���J�tդWf(B���'��xm>�(��-����)Ù��+��fS�?~Q������߳�{r�g.��Z�Zŀ0�V������>W!����!5B�R;N>Q��ť��'�J����L��h�eӭ2�~!����Lˢ1�մC�T�,�1��C�������1T�C84.PvY�Ec�i�L
ۭ�T�w��fo��Q���K��5X^A�r��#A� ����=�7A8�7q{��}<g�nc���.F�lZ�ø�Ƿ|^E�8�*�C��nocXW�s��0���h�0��e�'�4|��[�a�Y�8&� ������A��	����A \
  f..x@�
G��$��+%���A8�w�����J���x�w�zg�3��ȸ���E������~z���JZ�������m���u�Φ��^i� .�����tf�iG�Z�{jl�x��Qv�ދ���=�Qzѳ}S�=��Y�r�A-}>J��	O��xm��"=�L���v|y��@[D
`Z���C���B�� ���]���[�%�HTl�{�(}>J$�	��fm����1�4��j��{�ʲQ��C�t	\V��1������e��t��<�pov�ˡQ:��0n��a��8<�=�O�DoQ����!In�`�����Y ���X�3�V�.e�$­���2lW�g��!l�4�6�E�1W]������*	��A�S�<aE�H���ȇ`uc�GY�C�*6�q�c�}`�dBq���r	X���V���,���k.]#���x-=�-�)��G���Zڶ�k��8@�GL�,������/�!�; ��������c��nNϴ�����l5ϧE�8��vئ����X���}n�qЃ���0�{�Q�e&�;9G�M�'�{��W�V%Q�Q%�,�!��~��V�@m���J�>��Zѣ0�/�uʇ�X�"�*|�~���[�yY����s!�p�p:}�tJ-�mtH�6��q7���)�;�J���f�����Q6?�i���׊�"��ee5aCkuF�]}�_�@�^�4��	�bq��,�NԖ5N�W��g��;��w�f���+nJ��ɺ_�&_�2�$�21#�/����|O�� �<��`CV9�~k"&Z��Ȧ ?���<���0��y��~q�nV]��
C�e-�~E=�q�y��̫���`�gI~S�C�meeA�#a,�7�G[Z�50 ���i���ʦ�+]g@g�Q��.�2g��􅯻���jH��}�M�!^��m�:���U���������Ue ��G�L�C/ǜX�%�GF ���%	����v���U�Sǌ���]�?$�k�W��1]��	�(���B�F�S��)*��Z��.0c�yd����A+��`#l��HtFl�5-�ĺ�Q�#����H-�13@��fB����{.̣v#Ψ���,�����!�ɏ�΢F�w�NU���mϭ�De�`O8[O��*��qf�2�P�F��w�Y����?h�/0�2D�Rh)��.�ۑ�_QVf��D��MD�o�oA�5qO�Y���qAgi^�_J�f1#�oy;�V�Ce��͗ŷ������w�i�g��?�[�nh�?�����lF�4@���o">ӌ�ì�gl��~�UB�?�u���ϳ?��t�����7/���s�����:ʮ�}6W��Ҽ��s���j��5���s�4��&�gc�̱7g3v��d8/	�����ЙXG׈�� �G��;Ȼ��LQD&+Nq|5#oAg���g�EӚ�!���_��c�$����]��:�b�е!�Y9Z"N�B�����]@d�Ɗ\=Κ4����	.��3^KF�;
{)�+!7��ne�=Ƣ��cc:qwZ���cQ�~nB��QV�$�0Kq��a��:H���-h�i�SR�6Yv ƍ�3�q�J�<�{��~<d	�hI�/�J�/�t��_�0#Tw���( �]c��fh�j���{�r���m����{��xVY���[f�� �ټ��?#h���s��xX:�y��M�J�I&4�Z}��gGD�(9�v�8�UgR%'BiSU�d
S:�AZ*ڳ��t|0�����<�D �
���ch�[����2I:(�P|��.l���ް�kr7�є0��w�Ң�gO�V�>9��-�eVK��C��ũH�݆~���P�f�gkB�}�g�o zJ������4�V��i�Т���ֽ��.Ђ��i�s̿�A��x�>yWߋ��Zt89�Gi:h�Ί6y'/�X>��h�D�=x�g3H��A�M3�T��B�� ���><0��E�xе[ǝ޺�ۏB�c��GF��N����X�W��ΕM|)ڼɯ�m��(��v���n}��8F�f�;���t�8wth�A���<���E�JW����ɏ�Տ3,�4AZ W�4��Y����d��C���7C�E�E��_o���}$��K��!5�W���sfޔ�Fڍ�lC�O����q)n��p��}b�#�{��j�N�s��|�y�=�8����_r?��t$�;}rK�B�Z|�z/�u�g]��t� y��f��Cc���~�D?�_�%$�m_�o^0��#����v�yɁ�U�6�,Gh�!��Y���>�������N��ЅR+�����G3��w4$_���jxţ:�V��p��}���g�P�v�Dt\���#hp��j9AO��
4�o�~�Y��uh��=�8
���`\}�?^ψ;	Z[��:*Q���!H�ѨRDe�M�$��H�t�D٬���B��O��?t�n����a� �gmq�Q:�Wa���56g
���֔{� X�eA�WΝ@�����������%���{�����=�7��s:U�����d��?|����{�<y�Z�{'���W5�g��{T�j����*�Se'E�'�d�����I��~b�6�u��_�?l���      �   �	  x��]M��6>'������n�l޽u��i����6��%�fWU��Ͷ��^�ˢ,�)BY�:�I- )�H��ͫ=�6N��?��bt�޽�r���a?��1�$ޥ��#q�?��V�V<$��g�\��(;�-n$��sR�;>���ە�	#Ğ�{�2���W0-�"��x�����}�E�ʋ)�U�#׽n�ũ����E)��:�� Xu�]i�r/���?�(Í �?��xW�4]P! �#8~$�������=�O��ʀ��fO�ùZm��k�X4���1
1KQ�4�85���݀	�sB�"6�F�n���	f����m��'�u"�C����>x�E{���V��%��S���q%W:�<����8���r�*�YZ�R��CålJ�q�y�淟>~������{�^,�����D�4����X�0*�5'��W.&��$�Wn��a�h�?�s�0��ν�w�&13*o��J��Br�w�M��q�����Cza� ��%�Po�<�[t��}KXʡs������|@$�S(M�(!e0,��~-�����w�w$���^I�<cy���Y��H�D4x �
�9K�1��x���e/i���FX�Vӊ��۴�B/��¢�W�V@G ��C��$�S�v/v���O���o�����\�D!�xb�P>7Є�� �i���9qnb_w�焈��U""[�&H����:"/�����pM��Y)���|�м�FDi������[һ̓%E��r
K�3?A|��m��>T*�+��į�*;��Fqk�C�M2�Q���T|
�QR�C��8���+��e������@N�8�@���]Q��顈�ն���W{���Q>�P��KT�n#�=!���@7��Q��|��t �NQ��&���E�������vM��R���'\}$aa��2��H�r��$�K�n����baK|IS%�*��5��M�ΰ�+�w*О�MXOظ�\�h��N���:�sU:
dn��%0�r�>�#����D`�2W�k�$�Zwt�ܳپ���%�a����4RR����`SҥD7��`L��~:��nö�����^�g����,m�t
κ=Ek�0�.�g/����<��xK��,G[+i��N�8ںD�K���qtg7�����O�l���[��O%���j���9U+�@�Zu�7'<��w����uc���!]�ܪF�S�Z��1��6I�_[�K�Y������Z�Aܒ�F.����e�d�����/�I����B�]D7�H�W=��ĺ�+<���:xEH��}�+@]0@��'h�W�=>����+���	�,;yEP���%����w���;���&��&�0td�
��4�!�.^�/|^��q���Qz�N��-�np8������}����
�ɘ\�'�����HL���Y,$@	
�C�G��?� '�<
-�3GlV�qv�ț1`� =R&fг�%
C��Ys�籒�M/�!���)w��-��C�|�n�*��2���%�g�u�E��/�/�DΚ�8�
?	l��=f�d��I/�〦�=���Q�	��s���|͠�2�dS����P����'��Zt�ZC�ـ�cC����	�zb[�U�Ts��Ve��G*}%Q��w"��6�K#ڧ������}��ǟF��UY�V�T)�b1�԰�B_=��":��WZ�D]y�q|:��t:ͽ���r[3��W�L-�a��KpQ�VC�X&�NJ��&�1���z^3�����Pcv�?��C�!��7���/�ۺc����6��ʽ�V�\U�٧��D�MG��GF��H��eB�������&�}v��o�`���Y�̛���3=ʒ}D�(;��-�12����ge�ug!�}5��H��LcKpz�{6ϫ�s֤&]:����+JE0�X�E4v+�Ѥ
���A�|80�X2e����ּ`[u���B�fK���$����A�`���8�L��͘�@�7w�U#:)<)y#��Bx��wt]�3��f��
U/�Ay������~�
S�U���ث�*,ߍ�Rg��T��ޕ7`N	GU�T���vz�I�ur��hx̽r\��x��.�D4W�ժ���Y[�Vw��K��+�N����H2����Ҩ�j3ԕ�{hj)���f��3��6��m_��B�[w�
HZ�����BV9ZF:����v�UIj'��*�-w��k?$�10�b�DF�8��� Ce��vt����@��<���jب�b����E��蟹2:1E�L�E�� CAH�s����O��x�p�+I���S��T;bQ?��W��Y�;���Y�ц����8���lp)� �4����5w�F�#��3;���l�>�O�,��r��ӗW���7߮o��}�����77����ݼ�������wo�o��ݠ��ww�����m�.x�����~����� �,[�      �      x������ � �            x������ � �         q  x����n�  ���}�������m�j)%C0@����mv1��C��w@�nz}��0v���]/\��W�x����7R|p�o֝6�DxW��[H���6�l��6<zR�':�PƱ�{aN�W�Ś�rû?P !����sB*�[�Ә/�� ��A�O~zJ�*V�l��k����Zy���o��5F�a!��cz�e$�ǳ2�w�k*�"�k)���O*�W��h$oN��r�x�\
�lyҺ/�X�A�^l'z.x,֠��.�Vp�+?h���+�z~�K�f$��G��V��Lj&�h�(��f�S;>�D���A��$C%��������@�9M��V�M�A��WI�6I��E�!f�U      5   u   x�%��	�0C�oy�R�y����b��=�b�_4�j"��cVFubWNu�WV�/��%�5�4H+�mu�Y�����empX<��ws�M�4x-�Z�F�R����O�R��d�{"��#�         |   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�kd�`hjelhed�gfi�S<����8J�r2�qX[��������L-p�Cl����� UEe            x������ � �      7      x������ � �            x������ � �      3      x������ � �      #      x�3�tI,�LQp�O�L�R�S�K�2�2�9���uu�L���-���L�q����gpbQb��Sbvjg1��b4��8�`cR\k``e`�gdd�Sb�	���`l�Sbp� �#Wo     