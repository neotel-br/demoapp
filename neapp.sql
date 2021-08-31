--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Tags; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public."Tags" (
    id integer NOT NULL,
    name character varying(250) NOT NULL
);


ALTER TABLE public."Tags" OWNER TO blueparachute;

--
-- Name: Tags_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public."Tags_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Tags_id_seq" OWNER TO blueparachute;

--
-- Name: Tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public."Tags_id_seq" OWNED BY public."Tags".id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO blueparachute;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO blueparachute;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO blueparachute;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO blueparachute;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO blueparachute;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO blueparachute;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO blueparachute;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO blueparachute;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO blueparachute;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO blueparachute;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO blueparachute;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO blueparachute;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: categorias; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.categorias (
    id integer NOT NULL,
    name character varying(250) NOT NULL
);


ALTER TABLE public.categorias OWNER TO blueparachute;

--
-- Name: categorias_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_id_seq OWNER TO blueparachute;

--
-- Name: categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;


--
-- Name: costumer; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.costumer (
    id integer NOT NULL,
    creation timestamp with time zone NOT NULL,
    name character varying(250) NOT NULL,
    cep character varying(15) NOT NULL,
    "CPF" character varying(20) NOT NULL,
    logradouro character varying(250) NOT NULL,
    bairro character varying(250) NOT NULL,
    numero character varying(20) NOT NULL,
    cidade character varying(200) NOT NULL,
    "UF" character varying(2) NOT NULL,
    complemento character varying(250) NOT NULL
);


ALTER TABLE public.costumer OWNER TO blueparachute;

--
-- Name: costumer_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.costumer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.costumer_id_seq OWNER TO blueparachute;

--
-- Name: costumer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.costumer_id_seq OWNED BY public.costumer.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO blueparachute;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO blueparachute;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO blueparachute;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO blueparachute;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO blueparachute;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO blueparachute;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO blueparachute;

--
-- Name: item_vendas; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.item_vendas (
    id integer NOT NULL,
    valor double precision NOT NULL,
    produtos_id integer NOT NULL,
    vendas_id integer NOT NULL
);


ALTER TABLE public.item_vendas OWNER TO blueparachute;

--
-- Name: item_vendas_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.item_vendas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.item_vendas_id_seq OWNER TO blueparachute;

--
-- Name: item_vendas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.item_vendas_id_seq OWNED BY public.item_vendas.id;


--
-- Name: payinfo; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.payinfo (
    id integer NOT NULL,
    creation timestamp with time zone NOT NULL,
    name character varying(250) NOT NULL,
    card character varying(16) NOT NULL,
    dv integer NOT NULL,
    costumer_id integer NOT NULL
);


ALTER TABLE public.payinfo OWNER TO blueparachute;

--
-- Name: payinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.payinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payinfo_id_seq OWNER TO blueparachute;

--
-- Name: payinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.payinfo_id_seq OWNED BY public.payinfo.id;


--
-- Name: produto_tags; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.produto_tags (
    id integer NOT NULL,
    produto_id integer NOT NULL,
    tags_id integer NOT NULL
);


ALTER TABLE public.produto_tags OWNER TO blueparachute;

--
-- Name: produto_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.produto_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_tags_id_seq OWNER TO blueparachute;

--
-- Name: produto_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.produto_tags_id_seq OWNED BY public.produto_tags.id;


--
-- Name: produtos; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.produtos (
    id integer NOT NULL,
    creation timestamp with time zone NOT NULL,
    name character varying(250) NOT NULL,
    preco double precision NOT NULL,
    categoria_id integer NOT NULL
);


ALTER TABLE public.produtos OWNER TO blueparachute;

--
-- Name: produtos_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.produtos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produtos_id_seq OWNER TO blueparachute;

--
-- Name: produtos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.produtos_id_seq OWNED BY public.produtos.id;


--
-- Name: vendas; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.vendas (
    id integer NOT NULL,
    creation timestamp with time zone NOT NULL,
    card_id integer NOT NULL,
    costumer_id integer NOT NULL,
    status_id integer NOT NULL
);


ALTER TABLE public.vendas OWNER TO blueparachute;

--
-- Name: vendas_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.vendas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendas_id_seq OWNER TO blueparachute;

--
-- Name: vendas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.vendas_id_seq OWNED BY public.vendas.id;


--
-- Name: vendas_status; Type: TABLE; Schema: public; Owner: blueparachute
--

CREATE TABLE public.vendas_status (
    id integer NOT NULL,
    name character varying(250) NOT NULL
);


ALTER TABLE public.vendas_status OWNER TO blueparachute;

--
-- Name: vendas_status_id_seq; Type: SEQUENCE; Schema: public; Owner: blueparachute
--

CREATE SEQUENCE public.vendas_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendas_status_id_seq OWNER TO blueparachute;

--
-- Name: vendas_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blueparachute
--

ALTER SEQUENCE public.vendas_status_id_seq OWNED BY public.vendas_status.id;


--
-- Name: Tags id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public."Tags" ALTER COLUMN id SET DEFAULT nextval('public."Tags_id_seq"'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: categorias id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);


--
-- Name: costumer id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.costumer ALTER COLUMN id SET DEFAULT nextval('public.costumer_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: item_vendas id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.item_vendas ALTER COLUMN id SET DEFAULT nextval('public.item_vendas_id_seq'::regclass);


--
-- Name: payinfo id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.payinfo ALTER COLUMN id SET DEFAULT nextval('public.payinfo_id_seq'::regclass);


--
-- Name: produto_tags id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.produto_tags ALTER COLUMN id SET DEFAULT nextval('public.produto_tags_id_seq'::regclass);


--
-- Name: produtos id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.produtos ALTER COLUMN id SET DEFAULT nextval('public.produtos_id_seq'::regclass);


--
-- Name: vendas id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.vendas ALTER COLUMN id SET DEFAULT nextval('public.vendas_id_seq'::regclass);


--
-- Name: vendas_status id; Type: DEFAULT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.vendas_status ALTER COLUMN id SET DEFAULT nextval('public.vendas_status_id_seq'::regclass);


--
-- Data for Name: Tags; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public."Tags" (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.auth_group (id, name) FROM stdin;
1	users
2	supervisor
3	diretoria
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	2	33
2	2	35
3	2	29
4	2	30
5	2	31
6	2	61
7	2	62
9	3	61
10	3	63
11	3	62
12	3	29
13	3	30
14	3	33
15	3	64
16	3	35
17	2	34
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add categoria	7	add_categoria
26	Can change categoria	7	change_categoria
27	Can delete categoria	7	delete_categoria
28	Can view categoria	7	view_categoria
29	Can add customer	8	add_customer
30	Can change customer	8	change_customer
31	Can delete customer	8	delete_customer
32	Can view customer	8	view_customer
33	Can add pay info	9	add_payinfo
34	Can change pay info	9	change_payinfo
35	Can delete pay info	9	delete_payinfo
36	Can view pay info	9	view_payinfo
37	Can add produtos	10	add_produtos
38	Can change produtos	10	change_produtos
39	Can delete produtos	10	delete_produtos
40	Can view produtos	10	view_produtos
41	Can add tags	11	add_tags
42	Can change tags	11	change_tags
43	Can delete tags	11	delete_tags
44	Can view tags	11	view_tags
45	Can add vendas status	12	add_vendasstatus
46	Can change vendas status	12	change_vendasstatus
47	Can delete vendas status	12	delete_vendasstatus
48	Can view vendas status	12	view_vendasstatus
49	Can add vendas	13	add_vendas
50	Can change vendas	13	change_vendas
51	Can delete vendas	13	delete_vendas
52	Can view vendas	13	view_vendas
53	Can add produto vendas	14	add_produtovendas
54	Can change produto vendas	14	change_produtovendas
55	Can delete produto vendas	14	delete_produtovendas
56	Can view produto vendas	14	view_produtovendas
57	Can add produto tags	15	add_produtotags
58	Can change produto tags	15	change_produtotags
59	Can delete produto tags	15	delete_produtotags
60	Can view produto tags	15	view_produtotags
61	Can Detokenize CPF	8	detokenize_cpf
62	Can Detokenize Cards	9	detokenize_card
63	Can Change customer CPF	8	change_customer_cpf
64	Can Detokenize DV	9	detokenize_dv
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$aPegzT1tWGdM$xqvFuJz+Io8YsdccH8McJXDsyMUpR2fpOkcKov/By/4=	2019-05-15 16:42:21.372518-03	t	admin			admin@neotel.com.br	t	t	2019-05-15 16:36:44.269776-03
2	pbkdf2_sha256$150000$lxX0dJnigy5y$hxh8cS/IbPz/zz3k7bCAPBtnoNQhBFG9HEeA35gkDIs=	2019-05-17 16:34:34.575368-03	f	user@neotel.com.br	Usuário	Comum	user@neotel.com.br	f	t	2019-05-15 16:43:14-03
3	pbkdf2_sha256$150000$l2PzjnU1LG2o$c0XEEWcIrBV+8IGls1NUTH8jD5Mx2b0pxtAM684nVY4=	2019-05-17 16:35:44.365936-03	f	supervisor@neotel.com.br	Supervisor	de conteudo	supervisor@neotel.com.br	f	t	2019-05-15 16:44:31-03
4	pbkdf2_sha256$150000$xyXfxcZxhzaV$5Tq8op4ImVnX3luAXMgmKH+O3HOscE1hO2RaGTuLwyA=	2019-05-17 16:36:07.575487-03	f	diretor@neotel.com.br	Diretor	Operacional	diretor@neotel.com.br	f	t	2019-05-15 16:45:24-03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	3	2
2	2	1
3	4	3
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.categorias (id, name) FROM stdin;
\.


--
-- Data for Name: costumer; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.costumer (id, creation, name, cep, "CPF", logradouro, bairro, numero, cidade, "UF", complemento) FROM stdin;
1	2019-05-17 12:07:21.657965-03	Adilson Santos da Rocha		&n6db,)21`9		Centro		São Paulo	SP	
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-05-15 16:43:14.59565-03	2	user@neotel.com.br	1	[{"added": {}}]	4	1
2	2019-05-15 16:43:56.69448-03	2	user@neotel.com.br	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	1
3	2019-05-15 16:44:31.154973-03	3	supervisor@neotel.com.br	1	[{"added": {}}]	4	1
4	2019-05-15 16:45:00.56463-03	3	supervisor@neotel.com.br	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	1
5	2019-05-15 16:45:24.218983-03	4	diretor@neotel.com.br	1	[{"added": {}}]	4	1
6	2019-05-15 16:45:59.608906-03	4	diretor@neotel.com.br	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	1
7	2019-05-15 16:49:57.216274-03	1	users	1	[{"added": {}}]	3	1
8	2019-05-15 16:51:11.122371-03	2	supervisor	1	[{"added": {}}]	3	1
9	2019-05-15 16:52:08.276307-03	3	supervisor@neotel.com.br	2	[{"changed": {"fields": ["groups"]}}]	4	1
10	2019-05-15 16:52:59.941004-03	2	supervisor	2	[{"changed": {"fields": ["permissions"]}}]	3	1
11	2019-05-15 16:54:37.000706-03	2	supervisor	2	[]	3	1
12	2019-05-15 16:55:09.83704-03	3	supervisor@neotel.com.br	2	[]	4	1
13	2019-05-15 16:56:01.405186-03	2	user@neotel.com.br	2	[{"changed": {"fields": ["groups"]}}]	4	1
14	2019-05-15 16:56:30.001782-03	3	supervisor@neotel.com.br	2	[]	4	1
15	2019-05-15 17:01:07.2022-03	2	supervisor	2	[]	3	1
16	2019-05-15 17:01:19.427733-03	2	supervisor	2	[{"changed": {"fields": ["permissions"]}}]	3	1
17	2019-05-15 17:04:36.463178-03	2	supervisor	2	[{"changed": {"fields": ["permissions"]}}]	3	1
18	2019-05-15 18:52:32.708611-03	2	supervisor	2	[{"changed": {"fields": ["permissions"]}}]	3	1
19	2019-05-15 18:53:40.861436-03	2	supervisor	2	[{"changed": {"fields": ["permissions"]}}]	3	1
20	2019-05-15 18:56:37.145534-03	3	diretoria	1	[{"added": {}}]	3	1
21	2019-05-15 18:57:07.848523-03	4	diretor@neotel.com.br	2	[{"changed": {"fields": ["groups"]}}]	4	1
22	2019-05-15 18:58:06.261551-03	3	diretoria	2	[{"changed": {"fields": ["permissions"]}}]	3	1
23	2019-05-17 10:45:35.409144-03	3	diretoria	2	[{"changed": {"fields": ["permissions"]}}]	3	1
24	2019-05-17 11:47:11.63699-03	3	diretoria	2	[{"changed": {"fields": ["permissions"]}}]	3	1
25	2019-05-17 11:54:49.788579-03	3	diretoria	2	[{"changed": {"fields": ["permissions"]}}]	3	1
26	2019-05-17 12:15:20.620315-03	2	supervisor	2	[{"changed": {"fields": ["permissions"]}}]	3	1
27	2019-05-17 12:30:41.874538-03	3	supervisor@neotel.com.br	2	[{"changed": {"fields": ["password"]}}]	4	1
28	2019-05-17 12:30:48.353292-03	3	supervisor@neotel.com.br	2	[]	4	1
29	2019-05-17 12:57:43.200783-03	3	supervisor@neotel.com.br	2	[{"changed": {"fields": ["password"]}}]	4	1
30	2019-05-17 14:22:01.264138-03	4	diretor@neotel.com.br	2	[{"changed": {"fields": ["password"]}}]	4	1
31	2019-05-17 14:26:08.034399-03	3	diretoria	2	[]	3	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	neoapp	categoria
8	neoapp	customer
9	neoapp	payinfo
10	neoapp	produtos
11	neoapp	tags
12	neoapp	vendasstatus
13	neoapp	vendas
14	neoapp	produtovendas
15	neoapp	produtotags
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-05-15 16:35:44.586401-03
2	auth	0001_initial	2019-05-15 16:35:44.7343-03
3	admin	0001_initial	2019-05-15 16:35:45.160501-03
4	admin	0002_logentry_remove_auto_add	2019-05-15 16:35:45.251474-03
5	admin	0003_logentry_add_action_flag_choices	2019-05-15 16:35:45.270421-03
6	contenttypes	0002_remove_content_type_name	2019-05-15 16:35:45.312581-03
7	auth	0002_alter_permission_name_max_length	2019-05-15 16:35:45.321269-03
8	auth	0003_alter_user_email_max_length	2019-05-15 16:35:45.332466-03
9	auth	0004_alter_user_username_opts	2019-05-15 16:35:45.342993-03
10	auth	0005_alter_user_last_login_null	2019-05-15 16:35:45.35805-03
11	auth	0006_require_contenttypes_0002	2019-05-15 16:35:45.362135-03
12	auth	0007_alter_validators_add_error_messages	2019-05-15 16:35:45.377237-03
13	auth	0008_alter_user_username_max_length	2019-05-15 16:35:45.400021-03
14	auth	0009_alter_user_last_name_max_length	2019-05-15 16:35:45.414695-03
15	auth	0010_alter_group_name_max_length	2019-05-15 16:35:45.429902-03
16	auth	0011_update_proxy_permissions	2019-05-15 16:35:45.453679-03
17	neoapp	0001_initial	2019-05-15 16:35:45.717389-03
18	sessions	0001_initial	2019-05-15 16:35:46.02326-03
19	neoapp	0002_auto_20190517_1405	2019-05-17 11:05:44.784442-03
20	neoapp	0003_auto_20190517_1511	2019-05-17 12:11:20.680535-03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
deqgwprubbscu867yg9yd97aj8sdizfv	NzkxMzgyMGRiOWVlOTE4ZGI3NjY3NWJkMjU5ZmJiYmEwMDU5NzcxYTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjgwYzQxNGVmM2U5NjIyNDM0MTg2NjM4ZGJmZmU3MjQ3MDhmMDA4In0=	2019-05-31 13:05:25.342924-03
gmzug30l8bqb3ktlp7arv6r3vmbw4wk7	YTkyYjk2MjI2Njc2OTg4NGNkOTYwMDk4NjMxZmQ4ZTEzNzE5MGFmNDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MDAyNGYwNDk2OWE3YWI3NWE1OTc2MmJjNzYzOThmZjljNmIzYTVlIn0=	2019-05-31 13:08:27.986882-03
hgu2dp8s6yrt3t3n02zp5gqptfaj40tr	NjVmZTQyMDM5OTU5MmQyMDJjNDA0ZjcyY2UzY2QxOTliNWE4YmNjNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZTgyNmVjMTgwNjc1ZGZjMzY5OWEzZGIzN2FmOWUwYmQwODU3ZTBkIn0=	2019-05-31 14:22:01.574513-03
jlm6rntnuwmvdp1dttxa15bqb01hrzi9	MjA0MTJmYmE1N2E1NDczNWVkY2QwNGQyODI3MzYzOWIzZTZjN2FhNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmU2ZjIwZjhmMTkzMDJlYTMzODkzNzBkZDNhNjNiYTBiOTA1MDhmIn0=	2019-05-31 14:22:12.549042-03
wrgdbc4ua8d47sow0zrb5g2rwfbjs6zp	YzY4YTFmYWM2MWJlMDZjNmJhNjUzNzJhYzU5Y2Y3ZTNjNzcxOTBhMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjBiZTJiZDcwNTQ1ZTVmYjk1ZmYzZDM1ZDY2MDY3N2MwZGFiYTFhIn0=	2019-05-31 14:32:17.411723-03
6ezdruwsb0tzbir1eovhqdqwhvdryng6	MjA0MTJmYmE1N2E1NDczNWVkY2QwNGQyODI3MzYzOWIzZTZjN2FhNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmU2ZjIwZjhmMTkzMDJlYTMzODkzNzBkZDNhNjNiYTBiOTA1MDhmIn0=	2019-05-31 16:36:07.579131-03
\.


--
-- Data for Name: item_vendas; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.item_vendas (id, valor, produtos_id, vendas_id) FROM stdin;
\.


--
-- Data for Name: payinfo; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.payinfo (id, creation, name, card, dv, costumer_id) FROM stdin;
46	2019-05-17 15:01:27.675792-03	Master Card - Black	3C$Vkj;;^dg[;%HM	6711	1
\.


--
-- Data for Name: produto_tags; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.produto_tags (id, produto_id, tags_id) FROM stdin;
\.


--
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.produtos (id, creation, name, preco, categoria_id) FROM stdin;
\.


--
-- Data for Name: vendas; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.vendas (id, creation, card_id, costumer_id, status_id) FROM stdin;
\.


--
-- Data for Name: vendas_status; Type: TABLE DATA; Schema: public; Owner: blueparachute
--

COPY public.vendas_status (id, name) FROM stdin;
\.


--
-- Name: Tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public."Tags_id_seq"', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 17, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 3, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.categorias_id_seq', 1, false);


--
-- Name: costumer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.costumer_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 31, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Name: item_vendas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.item_vendas_id_seq', 1, false);


--
-- Name: payinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.payinfo_id_seq', 46, true);


--
-- Name: produto_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.produto_tags_id_seq', 1, false);


--
-- Name: produtos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.produtos_id_seq', 1, false);


--
-- Name: vendas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.vendas_id_seq', 1, false);


--
-- Name: vendas_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blueparachute
--

SELECT pg_catalog.setval('public.vendas_status_id_seq', 1, false);


--
-- Name: Tags Tags_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);


--
-- Name: costumer costumer_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.costumer
    ADD CONSTRAINT costumer_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: item_vendas item_vendas_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.item_vendas
    ADD CONSTRAINT item_vendas_pkey PRIMARY KEY (id);


--
-- Name: payinfo payinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.payinfo
    ADD CONSTRAINT payinfo_pkey PRIMARY KEY (id);


--
-- Name: produto_tags produto_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.produto_tags
    ADD CONSTRAINT produto_tags_pkey PRIMARY KEY (id);


--
-- Name: produtos produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id);


--
-- Name: vendas vendas_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (id);


--
-- Name: vendas_status vendas_status_pkey; Type: CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.vendas_status
    ADD CONSTRAINT vendas_status_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: item_vendas_produtos_id_3aa58c03; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX item_vendas_produtos_id_3aa58c03 ON public.item_vendas USING btree (produtos_id);


--
-- Name: item_vendas_vendas_id_bdf36196; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX item_vendas_vendas_id_bdf36196 ON public.item_vendas USING btree (vendas_id);


--
-- Name: payinfo_costumer_id_ebec3785; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX payinfo_costumer_id_ebec3785 ON public.payinfo USING btree (costumer_id);


--
-- Name: produto_tags_produto_id_bc9840b2; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX produto_tags_produto_id_bc9840b2 ON public.produto_tags USING btree (produto_id);


--
-- Name: produto_tags_tags_id_40272083; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX produto_tags_tags_id_40272083 ON public.produto_tags USING btree (tags_id);


--
-- Name: produtos_categoria_id_b7177d63; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX produtos_categoria_id_b7177d63 ON public.produtos USING btree (categoria_id);


--
-- Name: vendas_card_id_8c6ffd7a; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX vendas_card_id_8c6ffd7a ON public.vendas USING btree (card_id);


--
-- Name: vendas_costumer_id_aaabde5c; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX vendas_costumer_id_aaabde5c ON public.vendas USING btree (costumer_id);


--
-- Name: vendas_status_id_49fb2d85; Type: INDEX; Schema: public; Owner: blueparachute
--

CREATE INDEX vendas_status_id_49fb2d85 ON public.vendas USING btree (status_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: item_vendas item_vendas_produtos_id_3aa58c03_fk_produtos_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.item_vendas
    ADD CONSTRAINT item_vendas_produtos_id_3aa58c03_fk_produtos_id FOREIGN KEY (produtos_id) REFERENCES public.produtos(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: item_vendas item_vendas_vendas_id_bdf36196_fk_vendas_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.item_vendas
    ADD CONSTRAINT item_vendas_vendas_id_bdf36196_fk_vendas_id FOREIGN KEY (vendas_id) REFERENCES public.vendas(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payinfo payinfo_costumer_id_ebec3785_fk_costumer_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.payinfo
    ADD CONSTRAINT payinfo_costumer_id_ebec3785_fk_costumer_id FOREIGN KEY (costumer_id) REFERENCES public.costumer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: produto_tags produto_tags_produto_id_bc9840b2_fk_produtos_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.produto_tags
    ADD CONSTRAINT produto_tags_produto_id_bc9840b2_fk_produtos_id FOREIGN KEY (produto_id) REFERENCES public.produtos(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: produto_tags produto_tags_tags_id_40272083_fk_Tags_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.produto_tags
    ADD CONSTRAINT "produto_tags_tags_id_40272083_fk_Tags_id" FOREIGN KEY (tags_id) REFERENCES public."Tags"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: produtos produtos_categoria_id_b7177d63_fk_categorias_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_categoria_id_b7177d63_fk_categorias_id FOREIGN KEY (categoria_id) REFERENCES public.categorias(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: vendas vendas_card_id_8c6ffd7a_fk_payinfo_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_card_id_8c6ffd7a_fk_payinfo_id FOREIGN KEY (card_id) REFERENCES public.payinfo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: vendas vendas_costumer_id_aaabde5c_fk_costumer_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_costumer_id_aaabde5c_fk_costumer_id FOREIGN KEY (costumer_id) REFERENCES public.costumer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: vendas vendas_status_id_49fb2d85_fk_vendas_status_id; Type: FK CONSTRAINT; Schema: public; Owner: blueparachute
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_status_id_49fb2d85_fk_vendas_status_id FOREIGN KEY (status_id) REFERENCES public.vendas_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

