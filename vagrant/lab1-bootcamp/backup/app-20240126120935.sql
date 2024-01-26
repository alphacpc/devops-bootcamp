--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)

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

SET default_table_access_method = heap;

--
-- Name: adresses; Type: TABLE; Schema: public; Owner: alphacpc
--

CREATE TABLE public.adresses (
    id_adresse integer NOT NULL,
    street character varying(250) NOT NULL,
    suite character varying(200) NOT NULL,
    city character varying(200) NOT NULL,
    zipcode character varying(100) NOT NULL,
    lat character varying(50) NOT NULL,
    long character varying(50) NOT NULL
);


ALTER TABLE public.adresses OWNER TO alphacpc;

--
-- Name: adresses_id_adresse_seq; Type: SEQUENCE; Schema: public; Owner: alphacpc
--

CREATE SEQUENCE public.adresses_id_adresse_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adresses_id_adresse_seq OWNER TO alphacpc;

--
-- Name: adresses_id_adresse_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alphacpc
--

ALTER SEQUENCE public.adresses_id_adresse_seq OWNED BY public.adresses.id_adresse;


--
-- Name: albums; Type: TABLE; Schema: public; Owner: alphacpc
--

CREATE TABLE public.albums (
    id_albums integer NOT NULL,
    title_albums character varying(150) NOT NULL,
    id_users_albums integer,
    visible_albums integer
);


ALTER TABLE public.albums OWNER TO alphacpc;

--
-- Name: albums_id_albums_seq; Type: SEQUENCE; Schema: public; Owner: alphacpc
--

CREATE SEQUENCE public.albums_id_albums_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.albums_id_albums_seq OWNER TO alphacpc;

--
-- Name: albums_id_albums_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alphacpc
--

ALTER SEQUENCE public.albums_id_albums_seq OWNED BY public.albums.id_albums;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: alphacpc
--

CREATE TABLE public.comments (
    id_comments integer NOT NULL,
    name_comments character varying(150) NOT NULL,
    email_comments character varying(100) NOT NULL,
    body_comments text NOT NULL,
    id_posts_comments integer,
    visible_comments integer
);


ALTER TABLE public.comments OWNER TO alphacpc;

--
-- Name: comments_id_comments_seq; Type: SEQUENCE; Schema: public; Owner: alphacpc
--

CREATE SEQUENCE public.comments_id_comments_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_comments_seq OWNER TO alphacpc;

--
-- Name: comments_id_comments_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alphacpc
--

ALTER SEQUENCE public.comments_id_comments_seq OWNED BY public.comments.id_comments;


--
-- Name: compagny; Type: TABLE; Schema: public; Owner: alphacpc
--

CREATE TABLE public.compagny (
    id_compagny integer NOT NULL,
    name_compagny character varying(150) NOT NULL,
    "catchPhrase" character varying(150),
    bs character varying(150) NOT NULL
);


ALTER TABLE public.compagny OWNER TO alphacpc;

--
-- Name: compagny_id_compagny_seq; Type: SEQUENCE; Schema: public; Owner: alphacpc
--

CREATE SEQUENCE public.compagny_id_compagny_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compagny_id_compagny_seq OWNER TO alphacpc;

--
-- Name: compagny_id_compagny_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alphacpc
--

ALTER SEQUENCE public.compagny_id_compagny_seq OWNED BY public.compagny.id_compagny;


--
-- Name: photos; Type: TABLE; Schema: public; Owner: alphacpc
--

CREATE TABLE public.photos (
    id_photos integer NOT NULL,
    title_photos character varying(150) NOT NULL,
    url character varying(150) NOT NULL,
    "thumbnailUrl" character varying(150) NOT NULL,
    id_albums_photos integer,
    visible_photos integer
);


ALTER TABLE public.photos OWNER TO alphacpc;

--
-- Name: photos_id_photos_seq; Type: SEQUENCE; Schema: public; Owner: alphacpc
--

CREATE SEQUENCE public.photos_id_photos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photos_id_photos_seq OWNER TO alphacpc;

--
-- Name: photos_id_photos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alphacpc
--

ALTER SEQUENCE public.photos_id_photos_seq OWNED BY public.photos.id_photos;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: alphacpc
--

CREATE TABLE public.posts (
    id_posts integer NOT NULL,
    title_posts character varying(150) NOT NULL,
    body_posts text NOT NULL,
    id_users_posts integer,
    visible_posts integer
);


ALTER TABLE public.posts OWNER TO alphacpc;

--
-- Name: posts_id_posts_seq; Type: SEQUENCE; Schema: public; Owner: alphacpc
--

CREATE SEQUENCE public.posts_id_posts_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_posts_seq OWNER TO alphacpc;

--
-- Name: posts_id_posts_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alphacpc
--

ALTER SEQUENCE public.posts_id_posts_seq OWNED BY public.posts.id_posts;


--
-- Name: todos; Type: TABLE; Schema: public; Owner: alphacpc
--

CREATE TABLE public.todos (
    id_todos integer NOT NULL,
    title_todos character varying(100) NOT NULL,
    status integer NOT NULL,
    id_users_todos integer,
    visible_todos integer
);


ALTER TABLE public.todos OWNER TO alphacpc;

--
-- Name: todos_id_todos_seq; Type: SEQUENCE; Schema: public; Owner: alphacpc
--

CREATE SEQUENCE public.todos_id_todos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todos_id_todos_seq OWNER TO alphacpc;

--
-- Name: todos_id_todos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alphacpc
--

ALTER SEQUENCE public.todos_id_todos_seq OWNED BY public.todos.id_todos;


--
-- Name: users; Type: TABLE; Schema: public; Owner: alphacpc
--

CREATE TABLE public.users (
    id_users integer NOT NULL,
    fullname character varying(100) NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    phone character varying(50),
    website character varying(100),
    password character varying(100) NOT NULL,
    origine integer NOT NULL,
    visible_users integer,
    id_adresse_users integer,
    id_company_users integer
);


ALTER TABLE public.users OWNER TO alphacpc;

--
-- Name: users_id_users_seq; Type: SEQUENCE; Schema: public; Owner: alphacpc
--

CREATE SEQUENCE public.users_id_users_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_users_seq OWNER TO alphacpc;

--
-- Name: users_id_users_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alphacpc
--

ALTER SEQUENCE public.users_id_users_seq OWNED BY public.users.id_users;


--
-- Name: utilisateur; Type: TABLE; Schema: public; Owner: alphacpc
--

CREATE TABLE public.utilisateur (
    id_utilisateur integer NOT NULL,
    email character varying(200) NOT NULL,
    password character varying(75) NOT NULL,
    profile character varying NOT NULL
);


ALTER TABLE public.utilisateur OWNER TO alphacpc;

--
-- Name: utilisateur_id_utilisateur_seq; Type: SEQUENCE; Schema: public; Owner: alphacpc
--

CREATE SEQUENCE public.utilisateur_id_utilisateur_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.utilisateur_id_utilisateur_seq OWNER TO alphacpc;

--
-- Name: utilisateur_id_utilisateur_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alphacpc
--

ALTER SEQUENCE public.utilisateur_id_utilisateur_seq OWNED BY public.utilisateur.id_utilisateur;


--
-- Name: adresses id_adresse; Type: DEFAULT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.adresses ALTER COLUMN id_adresse SET DEFAULT nextval('public.adresses_id_adresse_seq'::regclass);


--
-- Name: albums id_albums; Type: DEFAULT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.albums ALTER COLUMN id_albums SET DEFAULT nextval('public.albums_id_albums_seq'::regclass);


--
-- Name: comments id_comments; Type: DEFAULT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.comments ALTER COLUMN id_comments SET DEFAULT nextval('public.comments_id_comments_seq'::regclass);


--
-- Name: compagny id_compagny; Type: DEFAULT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.compagny ALTER COLUMN id_compagny SET DEFAULT nextval('public.compagny_id_compagny_seq'::regclass);


--
-- Name: photos id_photos; Type: DEFAULT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.photos ALTER COLUMN id_photos SET DEFAULT nextval('public.photos_id_photos_seq'::regclass);


--
-- Name: posts id_posts; Type: DEFAULT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.posts ALTER COLUMN id_posts SET DEFAULT nextval('public.posts_id_posts_seq'::regclass);


--
-- Name: todos id_todos; Type: DEFAULT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.todos ALTER COLUMN id_todos SET DEFAULT nextval('public.todos_id_todos_seq'::regclass);


--
-- Name: users id_users; Type: DEFAULT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.users ALTER COLUMN id_users SET DEFAULT nextval('public.users_id_users_seq'::regclass);


--
-- Name: utilisateur id_utilisateur; Type: DEFAULT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.utilisateur ALTER COLUMN id_utilisateur SET DEFAULT nextval('public.utilisateur_id_utilisateur_seq'::regclass);


--
-- Data for Name: adresses; Type: TABLE DATA; Schema: public; Owner: alphacpc
--

COPY public.adresses (id_adresse, street, suite, city, zipcode, lat, long) FROM stdin;
1	Kulas Light	Apt. 556	Gwenborough	92998-3874	-37.3159	81.1496
2	Victor Plains	Suite 879	Wisokyburgh	90566-7771	-43.9509	-34.4618
\.


--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: alphacpc
--

COPY public.albums (id_albums, title_albums, id_users_albums, visible_albums) FROM stdin;
1	quam nostrum impedit mollitia quod et dolor	2	1
2	consequatur autem doloribus natus consectetur	2	1
3	ab rerum non rerum consequatur ut ea unde	2	1
4	ducimus molestias eos animi atque nihil	2	1
5	ut pariatur rerum ipsum natus repellendus praesentium	2	1
6	voluptatem aut maxime inventore autem magnam atque repellat	2	1
7	aut minima voluptatem ut velit	2	1
8	nesciunt quia et doloremque	2	1
9	velit pariatur quaerat similique libero omnis quia	2	1
10	voluptas rerum iure ut enim	2	1
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: alphacpc
--

COPY public.comments (id_comments, name_comments, email_comments, body_comments, id_posts_comments, visible_comments) FROM stdin;
1	id labore ex et quam laborum	Eliseo@gardner.biz	laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium	1	1
2	quo vero reiciendis velit similique earum	Jayne_Kuhic@sydney.com	est natus enim nihil est dolore omnis voluptatem numquam\net omnis occaecati quod ullam at\nvoluptatem error expedita pariatur\nnihil sint nostrum voluptatem reiciendis et	1	1
3	odio adipisci rerum aut animi	Nikita@garfield.biz	quia molestiae reprehenderit quasi aspernatur\naut expedita occaecati aliquam eveniet laudantium\nomnis quibusdam delectus saepe quia accusamus maiores nam est\ncum et ducimus et vero voluptates excepturi deleniti ratione	1	1
4	alias odio sit	Lew@alysha.tv	non et atque\noccaecati deserunt quas accusantium unde odit nobis qui voluptatem\nquia voluptas consequuntur itaque dolor\net qui rerum deleniti ut occaecati	1	1
5	vero eaque aliquid doloribus et culpa	Hayden@althea.biz	harum non quasi et ratione\ntempore iure ex voluptates in ratione\nharum architecto fugit inventore cupiditate\nvoluptates magni quo et	1	1
6	et fugit eligendi deleniti quidem qui sint nihil autem	Presley.Mueller@myrl.com	doloribus at sed quis culpa deserunt consectetur qui praesentium\naccusamus fugiat dicta\nvoluptatem rerum ut voluptate autem\nvoluptatem repellendus aspernatur dolorem in	2	1
7	repellat consequatur praesentium vel minus molestias voluptatum	Dallas@ole.me	maiores sed dolores similique labore et inventore et\nquasi temporibus esse sunt id et\neos voluptatem aliquam\naliquid ratione corporis molestiae mollitia quia et magnam dolor	2	1
8	et omnis dolorem	Mallory_Kunze@marie.org	ut voluptatem corrupti velit\nad voluptatem maiores\net nisi velit vero accusamus maiores\nvoluptates quia aliquid ullam eaque	2	1
9	provident id voluptas	Meghan_Littel@rene.us	sapiente assumenda molestiae atque\nadipisci laborum distinctio aperiam et ab ut omnis\net occaecati aspernatur odit sit rem expedita\nquas enim ipsam minus	2	1
10	eaque et deleniti atque tenetur ut quo ut	Carmen_Keeling@caroline.name	voluptate iusto quis nobis reprehenderit ipsum amet nulla\nquia quas dolores velit et non\naut quia necessitatibus\nnostrum quaerat nulla et accusamus nisi facilis	2	1
11	fugit labore quia mollitia quas deserunt nostrum sunt	Veronica_Goodwin@timmothy.net	ut dolorum nostrum id quia aut est\nfuga est inventore vel eligendi explicabo quis consectetur\naut occaecati repellat id natus quo est\nut blanditiis quia ut vel ut maiores ea	3	1
12	modi ut eos dolores illum nam dolor	Oswald.Vandervort@leanne.org	expedita maiores dignissimos facilis\nipsum est rem est fugit velit sequi\neum odio dolores dolor totam\noccaecati ratione eius rem velit	3	1
13	aut inventore non pariatur sit vitae voluptatem sapiente	Kariane@jadyn.tv	fuga eos qui dolor rerum\ninventore corporis exercitationem\ncorporis cupiditate et deserunt recusandae est sed quis culpa\neum maiores corporis et	3	1
14	et officiis id praesentium hic aut ipsa dolorem repudiandae	Nathan@solon.io	vel quae voluptas qui exercitationem\nvoluptatibus unde sed\nminima et qui ipsam aspernatur\nexpedita magnam laudantium et et quaerat ut qui dolorum	3	1
15	debitis magnam hic odit aut ullam nostrum tenetur	Maynard.Hodkiewicz@roberta.com	nihil ut voluptates blanditiis autem odio dicta rerum\nquisquam saepe et est\nsunt quasi nemo laudantium deserunt\nmolestias tempora quo quia	3	1
16	perferendis temporibus delectus optio ea eum ratione dolorum	Christine@ayana.info	iste ut laborum aliquid velit facere itaque\nquo ut soluta dicta voluptate\nerror tempore aut et\nsequi reiciendis dignissimos expedita consequuntur libero sed fugiat facilis	4	1
17	eos est animi quis	Preston_Hudson@blaise.tv	consequatur necessitatibus totam sed sit dolorum\nrecusandae quae odio excepturi voluptatum harum voluptas\nquisquam sit ad eveniet delectus\ndoloribus odio qui non labore	4	1
18	aut et tenetur ducimus illum aut nulla ab	Vincenza_Klocko@albertha.name	veritatis voluptates necessitatibus maiores corrupti\nneque et exercitationem amet sit et\nullam velit sit magnam laborum\nmagni ut molestias	4	1
19	sed impedit rerum quia et et inventore unde officiis	Madelynn.Gorczany@darion.biz	doloribus est illo sed minima aperiam\nut dignissimos accusantium tempore atque et aut molestiae\nmagni ut accusamus voluptatem quos ut voluptates\nquisquam porro sed architecto ut	4	1
20	molestias expedita iste aliquid voluptates	Mariana_Orn@preston.org	qui harum consequatur fugiat\net eligendi perferendis at molestiae commodi ducimus\ndoloremque asperiores numquam qui\nut sit dignissimos reprehenderit tempore	4	1
21	aliquid rerum mollitia qui a consectetur eum sed	Noemie@marques.me	deleniti aut sed molestias explicabo\ncommodi odio ratione nesciunt\nvoluptate doloremque est\nnam autem error delectus	5	1
22	porro repellendus aut tempore quis hic	Khalil@emile.co.uk	qui ipsa animi nostrum praesentium voluptatibus odit\nqui non impedit cum qui nostrum aliquid fuga explicabo\nvoluptatem fugit earum voluptas exercitationem temporibus dignissimos distinctio\nesse inventore reprehenderit quidem ut incidunt nihil necessitatibus rerum	5	1
23	quis tempora quidem nihil iste	Sophia@arianna.co.uk	voluptates provident repellendus iusto perspiciatis ex fugiat ut\nut dolor nam aliquid et expedita voluptate\nsunt vitae illo rerum in quos\nvel eligendi enim quae fugiat est	5	1
24	in tempore eos beatae est	Jeffery@juwan.us	repudiandae repellat quia\nsequi est dolore explicabo nihil et\net sit et\net praesentium iste atque asperiores tenetur	5	1
25	autem ab ea sit alias hic provident sit	Isaias_Kuhic@jarrett.net	sunt aut quae laboriosam sit ut impedit\nadipisci harum laborum totam deleniti voluptas odit rem ea\nnon iure distinctio ut velit doloribus\net non ex	5	1
26	in deleniti sunt provident soluta ratione veniam quam praesentium	Russel.Parker@kameron.io	incidunt sapiente eaque dolor eos\nad est molestias\nquas sit et nihil exercitationem at cumque ullam\nnihil magnam et	6	1
27	doloribus quibusdam molestiae amet illum	Francesco.Gleason@nella.us	nisi vel quas ut laborum ratione\nrerum magni eum\nunde et voluptatem saepe\nvoluptas corporis modi amet ipsam eos saepe porro	6	1
28	quo voluptates voluptas nisi veritatis dignissimos dolores ut officiis	Ronny@rosina.org	voluptatem repellendus quo alias at laudantium\nmollitia quidem esse\ntemporibus consequuntur vitae rerum illum\nid corporis sit id	6	1
29	eum distinctio amet dolor	Jennings_Pouros@erica.biz	tempora voluptatem est\nmagnam distinctio autem est dolorem\net ipsa molestiae odit rerum itaque corporis nihil nam\neaque rerum error	6	1
30	quasi nulla ducimus facilis non voluptas aut	Lurline@marvin.biz	consequuntur quia voluptate assumenda et\nautem voluptatem reiciendis ipsum animi est provident\nearum aperiam sapiente ad vitae iste\naccusantium aperiam eius qui dolore voluptatem et	6	1
31	ex velit ut cum eius odio ad placeat	Buford@shaylee.biz	quia incidunt ut\naliquid est ut rerum deleniti iure est\nipsum quia ea sint et\nvoluptatem quaerat eaque repudiandae eveniet aut	7	1
32	dolorem architecto ut pariatur quae qui suscipit	Maria@laurel.name	nihil ea itaque libero illo\nofficiis quo quo dicta inventore consequatur voluptas voluptatem\ncorporis sed necessitatibus velit tempore\nrerum velit et temporibus	7	1
33	voluptatum totam vel voluptate omnis	Jaeden.Towne@arlene.tv	fugit harum quae vero\nlibero unde tempore\nsoluta eaque culpa sequi quibusdam nulla id\net et necessitatibus	7	1
34	omnis nemo sunt ab autem	Ethelyn.Schneider@emelia.co.uk	omnis temporibus quasi ab omnis\nfacilis et omnis illum quae quasi aut\nminus iure ex rem ut reprehenderit\nin non fugit	7	1
35	repellendus sapiente omnis praesentium aliquam ipsum id molestiae omnis	Georgianna@florence.io	dolor mollitia quidem facere et\nvel est ut\nut repudiandae est quidem dolorem sed atque\nrem quia aut adipisci sunt	7	1
36	sit et quis	Raheem_Heaney@gretchen.biz	aut vero est\ndolor non aut excepturi dignissimos illo nisi aut quas\naut magni quia nostrum provident magnam quas modi maxime\nvoluptatem et molestiae	8	1
37	beatae veniam nemo rerum voluptate quam aspernatur	Jacky@victoria.net	qui rem amet aut\ncumque maiores earum ut quia sit nam esse qui\niusto aspernatur quis voluptas\ndolorem distinctio ex temporibus rem	8	1
38	maiores dolores expedita	Piper@linwood.us	unde voluptatem qui dicta\nvel ad aut eos error consequatur voluptatem\nadipisci doloribus qui est sit aut\nvelit aut et ea ratione eveniet iure fuga	8	1
39	necessitatibus ratione aut ut delectus quae ut	Gaylord@russell.net	atque consequatur dolorem sunt\nadipisci autem et\nvoluptatibus et quae necessitatibus rerum eaque aperiam nostrum nemo\neligendi sed et beatae et inventore	8	1
40	non minima omnis deleniti pariatur facere quibusdam at	Clare.Aufderhar@nicole.ca	quod minus alias quos\nperferendis labore molestias quae ut ut corporis deserunt vitae\net quaerat ut et ullam unde asperiores\ncum voluptatem cumque	8	1
41	voluptas deleniti ut	Lucio@gladys.tv	facere repudiandae vitae ea aut sed quo ut et\nfacere nihil ut voluptates in\nsaepe cupiditate accusantium numquam dolores\ninventore sint mollitia provident	9	1
42	nam qui et	Shemar@ewell.name	aut culpa quaerat veritatis eos debitis\naut repellat eius explicabo et\nofficiis quo sint at magni ratione et iure\nincidunt quo sequi quia dolorum beatae qui	9	1
43	molestias sint est voluptatem modi	Jackeline@eva.tv	voluptatem ut possimus laborum quae ut commodi delectus\nin et consequatur\nin voluptas beatae molestiae\nest rerum laborum et et velit sint ipsum dolorem	9	1
44	hic molestiae et fuga ea maxime quod	Marianna_Wilkinson@rupert.io	qui sunt commodi\nsint vel optio vitae quis qui non distinctio\nid quasi modi dicta\neos nihil sit inventore est numquam officiis	9	1
45	autem illo facilis	Marcia@name.biz	ipsum odio harum voluptatem sunt cumque et dolores\nnihil laboriosam neque commodi qui est\nquos numquam voluptatum\ncorporis quo in vitae similique cumque tempore	9	1
46	dignissimos et deleniti voluptate et quod	Jeremy.Harann@waino.me	exercitationem et id quae cum omnis\nvoluptatibus accusantium et quidem\nut ipsam sint\ndoloremque illo ex atque necessitatibus sed	10	1
47	rerum commodi est non dolor nesciunt ut	Pearlie.Kling@sandy.com	occaecati laudantium ratione non cumque\nearum quod non enim soluta nisi velit similique voluptatibus\nesse laudantium consequatur voluptatem rem eaque voluptatem aut ut\net sit quam	10	1
48	consequatur animi dolorem saepe repellendus ut quo aut tenetur	Manuela_Stehr@chelsie.tv	illum et alias quidem magni voluptatum\nab soluta ea qui saepe corrupti hic et\ncum repellat esse\nest sint vel veritatis officia consequuntur cum	10	1
49	rerum placeat quae minus iusto eligendi	Camryn.Weimann@doris.io	id est iure occaecati quam similique enim\nab repudiandae non\nillum expedita quam excepturi soluta qui placeat\nperspiciatis optio maiores non doloremque aut iusto sapiente	10	1
50	dolorum soluta quidem ex quae occaecati dicta aut doloribus	Kiana_Predovic@yasmin.io	eum accusamus aut delectus\narchitecto blanditiis quia sunt\nrerum harum sit quos quia aspernatur vel corrupti inventore\nanimi dicta vel corporis	10	1
51	molestias et odio ut commodi omnis ex	Laurie@lincoln.us	perferendis omnis esse\nvoluptate sit mollitia sed perferendis\nnemo nostrum qui\nvel quis nisi doloribus animi odio id quas	11	1
52	esse autem dolorum	Abigail.OConnell@june.org	et enim voluptatem totam laudantium\nimpedit nam labore repellendus enim earum aut\nconsectetur mollitia fugit qui repellat expedita sunt\naut fugiat vel illo quos aspernatur ducimus	11	1
53	maiores alias necessitatibus aut non	Laverne_Price@scotty.info	a at tempore\nmolestiae odit qui dolores molestias dolorem et\nlaboriosam repudiandae placeat quisquam\nautem aperiam consectetur maiores laboriosam nostrum	11	1
54	culpa eius tempora sit consequatur neque iure deserunt	Kenton_Vandervort@friedrich.com	et ipsa rem ullam cum pariatur similique quia\ncum ipsam est sed aut inventore\nprovident sequi commodi enim inventore assumenda aut aut\ntempora possimus soluta quia consequatur modi illo	11	1
55	quas pariatur quia a doloribus	Hayden_Olson@marianna.me	perferendis eaque labore laudantium ut molestiae soluta et\nvero odio non corrupti error pariatur consectetur et\nenim nam quia voluptatum non\nmollitia culpa facere voluptas suscipit veniam	11	1
56	et dolorem corrupti sed molestias	Vince_Crist@heidi.biz	cum esse odio nihil reiciendis illum quaerat\nest facere quia\noccaecati sit totam fugiat in beatae\nut occaecati unde vitae nihil quidem consequatur	12	1
57	qui quidem sed	Darron.Nikolaus@eulah.me	dolorem facere itaque fuga odit autem\nperferendis quisquam quis corrupti eius dicta\nrepudiandae error esse itaque aut\ncorrupti sint consequatur aliquid	12	1
58	sint minus reiciendis qui perspiciatis id	Ezra_Abshire@lyda.us	veritatis qui nihil\nquia reprehenderit non ullam ea iusto\nconsectetur nam voluptas ut temporibus tempore provident error\neos et nisi et voluptate	12	1
59	quis ducimus distinctio similique et illum minima ab libero	Jameson@tony.info	cumque molestiae officia aut fugiat nemo autem\nvero alias atque sed qui ratione quia\nrepellat vel earum\nea laudantium mollitia	12	1
60	expedita libero quos cum commodi ad	Americo@estrella.net	error eum quia voluptates alias repudiandae\naccusantium veritatis maiores assumenda\nquod impedit animi tempore veritatis\nanimi et et officiis labore impedit blanditiis repudiandae	12	1
61	quidem itaque dolores quod laborum aliquid molestiae	Aurelio.Pfeffer@griffin.ca	deserunt cumque laudantium\net et odit quia sint quia quidem\nquibusdam debitis fuga in tempora deleniti\nimpedit consequatur veniam reiciendis autem porro minima	13	1
62	libero beatae consequuntur optio est hic	Vesta_Crooks@dora.us	tempore dolorum corrupti facilis\npraesentium sunt iste recusandae\nunde quisquam similique\nalias consequuntur voluptates velit	13	1
63	occaecati dolor accusantium et quasi architecto aut eveniet fugiat	Margarett_Klein@mike.biz	aut eligendi et molestiae voluptatum tempora\nofficia nihil sit voluptatem aut deleniti\nquaerat consequatur eaque\nsapiente tempore commodi tenetur rerum qui quo	13	1
64	consequatur aut ullam voluptas dolorum voluptatum sequi et	Freida@brandt.tv	sed illum quis\nut aut culpa labore aspernatur illo\ndolorem quia vitae ut aut quo repellendus est omnis\nesse at est debitis	13	1
65	earum ea ratione numquam	Mollie@agustina.name	qui debitis vitae ratione\ntempora impedit aperiam porro molestiae placeat vero laboriosam recusandae\npraesentium consequatur facere et itaque quidem eveniet\nmagnam natus distinctio sapiente	13	1
66	eius nam consequuntur	Janice@alda.io	necessitatibus libero occaecati\nvero inventore iste assumenda veritatis\nasperiores non sit et quia omnis facere nemo explicabo\nodit quo nobis porro	14	1
67	omnis consequatur natus distinctio	Dashawn@garry.com	nulla quo itaque beatae ad\nofficiis animi aut exercitationem voluptatum dolorem doloremque ducimus in\nrecusandae officia consequuntur quas\naspernatur dolores est esse dolores sit illo laboriosam quaerat	14	1
68	architecto ut deserunt consequatur cumque sapiente	Devan.Nader@ettie.me	sed magni accusantium numquam quidem omnis et voluptatem beatae\nquos fugit libero\nvel ipsa et nihil recusandae ea\niste nemo qui optio sit enim ut nostrum odit	14	1
69	at aut ea iure accusantium voluptatum nihil ipsum	Joana.Schoen@leora.co.uk	omnis dolor autem qui est natus\nautem animi nemo voluptatum aut natus accusantium iure\ninventore sunt ea tenetur commodi suscipit facere architecto consequatur\ndolorem nihil veritatis consequuntur corporis	14	1
70	eum magni accusantium labore aut cum et tenetur	Minerva.Anderson@devonte.ca	omnis aliquam praesentium ad voluptatem harum aperiam dolor autem\nhic asperiores quisquam ipsa necessitatibus suscipit\npraesentium rem deserunt et\nfacere repellendus aut sed fugit qui est	14	1
71	vel pariatur perferendis vero ab aut voluptates labore	Lavinia@lafayette.me	mollitia magnam et\nipsum consequatur est expedita\naut rem ut ex doloremque est vitae est\ncumque velit recusandae numquam libero dolor fuga fugit a	15	1
72	quia sunt dolor dolor suscipit expedita quis	Sabrina.Marks@savanah.name	quisquam voluptas ut\npariatur eos amet non\nreprehenderit voluptates numquam\nin est voluptatem dicta ipsa qui esse enim	15	1
73	ut quia ipsa repellat sunt et sequi aut est	Desmond_Graham@kailee.biz	nam qui possimus deserunt\ninventore dignissimos nihil rerum ut consequatur vel architecto\ntenetur recusandae voluptate\nnumquam dignissimos aliquid ut reprehenderit voluptatibus	15	1
74	ut non illum pariatur dolor	Gussie_Kunde@sharon.biz	non accusamus eum aut et est\naccusantium animi nesciunt distinctio ea quas quisquam\nsit ut voluptatem modi natus sint\nfacilis est qui molestias recusandae nemo	15	1
75	minus laboriosam consequuntur	Richard@chelsie.co.uk	natus numquam enim asperiores doloremque ullam et\nest molestias doloribus cupiditate labore vitae aut voluptatem\nitaque quos quo consectetur nihil illum veniam\nnostrum voluptatum repudiandae ut	15	1
76	porro ut soluta repellendus similique	Gage_Turner@halle.name	sunt qui consequatur similique recusandae repellendus voluptates eos et\nvero nostrum fugit magnam aliquam\nreprehenderit nobis voluptatem eos consectetur possimus\net perferendis qui ea fugiat sit doloremque	16	1
77	dolores et quo omnis voluptates	Alfred@sadye.biz	eos ullam dolorem impedit labore mollitia\nrerum non dolores\nmolestiae dignissimos qui maxime sed voluptate consequatur\ndoloremque praesentium magnam odio iste quae totam aut	16	1
78	voluptas voluptas voluptatibus blanditiis	Catharine@jordyn.com	qui adipisci eveniet excepturi iusto magni et\nenim ducimus asperiores blanditiis nemo\ncommodi nihil ex\nenim rerum vel nobis nostrum et non	16	1
79	beatae ut ad quisquam sed repellendus et	Esther_Ratke@shayna.biz	et inventore sapiente sed\nsunt similique fugiat officia velit doloremque illo eligendi quas\nsed rerum in quidem perferendis facere molestias\ndolore dolor voluptas nam vel quia	16	1
80	et cumque ad culpa ut eligendi non	Evangeline@chad.net	dignissimos itaque ab et tempore odio omnis voluptatem\nitaque perferendis rem repellendus tenetur nesciunt velit\nqui cupiditate recusandae\nquis debitis dolores aliquam nam	16	1
81	aut non consequuntur dignissimos voluptatibus dolorem earum recusandae dolorem	Newton.Kertzmann@anjali.io	illum et voluptatem quis repellendus quidem repellat\nreprehenderit voluptas consequatur mollitia\npraesentium nisi quo quod et\noccaecati repellendus illo eius harum explicabo doloribus officia	17	1
82	ea est non dolorum iste nihil est	Caleb_Herzog@rosamond.net	officiis dolorem voluptas aliquid eveniet tempora qui\nea temporibus labore accusamus sint\nut sunt necessitatibus voluptatum animi cumque\nat reiciendis voluptatem iure aliquid et qui dolores et	17	1
83	nihil qui accusamus ratione et molestias et minus	Sage_Mueller@candace.net	et consequatur voluptates magnam fugit sunt repellendus nihil earum\nofficiis aut cupiditate\net distinctio laboriosam\nmolestiae sunt dolor explicabo recusandae	17	1
84	quia voluptatibus magnam voluptatem optio vel perspiciatis	Bernie.Bergnaum@lue.com	ratione ut magni voluptas\nexplicabo natus quia consequatur nostrum aut\nomnis enim in qui illum\naut atque laboriosam aliquid blanditiis quisquam et laborum	17	1
85	non voluptas cum est quis aut consectetur nam	Alexzander_Davis@eduardo.name	quisquam incidunt dolores sint qui doloribus provident\nvel cupiditate deleniti alias voluptatem placeat ad\nut dolorem illum unde iure quis libero neque\nea et distinctio id	17	1
86	suscipit est sunt vel illum sint	Jacquelyn@krista.info	eum culpa debitis sint\neaque quia magni laudantium qui neque voluptas\nvoluptatem qui molestiae vel earum est ratione excepturi\nsit aut explicabo et repudiandae ut perspiciatis	18	1
87	dolor asperiores autem et omnis quasi nobis	Grover_Volkman@coty.tv	assumenda corporis architecto repudiandae omnis qui et odit\nperferendis velit enim\net quia reiciendis sint\nquia voluptas quam deserunt facilis harum eligendi	18	1
88	officiis aperiam odit sint est non	Jovanny@abigale.ca	laudantium corrupti atque exercitationem quae enim et veniam dicta\nautem perspiciatis sit dolores\nminima consectetur tenetur iste facere\namet est neque	18	1
89	in voluptatum nostrum voluptas iure nisi rerum est placeat	Isac_Schmeler@barton.com	quibusdam rerum quia nostrum culpa\nculpa est natus impedit quo rem voluptate quos\nrerum culpa aut ut consectetur\nsunt esse laudantium voluptatibus cupiditate rerum	18	1
90	eum voluptas dolores molestias odio amet repellendus	Sandy.Erdman@sabina.info	vitae cupiditate excepturi eum veniam laudantium aspernatur blanditiis\naspernatur quia ut assumenda et magni enim magnam\nin voluptate tempora\nnon qui voluptatem reprehenderit porro qui voluptatibus	18	1
91	repellendus est laboriosam voluptas veritatis	Alexandro@garry.io	qui nisi at maxime deleniti quo\nex quas tenetur nam\ndeleniti aut asperiores deserunt cum ex eaque alias sit\net veniam ab consequatur molestiae	19	1
92	repellendus aspernatur occaecati tempore blanditiis deleniti omnis qui distinctio	Vickie_Schuster@harley.net	nihil necessitatibus omnis asperiores nobis praesentium quia\nab debitis quo deleniti aut sequi commodi\nut perspiciatis quod est magnam aliquam modi\neum quos aliquid ea est	19	1
93	mollitia dolor deleniti sed iure laudantium	Roma_Doyle@alia.com	ut quis et id repellat labore\nnobis itaque quae saepe est ullam aut\ndolor id ut quis\nsunt iure voluptates expedita voluptas doloribus modi saepe autem	19	1
94	vero repudiandae voluptatem nobis	Tatum_Marks@jaylon.name	reiciendis delectus nulla quae voluptas nihil provident quia\nab corporis nesciunt blanditiis quibusdam et unde et\nmagni eligendi aperiam corrupti perspiciatis quasi\nneque iure voluptatibus mollitia	19	1
95	voluptatem unde quos provident ad qui sit et excepturi	Juston.Ruecker@scot.tv	at ut tenetur rem\nut fuga quis ea magnam alias\naut tempore fugiat laboriosam porro quia iure qui\narchitecto est enim	19	1
96	non sit ad culpa quis	River.Grady@lavada.biz	eum itaque quam\nlaboriosam sequi ullam quos nobis\nomnis dignissimos nam dolores\nfacere id suscipit aliquid culpa rerum quis	20	1
97	reiciendis culpa omnis suscipit est	Claudia@emilia.ca	est ducimus voluptate saepe iusto repudiandae recusandae et\nsint fugit voluptas eum itaque\nodit ab eos voluptas molestiae necessitatibus earum possimus voluptatem\nquibusdam aut illo beatae qui delectus aut officia veritatis	20	1
98	praesentium dolorem ea voluptate et	Torrey@june.tv	ex et expedita cum voluptatem\nvoluptatem ab expedita quis nihil\nesse quo nihil perferendis dolores velit ut culpa aut\ndolor maxime necessitatibus voluptatem	20	1
99	laudantium delectus nam	Hildegard.Aufderhar@howard.com	aut quam consequatur sit et\nrepellat maiores laborum similique voluptatem necessitatibus nihil\net debitis nemo occaecati cupiditate\nmodi dolorum quia aut	20	1
100	et sint quia dolor et est ea nulla cum	Leone_Fay@orrin.com	architecto dolorem ab explicabo et provident et\net eos illo omnis mollitia ex aliquam\natque ut ipsum nulla nihil\nquis voluptas aut debitis facilis	20	1
\.


--
-- Data for Name: compagny; Type: TABLE DATA; Schema: public; Owner: alphacpc
--

COPY public.compagny (id_compagny, name_compagny, "catchPhrase", bs) FROM stdin;
1	Romaguera-Crona	Multi-layered client-server neural-net	harness real-time e-markets
2	Deckow-Crist	Proactive didactic contingency	synergize scalable supply-chains
\.


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: alphacpc
--

COPY public.photos (id_photos, title_photos, url, "thumbnailUrl", id_albums_photos, visible_photos) FROM stdin;
1	dolor delectus nemo quas nobis beatae omnis	https://via.placeholder.com/600/bcaaed	https://via.placeholder.com/150/bcaaed	3	1
2	id sint pariatur reiciendis soluta animi	https://via.placeholder.com/600/70c4ab	https://via.placeholder.com/150/70c4ab	3	1
3	officiis dolorum itaque sequi consequatur qui rerum soluta odit	https://via.placeholder.com/600/7b37f9	https://via.placeholder.com/150/7b37f9	3	1
4	nostrum accusamus quasi	https://via.placeholder.com/600/2502ff	https://via.placeholder.com/150/2502ff	3	1
5	in debitis qui aut	https://via.placeholder.com/600/ff5673	https://via.placeholder.com/150/ff5673	3	1
6	eaque provident rerum hic atque vel quod	https://via.placeholder.com/600/3502b5	https://via.placeholder.com/150/3502b5	3	1
7	vero minima et aperiam voluptatibus hic	https://via.placeholder.com/600/b89b82	https://via.placeholder.com/150/b89b82	3	1
8	quo et repellat	https://via.placeholder.com/600/8b78b	https://via.placeholder.com/150/8b78b	3	1
9	eligendi minus incidunt iusto soluta qui dolorem	https://via.placeholder.com/600/2ea836	https://via.placeholder.com/150/2ea836	3	1
10	eligendi enim cum quos et fuga	https://via.placeholder.com/600/5ada93	https://via.placeholder.com/150/5ada93	3	1
11	rem animi illo quam et doloremque quia non	https://via.placeholder.com/600/3d9ad0	https://via.placeholder.com/150/3d9ad0	3	1
12	rerum libero tempora atque magnam voluptas eveniet ut corporis	https://via.placeholder.com/600/7d924d	https://via.placeholder.com/150/7d924d	3	1
13	dolore natus nemo beatae iure inventore optio	https://via.placeholder.com/600/90362c	https://via.placeholder.com/150/90362c	3	1
14	cumque quibusdam sed magnam totam voluptatem vel	https://via.placeholder.com/600/3057d7	https://via.placeholder.com/150/3057d7	3	1
15	itaque excepturi et odio repudiandae	https://via.placeholder.com/600/36c4aa	https://via.placeholder.com/150/36c4aa	3	1
16	perspiciatis nostrum quia vel fugiat qui	https://via.placeholder.com/600/19f9f0	https://via.placeholder.com/150/19f9f0	3	1
17	quaerat nisi unde sit veritatis sed quia eius	https://via.placeholder.com/600/709e46	https://via.placeholder.com/150/709e46	3	1
18	nihil animi voluptates fuga	https://via.placeholder.com/600/61551b	https://via.placeholder.com/150/61551b	3	1
19	impedit autem aliquam nihil molestiae consequatur repellendus	https://via.placeholder.com/600/8304cb	https://via.placeholder.com/150/8304cb	3	1
20	dignissimos similique ducimus deleniti accusantium quam ea suscipit	https://via.placeholder.com/600/2c3fab	https://via.placeholder.com/150/2c3fab	3	1
21	non explicabo quas quidem tempore aspernatur	https://via.placeholder.com/600/dcd89a	https://via.placeholder.com/150/dcd89a	3	1
22	quis accusantium eveniet aliquid fugiat aut laboriosam	https://via.placeholder.com/600/6f162	https://via.placeholder.com/150/6f162	3	1
23	nostrum vero cum et qui	https://via.placeholder.com/600/4a1e15	https://via.placeholder.com/150/4a1e15	3	1
24	et reiciendis sunt occaecati aut autem	https://via.placeholder.com/600/e83639	https://via.placeholder.com/150/e83639	3	1
25	at sit hic nulla aspernatur enim est accusantium quasi	https://via.placeholder.com/600/e30344	https://via.placeholder.com/150/e30344	3	1
26	expedita et maiores quod distinctio	https://via.placeholder.com/600/a7751d	https://via.placeholder.com/150/a7751d	3	1
27	cum suscipit perspiciatis sequi nobis	https://via.placeholder.com/600/9b9cc4	https://via.placeholder.com/150/9b9cc4	3	1
28	architecto ducimus quis ea	https://via.placeholder.com/600/e0c586	https://via.placeholder.com/150/e0c586	3	1
29	est quae quasi sunt voluptas	https://via.placeholder.com/600/ebfe6e	https://via.placeholder.com/150/ebfe6e	3	1
30	doloribus quasi ullam	https://via.placeholder.com/600/f7d7d	https://via.placeholder.com/150/f7d7d	3	1
31	omnis est eum	https://via.placeholder.com/600/805151	https://via.placeholder.com/150/805151	3	1
32	iste saepe laborum vel	https://via.placeholder.com/600/8403fd	https://via.placeholder.com/150/8403fd	3	1
33	quis delectus neque fugit distinctio esse aut deserunt ab	https://via.placeholder.com/600/f5057a	https://via.placeholder.com/150/f5057a	3	1
34	velit eaque qui	https://via.placeholder.com/600/e3d09a	https://via.placeholder.com/150/e3d09a	3	1
35	est culpa similique sint tempora qui	https://via.placeholder.com/600/178216	https://via.placeholder.com/150/178216	3	1
36	nihil eaque deleniti sapiente nam	https://via.placeholder.com/600/2c2bbe	https://via.placeholder.com/150/2c2bbe	3	1
37	voluptatibus mollitia quo possimus occaecati	https://via.placeholder.com/600/76eef5	https://via.placeholder.com/150/76eef5	3	1
38	reprehenderit sed possimus unde	https://via.placeholder.com/600/584605	https://via.placeholder.com/150/584605	3	1
39	mollitia rem deserunt voluptatem libero	https://via.placeholder.com/600/43f68	https://via.placeholder.com/150/43f68	3	1
40	id eius modi quo ut sunt	https://via.placeholder.com/600/6ea357	https://via.placeholder.com/150/6ea357	3	1
41	quis ut praesentium quo earum	https://via.placeholder.com/600/83b5f9	https://via.placeholder.com/150/83b5f9	3	1
42	ad et ratione numquam	https://via.placeholder.com/600/a8d601	https://via.placeholder.com/150/a8d601	3	1
43	adipisci voluptatem quis voluptate esse	https://via.placeholder.com/600/4b3513	https://via.placeholder.com/150/4b3513	3	1
44	sequi praesentium expedita rerum voluptatem	https://via.placeholder.com/600/d7e96a	https://via.placeholder.com/150/d7e96a	3	1
45	deserunt sed voluptatem autem	https://via.placeholder.com/600/c07031	https://via.placeholder.com/150/c07031	3	1
46	tenetur ut aliquam qui ut dolorem sed amet ratione	https://via.placeholder.com/600/4137b3	https://via.placeholder.com/150/4137b3	3	1
47	quo ducimus iste fuga delectus tenetur inventore	https://via.placeholder.com/600/4b2c4b	https://via.placeholder.com/150/4b2c4b	3	1
48	totam voluptas pariatur aliquid vel ut accusamus vitae	https://via.placeholder.com/600/ec781f	https://via.placeholder.com/150/ec781f	3	1
49	laboriosam quibusdam tempora sunt magni placeat ea laborum nobis	https://via.placeholder.com/600/f55ad5	https://via.placeholder.com/150/f55ad5	3	1
50	odio velit facilis voluptates nemo occaecati expedita eum	https://via.placeholder.com/600/4ff892	https://via.placeholder.com/150/4ff892	3	1
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: alphacpc
--

COPY public.posts (id_posts, title_posts, body_posts, id_users_posts, visible_posts) FROM stdin;
1	sunt aut facere repellat provident occaecati excepturi optio reprehenderit	quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto	1	1
2	qui est esse	est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla	1	1
3	ea molestias quasi exercitationem repellat qui ipsa sit aut	et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut	1	1
4	eum et est occaecati	ullam et saepe reiciendis voluptatem adipisci\nsit amet autem assumenda provident rerum culpa\nquis hic commodi nesciunt rem tenetur doloremque ipsam iure\nquis sunt voluptatem rerum illo velit	1	1
5	nesciunt quas odio	repudiandae veniam quaerat sunt sed\nalias aut fugiat sit autem sed est\nvoluptatem omnis possimus esse voluptatibus quis\nest aut tenetur dolor neque	1	1
6	dolorem eum magni eos aperiam quia	ut aspernatur corporis harum nihil quis provident sequi\nmollitia nobis aliquid molestiae\nperspiciatis et ea nemo ab reprehenderit accusantium quas\nvoluptate dolores velit et doloremque molestiae	1	1
7	magnam facilis autem	dolore placeat quibusdam ea quo vitae\nmagni quis enim qui quis quo nemo aut saepe\nquidem repellat excepturi ut quia\nsunt ut sequi eos ea sed quas	1	1
8	dolorem dolore est ipsam	dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint suscipit qui sint possimus cum\nquaerat magni maiores excepturi\nipsam ut commodi dolor voluptatum modi aut vitae	1	1
9	nesciunt iure omnis dolorem tempora et accusantium	consectetur animi nesciunt iure dolore\nenim quia ad\nveniam autem ut quam aut nobis\net est aut quod aut provident voluptas autem voluptas	1	1
10	optio molestias id quia eum	quo et expedita modi cum officia vel magni\ndoloribus qui repudiandae\nvero nisi sit\nquos veniam quod sed accusamus veritatis error	1	1
11	et ea vero quia laudantium autem	delectus reiciendis molestiae occaecati non minima eveniet qui voluptatibus\naccusamus in eum beatae sit\nvel qui neque voluptates ut commodi qui incidunt\nut animi commodi	2	1
12	in quibusdam tempore odit est dolorem	itaque id aut magnam\npraesentium quia et ea odit et ea voluptas et\nsapiente quia nihil amet occaecati quia id voluptatem\nincidunt ea est distinctio odio	2	1
13	dolorum ut in voluptas mollitia et saepe quo animi	aut dicta possimus sint mollitia voluptas commodi quo doloremque\niste corrupti reiciendis voluptatem eius rerum\nsit cumque quod eligendi laborum minima\nperferendis recusandae assumenda consectetur porro architecto ipsum ipsam	2	1
14	voluptatem eligendi optio	fuga et accusamus dolorum perferendis illo voluptas\nnon doloremque neque facere\nad qui dolorum molestiae beatae\nsed aut voluptas totam sit illum	2	1
15	eveniet quod temporibus	reprehenderit quos placeat\nvelit minima officia dolores impedit repudiandae molestiae nam\nvoluptas recusandae quis delectus\nofficiis harum fugiat vitae	2	1
16	sint suscipit perspiciatis velit dolorum rerum ipsa laboriosam odio	suscipit nam nisi quo aperiam aut\nasperiores eos fugit maiores voluptatibus quia\nvoluptatem quis ullam qui in alias quia est\nconsequatur magni mollitia accusamus ea nisi voluptate dicta	2	1
17	fugit voluptas sed molestias voluptatem provident	eos voluptas et aut odit natus earum\naspernatur fuga molestiae ullam\ndeserunt ratione qui eos\nqui nihil ratione nemo velit ut aut id quo	2	1
18	voluptate et itaque vero tempora molestiae	eveniet quo quis\nlaborum totam consequatur non dolor\nut et est repudiandae\nest voluptatem vel debitis et magnam	2	1
19	adipisci placeat illum aut reiciendis qui	illum quis cupiditate provident sit magnam\nea sed aut omnis\nveniam maiores ullam consequatur atque\nadipisci quo iste expedita sit quos voluptas	2	1
20	doloribus ad provident suscipit at	qui consequuntur ducimus possimus quisquam amet similique\nsuscipit porro ipsam amet\neos veritatis officiis exercitationem vel fugit aut necessitatibus totam\nomnis rerum consequatur expedita quidem cumque explicabo	2	1
\.


--
-- Data for Name: todos; Type: TABLE DATA; Schema: public; Owner: alphacpc
--

COPY public.todos (id_todos, title_todos, status, id_users_todos, visible_todos) FROM stdin;
1	suscipit repellat esse quibusdam voluptatem incidunt	1	2	1
2	distinctio vitae autem nihil ut molestias quo	3	2	1
3	et itaque necessitatibus maxime molestiae qui quas velit	1	2	1
4	adipisci non ad dicta qui amet quaerat doloribus ea	1	2	1
5	voluptas quo tenetur perspiciatis explicabo natus	3	2	1
6	aliquam aut quasi	3	2	1
7	veritatis pariatur delectus	3	2	1
8	nesciunt totam sit blanditiis sit	1	2	1
9	laborum aut in quam	1	2	1
10	nemo perspiciatis repellat ut dolor libero commodi blanditiis omnis	3	2	1
11	repudiandae totam in est sint facere fuga	1	2	1
12	earum doloribus ea doloremque quis	1	2	1
13	sint sit aut vero	1	2	1
14	porro aut necessitatibus eaque distinctio	1	2	1
15	repellendus veritatis molestias dicta incidunt	3	2	1
16	excepturi deleniti adipisci voluptatem et neque optio illum ad	3	2	1
17	sunt cum tempora	1	2	1
18	totam quia non	1	2	1
19	doloremque quibusdam asperiores libero corrupti illum qui omnis	1	2	1
20	totam atque quo nesciunt	3	2	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: alphacpc
--

COPY public.users (id_users, fullname, username, email, phone, website, password, origine, visible_users, id_adresse_users, id_company_users) FROM stdin;
1	Leanne Graham	Bret	Sincere@april.biz	1-770-736-8031 	hildegard.org	passer	1	1	1	1
2	Ervin Howell	Antonette	Shanna@melissa.tv	010-692-6593 	anastasia.net	passer	1	1	2	2
\.


--
-- Data for Name: utilisateur; Type: TABLE DATA; Schema: public; Owner: alphacpc
--

COPY public.utilisateur (id_utilisateur, email, password, profile) FROM stdin;
\.


--
-- Name: adresses_id_adresse_seq; Type: SEQUENCE SET; Schema: public; Owner: alphacpc
--

SELECT pg_catalog.setval('public.adresses_id_adresse_seq', 2, true);


--
-- Name: albums_id_albums_seq; Type: SEQUENCE SET; Schema: public; Owner: alphacpc
--

SELECT pg_catalog.setval('public.albums_id_albums_seq', 10, true);


--
-- Name: comments_id_comments_seq; Type: SEQUENCE SET; Schema: public; Owner: alphacpc
--

SELECT pg_catalog.setval('public.comments_id_comments_seq', 100, true);


--
-- Name: compagny_id_compagny_seq; Type: SEQUENCE SET; Schema: public; Owner: alphacpc
--

SELECT pg_catalog.setval('public.compagny_id_compagny_seq', 2, true);


--
-- Name: photos_id_photos_seq; Type: SEQUENCE SET; Schema: public; Owner: alphacpc
--

SELECT pg_catalog.setval('public.photos_id_photos_seq', 50, true);


--
-- Name: posts_id_posts_seq; Type: SEQUENCE SET; Schema: public; Owner: alphacpc
--

SELECT pg_catalog.setval('public.posts_id_posts_seq', 20, true);


--
-- Name: todos_id_todos_seq; Type: SEQUENCE SET; Schema: public; Owner: alphacpc
--

SELECT pg_catalog.setval('public.todos_id_todos_seq', 20, true);


--
-- Name: users_id_users_seq; Type: SEQUENCE SET; Schema: public; Owner: alphacpc
--

SELECT pg_catalog.setval('public.users_id_users_seq', 2, true);


--
-- Name: utilisateur_id_utilisateur_seq; Type: SEQUENCE SET; Schema: public; Owner: alphacpc
--

SELECT pg_catalog.setval('public.utilisateur_id_utilisateur_seq', 1, false);


--
-- Name: adresses adresses_pkey; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.adresses
    ADD CONSTRAINT adresses_pkey PRIMARY KEY (id_adresse);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id_albums);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id_comments);


--
-- Name: compagny compagny_name_compagny_key; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.compagny
    ADD CONSTRAINT compagny_name_compagny_key UNIQUE (name_compagny);


--
-- Name: compagny compagny_pkey; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.compagny
    ADD CONSTRAINT compagny_pkey PRIMARY KEY (id_compagny);


--
-- Name: photos photos_pkey; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id_photos);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id_posts);


--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id_todos);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_users);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: utilisateur utilisateur_email_key; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_email_key UNIQUE (email);


--
-- Name: utilisateur utilisateur_pkey; Type: CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pkey PRIMARY KEY (id_utilisateur);


--
-- Name: albums albums_id_users_albums_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_id_users_albums_fkey FOREIGN KEY (id_users_albums) REFERENCES public.users(id_users);


--
-- Name: comments comments_id_posts_comments_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_id_posts_comments_fkey FOREIGN KEY (id_posts_comments) REFERENCES public.posts(id_posts);


--
-- Name: photos photos_id_albums_photos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_id_albums_photos_fkey FOREIGN KEY (id_albums_photos) REFERENCES public.albums(id_albums);


--
-- Name: posts posts_id_users_posts_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_id_users_posts_fkey FOREIGN KEY (id_users_posts) REFERENCES public.users(id_users);


--
-- Name: todos todos_id_users_todos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_id_users_todos_fkey FOREIGN KEY (id_users_todos) REFERENCES public.users(id_users);


--
-- Name: users users_id_adresse_users_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_adresse_users_fkey FOREIGN KEY (id_adresse_users) REFERENCES public.adresses(id_adresse);


--
-- Name: users users_id_company_users_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alphacpc
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_company_users_fkey FOREIGN KEY (id_company_users) REFERENCES public.compagny(id_compagny);


--
-- PostgreSQL database dump complete
--

