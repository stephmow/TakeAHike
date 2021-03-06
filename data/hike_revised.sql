--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: bookmarks; Type: TABLE; Schema: public; Owner: stephaniemow
--

CREATE TABLE public.bookmarks (
    bookmark_id integer NOT NULL,
    hike_id integer,
    user_id integer,
    is_completed boolean
);


ALTER TABLE public.bookmarks OWNER TO stephaniemow;

--
-- Name: bookmarks_bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: stephaniemow
--

CREATE SEQUENCE public.bookmarks_bookmark_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bookmarks_bookmark_id_seq OWNER TO stephaniemow;

--
-- Name: bookmarks_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stephaniemow
--

ALTER SEQUENCE public.bookmarks_bookmark_id_seq OWNED BY public.bookmarks.bookmark_id;


--
-- Name: hikes; Type: TABLE; Schema: public; Owner: stephaniemow
--

CREATE TABLE public.hikes (
    hike_id integer NOT NULL,
    rating_id integer,
    location_id character varying,
    city character varying,
    latitude character varying,
    longitude character varying,
    zipcode character varying,
    name character varying,
    hike_length double precision,
    average_rating double precision,
    difficulty integer,
    route_type character varying,
    activities character varying,
    dog_friendly boolean
);


ALTER TABLE public.hikes OWNER TO stephaniemow;

--
-- Name: hikes_hike_id_seq; Type: SEQUENCE; Schema: public; Owner: stephaniemow
--

CREATE SEQUENCE public.hikes_hike_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hikes_hike_id_seq OWNER TO stephaniemow;

--
-- Name: hikes_hike_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stephaniemow
--

ALTER SEQUENCE public.hikes_hike_id_seq OWNED BY public.hikes.hike_id;


--
-- Name: ratings; Type: TABLE; Schema: public; Owner: stephaniemow
--

CREATE TABLE public.ratings (
    rating_id integer NOT NULL,
    rating integer,
    hike_id integer,
    user_id integer,
    comments character varying(300)
);


ALTER TABLE public.ratings OWNER TO stephaniemow;

--
-- Name: ratings_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: stephaniemow
--

CREATE SEQUENCE public.ratings_rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_rating_id_seq OWNER TO stephaniemow;

--
-- Name: ratings_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stephaniemow
--

ALTER SEQUENCE public.ratings_rating_id_seq OWNED BY public.ratings.rating_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: stephaniemow
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    email character varying,
    password character varying
);


ALTER TABLE public.users OWNER TO stephaniemow;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: stephaniemow
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO stephaniemow;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stephaniemow
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: bookmarks bookmark_id; Type: DEFAULT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.bookmarks ALTER COLUMN bookmark_id SET DEFAULT nextval('public.bookmarks_bookmark_id_seq'::regclass);


--
-- Name: hikes hike_id; Type: DEFAULT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.hikes ALTER COLUMN hike_id SET DEFAULT nextval('public.hikes_hike_id_seq'::regclass);


--
-- Name: ratings rating_id; Type: DEFAULT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.ratings ALTER COLUMN rating_id SET DEFAULT nextval('public.ratings_rating_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: bookmarks; Type: TABLE DATA; Schema: public; Owner: stephaniemow
--

COPY public.bookmarks (bookmark_id, hike_id, user_id, is_completed) FROM stdin;
\.


--
-- Data for Name: hikes; Type: TABLE DATA; Schema: public; Owner: stephaniemow
--

COPY public.hikes (hike_id, rating_id, location_id, city, latitude, longitude, zipcode, name, hike_length, average_rating, difficulty, route_type, activities, dog_friendly) FROM stdin;
1	\N	\N	Seward	60.18852	-149.63156	99664	Harding Ice Field Trail	15610.598	5	5	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2	\N	\N	Denali National Park	63.73049	-148.91968	99755	Mount Healy Overlook Trail	6920.162	4.5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
3	\N	\N	Seward	60.18879	-149.631	99664	Exit Glacier Trail	2896.812	4.5	1	out and back	['hiking', 'walking']	\N
4	\N	\N	Denali National Park	63.73661	-148.915	99743	Horseshoe Lake Trail	3379.614	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
5	\N	\N	Denali National Park	63.73319	-148.89682	99755	Triple Lakes Trail	29772.79	4.5	5	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'trail-running']	\N
6	\N	\N	Denali National Park	63.80507	-148.95336	99743	Bison Gulch	11265.38	4.5	5	out and back	['hiking', 'nature-trips']	\N
7	\N	\N	Denali National Park	63.73056	-148.91955	99743	Rock Creek Trail	7081.096	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
8	\N	\N	Denali National Park	63.73043	-148.91922	99755	Taiga Trail	2574.944	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
9	\N	\N	Denali National Park	63.73324	-148.89659	99755	McKinley Station Trail	4667.086	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
10	\N	\N	Cantwell	63.43108	-150.31096	99743	Mount Thorofare Ridge Loop	6598.294	4.5	5	loop	['hiking']	\N
11	\N	\N	Denali National Park	63.45799	-150.85	99743	McKinley Bar Trail	7402.964	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
12	\N	\N	Denali National Park	63.73128	-148.9171	99743	Tiaga Loop and Horseshoe Lake Trail to Beaver Dam	4828.02	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
13	\N	\N	Denali National Park	63.49541	-150.88137	99743	Blueberry Hill Trail	1448.406	4.5	3	out and back	['hiking']	\N
14	\N	\N	Healy	63.88374	-149.26764	99743	Stampede Trail to Sushana River	61476.788	4.5	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
15	\N	\N	Gustavus	58.45462	-135.88312	99826	Bartlett Cove Forest Loop Trail	1770.274	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking', 'sea-kayaking']	\N
16	\N	\N	Denali National Park	63.52451	-150.96072	99743	Camp Ridge Trail	6759.228	5	5	out and back	['hiking', 'trail-running']	\N
17	\N	\N	Denali National Park	63.73334	-148.89618	99755	Jonesville Trail	1448.406	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
18	\N	\N	Denali National Park	63.73034	-148.91945	99755	Roadside Trail	5471.756	4	1	out and back	['hiking', 'trail-running']	\N
19	\N	\N	Denali National Park	63.52444	-150.96015	99743	Quigley Ridge Trail	14644.994	4.5	3	out and back	['hiking', 'trail-running', 'canoeing']	\N
20	\N	\N	Denali National Park	63.80495	-148.95416	99755	Bison Gulch to Denali Visitors Center	15771.532	5	5	point to point	['hiking', 'nature-trips']	\N
21	\N	\N	King Salmon	58.55986	-155.77752	\N	Brooks Falls	4667.086	4.5	1	out and back	['hiking', 'walking']	\N
22	\N	\N	Gustavus	58.4543	-135.86902	99826	Bartlett River Trail	11104.446	3	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
23	\N	\N	Denali National Park	63.7315	-148.91785	99755	McKinley Station and Morino Loop Trail	1448.406	3	3	loop	['hiking', 'nature-trips', 'walking']	\N
24	\N	\N	Kodiak	58.55626	-155.77832	\N	Dumpling Mountain	4828.02	4	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
25	\N	\N	Denali National Park	63.73136	-148.91762	99743	Spruce Tree Trail	643.736	3	1	loop	['hiking', 'nature-trips', 'walking']	\N
26	\N	\N	Gustavus	58.46205	-135.77323	99826	Bartlet Lake Trail	9495.106	3.5	1	out and back	['hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
27	\N	\N	Denali National Park	63.52668	-150.96891	99743	Eldorado Creek Trail	13679.39	0	3	out and back	['backpacking', 'hiking']	\N
28	\N	\N	Gustavus	58.45442	-135.88565	99826	Tlingit Trail	1770.274	3.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
29	\N	\N	Gustavus	58.45379	-135.88686	99826	Point Gustavus	20116.75	4	3	out and back	['hiking', 'nature-trips', 'walking']	\N
30	\N	\N	Grand Canyon	36.05735	-112.14381	86023	Bright Angel Trail to Bright Angel Campground and River Trail	28485.318	5	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
31	\N	\N	Grand Canyon	36.05346	-112.08361	86023	South Kaibab Trail to Cedar Ridge	4988.954	5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
32	\N	\N	Grand Canyon	36.05701	-112.14414	86023	Three-Mile Resthouse via Bright Angel Trail	8690.436	4.5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
33	\N	\N	Grand Canyon	36.05344	-112.08364	86023	South Kaibab, Phantom Ranch, and Bright Angel Trail Loop 	26875.978	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
34	\N	\N	Grand Canyon	36.05309	-112.08387	86023	South Kaibab Trail to Ooh Aah Point	2896.812	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
35	\N	\N	Grand Canyon	36.05723	-112.14378	86023	Grand Canyon Rim Trail	8690.436	4.5	1	out and back	['walking']	\N
36	\N	\N	North Rim	36.21692	-112.05678	86052	Rim-to-Rim: North Kaibab to Grand Canyon Village	34761.744	5	5	point to point	['backpacking', 'camping', 'hiking', 'trail-running']	\N
37	\N	\N	Grand Canyon	36.03496	-112.06924	86023	Shoshone Point Trail	3379.614	5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
38	\N	\N	Grand Canyon	36.05681	-112.14201	86023	Plateau Point Trail via Bright Angel Trail	19633.948	5	5	out and back	['backpacking', 'hiking', 'nature-trips']	\N
39	\N	\N	Grand Canyon	36.05356	-112.08336	86023	South Kaibab Trail to Skeleton Point	8690.436	5	5	out and back	['hiking', 'trail-running', 'horseback-riding']	\N
40	\N	\N	Grand Canyon	36.05264	-112.08368	86023	Grand Canyon West Rim Trail	20599.552	4.5	1	point to point	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
41	\N	\N	Tucson	32.23512	-110.68683	85748	Bridal Wreath Falls Trail	9012.304	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
42	\N	\N	Grand Canyon	36.05706	-112.14428	86023	1.5 Mile Resthouse via Bright Angel Trail	4667.086	4.5	3	out and back	['hiking']	\N
43	\N	\N	North Rim	36.19703	-112.05258	86052	Bright Angel Point Trail	1448.406	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
44	\N	\N	Tucson	32.24669	-111.16708	85743	Wasson Peak Trail	12713.786	4.5	3	loop	['birding', 'hiking', 'nature-trips']	\N
45	\N	\N	Grand Canyon	36.05745	-112.14434	86023	Indian Garden via Bright Angel Trail	13196.588	5	5	out and back	['backpacking', 'camping', 'hiking']	\N
46	\N	\N	Holbrook	34.93947	-109.75639	86502	Blue Mesa Trail	1448.406	4.5	1	loop	['hiking', 'walking']	\N
47	\N	\N	Tucson	32.24717	-111.16717	85743	King Canyon Trail to Wasson Peak	11426.314	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
48	\N	\N	Grand Canyon	35.99805	-111.98775	86023	Grandview Trail Loop	18668.344	5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
49	\N	\N	Grand Canyon	36.06193	-112.21112	86023	Hermit Trail	24783.836	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
50	\N	\N	Grand Canyon	35.99809	-111.98778	86023	Grandview Point to Horseshoe Mesa Trail	8851.37	5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
51	\N	\N	North Rim	36.21687	-112.05678	86052	North Kaibab Trail to Roaring Springs	13518.456	4.5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
52	\N	\N	Tucson	32.28866	-111.12114	85745	Wasson Peak via Sweetwater Trail	14966.862	4.5	5	out and back	['hiking', 'trail-running', 'walking']	\N
53	\N	\N	Tucson	32.23518	-110.68682	85748	Douglas Spring Trail	26715.044	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
54	\N	\N	Grand Canyon	36.05298	-112.0839	86023	South Kaibab Trail to Phantom Ranch	21565.156	5	5	out and back	['birding', 'hiking', 'nature-trips', 'horseback-riding']	\N
55	\N	\N	Grand Canyon	36.22375	-112.06506	86052	Widforss Trail	14644.994	4.5	3	out and back	['backpacking', 'hiking', 'trail-running']	\N
56	\N	\N	North Rim	36.19695	-112.05287	86052	Transept Trail	4667.086	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
57	\N	\N	Grand Canyon	36.06045	-112.10861	86023	Yavapai Point via Rim Trail	2574.944	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
58	\N	\N	Grand Canyon	36.05742	-112.14421	86023	Bright Angel Trail: South Rim to Phantom Ranch	28968.12	5	5	out and back	['backpacking', 'camping', 'hiking']	\N
59	\N	\N	North Rim	36.12234	-111.94949	86052	Cape Royal Trail	1609.34	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
60	\N	\N	North Rim	36.21689	-112.05678	86052	Rim-to-Rim: North Kaibab to South Kaibab Trailhead	31060.262	5	7	point to point	['backpacking', 'camping', 'hiking', 'trail-running', 'horseback-riding']	\N
61	\N	\N	Tucson	32.16559	-110.7238	85748	Tanque Verde Ridge Trail	32186.8	4.5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
62	\N	\N	Grand Canyon	36.07836	-112.12709	86023	Rim to Rim Trail Segment: Indian Garden to Colorado River	9656.04	5	7	out and back	['backpacking', 'camping', 'nature-trips']	\N
63	\N	\N	North Rim	36.21704	-112.05675	86052	North Kaibab Trail to Colorado River	45061.52	4.5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
64	\N	\N	North Rim	36.14579	-111.9355	86052	Cape Final	6437.36	4.5	1	out and back	['camping', 'hiking']	\N
65	\N	\N	Tucson	32.2207	-110.72608	85748	Mica View Loop Trail	5954.558	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
66	\N	\N	North Rim	36.10656	-112.09423	86052	Phantom Ranch to Ribbon Falls via North Kaibab Trail	19151.146	5	5	out and back	['backpacking', 'camping', 'hiking']	\N
67	\N	\N	Tucson	32.27146	-111.20301	85745	Hugh Norris Trail	14323.126	4.5	3	out and back	['hiking', 'nature-trips', 'horseback-riding']	\N
68	\N	\N	North Rim	36.21724	-112.05655	86052	North Kaibab Trail to Supai Tunnel and Coconino Overlook	5954.558	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
69	\N	\N	Petrified Forest National Park	34.86326	-109.79239	86028	Crystal Forest Trail	1448.406	4.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
70	\N	\N	Grand Canyon	36.06065	-112.21219	86023	Hermit's Rest Viewpoint  to Santa Maria Spring	5471.756	4.5	3	out and back	['birding', 'hiking', 'trail-running']	\N
71	\N	\N	Grand Canyon	36.05299	-112.08351	86023	South Kaibab to North Kaibab to Bright Angel Trail	65822.006	5	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
72	\N	\N	Chambers	35.080330000000004	-109.78349	86028	Painted Desert Rim Trail	1770.274	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
73	\N	\N	Chambers	35.06032	-109.78196	86028	Petrified Forest Scenic Drive	46027.124	4.5	3	point to point	['nature-trips', 'scenic-driving']	\N
74	\N	\N	Grand Canyon	36.0575	-112.14411	86023	Bright Angel Trail to Phantom Overlook to South Kaibab Trail	27841.582	5	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
75	\N	\N	Grand Canyon	36.05348	-112.08359	86023	South Kaibab Trail to Tip Off	14484.06	5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
76	\N	\N	Cameron	35.85497	-111.42506	86020	Grand Canyon South Rim Scenic Drive: Cameron to Grand Canyon Village	88513.7	4.5	1	point to point	['nature-trips', 'scenic-driving']	\N
77	\N	\N	Tucson	32.35403	-111.14143	85743	Safford Peak Trail	3862.416	4	3	out and back	['hiking']	\N
78	\N	\N	Grand Canyon	36.4347	-112.42932	86052	Thunder Creek to Deer Creek and Thunder Falls	46670.86	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
79	\N	\N	North Rim	36.21704	-112.05675	86052	Rim to Rim: North to South and Ribbon Falls	49889.54	4.5	7	point to point	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
80	\N	\N	Tucson	32.24761	-111.16714	85743	Gould Mine	3701.482	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
81	\N	\N	Tucson	32.2351	-110.68694	85748	Douglas Spring, Bridal Wreath Falls, Three Tank, Garwood Loop	11426.314	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
82	\N	\N	Grand Canyon	36.05711	-112.14443	86023	Grand Canyon Rim Village to Hermit's Rest	24622.902	4.5	1	out and back	['hiking', 'nature-trips']	\N
83	\N	\N	Grand Canyon	36.04123	-111.82692	86023	Desert View Visitor Center Trail	643.736	4	1	loop	['hiking', 'walking']	\N
84	\N	\N	North Rim	36.21714	-112.05658	86052	Coconino Overlook	2092.142	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
85	\N	\N	North Rim	36.21729	-112.05643	86052	Uncle Jim Trail	7563.898	4	1	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
86	\N	\N	Grand Canyon	36.06043	-112.2125	86023	Dripping Springs via Dripping Springs and Hermit Trail	10138.842	4.5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
87	\N	\N	Holbrook	34.81544	-109.86552	86025	Giant Logs Trail	965.604	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
88	\N	\N	Chambers	35.0837	-109.78904	86028	Onyx Bridge Trail	7402.964	4	3	loop	['birding', 'hiking', 'nature-trips']	\N
89	\N	\N	North Rim	36.21699	-112.05666	86052	North Kaibab Trail to Redwall Bridge	11104.446	5	5	out and back	['backpacking', 'hiking', 'trail-running']	\N
90	\N	\N	Tucson	32.27698	-111.1977	85745	Valley View Overlook Trail	1287.472	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
91	\N	\N	Tucson	32.18	-110.73622	85748	Cactus Forest Loop Drive	16576.202	4	1	loop	['birding', 'mountain-biking', 'nature-trips', 'scenic-driving']	\N
92	\N	\N	Holbrook	34.81468	-109.86184	86025	Long Logs and Agate House Loop Trail	3379.614	4	1	loop	['hiking', 'walking']	\N
93	\N	\N	Grand Canyon	36.03276	-111.85322	86023	Tanner Trail	21404.222	5	7	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
94	\N	\N	Vail	32.20343	-110.70985	85748	Loma Verde and Squeeze Pen Loop	5954.558	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
95	\N	\N	Tucson	32.13315	-110.68711	85747	Hope Camp	10460.71	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
96	\N	\N	Grand Canyon	36.05271	-112.08398	86023	South Kaibab, Tonto and Bright Angel Trail	19955.816	5	7	point to point	['birding', 'hiking', 'nature-trips']	\N
97	\N	\N	Tucson	32.23517	-110.68678	85748	Garwood Trail	5310.822	4.5	1	out and back	['hiking', 'walking']	\N
98	\N	\N	Tucson	32.23514	-110.68692	85748	Garwood Dam To Douglas Spring Loop Trail	10460.71	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
99	\N	\N	Grand Canyon	36.05355	-112.08342	86023	South to North Kaibab Trail	31060.262	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
100	\N	\N	Vail	32.16556	-110.7239	85748	Tanque Verde Ridge	5310.822	4.5	3	out and back	['hiking', 'trail-running']	\N
101	\N	\N	Tucson	32.16531	-110.72587	85748	Freeman Homestead Nature Trail	1770.274	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
102	\N	\N	North Rim	36.27911	-111.97786	86052	Point Imperial	160.934	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
103	\N	\N	Tucson	32.28482	-111.16747	85745	Sendero Esperanza Trail	8046.7	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
104	\N	\N	Tucson	32.23516	-110.68657	85748	Douglas Spring to Three Tank Trail Junction	7242.03	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
105	\N	\N	Grand Canyon	36.06248	-112.21036	86023	West Rim Trail: Hermits Rest to Powell Point	19312.08	4.5	1	out and back	['birding', 'hiking', 'walking']	\N
106	\N	\N	Tucson	32.23601	-110.98402	85705	Saguaro National Park West and Old Tucson Studios Scenic Drive	63086.128	4.5	1	loop	['nature-trips', 'scenic-driving']	\N
107	\N	\N	North Rim	36.21822	-111.95239	86052	Roosevelt Point Trail	482.802	4	1	loop	['hiking', 'walking']	\N
108	\N	\N	Tucson	32.24719	-111.16714	85743	Petroglyphs at King Canyon	3540.548	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
109	\N	\N	Grand Canyon	36.18375	-112.37666	86435	South Bass Trail	19633.948	4.5	7	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
110	\N	\N	Chambers	34.97612	-109.79399	86502	Puerco Pueblo Trail	482.802	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
111	\N	\N	Tucson	32.22032	-110.7254	85748	Cactus Forest Trail	16093.4	4	3	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
112	\N	\N	Grand Canyon	36.03302	-111.85214	86023	The Escalante Route Trail	56005.032	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
113	\N	\N	North Rim	36.27949	-111.97881	86052	Nankoweap Trail	49406.738	4.5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
114	\N	\N	Sun Valley	35.0168	-109.88437	86025	Devil's Playground Loop	12070.05	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
115	\N	\N	Tucson	32.22086	-110.72615	85748	Pink Hill, Loma Verde, Cholla Trail, and Cactus Forest Loop	5310.822	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
116	\N	\N	Grand Canyon	36.06024	-112.21229	86023	Hermit Trail to Dripping Springs	8529.502	5	5	out and back	['hiking']	\N
117	\N	\N	Tucson	32.1332	-110.68715	85747	Ridge View Trail	3701.482	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
118	\N	\N	North Rim	36.12463	-111.94782000000001	86052	Cliff Springs Trail	1770.274	4	1	out and back	['birding', 'hiking', 'trail-running']	\N
119	\N	\N	North Rim	36.1319	-111.94221	86052	Walhalla Overlook	160.934	4.5	1	out and back	['walking']	\N
120	\N	\N	North Rim	36.22388	-112.06533	86052	Widforss Trail - Short Option	6920.162	4.5	1	out and back	['hiking', 'nature-trips', 'trail-running']	\N
121	\N	\N	Tucson	32.22093	-110.72615	85748	Mica View Trail to Cactus Forest Trail	3057.746	4	1	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
122	\N	\N	Grand Canyon	36.05353	-112.08346	86023	Clear Creek Trail	49245.804	4.5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
123	\N	\N	Tucson	32.20326	-110.7253	85748	Desert Ecology Trail	482.802	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
124	\N	\N	Grand Canyon	36.0046	-111.92426	86023	New Hance Trail	20921.42	3.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
125	\N	\N	Grand Canyon	36.05701	-112.14437	86023	Bright Angel Trail to Tonto Trail	116838.084	5	5	out and back	['backpacking', 'camping', 'hiking']	\N
126	\N	\N	Petrified Forest National Park	34.88855	-109.80716	86028	Old Jasper Forest Road	4184.284	4.5	1	loop	['hiking']	\N
127	\N	\N	Tucson	32.23512	-110.68697	85748	Wildhorse Trail	4988.954	4.5	3	out and back	['hiking', 'trail-running']	\N
128	\N	\N	Tucson	32.25736	-110.656	85748	Tanque Verde Falls Viewpoint	1126.538	4	3	out and back	['birding', 'hiking', 'nature-trips']	\N
129	\N	\N	Grand Canyon	36.06109	-112.21163	86023	Hermit's Rest Viewpoint to Tonto Trail to Bright Angel Trailhead	34118.008	4.5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'trail-running']	\N
130	\N	\N	Tucson	32.26248	-111.21043	\N	Desert Discovery Nature Trail	643.736	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
131	\N	\N	Grand Canyon	36.06059	-112.21213	86023	Boucher Trail to Hermit Trail Loop	32508.668	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'trail-running']	\N
132	\N	\N	Tucson	32.28871	-111.12111	85745	Thunderbird Trail	6437.36	3.5	3	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
133	\N	\N	Grand Canyon	36.06	-112.10668	86023	Rim Trail, South Kaibab and Bright Angel Loop	34118.008	4.5	5	loop	['birding', 'hiking', 'nature-trips']	\N
134	\N	\N	Grand Canyon	36.04858	-112.11664	86023	Mather Campground Trail	3701.482	3.5	1	loop	['camping', 'nature-trips', 'road-biking', 'walking']	\N
135	\N	\N	Tucson	32.29079	-111.20831	85743	Cactus Wren Trail	6276.426	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
136	\N	\N	Grand Canyon	35.98342	-111.94004	86023	Tonto Trail: New Hance Trail to Grandview Point	25105.704	5	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
137	\N	\N	Grand Canyon	36.05288	-112.0836	86023	South to North Kalbab Trail	49728.606	5	7	point to point	['hiking', 'nature-trips']	\N
138	\N	\N	Chambers	35.08032	-109.78355	86028	Painted Desert Rim Trail to Kachina Point	1770.274	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
139	\N	\N	Grand Canyon	36.01319	-111.86646	86023	Tusayan Ruin Trail	482.802	3	1	loop	['hiking', 'nature-trips', 'walking']	\N
140	\N	\N	Cortaro	32.35253	-111.13994	85743	Scenic, Passey, Packrat Trail Loop	2735.878	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
141	\N	\N	North Rim	36.21704	-112.05675	86052	Ribbon Falls from the North Rim via North Kaibob Trail	27036.912	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
142	\N	\N	Tucson	32.23516	-110.68657	85748	Mica Mountain via Douglas Spring and Cow Head Saddle Trail	40877.236	4.5	7	out and back	['backpacking', 'camping', 'hiking', 'trail-running', 'walking']	\N
143	\N	\N	Willow Canyon	32.45169	-110.48754	85602	Redington OHV Trail	39267.896	4.5	1	point to point	['off-road-driving']	\N
144	\N	\N	Grand Canyon	36.06032	-112.21239	86023	Boucher Trail	28485.318	5	7	out and back	['backpacking', 'hiking', 'trail-running']	\N
145	\N	\N	Vail	32.13299	-110.68709	85747	Hope Camp Coyote Wash and Ruiz Trail Loop	9334.172	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
146	\N	\N	North Rim	36.27926	-111.97905	86052	Ken Patrick Trail North from Point Imperial	7885.766	3	1	out and back	['hiking']	\N
147	\N	\N	Vail	32.25798	-110.65552	85748	Tanque Verde Falls Beach	1287.472	4	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
148	\N	\N	North Rim	36.19815	-112.05291	86052	Grand Canyon Bridle Trail	5149.888	3.5	1	out and back	['birding', 'hiking', 'road-biking', 'walking']	\N
149	\N	\N	Tucson	32.22061	-110.72642	85748	Shantz and Mica View Trail	4184.284	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
150	\N	\N	Grand Canyon	35.99763	-111.98763	86023	Tonto Trail from Grandview Point to South Kaibab Trailhead	43774.048	4	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
151	\N	\N	North Rim	36.10485	-112.09488	86052	Phantom Ranch to Phantom Overlook	3379.614	4.5	3	out and back	['hiking', 'nature-trips']	\N
152	\N	\N	Grand Canyon	36.43466	-112.42976	86052	Monument Point via Bill Hall Trail	2414.01	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
153	\N	\N	Petrified Forest National Park	34.84845	-109.8015	86028	Martha's Butte	4345.218	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
154	\N	\N	Tucson	32.32734	-111.1306	85745	Coyote Pass Loop Trail	9173.238	4	1	loop	['hiking', 'trail-running', 'walking', 'horseback-riding']	\N
155	\N	\N	Grand Canyon	36.06033	-112.21238	86023	Waldron Trail	7885.766	4.5	5	out and back	['hiking', 'trail-running']	\N
156	\N	\N	Colorado City	36.21165	-113.08357	86432	Lava Falls Trail	4184.284	4	5	out and back	['hiking', 'trail-running']	\N
157	\N	\N	Benson	32.15777	-110.47549	85641	Turkey Creek	19473.014	4	5	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
158	\N	\N	Tucson	32.28874	-111.12124	85745	Cactus Canyon and Gila Monster Loop via Thunderbird Trail	9656.04	3.5	3	loop	['hiking', 'trail-running']	\N
159	\N	\N	Tucson	32.31925	-111.16599	85743	Panther Peak Wash - Roadrunner Loop	6759.228	3	3	loop	['hiking', 'horseback-riding']	\N
160	\N	\N	Benson	32.15782	-110.47572	85641	Manning Camp Trail	24783.836	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
161	\N	\N	Grand Canyon	36.03297	-111.85331	86023	Tanner Trail to Grandview Trail and Grandview Point	50855.144	5	7	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
162	\N	\N	Chambers	34.94323	-109.77762	86502	Blue Hills Loop	3862.416	4.5	3	loop	['hiking']	\N
163	\N	\N	Grand Canyon	35.99716	-111.98813	86023	Grandview Point to Horseshoe Mesa East Trail	11748.182	5	5	out and back	['backpacking', 'hiking', 'nature-trips']	\N
164	\N	\N	Grand Canyon	36.05741	-112.14433	86023	Tonto Trail to Monument Creek	45544.322	4.5	5	out and back	['backpacking', 'camping', 'hiking']	\N
165	\N	\N	Petrified Forest National Park	34.83962	-109.80823	86028	Martha's Butte Off-Trail Route	3057.746	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
166	\N	\N	Tucson	32.32319	-111.0963	85743	Vertical Cliffs Trail to Abington Trail Loop	6115.492	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
167	\N	\N	Tucson	32.26904	-111.21633	\N	Bajada Loop Drive	8368.568	3.5	1	loop	['road-biking', 'scenic-driving']	\N
168	\N	\N	Vail	32.1333	-110.68715	85747	Hope Campe, Ruiz Trail, and Coyote Wash Trail	9012.304	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
169	\N	\N	Tucson	32.23504	-110.68704	85748	Wild Horse to Garwood Dam	6276.426	5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
170	\N	\N	Tucson	32.32774	-111.1305	85745	Cam-Boh Trail	7885.766	3.5	3	out and back	['hiking', 'horseback-riding']	\N
171	\N	\N	Grand Canyon	36.06077	-112.21244	86023	Hermit Trail to Granite Rapids Campground	35244.546	4.5	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
172	\N	\N	Grand Canyon	36.03309	-111.85206	86023	Tanner Beach and Lava Rapids Trail	31864.932	3	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
173	\N	\N	North Rim	36.27899	-111.97827	86052	Ken Patrick Trail South from Point Imperial	15610.598	4	5	point to point	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
174	\N	\N	Tucson	32.2208	-110.72646	85748	Shantz, Mesquite, Loma and Cholla Trail Loop	8207.634	4	1	loop	['birding', 'hiking', 'trail-running', 'horseback-riding']	\N
175	\N	\N	Grand Canyon	36.05347	-112.08347	86023	South Kaibab, North Kaibab and Bright Angel Trail	57614.372	5	7	point to point	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
176	\N	\N	Vail	32.16541	-110.72396	85748	Cow Head Saddle Trail	41842.84	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
177	\N	\N	Grand Canyon	36.08161	-112.21296	86023	Hermit Camp to Monument Creek Camp via Tonto Trail	10138.842	5	3	out and back	['hiking', 'nature-trips']	\N
178	\N	\N	North Rim	36.13336	-111.94147	86052	Walhalla Ruins	160.934	3	1	out and back	['hiking', 'nature-trips', 'walking']	\N
179	\N	\N	North Rim	36.43467	-112.43005	86052	Deer Creek to Colorado River	29450.922	4.5	7	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
180	\N	\N	Cortaro	32.32733	-111.13058	85745	Ironwood Forest Picture Rocks Wash Trail	6276.426	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
181	\N	\N	Grand Canyon	36.04021	-111.82769	86023	Blue Springs Trail	27358.78	2	3	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
182	\N	\N	North Rim	36.33558	-112.34993	86052	North Bass Trail	35888.282	4	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
183	\N	\N	North Rim	36.47407	-111.92809	86052	South Canyon	17380.872	5	7	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
184	\N	\N	Grand Canyon	35.95748	-111.95498	86023	Arizona Trail #36	27036.912	5	5	point to point	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
185	\N	\N	Grand Canyon	36.18378	-112.37658	86435	South Bass to Hermits Rest via Tonto West	66465.742	5	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
186	\N	\N	Tucson	32.28555	-111.16965	85743	Encinas Trail from Ez-Kim-In-Zin Picnic Area	11748.182	3.5	3	out and back	['hiking', 'horseback-riding']	\N
187	\N	\N	Grand Canyon	36.03308	-111.85206	86023	Tanner and Beamer Trail	49567.672	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
188	\N	\N	Grand Canyon	36.033	-111.85214	86023	Palisades Creek Trail	36371.084	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
189	\N	\N	North Rim	36.33552	-112.34981	86052	Powell Plateau Trail	8046.7	5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
190	\N	\N	Holbrook	34.88782	-109.80781	86028	First Forest Point	7081.096	3	3	out and back	['hiking', 'trail-running']	\N
191	\N	\N	Tucson	32.27707	-111.19774	85745	Valley View and Wild Dog Trails	4345.218	3	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
192	\N	\N	Tucson	32.22095	-110.726	85748	Shantz, Vanover, Loma Verde, Cholla, Cactus Forest Trail Loop	8207.634	3.5	3	loop	['hiking']	\N
193	\N	\N	North Rim	36.22079	-112.06151	86052	Tiyo Point Trail	32669.602	4	3	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
194	\N	\N	Tucson	32.27153	-111.20297	85745	Hugh Norris, Sendero Esperanza, Dobbie Wash Loop	10299.776	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
195	\N	\N	Vail	32.13303	-110.68704	85747	Hope Camp to Grass Shack Camp Trail	15449.664	4.5	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
196	\N	\N	Grand Canyon	35.95748	-111.9554	86023	AZ Trail Segment 37	35888.282	3	3	point to point	['backpacking', 'birding', 'hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
197	\N	\N	Supai	36.34069	-112.92579	\N	Schmutz Spring	8851.37	0	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
198	\N	\N	Grand Canyon	35.99855	-111.98737	86023	Horseshoe Mesa Loop via Grand View Trail	19633.948	4	5	loop	['hiking', 'trail-running']	\N
199	\N	\N	Vail	32.06403	-110.62252	85641	Arizona Trail: Savilla Campground to Saguaro National Park	13196.588	0	3	point to point	['hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
200	\N	\N	Supai	36.45894	-112.48824	86052	Thunder River Trail from Indian Hollow Parking Area	46188.058	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
201	\N	\N	North Rim	36.33556	-112.34986	86052	North Bass Trail to Muav Cabin	2414.01	0	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
202	\N	\N	Tucson	32.23514	-110.68698	85748	Douglas Spring, Converse, Garwood  and Wildhorse Loop	5471.756	5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
203	\N	\N	Vail	32.30612	-110.57414	85641	Redington Pass Chiva Falls OHV Loop	32830.536	0	3	loop	['nature-trips', 'off-road-driving']	\N
204	\N	\N	Hot Springs National Park	34.5256	-93.03637	71901	Sunset Trail	20921.42	4	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
205	\N	\N	Hot Springs National Park	34.51279	-93.05836	71901	West Mountain Trail	3057.746	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
206	\N	\N	Hot Springs National Park	34.52802	-93.03995	71901	Goat Rock Trail	3862.416	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'road-biking', 'trail-running', 'walking']	\N
207	\N	\N	Hot Springs National Park	34.52556	-93.03645	71901	Gulpha Gorge Trail	1931.208	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
208	\N	\N	Hot Springs National Park	34.51165	-93.05319	71901	The Grand Promenade and Side Trails	1931.208	4	3	loop	['nature-trips', 'trail-running', 'walking']	\N
209	\N	\N	Hot Springs National Park	34.51359	-93.05238	71901	Dead Chief Trail	4345.218	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
210	\N	\N	Hot Springs National Park	34.52598	-93.03645	71901	Hot Springs Mountain Trail	5310.822	4	1	loop	['hiking', 'walking']	\N
211	\N	\N	Hot Springs National Park	34.51334	-93.05276	71901	Peak Trail	2092.142	3.5	1	out and back	['walking']	\N
212	\N	\N	Hot Springs National Park	34.50846	-93.06853	71901	Sugarloaf Mountain Via Sunset Trail	11426.314	4	3	out and back	['hiking', 'walking']	\N
213	\N	\N	Hot Springs National Park	34.52559	-93.03619	71901	Goat Rock via Dead Chief Trail	2092.142	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
214	\N	\N	Hot Springs National Park	34.51656	-93.05239	71901	Grand Promenade	1126.538	3.5	1	out and back	['hiking', 'trail-running', 'walking']	\N
215	\N	\N	Hot Springs National Park	34.5117	-93.05353	71901	Hot Springs Sunset Trail Full Circle	20599.552	4	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
216	\N	\N	Hot Springs National Park	34.51403	-93.09383	71913	Sunset Trail: Sugarloaf Mountain Section	4667.086	4	3	point to point	['hiking', 'trail-running']	\N
217	\N	\N	Hot Springs National Park	34.52373	-93.0417	71901	Upper Dogwood Trail	2253.076	3.5	1	loop	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
218	\N	\N	Hot Springs National Park	34.51813	-93.05016	71901	Mountaintop Loop	2092.142	4	1	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
219	\N	\N	Hot Springs National Park	34.52375	-93.04166	71901	Lower Dogwood Trail	2574.944	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
220	\N	\N	Yosemite Valley	37.73495	-119.56619	95389	Vernal and Nevada Falls via the Mist Trail	10299.776	5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
221	\N	\N	Yosemite Valley	37.74237	-119.60223	95389	Upper Yosemite Falls Trail	11587.248	5	7	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
222	\N	\N	Yosemite Valley	37.73465	-119.56583	95389	Half Dome Trail	23818.232	5	7	out and back	['hiking', 'nature-trips', 'rock-climbing']	\N
223	\N	\N	Three Rivers	36.54685	-118.76565	93262	Moro Rock Trail	643.736	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'walking']	\N
224	\N	\N	Yosemite Valley	37.74587	-119.59266	95389	Lower Yosemite Falls Trail	1609.34	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
225	\N	\N	Yosemite Valley	37.82585	-119.47046	\N	Clouds Rest Trail via Tenaya Lake	19794.882	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
226	\N	\N	Yosemite Valley	37.73388	-119.60185	95389	Four Mile Trail	12070.05	5	7	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
227	\N	\N	Yosemite Valley	37.71243	-119.58632	95389	Sentinel Dome Trail	3379.614	5	1	out and back	['hiking', 'trail-running']	\N
228	\N	\N	Yosemite Valley	37.72765	-119.57432	95389	Glacier Point Trail	965.604	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking', 'cross-country-skiing']	\N
229	\N	\N	Yosemite Valley	37.73257	-119.55916	95389	Vernal Falls	5954.558	5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
230	\N	\N	Twentynine Palms	34.00264	-116.13594	\N	Ryan Mountain Trail	4828.02	4.5	3	out and back	['hiking']	\N
231	\N	\N	Yosemite Valley	37.73889	-119.56914	95389	Mirror Lake via Valley Loop Trail	9012.304	4	1	loop	['hiking', 'walking']	\N
232	\N	\N	Sequoia National Park	36.60485	-118.72401	93262	Tokopah Falls via Tokopah Valley Trail	6437.36	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
233	\N	\N	Old Station	40.47458	-121.5057	96071	Lassen Peak	8207.634	5	5	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running', 'cross-country-skiing']	\N
234	\N	\N	Hume	36.79495	-118.58315	93633	Mist Falls Trail	13035.654	5	3	out and back	['birding', 'fishing', 'hiking', 'horseback-riding']	\N
235	\N	\N	Three Rivers	36.59655	-118.73438	93262	Heather Lake, Emerald Lake, and Pear Lake Trail via Watchtower and Pear Lake Trails	18990.212	5	5	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'fly-fishing']	\N
236	\N	\N	Twentynine Palms	34.02511	-116.14173	92277	Barker Dam Nature Trail	2896.812	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running', 'walking']	\N
237	\N	\N	Three Rivers	36.58498	-118.74978	93262	General Sherman Tree Trail	1287.472	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
238	\N	\N	Yosemite Valley	37.71658	-119.65118	95389	Bridalveil Fall Trail	804.67	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
239	\N	\N	Three Rivers	36.51464	-118.80085	93262	Marble Falls Trail	11909.116	4.5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
240	\N	\N	Twentynine Palms	34.01234	-116.16807	92277	Hidden Valley Nature Trail	1609.34	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running', 'walking']	\N
241	\N	\N	Yosemite Valley	37.71241	-119.58631	95389	Taft Point and The Fissures	3701.482	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
242	\N	\N	Cedar Grove	36.79468	-118.58289	93633	Rae Lakes Trail	66626.676	5	5	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
243	\N	\N	Three Rivers	36.58448	-118.74988	93262	Congress Trail	5149.888	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
244	\N	\N	Yosemite Valley	37.87338	-119.38261	95389	Cathedral Lakes Trail	13840.324	4.5	3	out and back	['backpacking', 'birding', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
245	\N	\N	Indio	33.73685	-115.81058	92277	Lost Palms Oasis	11587.248	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
246	\N	\N	Yosemite Valley	37.72731	-119.57471	95389	Vernal and Nevada Falls via the Panorama Trail	14484.06	5	5	point to point	['birding', 'hiking', 'nature-trips']	\N
247	\N	\N	Paicines	36.48145	-121.18174	95043	Condor Gulch Trail to High Peaks Trail Loop	8690.436	4.5	5	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
248	\N	\N	Twentynine Palms	33.984140000000004	-116.01655	92277	Arch Rock Nature Trail	1126.538	4.5	1	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
249	\N	\N	Yosemite Valley	37.74208	-119.60195	95389	Columbia Rock Trail	2092.142	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
250	\N	\N	Yosemite Valley	37.80649	-119.54523	\N	Porcupine Creek Trail to Indian Ridge Natural Arch to North Dome	16737.136	5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
251	\N	\N	Twentynine Palms	34.11922	-116.11198	92277	Fortynine Palms Oasis Trail	4506.152	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
252	\N	\N	Yosemite Valley	37.73476	-119.56629	95389	John Muir Trail via Yosemite Valley	326856.954	4.5	5	point to point	['backpacking', 'camping', 'hiking']	\N
253	\N	\N	Twentynine Palms	33.95082	-116.15985	\N	Lost Horse Mine Loop Trail	11104.446	4.5	3	loop	['camping', 'hiking', 'nature-trips', 'trail-running']	\N
254	\N	\N	Yosemite Valley	37.50221	-119.61064	93623	Mariposa Grove of Giant Sequoias Trail	9012.304	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
255	\N	\N	Yosemite Valley	37.54839	-119.634	95389	Chilnualna Falls Trail	12713.786	4.5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'horseback-riding']	\N
256	\N	\N	Death Valley	36.23035	-116.7668	\N	Badwater Basin Salt Flats Trail	2896.812	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
257	\N	\N	Yosemite Valley	37.71247	-119.58638	95389	Sentinel Dome and Taft Point Loop	8207.634	5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
258	\N	\N	Yosemite Valley	37.73251	-119.55906	95389	Nevada Falls	8690.436	5	5	out and back	['hiking', 'trail-running', 'walking']	\N
259	\N	\N	Trinidad	41.20785	-123.99318	\N	Tall Trees Grove Loop Trail	5310.822	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
260	\N	\N	Twentynine Palms	33.99797	-116.05998	92277	Skull Rock Nature Trail	2735.878	4	1	loop	['camping', 'hiking', 'nature-trips', 'rock-climbing', 'walking']	\N
261	\N	\N	Yosemite Valley	37.73467	-119.56635	95389	Clouds Rest Trail from Yosemite Valley	28968.12	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
262	\N	\N	Dunlap	36.74697	-118.97319	93628	General Grant Loop Trail	804.67	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
263	\N	\N	Yosemite Valley	37.74237	-119.60202	95389	El Capitan Trail (historical)	21726.09	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
264	\N	\N	Three Rivers	36.59662	-118.73442	93262	Alta Peak Trail	23979.166	4.5	7	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'cross-country-skiing']	\N
265	\N	\N	Three Rivers	36.44886	-118.59542	93271	Mineral King to Eagle Lake Trail	10460.71	5	3	out and back	['hiking', 'trail-running']	\N
266	\N	\N	Three Rivers	36.56465	-118.77323	93262	Big Trees Trail	2092.142	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
267	\N	\N	Three Rivers	36.58499	-118.74953	93262	Giant Forest Loop Trail	11265.38	5	1	loop	['hiking', 'trail-running']	\N
268	\N	\N	Long Barn	37.94641	-119.7873	95321	Wapama Falls Trail	7402.964	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
269	\N	\N	Death Valley	36.60611	-117.1151	92328	Mesquite Flat Sand Dunes Trail	4506.152	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
270	\N	\N	Twentynine Palms	33.92531	-115.92893	\N	Cholla Cactus Garden Nature Trail	321.868	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
271	\N	\N	Old Station	40.46067	-121.4593	96061	Kings Creek Falls Trail	4345.218	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
272	\N	\N	Yosemite Valley	37.742490000000004	-119.60237	95389	Yosemite Point	13679.39	5	5	out and back	['birding', 'camping', 'hiking', 'nature-trips']	\N
273	\N	\N	Yosemite Valley	37.75803	-119.80482	95389	Tuolumne Grove Trail	5149.888	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
274	\N	\N	Three Rivers	36.58576	-118.82695	93271	Crystal Cave Trail	1287.472	4.5	3	out and back	['hiking', 'walking']	\N
275	\N	\N	Orick	41.30386	-124.01845	95555	Lady Bird Johnson Grove Trail	2092.142	4.5	1	loop	['birding', 'nature-trips', 'walking']	\N
276	\N	\N	Three Rivers	36.59655	-118.73424	93262	Heather Lake via Watchtower Trail	13035.654	4.5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking', 'horseback-riding']	\N
277	\N	\N	Old Station	40.56491	-121.30184	\N	Cinder Cone Nature Trail	7724.832	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
278	\N	\N	Lee Vining	37.91082	-119.25758	\N	Mount Dana Summit Trail	11265.38	5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
279	\N	\N	Stony Creek Village	36.78362	-118.62215	93633	Zumwalt Meadow And Roaring River Falls	6437.36	4.5	1	loop	['birding', 'fishing', 'hiking', 'nature-trips', 'walking', 'fly-fishing']	\N
280	\N	\N	Soledad	36.49183	-121.2096	95043	Old Pinnacles Trail Loop	15288.73	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
281	\N	\N	Joshua Tree	34.04111	-116.18577	92277	Willow Hole Trail	10943.512	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
282	\N	\N	Three Rivers	36.55468	-118.74879	93262	High Sierra Trail: Crescent Meadow to Whitney Portal	94951.06	5	5	point to point	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips', 'fly-fishing']	\N
283	\N	\N	Hume	36.79469	-118.58292	93633	Paradise Valley Trail	27519.714	5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
284	\N	\N	Yosemite Valley	37.83276	-119.49091	\N	Mount Hoffman Trail	9012.304	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
285	\N	\N	Stony Creek Village	36.60461	-118.72521	93262	Twin Lakes Trail	21082.354	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
286	\N	\N	Yosemite Valley	37.82576	-119.47008	\N	Tenaya Lake Trail	5471.756	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
287	\N	\N	Mill Creek	40.43107	-121.53624	96061	Brokeoff Mountain Trail	12230.984	5	5	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
288	\N	\N	Death Valley	36.42095	-116.80986	92328	Zabriskie Point	643.736	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
289	\N	\N	Mecca	33.73697	-115.8107	92277	Mastodon Peak Loop Trail	3862.416	4.5	1	loop	['birding', 'hiking', 'nature-trips']	\N
290	\N	\N	Stony Creek Village	36.70761	-118.92096	\N	Redwood Canyon Sugar Bowl Trail	17541.806	4.5	3	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
291	\N	\N	Three Rivers	36.55471	-118.74888	93262	Crescent and Log Meadows Trail	2896.812	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
292	\N	\N	Paicines	36.48131	-121.18169	95043	Bear Gulch Day Use Area to Reservoir via Rim Trail	2896.812	4.5	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
293	\N	\N	Twentynine Palms	34.00947	-116.05576	92277	Split Rock Loop Trail	3057.746	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
294	\N	\N	Yosemite Valley	37.74439	-119.5978	95389	Sentinel Meadow Cook's Meadow Loop Trail	3540.548	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
295	\N	\N	Yucca Valley	34.0752	-116.38802	92284	Black Rock Canyon to Panorama Loop Trail	10299.776	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
296	\N	\N	Three Rivers	36.45329	-118.59677	93271	Mineral King to Little Five Lakes Trail	44578.718	4.5	5	loop	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
297	\N	\N	Yosemite Valley	37.72713	-119.57432	95389	Illilouette Falls Trail	7885.766	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
298	\N	\N	Death Valley	36.22072	-116.72648	\N	Dante's View Trail	2574.944	4.5	1	out and back	['birding', 'hiking', 'walking']	\N
299	\N	\N	Stony Creek Village	36.69705	-118.87877	\N	Big Baldy Ridge Trail	8851.37	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
300	\N	\N	Yosemite Valley	37.87679	-119.34612	95389	Tuolumne Meadows to Glen Aulin High Sierra Camp	19473.014	4.5	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'walking', 'horseback-riding', 'fly-fishing']	\N
301	\N	\N	Death Valley	36.22988	-117.06829	\N	Telescope Peak Trail	19312.08	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
302	\N	\N	Lone Pine	36.45331	-118.16974	93545	Mount Langley	33796.14	4.5	5	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'rock-climbing']	\N
303	\N	\N	Long Barn	37.94615	-119.78817	95321	Hetch Hetchy Trail to Rancheria Falls	18185.542	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
304	\N	\N	Yosemite Valley	37.74467	-119.59736	95389	Valley Floor Loop Trail	32347.734	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
305	\N	\N	Death Valley	36.42062	-116.84703	92328	Golden Canyon Trail to Red Cathedral	4667.086	4.5	3	out and back	['hiking', 'nature-trips']	\N
306	\N	\N	Yosemite Valley	37.87702	-119.35308	95389	Lembert Dome Loop	5954.558	4.5	3	loop	['birding', 'hiking', 'trail-running', 'horseback-riding']	\N
307	\N	\N	Three Rivers	36.62006	-118.80928	93271	Little Baldy Trail	5310.822	5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
308	\N	\N	Yosemite Valley	37.71536	-119.67688	95389	Inspiration Point Trail	3701.482	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
309	\N	\N	Paicines	36.48421	-121.16649	95043	High Peaks Trail	10138.842	4.5	7	loop	['birding', 'hiking']	\N
310	\N	\N	Yosemite Valley	37.7394	-119.55955	\N	Mirror Lake from Shuttle Stop 17	3701.482	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
311	\N	\N	Yosemite Valley	37.85207	-119.57586	95389	Ten Lakes Trail	19955.816	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
312	\N	\N	Three Rivers	36.54919	-118.76841	93262	Hanging Rock Trail	804.67	4.5	1	out and back	['hiking', 'walking']	\N
313	\N	\N	Mill Creek	40.43732	-121.53306	96063	Mill Creek Falls Trail	6115.492	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
314	\N	\N	Yosemite Valley	37.81083	-119.48553	\N	Olmsted Point Nature Trail	643.736	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
315	\N	\N	Death Valley	36.4208	-116.81035	92328	Golden Canyon and Gower Gulch Loop via Zabriskie Point	9334.172	4.5	3	loop	['hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
316	\N	\N	Old Station	40.53626	-121.56251	96088	Manzanita Lake Loop	3057.746	4.5	1	loop	['birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking', 'fly-fishing']	\N
317	\N	\N	Three Rivers	36.55452	-118.75006	93262	High Sierra Trail to Hamilton Lakes	46027.124	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking']	\N
318	\N	\N	Stony Creek Village	36.70906	-118.92146	\N	Sugar Bowl - Redwood Creek Loop	10460.71	4.5	3	loop	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
319	\N	\N	Stony Creek Village	36.70747	-118.92094	\N	Hart Tree, Fallen Goliath, Redwood Creek Loop	11426.314	4.5	3	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
320	\N	\N	Chester	40.44312	-121.39747	96020	Devil's Kitchen Trail	7402.964	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
321	\N	\N	Death Valley	36.57185	-117.14421	92328	Mosaic Canyon Trail	5632.69	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
322	\N	\N	Paicines	36.49216	-121.20995	95043	High Peaks & Balconies Cave Loop Trail	12713.786	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
323	\N	\N	Twentynine Palms	34.11311	-116.15582	92277	Boy Scout Trail To Willow Hole Extended Route	28324.384	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
324	\N	\N	Paicines	36.47823	-121.18393	95043	Moses Spring Trail to Bear Gulch Reservoir	1770.274	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
325	\N	\N	Paicines	36.49497	-121.17305	95043	Old Pinnacles Trail to Balconies	8207.634	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
326	\N	\N	Hume	36.79375	-118.59833	93633	Zumwalt Meadow Loop Trail	2414.01	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
327	\N	\N	Yosemite Valley	37.73974	-119.55992	\N	Mirror Lake Paved Trail	2574.944	4.5	1	out and back	['hiking', 'nature-trips', 'road-biking', 'walking']	\N
328	\N	\N	Ventura	34.04983	-119.55657	93001	Potato Harbor Trail	7885.766	4.5	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
329	\N	\N	Three Rivers	36.63392	-118.81743	93271	Muir Grove Trail	5954.558	4.5	3	out and back	['camping', 'hiking']	\N
330	\N	\N	Three Rivers	36.4533	-118.59676	93271	Monarch Lakes Trail	13518.456	4.5	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
331	\N	\N	Twentynine Palms	34.08116	-116.24206	92252	The Maze Loop	7563.898	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
332	\N	\N	Death Valley	36.27403	-116.79283	\N	Death Valley Natural Bridge Road	6920.162	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
333	\N	\N	Cedar Grove	36.78377	-118.62213	93633	Roaring River Falls Trail	482.802	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
334	\N	\N	Klamath	41.55442	-124.08646	95548	Hidden Beach and False Klamath Rock	12230.984	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
335	\N	\N	Dunlap	36.80293	-118.74364	93633	Grizzly Falls	160.934	4.5	1	out and back	['hiking', 'walking']	\N
336	\N	\N	Darwin	36.32748	-117.51472	93522	Darwin Falls Trail via Old Toll Road	3057.746	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
337	\N	\N	Ventura	34.04989	-119.55633	93001	Smugglers Cove Trail	12391.918	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
338	\N	\N	Paicines	36.4917	-121.20948	95043	Balconies Trail	13196.588	4.5	3	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
339	\N	\N	Fish Camp	37.50258	-119.60985	93623	Grizzly Giant Loop Trail	3218.68	4.5	1	loop	['hiking', 'trail-running']	\N
340	\N	\N	Three Rivers	36.45329	-118.59677	93271	Sawtooth Pass Trail	20438.618	5	5	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
341	\N	\N	Mi Wuk Village	37.99004	-119.88676	95364	Kibbie Lake Trail	21082.354	4.5	5	loop	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
342	\N	\N	Lee Vining	37.91008	-119.25818	\N	Gaylor Lakes Trail	5632.69	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
343	\N	\N	Paicines	36.49166	-121.20927	95043	Juniper Canyon Trail to High Peaks	5793.624	4.5	5	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
344	\N	\N	Twentynine Palms	34.02475	-116.14185	92277	Wall Street Mill Trail	3862.416	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
345	\N	\N	Three Rivers	36.55469	-118.7488	93262	Eagle View Trail	2414.01	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
346	\N	\N	Yosemite Valley	37.66167	-119.66137	95389	Dewey Point Trail	12070.05	4.5	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
347	\N	\N	Death Valley	36.42055	-116.84767	92328	Gower Gulch Loop Trail	6759.228	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
348	\N	\N	Death Valley	36.39584	-116.83872	92328	Desolation Canyon Trail	5793.624	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
349	\N	\N	Orick	41.29883	-124.0335	95555	Redwood Creek Trail	25105.704	4.5	3	out and back	['camping', 'hiking']	\N
350	\N	\N	Mammoth Lakes	37.61304	-119.07511	93546	John Muir Trail in Kings Canyon	134701.758	5	7	point to point	['backpacking', 'camping', 'hiking']	\N
351	\N	\N	Yosemite Valley	37.74019	-119.56424	95389	Snow Creek Falls Trail	32508.668	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
352	\N	\N	Yosemite Valley	37.81165	-119.50898	\N	May Lake High Sierra Camp from Tioga Pass Road	10299.776	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
353	\N	\N	Yucca Valley	34.07138	-116.39113	92284	Black Rock Canyon Trail to Warren Peak	8046.7	4.5	5	out and back	['hiking', 'trail-running']	\N
354	\N	\N	Three Rivers	36.35001	-118.76461	93265	Ladybug Camp Trail	11587.248	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
355	\N	\N	Yosemite Valley	37.74212	-119.60212	95389	El Capitan Loop	34600.81	4.5	7	loop	['backpacking', 'hiking']	\N
356	\N	\N	Yosemite Valley	37.71508	-119.67698	95389	Artist Point Trail	3701.482	4	3	out and back	['birding', 'hiking']	\N
357	\N	\N	Three Rivers	36.45305	-118.59643	93271	Franklin Lakes Trail	18024.608	4.5	5	out and back	['birding', 'camping', 'hiking', 'nature-trips']	\N
358	\N	\N	Yosemite Valley	37.87	-119.64876	\N	Grand Canyon of the Tuolumne	92858.918	5	3	loop	['backpacking', 'camping', 'hiking']	\N
359	\N	\N	Thousand Palms	33.92689	-116.18735	92241	Keys View Loop to Inspiration Point Trail	1931.208	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
360	\N	\N	Yosemite Valley	37.87746	-119.35324	95389	Young Lakes Trail Loop	27680.648	4.5	3	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
361	\N	\N	Yosemite Valley	37.83276	-119.49093	\N	May Lake	4506.152	4.5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
362	\N	\N	Yosemite Valley	37.87052	-119.35592	95389	Elizabeth Lake Trail	7885.766	4.5	3	out and back	['birding', 'hiking', 'walking']	\N
363	\N	\N	Groveland	37.94559	-119.78842	95321	Hetch Hetchy Loop via Lake Vernon	41520.972	4.5	5	loop	['backpacking', 'camping', 'fishing', 'hiking']	\N
364	\N	\N	Twentynine Palms	34.08105	-116.24199	92252	North View and Maze Trails	9495.106	4.5	3	loop	['hiking']	\N
365	\N	\N	Yosemite Valley	37.72704	-119.57498	95389	Panorama Trail to Little Yosemite Valley	33796.14	5	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
366	\N	\N	Dunlap	36.72091	-118.97058	93628	Big Stump Loop Trail	2896.812	4.5	1	loop	['hiking', 'nature-trips']	\N
367	\N	\N	Paicines	36.49191	-121.20958	95043	Balconies Cave Trail	4184.284	4.5	3	out and back	['hiking']	\N
368	\N	\N	Yosemite Valley	37.82575	-119.4701	\N	Sunrise Lakes Trail	15127.796	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
369	\N	\N	Yosemite Valley	37.74134	-119.60095	95389	Eagle Peak Trail	23013.562	4.5	5	out and back	['hiking']	\N
370	\N	\N	Yosemite Valley	37.87705	-119.33825	95389	Tuolumne Meadows to Yosemite Valley Trail	43774.048	5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
371	\N	\N	Old Station	40.53591	-121.5594	96088	Chaos Crags Trail	6437.36	4.5	3	out and back	['hiking', 'nature-trips', 'snowshoeing', 'trail-running']	\N
372	\N	\N	Yosemite Valley	37.87652	-119.34551	95389	Lyell Canyon and Vogelsang Loop Trail	31543.064	4.5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing']	\N
373	\N	\N	Yosemite Valley	37.54834	-119.63394	95389	Lower Chilnualna Falls Trail	965.604	4.5	3	out and back	['birding', 'hiking', 'walking']	\N
374	\N	\N	Ventura	34.04903	-119.5575	93001	Scorpion Bay to Cavern Point Loop	2574.944	4.5	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'paddle-sports', 'trail-running', 'walking', 'sea-kayaking']	\N
375	\N	\N	Twentynine Palms	34.0062	-116.08486	92277	Berdoo Canyon	39106.962	4.5	3	point to point	['birding', 'hiking', 'nature-trips', 'off-road-driving', 'scenic-driving']	\N
376	\N	\N	Death Valley	36.33004	-116.83007	92328	Artists Drive	15610.598	4.5	1	point to point	['road-biking', 'scenic-driving']	\N
377	\N	\N	Lee Vining	37.8909	-119.26293	95389	Mono Pass Trail	17380.872	4.5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
378	\N	\N	Paicines	36.49185	-121.20952	95043	Balconies Trail to Machete Ridge	2253.076	4.5	1	out and back	['hiking', 'walking']	\N
379	\N	\N	Yosemite Valley	37.66685	-119.60389	95389	Ostrander Lake Trail	19151.146	4.5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
380	\N	\N	Three Rivers	36.55493	-118.74971	93262	Tharp's Log Trail	3379.614	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
381	\N	\N	Yosemite Valley	37.72686	-119.57381	95389	Pohono Trail Glacier Point to Inspiration Point	19312.08	5	3	point to point	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
382	\N	\N	Yucca Valley	34.07652	-116.39906	92284	High View Nature Trail	2092.142	4.5	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
383	\N	\N	Yosemite Valley	37.74339	-119.5857	95389	Yosemite Valley to Tuolumne Meadows Trail	34761.744	4.5	3	point to point	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
384	\N	\N	Stony Creek Village	36.71824	-118.89684	93628	Buena Vista Trail	3218.68	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
385	\N	\N	Yosemite Valley	37.73397	-119.60189	95389	Four Mile Trail to Panorama Trail Loop	26232.242	5	7	loop	['hiking', 'nature-trips']	\N
386	\N	\N	Old Station	40.49452	-121.42323	96071	Cluster Lakes Loop Trail	16737.136	4.5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
387	\N	\N	Three Rivers	36.60456	-118.72403	93262	Lodgepole and Willow Meadow	5471.756	4.5	1	out and back	['hiking', 'nature-trips']	\N
388	\N	\N	Yosemite Valley	37.54627	-119.62943	95389	Swinging Bridge Trail	1931.208	4.5	1	out and back	['birding', 'hiking', 'walking']	\N
389	\N	\N	Long Barn	37.94624	-119.78792	95321	Rancheria Falls Trail	19151.146	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
390	\N	\N	Old Station	40.44391	-121.40467	96020	Boiling Springs Lake Loop Trail	3701.482	4.5	1	loop	['camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
391	\N	\N	Twentynine Palms	34.00616	-116.0849	92277	Joshua Tree National Park Geology OHV Tour Road	27519.714	4.5	3	loop	['mountain-biking', 'nature-trips', 'off-road-driving', 'scenic-driving']	\N
392	\N	\N	Three Rivers	36.59665	-118.73493	93262	Nine Lakes Basin Loop Trail	91732.38	5	5	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
393	\N	\N	Old Station	40.45992	-121.47442	96071	Cold Boiling Lake Trail to Bumpass Hell Trail	8690.436	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
394	\N	\N	Hume	36.79439	-118.58391	93633	Road's End to the Bailey Bridge	7081.096	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
395	\N	\N	Yosemite Valley	37.73897	-119.57274	95389	Yosemite Grand Tour	24301.034	5	5	loop	['hiking', 'nature-trips']	\N
396	\N	\N	Yosemite Valley	37.53617	-119.65637	95389	Wawona Meadow Loop Trail	5793.624	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
397	\N	\N	Yosemite Valley	37.76321	-119.84228	\N	Merced Grove Trail	6598.294	4	1	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
398	\N	\N	Yosemite Valley	37.71652	-119.65116	95389	West Valley Loop Trail	10621.644	4.5	1	loop	['camping', 'hiking', 'road-biking', 'snowshoeing', 'trail-running', 'walking', 'horseback-riding']	\N
399	\N	\N	Paicines	36.48104	-121.18142	95043	High Peaks and Bear Gulch Loop Trail	12391.918	4.5	5	loop	['birding', 'hiking']	\N
400	\N	\N	Twentynine Palms	34.02366	-116.07747	92277	Desert Queen Mine and Eagle Cliff Boulder House	5471.756	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
401	\N	\N	Three Rivers	36.52758	-118.75106	93271	Bearpaw Meadow to Redwood Meadow Trail	33474.272	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
402	\N	\N	Twentynine Palms	33.98907	-116.16396	\N	Cap Rock and Gram Parsons Nature Trail	1126.538	4	1	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running', 'walking']	\N
403	\N	\N	Three Rivers	36.56491	-118.77284	93262	Sunset Rock	3218.68	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
404	\N	\N	Death Valley	36.29856	-116.8117	\N	Devil's Golf Course	4184.284	4	1	out and back	['scenic-driving', 'walking']	\N
405	\N	\N	Yosemite Valley	37.82577	-119.47027	\N	May Lake from Sunrise Lakes Trailhead	10943.512	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
406	\N	\N	Three Rivers	36.52061	-118.77135	93262	Paradise Creek Trail	8851.37	4	1	out and back	['hiking']	\N
407	\N	\N	Death Valley	36.33218	-116.80642	92328	Artist's Palette	643.736	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
408	\N	\N	Dunlap	36.74707	-118.97456	93628	North Grove Loop Trail	4506.152	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
409	\N	\N	Yosemite Valley	37.87324	-119.3827	95389	Tuolumne Meadow to Cathedral Pass	12874.72	5	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'rock-climbing', 'walking', 'horseback-riding']	\N
410	\N	\N	Twentynine Palms	34.09477	-116.16852	92277	Indian Cove Campground Trail	965.604	4.5	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing', 'walking']	\N
411	\N	\N	Cedar Grove	36.79343	-118.66871	93633	Hotel Creek Trail to Cedar Grove Overlook	6115.492	4.5	3	out and back	['hiking', 'trail-running']	\N
412	\N	\N	Old Station	40.44875	-121.5358	96071	Ridge Lakes Trail	3218.68	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
413	\N	\N	Twentynine Palms	33.99859	-116.14504	\N	Hall of Horrors	965.604	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
414	\N	\N	Death Valley	36.06593	-116.74484	\N	Sidewinder Canyon	6276.426	4.5	3	out and back	['hiking']	\N
415	\N	\N	Chester	40.44308	-121.39718	96020	Terminal Geyser & Boiling Springs Lake	9173.238	4.5	3	loop	['hiking', 'nature-trips']	\N
416	\N	\N	Three Rivers	36.45327	-118.59676	93271	Crystal Lake via Sawtooth Pass Trail	14162.192	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
417	\N	\N	Three Rivers	36.60488	-118.72526	93262	Ranger Lake	34922.678	5	3	out and back	['backpacking', 'camping', 'hiking']	\N
418	\N	\N	Death Valley	36.64232	-117.26994	\N	Cottonwood-Marble Canyon Loop	51177.012	4.5	7	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
419	\N	\N	Death Valley	36.45381	-117.45123	\N	Panamint Dunes Trail	5632.69	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
420	\N	\N	Yosemite Valley	37.82661	-119.59636	95389	Yosemite Creek Trail	19312.08	5	3	out and back	['camping', 'hiking', 'nature-trips']	\N
421	\N	\N	Twentynine Palms	34.12131	-115.79436	92277	Old Dale Road	42325.642	4.5	5	point to point	['off-road-driving', 'scenic-driving']	\N
422	\N	\N	Joshua Tree	34.04114	-116.18583	92277	Joshua Tree Boy Scout Trail	12552.852	4.5	3	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
423	\N	\N	Twentynine Palms	34.00957	-116.05583	92277	Eagle Cliff Mine	3701.482	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
424	\N	\N	Yosemite Valley	37.73794	-119.57	95389	East Valley Floor Trail	9977.908	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
425	\N	\N	Three Rivers	36.4527	-118.59656	93271	Mineral King Loop	60350.25	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
426	\N	\N	Old Station	40.49808	-121.42736	96071	Echo Lake Trail	7563.898	4.5	3	out and back	['backpacking', 'hiking', 'trail-running']	\N
427	\N	\N	Yosemite Valley	37.8776	-119.33369	95389	Lembert Dome Trail	3862.416	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
428	\N	\N	Yosemite Valley	37.82578	-119.46992	\N	Clouds Rest Loop	30255.592	4.5	5	loop	['backpacking', 'camping', 'hiking']	\N
429	\N	\N	Yosemite Valley	37.73266	-119.55842	95389	Vernal, Nevada, and Illilouette Fall Route	18990.212	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
430	\N	\N	Paicines	36.47819	-121.1839	95043	Chalone Peak Trail	12391.918	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
431	\N	\N	Yosemite Valley	37.72039	-119.64861	95389	Bridalveil Falls from Southside Drive	1126.538	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
432	\N	\N	Yosemite Valley	37.71235	-119.58631	95389	Pohnono Trail to Sentinel Dome Trail Loop	6115.492	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
433	\N	\N	Paicines	36.48131	-121.18144	95043	Condor Gulch Trail To Overlook	2896.812	4.5	3	out and back	['hiking']	\N
434	\N	\N	Orick	41.30748	-124.05676	95555	Skunk Cabbage Trail	11748.182	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
435	\N	\N	Ventura	34.04834	-119.55981	93001	El Montanon Trail	13679.39	4.5	5	loop	['birding', 'hiking', 'nature-trips']	\N
436	\N	\N	Sequoia National Park	36.55472	-118.74886	93262	Bearpaw Meadow to Hamilton Lake Trail	47636.464	5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
437	\N	\N	Three Rivers	36.55502	-118.74974	93262	Crescent Meadow Loop Trail	2735.878	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
438	\N	\N	Death Valley	37.01083	-117.4549	\N	Ubehebe and Little Hebe Crater Trail	3540.548	4	1	loop	['hiking', 'nature-trips', 'walking']	\N
439	\N	\N	Yucca Valley	34.07152	-116.39088	92284	Black Rock Canyon Trail	4828.02	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
440	\N	\N	Yosemite Valley	37.87714	-119.39493	95389	Pothole Dome Trail	1609.34	4.5	1	out and back	['birding', 'hiking', 'nature-trips']	\N
441	\N	\N	Yosemite Valley	37.87791	-119.33884	95389	Tuolumne River Loop: Dana and Lyell Forks	5793.624	5	1	loop	['birding', 'hiking', 'trail-running', 'walking']	\N
442	\N	\N	Yosemite Valley	37.72749	-119.57416	95389	Panorama Trail	14484.06	5	5	out and back	['hiking', 'trail-running']	\N
443	\N	\N	Three Rivers	36.51472	-118.80094	93262	Potwisha Campground Trail	2896.812	4.5	1	loop	['camping', 'hiking', 'trail-running', 'walking']	\N
444	\N	\N	Yosemite Valley	37.7149	-119.67668	95389	Stanford Point Trail	13357.522	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
445	\N	\N	Old Station	40.50963	-121.46519	\N	Paradise Meadow Trail	4345.218	4.5	3	out and back	['hiking', 'trail-running']	\N
446	\N	\N	Death Valley	36.5907	-116.98989	92328	Salt Creek Interpretive Trail	1448.406	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
447	\N	\N	Independence	36.72699	-118.279	93526	Mount Williamson Trail	35727.348	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing']	\N
448	\N	\N	Yosemite Valley	37.8775	-119.35347	95389	Dog Lake Trail	5793.624	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
449	\N	\N	Dunlap	36.7538	-118.94648	93628	Park Ridge Trail Panoramic Point to Park Ridge Fire Lookout	7885.766	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
450	\N	\N	Three Rivers	36.44841	-118.59535	93271	First Mosquito Lake Trail	10299.776	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
451	\N	\N	Yosemite Valley	37.67062	-119.6279	95389	Dewey Point via McGurk Meadow Trail	12070.05	4.5	3	out and back	['hiking']	\N
452	\N	\N	Twentynine Palms	33.9887	-116.15398	92277	Ryan Ranch Trail	2414.01	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
453	\N	\N	Hume	36.79437	-118.58393	93633	Bubbs Creek Trail	39589.764	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
454	\N	\N	Old Station	40.46058	-121.45938	96061	Kings Creek Falls, Bench Lake, and Sifford Lake Loop Trail	10138.842	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
455	\N	\N	McArthur	40.56518	-121.30164	\N	Butte Lake-Snag Lake-Cinder Cone Loop	19955.816	4.5	5	loop	['camping', 'hiking']	\N
456	\N	\N	Yosemite Valley	37.72756	-119.57443	95389	Taft Point via Glacier Point	12070.05	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
457	\N	\N	Old Station	40.45994	-121.47426	96071	Cold Boiling Lake Trail	2253.076	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
458	\N	\N	Yosemite Valley	37.86871	-119.35538	95389	John Muir Trail: Tuolumne to Reds Meadow	52464.484	5	5	point to point	['backpacking', 'hiking', 'nature-trips']	\N
459	\N	\N	Yosemite Valley	37.71547	-119.67712	95389	The Pohono Trail from Inspiration Point	36210.15	5	7	loop	['birding', 'camping', 'hiking', 'nature-trips']	\N
460	\N	\N	Yucca Valley	34.07305	-116.39161	92284	West Side Loop Trail	7081.096	4.5	3	loop	['birding', 'hiking', 'trail-running', 'horseback-riding']	\N
461	\N	\N	Old Station	40.44862	-121.5357	96071	Sulphur Works	965.604	3.5	1	out and back	['nature-trips', 'walking']	\N
462	\N	\N	Yosemite Valley	37.73268	-119.55784	95389	John Muir Trail: Happy Isles to Tuolumne Meadows	33635.206	4.5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'walking']	\N
463	\N	\N	Yosemite Valley	37.87201	-119.37075	95389	Soda Springs and Parsons Lodge Trail	2574.944	4	1	out and back	['hiking', 'walking']	\N
464	\N	\N	Three Rivers	36.52054	-118.77148	93262	Middle Fork Kaweah Falls from Hospital Rock	14644.994	4	5	out and back	['backpacking', 'camping', 'hiking']	\N
465	\N	\N	Yosemite Valley	37.72709	-119.57576	95389	Pohono Trail: Glacier Point to Dewey Point	32186.8	5	3	loop	['backpacking', 'birding', 'camping', 'hiking']	\N
466	\N	\N	Orick	41.59422	-124.0992	95548	Yurok Loop Trail	3379.614	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
467	\N	\N	Mecca	33.74456	-115.81238	92277	Cottonwood Spring Nature Trail	2414.01	4	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
468	\N	\N	Twentynine Palms	34.09467	-116.16849	92277	Joshua Tree Peak Trail	4828.02	4.5	5	loop	['hiking', 'rock-climbing']	\N
469	\N	\N	Twentynine Palms	34.0251	-116.14182	92277	Garrett's Arch	7242.03	4.5	3	loop	['hiking', 'nature-trips']	\N
470	\N	\N	Seven Pines	36.77243	-118.34139	93526	Onion Valley, Kearsarge Pass, Forrester Pass, Shepherds Pass Backpacking Trip	88352.766	5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'horseback-riding']	\N
471	\N	\N	Death Valley	36.58239	-117.10433	92328	Grotto Canyon	3379.614	4	3	out and back	['birding', 'hiking', 'rock-climbing']	\N
472	\N	\N	Mecca	33.74795	-115.82493	92277	Pinkham Canyon OHV Road	30577.46	4	3	point to point	['mountain-biking', 'off-road-driving']	\N
473	\N	\N	Yosemite Valley	37.87745	-119.35383	95389	PCT: CA Section I - Tuolumne Meadow to Sonora Pass	109917.922	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'trail-running', 'horseback-riding']	\N
474	\N	\N	Independence	36.7725	-118.34123	93526	Onion Valley to Gardiner Lake	56487.834	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
475	\N	\N	Santa Barbara	34.01755	-119.68325	93001	Santa Cruz Island: Pelican Bay And Prisoners Harbor Trails	13840.324	4.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
476	\N	\N	Ventura	34.01662	-119.36207	93001	East Anacapa Island Trail	3862.416	4.5	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
477	\N	\N	Darwin	36.30312	-117.52471	93522	Darwin Falls Trail	9334.172	4	3	out and back	['hiking', 'nature-trips']	\N
478	\N	\N	Yosemite Valley	37.72675	-119.57363	95389	Merced Lake Loop Trail	52142.616	5	3	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'walking']	\N
479	\N	\N	Yosemite Valley	37.87733	-119.35325	95389	Waterwheel Falls and Glen Aulin Trail	27358.78	4.5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
480	\N	\N	Yosemite Valley	37.82721	-119.46891	\N	Murphy Creek Trail to Polly Dome Lake	10299.776	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
481	\N	\N	Yosemite Valley	37.66476	-119.6634	95389	Badger Pass to Glacier Point Trail	34922.678	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'skiing', 'snowshoeing', 'cross-country-skiing']	\N
482	\N	\N	Hume	36.79631	-118.58385	93633	Copper Creek Trail	36692.952	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
483	\N	\N	Yosemite Valley	37.74251	-119.6024	95389	Valley Loop Trail	9334.172	4	1	loop	['hiking']	\N
484	\N	\N	Three Rivers	36.4534	-118.59651	93271	Mineral King: Black Rock Pass Loop	46831.794	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
485	\N	\N	Yosemite Valley	37.66194	-119.61941	95389	Bridalveil Creek Loop Trail	9977.908	4.5	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'walking', 'cross-country-skiing', 'horseback-riding']	\N
486	\N	\N	Stony Creek Village	36.72313	-118.76552	\N	Seville Lake Trail	20760.486	4	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
487	\N	\N	Lone Pine	36.44785	-118.1705	93545	Horseshoe Meadow Trail	114102.206	5	5	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
488	\N	\N	Twentynine Palms	34.02377	-116.07778	92277	Pine City Trail	6598.294	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
489	\N	\N	Three Rivers	36.44836	-118.59535	93271	White Chief Canyon Trail	11426.314	5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
490	\N	\N	Yosemite Valley	37.73468	-119.56583	95389	Happy Isles to Cloud's Rest Loop	34439.876	5	5	loop	['backpacking', 'camping', 'hiking']	\N
491	\N	\N	Old Station	40.47636	-121.47908	96061	Terrace, Shadow, and Cliff Lakes	5310.822	4.5	1	out and back	['hiking', 'trail-running']	\N
492	\N	\N	Twentynine Palms	34.07219	-116.03284	92277	Contact Mine Trail	6759.228	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
493	\N	\N	Seven Pines	36.77292	-118.3399	93526	Onion Valley Campground to Rae Lakes via Kearsarge Pass	38302.292	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
494	\N	\N	Yosemite Valley	37.73275	-119.55784	95389	Vernal Fall Foot Bridge via Mist and John Muir Trail	3701.482	4.5	3	loop	['hiking', 'nature-trips']	\N
495	\N	\N	Joshua Tree	34.13363	-116.31525	92252	Joshua Tree National Park Scenic Drive	163508.944	4.5	1	point to point	['road-biking', 'scenic-driving']	\N
496	\N	\N	Dunlap	36.78882	-118.67036	93633	Don Cecil Trail	14966.862	4	5	out and back	['birding', 'hiking']	\N
497	\N	\N	Old Station	40.52691	-121.56122	96088	Manzanita Creek Trail	10782.578	4	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'cross-country-skiing']	\N
498	\N	\N	Fish Camp	37.5059	-119.59946	93623	Mariposa Cabin Trail	3379.614	5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
499	\N	\N	Soledad	36.49488	-121.17303	95043	Old Pinnacles, Balconies Cliffs, Juniper Canyon, High Peaks and Bench Trail Loop	13840.324	4.5	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
500	\N	\N	Yosemite Valley	37.87584	-119.39182	95389	Tuolumne River Trail	5471.756	4.5	1	out and back	['birding', 'hiking', 'trail-running', 'walking']	\N
501	\N	\N	Ventura	34.04985	-119.55645	93001	Scorpion Canyon Loop Trail	7242.03	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
502	\N	\N	Yosemite Valley	37.87205	-119.37075	95389	Waterwheel Falls Trail	57936.24	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
503	\N	\N	Yosemite Valley	37.81161	-119.50897	\N	May Lake to Glen Aulin Trail	35083.612	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
504	\N	\N	Yucca Valley	34.07328	-116.39056	92284	California Riding and Hiking Trail	60511.184	4.5	5	point to point	['backpacking', 'camping', 'hiking', 'trail-running']	\N
505	\N	\N	Lone Pine	36.45306	-118.1699	93545	Horseshoe Meadows to Mount Whitney and Whitney Portal Trailhead via New Army Pass	60511.184	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
506	\N	\N	Yosemite Valley	37.67052	-119.62794	95389	McGurk Meadow Trail	5632.69	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
507	\N	\N	Yosemite Valley	37.8512	-119.61544	95389	Lukens Lake Trail	3540.548	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
508	\N	\N	Chester	40.45104	-121.29546	96020	Mount Harkness Loop Trail	9173.238	4.5	3	loop	['camping', 'hiking', 'nature-trips', 'trail-running']	\N
509	\N	\N	Death Valley	36.8222	-117.17391	\N	Fall Canyon Trail	10621.644	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
510	\N	\N	Orick	41.20545	-123.95049	95555	Dolason Prairie Trail	14001.258	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
511	\N	\N	Twentynine Palms	33.99795	-116.06016	92277	Skull Rock Discovery Trail	1126.538	4	1	loop	['hiking', 'nature-trips', 'walking']	\N
512	\N	\N	Three Rivers	36.55501	-118.74921	93262	Sugar Pine Trail	6598.294	4.5	1	loop	['hiking', 'trail-running']	\N
513	\N	\N	Chester	40.31167	-121.22726	96020	Lassen Volcanic National Park Scenic Drive	100905.618	4.5	1	point to point	['scenic-driving', 'walking']	\N
514	\N	\N	Yosemite Valley	37.87752	-119.35402	95389	Waterwheel Falls and the Grand Canyon of the Tuolumne Trail	43934.982	4.5	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
515	\N	\N	Three Rivers	36.56535	-118.77398	93262	Bear Hill Trail	3057.746	4.5	1	loop	['hiking', 'trail-running', 'walking']	\N
516	\N	\N	Stony Creek Village	36.74012	-118.96288	93633	Sequoia Lake Trail	9656.04	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
517	\N	\N	Yosemite Valley	37.87749	-119.3539	95389	The High Sierra Camp Loop Trail	73707.772	5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
518	\N	\N	Yosemite Valley	37.74001	-119.56425	95389	Mirror Lake, Snow Creek, and Upper Yosemite Falls Loop	25427.572	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
519	\N	\N	Klamath	41.55436	-124.08652	95548	Klamath Overlook	1609.34	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
520	\N	\N	Three Rivers	36.45331	-118.59681	93271	Sawtooth Pass Trail to Columbine Lake	20760.486	5	5	out and back	['hiking']	\N
521	\N	\N	Twentynine Palms	34.01578	-116.16277	92277	Hidden Valley Campground to Barker Dam Nature Trail	7081.096	4	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
522	\N	\N	Yosemite Valley	37.72707	-119.57521	95389	Glacier Point to Union Point	5954.558	5	3	out and back	['hiking', 'nature-trips']	\N
523	\N	\N	Death Valley	36.51645	-116.67861	92328	Echo Pass and Inyo Mine OHV Loop	11748.182	4.5	3	loop	['off-road-driving']	\N
524	\N	\N	Lee Vining	37.87804	-119.33888	95389	Lembert Dome from Tuolomne Meadows Lodge Road	2896.812	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
525	\N	\N	Ventura	34.01796	-119.68269	93001	Del Norte and Montanon Trail to Scorpion Campgroud	20116.75	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
526	\N	\N	Three Rivers	36.3497	-118.76517	93265	Garfield Grove Trail	21887.024	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
527	\N	\N	Yosemite Valley	37.67052	-119.62793	95389	Dewey, Crocker, and Stanford Point via the Pohono Trail	14966.862	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
528	\N	\N	Dunlap	36.76906	-118.71729	93633	Lookout Peak Hike	1609.34	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
529	\N	\N	Yosemite Valley	37.57543	-119.68064	95389	Alder Creek Loop Trail	25427.572	4	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
530	\N	\N	Yosemite Valley	37.87079	-119.35591	95389	Nelson Lake Trail	17863.674	5	3	out and back	['backpacking', 'camping', 'fishing', 'hiking']	\N
531	\N	\N	Cedar Grove	36.75378	-118.94655	93628	Panoramic Point	804.67	4.5	1	loop	['nature-trips', 'walking']	\N
736	\N	\N	Death Valley	36.22096	-116.72655	\N	Mt. Perry	14001.258	4.5	3	out and back	['hiking']	\N
532	\N	\N	Yosemite Valley	37.70313	-119.75442	95389	Little Nellie Falls Trail	8851.37	3.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
533	\N	\N	Yosemite Valley	37.72736	-119.57502	95389	Glacier Point to Half Dome	32669.602	4.5	7	out and back	['hiking', 'nature-trips']	\N
534	\N	\N	Yosemite Valley	37.87197	-119.38366	95389	Cathedral Lakes to Clouds Rest	36853.886	4.5	5	point to point	['backpacking', 'birding', 'camping', 'nature-trips', 'walking']	\N
535	\N	\N	Johnsondale	36.02707	-118.51524	93208	Alder Creek Falls	2574.944	4.5	1	out and back	['hiking', 'walking']	\N
536	\N	\N	Hume	36.79423	-118.58248	93633	Granite Lake and Granite Pass Trail	30738.394	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
537	\N	\N	Yosemite Valley	37.75163	-119.73651	95389	Tamarack Flat to El Capitan	27358.78	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'trail-running']	\N
538	\N	\N	Yucca Valley	34.07332	-116.39031	92284	Eureka Peak Trail	15932.466	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
539	\N	\N	Yosemite Valley	37.74255	-119.60239	95389	North Dome Trail via Upper Yosemite Falls Trail	22852.628	4.5	7	out and back	['birding', 'hiking', 'nature-trips']	\N
540	\N	\N	Death Valley	36.42082	-116.81018	92328	Zabriskie Point and Gower Gulch Path Loop	4345.218	4.5	3	loop	['hiking']	\N
541	\N	\N	Three Rivers	36.45331	-118.5968	93271	Timber Gap Trail	15771.532	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
542	\N	\N	Twentynine Palms	34.0616	-116.22756	92252	Samuelsons Rocks Trail	4988.954	4.5	3	loop	['birding', 'hiking', 'nature-trips']	\N
543	\N	\N	Twentynine Palms	34.12848	-116.03731	92277	Oasis of Mara Nature Trail	965.604	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
544	\N	\N	Old Station	40.56631	-121.29701	\N	Butte Lake, Snag Lake, Twin Lake, Silver Lake Loop	42808.444	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
545	\N	\N	Death Valley	36.47987	-116.8733	92328	Harmony Borax Works	643.736	3.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
546	\N	\N	Death Valley	36.73892	-116.96825	92328	Corkscrew Peak	11265.38	4.5	5	out and back	['hiking']	\N
547	\N	\N	Oakhurst	37.53083	-119.44723	93604	Clark Range Circuit	70650.026	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
548	\N	\N	Three Rivers	36.45143	-118.61145	93271	Cold Springs Nature Trail	3701.482	4	1	out and back	['hiking']	\N
549	\N	\N	Coolidge Springs	33.84607	-115.77752	92277	Porcupine Wash Ruby Lee Mill Site Trail	14162.192	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
550	\N	\N	Yosemite Valley	37.71513	-119.67665	95389	Tunnel View to Dewey Point	14966.862	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
551	\N	\N	Old Station	40.49788	-121.42716	96071	Summit, Horshoe, Snag, Cinder Cone, Rainbow, Twin, and Echo Lakes Loop	41681.906	4	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing']	\N
552	\N	\N	Twentynine Palms	33.99185	-116.06787	\N	Crown Prince Lookout Trail	6276.426	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
553	\N	\N	Paicines	36.49163	-121.20941	95043	Juniper Canyon Trail to High Peaks Trail Loop	11426.314	4.5	5	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
554	\N	\N	Cedar Grove	36.71731	-118.9639	93641	Kings Canyon National Scenic Byway	119734.896	4.5	3	loop	['bike-touring', 'birding', 'camping', 'mountain-biking', 'nature-trips', 'paddle-sports', 'scenic-driving', 'whitewater-kayaking', 'fly-fishing', 'canoeing']	\N
555	\N	\N	Yosemite Valley	37.79547	-119.34574	95389	Vogelsang Camp to Merced Lake Trail	23496.364	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
556	\N	\N	Three Rivers	36.46502	-118.67176	93271	Paradise Ridge Trail	9656.04	4.5	3	out and back	['camping', 'hiking', 'nature-trips']	\N
557	\N	\N	Twentynine Palms	34.09453	-116.16852	92277	Sneakeye Spring Trail	1609.34	4.5	3	out and back	['hiking']	\N
558	\N	\N	Seven Pines	36.77248	-118.34138	93526	Mount Gould Trail	14484.06	4.5	5	out and back	['backpacking', 'birding', 'fishing', 'hiking', 'nature-trips', 'trail-running']	\N
559	\N	\N	Death Valley	36.06574	-116.74471	\N	Willow Canyon Trail	7402.964	4.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
560	\N	\N	Three Rivers	36.46454	-118.66717	93271	Evelyn Lake Trail	38463.226	5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
561	\N	\N	Three Rivers	36.60488	-118.72401	93262	Deadman Canyon Backpack Trip	78535.792	5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
562	\N	\N	Old Station	40.49811	-121.42703	96071	Summit Lake, Horshoe Lake, Snag Lake, Cinder Cone, Twin Lakes, and Echo Lake loop	42486.576	5	5	loop	['backpacking', 'camping', 'hiking', 'trail-running']	\N
563	\N	\N	Orick	41.31742	-124.04071	95555	Berry Glen and Lady Bird Grove Trail	9656.04	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
564	\N	\N	Yosemite Valley	37.74759	-119.80408	95389	Crane Flat Lookout Trail	4506.152	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking', 'cross-country-skiing']	\N
565	\N	\N	Lone Pine	36.83402	-117.73855	\N	Saline Valley Hot Spring	482.802	5	1	out and back	['hiking', 'walking']	\N
566	\N	\N	Old Station	40.49451	-121.42319	96071	Rainbow Lake Trail	16415.268	5	3	out and back	['fishing', 'hiking', 'paddle-sports', 'whitewater-kayaking', 'canoeing']	\N
567	\N	\N	Klamath	41.52392	-124.04565	95548	Flint Ridge Section Trail	12713.786	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
568	\N	\N	Old Station	40.47637	-121.47912	96061	Shadow Lake Trail	2896.812	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
569	\N	\N	Twentynine Palms	33.97758	-116.16596	92277	California Riding and Hiking Trail: Keys View Road to Pinto Basin Road	17059.004	4.5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
570	\N	\N	Yosemite Valley	37.72521	-119.64451	95389	Old Big Oak Flat Access Road	6598.294	3.5	5	out and back	['hiking', 'rock-climbing']	\N
571	\N	\N	Mecca	33.68143	-115.80178	92201	Bajada Nature Walk	482.802	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
572	\N	\N	Lee Vining	37.87817	-119.3387	95389	Mount Lyell	42486.576	5	7	out and back	['backpacking', 'camping', 'nature-trips', 'rock-climbing', 'cross-country-skiing']	\N
573	\N	\N	Twentynine Palms	34.01797	-116.08247	92277	Lucky Boy Vista Trail to Elton Mine	4828.02	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
574	\N	\N	Yosemite Valley	37.73837	-119.40634	\N	Merced Lake to Sunrise Camp Trail	19473.014	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking']	\N
575	\N	\N	Yosemite Valley	37.73468	-119.56577	95389	Merced Lake Trail	55361.296	5	7	loop	['birding', 'hiking', 'nature-trips']	\N
576	\N	\N	Groveland	37.94667	-119.78729	95321	Beehive Meadow Trail	16254.334	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
577	\N	\N	Three Rivers	36.52367	-118.76541	93262	Middle Fork Kaweah Trail	39750.698	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'cross-country-skiing']	\N
578	\N	\N	Three Rivers	36.52073	-118.77161	93262	Hospital Rock to Potwisha Trail	7563.898	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
579	\N	\N	Twentynine Palms	34.09708	-116.15675	92277	Mount Bob Loop from Indian Cove Campground	7402.964	4	5	loop	['birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing']	\N
580	\N	\N	Yosemite Valley	37.72967	-119.55962	95389	The Clark Range and Red Peak Pass Trail	74029.64	5	5	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
581	\N	\N	Independence	36.7725	-118.34112	93526	Bullfrog Lake	21082.354	4.5	5	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running', 'walking']	\N
582	\N	\N	Yosemite Valley	37.74299	-119.6032	95389	Yosemite Falls Trail to North Dome	22047.958	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
583	\N	\N	Yosemite Valley	37.86981	-119.64889	\N	Lukens Lake from White Wolf	7885.766	4.5	1	out and back	['hiking']	\N
584	\N	\N	Yosemite Valley	37.87063	-119.3558	95389	Vogelsang Lake and Volesang Pass Trail	28163.45	5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
585	\N	\N	Crescent City	41.75723	-124.14596	95531	Mill Creek Horse Trail	14966.862	4.5	5	loop	['birding', 'hiking', 'mountain-biking', 'nature-trips']	\N
586	\N	\N	Joshua Tree	34.08099	-116.24233	92252	Big Pine Trail	13679.39	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
587	\N	\N	Crescent City	41.70647	-124.14323	95531	Last Chance California Coastal Trail	2253.076	4	3	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
588	\N	\N	Death Valley	37.0128	-117.45775	\N	Racetrack Valley OHV Road	46509.926	4.5	3	point to point	['mountain-biking', 'off-road-driving']	\N
589	\N	\N	Yosemite Valley	37.74234	-119.55784	95389	Mist Trail, Cloud Rest, May Lake and Snow Creek Loop	58258.108	4.5	5	loop	['backpacking', 'camping', 'hiking', 'trail-running']	\N
590	\N	\N	Three Rivers	36.44882	-118.59544	93271	Eagle and Mosquito Lakes	14484.06	5	5	out and back	['hiking']	\N
591	\N	\N	Twentynine Palms	33.97674	-116.16497	92277	Quail Mountain via Juniper Flats	20599.552	4.5	5	loop	['camping', 'hiking', 'nature-trips', 'trail-running']	\N
592	\N	\N	Death Valley	36.45958	-116.85234	92328	Texas Springs Trail	2896.812	4.5	1	out and back	['camping', 'hiking', 'walking']	\N
593	\N	\N	Old Station	40.538	-121.56756	96088	Reflection Lake Trail	965.604	4	1	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
594	\N	\N	Paicines	36.4785	-121.18361	95043	High Peaks Trail to Old Pinnacles Trail to Condor Gulch Trail Loop	19473.014	4	5	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
595	\N	\N	Trona	35.85897	-117.17974	93592	Goler Canyon OHV Road	17541.806	5	3	point to point	['camping', 'off-road-driving']	\N
596	\N	\N	Yosemite Valley	37.67445	-119.65124	95389	Dewey Point Trail	7563.898	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
597	\N	\N	Fish Camp	37.53649	-119.65615	95389	Mariposa Grove to Wawona Lodge	17863.674	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
598	\N	\N	Death Valley	35.93775	-116.70463	\N	Death Valley West Side OHV Road	57614.372	4.5	1	point to point	['off-road-driving']	\N
599	\N	\N	Twentynine Palms	33.97667	-116.16523	92277	Stubby Springs Loop	20599.552	4.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
600	\N	\N	Twentynine Palms	33.97667	-115.68128	\N	Brooklyn Mine OHV Trail	16737.136	4.5	3	out and back	['off-road-driving']	\N
601	\N	\N	Yosemite Valley	37.73945	-119.56006	\N	Snow Creek Falls, Tenaya Lake, Yosemite Valley via JMT	40394.434	4	7	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'fly-fishing']	\N
602	\N	\N	Twentynine Palms	33.90172	-115.83481	\N	Pinto Mountain Trail	16898.07	4	5	loop	['birding', 'hiking', 'nature-trips']	\N
603	\N	\N	Yosemite Valley	37.6714	-119.58512	95389	Mono Meadow Trail	9334.172	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
604	\N	\N	Independence	36.72711	-118.27889	93526	Mount Tyndall Trail	31221.196	4.5	5	out and back	['backpacking', 'birding', 'hiking']	\N
605	\N	\N	Three Rivers	36.55462	-118.74869	93262	Bobcat Point Loop	2092.142	3.5	1	loop	['hiking', 'walking']	\N
606	\N	\N	Groveland	37.89319	-119.84134	95321	Lookout Point Trail	4345.218	4.5	3	out and back	['hiking']	\N
607	\N	\N	Death Valley	37.01081	-117.45493	\N	Ubeheh Crater Path	965.604	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
608	\N	\N	Yosemite Valley	37.80679	-119.54619	\N	Porcupine Creek to Indian Rock, North Dome, and Columbia Rock via Tioga Pass Road	20438.618	5	5	point to point	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
609	\N	\N	Yosemite Valley	37.74284	-119.60292	95389	Upper Yosemite Falls, North Dome, Indian Rock, Snow Creek	27036.912	4.5	7	point to point	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
610	\N	\N	Mecca	33.73715	-115.81099	92277	Conejo Well and Eagle Mountains Trail	21726.09	4.5	3	out and back	['backpacking', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
611	\N	\N	Yosemite Valley	37.87732	-119.35339	95389	Young Lakes via Dog Lake Trail	22208.892	4.5	5	out and back	['backpacking', 'birding', 'camping', 'nature-trips']	\N
652	\N	\N	Yosemite Valley	37.73235	-119.5595	95389	Mirror Lake, Valley Loop Trail	16576.202	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
612	\N	\N	Yosemite Valley	37.87771	-119.33862	95389	John Muir Trail: Tuolume Meadows to Donohue Pass	21404.222	4.5	5	point to point	['backpacking', 'camping', 'fishing', 'nature-trips', 'horseback-riding']	\N
613	\N	\N	Lee Vining	37.89027	-119.2623	95389	Mono and Parker Pass Trail to Spillway Lake	13196.588	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
614	\N	\N	Paicines	36.48288	-121.16193	95043	Condor Gulch Overlook Loop via Peaks View Area	9173.238	4.5	3	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
615	\N	\N	Old Station	40.51565	-121.46505	\N	Devastated Area Interpretive Trail	482.802	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
616	\N	\N	Old Station	40.45996	-121.4744	96071	Crumbaugh Lake via Cold Boiling Lake Trail	4184.284	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
617	\N	\N	Yosemite Valley	37.71381	-119.73242	95389	North Rim Trail	43130.312	4.5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
618	\N	\N	Yosemite Valley	37.87204	-119.38362	95389	Cathedral Lakes Trailhead to Yosemite Valley via Half Dome	52947.286	4.5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
619	\N	\N	Bishop	37.11194	-117.6807	\N	Eureka Dunes	5632.69	4.5	3	loop	['camping', 'hiking', 'nature-trips', 'walking']	\N
620	\N	\N	Ventura	34.0195	-119.68476	93001	Cueva Valdez to Arch Rock Trail	11748.182	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking', 'sea-kayaking']	\N
621	\N	\N	Old Station	40.46061	-121.4594	96061	King Creek Falls, Bench and Seaford Lakes	8207.634	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
622	\N	\N	Shaver Lake	36.86418	-119.02821	93634	Kings River Trail	6115.492	4	1	out and back	['hiking', 'nature-trips', 'trail-running']	\N
623	\N	\N	Paicines	36.48772	-121.15168	95043	Bench Trail	7724.832	4	3	out and back	['hiking']	\N
624	\N	\N	Yosemite Valley	37.87227	-119.64926	\N	Harden Lake Trail	8529.502	4	3	out and back	['camping', 'fishing', 'hiking']	\N
625	\N	\N	Yosemite Valley	37.73261	-119.55785	95389	John Muir Trail: Yosemite Valley to Tenaya Lake	22047.958	5	7	point to point	['backpacking', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
626	\N	\N	Groveland	37.94644	-119.78727	95321	Jack Main Canyon and Tilden Lake Trail	66143.874	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
627	\N	\N	Twentynine Palms	34.04105	-116.18524	92277	Quail Mountain Trail	24461.968	3.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
628	\N	\N	Old Station	40.56501	-121.30178	\N	Butte Lake to Snag Lake loop	23657.298	4.5	3	loop	['backpacking', 'camping', 'hiking']	\N
629	\N	\N	Old Station	40.4606	-121.45942	96061	King's Creek Falls to Devil's Kitchen	21887.024	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'scenic-driving', 'trail-running', 'horseback-riding']	\N
630	\N	\N	Darwin	36.35184	-117.55048	93522	Father Crowley Vista	1931.208	4	1	out and back	['hiking', 'walking']	\N
631	\N	\N	Twentynine Palms	34.02515	-116.14195	92277	Wonderland Wash	3218.68	4	3	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running', 'walking']	\N
632	\N	\N	Yosemite Valley	37.670230000000004	-119.62811	95389	Buena Vista Crest Trail to Royal Arch Lake	48280.2	4.5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
633	\N	\N	Death Valley	36.69389	-117.57139	\N	The Grandstand via Racetrack Trail	2896.812	4	1	out and back	['hiking', 'nature-trips', 'off-road-driving', 'walking']	\N
634	\N	\N	Old Station	40.44493	-121.52686	96061	Diamond Peak Trail	2092.142	4.5	3	loop	['hiking', 'snowshoeing']	\N
635	\N	\N	Twentynine Palms	34.08971	-116.25895	92252	Joshua Tree West Side Trail	4988.954	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
636	\N	\N	Lee Vining	37.89063	-119.26236	95389	Koip Peak Trail	26232.242	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
637	\N	\N	Badger	36.70907	-118.92144	\N	Redwood Canyon to Redwood Creek	16898.07	5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
638	\N	\N	Oakhurst	37.67135	-119.5851	95389	Ottoway Lakes Trail	47636.464	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
639	\N	\N	Yosemite Valley	37.71389	-119.73241	95389	Old Big Oak Flat to Yosemite Falls	26393.176	4.5	3	point to point	['backpacking', 'camping', 'fishing', 'hiking', 'trail-running', 'fly-fishing']	\N
640	\N	\N	Yosemite Valley	37.87756	-119.33496	95389	Tuolumne Meadows lodge to Vogelsang Camp	11587.248	4.5	3	point to point	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
641	\N	\N	Long Barn	37.94645	-119.78729	95321	Laurel Lake Trail	24783.836	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
642	\N	\N	Yosemite Valley	37.85198	-119.57782	95389	Tioga Road to Yosemite Falls and Eagle Peak	26715.044	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
643	\N	\N	Hoopa	41.20827	-123.75558	95546	Bald Hills Road	51016.078	4	5	point to point	['scenic-driving']	\N
644	\N	\N	Yosemite Valley	37.92644	-119.79509	95321	Smith Peak Trail	19473.014	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
645	\N	\N	Yucca Valley	34.07442	-116.38985	92284	Joshua Tree Short Loop Trail and Canyon View Trail Hike	9977.908	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
646	\N	\N	Coolidge Springs	33.84607	-115.77752	92277	Porcupine Wash to Monument Mountain Trail	29450.922	4	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
647	\N	\N	Hume	36.79495	-118.58291	93633	Paradise Valley Trail to Woods Creek Crossing	44739.652	5	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'walking']	\N
648	\N	\N	Yosemite Valley	37.80664	-119.54558	\N	Tioga Pass Road to Yosemite Valley	13196.588	4.5	3	point to point	['backpacking', 'hiking', 'nature-trips']	\N
649	\N	\N	Twentynine Palms	33.99257	-116.06751	\N	Jumbo Rocks Campground Loop	1287.472	4	1	loop	['camping', 'hiking', 'nature-trips', 'rock-climbing']	\N
650	\N	\N	Big Pine	37.16926	-118.56601	93514	Palisade Basin	27358.78	5	7	loop	['birding', 'hiking', 'nature-trips']	\N
651	\N	\N	Orick	41.327	-124.01513	95555	Lost Man Creek Trail	32991.47	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
653	\N	\N	Lee Vining	37.87765	-119.35367	95389	Dog Lake Trail and Lambert Dome Trail Loop	7402.964	4	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
654	\N	\N	Klamath	41.60489	-124.10133	95548	Coastal Trail: Demartin Section	18346.476	4.5	3	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
655	\N	\N	Stony Creek Village	36.74321	-118.77517	\N	Lost Lake Trail	27841.582	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
656	\N	\N	Darwin	36.3308	-117.71478	93549	Saline Valley OHV Road	132609.616	4	3	point to point	['nature-trips', 'off-road-driving']	\N
657	\N	\N	Old Station	40.56515	-121.30146	\N	Prospect Peak Trail	11104.446	4	5	out and back	['birding', 'hiking']	\N
658	\N	\N	Old Station	40.56379	-121.3023	\N	Lower Twin and Snag Lakes Loop Trail	23335.43	5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
659	\N	\N	Yosemite Valley	37.87963	-119.30293	95389	Lower Gaylor Lake Trail	7242.03	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
660	\N	\N	Oakhurst	37.531	-119.44762	93604	Chain Lakes Trail from Clark Range Trailhead	16898.07	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
661	\N	\N	Cedar Grove	36.74348	-118.97142	93628	Azalea Campground to Big Stump Grove	9334.172	4.5	3	out and back	['hiking', 'trail-running']	\N
662	\N	\N	Hume	36.79494	-118.58292	93633	Mt. Whitney Loop	140817.25	5	7	loop	['backpacking', 'fishing', 'hiking', 'horseback-riding', 'rails-trails']	\N
663	\N	\N	Three Rivers	36.63536	-118.81562	93271	Dorst / Lost Grove Trail	7081.096	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
664	\N	\N	Independence	36.77252	-118.34111	93526	Kearsarge Pass Trail to John Muir Trail Loop	68236.016	4.5	5	loop	['backpacking', 'hiking', 'nature-trips']	\N
665	\N	\N	Dunlap	36.75104	-119.05548	93621	Delilah Fire Lookout OHV Trail	27519.714	3.5	1	out and back	['off-road-driving']	\N
666	\N	\N	Ventura	34.01749	-119.68349	93001	Pelican Bay Trail	6437.36	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
667	\N	\N	Paicines	36.48248	-121.16194	95043	Peaks View Day Use Area to Bear Gulch Day Use Area Trail	4023.35	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
668	\N	\N	Yosemite Valley	37.87346	-119.38225	95389	Cathedral Peak: Climber's Approach	9334.172	5	5	out and back	['hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
669	\N	\N	Twentynine Palms	34.0093	-116.05584	92277	Eagle Cliffs Lucky Boy Vista loop	7724.832	5	3	loop	['hiking', 'nature-trips', 'walking']	\N
670	\N	\N	Long Barn	37.94601	-119.78826	95321	O'Shaughnessy Dam to Tuolumne River	3862.416	5	1	out and back	['hiking', 'walking']	\N
671	\N	\N	Tecopa	35.73869	-116.38247	\N	Ibex Dunes Trail	9173.238	4	3	out and back	['birding', 'hiking', 'walking']	\N
672	\N	\N	Twentynine Palms	34.06802	-116.02395	92277	Park Blvd Scenic Drive	38302.292	4.5	1	point to point	['nature-trips', 'scenic-driving', 'walking']	\N
673	\N	\N	Santa Barbara	34.00762	-120.04863	\N	Santa Rosa Island - Pier to Ford Point	31221.196	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
674	\N	\N	Three Rivers	36.52563	-118.89034	93271	Shepherd Saddle Road	21404.222	3.5	3	out and back	['hiking', 'mountain-biking', 'nature-trips', 'off-road-driving']	\N
675	\N	\N	Lone Pine	36.77268	-118.34024	93526	Bubbs Creek Trail	34761.744	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
676	\N	\N	Three Rivers	36.45332	-118.59679	93271	Chihuahua Mine	11426.314	4.5	5	out and back	['hiking', 'rock-climbing', 'trail-running']	\N
677	\N	\N	Santa Barbara	33.98371	-120.01923	\N	Torrey Pines Trail	2253.076	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
678	\N	\N	Yosemite Valley	37.87188	-119.37382	95389	Tuolumne Meadows to Tenaya Lake via Pacific Crest and Glen Aulin Trails	19151.146	4.5	3	point to point	['hiking', 'nature-trips']	\N
679	\N	\N	Santa Barbara	34.00319	-120.09116	\N	Lobo Canyon Trail	7724.832	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'walking']	\N
680	\N	\N	Twentynine Palms	34.0237	-116.07775	92277	Joshua Tree Queen Mountain	9977.908	4.5	3	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
681	\N	\N	Twentynine Palms	33.92355	-116.05423	\N	Hexahedron Mine Trail	14323.126	3.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
682	\N	\N	Thousand Palms	33.92719	-116.18747	92241	Keys View Nature Trail	321.868	4	1	loop	['birding', 'nature-trips', 'walking']	\N
683	\N	\N	Yosemite Valley	37.87206	-119.37065	95389	Tuolumne Meadow to White Wolf via Pacific Crest Trail	43934.982	5	5	point to point	['backpacking', 'camping', 'hiking']	\N
684	\N	\N	Three Rivers	36.55464	-118.74878	93262	High Sierra Trail: Ninemile Creek to Bearpaw Meadow	32991.47	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
685	\N	\N	Three Rivers	36.58474	-118.74983	93262	Huckleberry Meadow Trail	8368.568	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
686	\N	\N	Bishop	37.22668	-118.62804	93514	North Lake Loop via Lamarck Col and Alpine Col	27519.714	5	7	loop	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips', 'snowshoeing']	\N
687	\N	\N	Chester	40.46688	-121.30954	96020	Horseshoe Lake Trail	6920.162	4.5	1	out and back	['camping', 'hiking', 'trail-running', 'walking', 'whitewater-kayaking', 'canoeing']	\N
688	\N	\N	Yosemite Valley	37.73996	-119.55968	\N	Snow Creek Trail to Yosemite Falls Trail via North Dome	30255.592	5	5	point to point	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
689	\N	\N	Hoopa	41.14824	-123.89313	95555	Lyons Ranch Trail	5954.558	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
690	\N	\N	Ventura	34.04987	-119.55629	93001	Smugglers Road, Scorpion Canyon and Potato Harbor	12874.72	5	3	loop	['hiking', 'nature-trips', 'walking']	\N
691	\N	\N	Indio	33.90111	-116.08596	\N	Pushawalla Plateau and Canyon Trail	15771.532	4.5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
692	\N	\N	Yosemite Valley	37.7148	-119.73491	95389	Old Big Oak Flat Road	11426.314	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
693	\N	\N	Yucca Valley	34.0714	-116.39115	92284	Burnt Hill Trail	9495.106	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
694	\N	\N	Keeler	36.62027	-117.6484	\N	Lippincott Mine Road	10943.512	4	5	point to point	['off-road-driving']	\N
695	\N	\N	Sequoia National Park	36.6046	-118.72575	93262	General Sherman via Lodgepole	9012.304	4	3	out and back	['hiking', 'nature-trips', 'walking']	\N
696	\N	\N	Lone Pine	36.45356	-118.17045	93545	Mount Whitney via Cottonwood Lakes	91893.314	5	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'rock-climbing']	\N
697	\N	\N	Mecca	33.82554	-115.75997	92277	Black Eagle Mine OHV Trail	38624.16	3.5	3	out and back	['off-road-driving', 'scenic-driving']	\N
698	\N	\N	Yosemite Valley	37.69844	-119.75723	95389	Foresta Falls Trail	2574.944	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
699	\N	\N	Yosemite Valley	37.54838	-119.63401	95389	Chilnualna Falls Extended Loop	22208.892	4.5	5	loop	['backpacking', 'hiking', 'trail-running']	\N
700	\N	\N	Twentynine Palms	33.93303	-115.9597	\N	Golden Bell and Eldorado Mine Trail	3218.68	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
701	\N	\N	Old Station	40.53652	-121.56198	96088	Lily Pond Nature Trail	1126.538	4	1	loop	['hiking', 'nature-trips', 'walking']	\N
702	\N	\N	Joshua Tree	34.04029	-116.19784	92252	Quail Wash to West Entrance Wash Trail	28807.186	3.5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
703	\N	\N	Three Rivers	36.5713	-118.80804	93271	Upper Colony Mill Trail	7563.898	3.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
704	\N	\N	Twentynine Palms	33.93303	-115.95977	\N	Silver Bell Mine Hike	2092.142	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
705	\N	\N	Yosemite Valley	37.87742	-119.35368	95389	Young Lakes and Mount Conness Summit	30255.592	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
706	\N	\N	Yosemite Valley	37.73235	-119.55954	95389	Happy Isles, Vernall Falls, Half Dome, Tenaya Lake, and Mirror Lakes Loop	48602.068	5	5	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
707	\N	\N	Mecca	33.73692	-115.81082	92277	Moorten's Mill Trail	1931.208	1	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
708	\N	\N	Cedar Grove	36.74707	-118.97488	93628	North Grove and Sunset Trail	5471.756	4.5	1	loop	['hiking', 'nature-trips', 'walking', 'cross-country-skiing']	\N
709	\N	\N	Santa Barbara	34.00291	-120.05094	\N	East Point Trail	23335.43	5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
710	\N	\N	Death Valley	36.69439	-117.57159	\N	Ubehebe Peak Trail	6437.36	3.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
711	\N	\N	Three Rivers	36.56477	-118.7735	93262	Bear Hill Trail to Moro Rock Trail Loop	13035.654	4	1	loop	['hiking', 'nature-trips', 'walking']	\N
712	\N	\N	Death Valley	36.75057	-116.93674	92328	Chloride City OHV Trail	23979.166	4.5	3	out and back	['mountain-biking', 'nature-trips', 'off-road-driving']	\N
713	\N	\N	Death Valley	36.22563	-116.8816	\N	Telescope Peak via Shorty's Well Route	32025.866	4	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
714	\N	\N	Twentynine Palms	34.08599	-116.14047	92277	Corral Wall Trail	1770.274	4	3	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
715	\N	\N	Old Station	40.49453	-121.42289	96071	Upper and Lower Twin Lake Trail	14966.862	4	1	loop	['birding', 'fishing', 'hiking', 'nature-trips', 'walking', 'whitewater-kayaking', 'canoeing']	\N
716	\N	\N	Sequoia National Park	36.58456	-118.74987	93262	Circle Meadows via Congress Trail	6759.228	4.5	1	loop	['hiking', 'trail-running', 'walking']	\N
717	\N	\N	Old Station	40.46601	-121.51412	96071	Bumpass Hell Trail  [CLOSED]	4345.218	4.5	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
718	\N	\N	Paicines	36.49439	-121.14592	95043	Visitor Center to Peaks View Day Use Area	5310.822	4.5	1	out and back	['hiking', 'walking']	\N
719	\N	\N	Stony Creek Village	36.73995	-118.96254	93628	Viola Falls Trail	4345.218	4	3	out and back	['camping', 'hiking', 'nature-trips']	\N
720	\N	\N	Paicines	36.48247	-121.16194	95043	Peaks View Day Use Area to Old Pinnacles Trailhead	5149.888	4.5	1	out and back	['hiking']	\N
721	\N	\N	Twentynine Palms	34.07424	-116.03185	92277	California Riding & Hiking Trail	62925.194	4.5	7	point to point	['backpacking', 'birding', 'camping', 'hiking']	\N
722	\N	\N	Lee Vining	37.87836	-119.339	95389	Dog Dome and Dog Lake	4828.02	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
723	\N	\N	Death Valley	36.54764	-116.89007	92328	Indian Pass	20921.42	4	5	out and back	['backpacking', 'camping', 'hiking']	\N
724	\N	\N	Yosemite Valley	37.54839	-119.634	95389	Buena Vista, Royal Arch, and Crescent Lakes Loop	42647.51	5	5	loop	['backpacking', 'camping', 'hiking']	\N
725	\N	\N	Death Valley	36.21773	-116.72267	\N	Coffin Peak	4345.218	4	3	out and back	['hiking']	\N
726	\N	\N	Yosemite Valley	37.73532	-119.56652	95389	Merced Lake to Half Dome Loop via John Muir, Pack and Cloud Rest Trails	55844.098	5	5	loop	['backpacking', 'camping', 'fishing', 'nature-trips', 'rock-climbing']	\N
727	\N	\N	Badger	36.73996	-118.96256	93628	Manzanita and Azalea Trail	6920.162	4	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
728	\N	\N	Ridgecrest	35.61407	-117.67073	93555	Ridgecrest to Death Valley OHV Trail	266989.506	4.5	3	point to point	['nature-trips', 'off-road-driving']	\N
729	\N	\N	Hume	36.79374	-118.59844	93633	Zumwalt Meadow Trail to Kanawyers Trail Loop	11104.446	3.5	1	loop	['hiking']	\N
730	\N	\N	Old Station	40.46061	-121.4594	96061	King Creek Falls and Bench Lake Loop	6920.162	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
731	\N	\N	Yosemite Valley	37.87961	-119.3036	95389	Mammoth Peak	9334.172	4.5	5	out and back	['camping', 'hiking']	\N
732	\N	\N	Bishop	37.01767	-117.41107	\N	Death Valley Scenic Drive OHV Trail	87709.03	4	3	point to point	['off-road-driving']	\N
733	\N	\N	Orick	41.45094	-124.03803	95555	Ah-Pah Interpretive Trail	643.736	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
734	\N	\N	Three Rivers	36.5549	-118.7497	93262	Nine Lake Basin	55522.23	5	5	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'trail-running', 'fly-fishing']	\N
735	\N	\N	Yosemite Valley	37.87314	-119.38284	95389	John Muir to Clouds Rest to Mist Trail	39911.632	4.5	3	point to point	['backpacking', 'camping', 'hiking']	\N
737	\N	\N	Groveland	37.97397	-119.88221	95321	Lake Eleanor Hike	8851.37	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
738	\N	\N	Twentynine Palms	34.00125	-116.04996	92277	Live Oak Tank and Ivanpah Tank	2414.01	3.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
739	\N	\N	Twentynine Palms	34.10363	-115.45105	92277	Scorpius Arch Loop	5954.558	4.5	1	loop	['hiking', 'trail-running']	\N
740	\N	\N	Chester	40.46657	-121.30786	96020	Inspiration Point Trail	2092.142	3.5	3	out and back	['hiking']	\N
741	\N	\N	Ventura	34.01101	-119.66036	93001	Santa Cruz Island: Del Norte Campground to Chinese Harbor	12874.72	4.5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips']	\N
742	\N	\N	Hume	36.79469	-118.58285	93633	King's Canyon to Mt Whitney	129230.002	4.5	7	loop	['backpacking', 'hiking', 'trail-running']	\N
743	\N	\N	Joshua Tree	34.00955	-116.30599	\N	Crest View Trail	4667.086	5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
744	\N	\N	Yosemite Valley	37.86994	-119.64888	\N	White Wolf to Pate Valley Trail	12391.918	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
745	\N	\N	Mill Creek	40.43104	-121.5363	96061	Forest Lake Trail	4828.02	4	3	out and back	['birding', 'hiking', 'nature-trips', 'skiing', 'snowshoeing', 'walking', 'cross-country-skiing']	\N
746	\N	\N	Old Station	40.49452	-121.42316	96071	Twin Lakes, Horseshoe Lake, and Summit Lake	25588.506	0	3	loop	['backpacking', 'hiking', 'trail-running']	\N
747	\N	\N	Death Valley	36.22563	-116.88152	\N	Hanaupah Canyon Trail	28807.186	2.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'off-road-driving']	\N
748	\N	\N	Death Valley	36.73672	-116.91251	92328	Monarch Canyon/Mine Trail	3862.416	4	1	out and back	['birding', 'hiking', 'off-road-driving']	\N
749	\N	\N	Bridgeport	38.14677	-119.38058	93517	Matterhorn Canyon and the Sawtooth Range Trail	57936.24	4	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
750	\N	\N	Mecca	33.82806	-115.75912	92277	Sand Dunes via Mecca Dale Road	18507.41	4.5	1	point to point	['birding', 'hiking', 'nature-trips', 'scenic-driving', 'walking']	\N
751	\N	\N	Three Rivers	36.35034	-118.76505	93265	Cahoon Rock from South Fork Campground	45544.322	5	5	out and back	['backpacking', 'camping', 'hiking']	\N
752	\N	\N	Dunlap	36.79039	-118.66787	93633	Kings River	22691.694	3	1	out and back	['fishing', 'hiking', 'trail-running', 'fly-fishing']	\N
753	\N	\N	Yosemite Valley	37.82579	-119.47026	\N	Tenaya Lake to May Lake to Mount Hoffman	21565.156	5	5	loop	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
754	\N	\N	Paicines	36.49211	-121.20992	95043	North Wilderness Trail to Twin Knolls	4988.954	4	3	out and back	['hiking', 'nature-trips']	\N
755	\N	\N	Hume	36.7947	-118.5829	93633	Roads End to Onion Valley Trail	31703.998	0	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
756	\N	\N	Twentynine Palms	33.90174	-115.83487	\N	Turkey Flats Sand Dunes	3701.482	3.5	3	loop	['birding', 'nature-trips', 'walking']	\N
757	\N	\N	Yosemite Valley	37.8789	-119.35881	95389	Benson Pass - Northeast Yosemite Grand Tour	86743.426	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
758	\N	\N	Sequoia National Park	36.59654	-118.73438	93262	Emerald Lake	16576.202	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
759	\N	\N	Mecca	33.74828	-115.82429	92277	Monument Mountain from Pinkham Canyon Trailhead	22530.76	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
760	\N	\N	Paicines	36.47762	-121.22605	95043	Pinnacles Overlook Trail	1448.406	4.5	1	loop	['hiking', 'walking']	\N
761	\N	\N	Death Valley	36.64162	-117.29155	\N	Marble Canyon Petroglyphs	17380.872	3	1	out and back	['camping', 'hiking', 'walking']	\N
762	\N	\N	Yosemite Valley	37.8258	-119.46937	\N	John Muir Trail: Tenaya Lake to Reds Meadow	91893.314	4.5	3	point to point	['backpacking', 'camping', 'fishing', 'hiking', 'trail-running']	\N
763	\N	\N	Three Rivers	36.45329	-118.59677	93271	Sawtooth Pass to Timber Gap Trail	44578.718	0	5	loop	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
764	\N	\N	Shoshone	35.91989	-116.6825	\N	Ashford Canyon Trail	15127.796	3.5	3	out and back	['hiking', 'mountain-biking', 'off-road-driving']	\N
765	\N	\N	Yosemite Valley	37.8733	-119.3826	95389	Echo Ridge & Echo Peaks	13196.588	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
766	\N	\N	Yosemite Valley	37.87337	-119.3826	95389	John Muir Trail: Cathedral Lakes Trail to Clouds Rest	24783.836	0	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
767	\N	\N	Yosemite Valley	37.83428	-119.46321	95389	Tenaya Lake Trail	4667.086	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
768	\N	\N	Ventura	33.99341	-120.04382	\N	Black Mountain Trail	9656.04	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
769	\N	\N	Yosemite Valley	37.73804	-119.5686	95389	Yosemite to Agnew Meadows	100100.948	4.5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
770	\N	\N	Lee Vining	37.89098	-119.26266	95389	Parker Pass to Lyell Canyon	57775.306	4	5	point to point	['backpacking', 'birding', 'hiking']	\N
771	\N	\N	Death Valley	36.61949	-117.33029	\N	Swaney Loop	22852.628	5	3	loop	['backpacking', 'camping', 'hiking', 'nature-trips', 'rock-climbing']	\N
772	\N	\N	Orick	41.2641	-123.98779	\N	Holter Ridge via Lost Man Trail	21082.354	0	3	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking', 'ice-climbing']	\N
773	\N	\N	Old Station	40.46056	-121.45942	96061	Sifford Lakes Trail	9173.238	3.5	1	out and back	['camping', 'hiking']	\N
774	\N	\N	Twentynine Palms	34.08972	-116.25897	92252	Joshua Tree Burro Loop Trail Hike	12552.852	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
775	\N	\N	Yosemite Valley	37.873310000000004	-119.38263	95389	Cathedral Peak: Southeast Buttress	52947.286	5	3	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'walking']	\N
776	\N	\N	Death Valley	36.20145	-116.76999	\N	Helios Canyon	5471.756	1	7	loop	['hiking', 'rock-climbing']	\N
777	\N	\N	Twentynine Palms	34.0812	-116.24199	92252	North Canyon Trail	5954.558	4	3	out and back	['hiking', 'walking']	\N
778	\N	\N	Old Station	40.5652	-121.30133	\N	Bathtub Lake Trail	1448.406	3.5	1	loop	['hiking', 'walking']	\N
779	\N	\N	Yosemite Valley	37.72958	-119.55958	95389	Merced Lake High Sierra Camp Trail	39911.632	0	5	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
780	\N	\N	Twentynine Palms	34.04113	-116.18574	92277	Wonderland Of Rocks Traverse	8851.37	5	5	point to point	['hiking', 'trail-running']	\N
781	\N	\N	Yosemite Valley	37.87187	-119.34929	95389	Tuolome, Sunrise and Merced Lakes, and Vogelslang Loop	58097.174	5	3	loop	['backpacking', 'birding', 'camping', 'nature-trips', 'walking']	\N
782	\N	\N	Yosemite Valley	37.73395	-119.60179	95389	Taft Point via Four Mile Trail	23013.562	5	5	loop	['hiking']	\N
783	\N	\N	Yosemite Valley	37.75965	-119.7975	95389	Gin Flat Loop	7402.964	4	3	loop	['snowshoeing', 'cross-country-skiing']	\N
784	\N	\N	Paicines	36.49441	-121.1459	95043	Visitor Center to Bacon Ranch	1126.538	3.5	1	loop	['hiking', 'walking']	\N
785	\N	\N	Death Valley	36.65905	-117.07939	92328	Historic Stovepipe Well	321.868	4	1	loop	['hiking', 'walking']	\N
786	\N	\N	Yucca Valley	34.07513	-116.38798	92284	Burnt Hill Trail and Canyon View Trail Loop	9495.106	4	3	loop	['hiking', 'trail-running', 'walking']	\N
787	\N	\N	Dunlap	36.79343	-118.66864	93633	East Kennedy Lake Trail	35566.414	3	5	out and back	['backpacking', 'hiking', 'trail-running']	\N
788	\N	\N	Orick	41.28719	-124.05689	95555	McArthur Creek Loop Trail	21565.156	5	3	loop	['birding', 'hiking', 'walking', 'horseback-riding']	\N
789	\N	\N	Mill Creek	40.43769	-121.53295	96063	Bumpass Hell from Kohm Yah-mah-nee visitor center	18507.41	5	3	out and back	['hiking', 'nature-trips']	\N
790	\N	\N	Shoshone	35.90761	-116.62076	\N	Kaleidoscope Canyon Trail	9334.172	3.5	5	out and back	['hiking', 'nature-trips']	\N
791	\N	\N	Yosemite Valley	37.56612	-119.53262	\N	Crescent Lake to Buena Vista Lake	8368.568	4.5	3	point to point	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
792	\N	\N	Yosemite Valley	37.78379	-119.74173	95389	Tamarack Creek Trail	7885.766	0	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
793	\N	\N	Chester	40.44314	-121.39745	96020	Drake Lake Trail	7081.096	4.5	3	out and back	['hiking']	\N
794	\N	\N	Yosemite Valley	37.87203	-119.37075	95389	Young Lakes Trail	21726.09	3.5	3	out and back	['hiking', 'trail-running']	\N
795	\N	\N	Shoshone	35.89917	-116.65586	\N	Harry Wade Road OHV Trail	50694.21	3	1	point to point	['off-road-driving']	\N
796	\N	\N	Three Rivers	36.5547	-118.74885	93262	High Sierra Trail to Lakes Trail	17702.74	5	3	point to point	['hiking']	\N
797	\N	\N	Yucca Valley	34.09423	-116.37039	92284	Covington Trail	31382.13	3.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
798	\N	\N	Yosemite Valley	37.87746	-119.33499	95389	Ireland Lake Trail	30577.46	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
799	\N	\N	Twentynine Palms	34.02376	-116.07768	92277	Negro Hill Trail	1770.274	1	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
800	\N	\N	Death Valley	36.09819	-116.8455	\N	Johnson Canyon OHV Trail	37175.754	0	3	out and back	['off-road-driving']	\N
801	\N	\N	Twentynine Palms	33.92521	-115.92883	\N	Golden Bee Mine Trail	6759.228	4	7	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
802	\N	\N	Yosemite Valley	37.74713	-119.59064	95389	Yosemite Valley East Loop	65982.94	0	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
803	\N	\N	Three Rivers	36.52104	-118.77138	93262	Kaweah River Trail	35888.282	0	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
804	\N	\N	Trinidad	41.20819	-123.9933	\N	Tall Trees Access Road	19312.08	3.5	3	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips']	\N
805	\N	\N	Twentynine Palms	34.09317	-116.15598	92277	Morbid Mound Trail	1287.472	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
806	\N	\N	Hume	36.7947	-118.58295	93633	Avalanche Pass Trail to Roaring River Via Kanawyers Trail	45705.256	5	7	out and back	['backpacking', 'camping', 'hiking']	\N
807	\N	\N	Three Rivers	36.64663	-118.81489	93262	Cabin Creek Trail	4023.35	3	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
808	\N	\N	Lee Vining	37.89058	-119.26233	95389	Walker Lake Trail	25910.374	0	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
809	\N	\N	Three Rivers	36.45331	-118.5968	93271	Pinto Lake Trail	24140.1	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
810	\N	\N	Independence	36.77253	-118.34124	93526	Vidette Meadow Trail	34439.876	0	5	out and back	['birding', 'hiking', 'nature-trips']	\N
811	\N	\N	Twentynine Palms	34.01195	-116.16811	92277	Candlestein Pass Trail	6437.36	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
812	\N	\N	Bishop	37.16922	-118.56599	93514	Bishop Pass Trail	35083.612	4.5	5	out and back	['backpacking', 'camping', 'fishing', 'hiking']	\N
813	\N	\N	Old Station	40.49803	-121.42714	96071	Summit Lake to Kings Creek Trail	8207.634	4	1	out and back	['hiking']	\N
814	\N	\N	Death Valley	36.48687	-117.19928	92328	Lower Telephone Canyon	7885.766	0	3	out and back	['hiking']	\N
815	\N	\N	Big Pine	37.00979	-118.32743	93513	Bench Lake Trail	35888.282	4	7	out and back	['backpacking', 'hiking', 'trail-running']	\N
816	\N	\N	Mecca	33.73717	-115.81073	92277	Mastodon Peak and Eagle Mountain	19794.882	5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
817	\N	\N	Joshua Tree	34.00958	-116.3057	\N	Quail Mountain from Covington Crest Trailhead	14162.192	4	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
818	\N	\N	Independence	36.77249	-118.34127	93526	Junction Meadow Via Kearsarge Pass and Bubbs Creek Trails	32186.8	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
819	\N	\N	Klamath	41.52675	-124.07919	95548	The Farm Trail	482.802	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
820	\N	\N	Chester	40.44319	-121.39741	96020	Dream Lake Trail	2253.076	4	1	out and back	['fishing', 'hiking', 'paddle-sports', 'walking', 'whitewater-kayaking', 'canoeing']	\N
821	\N	\N	Yosemite Valley	37.76352	-119.84258	\N	Sugar Pine Grove Trail	8690.436	2	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
822	\N	\N	Three Rivers	36.55465	-118.74871	93262	Crescent Meadow to Tamarack Lake	46188.058	0	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
823	\N	\N	Yosemite Valley	37.87729	-119.35326	95389	Tuolumne Meadows to Vogelsang Pass	33313.338	3	5	out and back	['backpacking', 'camping', 'nature-trips']	\N
824	\N	\N	Yosemite Valley	37.87335	-119.38266	95389	John Muir Trail From Tioga Pass Road to the Merced River	26393.176	5	5	point to point	['birding', 'hiking', 'nature-trips']	\N
825	\N	\N	Yosemite Valley	37.94643	-119.78756	95321	Hetch Hechy Reservoir to Sierra Crest Backpacking Loop	142426.59	4	7	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running', 'horseback-riding']	\N
826	\N	\N	Three Rivers	36.465090000000004	-118.67092	93271	Bearpaw Meadow Via Paradise Ridge Trail	42647.51	0	3	out and back	['hiking']	\N
827	\N	\N	Yosemite Valley	37.82575	-119.4701	\N	Yosemite High Country Open Loop	68557.884	0	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
828	\N	\N	Twentynine Palms	34.00938	-116.05554	92277	Love Land Wash	4345.218	3	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
829	\N	\N	Death Valley	36.60106	-117.09666	92328	Little Bridge Canyon Trail	9656.04	4	5	out and back	['hiking', 'nature-trips']	\N
830	\N	\N	Death Valley	36.24328	-116.88165	\N	Tule Springs	804.67	3.5	1	out and back	['hiking', 'walking']	\N
831	\N	\N	Yosemite Valley	37.74499	-119.80146	95389	Clark Range Viewpoint	4667.086	2.5	3	out and back	['hiking', 'snowshoeing']	\N
832	\N	\N	Old Station	40.48827	-121.42236	96061	Corral Meadow Loop Trail	15771.532	3	3	out and back	['hiking']	\N
833	\N	\N	Stony Creek Village	36.72279	-118.7653	\N	Rowell Trailhead to Comanche Meadows	20116.75	0	5	out and back	['birding', 'hiking', 'nature-trips']	\N
834	\N	\N	Yosemite Valley	37.67034	-119.62806	95389	Westfall Meadows Trail	5310.822	3	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
835	\N	\N	Yosemite Valley	37.75212	-119.73696	95389	Tamarack Flat to Yosemite Valley	25749.44	4	7	point to point	['backpacking', 'camping', 'hiking']	\N
836	\N	\N	Hume	36.79608	-118.58322	93633	Big SEKI Loop	233676.168	5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
837	\N	\N	Bridgeport	38.10867	-119.27884	93517	McCabe Lakes Trail	47958.332	0	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
838	\N	\N	Three Rivers	36.48604	-118.83767	93271	Generals Highway Scenic Drive	73707.772	4.5	1	point to point	['road-biking', 'scenic-driving']	\N
839	\N	\N	Three Rivers	36.55489	-118.74907	93262	Tharp's Log and Huckleberry Trail Loop	3540.548	5	1	loop	['hiking', 'nature-trips']	\N
840	\N	\N	Ventura	33.97871	-120.01049	93001	Skunk Point Loop	9816.974	0	1	loop	['birding', 'hiking', 'nature-trips', 'surfing', 'walking']	\N
841	\N	\N	Yosemite Valley	37.54839	-119.634	95389	Wowona to Half Dome to Yosemite Valley	51820.748	5	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
842	\N	\N	Yosemite Valley	37.87196	-119.34929	95389	Vogelsang Basin Loop via John Muir Trail	67592.28	5	3	loop	['backpacking', 'fishing']	\N
843	\N	\N	Old Station	40.46002	-121.47469	96071	Twin Meadows Trail	7563.898	2	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
844	\N	\N	Groveland	37.97386	-119.88249	95321	Lake Eleanor to Laurel Lake	29772.79	0	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
845	\N	\N	Independence	36.77252	-118.34124	93526	Onion Valley to Horseshoe Meadows	107182.044	0	5	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
846	\N	\N	Cedar Grove	36.80398	-118.71388	93633	Deer Cove To Cedar Grove	20438.618	5	7	point to point	['hiking', 'nature-trips']	\N
847	\N	\N	Coolidge Springs	33.82808	-115.75899	92277	Old Dale Road: Pinto Basin Road to Route 62	41520.972	5	3	point to point	['off-road-driving']	\N
848	\N	\N	Twentynine Palms	34.0656	-116.2294	92252	Negropolis Trail	2253.076	0	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
849	\N	\N	Death Valley	36.38589	-117.15093	\N	Skidoo OHV Road	27680.648	0	3	out and back	['off-road-driving']	\N
850	\N	\N	Yosemite Valley	37.85196	-119.57786	95389	Yosemite Creek Trail to Yosemite Creek Campground	5632.69	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
851	\N	\N	Death Valley	36.42094	-116.81009	92328	Manly Beacon via Zabriskie Point and Gower Gulch	5149.888	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
852	\N	\N	Death Valley	36.75999	-117.54233	\N	Hidden Valley OHV Drive	47314.596	4	3	out and back	['off-road-driving']	\N
853	\N	\N	Yosemite Valley	37.75213	-119.73697	95389	Cascade Creek from Tamarack Campground Trail	7081.096	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
854	\N	\N	Death Valley	36.4208	-116.81035	92328	Red Canyon, Manly Beacon, Zabriskie Point Loop	7563.898	3.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
855	\N	\N	Old Station	40.51578	-121.4651	\N	Raker Peak Loop	5793.624	5	3	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
856	\N	\N	Yosemite Valley	37.73256	-119.55788	95389	Merced River High Trail	75156.178	0	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
857	\N	\N	Chester	40.45434	-121.29614	96020	Crystal Lake Trail	1609.34	5	3	out and back	['camping', 'hiking', 'walking']	\N
858	\N	\N	Twentynine Palms	34.0409	-116.18523	92277	Reggie Dome	1448.406	0	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
859	\N	\N	Three Rivers	36.46497	-118.67094	93271	Paradise Peak	15127.796	0	5	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
860	\N	\N	Death Valley	36.60836	-117.14413	92328	Pride Rock	4023.35	0	1	out and back	['hiking', 'walking']	\N
861	\N	\N	Three Rivers	36.56486	-118.77271	93271	Huckleberry Trail to Alta Trail Loop	7081.096	4	3	loop	['hiking', 'nature-trips', 'walking']	\N
862	\N	\N	Malibu	33.48152	-119.02957	\N	Santa Barbara Island Loop	8851.37	5	3	loop	['birding', 'hiking', 'trail-running', 'sea-kayaking']	\N
863	\N	\N	Yosemite Valley	37.78432	-119.74133	95389	South Fork of the Tuolumne Trail	5149.888	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
864	\N	\N	Yosemite Valley	37.67049	-119.62791	95389	Pohono Trail via McGurk Meadow Trail	24783.836	4	3	out and back	['hiking', 'nature-trips', 'walking']	\N
865	\N	\N	Paicines	36.47744	-121.22545	95043	Visitor Contact Station to Vista Point	482.802	4	1	out and back	['hiking', 'walking']	\N
866	\N	\N	Twentynine Palms	34.08599	-116.14036	92277	Rattlesnake Canyon from Indian Cove Picnic Area	4506.152	5	1	out and back	['hiking', 'nature-trips']	\N
867	\N	\N	Death Valley	35.91984	-116.68249	\N	Scotty's Spring	17863.674	4.5	5	out and back	['hiking', 'nature-trips', 'walking']	\N
868	\N	\N	Death Valley	36.24851	-117.12722	\N	Pinon Mesa via Hummingbird Spring Trail	5632.69	2	3	out and back	['hiking', 'walking']	\N
869	\N	\N	Wawona	37.86983	-119.64895	\N	White Wolf to Upper Yosemite Falls to Yosemite Valley Lodge	22530.76	3	5	point to point	['backpacking', 'camping', 'hiking', 'trail-running']	\N
870	\N	\N	Lee Vining	37.95597	-119.26656	93541	White Mountain via Sawmill Walk-in Campground	10621.644	4	5	out and back	['camping', 'hiking', 'nature-trips', 'rock-climbing']	\N
871	\N	\N	Groveland	37.8841	-119.85089	95321	Aspen Valley Trail	20921.42	0	5	point to point	['birding', 'hiking', 'nature-trips']	\N
872	\N	\N	Chester	40.46698	-121.30947	96020	Jakey Lake Trail	9495.106	3	1	out and back	['camping', 'fishing', 'hiking', 'paddle-sports', 'whitewater-kayaking', 'canoeing']	\N
873	\N	\N	Yosemite Valley	37.87246	-119.64933	\N	White Wolf to Smith Meadow Trail	25588.506	0	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
874	\N	\N	Groveland	37.89321	-119.84106	95321	Mather Ranger Station to Smith Meadow Trail	28002.516	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
875	\N	\N	Yosemite Valley	37.548	-119.63454	95389	Crescent Lake from Chilnualna Falls Trailhead	30094.658	4	5	out and back	['backpacking', 'camping', 'fishing', 'hiking']	\N
876	\N	\N	Hume	36.74089	-118.73841	\N	Trans Sierra Trip: Colby Pass Trail, High Sierra Trail, John Muir Trail, Mount Whitney, PCT	120539.566	5	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
877	\N	\N	Yosemite Valley	37.78419	-119.74113	95389	Tamarack Creek to El Capitan	17541.806	0	5	point to point	['backpacking', 'hiking', 'nature-trips']	\N
878	\N	\N	McArthur	40.56481	-121.30189	\N	Butte Lake, Cluster Lakes and Cinder Cone Loop	32669.602	4	5	loop	['backpacking', 'hiking', 'trail-running']	\N
879	\N	\N	Death Valley	36.34264	-117.38866	\N	Big 4 Mines OHV Trail	26071.308	4	1	out and back	['birding', 'off-road-driving']	\N
880	\N	\N	Mecca	33.69963	-115.6785	\N	Careys Castle Trail [CLOSED]	12070.05	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
881	\N	\N	Death Valley	36.43698	-117.60708	\N	Jack Gunn Maltese Peak Trail	1770.274	0	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
882	\N	\N	Death Valley	35.91015	-116.57937	\N	Jubilee Mountain	3540.548	0	5	out and back	['hiking']	\N
883	\N	\N	Yosemite Valley	37.71447	-119.73634	95389	Big Oak Flat Road to Tuloumne Meadows	84007.548	5	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
884	\N	\N	Yosemite Valley	37.87234	-119.64932	\N	White Wolf to Aspen Valley Trail	29933.724	3	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
885	\N	\N	Groveland	37.94645	-119.78757	95321	Miguel Meadow to Lake Eleanor to Laurel Lake Loop	40233.5	0	3	loop	['backpacking', 'camping', 'nature-trips']	\N
886	\N	\N	Lone Pine	36.45314	-118.16989	93545	Mount Whitney from Cottonwood Lakes Walk in Campground	47475.53	0	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
887	\N	\N	Wawona	37.86983	-119.64895	\N	Grand Canyon of the Tuolumne and Rogers Lake	66626.676	0	5	out and back	['backpacking', 'birding', 'camping', 'nature-trips']	\N
888	\N	\N	Yosemite Valley	37.75067	-119.73356	95389	Tamarack Flat to Eagle Peak	32347.734	0	7	out and back	['hiking', 'trail-running']	\N
889	\N	\N	Groveland	37.87995	-119.84984	95321	Hetch Hetchy to Yosemite Valley	91249.578	0	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
890	\N	\N	Malibu	33.48146	-119.02955	\N	Elephant Seal Cove Trail	5310.822	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
891	\N	\N	June Lake	37.78258	-119.12859	93529	Silver Lake to Yosemite Village	84812.218	0	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
892	\N	\N	Twentynine Palms	33.92358	-116.05416	\N	Pleasant Valley To El Dorado Mine and Pinto Basin	27519.714	0	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
893	\N	\N	Death Valley	36.49337	-116.70383	92328	Inyo Mine Trail	1287.472	4.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
894	\N	\N	Yosemite Valley	37.81176	-119.50901	\N	May Lake Camp to Yosemite Valley	45544.322	0	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
895	\N	\N	Paicines	36.49437	-121.14585	95043	Visitor Center to Butterfield Homestead Trail	7242.03	5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
896	\N	\N	Badger	36.70906	-118.92146	\N	Redwood Creek Trail	6598.294	4.5	3	out and back	['hiking', 'nature-trips']	\N
897	\N	\N	Hume	36.79494	-118.58292	93633	Rae Lake via Bubbs Creek	57292.504	4	7	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
898	\N	\N	Groveland	37.91005	-119.81475	95321	Poopenaut Valley Trail	3379.614	1.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
899	\N	\N	Lee Vining	37.78311	-119.12791	93529	Mt. Lyell Base via John Muir and Rush Creek Trail	46831.794	3	7	out and back	['backpacking', 'camping', 'trail-running']	\N
900	\N	\N	Death Valley	36.82184	-117.17427	\N	Titus Canyon Narrows	1931.208	0	1	out and back	['hiking']	\N
901	\N	\N	Sequoia National Park	36.79494	-118.58292	93633	Florence Lake via Kings Canyon on the John Muir and Pacific Crest Trail	126815.992	5	5	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'horseback-riding']	\N
902	\N	\N	Groveland	37.97428	-119.90277	95321	Lake Eleanor Campground	7724.832	5	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'walking']	\N
903	\N	\N	Wawona	37.86983	-119.64895	\N	White Wolf to Piute Creek and the Grand Canyon of the Tuolumne River	35888.282	5	5	out and back	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips', 'rock-climbing']	\N
904	\N	\N	Yosemite Valley	37.86981	-119.64868	\N	White Wolf to Aspen Valley Trail	17059.004	0	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
905	\N	\N	Death Valley	36.0337	-117.28167	93592	Goler Wash and Mengal Pass Route	99135.344	5	5	out and back	['nature-trips', 'off-road-driving']	\N
906	\N	\N	Old Station	40.49455	-121.42319	96071	Boiling Springs Lake via Kings Creek and Pacific Crest Trail	22369.826	4	5	loop	['backpacking', 'hiking', 'trail-running']	\N
907	\N	\N	Yosemite Valley	37.73477	-119.56597	95389	Diving Board	20116.75	5	7	out and back	['hiking']	\N
908	\N	\N	Bishop	37.3714	-118.39686	93514	Bishop OHV Loop	221445.184	0	3	loop	['nature-trips', 'off-road-driving']	\N
909	\N	\N	Ventura	34.0493	-119.56288	93001	Monta\\'f1on Ridge Loop	15127.796	5	5	loop	['backpacking', 'hiking']	\N
910	\N	\N	Twentynine Palms	34.09307	-116.15632	92277	Rattle Snake Canyon to Oh-Bay-Yo-Yo Shelter Hike	9656.04	3	3	out and back	['hiking', 'nature-trips']	\N
911	\N	\N	Malibu	33.48062	-119.02959	\N	Arch Point Loop Trail	3862.416	0	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
912	\N	\N	Yosemite Valley	37.73936	-119.5706	95389	Snow Creek, May Lake and Clouds Rest Loop	53912.89	0	5	loop	['backpacking', 'camping', 'fishing', 'hiking', 'trail-running']	\N
913	\N	\N	Lone Pine	36.58686	-118.24013	\N	John Muir Trail	339570.74	0	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
914	\N	\N	Blythe	33.84594	-115.77769	\N	Porcupine Wash Ruby Lee Mill Site Trail	12230.984	0	3	out and back	['hiking', 'nature-trips']	\N
915	\N	\N	Twentynine Palms	33.98986	-116.02328	92277	5 Tanks Including Twin Tanks, Ivanpah and Live Oak Tanks	8529.502	0	3	loop	['hiking', 'nature-trips']	\N
916	\N	\N	Twentynine Palms	33.91086	-115.86521	\N	Pinto Basin Fried Liver Wash	15127.796	0	3	out and back	['hiking', 'nature-trips']	\N
917	\N	\N	Twentynine Palms	34.01167	-116.16202	92277	Rock Caves Loop	6598.294	0	3	loop	['hiking', 'nature-trips']	\N
918	\N	\N	Joshua Tree	34.03196	-116.31427	\N	Covington Loop Segment and Deer Horn Trail	6759.228	0	3	out and back	['hiking', 'nature-trips']	\N
919	\N	\N	Yosemite Valley	37.74842	-119.58746	95389	North Dome, Tenaya Lake, Half Dome and Happy Isles via Snow Creek and John Muir Trail	93019.852	0	7	point to point	['backpacking', 'camping', 'hiking']	\N
920	\N	\N	Death Valley	36.60175	-117.46085	\N	Hunter Mountain OHV Road	17219.938	5	3	point to point	['birding', 'off-road-driving']	\N
921	\N	\N	Groveland	37.89104	-119.2629	95389	Alger Lakes via Mono Pass and Parker Pass Trails	36210.15	3	5	out and back	['backpacking', 'camping', 'hiking']	\N
922	\N	\N	Death Valley	36.723910000000004	-116.97807	92328	Death Valley Buttes	5954.558	0	5	out and back	['hiking']	\N
923	\N	\N	Trinidad	41.28686	-124.08977	95570	Wetland Boardwalk	321.868	1.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
924	\N	\N	McArthur	40.46665	-121.30926	96020	Juniper Lake to Butte Lake Loop	35405.48	4	5	loop	['backpacking', 'camping', 'hiking']	\N
925	\N	\N	Yosemite Valley	37.66364	-119.62455	95389	Bridalveil Creek Campground to Ostrander Lake Loop	34761.744	0	3	loop	['backpacking', 'hiking', 'nature-trips']	\N
926	\N	\N	Yosemite Valley	37.82686	-119.46842	\N	Tenaya Lake to Half Dome Loop	36853.886	5	5	loop	['backpacking', 'hiking', 'trail-running']	\N
927	\N	\N	Estes Park	40.31177	-105.64533	80517	Emerald Lake Trail	4988.954	4.5	3	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'snowshoeing', 'walking', 'fly-fishing']	\N
928	\N	\N	Estes Park	40.31052	-105.64032	80517	Sky Pond via Glacier Gorge Trail	13035.654	5	5	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running']	\N
929	\N	\N	Glen Haven	40.39644	-105.51299	80517	Gem Lake Trail	4988.954	4.5	3	out and back	['camping', 'hiking', 'nature-trips']	\N
930	\N	\N	Estes Park	40.31047	-105.64035	80517	The Loch Lake Trail via Glacier Gorge Trail	8690.436	5	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking', 'horseback-riding', 'fly-fishing']	\N
931	\N	\N	Estes Park	40.31052	-105.64034	80517	Alberta Falls Trail	2574.944	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking', 'horseback-riding']	\N
932	\N	\N	Estes Park	40.27267	-105.55684	80517	Chasm Lake	15127.796	5	5	out and back	['birding', 'hiking', 'snowshoeing', 'trail-running', 'horseback-riding']	\N
933	\N	\N	Estes Park	40.31194	-105.64562	80517	Dream Lake Trail	3218.68	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'skiing', 'snowshoeing', 'walking']	\N
934	\N	\N	Estes Park	40.31191	-105.64577	80517	Bear Lake Nature Trail	1126.538	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking', 'snowboarding']	\N
935	\N	\N	Estes Park	40.30648	-105.53711	80517	Twin Sisters Peak Trail	12070.05	4.5	5	out and back	['hiking', 'snowshoeing', 'horseback-riding']	\N
936	\N	\N	Allenspark	40.21337	-105.55047	80510	Ouzel Falls via Wild Basin Trail from Sandbeach Lake	11909.116	4.5	3	out and back	['hiking', 'snowshoeing', 'trail-running', 'horseback-riding']	\N
937	\N	\N	Estes Park	40.3868	-105.60978	80517	Deer Mountain Trail	9012.304	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
938	\N	\N	Estes Park	40.3119	-105.64607	80517	Lake Haiyaha	5793.624	4.5	3	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'walking']	\N
939	\N	\N	Estes Park	40.31051	-105.6403	80517	Mills Lake, Black Lake, Frozen Lake Trail	17702.74	5	5	out and back	['hiking', 'snowshoeing', 'cross-country-skiing']	\N
940	\N	\N	Estes Park	40.35486	-105.63112	80517	Fern Lake Trail	11426.314	4.5	3	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
941	\N	\N	Estes Park	40.43087	-105.50054	80517	Bridal Veil Falls via Cow Creek Trail	9816.974	4.5	3	out and back	['hiking', 'snowshoeing', 'trail-running', 'horseback-riding']	\N
942	\N	\N	Allenspark	40.27212	-105.55682	80517	The Keyhole and Longs Peak via Longs Peak Trail	11909.116	5	5	out and back	['backpacking', 'hiking', 'snowshoeing', 'cross-country-skiing', 'horseback-riding']	\N
943	\N	\N	Estes Park	40.32048	-105.62367	80517	Bierstadt Lake Loop Trail	5149.888	4.5	3	loop	['birding', 'hiking', 'snowshoeing', 'trail-running', 'walking', 'horseback-riding']	\N
983	\N	\N	Estes Park	40.39649	-105.51273	80517	Gem Lake Trail and Lumpy Ridge Loop	7081.096	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
944	\N	\N	Estes Park	40.310810000000004	-105.63979	80517	Glacier Gorge Trail	4506.152	4.5	1	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
945	\N	\N	Estes Park	40.35552	-105.61602	80517	Cub Lake Trail Loop	9656.04	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking', 'horseback-riding']	\N
946	\N	\N	Grand Lake	40.42021	-105.81138	80517	Mount Ida Trail	14805.928	5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
947	\N	\N	Grand Lake	40.23941	-105.79999	80510	Adams Falls Trail	1126.538	4.5	1	loop	['hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
948	\N	\N	Estes Park	40.31198	-105.64543	80517	Flattop Mountain Trail	13196.588	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'cross-country-skiing']	\N
949	\N	\N	Estes Park	40.32038	-105.60776	80517	Sprague Lake Trail	1287.472	4.5	1	loop	['fishing', 'nature-trips', 'rock-climbing', 'trail-running', 'walking', 'fly-fishing']	\N
950	\N	\N	Grand Lake	40.25664	-105.81443	80447	Cascade Falls	11909.116	4.5	1	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking', 'horseback-riding', 'fly-fishing']	\N
951	\N	\N	Estes Park	40.31212	-105.64634	80517	Hallett Peak	14805.928	5	5	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'horseback-riding']	\N
952	\N	\N	Estes Park	40.31192	-105.64562	80517	Timberline Falls and Sky Pond Trail	14966.862	5	5	loop	['birding', 'hiking', 'nature-trips']	\N
953	\N	\N	Estes Park	40.31176	-105.64456	80517	Odessa Lake Via Fern Lake Trail	13357.522	4.5	3	out and back	['camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding', 'fly-fishing']	\N
954	\N	\N	Mosca	37.73995	-105.51672	81146	High Dune Trail	4828.02	5	5	out and back	['birding', 'camping', 'hiking', 'nature-trips']	\N
955	\N	\N	Estes Park	40.31192	-105.646	80517	Nymph Lake Trail	1931.208	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
956	\N	\N	Allenspark	40.20774	-105.5665	80510	Copeland Falls to Calypso Cascades	5632.69	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
957	\N	\N	Estes Park	40.31198	-105.64574	80517	Black Lake Trail	15610.598	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
958	\N	\N	Grand Lake	40.23919	-105.79968	80510	East Inlet Trail to Lone Pine Lake	17059.004	4.5	3	out and back	['birding', 'camping', 'fishing', 'hiking', 'snowshoeing', 'trail-running', 'walking', 'horseback-riding', 'fly-fishing']	\N
959	\N	\N	Allenspark	40.21967	-105.53451	80510	Sandbeach Lake Trail	13840.324	4.5	5	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
960	\N	\N	Allenspark	40.20762	-105.56664	80510	Ouzel Lake Trail	15127.796	4.5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
961	\N	\N	Estes Park	40.31037	-105.64033	80517	Mills Lake via Glacier Gorge Trail	7885.766	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
962	\N	\N	Estes Park	40.4098	-105.63232	80517	Alluvial Fan Trail	1126.538	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
963	\N	\N	Estes Park	40.43091	-105.50057	80517	West Creek Falls	6920.162	4.5	3	out and back	['hiking', 'snowshoeing', 'walking']	\N
964	\N	\N	Estes Park	40.30646	-105.53796	80517	Lily Lake	1287.472	4.5	1	loop	['birding', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
965	\N	\N	Estes Park	40.31206	-105.64635	80517	Bear Lake to Alberta Falls to Mills Lake	8690.436	5	3	out and back	['hiking', 'nature-trips', 'horseback-riding']	\N
966	\N	\N	Estes Park	40.39341	-105.69536	80517	Ute Trail - Tombstone Ridge	9012.304	4.5	3	out and back	['backpacking', 'hiking', 'nature-trips', 'walking']	\N
967	\N	\N	Estes Park	40.40715	-105.62625	80517	Lawn Lake Trail	18990.212	4.5	5	out and back	['camping', 'fishing', 'hiking', 'horseback-riding']	\N
968	\N	\N	Allenspark	40.20802	-105.56643	80510	Ouzel Falls via Wild Basin Trail	8529.502	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
969	\N	\N	Estes Park	40.31177	-105.64492	80517	The Loch and Lake of Glass	12552.852	5	3	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
970	\N	\N	Allenspark	40.27209	-105.55684	80517	Estes Cone via Eugena Mine and Longs Peak Trail	9656.04	4.5	3	out and back	['birding', 'hiking', 'snowshoeing', 'trail-running', 'horseback-riding']	\N
971	\N	\N	Estes Park	40.31035	-105.6404	80517	Andrews Tarn and Andrews Glacier Trail	13518.456	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing']	\N
972	\N	\N	Mesa Verde National Park	37.18421	-108.48892	81330	Petroglyph Point Trail	4184.284	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
973	\N	\N	Estes Park	40.39655	-105.51255	80517	Bridal Veil Falls Via Lumpy Ridge Trails	20116.75	4.5	5	loop	['backpacking', 'hiking']	\N
974	\N	\N	Estes Park	40.40726	-105.62615	80517	Ypsilon Lake Trail	16898.07	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
975	\N	\N	Estes Park	40.3118	-105.64531	80517	Bear Lake to Sky Pond via Glacier Gorge Trail	14001.258	5	5	out and back	['hiking', 'nature-trips']	\N
976	\N	\N	Allenspark	40.19372	-105.54231	80510	Calypso Cascades via Allenspark Trail	9173.238	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'cross-country-skiing', 'horseback-riding']	\N
977	\N	\N	Estes Park	40.31195	-105.64558	80517	Lake Helene via Fern Lake Trail	9816.974	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking', 'horseback-riding']	\N
978	\N	\N	Allenspark	40.20789	-105.56648	80510	Bluebird Lake Trail	19473.014	4.5	5	out and back	['hiking']	\N
979	\N	\N	Estes Park	40.31194	-105.64562	80517	Nymph, Dream, Haiyaha and Loch Vale Lakes Loop	12713.786	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
980	\N	\N	Estes Park	40.356	-105.61596	80517	Cub Lake	8207.634	4	3	out and back	['hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
981	\N	\N	Allenspark	40.23948	-105.79985	80510	East Inlet Trail to Lake Verna	20760.486	5	5	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'horseback-riding', 'fly-fishing']	\N
982	\N	\N	Montrose	38.56251	-107.74201	81415	Warner Point Nature Trail	2414.01	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
984	\N	\N	Grand Lake	40.30742	-105.8408	80447	Continental Divide National Scenic Trail (CDNST) Loop	46348.992	4.5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
985	\N	\N	Estes Park	40.41424	-105.65535	80517	Chasm Falls Trail via Old Fall River Road	4023.35	4	3	out and back	['hiking', 'mountain-biking', 'snowshoeing']	\N
986	\N	\N	Grand Lake	40.39963	-105.84758	80447	Timber Lake Trail	15932.466	4.5	3	out and back	['birding', 'fishing', 'hiking', 'trail-running']	\N
987	\N	\N	Mesa Verde National Park	37.16609	-108.47224	81330	Cliff Palace Loop Trail	643.736	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
988	\N	\N	Estes Park	40.3104	-105.64032	80517	Mills Lake and The Loch	11265.38	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
989	\N	\N	Grand Lake	40.30741	-105.84094	80447	Green Mountain Trail	5632.69	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking', 'horseback-riding']	\N
990	\N	\N	Estes Park	40.3119	-105.64597	80517	Flat Top Mountain and Fern Lake Trail	16737.136	4.5	3	point to point	['birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'snowshoeing', 'fly-fishing']	\N
991	\N	\N	Estes Park	40.31206	-105.64575	80517	Alberta Falls and Bear Lake	4023.35	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
992	\N	\N	Estes Park	40.39652	-105.51271	80517	Gem Trail to Balanced Rock	11265.38	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
993	\N	\N	Estes Park	40.44121	-105.7542	80517	Alpine Ridge Trail	1126.538	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
994	\N	\N	Estes Park	40.31201	-105.64593	80517	Four Lake Loop Trail	10943.512	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
995	\N	\N	Estes Park	40.41211	-105.73306	80517	Toll Memorial Trail	1770.274	4.5	1	out and back	['hiking', 'walking']	\N
996	\N	\N	Mosca	37.7341	-105.50849	81146	Mosca Pass Trail	10299.776	4.5	3	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running']	\N
997	\N	\N	Allenspark	40.19359	-105.54227	80510	Finch Lake via Allenspark Trail	11748.182	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing']	\N
998	\N	\N	Estes Park	40.31172	-105.64553	80517	Tyndall Glacier and Nymph, Dream, Emerald, and Haiyaha Lakes	10138.842	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
999	\N	\N	Estes Park	40.30674	-105.53803	80517	Lily Ridge Trail	1770.274	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1000	\N	\N	Montrose	38.55468	-107.68673	81401	Oak Flat Loop Trail	2092.142	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1001	\N	\N	Montrose	38.55487	-107.68646	81401	Gunnison Route Trail	2896.812	4.5	7	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'fly-fishing']	\N
1002	\N	\N	Mosca	37.74456	-105.50692	81146	Dunes Trail from Pinyon Flats	7242.03	4.5	5	loop	['birding', 'camping', 'hiking', 'nature-trips']	\N
1003	\N	\N	Estes Park	40.40715	-105.62623	80517	Crystal Lakes Trail	23335.43	5	5	out and back	['hiking', 'horseback-riding']	\N
1004	\N	\N	Estes Park	40.31043	-105.64037	80517	Glacier Gorge Trailhead to Jewel Lake	9495.106	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
1005	\N	\N	Estes Park	40.38707	-105.6108	80517	Trail Ridge Road	62764.26	4.5	3	point to point	['nature-trips', 'road-biking', 'scenic-driving']	\N
1006	\N	\N	Estes Park	40.3965	-105.51345	80517	MacGregor Falls Trail	9977.908	4.5	3	out and back	['hiking']	\N
1007	\N	\N	Montrose	38.5805	-107.7161	81415	Painted Wall View Trail	321.868	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1008	\N	\N	Estes Park	40.31137	-105.64612	80517	Mills Lake via Glacier Gorge Trail	8529.502	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1009	\N	\N	Estes Park	40.43483	-105.73036	80517	Chapin Pass Trail to Mount Chapin	6276.426	5	3	out and back	['hiking']	\N
1010	\N	\N	Estes Park	40.43489	-105.73028	80517	Mount Chiquita via Chapin Pass Trail	8046.7	5	3	out and back	['hiking', 'trail-running']	\N
1011	\N	\N	Estes Park	40.35488	-105.63103	80517	The Pool via Fern Lake Trail	5310.822	4.5	1	out and back	['hiking', 'nature-trips', 'trail-running']	\N
1012	\N	\N	Glen Haven	40.39651	-105.51303	80517	Twin Owls and Lumpy Ridge Loop	2574.944	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
1013	\N	\N	Grand Lake	40.30743	-105.84083	80447	Onahu Trail to Granite Falls	17380.872	4.5	3	out and back	['birding', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
1014	\N	\N	Grand Lake	40.40174	-105.84865	80447	Lulu City Trail	11426.314	4.5	3	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'snowshoeing', 'walking', 'horseback-riding', 'fly-fishing']	\N
1015	\N	\N	Estes Park	40.51791	-105.77047	80512	Mirror Lake Trail	20277.684	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
1016	\N	\N	Estes Park	40.40534	-105.62505	80517	Old Fall River Road	16898.07	4.5	1	point to point	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'off-road-driving', 'trail-running']	\N
1017	\N	\N	Allenspark	40.20782	-105.56621	80510	Thunder Lake Trail	18024.608	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'horseback-riding']	\N
1018	\N	\N	Grand Lake	40.25655	-105.8147	80447	North Inlet Trail to Lake Nokoni	29450.922	4.5	3	out and back	['backpacking', 'camping', 'fishing', 'hiking', 'walking', 'horseback-riding']	\N
1019	\N	\N	Mesa Verde National Park	37.1624	-108.46512	81330	Balcony House Loop Trail	643.736	4.5	1	loop	['birding', 'hiking', 'nature-trips']	\N
1020	\N	\N	Estes Park	40.31208	-105.64596	80517	Bear Lake to Bierstadt Lake via Flat Top Mountain Trail	7081.096	4.5	1	point to point	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
1021	\N	\N	Estes Park	40.37269	-105.61387	80517	Upper Beaver Meadows Loop Trail	1770.274	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1022	\N	\N	Olathe	38.58485	-107.70896	81415	Chasm View Nature Trail	965.604	5	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1023	\N	\N	Estes Park	40.39574	-105.71147	80517	Forest Canyon Overlook	482.802	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1024	\N	\N	Allenspark	40.20776	-105.5665	80510	Lion Lake Trail	19955.816	5	5	out and back	['birding', 'camping', 'hiking', 'snowshoeing', 'cross-country-skiing', 'fly-fishing']	\N
1025	\N	\N	Estes Park	40.32801	-105.57666	80517	Emerald Mountain Trail	2414.01	4	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
1026	\N	\N	Mosca	37.74001	-105.51679	81146	Sand Dunes Loop Trail	8046.7	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
1027	\N	\N	Crawford	38.58664	-107.70502	81415	Exclamation Point	4667.086	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1028	\N	\N	Crawford	38.58674	-107.70492	81415	Green Mountain Summit Via North Vista Trail	10460.71	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1029	\N	\N	Estes Park	40.31226	-105.64641	80517	5 Lake Loop	19633.948	4.5	7	loop	['hiking', 'trail-running']	\N
1030	\N	\N	Mesa Verde National Park	37.30649	-108.42017	81328	Mesa Verde Point Lookout Trail	3379.614	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1031	\N	\N	Estes Park	40.30738	-105.84088	80447	Big Meadows Trail	11909.116	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
1032	\N	\N	Estes Park	40.31182	-105.64579	80517	Bear Lake and Nymph Lake	2896.812	4.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
1033	\N	\N	Estes Park	40.43138	-105.5018	80517	Cow Creek to Gem Lake	12391.918	4.5	3	out and back	['birding', 'hiking']	\N
1034	\N	\N	Grand Lake	40.23958	-105.79978	80510	East Inlet Trail to Spirit Lake	23174.496	5	5	out and back	['camping', 'fishing', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'horseback-riding', 'fly-fishing']	\N
1035	\N	\N	Estes Park	40.35479	-105.63134	80517	Fern and Spruce Lakes	14323.126	4.5	3	out and back	['backpacking', 'fishing', 'hiking', 'nature-trips', 'walking', 'horseback-riding', 'fly-fishing']	\N
1036	\N	\N	Allenspark	40.20847	-105.56085	80510	Finch Lake and Pear Lake Trail	19473.014	4.5	3	out and back	['hiking', 'snowshoeing', 'horseback-riding', 'fly-fishing']	\N
1037	\N	\N	Grand Lake	40.23959	-105.80085	80447	East Inlet Trail to Adams Falls and Campsite	7885.766	4.5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
1038	\N	\N	Crawford	38.55479	-107.68639	81401	Gunnison Point Overlook	321.868	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1039	\N	\N	Estes Park	40.44294	-105.74328	80517	Marmot Point Trail	1287.472	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1040	\N	\N	Grand Lake	40.37258	-105.85468	80447	Holzwarth Historical Site / Never Summer Ranch	1931.208	4	1	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'snowshoeing', 'walking', 'cross-country-skiing', 'fly-fishing']	\N
1041	\N	\N	Montrose	38.55407	-107.68605	81401	Rim Rock Nature Trail	2414.01	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1042	\N	\N	Grand Lake	40.41372	-105.81899	80447	Irene Lake Trail	1287.472	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1043	\N	\N	Mesa Verde National Park	37.16756	-108.46994	81330	Soda Canyon Overlook Trail	1931.208	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1044	\N	\N	Estes Park	40.31994	-105.61996	80517	Boulder Brook Trail	7402.964	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1045	\N	\N	Estes Park	40.35493	-105.63099	80517	Odessa Lake via Fern Lake Trail	14966.862	5	3	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1046	\N	\N	Estes Park	40.42036	-105.81156	80517	Ute Trail from Poudre Lake to Alpine Ridge	13518.456	4.5	3	out and back	['hiking', 'trail-running', 'cross-country-skiing']	\N
1047	\N	\N	Estes Park	40.43487	-105.73032	80517	Chapin, Chiquita, Ypsilon	14323.126	4.5	5	out and back	['backpacking', 'hiking', 'nature-trips', 'trail-running']	\N
1048	\N	\N	Estes Park	40.30617	-105.5369	80517	Storm Pass Trail	23174.496	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1049	\N	\N	Estes Park	40.31196	-105.6456	80517	Bear Lake to Lake Bierstadt	7081.096	4.5	3	out and back	['hiking', 'snowshoeing', 'trail-running', 'walking']	\N
1050	\N	\N	Estes Park	40.35619	-105.61569	80517	Beaver Ponds	3701.482	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1051	\N	\N	Estes Park	40.32831	-105.57836	80517	East Portal Trailhead: Wind River and Glacier Basin Loop	9816.974	4	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1052	\N	\N	Grand Lake	40.30735	-105.84128	80447	Onahu Creek Trail	12874.72	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1053	\N	\N	Estes Park	40.27212	-105.55687	80517	Eugenia Mine	6115.492	4	3	out and back	['hiking', 'walking', 'horseback-riding']	\N
1054	\N	\N	Westcliffe	37.92438	-105.48759	\N	Upper Sand Creek Lake Trail	11909.116	4.5	7	out and back	['backpacking', 'hiking', 'trail-running']	\N
1055	\N	\N	Mesa Verde National Park	37.34014	-108.41197	81328	Mesa Verde National Park Scenic Drive	24140.1	4.5	1	point to point	['nature-trips', 'scenic-driving', 'walking']	\N
1056	\N	\N	Montrose	38.56246	-107.742	81415	Warner Route	6759.228	4.5	7	out and back	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips', 'fly-fishing']	\N
1057	\N	\N	Estes Park	40.3417	-105.60526	80517	Mill Creek Basin Trail to Bierstadt Lake	9977.908	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1058	\N	\N	Estes Park	40.27134	-105.55557	80517	Mount Lady Washington and Chasm Lake	15932.466	4.5	5	loop	['birding', 'hiking', 'nature-trips']	\N
1059	\N	\N	Estes Park	40.40716	-105.6264	80517	Mummy Mountain Trail	23818.232	4.5	7	loop	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
1060	\N	\N	Estes Park	40.37288	-105.61361	80517	Beaver Mountian Trail	6598.294	4.5	3	loop	['hiking']	\N
1061	\N	\N	Estes Park	40.3435	-105.58338	80517	Bible Point	2092.142	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1062	\N	\N	Mesa Verde National Park	37.19588	-108.53785	81330	Long House Trail	3379.614	4.5	3	out and back	['hiking', 'walking']	\N
1063	\N	\N	Estes Park	40.30665	-105.53785	80517	Lilly Lake to Estes Cone Loop	13035.654	4.5	5	out and back	['hiking']	\N
1064	\N	\N	Grand Lake	40.2565	-105.8145	80447	Tonahutu Creek Trail to Big Meadows	15771.532	4.5	3	out and back	['camping', 'hiking', 'horseback-riding']	\N
1065	\N	\N	Estes Park	40.40142	-105.52104	80517	Twin Owls Loop	1287.472	4	3	loop	['hiking', 'horseback-riding']	\N
1066	\N	\N	Grand Lake	40.2566	-105.81466	80447	Big Meadow and Ptarmigan Pass Loop Trail	40716.302	4.5	3	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'skiing', 'walking', 'snowboarding']	\N
1067	\N	\N	Grand Lake	40.40168	-105.84869	80447	Little Yellowstone	19312.08	4.5	3	out and back	['hiking', 'snowshoeing', 'walking', 'horseback-riding']	\N
1068	\N	\N	Grand Lake	40.2066	-105.84261	80447	Shadow Mountain Fire Lookout Trail	14966.862	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1069	\N	\N	Estes Park	40.31196	-105.64561	80517	Little Matterhorn	12230.984	4.5	3	out and back	['hiking', 'rock-climbing']	\N
1070	\N	\N	Allenspark	40.23703	-105.54061	80510	Lookout Mountain and Horsetooth Peak	7563.898	4	5	loop	['birding', 'hiking', 'walking']	\N
1071	\N	\N	Estes Park	40.31053	-105.64042	80517	Glacier Gorge to Glacier Creek Trail	8851.37	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'skiing', 'snowshoeing', 'walking']	\N
1072	\N	\N	Estes Park	40.31153	-105.64634	80517	Rocky Mountain Lake Loop	18990.212	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1073	\N	\N	Westcliffe	37.8558	-105.43223	81040	Medano Lake Trail	12713.786	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1074	\N	\N	Estes Park	40.27196	-105.55656	80517	Mount Lady Washington	12552.852	4.5	7	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing']	\N
1075	\N	\N	Montrose	38.57637	-107.7206	81415	Cedar Point Nature Trail	482.802	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1076	\N	\N	Grand Lake	40.25636	-105.81438	80447	Bear Lake Trail Head to North Inlet Trail Head	26071.308	4.5	7	point to point	['backpacking', 'birding', 'fishing', 'hiking', 'nature-trips', 'cross-country-skiing', 'fly-fishing']	\N
1077	\N	\N	Mesa Verde National Park	37.19601	-108.53723	81330	Step House Trail	1287.472	4.5	3	loop	['hiking']	\N
1078	\N	\N	Estes Park	40.32831	-105.57624	80517	Sprague Lake	7081.096	4	3	out and back	['hiking', 'trail-running']	\N
1079	\N	\N	Mosca	37.73423	-105.5086	81146	Montville Nature Trail	804.67	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1080	\N	\N	Allenspark	40.20762	-105.56638	80510	Finch Lake and Pear Reservoir Trail	21565.156	4.5	5	loop	['birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing', 'snowshoeing', 'trail-running', 'horseback-riding']	\N
1081	\N	\N	Estes Park	40.31051	-105.64031	80517	The Spearhead via Glacier Gorge Trail	20116.75	4.5	7	out and back	['backpacking', 'hiking', 'rock-climbing']	\N
1082	\N	\N	Estes Park	40.3104	-105.64033	80517	Bear Lake Road Loop	7885.766	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1083	\N	\N	Mosca	37.75804	-105.50116	81146	Dunes Overlook Sand Ramp Trail	2414.01	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1084	\N	\N	Estes Park	40.40106	-105.59377	80517	North Deer Mountain Trail	8368.568	4	3	out and back	['hiking', 'trail-running', 'horseback-riding']	\N
1085	\N	\N	Mesa Verde National Park	37.30423	-108.4253	81328	Knife Edge Trail	3218.68	4.5	1	out and back	['hiking', 'nature-trips', 'trail-running']	\N
1086	\N	\N	Grand Lake	40.25644	-105.81441	80447	Lake Nanita Trail	31703.998	4.5	5	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'horseback-riding']	\N
1087	\N	\N	Estes Park	40.42039	-105.8116	80517	Peak 12150 via Ute Trail	9173.238	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1088	\N	\N	Mesa Verde National Park	37.29679	-108.41841	81328	Prater Ridge Trail	11748.182	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1089	\N	\N	Grand Lake	40.40174	-105.84869	80447	Shipler Cabin	6598.294	4.5	3	out and back	['hiking', 'trail-running', 'cross-country-skiing']	\N
1090	\N	\N	Mesa Verde National Park	37.23786	-108.50393	81330	Far View Sites Complex	1287.472	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1091	\N	\N	Mesa Verde National Park	37.18653	-108.48823	81330	Spruce Canyon Trail	4988.954	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1092	\N	\N	Estes Park	40.40726	-105.62617	80517	The Saddle Trail	25588.506	4.5	5	out and back	['hiking']	\N
1093	\N	\N	Estes Park	40.35622	-105.61575	80517	Fern Lake Trail and Cub Lake Trail Loop	16737.136	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1094	\N	\N	Estes Park	40.31145	-105.64612	80517	Mount Otis from Bear Lake	17059.004	5	7	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'snowshoeing', 'ice-climbing']	\N
1095	\N	\N	Estes Park	40.39375	-105.65526	80517	Hidden Valley Creek Nature Walk	804.67	4.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
1096	\N	\N	Estes Park	40.37642	-105.54237	80517	Oldman Mountain	965.604	4	3	out and back	['hiking', 'rock-climbing']	\N
1097	\N	\N	Estes Park	40.3074	-105.84098	80447	Haynach Lakes Trail	23657.298	4.5	5	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'horseback-riding']	\N
1098	\N	\N	Estes Park	40.4015	-105.52102	80517	Black Canyon Trail	24944.77	4.5	3	out and back	['camping', 'hiking', 'horseback-riding']	\N
1099	\N	\N	Estes Park	40.39371	-105.65556	80517	Hidden Valley Trail	3540.548	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'skiing', 'snowshoeing', 'snowboarding']	\N
1100	\N	\N	Estes Park	40.31058	-105.6402	80517	Shelf Lake and Solitude Lake via Glacier Gorge Trail	14805.928	5	5	out and back	['hiking', 'rock-climbing']	\N
1101	\N	\N	Allenspark	40.20853	-105.56055	80510	Finch Lake from Finch Lake Trailhead	13840.324	4.5	3	out and back	['backpacking', 'camping', 'hiking', 'snowshoeing']	\N
1102	\N	\N	Estes Park	40.31999	-105.62	80517	Longs Peak Via Boulder Brook	25105.704	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1103	\N	\N	Grand Lake	40.13008	-105.76621	80446	East Shore Trail	33635.206	3.5	3	out and back	['camping', 'hiking', 'trail-running', 'walking']	\N
1104	\N	\N	Estes Park	40.35395	-105.58344	80517	South Lateral Moraine Trail	7402.964	4	1	out and back	['hiking', 'horseback-riding']	\N
1105	\N	\N	Glen Haven	40.39646	-105.51306	80517	Black Canyon, Dark Mountain, Cow Creek, Gem Lake Loop	17219.938	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1106	\N	\N	Montrose	38.57396	-107.72309	81415	Dragon Point Trail	643.736	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1107	\N	\N	Grand Lake	40.40166	-105.84894	80447	Lake of the Clouds via Grand Ditch Trail	20438.618	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1108	\N	\N	Estes Park	40.42024	-105.81135	80517	Azure Lake and Inkwell Lake Loop	17863.674	5	5	out and back	['backpacking', 'hiking', 'nature-trips']	\N
1109	\N	\N	Grand Lake	40.42534	-105.80522	80517	Cache la Poudre River Trail	6920.162	4.5	1	out and back	['hiking', 'walking']	\N
1110	\N	\N	Estes Park	40.32052	-105.60788	80517	Sprague Lake, Glacier Creek and Storm Pass Loop	4345.218	4	3	loop	['hiking', 'trail-running']	\N
1111	\N	\N	Estes Park	40.31194	-105.6458	80517	Nymph Lake, Lake Haiyaha, Mills Lake and Jewel Lake	11909.116	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1112	\N	\N	Mosca	37.75799	-105.50116	81146	Little Medano Creek Trail to Medano Lake	40394.434	4	3	out and back	['bike-touring', 'birding', 'camping', 'hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
1113	\N	\N	Mosca	37.73399	-105.50871	81146	Wellington Ditch Trail	2896.812	4	1	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
1114	\N	\N	Montrose	38.56258	-107.74128	81415	High Point Trail	482.802	4	3	out and back	['nature-trips']	\N
1115	\N	\N	Estes Park	40.40703	-105.62617	80517	Little Horseshoe Park Trail	10138.842	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1116	\N	\N	Estes Park	40.31212	-105.64638	80517	Flattop Mountain Trail to Ptarmigan Pass to Big Meadows	41038.17	4.5	5	out and back	['backpacking', 'camping', 'hiking', 'horseback-riding']	\N
1117	\N	\N	Estes Park	40.404560000000004	-105.7133	80517	Sundance Mountain Trail	4828.02	4.5	3	loop	['hiking']	\N
1118	\N	\N	Estes Park	40.43051	-105.50071	80517	West Creek Falls and Fox Creek Falls Trail	10460.71	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1119	\N	\N	Estes Park	40.40727	-105.62657	80517	Mount Fairchild Trail	32991.47	5	7	loop	['backpacking', 'hiking']	\N
1120	\N	\N	Estes Park	40.34432	-105.57101	80517	Eagle Cliff Mountain	4023.35	4.5	5	out and back	['hiking', 'nature-trips']	\N
1121	\N	\N	Mesa Verde National Park	37.18449	-108.48454	81330	Mesa Top Loop Road	7402.964	4	1	loop	['birding', 'nature-trips', 'scenic-driving', 'walking']	\N
1122	\N	\N	Mesa Verde National Park	37.2797	-108.4621	81328	Park Point Overlook Trail	643.736	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1123	\N	\N	Estes Park	40.35483	-105.63085	80517	Fern Lake Trail to Flat Top Mountain Loop	37497.622	5	5	loop	['backpacking', 'hiking', 'nature-trips']	\N
1124	\N	\N	Montrose	38.52786	-107.64904	81401	East Portal Trail	1287.472	4	1	out and back	['camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1125	\N	\N	Estes Park	40.42039	-105.8116	80517	Chief Cheley Peak and Mount Ida	17219.938	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
1126	\N	\N	Estes Park	40.39644	-105.51289	80517	Black Canyon Trail	12070.05	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1127	\N	\N	Montrose	38.5652	-107.70037	81401	Pulpit Rock Overlook Trail	160.934	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1128	\N	\N	Estes Park	40.34156	-105.60524	80517	Cub Lake Loop via Moraine Trail	15771.532	4	3	loop	['hiking', 'trail-running']	\N
1129	\N	\N	Mesa Verde National Park	37.19574	-108.53807	81330	Badger House Community Trail	3701.482	4	1	loop	['hiking', 'walking']	\N
1130	\N	\N	Estes Park	40.43484	-105.73036	80517	Chapin Creek	2414.01	4.5	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1131	\N	\N	Montrose	38.5705	-107.70359	81401	Cross Fissures Trail	482.802	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1132	\N	\N	Mosca	37.74456	-105.50741	81146	Dunes Overlook Trail	4345.218	4	3	out and back	['hiking']	\N
1133	\N	\N	Montrose	38.57157	-107.70827	81401	Devils Lookout Trail	804.67	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1134	\N	\N	Grand Lake	40.26645	-105.8323	80447	Visitor Center to Granite Falls	23335.43	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1135	\N	\N	Estes Park	40.39911	-105.6411	80517	Beaver Ponds Boardwalk	160.934	3	1	out and back	['hiking', 'walking']	\N
1136	\N	\N	Grand Lake	40.3723	-105.86021	80447	Red Mountain to Grand Ditch Trail	18346.476	4.5	3	out and back	['hiking']	\N
1137	\N	\N	Estes Park	40.31189	-105.64609	80517	Six Lakes Boulder Loop	14323.126	5	5	loop	['hiking']	\N
1138	\N	\N	Estes Park	40.43106	-105.50068	80517	Cow Creek to McGregor Loop	19312.08	4.5	3	loop	['hiking']	\N
1139	\N	\N	Estes Park	40.30644	-105.5379	80517	Storm Pass and Longs Peak Trail	33957.074	4.5	5	out and back	['backpacking', 'camping', 'hiking']	\N
1140	\N	\N	Montrose	38.56876	-107.73352	81415	Sunset View Trail	160.934	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1141	\N	\N	Estes Park	40.32814	-105.57579	80517	Wind River, Storm Pass, Sprague Lake, and Glacier Creek Loop	10460.71	4	3	loop	['hiking', 'nature-trips', 'walking', 'cross-country-skiing']	\N
1142	\N	\N	Estes Park	40.42038	-105.8114	80517	Continental Divide Traverse: Milner Pass to Bear Lake	25910.374	5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1143	\N	\N	Montrose	38.57053	-107.70663	81401	Rock Point Trail	643.736	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1144	\N	\N	Allenspark	40.19381	-105.5414	80510	Finch Lake and Pear Lake via Allenspark Trail	19312.08	4.5	3	out and back	['hiking', 'nature-trips']	\N
1145	\N	\N	Estes Park	40.31197	-105.64597	80517	Bear Lake to Howell Park	14484.06	4	3	out and back	['birding', 'hiking', 'nature-trips', 'skiing', 'snowshoeing', 'walking', 'fly-fishing']	\N
1146	\N	\N	Glen Haven	40.43103	-105.50061	80517	Balanced Rock via Cow Creek Trail	11748.182	4	3	out and back	['hiking', 'trail-running', 'horseback-riding']	\N
1147	\N	\N	Mesa Verde National Park	37.19833	-108.48369	81330	Farming Terraces Trail	643.736	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1233	\N	\N	Chesterton	41.65986	-87.06605	46304	Trail 3	2253.076	4	1	loop	['birding', 'hiking', 'nature-trips']	\N
1148	\N	\N	Grand Lake	40.40165	-105.8488	80447	Colorado River and Red Mountain Trail	9977.908	4	5	out and back	['birding', 'hiking', 'horseback-riding']	\N
1149	\N	\N	Montrose	38.58116	-107.71483	81401	Chasm View South Rim Lookout Trail	160.934	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1150	\N	\N	Grand Lake	40.48034	-105.82239	80512	Lulu City via Little Yellowstone Trail	13840.324	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1151	\N	\N	Montrose	38.55479	-107.68667	81401	Uplands Trail	3540.548	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1152	\N	\N	Grand Lake	40.40165	-105.84878	80447	Skeleton Gulch	20116.75	4.5	5	out and back	['hiking', 'nature-trips', 'trail-running']	\N
1153	\N	\N	Mosca	37.74457	-105.50727	81146	Pinion Flats Campground Trail	1609.34	4	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1154	\N	\N	Estes Park	40.31051	-105.64031	80517	North Long's Peak Trail to Boulder Brook	12874.72	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1155	\N	\N	Allenspark	40.2079	-105.56648	80510	Wild Basin Trail to Allenspark Trail	14805.928	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1156	\N	\N	Estes Park	40.32048	-105.6237	80517	Bear Lake Road to Cub Lake and Fern Lake Trail	12552.852	5	3	point to point	['hiking']	\N
1157	\N	\N	Estes Park	40.31206	-105.64635	80517	Bear Fern Cub Lake	16254.334	4.5	3	point to point	['backpacking', 'birding', 'walking']	\N
1158	\N	\N	Crawford	38.56199	-107.67712	81415	Deadhorse Loop Trail	6598.294	3	3	loop	['hiking']	\N
1159	\N	\N	Estes Park	40.31194	-105.64584	80517	Lake Nanita and Nokoni via Bear Lake Trailhead	39589.764	4.5	7	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1160	\N	\N	Estes Park	40.30688	-105.53795	80517	Gianttrack Mountain Trail	11265.38	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1161	\N	\N	Allenspark	40.20766	-105.56651	80510	Boulder Grand Pass and Thunder Lake Trail	24461.968	4	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
1162	\N	\N	Allenspark	40.22015	-105.53414	80510	Keplinger Lake from Sandbeach Lake Trailhead	20438.618	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1163	\N	\N	Estes Park	40.43467	-105.73057	80517	Hague Valley	22691.694	0	5	out and back	['hiking', 'nature-trips', 'horseback-riding']	\N
1164	\N	\N	Estes Park	40.31963	-105.61974	80517	Boulder Brook, North Longs Peak Trail, Alberta Falls and Glacier Creek Loop	16576.202	5	3	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'cross-country-skiing']	\N
1165	\N	\N	Grand Lake	40.25655	-105.81469	80447	North Inlet Trail to Lake Nanita	31703.998	4.5	5	out and back	['backpacking', 'hiking', 'nature-trips']	\N
1166	\N	\N	Cimarron	38.5504	-107.68703	81401	Tomichi Trail	2092.142	5	5	out and back	['fishing', 'hiking', 'nature-trips', 'trail-running']	\N
1167	\N	\N	Grand Lake	40.31591	-105.84367	80447	Timber Creek Trail	20921.42	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1168	\N	\N	Grand Lake	40.4803	-105.82228	80512	Grand Ditch to Thunder Pass Trail	17219.938	5	3	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'walking', 'cross-country-skiing']	\N
1169	\N	\N	Grand Lake	40.25664	-105.81465	80447	Tonahutu Creek and Granite Falls Trail	30899.328	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1170	\N	\N	Estes Park	40.40077	-105.62665	80517	Spectacle Lakes via Ypsilon Lake Trail	17380.872	4	3	out and back	['hiking']	\N
1171	\N	\N	Estes Park	40.40709	-105.62642	80517	Rowe's Glacier to Lost Lake via Lawn Lake Trail	58579.976	4.5	7	loop	['backpacking', 'hiking', 'rock-climbing']	\N
1172	\N	\N	Estes Park	40.32038	-105.60837	80517	Sky Pond via Glacier Creek Loop	22691.694	4.5	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1173	\N	\N	Grand Lake	40.27703	-105.85005	80447	Valley and River Trail Loop	7885.766	3.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1174	\N	\N	Mosca	37.73916	-105.51819	81146	High and Star Dune Loop	12713.786	4.5	3	loop	['backpacking', 'hiking']	\N
1175	\N	\N	Estes Park	40.43058	-105.50073	80517	Fox Creek Falls	8368.568	5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1176	\N	\N	Estes Park	40.38692	-105.60979	80517	Deer Mountain Loop	18185.542	3.5	3	loop	['backpacking', 'hiking', 'trail-running']	\N
1177	\N	\N	Grand Lake	40.27714	-105.84988	80447	Rocky Mountain National Park River Trail	6759.228	3	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
1178	\N	\N	Grand Lake	40.2771	-105.8501	80447	River and Tonahutu Creek Loop	22369.826	5	3	loop	['hiking', 'nature-trips', 'horseback-riding']	\N
1179	\N	\N	Grand Lake	40.25655	-105.81469	80447	War Dance Falls and Bench Lake via North Inlet Trail	22691.694	5	5	out and back	['hiking', 'trail-running']	\N
1180	\N	\N	Allenspark	40.21988	-105.53445	80510	Sandbeach Lake and Mount Orton	19794.882	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1181	\N	\N	Estes Park	40.39322	-105.6953	80517	Sundance Mountain	4988.954	4	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1182	\N	\N	Crawford	38.56201	-107.67765	81415	Dead Horse Trail	8529.502	3	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1183	\N	\N	Grand Lake	40.4203	-105.81129	80517	Little Rock Lake via Ute Trail and Mount Ida Trail	23174.496	4.5	7	out and back	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
1184	\N	\N	Allenspark	40.21962	-105.53448	80510	Sandbeach Trailhead to Bierstadt Lake Trailhead	78535.792	0	7	point to point	['backpacking', 'birding', 'camping', 'hiking']	\N
1185	\N	\N	Mesa Verde National Park	37.1843	-108.48833	81330	Spruce Tree House Trail [CLOSED]	804.67	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1186	\N	\N	Mosca	37.73285	-105.51244	81146	Sand Sheet Loop	643.736	4	1	loop	['hiking', 'nature-trips']	\N
1187	\N	\N	Estes Park	40.42415	-105.8082	80517	Specimen Mountain Crater Trail [CLOSED]	3057.746	2.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1188	\N	\N	Estes Park	40.3201	-105.61994	80517	Granite Pass, Chasm Lake, and Storm Pass from Storm Pass Trailhead	27519.714	0	5	loop	['backpacking', 'hiking', 'trail-running']	\N
1189	\N	\N	Miami	25.7567	-80.76584	33194	Shark Valley Trail	25427.572	4.5	1	loop	['birding', 'road-biking', 'trail-running', 'walking']	\N
1190	\N	\N	Homestead	25.38252	-80.60978	\N	Anhinga Trail	2414.01	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1191	\N	\N	Gulf Breeze	30.31858	-87.24114	32561	Fort Pickens Trail	13196.588	4.5	1	out and back	['hiking', 'mountain-biking', 'trail-running', 'walking']	\N
1192	\N	\N	Homestead	25.44076	-80.78342	33034	Pa-Hay-Okee Overlook Trail	321.868	4	1	loop	['birding', 'hiking', 'walking']	\N
1193	\N	\N	Homestead	25.38245	-80.61006	\N	Gumbo Limbo Trail	643.736	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1194	\N	\N	Homestead	25.42802	-80.72079	\N	Long Pine Key Trail	24944.77	4	1	out and back	['backpacking', 'bike-touring', 'camping', 'hiking', 'mountain-biking', 'trail-running']	\N
1195	\N	\N	Miami	25.53849	-80.33091	33032	Biscayne National Park Walk	15932.466	4	1	out and back	['birding', 'fishing', 'nature-trips', 'paddle-sports', 'road-biking', 'trail-running', 'walking', 'sea-kayaking', 'canoeing']	\N
1196	\N	\N	Homestead	25.32375	-80.83196	33034	Mahogany Hammock Trail	643.736	3.5	1	loop	['nature-trips', 'walking']	\N
1197	\N	\N	Homestead	25.13673	-80.94849	33034	Everglades Coastal Prairie Trail	27358.78	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1198	\N	\N	Key West	24.62723	-82.87242	33040	Fort Jefferson Loop	804.67	4.5	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'paddle-sports', 'walking', 'canoeing']	\N
1199	\N	\N	Homestead	25.42319	-80.67959	\N	Pinelands Trail	643.736	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1200	\N	\N	Homestead	25.4036	-80.55841	33030	Everglades National Park East Entrance to Flamingo Scenic Route	58258.108	4.5	1	point to point	['birding', 'nature-trips', 'scenic-driving']	\N
1201	\N	\N	Gulf Breeze	30.31943	-87.26118	32561	Blackbird Marsh Trail	2574.944	4.5	1	loop	['birding', 'hiking', 'walking']	\N
1202	\N	\N	Homestead	25.25362	-80.79805	33034	Nine Mile Pond	8851.37	4	1	loop	['birding', 'nature-trips', 'paddle-sports', 'canoeing']	\N
1203	\N	\N	Homestead	25.54017	-80.32772	33032	Black Creek Canal Trail	2735.878	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1204	\N	\N	Miami	25.75662	-80.7661	33194	Bobcat Boardwalk Trail	643.736	3	1	loop	['walking']	\N
1205	\N	\N	Homestead	25.46415	-80.3356	33033	Jetty Trail	1448.406	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1206	\N	\N	Homestead	25.13873	-80.93758	33034	Eco Pond Trail	804.67	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1207	\N	\N	Homestead	25.14033	-80.92546	33034	Guy Bradley Trail	1609.34	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1208	\N	\N	Islamorada	25.20107	-80.87416	33034	Snake Bight Trail	5793.624	3	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1209	\N	\N	Homestead	25.13763	-80.93821	33034	Flamingo Campground	3540.548	4.5	1	loop	['camping', 'nature-trips', 'walking']	\N
1210	\N	\N	Islamorada	25.21429	-80.85071	33034	West Lake Trail	482.802	2.5	1	loop	['birding', 'fishing', 'hiking', 'nature-trips', 'walking', 'whitewater-kayaking', 'canoeing']	\N
1211	\N	\N	Homestead	25.14393	-80.92357	33034	Bear Lake Trail	12552.852	3	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1212	\N	\N	Homestead	25.14257	-80.92257	33034	Flamingo to Coot Bay	12070.05	3.5	1	out and back	['hiking', 'nature-trips', 'paddle-sports', 'canoeing']	\N
1213	\N	\N	Homestead	25.14418	-80.92382	33034	Christian Point Trail	8368.568	3	1	loop	['birding', 'hiking', 'nature-trips']	\N
1214	\N	\N	Islamorada	25.17508	-80.90501	33034	Rowdy Bend Trail	8368.568	2.5	1	out and back	['birding', 'hiking', 'walking']	\N
1215	\N	\N	Homestead	25.14256	-80.92243	33034	Wilderness Waterway	143070.326	4	3	point to point	['birding', 'nature-trips', 'paddle-sports', 'canoeing']	\N
1216	\N	\N	Everglades City	25.83536	-81.50646	34114	Fakahatchee Island	31703.998	3	3	loop	['paddle-sports', 'sea-kayaking']	\N
1217	\N	\N	Homestead	25.52443	-80.17485	33155	Boca Chita Trail	1287.472	3	1	loop	['hiking', 'walking']	\N
1218	\N	\N	Homestead	25.74861	-80.76693	33194	Otter Cave Hammock Trail	482.802	4	1	out and back	['nature-trips', 'walking']	\N
1219	\N	\N	Islamorada	25.21468	-80.85047	33034	West Lake Canoe Trails	27519.714	0	1	out and back	['birding', 'nature-trips', 'paddle-sports', 'canoeing']	\N
1220	\N	\N	Jonesboro	33.5312	-84.31568	30236	Clayton County International Park Trail	2574.944	4	3	loop	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
1221	\N	\N	Chesterton	41.64508	-87.0857	46304	Cowles Bog Trail	6920.162	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'cross-country-skiing']	\N
1222	\N	\N	Chesterton	41.6245	-87.08934	46304	Little Calumet River Trail Loop	6276.426	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1223	\N	\N	Portage	41.62244	-87.20793	46403	West Beach Loop with Scallop Dunes and Long Lake Trail	5471.756	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1224	\N	\N	Portage	41.62209	-87.20799	46403	Dune Succession and West Beach Walk	4345.218	4.5	1	out and back	['nature-trips', 'walking']	\N
1225	\N	\N	Portage	41.62254	-87.20827	46403	West Beach Loop	1770.274	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1226	\N	\N	Gary	41.60671	-87.26868	46403	Miller Woods Trail	6115.492	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1227	\N	\N	Beverly Shores	41.67729	-87.00886	46304	Dune Ridge Trail	1448.406	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1228	\N	\N	Portage	41.61477	-87.19301	46368	Tolleston Dunes	5149.888	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1229	\N	\N	Chesterton	41.65898	-87.05661	46304	Beach Trail to Waverly Beach	1609.34	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1230	\N	\N	Gary	41.59516	-87.29994	46403	Indiana's Lake Michigan Shoreline Scenic Drive	35083.612	3.5	3	point to point	['nature-trips', 'scenic-driving', 'walking']	\N
1231	\N	\N	Portage	41.61986	-87.17965	46368	Portage Lake Front River Walk	3057.746	4	1	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1232	\N	\N	Chesterton	41.62449	-87.08932	46304	Bailey Homestead Loop	1770.274	4.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
1234	\N	\N	Chesterton	41.63696	-87.08704	46304	Calumet Trail	14805.928	3.5	1	point to point	['hiking', 'road-biking', 'snowshoeing', 'trail-running', 'walking', 'cross-country-skiing']	\N
1235	\N	\N	Michigan City	41.67481	-86.98662	46304	Great Marsh Trail Loop	2253.076	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1236	\N	\N	Chesterton	41.62953	-87.09132	46304	Bailey Cemetary Trail	804.67	3	1	out and back	['hiking', 'nature-trips']	\N
1237	\N	\N	Mammoth Cave	37.18836	-86.101	42259	Green River Bluffs Trail	7242.03	4.5	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1238	\N	\N	Park City	37.15571	-86.16037	42210	Cedar Sink Trail	2896.812	4.5	1	out and back	['birding', 'hiking', 'nature-trips']	\N
1239	\N	\N	Mammoth Cave	37.13587	-85.97919	42127	Mammoth Cave National Park Scenic Drive	17541.806	4.5	1	point to point	['nature-trips', 'scenic-driving', 'whitewater-kayaking', 'canoeing']	\N
1240	\N	\N	Mammoth Cave	37.18574	-86.1011	42259	Sinkhole Trail	3862.416	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1241	\N	\N	Mammoth Cave	37.18708	-86.10115	42259	Echo River Spring and Sinkhole Loop	4988.954	4	1	loop	['hiking', 'nature-trips', 'walking']	\N
1242	\N	\N	Park City	37.17961	-86.11159	42259	Echo River and River Styx Springs Trail	5471.756	4	1	out and back	['camping', 'hiking', 'walking']	\N
1243	\N	\N	Mammoth Cave	37.2057	-86.13892	42259	Sal Hollow and Buffalo Creek Loop Trail	8690.436	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1244	\N	\N	Mammoth Cave	37.18657	-86.10066	42259	Dixon Cave Trail Loop	2414.01	4	1	loop	['hiking', 'nature-trips', 'walking']	\N
1245	\N	\N	Mammoth Cave	37.21868	-86.22205	42259	First Creek Lake Trail	5793.624	4	3	loop	['camping', 'hiking', 'walking', 'horseback-riding']	\N
1246	\N	\N	Mammoth Cave	37.21868	-86.22196	42259	McCoy Hollow Trail	19794.882	4	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1247	\N	\N	Mammoth Cave	37.1857	-86.10101	42259	Heritage Trail Loop	1287.472	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1248	\N	\N	Mammoth Cave	37.24578	-86.19162	42259	Mammoth Cave Park Long Loop Trail	25910.374	3	3	loop	['hiking', 'trail-running']	\N
1249	\N	\N	Mammoth Cave	37.2057	-86.13904	42259	Big Hollow North and South Loops Trail	17863.674	4	3	loop	['birding', 'hiking', 'trail-running']	\N
1250	\N	\N	Park City	37.10426	-86.05828	42160	Mammoth Cave Railroad Trail	25749.44	4	3	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking', 'rails-trails']	\N
1251	\N	\N	Mammoth Cave	37.15271	-86.04777	42127	Sand Cave Trail	321.868	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1252	\N	\N	Park City	37.1511	-86.09842	42160	Sloan's Crossing Pond Trail	643.736	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1253	\N	\N	Park City	37.16245	-86.15842	42259	Turnhole Bend Nature Trail	804.67	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1254	\N	\N	Brownsville	37.17972	-86.11153	42259	Echo River Spring Trail	3540.548	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1255	\N	\N	Mammoth Cave	37.20566	-86.13908	42259	Buffalo Trail	8851.37	3.5	1	out and back	['hiking', 'horseback-riding']	\N
1256	\N	\N	Mammoth Cave	37.20567	-86.13913	42259	Turnhole Bend via Buffalo Trail	9656.04	3.5	1	out and back	['camping', 'hiking']	\N
1257	\N	\N	Horse Cave	37.24397	-86.06576	42729	White Oak Trail	8207.634	3.5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1258	\N	\N	Mammoth Cave	37.24427	-86.19118	42259	Wet Prong Trail	11748.182	3.5	3	out and back	['hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1259	\N	\N	Mammoth Cave	37.25578	-86.15843	42259	Raymer Hollow Trail	11265.38	3.5	3	out and back	['hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1260	\N	\N	Mammoth Cave	37.24757	-86.19074	42259	Collie Ridge Loop	16093.4	3	1	loop	['hiking', 'walking', 'horseback-riding']	\N
1261	\N	\N	Brownsville	37.20563	-86.13903	42259	Buffalo Creek and Saw Hollow Loop	19151.146	4.5	3	loop	['backpacking', 'hiking', 'trail-running']	\N
1262	\N	\N	Mammoth Cave	37.20574	-86.13906	42259	Maple Springs, Raymer Hollow Trail, and Mill Branch Trail Loop	21404.222	4.5	3	loop	['birding', 'hiking', 'nature-trips']	\N
1263	\N	\N	Mammoth Cave	37.24522	-86.19145	42259	Blair Spring Trail	9334.172	2	3	out and back	['hiking']	\N
1264	\N	\N	Mammoth Cave	37.20887	-86.14675	42259	Good Spring West Trail [CLOSED]	5149.888	3.5	3	out and back	['hiking', 'nature-trips']	\N
1265	\N	\N	Bar Harbor	44.33153	-68.1852	04609	The Beehive Loop Trail	2253.076	5	5	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
1266	\N	\N	Bar Harbor	44.37854	-68.22954	04609	Cadillac North Ridge Trail	6437.36	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1267	\N	\N	Mount Desert	44.322	-68.25437	04675	Jordan Pond Full Loop Trail	5471.756	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1268	\N	\N	Bar Harbor	44.32998	-68.18404	04609	Ocean Path and Gorham Mountain Loop Trail	4988.954	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1269	\N	\N	Bar Harbor	44.31306	-68.21502	04609	Cadillac Mountain South Ridge Trail Loop	12070.05	4.5	5	loop	['hiking', 'nature-trips', 'rock-climbing']	\N
1270	\N	\N	Bar Harbor	44.34971	-68.18794	04609	Precipice, Orange and Black and Champlain North Ridge Trail Loop	3379.614	5	5	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
1271	\N	\N	Bar Harbor	44.32985	-68.18432	04609	Ocean Path Trail: Thunder Hole and Monument Cove	7242.03	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running', 'walking']	\N
1272	\N	\N	Bar Harbor	44.33001	-68.18399	04609	Great Head Trail (Short Option)	2574.944	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1273	\N	\N	Mount Desert	44.34113	-68.2505	04660	South Bubble Mountain and Jordan Pond Loop	2253.076	4.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1274	\N	\N	Bar Harbor	44.3528	-68.22459	04609	Cadillac Summit Loop Trail	482.802	4.5	1	loop	['birding', 'nature-trips', 'walking']	\N
1275	\N	\N	Mount Desert	44.32162	-68.33279	04660	Acadia Mountain and St. Sauveur Mountain Trail Loop	5632.69	4.5	5	loop	['hiking']	\N
1276	\N	\N	Bar Harbor	44.31667	-68.19205	04609	Gorham Mountain	2574.944	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'cross-country-skiing']	\N
1277	\N	\N	Bar Harbor	44.34118	-68.25026	04660	Bubbles Trail to Conners Nubble and Eagle Lake	7081.096	4.5	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'road-biking', 'trail-running', 'walking']	\N
1278	\N	\N	Southwest Harbor	44.23165	-68.32552	04679	Ship Harbor Trail	2092.142	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1279	\N	\N	Mount Desert	44.32023	-68.25286	04675	Penobscot Mountain Trail	4667.086	5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1280	\N	\N	Bar Harbor	44.35175	-68.20508	04609	Dorr Mountain Ladder Trail	4345.218	4.5	5	loop	['hiking']	\N
1281	\N	\N	Mount Desert	44.31514	-68.34318	04679	Beech Mountain Loop Trail	1931.208	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1282	\N	\N	Bar Harbor	44.3921	-68.21009	04609	Bar Island Trail	2896.812	4	1	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1283	\N	\N	Bar Harbor	44.33388	-68.17862	04609	Great Head Trail (Full Loop)	2896.812	4.5	3	loop	['birding', 'hiking', 'nature-trips']	\N
1284	\N	\N	Bass Harbor	44.23375	-68.32016	04679	Wonderland Trail	2574.944	4	1	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking', 'cross-country-skiing']	\N
1285	\N	\N	Bar Harbor	44.33155	-68.18519	04609	The Bowl Trail	2092.142	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1286	\N	\N	Bar Harbor	44.37792	-68.25222	04609	Eagle Lake Carriage Road Trail	9656.04	4.5	1	loop	['hiking', 'mountain-biking', 'nature-trips', 'paddle-sports', 'walking', 'cross-country-skiing', 'canoeing']	\N
1287	\N	\N	Southwest Harbor	44.29949	-68.31643	04679	Flying Mountain Trail	2414.01	4.5	3	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1288	\N	\N	Mount Desert	44.3219	-68.3327	04660	Acadia Mountain and Man O War Trail	4023.35	4.5	3	loop	['birding', 'fishing', 'hiking', 'nature-trips', 'paddle-sports', 'trail-running', 'walking', 'horseback-riding', 'canoeing']	\N
1289	\N	\N	Bar Harbor	44.3526	-68.22463	04609	Gorge Path Trail	5471.756	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1290	\N	\N	Bar Harbor	44.33155	-68.18522	04609	North Gorham Mountain Trail	2414.01	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1291	\N	\N	Bar Harbor	44.32102	-68.18935	04609	Thunder Hole	321.868	4.5	1	loop	['birding', 'nature-trips', 'walking']	\N
1292	\N	\N	Mount Desert	44.34827	-68.24201	04609	Pemetic North and South Ridge Trails	10621.644	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1293	\N	\N	Bar Harbor	44.33154	-68.18515	04609	The Beehive via Bowl Trail	1609.34	5	3	loop	['hiking', 'nature-trips']	\N
1294	\N	\N	Mount Desert	44.31218	-68.28531	04662	Sargent Mountain South Ridge Trail	10460.71	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1295	\N	\N	Bar Harbor	44.35871	-68.20553	04609	Champlain Mountain & Beehive Loop Trail	10621.644	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1296	\N	\N	Mount Desert	44.32042	-68.25416	04675	Jordan Cliffs Trail to Penobscot Mountain	4828.02	4.5	7	loop	['birding', 'hiking', 'nature-trips']	\N
1297	\N	\N	Mount Desert	44.32357	-68.24842	04675	Jordan Pond East Side Trail	4667.086	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1298	\N	\N	Bar Harbor	44.34113	-68.25027	04660	North Bubble Trail	1448.406	4.5	3	out and back	['hiking', 'nature-trips']	\N
1299	\N	\N	Bass Harbor	44.22251	-68.33698	04653	Bass Harbor Head Light Trail	321.868	4	3	out and back	['hiking', 'walking']	\N
1300	\N	\N	Mount Desert	44.32238	-68.25315	04660	Jordan Pond to South Bubble Summit	4828.02	4.5	3	out and back	['hiking', 'nature-trips']	\N
1301	\N	\N	Bar Harbor	44.34115	-68.25045	04660	The Bubbles and North Bubble	2414.01	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1302	\N	\N	Bar Harbor	44.33007	-68.18421	04609	Beehive, Gorham Mountain and Ocean Path Loop	5632.69	4.5	5	loop	['hiking', 'nature-trips']	\N
1303	\N	\N	Bar Harbor	44.35181	-68.20479	04609	Dorr Mountain Cannon Brook Loop Trail	5149.888	4.5	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1304	\N	\N	Mount Desert	44.3229	-68.25382	04660	Jordan Pond, Sargent Mountain, and Penobscot Mountain Loop Trail	8368.568	4.5	3	loop	['birding', 'hiking', 'nature-trips']	\N
1305	\N	\N	Mount Desert	44.32589	-68.29126	04660	Parkman Mountain Trail	3540.548	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1306	\N	\N	Mount Desert	44.31527	-68.34355	04679	Beech Cliff Trail via Beech Cliff Loop	2253.076	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1307	\N	\N	Mount Desert	44.35026	-68.30172	04660	Sargent Mountain and Gilmore Peak via Giant Slide Trail	7242.03	5	5	loop	['birding', 'hiking', 'nature-trips']	\N
1308	\N	\N	Bar Harbor	44.35902	-68.20599	04609	Jesup Trail	3540.548	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1309	\N	\N	Mount Desert	44.32236	-68.25308	04660	Jordan Pond West Side Trail	5310.822	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1310	\N	\N	Bar Harbor	44.35841	-68.20551	04609	Beachcroft Path Trail	3379.614	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1311	\N	\N	Bar Harbor	44.36312	-68.19335	04609	Champlain North Ridge Trail	3057.746	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1312	\N	\N	Bar Harbor	44.362	-68.20731	04609	Schiff Path to Dorr Mountain	5149.888	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1313	\N	\N	Bar Harbor	44.32984	-68.18427	04609	Beehive, the Bowl, Gorham Mountain, Ocean Drive Loop	10138.842	5	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1314	\N	\N	Bar Harbor	44.4089	-68.24929	04609	Witch Hole Pond Carriage Trail	11748.182	4.5	1	loop	['hiking', 'mountain-biking', 'road-biking', 'surfing', 'trail-running', 'walking', 'cross-country-skiing']	\N
1315	\N	\N	Mount Desert	44.31496	-68.33658	04679	Beech Cliff  Ladder and Canada Cliff Loop	2574.944	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1356	\N	\N	Winter Harbor	44.35015	-68.05388	04693	Schoodic Head Trail	1770.274	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1316	\N	\N	Mount Desert	44.32592	-68.29151	04660	Norumbega Mountain and Hadlock Ponds Loop Trail	4828.02	4.5	3	loop	['birding', 'fishing', 'hiking', 'nature-trips', 'trail-running']	\N
1317	\N	\N	Bar Harbor	44.37374	-68.19731	04609	Compass Harbor Trail	1287.472	4.5	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1318	\N	\N	Mount Desert	44.30238	-68.22082	04660	Hunters Beach Trail	804.67	4.5	1	out and back	['nature-trips', 'walking']	\N
1319	\N	\N	Southwest Harbor	44.30009	-68.35026	04679	Perpendicular Trail	3540.548	4.5	7	out and back	['hiking', 'walking']	\N
1320	\N	\N	Mount Desert	44.31519	-68.34331	04679	Beech Mountain and Valley Loop	3701.482	4.5	3	loop	['hiking', 'nature-trips']	\N
1321	\N	\N	Bar Harbor	44.34967	-68.2413	04609	Cadillac Mountain West Face Trail	4988.954	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1322	\N	\N	Mount Desert	44.34121	-68.25037	04660	Pemetic Mountain via Pemetic Northwest Trail	1931.208	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1323	\N	\N	Mount Desert	44.34104	-68.25035	04660	Jordan Pond Carry to Eagle Lake and Bubbles Trails Loop	5471.756	5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1324	\N	\N	Bar Harbor	44.40949	-68.24721	04609	Acadia Park Loop Road	39428.83	4.5	1	loop	['birding', 'nature-trips', 'road-biking', 'scenic-driving']	\N
1325	\N	\N	Bar Harbor	44.37786	-68.25237	04609	Conners Nubble Trail	5632.69	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1326	\N	\N	Mount Desert	44.32013	-68.25334	04675	Around The Mountain Loop Trail	24622.902	4.5	5	loop	['backpacking', 'bike-touring', 'birding', 'camping', 'mountain-biking', 'nature-trips', 'trail-running', 'cross-country-skiing']	\N
1327	\N	\N	Mount Desert	44.32583	-68.2912	04660	Bald Peak Trail	3701.482	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1328	\N	\N	Bar Harbor	44.34816	-68.20218	04609	Canon Brook Trail	5954.558	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1329	\N	\N	Mount Desert	44.32904	-68.29327	04660	Sargent Mountain	6759.228	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1330	\N	\N	Winter Harbor	44.35216	-68.04712	04693	Schoodic Head Overlook and The Anvil Loop Trail	4184.284	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1331	\N	\N	Bar Harbor	44.40921	-68.24661	04609	Witch Hold Pond, Eagle Lake and Around Mountain Carriage Road	43613.114	4.5	3	loop	['hiking', 'mountain-biking', 'nature-trips', 'snowshoeing']	\N
1332	\N	\N	Bar Harbor	44.37112	-68.20952	04609	Dorr Mountain North Ridge Trail to Gorge Path Loop	5149.888	5	5	loop	['hiking', 'walking']	\N
1333	\N	\N	Southwest Harbor	44.29241	-68.3869	04674	Bernard Mountain Loop Trail	6598.294	4.5	7	loop	['birding', 'hiking', 'nature-trips']	\N
1334	\N	\N	Bar Harbor	44.34984	-68.24137	04609	Bubble Pond Carriage Trail	8690.436	5	3	out and back	['backpacking', 'birding', 'hiking', 'mountain-biking', 'nature-trips', 'off-road-driving', 'trail-running', 'walking', 'horseback-riding']	\N
1335	\N	\N	Bar Harbor	44.36277	-68.20763	04609	Homans and Emery Path	1287.472	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1336	\N	\N	Mount Desert	44.31088	-68.28596	04662	Lower Hadlock Pond Loop Trail	3701.482	4	3	loop	['birding', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1337	\N	\N	Mount Desert	44.30014	-68.35027	04679	Mansell Mountain Loop Trail	3540.548	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1338	\N	\N	Seal Harbor	44.32046	-68.25422	04675	Spring, Penobscot Mountain, Deer Brook and Jordan Pond Path Loop	6115.492	5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1339	\N	\N	Bar Harbor	44.3398	-68.17855	04609	Schooner Head Path	9012.304	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1340	\N	\N	Seal Harbor	44.29917	-68.2275	04660	Day Mountain Trail	4184.284	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1341	\N	\N	Southwest Harbor	44.31185	-68.33207	04679	Saint Sauveur Mountain and Valley Peak Loop Trail	3701.482	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1342	\N	\N	Bar Harbor	44.33165	-68.1853	04609	Beehive, The Bowl, and Gorham Mountain	3862.416	5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1343	\N	\N	Southwest Harbor	44.30001	-68.35059	04679	Long Pond And Great Notch Trails	7724.832	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1344	\N	\N	Winter Harbor	44.33882	-68.04581	04693	Alder and Anvil Trails Loop	3540.548	4.5	3	loop	['hiking', 'trail-running', 'walking']	\N
1345	\N	\N	Bar Harbor	44.35911	-68.20595	04609	Beachcroft Path and Champlain North Ridge Trail	4828.02	4.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1346	\N	\N	Mount Desert	44.31029	-68.20378	04660	Quarry Path and Otter Cove Trail	3379.614	4	1	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
1347	\N	\N	Mount Desert	44.32588	-68.29125	04660	Maple Spring Trail	4345.218	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1348	\N	\N	Seal Harbor	44.291290000000004	-68.25942	04660	Little Long Pond	3540.548	4.5	1	out and back	['hiking', 'horseback-riding']	\N
1349	\N	\N	Seal Harbor	44.31992	-68.25316	04675	Jordan Stream Path	5632.69	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1350	\N	\N	Southwest Harbor	44.29948	-68.31631	04679	Valley Peak Trail	4988.954	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1351	\N	\N	Bar Harbor	44.35166	-68.20437	04609	Cannon Brook, Cadillac South Ridge and Ladder Trail	7402.964	5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1352	\N	\N	Mount Desert	44.31224	-68.28545	04662	Carriage and Around Mountain Road Loop	6598.294	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
1353	\N	\N	Mount Desert	44.3237	-68.24989	04660	Bubbles Divide via Jordans Pond Path	6437.36	4.5	3	loop	['birding', 'hiking', 'nature-trips']	\N
1354	\N	\N	Mount Desert	44.31518	-68.34363	04679	Valley and Beech South Ridge Trails	5793.624	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1355	\N	\N	Mount Desert	44.30021	-68.3498	04679	Beech Mountain West Ridge Trail	2896.812	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1357	\N	\N	Mount Desert	44.32294	-68.25375	04660	Deer Brook Trail via Jordan Pond Path	8046.7	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1358	\N	\N	Southwest Harbor	44.29661	-68.35722	04679	Razorback Trail	3701.482	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
1359	\N	\N	Bar Harbor	44.36207	-68.2082	04609	Jesup Path	1609.34	4	1	loop	['birding', 'hiking', 'walking']	\N
1360	\N	\N	Bar Harbor	44.3205	-68.25405	04675	Jordan Cliffs to Sargent and Penobscot Mountain Loop	7402.964	5	3	loop	['backpacking', 'hiking', 'nature-trips']	\N
1361	\N	\N	Bar Harbor	44.3786	-68.22955	04609	Cadillac North Ridge Trail to South Ridge Trail	9656.04	4.5	3	point to point	['backpacking', 'hiking', 'snowshoeing']	\N
1362	\N	\N	Seal Harbor	44.32026	-68.25527	04675	Asticou and Jordan Pond Path	3218.68	4.5	1	loop	['hiking', 'nature-trips']	\N
1363	\N	\N	Southwest Harbor	44.31193	-68.33223	04679	Saint Sauveur and Acadia Mountain	8851.37	4.5	3	loop	['hiking', 'trail-running']	\N
1364	\N	\N	Seal Harbor	44.31586	-68.2343	04660	Triad and Pemetic East Cliff Trails	5471.756	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1365	\N	\N	Bar Harbor	44.37577	-68.21729	04609	Stratheden Trail	3218.68	4	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking', 'cross-country-skiing']	\N
1366	\N	\N	Bar Harbor	44.34813	-68.2024	04609	Canon Brook, Cadillac South Ridge and Dorr Mountain South Ridge Trail Loop	9656.04	4.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1367	\N	\N	Winter Harbor	44.35004	-68.05398	04693	The Anvil Trail	3218.68	4	3	out and back	['birding', 'hiking']	\N
1368	\N	\N	Mount Desert	44.29954	-68.3162	04679	Valley Cove Trail	4667.086	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1369	\N	\N	Bar Harbor	44.3728	-68.22169	04609	Cadillac Mountain North Ridge and Gorge Path Loop	7724.832	4.5	5	loop	['hiking', 'nature-trips', 'trail-running']	\N
1370	\N	\N	Southwest Harbor	44.3001	-68.35017	04679	Mansell Mountain via Perpendicular, Razorback and Cold Brook Trail Loop	4988.954	4.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1371	\N	\N	Mount Desert	44.31185	-68.33225	04679	Ledge Trail to Saint Sauveur Trail	2253.076	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1372	\N	\N	Bar Harbor	44.37697	-68.21896	04609	Kebo Mountain and Dorr North Ridge Trails	5471.756	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1373	\N	\N	Mount Desert	44.31507	-68.34348	04679	Valley Trail to Canada Cliff Trail	2092.142	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1374	\N	\N	Bar Harbor	44.34951	-68.18793	04609	Precipice, Orange, Black Path and Schooner Head Loop	4023.35	5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1375	\N	\N	Mount Desert	44.3002	-68.34999	04679	Acadia Long Pond Loop Trail	7885.766	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1376	\N	\N	Winter Harbor	44.35004	-68.05398	04693	Alder Trail to The Anvil	3862.416	5	1	loop	['hiking', 'walking']	\N
1377	\N	\N	Southwest Harbor	44.29508	-68.36318	04679	Bernard Mountain Trail	4988.954	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1378	\N	\N	Seal Harbor	44.32188	-68.2601	04660	Penobscot Mountain and Bubbles Loop	8529.502	4.5	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1379	\N	\N	Bar Harbor	44.34815	-68.20223	04609	A. Murray Young Path via Canon Brook  and Dorr South Ridge Trail	7563.898	4	7	loop	['birding', 'hiking', 'nature-trips']	\N
1380	\N	\N	Mount Desert	44.32935	-68.29304	04660	Parkman to Sargent to Maple Springs via Carriage Road	6920.162	4.5	3	loop	['backpacking', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1381	\N	\N	Bar Harbor	44.33154	-68.18515	04609	Bowl, Beehive, Chaplain South Ridge and The Precipice Trail	8851.37	5	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
1382	\N	\N	Seal Harbor	44.30989	-68.22259	04660	Hunters Brook Trail	5793.624	4.5	3	out and back	['hiking']	\N
1383	\N	\N	Seal Harbor	44.32018	-68.25367	04675	Jordan Stream and Carriage Road Loop	2735.878	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1384	\N	\N	Bar Harbor	44.3629	-68.20741	04609	Dorr Mountain North Ridge Trail to Ladder Trail	5149.888	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1385	\N	\N	Bar Harbor	44.35187	-68.20426	04609	Cadillac Man via Ladder Trail	4345.218	4.5	3	out and back	['hiking']	\N
1386	\N	\N	Bar Harbor	44.36194	-68.20777	04609	Cadilac Mountain via Visitor Center	6759.228	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1387	\N	\N	Seal Harbor	44.32241	-68.25309	04660	North Bubble, South Bubble and Pemetic Mountain Loop	10299.776	5	3	loop	['hiking', 'trail-running']	\N
1388	\N	\N	Seal Harbor	44.32028	-68.25366	04675	Jordan Pond Nature Trail	1609.34	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1389	\N	\N	Bar Harbor	44.36215	-68.20763	04609	Hemlock Trail	2735.878	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1390	\N	\N	Mount Desert	44.34107	-68.25035	04660	Sargent East Cliffs Trail	4828.02	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1391	\N	\N	Southwest Harbor	44.2951	-68.36317	04679	Sluiceway Trail	2574.944	4	3	out and back	['birding', 'hiking', 'rock-climbing']	\N
1392	\N	\N	Winter Harbor	44.33942	-68.06016	04693	Sundew Trail	2896.812	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1393	\N	\N	Isle Au Haut	44.02805	-68.65105	04645	Duck Harbor Mountain and Goat Trails to Deep Cove	4506.152	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1394	\N	\N	Bar Harbor	44.36328	-68.20731	04609	Kebo Mountain Loop Trail	4345.218	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1395	\N	\N	Bar Harbor	44.36239	-68.20759	04609	Dorr Mountain via Wild Gardens to Schiff to Emery Path	5471.756	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
1396	\N	\N	Winter Harbor	44.36445	-68.03829	04693	Schoodic Head and Buck Cove Mountain Trail	5793.624	4	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1397	\N	\N	Bar Harbor	44.37815	-68.25278	04609	Aunt Betty Loop	9495.106	4	3	loop	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking', 'cross-country-skiing', 'horseback-riding']	\N
1398	\N	\N	Bar Harbor	44.33156	-68.18517	04609	Champlain Ridge via The Beehive Trail	9173.238	4.5	3	out and back	['hiking', 'nature-trips']	\N
1399	\N	\N	Southwest Harbor	44.29968	-68.31616	04679	Flying Mountain, Valley Peak and St Sauveur Peak Trail	4988.954	5	1	loop	['hiking', 'trail-running']	\N
1400	\N	\N	Southwest Harbor	44.29663	-68.35725	04679	Great Notch Trail	8046.7	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1401	\N	\N	Isle Au Haut	44.02805	-68.65107	04645	Western Head and Cliff Trail	5954.558	5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1402	\N	\N	Winter Harbor	44.34438	-68.05612	04693	Alder Path Trail	2092.142	3.5	1	out and back	['hiking', 'trail-running', 'walking']	\N
1403	\N	\N	Bar Harbor	44.3724	-68.21232	04609	Great Meadow Loop Trail	2896.812	3	1	loop	['nature-trips', 'trail-running', 'walking']	\N
1404	\N	\N	Mount Desert	44.34116	-68.25029	04660	Bubble Divide and Sargent East Cliffs Trail Loop	6115.492	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1405	\N	\N	Winter Harbor	44.35016	-68.054	04693	Acadia East Trail	1609.34	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1406	\N	\N	Bar Harbor	44.36302	-68.20897	04609	Dorr, Cadillac, Pemetic and Dike Peak Loop	15288.73	4.5	3	loop	['backpacking', 'hiking', 'nature-trips', 'trail-running']	\N
1407	\N	\N	Bar Harbor	44.39491	-68.22357	04609	Duck Brook Trail	3218.68	4	1	out and back	['hiking', 'trail-running']	\N
1408	\N	\N	Seal Harbor	44.29005	-68.2667	04662	Little Harbor Brook Trail	4988.954	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1409	\N	\N	Mount Desert	44.32239	-68.25306	04660	Triad Peak Loop	4345.218	3.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1410	\N	\N	Southwest Harbor	44.29219	-68.387	04674	Western Mountain Ridge Trail	5793.624	5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1411	\N	\N	Seal Cove	44.29215	-68.38707	04674	Bernard Mountain: West Ledge Trail	2896.812	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
1412	\N	\N	Bar Harbor	44.35571	-68.18537	04609	Orange and Black Path Trail	2574.944	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1413	\N	\N	Winter Harbor	44.38071	-68.06762	04693	Lower Harbor Trail	4506.152	4	1	loop	['camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1414	\N	\N	Mount Desert	44.32001	-68.25312	04675	Spring Trail and Amphitheater Trail	6920.162	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1415	\N	\N	Isle Au Haut	44.07417	-68.63643	04645	Duck Harbor and Deep Cove Trail	12391.918	4	1	out and back	['birding', 'hiking', 'nature-trips']	\N
1416	\N	\N	Southwest Harbor	44.30025	-68.34985	04679	Beech Mountain West Ridge and South Ridge Trails Loop	4023.35	4	3	loop	['hiking']	\N
1417	\N	\N	Mount Desert	44.31513	-68.3899	04660	Great Long Pond Trail from Great Notch	11104.446	3.5	3	loop	['birding', 'hiking', 'nature-trips', 'paddle-sports', 'walking', 'canoeing']	\N
1418	\N	\N	Mount Desert	44.31218	-68.28548	04662	Sargeant Mountain Ridge Loop	12070.05	4.5	5	loop	['hiking', 'nature-trips', 'trail-running']	\N
1419	\N	\N	Bar Harbor	44.37586	-68.26265	04609	McFarland Mountain and Youngs Mountain Trail	5149.888	4	3	out and back	['hiking', 'nature-trips']	\N
1420	\N	\N	Southwest Harbor	44.30013	-68.35109	04679	Mansel, Bernard and Beach Mountain Loop	12230.984	4.5	5	loop	['hiking', 'trail-running']	\N
1421	\N	\N	Bar Harbor	44.39098	-68.20664	04609	Acadia Carriage Road from Bar Harbor to Jordan Pond	40716.302	5	3	out and back	['birding', 'hiking', 'nature-trips', 'road-biking', 'trail-running', 'walking', 'horseback-riding']	\N
1422	\N	\N	Bar Harbor	44.36319	-68.20715	04609	Homans Path to Kane Path to Wild Gardens Path Loop	3862.416	4	3	loop	['birding', 'hiking', 'nature-trips']	\N
1423	\N	\N	Mount Desert	44.31188	-68.33221	04679	Ledge Trail	1448.406	3	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1424	\N	\N	Bar Harbor	44.37859	-68.22942	04609	Cadillac North Ridge Trail to Cadilac South Ridge Trail	8529.502	5	3	point to point	['hiking', 'nature-trips']	\N
1425	\N	\N	Winter Harbor	44.38077	-68.06554	04693	Wonsqueak Bike Path Loop	5632.69	4.5	1	loop	['camping', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
1426	\N	\N	Bar Harbor	44.36327	-68.20723	04609	Homan Path loop	2253.076	4	3	loop	['hiking', 'walking']	\N
1427	\N	\N	Winter Harbor	44.37979	-68.06638	04693	Frazer Point via Frazer Creek Bike Path	3218.68	4	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1428	\N	\N	Isle Au Haut	44.0742	-68.63643	04645	Bowditch and Long Pond Trails via Duck Harbor Trail	14162.192	4	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1429	\N	\N	Seal Harbor	44.30854	-68.24437	04660	Redfield Hill Loop	3701.482	4.5	1	loop	['birding', 'hiking', 'nature-trips']	\N
1430	\N	\N	Winter Harbor	44.38135	-68.05859	04693	Schoodic Woods to Blueberry Hill	6598.294	4.5	3	point to point	['camping', 'hiking']	\N
1431	\N	\N	Mount Desert	44.33242	-68.40727	04660	Pretty Marsh Trail	965.604	4	1	out and back	['birding', 'nature-trips', 'walking']	\N
1432	\N	\N	Seal Cove	44.29217	-68.38697	04674	South Face Trail	5793.624	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1433	\N	\N	Seal Harbor	44.31987	-68.25347	04675	Jordan Cliffs Trail to Bubbles Trail to Jordan Pond Path	7081.096	5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1434	\N	\N	Mount Desert	44.34117	-68.25024	04660	Bubble Divide, Sargent East Cliffs, Penobscot Mountain Trail	8529.502	0	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1435	\N	\N	Southwest Harbor	44.31531	-68.34351	04679	Valley Trail and Canada Cliff Loop	2574.944	4	1	loop	['hiking', 'nature-trips', 'walking']	\N
1436	\N	\N	Seal Harbor	44.32046	-68.25547	04675	Jordan Cliffs, South Bubble and Pemetic Mountain Loop	9173.238	4.5	5	loop	['hiking', 'trail-running']	\N
1437	\N	\N	Bar Harbor	44.36304	-68.19268	04609	Champlain North Ridge to Champlain South Ridge to Gorham Mountain Trail	6276.426	5	3	point to point	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1438	\N	\N	Isle Au Haut	44.02307	-68.63298	04645	Western Head via Goat Trail	6759.228	3	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1439	\N	\N	Mount Desert	44.32044	-68.25414	04675	Birch Spring Trail	8046.7	0	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1440	\N	\N	Isle Au Haut	44.02806	-68.65105	04645	Median Ridge and Nat Merchant Trails	6920.162	2	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1441	\N	\N	Isle Au Haut	44.03028	-68.65189	04645	Eben's Head Trail	2253.076	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1442	\N	\N	Birch Harbor	44.37799	-68.03679	04607	Birch Harbor Mountain Bike Path	9334.172	5	1	loop	['hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
1443	\N	\N	Bar Harbor	44.37374	-68.19731	04609	Scenic Shore Trail [PRIVATE PROPERTY]	11587.248	4	5	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
1444	\N	\N	Mohawk	47.91214	-89.15641	\N	Greenstone Ridge Trail: Windigo to Tobin Harbor	63568.93	4	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1445	\N	\N	Saint Louis	47.84193	-89.19248	\N	Rainbow Cove Trail	2253.076	5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1446	\N	\N	Houghton	47.98498	-88.79939	\N	Malone Bay to Hatchett Lake	37658.556	0	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'trail-running']	\N
1447	\N	\N	Houghton	47.98499	-88.79938	\N	Ishpeming Trail to Ishpeming Point	23496.364	0	3	out and back	['camping', 'hiking', 'trail-running']	\N
1448	\N	\N	Kabetogama	48.43195	-92.85024	55771	Blind Ash Bay Trail	5793.624	4	3	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'walking']	\N
1449	\N	\N	Kabetogama	48.43414	-92.85033	55771	Kabetogama Lake Overlook Trail	643.736	4	1	out and back	['hiking', 'walking']	\N
1450	\N	\N	Kabetogama	48.49997	-92.80636	56649	Cruiser Lake to Brown Lake and Anderson Bay	14001.258	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1451	\N	\N	Kabetogama	48.42288	-92.84588	55771	Beaver Pond Overlook Trail	482.802	3.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1452	\N	\N	Orr	48.38966	-92.92133	55771	Kab-Ash Trail	24461.968	3	1	out and back	['birding', 'hiking', 'nature-trips', 'paddle-sports', 'walking', 'canoeing']	\N
1453	\N	\N	Kabetogama	48.42524	-92.84532	55771	Sullivan Bay Trail	2092.142	4	1	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
1454	\N	\N	Ranier	48.59098	-93.15272	56649	Black Bay Beaver Pond Trail	1931.208	5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1455	\N	\N	St. Louis	38.63514	-90.18118	63102	St. Louis Riverfront Trail	34439.876	4	1	loop	['mountain-biking', 'road-biking', 'trail-running', 'walking']	\N
1456	\N	\N	St. Louis	38.62327	-90.18743	63102	Jefferson National Expansion Memorial	2574.944	4	1	loop	['walking']	\N
1457	\N	\N	Babb	48.79724	-113.66887	59417	Grinnell Glacier Trail	18185.542	5	5	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'fly-fishing']	\N
1458	\N	\N	Lake Mc Donald	48.68007	-113.81912	59936	Avalanche Lake via the Trail of the Cedars	9173.238	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'skiing', 'trail-running', 'walking', 'cross-country-skiing']	\N
1459	\N	\N	Babb	48.79961	-113.67921	59928	Iceberg Lake Trail	14966.862	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1460	\N	\N	Siyeh Bend	48.69563	-113.71716	59417	Hidden Lake Trail	8529.502	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing']	\N
1461	\N	\N	Lake Mc Donald	48.69603	-113.71782	59417	Highline Trail - Logan Pass to Granite Park Chalet	23979.166	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
1462	\N	\N	East Glacier Park Village	48.67435	-113.60868	59417	St. Mary and Virginia Falls Trail	4667.086	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1463	\N	\N	Siyeh Bend	48.69542	-113.71817	59417	Hidden Lake Overlook	4506.152	4.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
1464	\N	\N	Babb	48.79495	-113.65599	59417	Cracker Lake Trail	19312.08	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
1465	\N	\N	West Glacier	48.68007	-113.8192	59936	Trail of the Cedars	1287.472	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1466	\N	\N	West Glacier	48.69646	-113.71774	59417	The Garden Wall	23657.298	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1467	\N	\N	Babb	48.79602	-113.65711	59417	Grinnell Lake Trail	11426.314	4.5	1	loop	['birding', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1468	\N	\N	Siyeh Bend	48.69655	-113.71766	59417	Granite Park via Highline Trail	18024.608	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1469	\N	\N	Babb	48.79767	-113.67863	59417	Redrock Falls via Swiftcurrent Pass	5793.624	4.5	1	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1470	\N	\N	Essex	48.63623	-113.86793	59936	McDonald Creek Trail	8046.7	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1471	\N	\N	Babb	48.79803	-113.67925	59417	Swiftcurrent Pass Trail To Swiftcurrent Mountain	25588.506	5	7	out and back	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
1472	\N	\N	East Glacier Park Village	48.70155	-113.66745	59417	Siyeh Pass Trail	33152.404	5	5	out and back	['backpacking', 'hiking', 'nature-trips']	\N
1473	\N	\N	West Glacier	48.49653	-113.9829	59936	Going-to-the-Sun Road: West Glacier to Saint Mary	78857.66	5	1	point to point	['scenic-driving']	\N
1474	\N	\N	East Glacier Park Village	48.4921	-113.36553	59434	Dawson Pass and Pitamakan Pass Loop	27680.648	5	7	loop	['backpacking', 'camping', 'hiking']	\N
1475	\N	\N	East Glacier Park Village	48.48516	-113.36156	59434	Scenic Point	11909.116	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1476	\N	\N	Browning	48.80541	-113.63446	59417	Apikuni Falls Trail via Appekunny Creek Trail	2896.812	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1477	\N	\N	Gardiner	44.97375	-110.70442	82190	Beaver Ponds Loop Trail	8851.37	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'cross-country-skiing', 'horseback-riding']	\N
1478	\N	\N	Babb	48.79984	-113.6791	59928	Ptarmigan Lake Trail	13840.324	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1479	\N	\N	Babb	48.79771	-113.67863	59417	Bullhead Lake Trail	11104.446	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1480	\N	\N	East Glacier Park Village	48.49608	-113.34808	59434	Running Eagle Falls Trail	965.604	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1481	\N	\N	Columbia Falls	48.50434	-114.02082	59912	Apgar Lookout Trail	11426.314	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1482	\N	\N	Essex	48.63552	-113.86758	59936	Johns Lake Loop	3057.746	4	1	loop	['birding', 'hiking', 'walking', 'horseback-riding']	\N
1483	\N	\N	East Glacier Park Village	48.6775	-113.652	59417	Gunsight Pass Trail	30255.592	4.5	7	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
1484	\N	\N	West Glacier	48.75522	-113.80042	59936	The Loop and Garden Wall	22852.628	5	5	point to point	['birding', 'hiking', 'nature-trips']	\N
1485	\N	\N	East Glacier Park Village	48.69653	-113.71816	59417	Haystack Butte Trail	13196.588	5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1486	\N	\N	Babb	48.79725	-113.66842	59417	Swiftcurrent Nature Trail	4184.284	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1487	\N	\N	Siyeh Bend	48.69552	-113.71759	59417	Mount Oberlin Trail	5632.69	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1488	\N	\N	West Glacier	48.61682	-113.87602	59936	Mount Brown Lookout Trail	16093.4	4.5	7	out and back	['birding', 'hiking', 'nature-trips', 'horseback-riding']	\N
1489	\N	\N	Gardiner	44.99241	-110.69126	59030	Boiling River Trail	1931.208	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
1490	\N	\N	Lake Mc Donald	48.75494	-113.80044	59936	Grinnell Overlook via Granite Park	18346.476	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1491	\N	\N	East Glacier Park Village	48.47434	-113.40905	59434	Twin Falls Trail via Two Medicine Lake West End Boat Dock	3057.746	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1492	\N	\N	Gardiner	44.97263	-110.70404	82190	Mammoth Hot Springs Terraces	1931.208	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1493	\N	\N	Lake Mc Donald	48.75497	-113.80042	59936	Granite Park Trail	13035.654	4.5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1494	\N	\N	Siyeh Bend	48.70154	-113.66749	59417	Piegan Pass Trail	19955.816	4.5	7	point to point	['backpacking', 'hiking']	\N
1495	\N	\N	West Glacier	48.54772	-113.98139	59936	Rocky Point Trail	6276.426	4	1	out and back	['hiking', 'walking']	\N
1496	\N	\N	East Glacier Park Village	48.48319	-113.36945	59434	Rockwell Falls Trail	10621.644	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1497	\N	\N	Babb	48.95784	-113.89222	59417	Rainbow Falls Trail	3057.746	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1498	\N	\N	West Glacier	48.59664	-114.03829	59912	Huckleberry Mountain Lookout	18185.542	4.5	5	out and back	['hiking']	\N
1499	\N	\N	Essex	48.61688	-113.87545	59936	Sperry Chalet Trail	19151.146	4.5	5	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'horseback-riding']	\N
1500	\N	\N	West Glacier	48.5524	-113.98891	59936	Rocky Point via Lake McDonald Trail	3057.746	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1501	\N	\N	East Glacier Park Village	48.67734	-113.65214	59417	Florence Falls Trail	14805.928	4.5	3	out and back	['hiking', 'nature-trips']	\N
1502	\N	\N	East Glacier Park Village	48.4833	-113.36949	59434	Upper Two Medicine Trail	18024.608	4.5	3	out and back	['birding', 'hiking', 'walking']	\N
1503	\N	\N	East Glacier Park Village	48.67387	-113.60872	59417	Baring Falls via Piegan Pass Trail	3057.746	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1504	\N	\N	West Glacier	48.82926	-114.20074	59928	Numa Ridge Lookout Trail	18668.344	4.5	5	out and back	['camping', 'hiking', 'nature-trips']	\N
1505	\N	\N	West Glacier	48.61752	-113.87713	59936	Snyder Lake Trail	14162.192	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1506	\N	\N	Essex	48.63351	-113.86239	59936	McDonald Creek Via Johns Lake	3057.746	4	3	out and back	['hiking']	\N
1507	\N	\N	Essex	48.5525	-113.98853	59936	Lake McDonald Trail	22047.958	3.5	1	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'walking']	\N
1508	\N	\N	East Glacier Park Village	48.69484	-113.51926	59417	Otokomi Lake	16737.136	4.5	5	out and back	['backpacking', 'camping', 'hiking']	\N
1509	\N	\N	East Glacier Park Village	48.67869	-113.59547	59417	Sun Point Nature Trail	2735.878	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1510	\N	\N	Polebridge	48.83047	-114.20242	59928	Bowman Lake Trail	42164.708	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1511	\N	\N	East Glacier Park Village	48.48479	-113.36973	59434	Two Medicine Lake Loop	15610.598	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
1512	\N	\N	East Glacier Park Village	48.67611	-113.58136	59417	Baring Falls Via Piegan Pass Trail	2092.142	4.5	1	out and back	['hiking', 'trail-running', 'walking']	\N
1513	\N	\N	East Glacier Park Village	48.48323	-113.36946	59434	Aster Park	5632.69	4.5	7	out and back	['hiking']	\N
1514	\N	\N	Babb	48.80004	-113.67922	59928	Ptarmigan Trail to Cosley Lake	42808.444	5	7	out and back	['birding', 'hiking', 'nature-trips']	\N
1515	\N	\N	Babb	48.95783	-113.8922	59417	Boulder Pass Trail	47153.662	5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1516	\N	\N	East Glacier Park Village	48.49196	-113.36562	59434	No Name Lake via Dawson Pass Trail	15127.796	5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1517	\N	\N	Babb	48.80255	-113.67983	59928	North Circle	79662.33	4.5	7	loop	['backpacking', 'camping', 'hiking']	\N
1518	\N	\N	Big Sky	45.04845	-111.13984	59730	Sky Rim Loop Trail	28968.12	4.5	3	loop	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1519	\N	\N	Gardiner	44.89123	-110.72976	82190	Sheepeater Cliff Trail	1448.406	4	1	out and back	['fishing', 'hiking', 'nature-trips', 'walking']	\N
1520	\N	\N	Polebridge	48.82922	-114.20054	59928	Quartz Lake Loop Trail	20438.618	3.5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'walking']	\N
1521	\N	\N	Siyeh Bend	48.70151	-113.66745	59417	Grinnell Lake and Lake Josephine via Piegan Pass Trail	35244.546	5	5	out and back	['backpacking', 'hiking', 'trail-running']	\N
1522	\N	\N	Polebridge	48.74894	-114.24938	59936	Hidden Meadow Trail	4184.284	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1523	\N	\N	Browning	48.4902	-113.36374	59434	Oldman Lake via Pitamakan Pass Trail	20760.486	5	7	loop	['backpacking', 'camping', 'hiking']	\N
1524	\N	\N	Babb	48.7976	-113.6778	59417	Swiftcurrent Pass Loop	1770.274	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1525	\N	\N	Gardiner	44.94903	-110.45049	82190	Hellroaring Creek Loop Trail	75960.848	4.5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1526	\N	\N	Siyeh Bend	48.70119	-113.66857	59417	Siyeh Summit	13840.324	4.5	5	out and back	['backpacking', 'hiking', 'rock-climbing', 'trail-running']	\N
1527	\N	\N	East Glacier Park Village	48.67431	-113.60868	59417	Jackson Glacier Trail	24783.836	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1528	\N	\N	East Glacier Park Village	48.67865	-113.59524	59417	Sunrift Gorge Trail	2092.142	4	1	out and back	['hiking', 'walking']	\N
1529	\N	\N	East Glacier Park Village	48.60246	-113.38372	59434	Triple Divide Trail	48602.068	4.5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1530	\N	\N	East Glacier Park Village	48.48511	-113.36152	59434	Appistoki Falls	1931.208	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1531	\N	\N	West Glacier	48.59939	-113.88763	59936	Lincoln Lake	25105.704	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1532	\N	\N	West Glacier	48.27483	-113.60317	59916	Scalplock Lookout Trail	14805.928	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1533	\N	\N	East Glacier Park Village	48.4836	-113.36931	59434	Cobalt Lake	17059.004	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1534	\N	\N	Essex	48.48477	-113.36974	59434	Paradise Point and Aster Park	6437.36	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1535	\N	\N	East Glacier Park Village	48.73843	-113.43765	59417	Red Eagle Lake	24301.034	4	3	out and back	['backpacking', 'camping', 'hiking', 'walking']	\N
1536	\N	\N	Babb	48.9959	-113.65969	59417	Mokowanis River - Stoney Indian Pass	43774.048	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1537	\N	\N	East Glacier Park Village	48.67563	-113.57867	59417	Saint Mary Lake Trail	38785.094	4.5	3	out and back	['backpacking', 'camping', 'hiking', 'walking']	\N
1538	\N	\N	Babb	48.9577	-113.89234	59417	Lake Francis Trail	27197.846	5	3	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1539	\N	\N	Babb	48.95776	-113.89217	59417	Kootenai Lakes Trail	8851.37	4	1	out and back	['fishing', 'hiking', 'nature-trips', 'walking']	\N
1540	\N	\N	Babb	48.99598	-113.65968	59417	Belly River Trail to Cosley Lake	28646.252	4.5	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1541	\N	\N	East Glacier Park Village	48.48308	-113.36904	59434	Twin Falls via Two Medicine Creek South Shore and North Shore Trail	13518.456	4.5	3	loop	['birding', 'hiking']	\N
1542	\N	\N	West Yellowstone	44.95563	-111.07066	59730	Bacon Rind Creek Trail	6920.162	4.5	1	out and back	['backpacking', 'birding', 'fishing', 'hiking', 'nature-trips', 'walking', 'horseback-riding', 'fly-fishing']	\N
1543	\N	\N	Babb	48.95767	-113.89239	59417	Boulder Pass to Lake Janet	12874.72	5	3	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'walking']	\N
1544	\N	\N	East Glacier Park Village	48.73799	-113.43793	59417	Beaver Pond Trail	5471.756	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1545	\N	\N	Babb	48.79578	-113.65587	59417	Redgap Pass Trail	50533.276	5	7	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'horseback-riding']	\N
1546	\N	\N	Polebridge	48.93597	-114.34573	59928	Kintla Lake Campground	15932.466	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1547	\N	\N	Essex	48.48442	-113.36926	59434	Paradise Point Trail	2253.076	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1548	\N	\N	East Glacier Park Village	48.49227	-113.36566	59434	Cobalt Lake-Two Medicine Pass	36853.886	5	3	loop	['backpacking', 'camping', 'hiking']	\N
1549	\N	\N	West Glacier	48.61739	-113.87692	59936	Fish Lake Trail	8851.37	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1550	\N	\N	West Glacier	48.4913	-113.8622	59936	Harrison Lake	24140.1	4	5	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'fly-fishing']	\N
1551	\N	\N	West Glacier	48.69675	-113.71817	59936	Highline and Swiftcurrent Pass Trail	23657.298	5	5	point to point	['backpacking', 'hiking']	\N
1552	\N	\N	West Glacier	48.5272	-113.99454	59936	Apgar Bike Trail	5632.69	4	1	out and back	['birding', 'hiking', 'mountain-biking', 'road-biking', 'walking']	\N
1553	\N	\N	East Glacier Park Village	48.48442	-113.36922	59434	Aster Park Overlook and Rockwell Falls	14484.06	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1554	\N	\N	Silver Gate	45.00535	-110.03436	59081	Pebble Creek Trail via Northeast Trailhead	18990.212	5	3	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'paddle-sports', 'trail-running', 'walking', 'whitewater-kayaking', 'fly-fishing', 'canoeing']	\N
1555	\N	\N	East Glacier Park Village	48.48327	-113.36951	59434	Two Medicine Lake South Shore Trail	10621.644	4.5	3	out and back	['camping', 'hiking', 'nature-trips']	\N
1556	\N	\N	East Glacier Park Village	48.44911	-113.23446	59434	Mount Henry Trail and Scenic Point via East Glacier Park Village	19955.816	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1557	\N	\N	West Glacier	48.61682	-113.87545	59936	Mount Brown Lookout via Gunsight Pass Trail	14966.862	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1558	\N	\N	Babb	48.95531	-113.60198	59411	Chief Mountain	10138.842	5	5	out and back	['hiking', 'nature-trips']	\N
1559	\N	\N	Coram	48.60919	-114.02783	59936	Howe Lake Trail	6920.162	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'cross-country-skiing']	\N
1887	\N	\N	Townsend	35.59095	-83.85201	37878	Abrams Falls Trail	7885.766	4.5	3	out and back	['hiking']	\N
1560	\N	\N	West Glacier	48.82859	-114.20173	59928	Akokala Lake Trail	18346.476	3.5	3	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1561	\N	\N	West Yellowstone	45.01264	-111.08058	59730	Specimen Creek Trail	24944.77	4.5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
1562	\N	\N	Babb	48.99586	-113.65964	59417	Belly River Trail	24622.902	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1563	\N	\N	Big Sky	45.03412	-111.11367	59730	Black Butte Trail to Big Horn Peak	19151.146	5	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
1564	\N	\N	East Glacier Park Village	48.60248	-113.38367	59434	Medicine Grizzly to Triple Divide Pass	20438.618	4.5	3	out and back	['backpacking', 'camping', 'hiking', 'walking']	\N
1565	\N	\N	Lake Mc Donald	48.75496	-113.80047	59936	Continental Divide Trail to Fifty Mountain Shelter	51498.88	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1566	\N	\N	West Glacier	48.75494	-113.80044	59936	Swiftcurrent Mountain via Granite Park Trail	19473.014	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1567	\N	\N	West Glacier	48.69845	-114.19204	59928	Logging Lake Trail	41199.104	3.5	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'walking']	\N
1568	\N	\N	West Glacier	48.61682	-113.8754	59936	Comeau Pass Via Sperry Lake Trail	26554.11	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1569	\N	\N	Polebridge	48.82924	-114.20052	59928	Bowman Lake Trail to Upper Waterton Lake	69684.422	5	3	out and back	['backpacking', 'camping', 'hiking']	\N
1570	\N	\N	East Glacier Park Village	48.48471	-113.36894	59434	Upper Two Medicine Creek Loop	17541.806	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1571	\N	\N	Big Sky	45.04854	-111.1395	59730	Daly Creek Trail	17541.806	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1572	\N	\N	Babb	48.79771	-113.6788	59417	Ptarmigan Trail to Helen Lake, Elizabeth Lake, Cosley Lake, Stoney Indian Pass, Waterton Valley Trail	63086.128	5	3	point to point	['backpacking', 'birding', 'camping', 'nature-trips', 'walking']	\N
1573	\N	\N	East Glacier Park Village	48.37171	-113.27942	59434	Firebrand Trail to Ole Creek	36532.018	4.5	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1574	\N	\N	Whitefish	48.63763	-113.88831	59936	Stanton Mountain	12070.05	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1575	\N	\N	West Yellowstone	44.66029	-111.09739	59758	Riverside Ski Trail Loop	12391.918	4	1	loop	['hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking', 'cross-country-skiing']	\N
1576	\N	\N	Lake Mc Donald	48.75496	-113.80046	59936	Granite Park to Flattop Mountain Trail	43613.114	4.5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1577	\N	\N	Polebridge	48.93512	-114.35243	59928	Upper Kintla Lake	37336.688	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1578	\N	\N	Babb	48.95776	-113.89222	59417	Waterton Valley Trail	32508.668	4.5	7	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1579	\N	\N	Gardiner	45.01779	-110.69363	59030	Rescue Creek Trail to Turkey Pen Peak (Gardner Side)	10782.578	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1580	\N	\N	West Glacier	48.7838	-114.27983	59928	Covey Meadow Loop	3540.548	4.5	1	out and back	['birding', 'hiking', 'walking']	\N
1581	\N	\N	West Glacier	48.43677	-113.80308	59936	Nyack-Coal Creek Loop	67592.28	3.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1582	\N	\N	Polebridge	48.93547	-114.35274	59928	Kinta Lake Boulder Pass Trail to Goat Haunt Ferry	48923.936	4.5	3	point to point	['backpacking', 'camping', 'hiking', 'walking']	\N
1583	\N	\N	Babb	48.99592	-113.65993	59417	Northern Traverse: Chieftan Mountain to Kintla Lake	86904.36	5	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1584	\N	\N	East Glacier Park Village	48.37136	-113.27959	59434	Firebrand Pass	17219.938	5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1585	\N	\N	Polebridge	48.93527	-114.35248	59928	Kinta Lake via Boulder Pass Trail	21404.222	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1586	\N	\N	Columbia Falls	48.62452	-114.12946	59912	Huckleberry Mountain Nature Trail	1448.406	2	1	loop	['hiking', 'walking']	\N
1587	\N	\N	Polebridge	48.93603	-114.34572	59928	Glacier National Park Full Traverse - Kintla Lake to Lake McDonald	149507.686	0	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1588	\N	\N	Big Sky	45.01261	-111.08065	59730	Sportsman Lake Crescent High Lake Trail Loop	34439.876	5	5	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'trail-running']	\N
1589	\N	\N	West Glacier	48.72517	-114.22817	59936	Lower Quartz Lake via Quartz Creek Trail	22208.892	3.5	1	out and back	['fishing', 'hiking', 'trail-running']	\N
1590	\N	\N	Silver Gate	45.00448	-109.98758	59081	Bannock Ski Trail	7724.832	4	1	out and back	['hiking', 'nature-trips', 'trail-running', 'cross-country-skiing']	\N
1591	\N	\N	West Glacier	48.43683	-113.8027	59936	Loneman Lookout Trail	22852.628	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1592	\N	\N	Essex	48.28443	-113.45227	59936	Fielding Coal Creek Trail	48923.936	4	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1593	\N	\N	Browning	48.80544	-113.63455	59417	Apikuni Mountain	10299.776	3	5	out and back	['hiking', 'nature-trips']	\N
1594	\N	\N	Essex	48.6169	-113.87557	59936	Snyder Ridge Trail	18829.278	2.5	3	point to point	['hiking', 'trail-running']	\N
1595	\N	\N	West Glacier	48.27489	-113.60325	59916	Lake Isabel Trail	53269.154	5	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'walking', 'fly-fishing']	\N
1596	\N	\N	West Yellowstone	44.95078	-111.05892	59730	Fan Creek Trail	19633.948	4	1	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'fly-fishing']	\N
1597	\N	\N	Babb	48.94736	-113.50028	59411	Gable Pass Trail via Otatso Creek	48280.2	3	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1598	\N	\N	Essex	48.48396	-113.36959	59434	Painted Tepee Peak and Cobalt Lake Trail	25910.374	5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1599	\N	\N	East Glacier Park Village	48.50511	-113.32923	59434	Dry Fork Trail	8690.436	0	3	out and back	['hiking', 'trail-running']	\N
1600	\N	\N	West Yellowstone	44.95087	-111.05879	59730	Fawn Pass to Fan Creek Trail	25588.506	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1601	\N	\N	Babb	48.99587	-113.66023	59417	Belly River Trail to Foot Glenns Lake	16898.07	5	3	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1602	\N	\N	East Glacier Park Village	48.60248	-113.38368	59434	Cut Bank Pass via Pitamakan Trail	48119.266	4	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1603	\N	\N	Big Sky	45.04859	-111.13917000000001	59730	Daly Creek to Crescent Lake	46188.058	0	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1604	\N	\N	Big Sky	45.04853	-111.13925	59730	Daly Creek to Shelf Lake	52303.55	0	3	out and back	['backpacking', 'hiking', 'nature-trips']	\N
1605	\N	\N	Polebridge	48.98874	-114.46302	59928	North Fork Flathead River Paddle	89962.106	4	3	point to point	['camping', 'nature-trips', 'paddle-sports']	\N
1606	\N	\N	West Glacier	48.63755	-113.8887	59936	West Lakes Trail  [CLOSED]	32347.734	4	5	out and back	['backpacking', 'birding', 'fishing', 'nature-trips', 'horseback-riding']	\N
1607	\N	\N	West Glacier	48.43661	-113.80285	59936	Nyack Creek	55844.098	0	5	out and back	['backpacking', 'hiking', 'trail-running']	\N
1608	\N	\N	Baker	39.01731	-114.30329	89311	Wheeler Peak Trail via Stella Lake Trail	13196.588	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1609	\N	\N	Baker	39.01015	-114.30698	89311	Bristlecone Pine Glacier Trail	7242.03	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1610	\N	\N	Baker	39.00984	-114.30709	89311	Alpine Lakes Trail	4345.218	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1611	\N	\N	Beatty	36.85936	-116.84565	89003	Titus Canyon Road	41842.84	4.5	1	point to point	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'off-road-driving', 'scenic-driving', 'walking']	\N
1612	\N	\N	Baker	39.00545	-114.2195	89311	Lehman Cave	643.736	4.5	1	loop	['hiking', 'walking']	\N
1613	\N	\N	Baker	39.01015	-114.30705	89311	Bristlecone and Alpine Lakes Loop	8529.502	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1614	\N	\N	Baker	39.01006	-114.20887	89311	Wheeler Peak Scenic Drive	37497.622	4.5	1	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'scenic-driving', 'walking']	\N
1615	\N	\N	Baker	38.97643	-114.24575	89311	Baker Lake Trail	16737.136	4.5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
1616	\N	\N	Baker	39.01039	-114.30701	89311	Teresa Lake	2414.01	5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1617	\N	\N	Baker	38.97645	-114.24538	89311	Baker Lake-Johnson Lake Loop	20760.486	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1618	\N	\N	Baker	38.8429	-114.19067	\N	Lexington Arch Trail	4667.086	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1619	\N	\N	Baker	39.0102	-114.30727	89311	Wheeler Peak Trail via Alpine Lakes Trail	12552.852	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1620	\N	\N	Baker	39.0102	-114.30736	89311	Stella Lake Trail	3379.614	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1621	\N	\N	Baker	39.01738	-114.2391	89311	Lehman Creek Trail	13196.588	4	5	out and back	['birding', 'hiking', 'snowshoeing']	\N
1622	\N	\N	Beatty	36.89737	-116.82951	89003	Rhyolite Ghost Town	1770.274	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1623	\N	\N	Baker	39.01031	-114.30696	89311	Sky Islands Forest Trail	482.802	4.5	1	loop	['hiking', 'walking']	\N
1624	\N	\N	Baker	38.98987	-114.21267	89311	Pole Canyon Trail	11909.116	4	3	loop	['birding', 'camping', 'hiking', 'trail-running']	\N
1625	\N	\N	Baker	39.02865	-114.26691	89311	Osceola Ditch Intepretive Trail	4345.218	4	1	out and back	['hiking', 'walking']	\N
1626	\N	\N	Baker	39.00609	-114.21966	89311	Lehman Caves Visitor Center and Mountain View Nature Trail	643.736	3.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
1627	\N	\N	Baker	38.92864	-114.25566	89311	Johnson Lake via Snake Creek	11265.38	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking']	\N
1628	\N	\N	Baker	38.92589	-114.25184	89311	Dead Lake Trail	5793.624	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1629	\N	\N	Baker	38.92515	-114.24638	89311	Serviceberry Loop	4828.02	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1630	\N	\N	Baker	38.92609	-114.25169	89311	Snake Creek Overlook	2092.142	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1631	\N	\N	Beatty	36.82866	-117.03255	\N	Thimble Peak Trail	5149.888	5	3	out and back	['hiking', 'nature-trips']	\N
1632	\N	\N	Baker	38.97652	-114.24505	89311	Johnson Lake via South Fork Baker Creek	16737.136	4	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1633	\N	\N	Carlsbad	32.17565	-104.44342	88220	Carlsbad Caverns National Park Trail	1287.472	5	1	loop	['hiking', 'nature-trips', 'walking']	\N
1634	\N	\N	Carlsbad	32.11118	-104.56299	88220	North Slaughter Canyon Trail	17863.674	4	3	out and back	['hiking', 'nature-trips', 'walking', 'whitewater-kayaking']	\N
1635	\N	\N	Carlsbad	32.17496	-104.37547	88220	Carlsbad Caverns Highway to Carlsbad Caverns National Park	23657.298	4	1	out and back	['scenic-driving']	\N
1636	\N	\N	Carlsbad	32.18625	-104.44526	88220	Juniper Ridge Trail	3057.746	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1637	\N	\N	Whites City	32.09829	-104.58731	88220	Yucca Canyon Trail	6115.492	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1638	\N	\N	Whites City	32.11069	-104.56303	88220	Slaughter Canyon Cave Trail	1609.34	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1639	\N	\N	Carlsbad	32.16557	-104.50305	88220	Rattlesnake Canyon	8690.436	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1640	\N	\N	Whites City	32.18217	-104.43395	88220	Walnut Canyon Trail	482.802	2.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1641	\N	\N	Bryson City	35.55689	-83.4961	28719	Clingmans Dome Observation Tower Trail	1931.208	4.5	1	out and back	['birding', 'nature-trips', 'walking']	\N
2261	\N	\N	Moab	38.77438	-109.5867	84532	Tapestry Arch	965.604	4.5	1	out and back	['hiking', 'walking']	\N
1642	\N	\N	Cherokee	35.5569	-83.49613	28719	Andrews Bald Trail	5632.69	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1643	\N	\N	Bryson City	35.46438	-83.43412000000001	28713	Deep Creek Loop Trail	7885.766	4.5	1	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'horseback-riding']	\N
1644	\N	\N	Waynesville	35.75185	-83.11035	37821	Mouse Creek Falls via Big Creek Trail	9173.238	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1645	\N	\N	Bryson City	35.46429	-83.43434	28713	Juney Whank Falls Trail	965.604	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
1646	\N	\N	Maggie Valley	35.57429	-83.07494	28785	Hemp Hill Road Trail	6598.294	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1647	\N	\N	Cherokee	35.51326	-83.30637	28719	Oconaluftee River Trail	4988.954	4	1	out and back	['birding', 'hiking', 'nature-trips', 'road-biking', 'trail-running', 'walking']	\N
1648	\N	\N	Bryson City	35.4643	-83.43433	28713	Deep Creek Waterfall Loop	4345.218	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1649	\N	\N	Cherokee	35.5858	-83.3583	28713	Kephart Shelter via Kephart Prong Trail	6276.426	4.5	1	out and back	['hiking', 'trail-running']	\N
1650	\N	\N	Cherokee	35.5568	-83.49607	28719	Forney Ridge Trail	17219.938	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1651	\N	\N	Fontana Dam	35.46045	-83.81108	28771	Shuckstack Tower via Appalachian Trail	10621.644	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1652	\N	\N	Waynesville	35.7519	-83.11021	37821	Big Creek Trail	16737.136	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1653	\N	\N	Bryson City	35.61035	-83.42528	28713	Newfound Gap to Clingmans Dome Trail	23979.166	4.5	5	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
1654	\N	\N	Bryson City	35.46393	-83.43495	28713	Deep Creek, Loop and Indian Creek Loop Trail	7563.898	4.5	3	loop	['hiking', 'trail-running']	\N
1655	\N	\N	Waynesville	35.63138	-83.08809	28785	The Boogerman Trail	11748.182	4.5	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1656	\N	\N	Cherokee	35.5858	-83.3583	28713	Charlies Bunion via Kephart Loop	22208.892	4.5	7	loop	['hiking']	\N
1657	\N	\N	Waynesville	35.75146	-83.10969	37821	Mount Sterling Overnight Loop Trail	27197.846	4.5	5	loop	['backpacking', 'camping', 'hiking', 'trail-running', 'horseback-riding']	\N
1658	\N	\N	Robbinsville	35.46735	-83.87679	28771	Gregory Bald via Twentymile	24944.77	4.5	7	loop	['backpacking', 'camping', 'hiking', 'horseback-riding']	\N
1659	\N	\N	Cherokee	35.5556	-83.31197	28719	Smokemont Loop Trail	9495.106	4	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
1660	\N	\N	Cherokee	35.55707	-83.49615	28719	Silers Bald and Forney Creek Loop Trail	29933.724	4.5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1661	\N	\N	Waynesville	35.63257	-83.045	28785	Cataloochee Divide Trail	22208.892	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1662	\N	\N	Bryson City	35.45919	-83.43792	28713	Noland Divide Trail	17863.674	4	5	point to point	['backpacking', 'camping', 'hiking', 'horseback-riding']	\N
1663	\N	\N	Cherokee	35.57313	-83.18052	28719	Flat Creek Trail	8207.634	4.5	3	out and back	['camping', 'hiking', 'nature-trips', 'trail-running']	\N
1664	\N	\N	Cherokee	35.60952	-83.44666	37738	Appalachian Trail: Charlie's Bunion and Kephart Loop	26393.176	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1665	\N	\N	Cherokee	35.55683	-83.49607	28719	Silers Bald Trail	14484.06	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1666	\N	\N	Bryson City	35.45982	-83.4385	28713	Deep Creek to Clingman's Dome Loop	56648.768	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'horseback-riding']	\N
1667	\N	\N	Bryson City	35.464150000000004	-83.43449	28713	Deep Creek Martin's Gap Sunkota Ridge Trail Loop	21565.156	4	3	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'paddle-sports', 'trail-running', 'walking', 'horseback-riding', 'whitewater-kayaking', 'fly-fishing']	\N
1668	\N	\N	Waynesville	35.70021	-83.09743	28785	Fork Mountain Loop Trail	29289.988	4.5	5	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1669	\N	\N	Waynesville	35.58625	-83.06837	28785	Purchase Knob Trail	1448.406	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1670	\N	\N	Waynesville	35.67639	-83.08731	28785	Little Cataloochee Trail	16415.268	4	3	out and back	['backpacking', 'hiking', 'nature-trips', 'horseback-riding']	\N
1671	\N	\N	Cherokee	35.56294	-83.31057	28719	Bradley Fork and Chasteen Creek Loop Trail	26715.044	4.5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1672	\N	\N	Cherokee	35.55655	-83.49595	28719	Newfound Gap and Low Gap	50372.342	4.5	5	point to point	['backpacking', 'hiking', 'trail-running']	\N
1673	\N	\N	Fontana Dam	35.45901	-83.53806	28713	Little Tennessee Lakeshore Trail	52464.484	4.5	5	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
1674	\N	\N	Bryson City	35.46417	-83.43438	28713	Indian Creek and Sunkota Ridge Trail	18507.41	4	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1675	\N	\N	Cherokee	35.55696	-83.49619	28719	Forney Creek Trail	37014.82	4.5	7	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
1676	\N	\N	Maggie Valley	35.6161	-83.12108	28785	Rough Fork Trail	19794.882	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1677	\N	\N	Cherokee	35.52091	-83.30918	28719	Mingus Mill and Newton Bald Trail	16254.334	4.5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'trail-running', 'horseback-riding']	\N
1678	\N	\N	Fontana Dam	35.45184	-83.80168	28733	Appalachian Trail: Fontana Dam to Davenport Gap	121666.104	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1679	\N	\N	Waynesville	35.58205	-83.07052	28785	Ferguson Cabin Trail Loop	1770.274	4	1	loop	['hiking', 'walking', 'horseback-riding']	\N
1680	\N	\N	Waynesville	35.61729	-83.11951	28785	Big Fork Ridge Loop Trail	14484.06	4	3	loop	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding', 'fly-fishing']	\N
1681	\N	\N	Bryson City	35.5568	-83.49606	28719	Forney Ridge Trail to Clingmans Dome Loop	7242.03	5	3	out and back	['hiking']	\N
1682	\N	\N	Robbinsville	35.46741	-83.87679	28771	Shuckstack via Twentymile	16737.136	4	5	out and back	['backpacking', 'hiking']	\N
1683	\N	\N	Bryson City	35.46718	-83.87698	28771	Twentymile Loop Trail	12391.918	4.5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1684	\N	\N	Cherokee	35.5956	-83.45901	28713	Spruce Fir Self-Guiding Nature Trail	482.802	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1685	\N	\N	Cherokee	35.60949	-83.4465	28713	Road Prong Trail	9656.04	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1686	\N	\N	Cherokee	35.50533	-83.30143	28719	Cherokee to Clingmans Dome via 441	37014.82	4.5	1	point to point	['nature-trips', 'scenic-driving']	\N
1687	\N	\N	Bryson City	35.45958	-83.43861	28713	Lonesome Pine Overlook	10621.644	4.5	5	out and back	['hiking']	\N
1688	\N	\N	Fontana Dam	35.46104	-83.81105	28771	Appalachian Trail, Lost Cove, and Lakeshore Loop	17702.74	4	7	loop	['backpacking', 'birding', 'fishing', 'hiking', 'nature-trips']	\N
1689	\N	\N	Fontana Dam	35.45235	-83.8026	28733	Fontana Dam To Fire Tower	14484.06	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1690	\N	\N	Cherokee	35.63363	-83.17906	28719	Balsam Mountain Trail to Appalachian Trail Junction	31382.13	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1691	\N	\N	Cherokee	35.56269	-83.31071	28719	Chasteen Creek Trail	16737.136	4	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1692	\N	\N	Robbinsville	35.46749	-83.87672	28771	Twentymile, Gregory Bald, and Shuckstack Loop	28163.45	4.5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1693	\N	\N	Waynesville	35.63137	-83.08812	28785	Caldwell Fork Loop	26393.176	4	7	loop	['backpacking', 'camping', 'hiking', 'snowshoeing', 'trail-running', 'horseback-riding']	\N
1694	\N	\N	Cherokee	35.58572	-83.35803	28713	Kephart Prong Trail - Charlies Bunion - Mount LeConte	40394.434	5	7	loop	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
1695	\N	\N	Waynesville	35.58202	-83.07022	28785	Hemphill Bald via Cataloochee Divide Trail	9977.908	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1696	\N	\N	Cherokee	35.59945	-83.42296	28713	Deep Creek Trail	22691.694	4.5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1697	\N	\N	Cherokee	35.60892	-83.2232	28719	Enloe Creek Trail	10460.71	3.5	3	out and back	['backpacking', 'camping', 'hiking', 'trail-running', 'horseback-riding']	\N
1698	\N	\N	Bryson City	35.46494	-83.43356	28713	Deep Creek/Indian Creek Loop	20921.42	4	3	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
1699	\N	\N	Waynesville	35.75111	-83.10966	37821	Baxter Creek Trail	25266.638	4.5	5	point to point	['birding', 'hiking', 'nature-trips']	\N
1700	\N	\N	Cherokee	35.61103	-83.42493	28713	Mount LeConte and Rainbow Falls and Grotto Falls via Appalachian Trail	51016.078	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
1701	\N	\N	Robbinsville	35.46757	-83.87672	28771	Hazel Creek and Bone Valley Trail	64212.666	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'paddle-sports', 'horseback-riding', 'canoeing']	\N
1702	\N	\N	Bryson City	35.49208	-83.37095	28713	Cooper Creek Trail	6598.294	3	1	out and back	['fishing', 'hiking', 'walking']	\N
1703	\N	\N	Maggie Valley	35.75232	-83.10997	37821	Mount Cammerer via Big Creek Trail	26393.176	4	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1704	\N	\N	Robbinsville	35.46115	-83.81104	28771	Eagle Creek, Spence Field, and Hazel Creek Loop Trail	60189.316	4	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'paddle-sports', 'trail-running', 'horseback-riding', 'canoeing']	\N
1705	\N	\N	Bryson City	35.45986	-83.43873	28713	Noland Divide Trail to Deep Creek Trail Loop	28646.252	4.5	5	loop	['backpacking', 'camping', 'fishing', 'nature-trips', 'horseback-riding', 'fly-fishing']	\N
1706	\N	\N	Waynesville	35.557900000000004	-83.3126	28719	Smokemont Self-Guided Nature Trail	965.604	4.5	1	loop	['birding', 'camping', 'nature-trips', 'walking']	\N
1707	\N	\N	Waynesville	35.62655	-83.11245	28785	Pretty Hollow Gap Trail	18024.608	4.5	5	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'horseback-riding']	\N
1708	\N	\N	Waynesville	35.62695	-83.11333	28785	Palmer Creek Trail	14805.928	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1709	\N	\N	Bryson City	35.45755	-83.5266	28713	Noland Creek Trail	29772.79	4	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'horseback-riding']	\N
1710	\N	\N	Cherokee	35.75948	-83.10595	28785	Mount Cammerer and Mount Sterling Loop	47153.662	4.5	5	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1711	\N	\N	Waynesville	35.57397	-83.07516	28785	Purchase Road, Ferguson Cabin, and Catalochee Divide Loop	9012.304	4.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1712	\N	\N	Cherokee	35.55287	-83.31003	28719	Newton Bald Trail	14484.06	4	5	out and back	['hiking']	\N
1713	\N	\N	Bryson City	35.46411	-83.43396	28713	Newton Bald Loop Trail	37175.754	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1714	\N	\N	Cherokee	35.59061	-83.46959	37738	Fork Ridge Trail	15610.598	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1715	\N	\N	Cherokee	35.58788	-83.36388	28713	Kanati Fork Trail	8690.436	3.5	7	out and back	['hiking', 'trail-running']	\N
1716	\N	\N	Bryson City	35.55682	-83.49605	28719	Forney Ridge and Forney Creek Loop	29933.724	5	5	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1717	\N	\N	Cherokee	35.55293	-83.30943	28719	Tow String Trail	7563.898	4	3	loop	['hiking', 'walking', 'horseback-riding']	\N
2303	\N	\N	Monticello	38.14145	-109.82719	84535	Devils Pocket Loop	16254.334	5	3	loop	['hiking', 'trail-running', 'walking']	\N
1718	\N	\N	Robbinsville	35.46732	-83.8768	28771	Wolf Ridge Trail to Gregory Bald	11587.248	4.5	5	point to point	['backpacking', 'camping', 'hiking']	\N
1719	\N	\N	Waynesville	35.57408	-83.09357	28785	Swag Loop	15127.796	4.5	5	loop	['hiking', 'nature-trips']	\N
1720	\N	\N	Cherokee	35.62111	-83.21086	28719	Hyatt Ridge Loop Trail	14644.994	4	3	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'trail-running', 'horseback-riding', 'fly-fishing']	\N
1721	\N	\N	Cherokee	35.5672	-83.17548	28719	Balsam Mountain Nature Trail	1931.208	3.5	1	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1722	\N	\N	Bryson City	35.5566	-83.49584	28719	Forney Ridge and Noland Divide Loop Trail	29129.054	5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
1723	\N	\N	Cherokee	35.557	-83.49626	28719	Forney Ridge to Silers Bald to Clingman Loop	33796.14	4.5	3	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1724	\N	\N	Cherokee	35.56286	-83.31066	28719	Bradley Fork, Dry Sluice Gap, Appalachian, Hughes Ridge and Chasteen Creek Loop	39267.896	4.5	5	loop	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1725	\N	\N	Cherokee	35.61102	-83.18451	28719	Spruce Mountain Trail	3540.548	4	3	out and back	['hiking']	\N
1726	\N	\N	Bryson City	35.56292	-83.49841	28713	Appalachian Trail: Lake Fontana Dam to Clingmans Dome	51016.078	4.5	5	point to point	['backpacking', 'hiking', 'nature-trips', 'trail-running']	\N
1727	\N	\N	Waynesville	35.7595	-83.10597	28785	Big Creek Perimeter Loop	52947.286	0	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1728	\N	\N	Fontana Dam	35.46722	-83.87692	28771	Rich Gap via Long Hungry Ridge Trail	12070.05	4.5	5	point to point	['camping', 'hiking']	\N
1729	\N	\N	Waynesville	35.56302	-83.16221	28751	Spruce Mountain Loop Trail	34439.876	3	5	loop	['backpacking', 'hiking']	\N
1730	\N	\N	Fontana Dam	35.46129	-83.81097	28771	Lakeshore Trail via Fontana Dam	52625.418	4.5	3	point to point	['backpacking', 'hiking']	\N
1731	\N	\N	Cherokee	35.58568	-83.39889	28713	Thomas Divide, Newton Bald and Mingus Creek Trail	17702.74	4.5	7	point to point	['backpacking', 'hiking', 'nature-trips', 'trail-running']	\N
1732	\N	\N	Waynesville	35.63132	-83.08812	28785	Hemphill Bald via Caldwell Fork Trail	25910.374	4.5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
1733	\N	\N	Bryson City	35.46736	-83.87677	28771	Shuckstack via Twenty Mile Loop	19151.146	4.5	5	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1734	\N	\N	Cherokee	35.61047	-83.42583	28713	Newfound Gap to Long Ridge Campsite	18507.41	2	5	point to point	['backpacking', 'camping', 'hiking', 'horseback-riding']	\N
1735	\N	\N	Cherokee	35.62122	-83.21094	28719	Beech Gap Trail to McGee Springs	11426.314	4	7	out and back	['camping', 'hiking', 'trail-running', 'horseback-riding']	\N
1736	\N	\N	Bryson City	35.46399	-83.4346	28713	Indian Creek to Martin's Gap Trail	23496.364	4	5	out and back	['birding', 'hiking', 'nature-trips', 'horseback-riding']	\N
1737	\N	\N	Bryson City	35.45897	-83.53783	28713	Lakeshore and Tunnel Bypass Trail Loop	5149.888	4.5	1	loop	['camping', 'hiking', 'trail-running']	\N
1738	\N	\N	Bryson City	35.459	-83.53779	28713	Lakeshore Loop	74673.376	3	5	loop	['backpacking', 'hiking', 'trail-running']	\N
1739	\N	\N	Cherokee	35.62414	-83.21144	28719	Beech Gap Trail	7724.832	4.5	3	out and back	['hiking', 'nature-trips']	\N
1740	\N	\N	Waynesville	35.7595	-83.10574	28785	Davenport Gap to Low Gap Loop Trail	32830.536	0	5	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1741	\N	\N	Waynesville	35.75188	-83.11022	37821	Big Creek and Mt Sterling Loop	44095.916	4.5	5	loop	['backpacking', 'camping', 'hiking', 'trail-running']	\N
1742	\N	\N	Bryson City	35.55681	-83.49603	28719	Clingsman Dome Loop	98974.41	4	7	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
1743	\N	\N	Waynesville	35.75107	-83.1095	37821	Mount Sterling Backpacking Trail	44417.784	0	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1744	\N	\N	Waynesville	35.70024	-83.09743	28785	Long Bunk Trail via Mount Sterling Trail	16254.334	4.5	3	out and back	['hiking', 'nature-trips']	\N
1745	\N	\N	Bryson City	35.45873	-83.53759	28713	Goldmine, Forney and Noland Loop	34278.942	5	3	loop	['backpacking', 'hiking', 'trail-running']	\N
1746	\N	\N	Fontana Dam	35.46052	-83.81104	28771	Appalachian Trail, Rocky Top, Eagle Creek and Lakeshore Trail	52786.352	5	5	loop	['backpacking', 'camping', 'hiking']	\N
1747	\N	\N	Cherokee	35.59888	-83.4125	28713	Beech Flats Quiet Walkway	2092.142	3.5	3	out and back	['hiking']	\N
1748	\N	\N	Bryson City	35.4591	-83.53813	28713	Cold Spring Gap Trail	41681.906	0	5	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'horseback-riding']	\N
1749	\N	\N	Cherokee	35.4924	-83.3708	28713	Cooper Creek Trail, Deeplow Gap Trail, Mingus Creek Trail, and Thomas Divide Trail Loop	20277.684	3.5	5	loop	['birding', 'hiking']	\N
1750	\N	\N	Waynesville	35.61641	-83.12079	28785	Big Fork Ridge/Caldwell Fork/Boogerman/Caldwell	13840.324	4	5	point to point	['backpacking', 'hiking', 'trail-running']	\N
1751	\N	\N	Cherokee	35.59047	-83.46953	37738	Sugarland Mountain and Huskey Gap Trail	20116.75	4.5	5	point to point	['hiking']	\N
1752	\N	\N	Bryson City	35.5568	-83.49606	28719	Springhouse Branch Trail via Forney Ridge Trail	26393.176	4	3	out and back	['hiking', 'nature-trips', 'walking']	\N
1753	\N	\N	Robbinsville	35.45231	-83.80138	28733	Fontana Dam to Cade\\'92s Cove	34439.876	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1754	\N	\N	Cherokee	35.75109	-83.10962	37821	Benton MacKaye Trail: Smokemount to Big Creek	47475.53	4	5	point to point	['backpacking', 'hiking', 'trail-running']	\N
1755	\N	\N	Bryson City	35.45893	-83.53792	28713	Silers Bald via Lakeshore Trail, Bear Creek Trail, and Welch Ridge Trail	57453.438	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking']	\N
1756	\N	\N	Cherokee	35.5904	-83.46936	28713	Mt. Collins Shelter, Clingman/Forney Trail and Camp 68	25588.506	5	5	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
1757	\N	\N	Bryson City	35.5568	-83.49606	28719	Forney Loop	43291.246	0	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
1886	\N	\N	Gatlinburg	35.6719	-83.58062	37862	Laurel Falls Trail	3862.416	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1758	\N	\N	Cherokee	35.56326	-83.16157	28785	Polls Gap-Rough Fork Tr to Caldwell Fork Tr	15610.598	0	3	point to point	['backpacking', 'camping', 'hiking', 'walking', 'horseback-riding']	\N
1759	\N	\N	Fairfield	46.98863	-103.48513	58645	Wind Canyon Trail	804.67	4.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
1760	\N	\N	Watford City	47.60986	-103.35601	58634	Caprock Coulee Loop	6115.492	4.5	3	loop	['hiking']	\N
1761	\N	\N	Fairfield	46.8943	-103.38216	58622	Painted Canyon Nature Trail	1770.274	4	1	loop	['hiking', 'walking']	\N
1762	\N	\N	Fairfield	46.99627	-103.60466	\N	Petrified Forest Trail	16415.268	4	3	loop	['hiking', 'trail-running']	\N
1763	\N	\N	Amidon	46.59833	-103.44511	58622	Maah Daah Hey Trail	229009.082	4.5	5	point to point	['backpacking', 'bike-touring', 'camping', 'hiking', 'mountain-biking', 'trail-running', 'horseback-riding']	\N
1764	\N	\N	Fairfield	46.95256	-103.49513	58645	Lower Paddock Creek Trail	11587.248	4.5	3	out and back	['backpacking', 'hiking', 'trail-running']	\N
1765	\N	\N	Belfield	46.92654	-103.38951	58622	Buck Hill Trail	643.736	4.5	3	out and back	['hiking', 'walking']	\N
1766	\N	\N	Fairfield	46.9219	-103.46307	58645	Ridgeline Nature Trail	1126.538	4	3	out and back	['hiking']	\N
1767	\N	\N	Fairfield	46.92453	-103.40212	58622	Coal Vein Trail	965.604	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1768	\N	\N	Watford City	47.60038	-103.26661	58634	Buckhorn Trail	19633.948	4.5	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1769	\N	\N	Fairfield	46.96627	-103.48743	58645	Jones Creek Trail	11104.446	4.5	3	out and back	['hiking']	\N
1770	\N	\N	Belfield	46.95934	-103.40174	58645	Boicourt Overlook Trail	1287.472	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1771	\N	\N	Watford City	47.59297	-103.33894	58634	Achenbach and North Achenbach Trail Loop	29289.988	4.5	5	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1772	\N	\N	Belfield	46.91258	-103.42898	58622	Old East Entrance Station Trail	1448.406	4	1	out and back	['hiking', 'walking']	\N
1773	\N	\N	Belfield	46.89518	-103.37975	58622	Painted Canyon Trail	6920.162	4	3	out and back	['hiking', 'nature-trips']	\N
1774	\N	\N	Medora	46.9591	-103.50294	58645	The Big Plateau Trail	9334.172	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1775	\N	\N	Medora	46.95905	-103.50285	58645	Lone Tree Spring Trail	15449.664	5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1776	\N	\N	Grassy Butte	47.60303	-103.44291	58634	Achenbach/Bison Trail Loop	21887.024	3.5	5	loop	['backpacking', 'fishing', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'horseback-riding']	\N
1777	\N	\N	Medora	46.9163	-103.52567	58645	East River Road to Scenic Loop Drive	56005.032	4.5	1	loop	['bike-touring', 'birding', 'camping', 'hiking', 'nature-trips', 'road-biking', 'scenic-driving', 'trail-running', 'walking']	\N
1778	\N	\N	Medora	46.95896	-103.50433	58645	Peaceful Valley Ranch Trails	3057.746	3	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1779	\N	\N	Medora	46.94	-103.38113	58622	Upper Talkinton Loop Trail	16093.4	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1780	\N	\N	Medora	46.95908	-103.5029	58645	Ekblom and Maah Daah Hey Trail	24783.836	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1781	\N	\N	Fairfield	46.93194	-103.43163	58645	Upper Paddock Creek Trail	24783.836	3	3	out and back	['hiking', 'walking']	\N
1782	\N	\N	Hudson	41.22386	-81.51015	44264	Ledges Trail	4184.284	4.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1783	\N	\N	Northfield	41.27688	-81.54021	44067	Brandywine Gorge Trail	2735.878	4.5	3	loop	['birding', 'fishing', 'hiking', 'trail-running']	\N
1784	\N	\N	Northfield	41.27104	-81.5567	44264	Stanford House to Brandywine Falls Trail	6115.492	4.5	3	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1785	\N	\N	Brecksville	41.25634	-81.57266	44141	Blue Hen Falls Trail	804.67	4	3	out and back	['hiking', 'trail-running']	\N
1786	\N	\N	Peninsula	41.21832	-81.52429	44264	Salt Run Trail	6759.228	4.5	3	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1787	\N	\N	Peninsula	41.21948	-81.57649	44264	Plateau Trail	7081.096	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1788	\N	\N	Peninsula	41.21802	-81.52488	44264	Pine Grove Trail and Ledges Trail Loop from Kendall Lake	6115.492	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1789	\N	\N	Peninsula	41.23943	-81.53804	44264	Buckeye Trail to Valley Bridle Trail Loop	5471.756	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1790	\N	\N	Cuyahoga Falls	41.21248	-81.54581	44264	Wetmore Bridle Trail	7563.898	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
1791	\N	\N	Brecksville	41.31788	-81.58767	44141	Ohio and Erie Canal Towpath Trail: Brecksville Station	7081.096	4.5	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1792	\N	\N	Brecksville	41.25609	-81.57269	44141	Buckeye Trail: Blue Hen to Jaite	12391.918	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1793	\N	\N	Brecksville	41.28877	-81.57174	44141	Buckeye Trail: Jaite to Brecksville Station	12070.05	4.5	3	point to point	['birding', 'hiking', 'trail-running', 'walking']	\N
1794	\N	\N	Peninsula	41.23206	-81.50731	44264	Boston Run Trail	4988.954	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'cross-country-skiing']	\N
1795	\N	\N	Peninsula	41.21887	-81.52413	44264	Kendall Lake Loop	1609.34	4	1	loop	['hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
1796	\N	\N	Peninsula	41.22634	-81.51406	44264	Pine Grove Trail	3218.68	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1797	\N	\N	Peninsula	41.26251	-81.55878	44264	Buckeye Trail and Ohio & Erie Canal Towpath Loop	5793.624	4	3	loop	['hiking', 'nature-trips', 'road-biking', 'trail-running', 'walking']	\N
1798	\N	\N	Peninsula	41.21942	-81.57623	44264	Oak Hill Trail	2253.076	4	1	loop	['birding', 'hiking', 'nature-trips', 'skiing', 'walking']	\N
1799	\N	\N	Peninsula	41.22308	-81.51057	44264	Ledges Trail and Pine Grove Trail Loop	5793.624	4.5	3	loop	['hiking', 'nature-trips']	\N
1840	\N	\N	Chiloquin	42.84983	-122.00705	97624	Pinnacles Valley Trail	1126.538	4	1	out and back	['hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
1800	\N	\N	Brecksville	41.26274	-81.55908	44264	Boston to Red Lock Loop via Buckeye Trail and Ohio and Erie Canal Towpath	12552.852	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1801	\N	\N	Peninsula	41.21244	-81.54589	44264	Wetmore Outer Loop	10621.644	4.5	3	loop	['hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1802	\N	\N	Peninsula	41.23328	-81.56917	44264	Tree Farm Trail	4506.152	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'skiing', 'walking']	\N
1803	\N	\N	Brecksville	41.2042	-81.58074	44264	Riding Run Trail Loop	6115.492	4.5	3	loop	['hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1804	\N	\N	Peninsula	41.2433	-81.54995	44264	Ohio and Erie Canal Towpath: Peninsula to Boston Mills	7724.832	4.5	1	out and back	['hiking', 'nature-trips', 'road-biking', 'walking']	\N
1805	\N	\N	Brecksville	41.20419	-81.5807	44264	Perkins Trail and Riding Run Loop	7724.832	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1806	\N	\N	Akron	41.18411	-81.58176	44264	Ohio and Erie Canal Towpath from Ira Trailhead	4988.954	4.5	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1807	\N	\N	Brecksville	41.23193	-81.50783	44264	Ledges Trail Loop via Haskell Run Trail	4023.35	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1808	\N	\N	Brecksville	41.20417	-81.58072	44264	Furnace Run	2735.878	4	3	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1809	\N	\N	Peninsula	41.20925	-81.52686	44264	Cross Country Trail from Quick Road	5793.624	4.5	1	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1810	\N	\N	Brecksville	41.21792	-81.52496	44264	Cross Country Trail from Kendall Lake	4667.086	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1811	\N	\N	Peninsula	41.26261	-81.55849	44264	Ohio and Erie Canal Towpath from Boston Mills to Peninsula	7885.766	4.5	1	out and back	['nature-trips', 'road-biking', 'trail-running', 'walking']	\N
1812	\N	\N	Northfield	41.28955	-81.56379	44067	Ohio and Erie Canal Towpath: Red Lock to Peninsula	14323.126	4.5	1	out and back	['hiking', 'nature-trips', 'road-biking', 'trail-running', 'walking']	\N
1813	\N	\N	Brecksville	41.28875	-81.57178	44141	Buckeye Trail: Jaite to Boston	16415.268	4.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
1814	\N	\N	Northfield	41.3183	-81.58776	44141	Twin Sister Falls	2896.812	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1815	\N	\N	Peninsula	41.25512	-81.51897	44264	East Rim MTB Trail	3701.482	5	3	loop	['birding', 'hiking', 'mountain-biking', 'trail-running']	\N
1816	\N	\N	Cuyahoga Falls	41.21247	-81.54555	44264	Wetmore, Lake and Salt Run Trail Loop 	15610.598	4.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1817	\N	\N	Akron	41.20425	-81.5806	44264	Perkins Trail, Riding Run, and Furnace Trail Loop	9173.238	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1818	\N	\N	Peninsula	41.26282	-81.55818	44264	Buckeye Trail to Bridle Trail Loop	18668.344	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1819	\N	\N	Peninsula	41.26252	-81.5585	44264	Buckeye Trail and Ohio and Erie Canal Towpath Loop Extended	11104.446	4	3	loop	['hiking', 'nature-trips', 'walking']	\N
1820	\N	\N	Peninsula	41.23169	-81.50783	44264	Haskell Run Trail	1126.538	4	1	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1821	\N	\N	Peninsula	41.23942	-81.53818	44264	Buckeye Trail: Short Loop	3540.548	4.5	1	loop	['hiking', 'nature-trips', 'trail-running']	\N
1822	\N	\N	Peninsula	41.23937	-81.5381	44264	Valley Bridle Trail	2896.812	4.5	1	out and back	['hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
1823	\N	\N	Northfield	41.28954	-81.56376	44067	Buckeye Trail and Bridle Trail Loop from Red Lock Trailhead	9173.238	3.5	3	loop	['hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1824	\N	\N	Peninsula	41.22628	-81.5143	44264	Forest Point Trail	1287.472	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1825	\N	\N	Peninsula	41.24317	-81.55035	44264	Ohio and Erie Canal Towpath and Buckeye Trail Loop	9334.172	4	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1826	\N	\N	Peninsula	41.26344	-81.55849	44264	Buckeye, West Highland Road, and Stanford Loop	17059.004	3.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1827	\N	\N	Peninsula	41.23938	-81.53801	44264	Cuyahoga Valley Trail	8207.634	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1828	\N	\N	Peninsula	41.19402	-81.57763	44264	Hale Farm Connector to Ohio & Erie Canal Towpath Trail	4988.954	3	1	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1829	\N	\N	Cuyahoga Falls	41.2123	-81.54555	44264	Langes Run and Butler\\'92s Trail Loop	3057.746	3.5	1	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1830	\N	\N	Brecksville	41.25596	-81.5727	44141	Three Waterfalls Loop [PRIVATE PROPERTY]	12070.05	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1831	\N	\N	Brecksville	41.28957	-81.56437	44067	Old Carriage Trail [CLOSED]	8529.502	3.5	3	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
1832	\N	\N	Crater Lake	42.91	-122.14199	97503	Garfield Peak Trail	5471.756	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
1833	\N	\N	Crater Lake	42.97972	-122.08335	97604	Cleetwood Cove Trail	3379.614	4.5	3	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1834	\N	\N	Crater Lake	42.94581	-122.16896	97604	The Watchman Peak Trail	2574.944	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1835	\N	\N	Chiloquin	42.92905	-122.03015	97604	Mount Scott Trail	6759.228	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1836	\N	\N	Crater Lake	42.91089	-122.14595	97604	Discovery Point Trail	6437.36	4.5	1	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'walking', 'cross-country-skiing']	\N
1837	\N	\N	Chiloquin	42.901650000000004	-122.06111	97604	Plaikni Falls Trail	3218.68	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1838	\N	\N	Crater Lake	42.93439	-122.1503	97604	Wizard Island Trail	3701.482	4.5	3	loop	['birding', 'hiking', 'nature-trips']	\N
1839	\N	\N	Crater Lake	42.9	-122.09549	97604	Sun Notch Trail	1287.472	4.5	1	loop	['birding', 'hiking', 'snowshoeing', 'trail-running', 'walking']	\N
1841	\N	\N	Chiloquin	42.87174	-122.16931	97604	Mazama Village to Rim Village at Crater Lake	13357.522	4.5	3	out and back	['camping', 'hiking', 'snowshoeing', 'trail-running', 'walking', 'cross-country-skiing']	\N
1842	\N	\N	Crater Lake	43.08861	-122.11648	97733	Crater Lake Rim Scenic Drive	80788.868	4.5	1	loop	['birding', 'nature-trips', 'scenic-driving']	\N
1843	\N	\N	Chiloquin	42.86676	-122.14558	97604	Godfrey Glen Trail	1770.274	4	1	loop	['hiking', 'walking']	\N
1844	\N	\N	Crater Lake	42.88233	-122.09773	97604	Crater Peak Trail	11265.38	4.5	3	out and back	['hiking', 'nature-trips']	\N
1845	\N	\N	Chiloquin	42.86542	-122.16247	97604	Annie Creek Canyon Trail	3379.614	4	3	loop	['hiking']	\N
1846	\N	\N	Chiloquin	42.89664	-122.13375	97604	Castle Crest Wildflower Garden Trail	1931.208	4	1	loop	['hiking', 'walking']	\N
1847	\N	\N	Crater Lake	42.91206	-122.14762	97604	Dutton Creek Trail	7081.096	4	3	out and back	['hiking']	\N
1848	\N	\N	Crater Lake	42.93441	-122.17006	97604	Lightning Spring Trail	13518.456	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1849	\N	\N	Chemult	42.87199	-122.16928	97604	Pacific Crest Trail and Alternate Loop	49889.54	4.5	5	loop	['backpacking', 'hiking', 'trail-running']	\N
1850	\N	\N	Crater Lake	42.89698	-122.13413	97604	Lady of the Woods Trail	1126.538	3	1	loop	['hiking', 'walking']	\N
1851	\N	\N	Crater Lake	42.84313	-122.14949	97601	Stuart Falls Trail	18829.278	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1852	\N	\N	Crater Lake	42.8711	-122.18044	\N	Union Peak Trail	15449.664	4.5	3	out and back	['hiking', 'nature-trips']	\N
1853	\N	\N	Crater Lake	42.87187	-122.16929	97604	PCT: Crater Lake to Willamette Trailhead	129551.87	2	3	point to point	['backpacking', 'camping', 'hiking', 'trail-running', 'walking']	\N
1854	\N	\N	Hopkins	33.82994	-80.8225	29061	Boardwalk Loop Trail	3862.416	4	1	loop	['birding', 'nature-trips', 'walking', 'canoeing']	\N
1855	\N	\N	Hopkins	33.82961	-80.82374	29061	Weston Lake Loop Trail	7402.964	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1856	\N	\N	Hopkins	33.83019	-80.82293	29061	Oakridge Trail	10138.842	4	1	loop	['birding', 'hiking', 'trail-running']	\N
1857	\N	\N	St. Matthews	33.83015	-80.82322	29061	Congaree River Trail	15932.466	4	1	loop	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running', 'canoeing']	\N
1858	\N	\N	Hopkins	33.82033	-80.78757	29052	Kingsnake Trail	11909.116	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1859	\N	\N	Hopkins	33.83567	-80.828	29061	Congaree Bluff Trail	3379.614	3.5	1	loop	['camping', 'nature-trips', 'walking']	\N
1860	\N	\N	Gadsden	33.81969	-80.7879	29052	Cedar Creek	12070.05	3.5	1	out and back	['birding', 'nature-trips', 'paddle-sports', 'whitewater-kayaking', 'canoeing']	\N
1861	\N	\N	Columbia	33.96156	-81.03518	29033	Congaree River Blue Trail	75317.112	5	3	point to point	['fishing', 'paddle-sports']	\N
1862	\N	\N	Interior	43.76031	-101.92808	57750	Notch Trail	2092.142	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1863	\N	\N	Interior	43.7613	-101.92792	57750	Castle Trail	16898.07	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1864	\N	\N	Interior	43.7636	-101.92684	57750	The Door Trail	1287.472	4.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
1865	\N	\N	Interior	43.758	-101.97446	57750	Saddle Pass Trail	1126.538	4.5	3	out and back	['hiking', 'walking']	\N
1866	\N	\N	Interior	43.75805	-101.97438	57750	Medicine Root Loop Trail	7242.03	4	1	loop	['hiking']	\N
1867	\N	\N	Interior	43.76022	-101.92789	57750	The Window Trail	321.868	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1868	\N	\N	Interior	43.75043	-101.93117	57750	Cliff Shelf Nature Trail	804.67	4	1	loop	['hiking', 'walking']	\N
1869	\N	\N	Interior	43.77289	-102.00298	57790	Fossil Exhibit Trail	643.736	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1870	\N	\N	Custer	43.62278	-103.48582	57730	Rankin Ridge Interpretive Trail	1609.34	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
1871	\N	\N	Custer	43.55464	-103.4667	57747	Wind Cave Canyon Trail	6115.492	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1872	\N	\N	Custer	43.58144	-103.4837	57730	Lookout Point Trail and Centennial Trail Loop	8368.568	4	3	loop	['backpacking', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1873	\N	\N	Custer	43.53544	-103.49805	57747	Cold Brook Canyon Trail	4506.152	4	1	out and back	['hiking', 'trail-running', 'walking']	\N
1874	\N	\N	Custer	43.52178	-103.47746	57747	East Bison Flats Trail	16254.334	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1875	\N	\N	Buffalo Gap	43.59131	-103.38165	57738	Boland Ridge Trail	7724.832	4	3	out and back	['hiking', 'trail-running', 'walking']	\N
1876	\N	\N	Wall	43.83475	-102.20138	57790	Sage Creek Loop	36692.952	4	5	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1877	\N	\N	Pringle	43.58121	-103.48454	57730	Centennial Trail: Highway 87 to Highlander Rd	13035.654	4.5	3	point to point	['backpacking', 'birding', 'camping', 'mountain-biking', 'nature-trips']	\N
1878	\N	\N	Scenic	43.72457	-102.52845	57780	Sheep Mountain Table Road	23496.364	4.5	3	out and back	['hiking', 'scenic-driving']	\N
1879	\N	\N	Custer	43.55863	-103.48666	57747	Elk Mountain Interpretive Trail	4023.35	3.5	1	out and back	['hiking', 'walking']	\N
1880	\N	\N	Hot Springs	43.55662	-103.47887	57747	Prairie Vista Loop	1609.34	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1881	\N	\N	Buffalo Gap	43.62242	-103.42118	57738	Highland Creek Trail to Centennial Trail Loop	21887.024	4.5	5	loop	['hiking', 'nature-trips']	\N
1882	\N	\N	Gatlinburg	35.62957	-83.45172	37738	Alum Cave Trail to Mount LeConte	17219.938	5	5	out and back	['backpacking', 'birding', 'hiking']	\N
1883	\N	\N	Gatlinburg	35.63544	-83.46976	37738	Chimney Tops Trail	5793.624	4.5	5	out and back	['backpacking', 'hiking', 'nature-trips', 'rock-climbing']	\N
1884	\N	\N	Gatlinburg	35.67592	-83.48668	37738	Rainbow Falls Trail	8851.37	4.5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1885	\N	\N	Gatlinburg	35.68027	-83.46261	37738	Grotto Falls Trail	4184.284	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1888	\N	\N	Gatlinburg	35.61098	-83.42475	28713	Charlies Bunion via Appalachian Trail	13840.324	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1889	\N	\N	Gatlinburg	35.70272	-83.35747	37738	Ramsey Cascades Trail	13035.654	4.5	5	out and back	['hiking', 'fly-fishing']	\N
1890	\N	\N	Gatlinburg	35.62874	-83.45078	37738	Peregrine Peak via Alum Cave Bluffs Trail	6759.228	5	3	out and back	['hiking', 'nature-trips']	\N
1891	\N	\N	Townsend	35.64105	-83.68926	37882	Spruce Flats Falls Trail	2896.812	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
1892	\N	\N	Gatlinburg	35.69662	-83.38846	37738	Porters Creek Trail	11265.38	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'trail-running', 'horseback-riding']	\N
1893	\N	\N	Cosby	35.75637	-83.20788	37722	Mount Cammerer via Low Gap Trail	19151.146	4.5	5	out and back	['backpacking', 'camping', 'hiking', 'horseback-riding']	\N
1894	\N	\N	Gatlinburg	35.68562	-83.53732	37738	Gatlinburg Trail	6115.492	4	1	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'road-biking', 'trail-running', 'walking']	\N
1895	\N	\N	Gatlinburg	35.6719	-83.58056	37862	Laurel Falls and Cove Mountain	12391.918	4	3	out and back	['birding', 'hiking', 'nature-trips']	\N
1896	\N	\N	Gatlinburg	35.61097	-83.42474	28713	Jump Off Trail via Appalachian Trail	9977.908	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking']	\N
1897	\N	\N	Gatlinburg	35.65342	-83.58016	37738	Cucumber Gap and Little River Loop Trail	9012.304	4.5	3	loop	['camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1898	\N	\N	Townsend	35.61853	-83.66995	37882	Indian Flats Falls via Middle Prong Trail	13035.654	4.5	3	out and back	['fishing', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding', 'fly-fishing']	\N
1899	\N	\N	Townsend	35.60651	-83.77419	37882	Cades Cove Loop Road	16254.334	4.5	1	loop	['birding', 'camping', 'road-biking', 'scenic-driving', 'trail-running', 'walking']	\N
1900	\N	\N	Gatlinburg	35.61095	-83.42487	28713	Mount LeConte via Appalachian Trail and Boulevard Trail	25105.704	4.5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
1901	\N	\N	Gatlinburg	35.68551	-83.53714	37738	Cataract Falls	1770.274	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1902	\N	\N	Cosby	35.75779	-83.20967	37722	Gabes Mountain Trail to Hen Wallow Falls	6920.162	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1903	\N	\N	Gatlinburg	35.67573	-83.48563	37738	Mount LeConte and Rainbow Falls via The Bullhead Trail	20599.552	4.5	5	loop	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
1904	\N	\N	Gatlinburg	35.67745	-83.47853	37738	Baskins Creek Trail and Baskins Creek Falls	10299.776	4.5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
1905	\N	\N	Gatlinburg	35.68006	-83.46228	37738	Mount LeConte via Trillium Gap Loop Trail	23979.166	4.5	5	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1906	\N	\N	Gatlinburg	35.61096	-83.42467	28713	Icewater Spring via Appalachian Trail	9977.908	4.5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
1907	\N	\N	Townsend	35.61741	-83.66946	37882	Middle Prong Trail	12713.786	4.5	3	out and back	['birding', 'camping', 'fishing', 'hiking', 'trail-running', 'walking', 'horseback-riding', 'fly-fishing']	\N
1908	\N	\N	Townsend	35.60686	-83.74488	37882	Rocky Top from Lead Cove Trailhead	16898.07	4.5	5	out and back	['birding', 'hiking', 'trail-running', 'horseback-riding']	\N
1909	\N	\N	Townsend	35.64146	-83.68935	37882	Spruce Flats Falls via Lumber Ridge Loop	11265.38	4.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
1910	\N	\N	Gatlinburg	35.68552	-83.49645	37738	Roaring Fork Motor Nature Trail	10782.578	4.5	3	point to point	['birding', 'hiking', 'mountain-biking', 'road-biking', 'scenic-driving']	\N
1911	\N	\N	Townsend	35.56245	-83.84573	37882	Gregory Ridge Trail to Gregory Bald	18668.344	4.5	7	out and back	['backpacking', 'camping', 'hiking', 'trail-running', 'horseback-riding']	\N
1912	\N	\N	Gatlinburg	35.67828	-83.64753	37738	Walker Sisters Home via Little Brier Gap Trail	6276.426	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1913	\N	\N	Gatlinburg	35.6693	-83.66208	37738	Meigs Creek Trail	10460.71	4.5	3	out and back	['fishing', 'hiking', 'walking']	\N
1914	\N	\N	Gatlinburg	35.67558	-83.4857	37738	Trillium Gap Trail to Grotto Falls	10943.512	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1915	\N	\N	Gatlinburg	35.65366	-83.58015	37738	Little River Trail to Little River Upper Falls and Grouse Creek Campground	19794.882	4.5	1	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'fly-fishing']	\N
1916	\N	\N	Gatlinburg	35.62909	-83.45096	37738	Myrtle Point and Mount LeConte via Alum Cave Trail	18507.41	5	5	out and back	['backpacking', 'hiking', 'nature-trips']	\N
1917	\N	\N	Maryville	35.63124	-83.94022	37878	Look Rock Tower Trail	1448.406	4	1	out and back	['nature-trips', 'walking']	\N
1918	\N	\N	Townsend	35.64091	-83.69115	37882	West Prong Trail	8046.7	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1919	\N	\N	Gatlinburg	35.68552	-83.53706	37738	Fighting Creek Nature Trail	2253.076	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1920	\N	\N	Gatlinburg	35.61084	-83.42526	28713	Appalachian Trail: Newfound Gap to Sweat Heifer Creek Trail	5310.822	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1921	\N	\N	Cosby	35.70021	-83.09749	28785	Mount Sterling via Mount Sterling Gap	8207.634	4.5	5	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1922	\N	\N	Townsend	35.60645	-83.77646	37882	Rich Mountain Loop Trail	13357.522	4	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1923	\N	\N	Gatlinburg	35.67956	-83.53127	37738	Sugarlands Valley Nature Trail	804.67	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1924	\N	\N	Cosby	35.76935	-83.2667	37722	Maddron Bald Trail to Albright Grove Loop	10621.644	4	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1925	\N	\N	Gatlinburg	35.68348	-83.49042	37738	Noah "Bud" Ogle Self-Guiding Trail	1126.538	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1926	\N	\N	Gatlinburg	35.56271	-83.49999	28713	Appalachian Trail: Clingman Dome to Cades Cove	38463.226	4.5	5	point to point	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
1927	\N	\N	Gatlinburg	35.70124	-83.51204	37738	Twin Creeks Trail	7242.03	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1928	\N	\N	Gatlinburg	35.67703	-83.47849	37738	Baskins Creek Falls Trail to Greenbrier Cove	15771.532	4	3	point to point	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1929	\N	\N	Gatlinburg	35.65364	-83.58022	37738	Huskey Branch Falls	7563.898	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1930	\N	\N	Gatlinburg	35.68804	-83.53492	37738	Old Sugarlands Trail	12070.05	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1931	\N	\N	Gatlinburg	35.67828	-83.64769	37738	Metcalf Bottoms Trail	2414.01	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1932	\N	\N	Gatlinburg	35.67577	-83.48556	37738	Mount LeConte via Rainbow Falls Trail	20921.42	4.5	7	out and back	['birding', 'hiking', 'nature-trips']	\N
1933	\N	\N	Gatlinburg	35.6755	-83.48568	37738	Rainbow Falls Trail and Cliff Tops Trail	20277.684	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1934	\N	\N	Hartford	35.78333	-83.10927	37753	Appalachian Trail: Davenport Gap to Max Patch	21404.222	4.5	5	point to point	['backpacking', 'camping', 'hiking']	\N
1935	\N	\N	Townsend	35.627250000000004	-83.72644	37882	Schoolhouse Gap Trail	7563.898	4	3	out and back	['hiking', 'trail-running', 'horseback-riding']	\N
1936	\N	\N	Townsend	35.66942	-83.66239	37738	Meigs Creek Trail: Short Version	5632.69	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
1937	\N	\N	Gatlinburg	35.72964	-83.40584	37738	Injun Creek Trail	11104.446	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1938	\N	\N	Townsend	35.60421	-83.77067	37882	Anthony Creek Leadbetter Ridge Loop Trail	20760.486	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1939	\N	\N	Gatlinburg	35.61041	-83.42557	28713	Myrtle Point via Appalachian Trail and Boulevard Trail	25266.638	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1940	\N	\N	Gatlinburg	35.65229	-83.58147	37738	Jakes Creek Trail to Avent Cabin	4345.218	4.5	1	out and back	['hiking']	\N
1941	\N	\N	Gatlinburg	35.68029	-83.46251	37738	Mount Le Conte	20116.75	5	5	out and back	['backpacking', 'hiking', 'trail-running']	\N
1942	\N	\N	Cosby	35.75946	-83.10599	28785	Chestnut Branch Trail to Mount Cammerer	16254.334	4.5	5	out and back	['hiking', 'trail-running']	\N
1943	\N	\N	Townsend	35.66054	-83.70901	37882	Chestnut Top Trail to Whiteoak Sink	16254.334	4	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1944	\N	\N	Sevierville	35.68026	-83.46246	37738	Brushy Mountain	10138.842	4	5	out and back	['hiking', 'trail-running']	\N
1945	\N	\N	Townsend	35.61861	-83.67006	37882	Lynn Camp Via Middle Prong Trail	7081.096	4.5	3	out and back	['hiking', 'trail-running']	\N
1946	\N	\N	Gatlinburg	35.63642	-83.49171	37738	Cove Hardwoods Nature Trail	1287.472	4	3	loop	['birding', 'hiking', 'nature-trips']	\N
1947	\N	\N	Gatlinburg	35.68449	-83.53498	37738	Newfound Gap Road Drive	47314.596	4.5	3	point to point	['road-biking', 'scenic-driving']	\N
1948	\N	\N	Gatlinburg	35.65775	-83.58068	37738	Elkmont Nature Trail	1287.472	4	1	loop	['camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1949	\N	\N	Gatlinburg	35.65201	-83.58122	37738	Jakes Creek via Miry Ridge Trail and Appalachian Trail Loop	40555.368	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
1950	\N	\N	Hartford	35.75117	-83.10971	37821	Mt. Sterling via Baxter Creek Trail	18829.278	4.5	5	out and back	['backpacking', 'hiking', 'nature-trips', 'trail-running']	\N
1951	\N	\N	Cosby	35.75396	-83.20703	37722	Lower Mount Cammerer Trail	23335.43	4.5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1952	\N	\N	Townsend	35.59758	-83.84334	37882	Elijah Oliver Place Trail	1931.208	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
1953	\N	\N	Townsend	35.60501	-83.7701	37882	Rocky Top via Anthony Creek Trail	18829.278	4.5	5	out and back	['camping', 'hiking', 'nature-trips']	\N
1954	\N	\N	Gatlinburg	35.61057	-83.42605	37738	Newfound Gap to Indian Gap	5310.822	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1955	\N	\N	Gatlinburg	35.70772	-83.38335	37738	Grapeyard Ridge Trail	23174.496	4	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'horseback-riding']	\N
1956	\N	\N	Gatlinburg	35.66318	-83.52673	37738	Huskey Gap Trail	6115.492	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
1957	\N	\N	Gatlinburg	35.69686	-83.3878	37738	Brushy Mountain Trail	18024.608	4	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1958	\N	\N	Gatlinburg	35.65007	-83.5128	37738	Courthouse Rock Trail	3540.548	4.5	3	out and back	['hiking', 'nature-trips']	\N
1959	\N	\N	Gatlinburg	35.65234	-83.58154	37738	Jakes Creek and Lynn Camp Prong	27036.912	4	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding', 'fly-fishing']	\N
1960	\N	\N	Gatlinburg	35.66337	-83.52636	37738	Riverview Quiet Walkway	1448.406	4	1	loop	['hiking', 'walking']	\N
1961	\N	\N	Gatlinburg	35.67171	-83.58043	37738	Sugarland Mountain Trail	18829.278	4.5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
1962	\N	\N	Tallassee	35.60914	-83.93525	37878	Little Bottoms Trail	11104.446	4	3	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'fly-fishing']	\N
1963	\N	\N	Townsend	35.46048	-83.81107	28771	Appalachian Trail: Fontana Lake to Mount Squires	24622.902	4.5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1964	\N	\N	Gatlinburg	35.67542	-83.64643	37738	Curry Mountain Trail	10299.776	4	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1965	\N	\N	Tallassee	35.54295	-83.89432	37882	Gregory's Little Bald Trail	16093.4	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1966	\N	\N	Cosby	35.7559	-83.2078	37722	Cosby Self-Guided Nature Trail	1770.274	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1967	\N	\N	Gatlinburg	35.68757	-83.53477	37738	Old Sugarlands, Twin Creeks, Gatlinburg Loop Trail	16093.4	3.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1968	\N	\N	Gatlinburg	35.67822	-83.64762	37738	Metcalf Bottoms Trail to Laurel Falls	19794.882	4	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
1969	\N	\N	Cosby	35.75722	-83.20895	37722	Gabes Mountaun, Maddron Bald and Snake Den Ridge Loop	27358.78	3.5	7	loop	['backpacking', 'bike-touring', 'birding', 'camping', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1970	\N	\N	Townsend	35.60662	-83.74499	37882	Finley Cane Trail	8368.568	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1971	\N	\N	Sevierville	35.70774	-83.37997	37738	Old Settlers Trail	26071.308	4	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1972	\N	\N	Townsend	35.60661	-83.74485	37882	Lead Cove Trail	5310.822	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1973	\N	\N	Townsend	35.60663	-83.74499	37882	Lead Cove and Finley Cane Trail	10782.578	4	3	loop	['birding', 'hiking', 'horseback-riding']	\N
1974	\N	\N	Townsend	35.617490000000004	-83.66965	37882	Thunderhead Prong Quiet Walkway	2092.142	3.5	1	out and back	['hiking', 'walking']	\N
1975	\N	\N	Townsend	35.62771	-83.72638	37882	Whiteoak Sinks	7081.096	4.5	1	out and back	['hiking', 'trail-running']	\N
1976	\N	\N	Cosby	35.75595	-83.208	37722	Mount Cammerer Loop - Low Gap and Lower Cammerer	26071.308	4.5	5	loop	['birding', 'camping', 'hiking', 'nature-trips', 'horseback-riding']	\N
1977	\N	\N	Gatlinburg	35.65359	-83.58002	37738	Little River and Goshen Prong Trail	21726.09	4	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
1978	\N	\N	Cosby	35.75363	-83.20682	37722	Snake Den Ridge Low Gap Trail	20438.618	4	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
1979	\N	\N	Tallassee	35.60777	-83.93649	37878	Rabbit and Abrams Creeks Loop Trail	24461.968	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1980	\N	\N	Gatlinburg	35.61105	-83.42533	28713	Appalachian Trail: Newfound Gap to Fontana Lake	61637.722	5	7	point to point	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
1981	\N	\N	Gatlinburg	35.65192	-83.58124	37738	Meigs Mountain Trail	14805.928	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1982	\N	\N	Townsend	35.62813	-83.72532	37882	Bote Mountain Trail	21404.222	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1983	\N	\N	Gatlinburg	35.61071	-83.42556	28713	Appalachian Trail: Newfound Gap to Davenport Gap	48923.936	5	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'trail-running', 'horseback-riding']	\N
1984	\N	\N	Townsend	35.60674	-83.79496	37882	Cades Cove Loop Hike	16576.202	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1985	\N	\N	Townsend	35.64103	-83.69049	37882	Tremont Logging History Auto Tour	9816.974	4	1	out and back	['fishing', 'hiking', 'mountain-biking', 'road-biking', 'scenic-driving', 'trail-running', 'walking', 'horseback-riding', 'fly-fishing']	\N
1986	\N	\N	Tallassee	35.61058	-83.93256	37878	Abrams Falls Via Abrams Creek Campground	15610.598	4.5	3	out and back	['camping', 'hiking', 'trail-running']	\N
1987	\N	\N	Cosby	35.75576	-83.20782	37722	Mount Sterling Loop (via Low Gap, Big Creek, Swallow Fork)	45866.19	4.5	5	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
1988	\N	\N	Townsend	35.64565	-83.80544	37882	Ace Gap Trail	16415.268	4	3	out and back	['hiking']	\N
1989	\N	\N	Gatlinburg	35.68795	-83.53817	37738	Cove Mountain Laurel Falls Loop Trail	25266.638	3.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
1990	\N	\N	Cosby	35.78288	-83.17382	37722	Mount Cammerer via Groundhog Ridge Manway	24944.77	4	5	out and back	['backpacking', 'camping', 'hiking']	\N
1991	\N	\N	Tallassee	35.60931	-83.93526	37878	Abrams Creek and Cooper Road Loop Trail	18024.608	4.5	3	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1992	\N	\N	Maryville	35.63748	-83.93763	37803	Look Rock Tower	965.604	4.5	1	out and back	['nature-trips', 'walking']	\N
1993	\N	\N	Townsend	35.60628	-83.77778	37882	Abrams Creek Trail	14966.862	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1994	\N	\N	Cosby	35.75762	-83.20969	37722	Gabes Mountain Trail to Greenbrier Creek	13518.456	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
1995	\N	\N	Townsend	35.62834	-83.72625	37882	Laurel Creek Loop Trail	16254.334	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
1996	\N	\N	Gatlinburg	35.76937	-83.26669	37722	Maddron Bald	22208.892	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
1997	\N	\N	Cosby	35.75377	-83.20691	37722	Snake Den Ridge Trail	17059.004	4	5	out and back	['birding', 'hiking', 'nature-trips', 'horseback-riding']	\N
1998	\N	\N	Cosby	35.56287	-83.31063	28719	Bradley Fork Trail	13357.522	4	1	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
1999	\N	\N	Townsend	35.6179	-83.66969	37882	Middle Prong, Lynn Camp, Miry Ridge-Panther Creek Loop	23013.562	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2000	\N	\N	Townsend	35.6057	-83.77778	37882	Russell Field Trail	18507.41	4.5	3	loop	['backpacking', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
2001	\N	\N	Gatlinburg	35.7705	-83.11108	28785	Appalachian Trail and Chestnut Branch Trail Loop	8529.502	4	3	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2002	\N	\N	Gatlinburg	35.68574	-83.53732	37738	Cataract Falls ADA Route	1126.538	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2003	\N	\N	Gatlinburg	35.69408	-83.64598	37862	Walker Sisters Home via Little Greenbrier Trail	7885.766	4.5	1	out and back	['hiking', 'nature-trips', 'trail-running']	\N
2004	\N	\N	Tallassee	35.60784	-83.9362	37878	Pine Mountain Loop Trail	12874.72	3.5	3	loop	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2005	\N	\N	Townsend	35.59137	-83.85285	37882	Abram Falls, Hatcher Mountain, Copper Road and Wet Bottom Loop	20760.486	4	3	loop	['backpacking', 'hiking', 'trail-running']	\N
2006	\N	\N	Tallassee	35.61055	-83.93256	37878	Abrams Falls Via Cooper Road and Little Bottoms Trails	15932.466	4.5	3	out and back	['birding', 'camping', 'fishing', 'hiking', 'fly-fishing']	\N
2007	\N	\N	Townsend	35.60039	-83.77414	37882	Pine Oak Nature Trail	1287.472	3.5	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2008	\N	\N	Gatlinburg	35.69412	-83.646	37862	Little Mountain via Little Greenbrier Trail	6276.426	4.5	3	out and back	['hiking']	\N
2009	\N	\N	Gatlinburg	35.66048	-83.70866	37882	Chestnut Top Trail	13679.39	4	5	out and back	['backpacking', 'hiking', 'nature-trips']	\N
2010	\N	\N	Townsend	35.60664	-83.79467	37882	John Oliver Cabin Access	804.67	4.5	1	loop	['hiking', 'walking']	\N
2011	\N	\N	Townsend	35.64143	-83.68957	37882	Lumber Ridge to Middle Prong Loop	32186.8	4	3	loop	['backpacking', 'camping']	\N
2012	\N	\N	Townsend	35.61744	-83.66945	37882	Lynn Camp Prong Trail	29611.856	4	3	out and back	['camping', 'hiking', 'horseback-riding']	\N
2013	\N	\N	Townsend	35.59124	-83.85210000000001	37878	Cooper Road and Rabbit Creek Loop Trail	25105.704	3.5	5	loop	['backpacking', 'camping', 'fishing', 'hiking']	\N
2014	\N	\N	Townsend	35.60484	-83.77035	37882	Crib Gap Trail	6276.426	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
2015	\N	\N	Townsend	35.64465	-83.80521	37882	Rich Mountain to Indian Grave Gap	6759.228	4	3	point to point	['hiking', 'trail-running']	\N
2016	\N	\N	Tallassee	35.64565	-83.90975	37878	Gold Mine & Cane Creek Trails	11587.248	3	3	out and back	['camping', 'hiking', 'trail-running', 'walking', 'horseback-riding']	\N
2017	\N	\N	Gatlinburg	35.61114	-83.42486	28713	Newfound Gap to Grassy Patch	22047.958	5	5	point to point	['backpacking', 'hiking', 'trail-running']	\N
2018	\N	\N	Townsend	35.59133	-83.85286	37882	Rabbit Creek Trail to Abrams Falls Trail Loop	17863.674	4.5	5	loop	['backpacking', 'hiking', 'nature-trips']	\N
2019	\N	\N	Cosby	35.75274	-83.20308	37722	Mount Crammerer to Mount Sterling Rd	15610.598	5	3	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'fly-fishing']	\N
2020	\N	\N	Townsend	35.60407	-83.76865	37882	Crib Gap-Turkeypen Ridge-Schoolhouse Gap	9656.04	4.5	3	point to point	['hiking', 'trail-running']	\N
2021	\N	\N	Gatlinburg	35.68823	-83.5381	37738	Cove Mountain Trail to Little Brier Gap	21404.222	3.5	3	point to point	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2022	\N	\N	Gatlinburg	35.69245	-83.64608	37738	Roundtop Trail	23657.298	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
2023	\N	\N	Hartford	35.70024	-83.09743	28785	Balsam Mountain Loop	40394.434	4.5	5	loop	['backpacking', 'birding', 'camping', 'nature-trips', 'trail-running', 'walking']	\N
2024	\N	\N	Gatlinburg	35.65192	-83.51326	37738	Quilliam Cave via Courthouse Rock Trail	4345.218	4.5	3	out and back	['hiking']	\N
2025	\N	\N	Townsend	35.59784	-83.84342	37882	Wet Bottom Trail	2735.878	3.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
2026	\N	\N	Townsend	35.62733	-83.72649	37882	Schoolhouse Gap Trail, Turkeypen Ridge Trail, and Finley Cane Trail Loop	14805.928	3.5	3	loop	['birding', 'hiking']	\N
2027	\N	\N	Townsend	35.5625	-83.84611	37882	Doe Knob to Spence Field via Appalachian Trail	50211.408	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
2028	\N	\N	Cosby	35.75198	-83.20504	37722	Low Gap and Gabes Mountain Trail Loop	32347.734	4	5	loop	['backpacking', 'birding', 'camping', 'nature-trips']	\N
2029	\N	\N	Cosby	35.75322	-83.20661	37722	Sutton Ridge Overlook Trail	4828.02	4.5	3	out and back	['birding', 'camping', 'hiking', 'trail-running']	\N
2030	\N	\N	Townsend	35.60413	-83.76884	37882	Cades Cove to Ledbetter Ridge	7885.766	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2031	\N	\N	Tallassee	35.60787	-83.93623	37878	Abrams Creek to Cades Cove Loop	25105.704	4.5	3	loop	['backpacking', 'hiking']	\N
2032	\N	\N	Cosby	35.75324	-83.20788	37722	Tricorner Knob and Mount Guyot via Snake Den Ridge Trail	31864.932	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2033	\N	\N	Townsend	35.61869	-83.67008	37882	Lynn Camp Prong and Appalachian Trail Loop	32669.602	0	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
2034	\N	\N	Townsend	35.60495	-83.77005	37882	Anthony Creek Trail, Russell Field Trail, Appalachian Trail, and Bote Mountain Trail Loop	23496.364	4.5	5	loop	['hiking']	\N
2035	\N	\N	Gatlinburg	35.61101	-83.42492	28713	Newfound Gap Overlook to Campsite 49 via Appalachian Trail	28968.12	5	3	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
2036	\N	\N	Gatlinburg	35.61123	-83.42527	37738	Newfound Gap Loop via Goshen Prong to Sugarland Mountain	46509.926	5	5	loop	['backpacking', 'hiking']	\N
2037	\N	\N	Tallassee	35.64563	-83.80542	37882	Beard Cane Trail	29772.79	3.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2038	\N	\N	Cosby	35.77038	-83.11131	28785	Appalachian Trail: Mount Cammerer to Clingmans Dome	56648.768	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2039	\N	\N	Cosby	35.7559	-83.2076	37722	Snake Den Ridge Trail to Low Den Gap Trail Loop	42003.774	0	5	loop	['backpacking', 'camping']	\N
2040	\N	\N	Townsend	35.61756	-83.66961	37882	Tremont Thunderhead Prong Trail	22852.628	3.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2041	\N	\N	Gatlinburg	35.70277	-83.35788	37738	Cat Stairs	11265.38	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2042	\N	\N	Gatlinburg	35.76926	-83.26684	37722	Mount Guyot via Maddron Bald	36210.15	5	5	out and back	['backpacking', 'hiking', 'nature-trips', 'trail-running']	\N
2043	\N	\N	Gatlinburg	35.62955	-83.45154	37738	Peregrine Peak and Rainbow Falls via Alum Cave Trail	27519.714	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2044	\N	\N	Gatlinburg	35.69409	-83.64606	37862	Laurel Falls via Little Greenbrier Trail	20116.75	4	5	out and back	['hiking']	\N
2045	\N	\N	Gatlinburg	35.67578	-83.48589	37738	Trillium Gap, Grotto Falls, Brushy Mountain,  Bull Head Trail Loop	26554.11	4	5	loop	['birding', 'hiking', 'nature-trips']	\N
2046	\N	\N	Townsend	35.60569	-83.77627	37882	Anthony Creek, Bote Mountain, Eagle Creek, and Lakeshore to Hazel Creek	32025.866	4.5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2047	\N	\N	Tallassee	35.54287	-83.8945	37882	Hannah Mountain Trail	29129.054	3	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2048	\N	\N	Gatlinburg	35.65366	-83.58021	37738	Elkmont to Fontana Lake	65178.27	5	5	point to point	['backpacking', 'camping', 'hiking', 'trail-running']	\N
2049	\N	\N	Townsend	35.60296	-83.76684	37882	Anthony Creek and Middle Prong Trail	30416.526	5	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
2050	\N	\N	Gatlinburg	35.65366	-83.58021	37738	Mount Collins via Little River Trail and Sugarland Mountain Trail	39267.896	4	5	out and back	['backpacking', 'hiking']	\N
2051	\N	\N	Gatlinburg	35.65245	-83.58135	37738	Cucumber Gap and Huskey Branch Falls via Jake's Creek Trail	9816.974	5	3	out and back	['hiking', 'trail-running', 'walking']	\N
2052	\N	\N	Cosby	35.75632	-83.20835	37722	Mt. Cammerer Backpacking Loop	52625.418	4	5	loop	['backpacking', 'camping', 'hiking', 'trail-running']	\N
2053	\N	\N	Townsend	35.60674	-83.74514	37882	Turkeypen Ridge Trail to White Oak Sinks	15127.796	5	3	loop	['birding', 'hiking']	\N
2054	\N	\N	Tallassee	35.64568	-83.90975	37878	Gold Mine Trail	3218.68	3	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2055	\N	\N	Townsend	35.60412	-83.7688	37882	Anthony Creek, Bote Mountain and Crib Gap Loop	21404.222	4	3	loop	['backpacking', 'hiking']	\N
2056	\N	\N	Townsend	35.60654	-83.77723	37882	Crooked Arm Scott Mountain Trail	18990.212	2.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2057	\N	\N	Salt Flat	31.89666	-104.82815	79847	Guadalupe Peak Texas Highpoint Trail	13035.654	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2058	\N	\N	Big Bend National Park	29.2744	-103.28635	79834	Lost Mine Trail	6759.228	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2059	\N	\N	Big Bend National Park	29.26998	-103.30112	79834	South Rim Trail - Boot Springs Trail	17702.74	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2060	\N	\N	Terlingua	29.27021	-103.30106	79834	The Window Trail	8368.568	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2061	\N	\N	Terlingua	29.27022	-103.301	79834	Emory Peak Trail	13679.39	5	5	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
2062	\N	\N	Terlingua	29.16735	-103.6105	79852	Santa Elena Canyon Trail	2414.01	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'rails-trails']	\N
2063	\N	\N	Salt Flat	31.89668	-104.82815	79847	Devil's Hall Trail	5793.624	4.5	3	out and back	['camping', 'hiking', 'rock-climbing']	\N
2064	\N	\N	Big Bend National Park	29.41042	-103.20765	79834	Balanced Rock Trail	3057.746	4.5	1	out and back	['hiking']	\N
2065	\N	\N	Big Bend National Park	29.20065	-102.91936	79830	Boquillas Canyon Trail	1931.208	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2066	\N	\N	Salt Flat	31.97778	-104.75232	79847	McKittrick Canyon Trail	32508.668	4.5	3	out and back	['camping', 'hiking', 'walking']	\N
2067	\N	\N	Big Bend National Park	29.18655	-102.97276	79834	Hot Springs Canyon Trail	8851.37	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
2068	\N	\N	Big Bend National Park	29.2164	-103.36906	79834	Outer Mountain Loop	38785.094	4.5	5	loop	['backpacking', 'camping', 'hiking']	\N
2069	\N	\N	Big Bend National Park	29.17748	-102.99924	79834	Big Bend Hot Springs Trail	1770.274	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2070	\N	\N	Salt Flat	31.90662	-104.8016	79847	Smith Spring Trail	3862.416	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2071	\N	\N	Terlingua	29.27048	-103.30166	79834	Emory Peak Loop via Pinnacles & Laguna Meadow	17380.872	4.5	5	loop	['camping', 'hiking']	\N
2072	\N	\N	Big Bend National Park	29.27017	-103.301	79834	Window View Trail	482.802	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2073	\N	\N	Terlingua	29.27064	-103.30095	79834	Laguna Meadow Trail	12552.852	4.5	3	out and back	['birding', 'camping', 'hiking', 'walking']	\N
2074	\N	\N	Big Bend National Park	29.26699	-103.22779	79834	Pine Canyon Trail	6920.162	4	3	out and back	['hiking']	\N
2075	\N	\N	Big Bend National Park	29.25105	-103.02342	79830	Ernst Tinaja Trail	3057.746	4.5	1	out and back	['camping', 'hiking']	\N
2076	\N	\N	Big Bend National Park	29.27977	-103.36844	79834	Cattail Falls	9173.238	4.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
2077	\N	\N	Big Bend National Park	29.32203	-103.38324	79834	Ross Maxwell Scenic Drive	49728.606	4.5	1	point to point	['nature-trips', 'road-biking', 'scenic-driving', 'walking']	\N
2078	\N	\N	Salt Flat	31.89671	-104.8286	79847	Hunter Peak	12552.852	5	5	loop	['backpacking', 'hiking']	\N
2079	\N	\N	Big Bend National Park	29.27032	-103.30178	79834	Basin Loop Trail	3218.68	4	1	loop	['hiking']	\N
2080	\N	\N	Big Bend National Park	29.23407	-103.40705	79834	Lower Burro Mesa Pouroff Trail	1609.34	4	1	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'walking']	\N
2081	\N	\N	Salt Flat	31.89653	-104.82816	79847	El Capitan Trail	15449.664	4.5	3	out and back	['camping', 'hiking']	\N
2082	\N	\N	Big Bend National Park	29.19944	-102.92812	79830	Marufo Vega Trail	21726.09	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2083	\N	\N	Big Bend National Park	29.17567	-103.15716	79834	Black Gap OHV Trail	26232.242	4.5	3	out and back	['birding', 'off-road-driving', 'horseback-riding']	\N
2084	\N	\N	Big Bend National Park	29.14949	-103.48735	79834	Tuff Canyon Trail	1609.34	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2085	\N	\N	Terlingua	29.20576	-103.42343	79834	Chimneys Trail	7402.964	4	3	out and back	['backpacking', 'camping', 'hiking', 'trail-running', 'walking']	\N
2086	\N	\N	Salt Flat	31.97719	-104.75202	79847	Pratt Lodge via McKittrick Canyon Trail	7724.832	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2087	\N	\N	Big Bend National Park	29.33452	-103.25668	79834	Basin Drive	19955.816	4.5	3	out and back	['camping', 'rock-climbing', 'scenic-driving']	\N
2088	\N	\N	Terlingua	29.27019	-103.30096	79834	Pinnacles Trail	12874.72	4.5	5	out and back	['hiking', 'trail-running']	\N
2089	\N	\N	Big Bend National Park	29.17926	-102.9544	79834	Rio Grande Village Nature Trail	1609.34	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2090	\N	\N	Big Bend National Park	29.21641	-103.36925	79834	Blue Creek, Pinnacles, Juniper Canyon and Dodson Trail 	50855.144	4.5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2091	\N	\N	Salt Flat	31.89653	-104.82799	79847	Devil's Hall Loop Trail	5954.558	4.5	3	loop	['hiking', 'nature-trips']	\N
2092	\N	\N	Big Bend National Park	29.28289	-103.35014	79834	Oak Spring Trail	6920.162	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2093	\N	\N	Salt Flat	31.89674	-104.8286	79847	Bush Mountain	20116.75	4.5	7	out and back	['backpacking', 'camping', 'hiking']	\N
2094	\N	\N	Big Bend National Park	29.48783	-103.09819	79830	Old Ore OHV Road	42647.51	4.5	3	point to point	['off-road-driving', 'horseback-riding']	\N
2095	\N	\N	Big Bend National Park	29.62241	-103.14261	79830	Devil's Den Trail	7242.03	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2096	\N	\N	Terlingua	29.2586	-103.76744	79852	Mesa De Anguila Trail	9173.238	4	5	loop	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
2097	\N	\N	Salt Flat	31.8963	-104.82781	79847	Pine Springs to McKittrick Canyon	28485.318	5	3	point to point	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
2098	\N	\N	Terlingua	29.16633	-103.43552	79834	Mule Ears - Smoky Creek Trail	11265.38	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
2099	\N	\N	Terlingua	29.2793	-103.36866	79834	Sam Nail Ranch Trail	482.802	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2100	\N	\N	Salt Flat	31.89658	-104.82809	79847	The Tejas Trail	18024.608	4	7	point to point	['backpacking', 'camping', 'hiking', 'trail-running']	\N
2101	\N	\N	Big Bend National Park	29.29385	-103.49492	79834	Old Maverick OHV Route	20277.684	4	1	point to point	['mountain-biking', 'off-road-driving']	\N
2102	\N	\N	Big Bend National Park	29.21642	-103.36926	79834	Blue Creek Trail	17702.74	4.5	7	out and back	['birding', 'hiking', 'nature-trips']	\N
2103	\N	\N	Salt Flat	31.89363	-104.82258	79847	Tejas and Bear Canyon Loop to the Bowl Trail	15771.532	4.5	7	loop	['camping', 'hiking']	\N
2104	\N	\N	Big Bend National Park	29.22948	-103.37776	79834	Upper Burro Mesa Pouroff	5954.558	4.5	1	out and back	['hiking', 'trail-running']	\N
2105	\N	\N	Big Bend National Park	29.32833	-103.20585	79834	Rio Grande Village Drive	32669.602	4	1	point to point	['birding', 'nature-trips', 'scenic-driving']	\N
2106	\N	\N	Salt Flat	31.97782	-104.75233	79847	Permian Reef Trail	14805.928	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2107	\N	\N	Salt Flat	31.89409	-104.82201	79847	The Pinery	1448.406	3.5	1	out and back	['nature-trips', 'walking']	\N
2108	\N	\N	Big Bend National Park	29.19042	-103.01584	79834	The River Road OHV Trail	81593.538	4	3	point to point	['birding', 'off-road-driving', 'horseback-riding']	\N
2109	\N	\N	Big Bend National Park	29.41904	-103.13755	79834	Fossil Bone Exhibit Trail	321.868	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2110	\N	\N	Big Bend National Park	29.27066	-103.15091	79834	Glenn Spring OHV Trail	40394.434	4	3	point to point	['birding', 'off-road-driving']	\N
2111	\N	\N	Terlingua	29.15411	-103.57976	79852	Dorgan Sublett Trail	1287.472	3.5	1	out and back	['birding', 'nature-trips', 'walking']	\N
2112	\N	\N	Terlingua	29.16661	-103.4351	79834	Mule Ear Spring	6276.426	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2113	\N	\N	Big Bend National Park	29.61909	-103.14198	79830	Dog Canyon Trail	6920.162	4	1	out and back	['hiking', 'walking']	\N
2114	\N	\N	Big Bend National Park	29.22393	-103.24117	79834	Juniper Canyon Trail	20116.75	4	5	out and back	['backpacking', 'birding', 'fishing', 'hiking', 'nature-trips']	\N
2115	\N	\N	Terlingua	29.32949	-103.53488	79852	The River Road: Lajitas to Presidio	106860.176	4.5	1	point to point	['birding', 'nature-trips', 'scenic-driving']	\N
2116	\N	\N	Big Bend National Park	29.21638	-103.36928	79834	Dodson Trail	17702.74	4	5	point to point	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2117	\N	\N	Big Bend National Park	28.98851	-103.18435	79834	Mariscal Canyon Rim Trail	19312.08	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2118	\N	\N	Terlingua	29.33277	-103.50682	79852	Indian Head Trail	3057.746	4.5	1	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2119	\N	\N	Salt Flat	31.89664	-104.82824	79847	Bush Mountain Trail to Blue Ridge Loop	24461.968	4	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2120	\N	\N	Big Bend National Park	29.21659	-103.3694	79834	Homer Wilson Trail	1126.538	4	1	out and back	['hiking', 'walking']	\N
2121	\N	\N	Big Bend National Park	29.23082	-103.41749	79834	Burro Spring Trail	3862.416	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2122	\N	\N	Big Bend National Park	29.27465	-103.30115	79834	Emory Peak - Northeast Rim - South Rim Loop	27519.714	5	7	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
2123	\N	\N	Salt Flat	31.74306	-105.09144	79847	Guadalupe Pass: Salt Flat to McKittrick Canyon	50855.144	4	3	point to point	['camping', 'nature-trips', 'scenic-driving', 'walking']	\N
2124	\N	\N	Big Bend National Park	29.24867	-103.37223	79834	Ward Spring Trail	4506.152	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2125	\N	\N	Salt Flat	31.89618	-104.82768	79847	The Bowl and Hunter Peak via Frijole and Bear Canyon Trails	13518.456	4.5	5	loop	['birding', 'hiking', 'nature-trips']	\N
2126	\N	\N	Big Bend National Park	29.3585	-103.2919	79834	Paint Gap Road	12230.984	3.5	1	out and back	['birding', 'mountain-biking', 'nature-trips', 'off-road-driving']	\N
2127	\N	\N	Big Bend National Park	29.48388	-103.13199	79834	Dagger Flat Auto OHV Trail	23657.298	3.5	1	out and back	['birding', 'mountain-biking', 'off-road-driving', 'scenic-driving', 'walking']	\N
2128	\N	\N	Salt Flat	31.90778	-104.8014	79847	Manzanita Spring Trail	804.67	3	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2129	\N	\N	Big Bend National Park	29.27233	-103.13587	79834	Chihuahuan Desert Nature Trail	804.67	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2130	\N	\N	Big Bend National Park	29.19937	-102.92809	79830	Ore Terminal Trail	13679.39	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2131	\N	\N	Salt Flat	31.8954	-104.82557	79847	Pine Springs Campground	321.868	3.5	1	loop	['camping', 'walking']	\N
2132	\N	\N	Salt Flat	31.89629	-104.82772	79847	Tejas Trail, Juniper Trail to the Bowl and Hunter Peak	20116.75	5	5	loop	['birding', 'hiking', 'nature-trips']	\N
2133	\N	\N	Big Bend National Park	29.3282	-103.20606	79834	Panther Path	160.934	3	1	loop	['hiking', 'walking']	\N
2134	\N	\N	Big Bend National Park	29.14732	-103.49104	79834	River Road OHV Trail	125850.388	3.5	3	point to point	['birding', 'camping', 'nature-trips', 'off-road-driving']	\N
2135	\N	\N	Big Bend National Park	29.20147	-102.97495	79834	Rio Grande Overlook	321.868	2.5	1	out and back	['hiking', 'walking']	\N
2136	\N	\N	Salt Flat	31.97727	-104.75221	79847	McKittrock Canyon to Pine Springs	35244.546	5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2137	\N	\N	Salt Flat	31.99556	-104.8324	79847	Marcus Trail	21726.09	4	5	loop	['birding', 'hiking', 'nature-trips']	\N
2138	\N	\N	Salt Flat	31.99349	-104.83409	79847	McKittrick Ridge	22691.694	4	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2139	\N	\N	Big Bend National Park	29.5622	-102.95257	79830	Black Gap Wildlife Management Area Trail	2735.878	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2140	\N	\N	Big Bend National Park	29.12686	-103.207	79834	Elephant Tusk Trail	29611.856	4	5	out and back	['hiking']	\N
2141	\N	\N	Big Bend National Park	29.19795	-103.60364	79852	Terlingua Abaja Trail	1287.472	3	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2142	\N	\N	Big Bend National Park	29.17311	-103.15504	79834	Glenn Springs Trail	804.67	3	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2143	\N	\N	Big Bend National Park	29.09906	-103.07076	79834	Rooney's Place trail	1126.538	3	1	out and back	['hiking', 'walking']	\N
2144	\N	\N	Redford	29.33275	-104.04834	79846	Rancherias Canyon	17702.74	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2145	\N	\N	Big Bend National Park	29.66011	-103.1735	79830	Persimmon Gap Draw	2896.812	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2146	\N	\N	Big Bend National Park	29.04524	-103.10654	79834	Cross Canyon Trail	21404.222	0	5	out and back	['backpacking', 'hiking', 'nature-trips']	\N
2147	\N	\N	Salt Flat	31.89671	-104.82848	79847	Tejas Trail to Mckittrick Canyon	28163.45	5	5	point to point	['backpacking', 'camping', 'hiking']	\N
2148	\N	\N	Big Bend National Park	29.19918	-102.92793	79830	Strawhouse Trail	11265.38	0	1	out and back	['hiking', 'nature-trips']	\N
2149	\N	\N	Big Bend National Park	29.04482	-103.27968	79834	Dominguez Spring Trail	21726.09	0	3	out and back	['hiking', 'nature-trips', 'walking']	\N
2150	\N	\N	Big Bend National Park	29.31001	-103.16408	79834	Estufa Canyon to Banta Shut-In	23657.298	0	5	out and back	['hiking']	\N
2151	\N	\N	Springdale	37.25928	-112.95166	84767	Angels Landing Trail	6598.294	5	5	out and back	['hiking', 'nature-trips', 'trail-running']	\N
2152	\N	\N	Moab	38.73568	-109.5205	84532	Delicate Arch Trail	4988.954	5	3	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'walking']	\N
2153	\N	\N	Springdale	37.28524	-112.94769	84767	The Zion Narrows Riverside Walk	2896.812	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking', 'canoeing']	\N
2154	\N	\N	Bryce	37.62328	-112.16706	84764	Navajo Loop and Queen's Garden Trail	4184.284	5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2155	\N	\N	Hurricane	37.21324	-112.94058	84737	Zion Canyon Overlook Trail	1609.34	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2156	\N	\N	Thompson	38.78271	-109.59429	84532	Devils Garden Loop Trail with 7 Arches	12070.05	5	5	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running']	\N
2157	\N	\N	Bryce	37.64927	-112.14717	84764	Fairyland Loop Trail	11909.116	5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2158	\N	\N	Springdale	37.2009	-112.9858	84737	The Watchman Trail	4988.954	4.5	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2159	\N	\N	Moab	38.68831	-109.53835	84532	Double Arch Trail	804.67	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2160	\N	\N	Moab	38.38925	-109.86797	84532	Mesa Arch Trail	965.604	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2161	\N	\N	Bryce	37.60483	-112.1575	84764	Peekaboo Loop Trail	8368.568	5	3	loop	['birding', 'hiking', 'nature-trips', 'horseback-riding']	\N
2162	\N	\N	Virgin	37.2847	-113.09581	84779	The Subway Trail	11265.38	5	5	out and back	['hiking', 'nature-trips', 'rock-climbing']	\N
2163	\N	\N	Hurricane	37.27096	-112.93868	84767	Weeping Rock Trail	482.802	4	1	out and back	['hiking', 'walking']	\N
2164	\N	\N	Springdale	37.28529	-112.94771	84767	Zion Narrows Trail to Imlay Temple and Big Spring	13840.324	5	5	out and back	['backpacking', 'camping', 'hiking', 'walking']	\N
2165	\N	\N	Springdale	37.25093	-112.95726	84737	Lower Emerald Pool Trail	2092.142	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2166	\N	\N	Springdale	37.25214	-112.95615	84737	Emerald Pools Trail	4667.086	4	1	out and back	['hiking', 'walking']	\N
2167	\N	\N	Bryce	37.62339	-112.16718	84764	Navajo Loop Trail	2253.076	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
2168	\N	\N	Mount Carmel Junction	37.27089	-112.93842	84767	Hidden Canyon Trail	4828.02	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
2169	\N	\N	Torrey	38.28875	-111.2276	84775	Hickman Bridge Trail	2735.878	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2170	\N	\N	Moab	38.74325	-109.56582	84532	Fiery Furnace and Surprise Arch	2735.878	5	3	loop	['hiking', 'nature-trips']	\N
2171	\N	\N	Moab	38.31073	-109.85654	84532	Grand View Point Trail	2896.812	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2172	\N	\N	Moab	38.78304	-109.5952	84532	Landscape Arch Trail	3057.746	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2173	\N	\N	Moab	38.68714	-109.53666	84532	Windows Loop and Turret Arch Trail	1931.208	4.5	1	loop	['hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
2174	\N	\N	Bryce	37.63051	-112.16459	84764	Wall Street and Queens Garden Loop Trail	4988.954	5	3	loop	['hiking', 'nature-trips', 'walking']	\N
2175	\N	\N	Bryce	37.62341	-112.16738	84764	Sunset Point to Sunrise Point	1770.274	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2176	\N	\N	Tropic	37.6658	-112.11033	84776	Mossy Cave Turret Arch and Little Windows Trail	1609.34	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2177	\N	\N	Torrey	38.26375	-111.21564	84775	Cassidy Arch Trail	4667.086	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'walking']	\N
2178	\N	\N	Bryce	37.63051	-112.16459	84764	Queen Victoria via Queen's Garden Loop	3379.614	4.5	1	out and back	['hiking', 'walking']	\N
2179	\N	\N	Moab	38.70169	-109.56593	84532	Balanced Rock Loop Trail	482.802	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2180	\N	\N	Springdale	37.21787	-112.97421	84737	Zion National Park Scenic Drive	20277.684	5	1	out and back	['road-biking', 'scenic-driving', 'walking']	\N
2181	\N	\N	Monticello	38.14161	-109.82733	84535	Chesler Park Loop Trail	18668.344	5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2182	\N	\N	Moab	38.62458	-109.5997	84532	Park Avenue Trail	2896.812	4.5	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2183	\N	\N	Moab	38.76475	-109.58348	84532	Sand Dune Arch Trail	482.802	4.5	1	out and back	['birding', 'hiking', 'walking']	\N
2184	\N	\N	Thompson	38.7356	-109.52062	84532	Wolfe Ranch and Petroglyph Trail	804.67	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2185	\N	\N	Cedar City	37.4618	-113.19952	84757	Middle Fork Taylor Creek Trail	7885.766	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2186	\N	\N	Moab	38.42317	-109.90864	84532	False Kiva Trail	3057.746	4.5	3	out and back	['hiking']	\N
2187	\N	\N	Thompson	38.78301	-109.59513	84532	Double O Arch Trail	6276.426	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2188	\N	\N	Springdale	37.20127	-112.98836	84767	Pa'rus Trail	5310.822	4	1	out and back	['birding', 'hiking', 'nature-trips', 'road-biking', 'trail-running', 'walking']	\N
2189	\N	\N	Bryce	37.63163	-112.1647	84764	Tower Bridge Trail	5471.756	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2190	\N	\N	Moab	38.61587	-109.61999	84532	Arches National Park Driving Tour	45544.322	4.5	1	point to point	['hiking', 'nature-trips', 'scenic-driving', 'walking']	\N
2191	\N	\N	Bryce	37.62413	-112.16745	84764	Wall Street and Queens Garden Loop to Peekaboo Loop (Figure Eight Trail)	10138.842	5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
2192	\N	\N	Springdale	37.2166	-112.96544	84737	Lower Pine Creek Waterfall Trail	1126.538	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
2193	\N	\N	Mount Carmel Junction	37.297	-112.90039	84767	East Mesa Trail to Observation Point	10782.578	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
2194	\N	\N	Springdale	37.2219	-112.91499	84767	Many Pools Trail	3701.482	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2195	\N	\N	Tropic	37.64924	-112.1472	84764	Bryce Canyon Rim Trail	17219.938	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2196	\N	\N	Moab	38.42634	-109.92605	84532	Upheaval Dome via Crater View Trail	2414.01	4	3	out and back	['hiking', 'nature-trips']	\N
2197	\N	\N	Moab	38.3935	-109.88194	84532	Aztec Butte Trail	2092.142	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2198	\N	\N	Torrey	38.27825	-111.1925	84775	Grand Wash Trail via Northeast Trailhead	7081.096	4.5	1	out and back	['hiking', 'walking']	\N
2199	\N	\N	Monticello	38.14161	-109.82746	84535	Druid Arch Trail	15288.73	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
2200	\N	\N	Springdale	37.25896	-112.95108	84767	West Rim Trail to Lava Point	45383.388	4.5	5	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2201	\N	\N	Springdale	37.2591	-112.95162	84767	Angels Landing, West Rim, Telephone Loop 	23496.364	5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2202	\N	\N	Moab	38.52332	-109.65446	84532	Shafer Trail	30899.328	4.5	3	point to point	['mountain-biking', 'off-road-driving', 'scenic-driving']	\N
2203	\N	\N	Moab	38.32272	-109.84955	84532	White Rim Overlook Trail	2896.812	4.5	1	out and back	['hiking', 'walking']	\N
2204	\N	\N	Thompson	38.78287	-109.59507	84532	Navajo Arch Trail	4667.086	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2205	\N	\N	Bryce	37.62326	-112.16703	84764	Navajo Loop Trail to Peekaboo Loop	7081.096	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing']	\N
2206	\N	\N	Moab	38.73408	-109.50124	84532	Delicate Arch Viewpoint Trail	1126.538	3.5	1	out and back	['hiking', 'walking']	\N
2207	\N	\N	Springdale	37.25184	-112.95631	84737	Zion Grotto Trail	1931.208	3.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2208	\N	\N	Bryce	37.47529	-112.23953	84741	Bristlecone Loop Trail	1609.34	4	1	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
2209	\N	\N	Moab	38.78292	-109.59513	84532	Pine Tree Arch Trail and Tunnel Arch Trail	1448.406	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2210	\N	\N	Torrey	38.315690000000004	-111.3039	84775	Chimney Rock Loop Trail	5310.822	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2211	\N	\N	Bryce	37.60419	-112.15679	84764	Bryce Point Trail	321.868	4.5	1	out and back	['birding', 'nature-trips', 'walking']	\N
2212	\N	\N	Moab	38.42641	-109.92618	84532	Syncline Loop	13840.324	4.5	7	loop	['camping', 'hiking', 'trail-running']	\N
2213	\N	\N	Moab	38.77321	-109.58601	84532	Broken Arch Trail	2735.878	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2214	\N	\N	Cedar City	37.45126	-113.19161	84757	Kolob Arch via La Verkin Creek Trail	24301.034	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2478	\N	\N	Madison	38.43715	-78.36715	22727	Staunton River Trail to Bear Church Rock	11909.116	4.5	3	out and back	['hiking']	\N
2215	\N	\N	Springdale	37.33963	-113.07545	84767	The Subway Trail via Wildcat Canyon Trail	14323.126	4.5	5	point to point	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
2216	\N	\N	Springdale	37.33999	-113.07569	84767	Northgate Peaks via Kolob Terrace	9656.04	4.5	3	loop	['birding', 'hiking', 'trail-running']	\N
2217	\N	\N	Torrey	38.28268	-111.24624	84775	Cohab Canyon Trail	4828.02	4.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
2218	\N	\N	Tropic	37.69256	-112.15205	84764	Bryce Canyon NP Scenic Drive	32991.47	4.5	1	point to point	['scenic-driving']	\N
2219	\N	\N	Torrey	38.28876	-111.22763	84775	Navajo Knobs Trail	14001.258	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2220	\N	\N	Springdale	37.25172	-112.95647	84737	Kayenta Trail	4988.954	4	3	out and back	['hiking', 'walking']	\N
2221	\N	\N	New Harmony	37.43548	-113.20183	84757	Timber Creek Overlook Trail	1770.274	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2222	\N	\N	Moab	38.78296	-109.59512	84532	Partition Arch Trail	4506.152	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2223	\N	\N	Moab	38.79232	-109.67525	84532	Tower Arch Trail	3862.416	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
2224	\N	\N	Moab	38.78294	-109.59516	84532	Dark Angel	7563.898	4.5	3	out and back	['hiking']	\N
2225	\N	\N	Thompson	38.78233	-109.59505	84532	Wall Arch and Pine Tree Arch	4506.152	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2226	\N	\N	Springdale	37.23714	-112.9606	84767	Court of the Patriarchs Viewpoint Trail	160.934	3.5	1	out and back	['birding', 'hiking', 'walking']	\N
2227	\N	\N	Moab	38.52471	-109.99278	84532	White Rim OHV Trail	159002.792	5	5	loop	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'off-road-driving']	\N
2228	\N	\N	Thompson	38.77197	-109.59095	84532	Skyline Arch Trail	804.67	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2229	\N	\N	Monticello	38.14348	-109.8036	84535	Squaw Flat and Big Spring Canyon Loop	10621.644	4.5	3	loop	['backpacking', 'hiking', 'nature-trips']	\N
2230	\N	\N	Torrey	38.30747	-111.2954	84775	Goosenecks & Sunset Point	4023.35	4.5	1	out and back	['walking']	\N
2231	\N	\N	Torrey	38.20955	-111.16924	84775	Capitol Gorge Trail	7242.03	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2232	\N	\N	Springdale	37.27067	-112.93975	84767	Echo Canyon Trail	9656.04	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2233	\N	\N	Torrey	38.31716	-111.30914	84775	Sulphur Creek Route	18507.41	4.5	1	out and back	['birding', 'nature-trips', 'walking']	\N
2234	\N	\N	Monticello	38.14184	-109.82692	84535	Druid Arch and Chesler Park Trail	8851.37	5	3	out and back	['birding', 'hiking', 'walking']	\N
2235	\N	\N	Thompson	38.78303	-109.59516	84532	Tunnel Arch Trail	1126.538	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2236	\N	\N	Bryce	37.61496	-112.17074	84764	Lower, Mid, and Upper Inspiration Points	965.604	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2237	\N	\N	Moab	38.177	-109.81459	84535	Slickrock Foot Trail	3862.416	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2238	\N	\N	Panguitch	37.60429	-112.15679	84764	Bryce Transverse using Park Shuttle	8851.37	4.5	3	point to point	['birding', 'hiking', 'nature-trips', 'walking']	\N
2239	\N	\N	Moab	38.35504	-109.8633	84532	Murphy Point Trail	5471.756	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2240	\N	\N	Springdale	37.21483	-112.9395	84737	Shelf Canyon Trail	1126.538	4.5	3	out and back	['hiking', 'walking']	\N
2241	\N	\N	Moab	38.32284	-109.84953	84532	Gooseberry Trail	6759.228	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2242	\N	\N	Monticello	38.10857	-109.87145	84535	Joint Trail	6437.36	4.5	3	out and back	['hiking', 'walking']	\N
2243	\N	\N	Moab	38.43366	-109.82697	84532	Lathrop Canyon Trail	17059.004	4.5	5	loop	['birding', 'camping', 'hiking', 'nature-trips', 'off-road-driving']	\N
2244	\N	\N	Moab	38.42663	-109.91392	84532	Whale Rock Trail	1287.472	4	1	out and back	['hiking']	\N
2245	\N	\N	Bryce	37.6162	-112.17043	84764	Inspiration to Queens Garden using Park Shuttle	4506.152	4.5	3	point to point	['birding', 'hiking', 'nature-trips', 'walking']	\N
2246	\N	\N	Torrey	38.28879	-111.22765	84775	Rim Overlook Trail	6598.294	4.5	5	out and back	['hiking']	\N
2247	\N	\N	Orderville	37.27093	-112.93847	84767	East Rim Trail from Big Bend	15771.532	4.5	3	point to point	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
2248	\N	\N	Bryce	37.47519	-112.24008	84741	Under the Rim Trail	36049.216	4.5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2249	\N	\N	Thompson	38.78296	-109.59516	84532	Private Arch Trail	8529.502	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2250	\N	\N	New Harmony	37.45442	-113.2272	84757	Kolob Canyon Scenic Drive	17059.004	4.5	1	out and back	['birding', 'nature-trips', 'scenic-driving']	\N
2251	\N	\N	Hanksville	38.47355	-110.20041	\N	Horseshoe Canyon Trail	11104.446	4.5	5	out and back	['birding', 'hiking']	\N
2252	\N	\N	Torrey	38.29077	-111.26142	84775	Capitol Reef Scenic Drive	12713.786	4.5	1	point to point	['scenic-driving']	\N
2253	\N	\N	Springdale	37.25103	-112.95756	84737	Sand Bench Trail	9012.304	4	3	loop	['hiking']	\N
2254	\N	\N	Moab	38.47124	-109.81126	84532	Shafer Trail	29450.922	4.5	3	point to point	['mountain-biking', 'off-road-driving', 'scenic-driving']	\N
2255	\N	\N	Bryce	37.47533	-112.24028	84741	Riggs Spring Loop Trail	13840.324	4	5	loop	['birding', 'camping', 'hiking', 'nature-trips']	\N
2256	\N	\N	Moab	38.37962	-109.88818	84532	Green River Great Overlook	321.868	4.5	1	out and back	['hiking', 'walking']	\N
2257	\N	\N	Torrey	38.27504	-111.08043	84775	Cathedral Valley OHV Loop Tour	103963.364	4.5	3	point to point	['off-road-driving']	\N
2258	\N	\N	Moab	38.74248	-109.56589	84532	Fiery Furnace Viewpoint	321.868	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2259	\N	\N	Hurricane	37.2679	-112.89715	84758	Cable Mountain Trail	12070.05	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2260	\N	\N	Torrey	38.20961	-111.16913	84775	Capitol Gorge to Tanks Trail	3862.416	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2262	\N	\N	Moab	38.4523	-109.82042	84532	Neck Spring Trail	8529.502	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2263	\N	\N	Hurricane	37.3407	-113.1133	84779	Hop Valley and Kolob Arch Trail	23013.562	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2264	\N	\N	Hurricane	37.2132	-112.94057	84737	Gifford Canyon Trail	5793.624	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2265	\N	\N	Torrey	38.20961	-111.16908	84775	Golden Throne Trail	5632.69	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2266	\N	\N	Springdale	37.3815	-113.02297	84737	West Rim Trail (Top-Down)	25427.572	5	5	point to point	['hiking', 'nature-trips']	\N
2267	\N	\N	Bryce	37.60337	-112.15603	84764	Peekaboo Loop, Wall Street, and Rim Trails	10460.71	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2268	\N	\N	Torrey	38.28511	-111.24632	84775	Fremont River Trail	3379.614	4.5	3	out and back	['birding', 'camping', 'hiking', 'mountain-biking', 'trail-running', 'walking']	\N
2269	\N	\N	Moab	38.17818	-109.81725	84535	Confluence Overlook Trail	18507.41	4.5	3	loop	['birding', 'camping', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
2270	\N	\N	Bryce	37.47436	-112.24033	84741	Yovimpa Point	482.802	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2271	\N	\N	Mount Carmel Junction	37.27093	-112.93845	84767	East Rim and East Mesa to Observation Point [CLOSED]	11426.314	5	5	out and back	['hiking', 'nature-trips', 'rock-climbing', 'walking']	\N
2272	\N	\N	Springdale	37.25205	-112.95615	84737	Lady Mountain Trail	4023.35	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2273	\N	\N	Orderville	37.26769	-112.89949	84755	Deertrap Mountain Trail	17059.004	4.5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'horseback-riding']	\N
2274	\N	\N	Moab	38.23333	-110.00344	\N	Maze Overlook Trail	12874.72	5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2275	\N	\N	Kanarraville	37.45118	-113.1917	84757	Zion Traverse: Lee Pass to East Rim Trailhead	79823.264	4.5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running']	\N
2276	\N	\N	New Harmony	37.45531	-113.18506	84757	South Fork Taylor Creek Trail	4184.284	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2277	\N	\N	Boulder	37.88176	-111.04678	84775	Upper Muley Twist	16576.202	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2278	\N	\N	Monticello	38.14294	-109.80365	84535	Lost Canyon	13196.588	4.5	3	loop	['camping', 'hiking']	\N
2279	\N	\N	Moab	38.45249	-109.82012	84532	Shafer Canyon Overlook	482.802	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2280	\N	\N	Springdale	37.23419	-112.87744	84758	East Rim Trail Southern Trailhead	15932.466	4.5	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
2281	\N	\N	Monticello	38.15722	-109.75154	84532	Cave Spring Trail	965.604	4	3	loop	['hiking']	\N
2282	\N	\N	Bryce	37.59635	-112.16967	84764	Paria View	482.802	4	1	out and back	['birding', 'nature-trips', 'walking']	\N
2283	\N	\N	Bryce	37.47538	-112.24024	84741	Rainbow Point, Yovimpa Point, and Bristlecone Loop	2092.142	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2284	\N	\N	Springdale	37.26769	-112.89949	84755	East Mesa to Observation Point via Stave Spring Trail	18024.608	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2285	\N	\N	Virgin	37.33993	-113.07571	84767	Wildcat Canyon Trail	18185.542	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2286	\N	\N	Bryce	37.58755	-112.21316	84764	Sheep Creek and Swamp Canyon Loop	6598.294	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2287	\N	\N	Monticello	38.14299	-109.80362	84535	Squawflat Trail to Lost Canyon Peekaboo Trail	15449.664	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2288	\N	\N	Thompson	38.76457	-109.58343	84532	Sand Dune Arch and Broken Arch	2414.01	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2289	\N	\N	Torrey	38.28258	-111.24635	84775	Cohab Canyon - Cassidy Arch Trail	12552.852	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2290	\N	\N	Mount Carmel Junction	37.29703	-112.90036	84767	East Mesa Trail to Blew by Peak	6759.228	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2291	\N	\N	Thompson	38.76484	-109.5832	84532	Sand Dune Arch to Broken Arch Loop	4828.02	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2292	\N	\N	Springdale	37.21335	-112.94037	84737	East Temple Saddle Trail	4988.954	4.5	5	loop	['birding', 'hiking', 'nature-trips']	\N
2293	\N	\N	Torrey	38.30695	-111.29576	84775	Panorama Point	160.934	4	1	out and back	['hiking', 'walking']	\N
2294	\N	\N	La Verkin	37.17666	-113.29926	84737	Zion Park Scenic Byway: Hurricane to Mt. Carmel Junction	76926.452	4.5	1	point to point	['scenic-driving', 'walking']	\N
2295	\N	\N	Springdale	37.22413	-112.90123	84767	Keyhole Canyon Loop	1287.472	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running', 'walking']	\N
2296	\N	\N	Springdale	37.21549	-112.93625	84737	Mountain of the Sun Trail	10299.776	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2297	\N	\N	Bryce	37.60334	-112.15602	84764	Hat Shop via Under the Rim Trail	6437.36	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
2298	\N	\N	Moab	38.35497	-109.8637	84532	Murphy Trail Loop	16254.334	4.5	5	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
2299	\N	\N	Torrey	38.28797	-111.22682	84775	Frying Pan Trail	13679.39	4.5	3	out and back	['hiking', 'nature-trips', 'rock-climbing', 'walking']	\N
2300	\N	\N	Hurricane	37.45116	-113.19181	84757	La Verkin Creek Trail	29933.724	4.5	3	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
2301	\N	\N	Monticello	38.1549	-109.75408	84532	Salt Creek and Horse Canyon OHV Trail	25749.44	4.5	3	out and back	['backpacking', 'camping', 'hiking', 'off-road-driving']	\N
2302	\N	\N	Torrey	38.25628	-111.23266	84775	Grand Wash Trail via Capitol Reef Scenic Dr.	11104.446	4.5	3	out and back	['camping', 'hiking', 'walking']	\N
2304	\N	\N	Torrey	38.18134	-111.09435	84775	Burro Wash Trail	12230.984	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2305	\N	\N	Springdale	37.22462	-112.90914	84767	Petroglyph Pools to Slot Canyon	1770.274	4	3	out and back	['hiking', 'nature-trips']	\N
2306	\N	\N	Hurricane	37.16131	-113.01939	84781	Chinle Trail	24944.77	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
2307	\N	\N	Monticello	38.14171	-109.82783	84535	Elephant Hill Trail	10299.776	4.5	1	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
2308	\N	\N	Springdale	37.22451	-112.90274	84767	Clear Creek Trail	3701.482	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'walking']	\N
2309	\N	\N	Springdale	37.33997	-113.07591	84767	South Guardian Angel via Kolob Terrace	18346.476	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2310	\N	\N	Torrey	38.29112	-111.26169	84775	Sulphur Creek Waterfall Hike	2896.812	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2311	\N	\N	Hanksville	38.49557	-110.20798	\N	The Great Gallery	17059.004	4.5	3	out and back	['hiking', 'walking']	\N
2312	\N	\N	Monticello	38.17028	-109.8065	84535	Pothole Point Trail	965.604	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2313	\N	\N	Moab	38.25988	-109.69595	84535	Needles Overlook Trail	321.868	4.5	1	loop	['hiking', 'walking']	\N
2314	\N	\N	Springdale	37.21336	-112.94053	84737	Progeny Peak Trail	4023.35	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2315	\N	\N	Hanksville	38.16557	-111.0904	84775	Cottonwood Wash	10299.776	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
2316	\N	\N	Moab	38.70354	-109.57171	84532	Eye of the Whale Trail	8207.634	4	3	out and back	['birding', 'hiking', 'nature-trips', 'off-road-driving', 'walking']	\N
2317	\N	\N	Hurricane	37.22732	-113.11489	84779	The Whole Guacamole	13196.588	4	3	loop	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
2318	\N	\N	Torrey	38.2862	-111.24915	84775	Fremont Gorge Trail	6920.162	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2319	\N	\N	Torrey	37.71794	-110.93012	\N	Halls Creek Canyon Trail	36692.952	5	3	loop	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2320	\N	\N	Springdale	37.21751	-112.92364	84737	Cockeye Falls Trail	7563.898	4.5	5	loop	['birding', 'hiking', 'nature-trips']	\N
2321	\N	\N	Bryce	37.5449	-112.24682	84764	Piracy Point	482.802	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2322	\N	\N	Springdale	37.23724	-112.96265	84737	West Bank of the Virgin River	9173.238	4	1	out and back	['hiking', 'trail-running']	\N
2323	\N	\N	Moab	38.34582	-109.861	84532	Buck Canyon Overlook	160.934	4	1	out and back	['birding', 'nature-trips', 'walking']	\N
2324	\N	\N	Monticello	38.14152	-109.82739	84535	Confluence Overlook via Elephant Hill Trail Loop	23657.298	4.5	3	loop	['birding', 'hiking', 'mountain-biking', 'nature-trips']	\N
2325	\N	\N	Monticello	38.16315	-109.7626	84532	Roadside Ruin Trail	482.802	3.5	1	loop	['hiking', 'walking']	\N
2326	\N	\N	Torrey	38.2826	-111.24634	84775	Cohab to South Fruita Overlook	4828.02	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2327	\N	\N	Springdale	37.16531	-113.06125	84767	Huber Wash Trail	7081.096	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2328	\N	\N	Springdale	37.27088	-112.93825	84767	East Mesa Trail	18829.278	3.5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips']	\N
2329	\N	\N	Hurricane	37.19992	-112.98622	84737	Archaeology Trail	482.802	3	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2330	\N	\N	Hanksville	38.2832	-111.12825	84775	Notom Road Scenic Byway 12	51659.814	4	1	point to point	['birding', 'road-biking', 'scenic-driving']	\N
2331	\N	\N	Monticello	38.1416	-109.82744	84535	Druid Arch to Chesler Park Loop	22047.958	5	3	loop	['backpacking', 'hiking']	\N
2332	\N	\N	Boulder	37.85365	-111.04292	84775	Strike Valley Overlook Trail	9977.908	4.5	1	out and back	['hiking', 'nature-trips', 'scenic-driving', 'trail-running']	\N
2333	\N	\N	Hurricane	37.34025	-113.11311	84779	Wildcat Canyon Connector Trail	15288.73	4.5	3	out and back	['hiking']	\N
2334	\N	\N	Kanab	37.22761	-112.87947	84755	Checkerboard Arch Trail	1770.274	3.5	3	out and back	['hiking']	\N
2335	\N	\N	Virgin	37.20326	-113.18622	84779	Kolob Reservoir Road	43291.246	4.5	1	point to point	['birding', 'fishing', 'nature-trips', 'scenic-driving', 'walking']	\N
2336	\N	\N	Thompson	38.7001	-109.70983	84532	Sevenmile Rim OHV Route	18829.278	4.5	3	loop	['off-road-driving']	\N
2337	\N	\N	Bryce	37.60437	-112.15692	84764	Under the Rim Trail: Bryce Point to Whiteman Bench	20921.42	4	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2338	\N	\N	Torrey	38.40274	-111.64285	84747	Utah Highway 24 Scenic Byway: Loa to Hanksville	102675.892	4.5	1	point to point	['nature-trips', 'scenic-driving']	\N
2339	\N	\N	La Sal	38.16871	-109.76011	84532	Colorado River Overlook OHV Trail	22691.694	4.5	1	out and back	['off-road-driving']	\N
2340	\N	\N	Monticello	37.98819	-109.51825	84535	Newspaper Rock Trail	0	4.5	1	out and back	['hiking', 'walking']	\N
2341	\N	\N	Blanding	37.94954	-109.70591	84535	Salt Creek Canyon Trail	20277.684	4.5	3	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
2342	\N	\N	Torrey	38.31567	-111.30387	84775	Lower Spring Canyon Trail	16254.334	5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2343	\N	\N	Moab	38.4231	-109.90878	84532	Alcove Spring Trail	16737.136	4	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
2344	\N	\N	Torrey	38.1162	-111.07144	84775	Sheets Gulch Trail	31382.13	4.5	5	out and back	['hiking']	\N
2345	\N	\N	Boulder	37.82625	-110.97833	84775	Lower Muley Twist Canyon and Grand Gulch Loop	23818.232	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2346	\N	\N	Thompson	38.59632	-109.69377	84532	Metal Masher OHV Trail	35888.282	4.5	5	loop	['off-road-driving']	\N
2347	\N	\N	Mount Carmel Junction	37.22466	-112.89469	84758	Separation Canyon Trail	4506.152	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2348	\N	\N	Moab	38.69669	-109.69856	84532	Willow Springs OHV Road	24140.1	4	3	out and back	['birding', 'mountain-biking', 'nature-trips', 'off-road-driving']	\N
2349	\N	\N	Rockville	37.17042	-113.08125	84763	Coalpits Wash	23335.43	4	5	out and back	['birding', 'camping', 'hiking']	\N
2350	\N	\N	Torrey	38.21679	-111.21353	84773	Old Wagon Loop Trail	5954.558	4	5	loop	['birding', 'hiking', 'nature-trips']	\N
2351	\N	\N	Moab	38.16085	-109.92863	84535	Spanish Bottom to Dollhouse Granaries	4506.152	5	5	out and back	['birding', 'camping', 'hiking', 'paddle-sports', 'sea-kayaking', 'canoeing']	\N
2352	\N	\N	Springdale	37.21327	-112.94055	84737	Hepworth and Roof Peaks Trail	10621.644	4.5	5	loop	['birding', 'hiking', 'nature-trips']	\N
2353	\N	\N	Moab	38.52363	-109.65765	84532	Shafer Trail and White Rim OHV Road	85295.02	4.5	1	out and back	['backpacking', 'off-road-driving']	\N
2354	\N	\N	Virgin	37.38395	-113.02915	84767	Lava Point Overlook	482.802	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2355	\N	\N	Springdale	37.21327	-112.94075	84737	Pine Creek Canyon	3862.416	5	5	out and back	['hiking']	\N
2356	\N	\N	Springdale	37.21324	-112.94049	84737	Destination Peak Trail	8368.568	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2357	\N	\N	Moab	38.32324	-109.90764	84532	Murphy Hogback Trail	8368.568	4.5	1	out and back	['hiking']	\N
2358	\N	\N	Mount Carmel Junction	37.23061	-112.87873	84758	Hidden Arch Trail	1770.274	3.5	3	out and back	['hiking', 'nature-trips']	\N
2359	\N	\N	Springdale	37.29646	-112.90147	84767	Mystery Canyon via East Mesa Trail	17380.872	5	7	out and back	['birding', 'nature-trips', 'rock-climbing']	\N
2360	\N	\N	Springdale	37.2728	-112.94654	84767	Virgin River Walk	1609.34	4	1	out and back	['nature-trips', 'walking']	\N
2361	\N	\N	Torrey	38.29074	-111.26139	84775	Fruita Trail	4988.954	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2362	\N	\N	Moab	38.60693	-109.5871	84532	Lower Courthouse Wash Trail	2735.878	4	3	out and back	['hiking']	\N
2363	\N	\N	Springdale	37.16124	-113.01975	84781	Mount Kinesava Trail	13035.654	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
2364	\N	\N	Torrey	38.27824	-111.19272	84775	Grand Wash Trail and Frying Pan Trail	19473.014	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2365	\N	\N	Moab	38.68734	-109.53668	84532	Ribbon Arch Trail	3218.68	4	3	out and back	['hiking', 'nature-trips']	\N
2366	\N	\N	Moab	38.6981	-109.54996	84532	Elephant Butte	2253.076	4.5	5	loop	['birding', 'nature-trips', 'rock-climbing']	\N
2367	\N	\N	Monticello	38.07441	-109.3509	84535	Indian Creek Scenic Byway: Monticello to Needles District, Canyonlands	65500.138	4	1	point to point	['birding', 'nature-trips', 'scenic-driving', 'walking']	\N
2368	\N	\N	Springdale	37.29703	-112.90031	84767	East Mesa Trail and Observation Point	14805.928	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2369	\N	\N	Thompson	38.7409	-109.73352	84532	Klondike Bluffs	20921.42	4.5	3	out and back	['birding', 'hiking', 'mountain-biking', 'rock-climbing']	\N
2370	\N	\N	Monticello	38.14281	-109.80351	84535	Chesler Park and Druid Arch Loop from Squaw Flat Campground	34600.81	5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2371	\N	\N	Moab	38.47548	-109.99865	84532	Taylor Canyon Trail	17219.938	4.5	3	point to point	['birding', 'hiking', 'off-road-driving']	\N
2372	\N	\N	Moab	38.1865	-109.97438	\N	Harvest Scene	14966.862	5	5	loop	['birding', 'hiking', 'nature-trips']	\N
2373	\N	\N	Monticello	38.15025	-109.80095	84535	Elephant Hill	29289.988	4.5	5	out and back	['nature-trips', 'off-road-driving']	\N
2374	\N	\N	Boulder	37.83317	-110.98185	84775	Headquarters Canyon Route	3540.548	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2375	\N	\N	Moab	38.62643	-109.59104	84532	La Sal Mountains Viewpoint	160.934	4	1	loop	['hiking', 'nature-trips', 'walking']	\N
2376	\N	\N	Moab	38.40422	-109.89828	84532	Wilhite Trail	18024.608	4.5	5	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
2377	\N	\N	Monticello	38.14772	-109.78715	84535	Squaw Flat, Salt Creek, Druid Hill and Elephant Hill Loop	39106.962	4	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2378	\N	\N	Bryce	37.56388	-112.23901	84764	Whiteman Bench to Mud Canyon Spring	2735.878	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2379	\N	\N	Springdale	37.21752	-112.92365	84737	6460 Lost Peak Trail	5632.69	5	5	loop	['birding', 'hiking', 'nature-trips']	\N
2380	\N	\N	Moab	38.6979	-109.67972	84532	Sovereign Singletrack	18185.542	4.5	5	loop	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'off-road-driving']	\N
2381	\N	\N	Kanab	37.21521	-112.93501	84737	Two Pine Arch Trail	804.67	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2382	\N	\N	Boulder	37.84715	-111.02667	84775	Lower Muley Twist Canyon Route	39106.962	5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2383	\N	\N	Moab	38.46816	-109.99879	84532	Upheaval Canyon Trail	11426.314	4.5	3	out and back	['backpacking', 'hiking', 'nature-trips']	\N
2384	\N	\N	Moab	38.58984	-109.56184	84532	Moab Canyon Pathway	14162.192	4	3	point to point	['birding', 'hiking', 'mountain-biking', 'walking']	\N
2385	\N	\N	Moab	38.60683	-109.58758	84532	Courthouse Wash	17380.872	3.5	3	out and back	['hiking', 'nature-trips']	\N
2386	\N	\N	Springdale	37.21761	-112.91787	84737	The Triplets Trail	4506.152	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2387	\N	\N	Moab	38.8919	-109.80045	\N	Salt Valley OHV Road	28163.45	3.5	1	out and back	['birding', 'mountain-biking', 'off-road-driving']	\N
2388	\N	\N	Monticello	38.14296	-109.80371	84535	Elephant Hill, Druid Arch, and Snowflat Loop Trail	15771.532	4.5	3	loop	['birding', 'hiking', 'nature-trips']	\N
2389	\N	\N	Moab	38.17149	-110.01316	\N	Chocolate Drops Trail	11748.182	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2390	\N	\N	Springdale	37.2241	-112.90115	84767	Jug Handle Arch Trail	3862.416	4	5	loop	['birding', 'hiking', 'nature-trips']	\N
2391	\N	\N	Moab	38.68817	-109.53854	84532	Cove of Caves via Parade of Elephants Trail	1770.274	3	3	out and back	['hiking', 'nature-trips', 'walking']	\N
2392	\N	\N	Moab	38.35496	-109.86383000000001	84532	Murphy Trail	6598.294	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2393	\N	\N	Monticello	38.14176	-109.82737	84535	Lower Red Lake Canyon Trail	34118.008	5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2394	\N	\N	Moab	38.57333	-109.55064	84532	Rose Garden Hill OHV Trail	131322.144	4.5	5	loop	['off-road-driving']	\N
2395	\N	\N	Torrey	38.18058	-111.18077	84775	Pleasant Creek Trail	11426.314	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2396	\N	\N	Springdale	37.21325	-112.94047	84737	G2 Trail	15610.598	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2397	\N	\N	Springdale	37.22466	-112.90257	84767	South Ariel Peak Trail	1770.274	4	5	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
2398	\N	\N	Boulder	37.82629	-110.97833	84775	Hamburger Rocks	18346.476	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2399	\N	\N	Duck Creek Village	37.38522	-112.83869	84762	The Narrows (Top-Down) [PRIVATE PROPERTY]	24944.77	5	5	point to point	['backpacking', 'camping', 'hiking']	\N
2400	\N	\N	Torrey	37.71796	-110.9301	\N	Brimhall Natural Bridge	3701.482	4	3	out and back	['camping', 'hiking', 'trail-running']	\N
2401	\N	\N	Springdale	37.21465	-112.93971	84737	Gifford Peak Trail	8368.568	3.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2402	\N	\N	Springdale	37.38162	-113.02283	84737	West Rim Trail to Wildcat Canyon Trail	18668.344	4	3	out and back	['birding', 'camping', 'hiking', 'walking']	\N
2403	\N	\N	Mount Carmel Junction	37.33514	-112.83612	84755	Orderville Canyon to Temple of Sinawava	18829.278	4.5	5	point to point	['hiking', 'nature-trips']	\N
2404	\N	\N	Monticello	38.15477	-109.75403	84532	Angel Arch from Cave Spring	41681.906	3.5	3	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
2405	\N	\N	Boulder	37.83823	-110.98874	84775	Suprise Canyon Route	3540.548	3.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
2406	\N	\N	Mount Carmel Junction	37.27098	-112.93839	84767	Hidden Canyon Short Hike [CLOSED]	2092.142	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2407	\N	\N	Monticello	38.14748	-109.80273	84535	Angel Arch from Squaw Flats	43130.312	5	5	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
2408	\N	\N	Springdale	37.27091	-112.9394	84767	Deertrap Mountain from Weeping Rock Trailhead	27036.912	4.5	5	out and back	['hiking']	\N
2409	\N	\N	New Harmony	37.50859	-113.19388	84742	Camp Creek	2735.878	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2410	\N	\N	Monticello	38.14161	-109.82746	84535	Druid Arch to Chesler Park	20116.75	5	3	loop	['backpacking', 'hiking']	\N
2411	\N	\N	Moab	38.78726	-109.6898	84532	Lower Tower Arch Trail	1287.472	4	3	out and back	['hiking', 'walking']	\N
2412	\N	\N	Moab	38.44436	-110.01786	84532	Fort Bottom Ruin Trail	5471.756	5	3	out and back	['hiking', 'walking']	\N
2413	\N	\N	Moab	38.76655	-109.58808	84532	Tower Arch, Marching Men, and Balancing Rock OHV Route	37014.82	4.5	3	point to point	['birding', 'off-road-driving']	\N
2414	\N	\N	Boulder	38.00693	-111.08508	84775	Red Canyon Trail	4184.284	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2415	\N	\N	Moab	38.47595	-109.9204	84532	Zeus and Moses	2253.076	5	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2416	\N	\N	Springdale	37.21749	-112.92368	84737	Parunuweap Pass Trail	10299.776	5	5	point to point	['birding', 'hiking', 'nature-trips']	\N
2417	\N	\N	Monticello	38.15014	-109.80086	84535	Chesler Park Loop Trail to the Joint and Druid Arch	39750.698	5	3	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
2418	\N	\N	Virgin	37.27055	-112.93951	84767	East Rim Trail to Mystery Canyon	22047.958	5	5	point to point	['birding', 'hiking', 'nature-trips']	\N
2419	\N	\N	Moab	38.35498	-109.86367	84532	Murphy Wash Trail	13357.522	5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
2420	\N	\N	Thompson	38.80417	-109.51764	84532	Lost Spring Canyon	10460.71	2.5	3	out and back	['hiking', 'nature-trips']	\N
2421	\N	\N	Hurricane	37.17054	-113.08121	84763	Scoggins Wash Trail	20599.552	4.5	3	out and back	['hiking']	\N
2422	\N	\N	New Harmony	37.43534	-113.202	84757	Peak 6965 - Kolob Canyons	3540.548	2.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2423	\N	\N	Moab	38.17814	-109.81738	84535	Cyclone Canyon Trail	21887.024	4	3	out and back	['backpacking', 'hiking']	\N
2424	\N	\N	Hurricane	37.22175	-113.10964	84779	Crater Hill	3862.416	0	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2425	\N	\N	Springdale	37.25909	-112.95141	84767	Kayenta Trail to the Emerald Pools [CLOSED]	3540.548	4	3	out and back	['hiking', 'nature-trips', 'walking']	\N
2426	\N	\N	New Harmony	37.46198	-113.19942	84757	North Fork Taylor Creek	8368.568	4	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
2427	\N	\N	Springdale	37.25918	-112.95125	84767	Kayenta Trail to the Emerald Pools and Zion Lodge [CLOSED]	6920.162	4	3	out and back	['hiking', 'nature-trips', 'walking']	\N
2428	\N	\N	Monticello	38.14976	-109.799	84535	Elephant Hill OHV Route	32991.47	0	3	loop	['birding', 'off-road-driving']	\N
2429	\N	\N	Bryce	37.58756	-112.21343	84764	Sheep Creek Connector Trail	17863.674	1	3	out and back	['backpacking', 'hiking', 'nature-trips', 'walking']	\N
2430	\N	\N	Moab	38.70159	-109.56703	84532	Eye of the Whale and Tower Arch OHV Route	48602.068	4	3	loop	['birding', 'off-road-driving']	\N
2431	\N	\N	Moab	38.47076	-109.81133	84532	Shafer and Lathrop Canyon OHV Trail	78052.99	5	3	point to point	['birding', 'off-road-driving']	\N
2432	\N	\N	Monticello	38.14759	-109.80259	84535	Elephant Canyon Loop via Squaw Flat to Chesler Park to Druid Arch	24140.1	5	3	loop	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2433	\N	\N	Moab	38.23317	-110.04912	\N	Upper Horse Canyon Trail	24301.034	0	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2434	\N	\N	Hanksville	38.14177	-110.61027	84734	Doll House OHV Trail via the Poison Springs Canyon Road	196822.282	0	5	out and back	['off-road-driving']	\N
2435	\N	\N	Monticello	38.15014	-109.80081	84535	Chesler Park Loop	46992.728	0	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2436	\N	\N	Moab	38.58283	-109.80123	84532	White Rim OHV Loop	159324.66	0	3	loop	['nature-trips', 'off-road-driving', 'scenic-driving']	\N
2437	\N	\N	Bryce	37.50369	-112.26266	84741	Agua Canyon Connecting Trail	4828.02	1.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2438	\N	\N	Moab	38.16767	-109.63162	84532	Five Faces Pictograph OHV Trail	76926.452	3	3	out and back	['camping', 'nature-trips', 'off-road-driving']	\N
2439	\N	\N	Moab	38.68698	-109.65351	84532	Courthouse Wash from Willow Springs	18829.278	4	3	point to point	['birding', 'hiking']	\N
2440	\N	\N	Moab	38.71202	-109.70002	84532	Sovereign OHV Loop	16898.07	3	1	loop	['birding', 'off-road-driving']	\N
2441	\N	\N	Moab	38.16813	-109.75988	84532	Colorado River and Indian Creek Scenic OHV Trail	167371.36	0	3	out and back	['birding', 'off-road-driving']	\N
2442	\N	\N	Hanksville	38.1184	-110.12769	\N	Flint Trail	9173.238	0	3	out and back	['off-road-driving']	\N
2443	\N	\N	Syria	38.57052	-78.28729	22719	Old Rag Mountain Loop	13840.324	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
2444	\N	\N	Syria	38.53906	-78.34808	22743	White Oak Canyon and Cedar Run Trails Loop	14484.06	4.5	5	loop	['hiking', 'nature-trips']	\N
2445	\N	\N	Syria	38.51971	-78.43083	22743	Dark Hollow Falls Trail	2253.076	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2446	\N	\N	Elkton	38.45239	-78.4669	22827	Bearfence Mountain Trail	1609.34	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'fly-fishing']	\N
2447	\N	\N	Syria	38.55647	-78.38683	22835	Hawksbill Gap Loop via Appalachian Trail	4184.284	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2448	\N	\N	Syria	38.53317	-78.42117	22743	Rose River Trail	5632.69	4.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
2449	\N	\N	Syria	38.58589	-78.38277	22835	White Oak Canyon Trail	15288.73	4.5	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
2450	\N	\N	Luray	38.59318	-78.37599	22835	Stony Man via Appalachian Trail	2414.01	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2451	\N	\N	Stanardsville	38.38115	-78.51698	\N	South River Falls Trail	7402.964	4.5	3	out and back	['hiking', 'nature-trips']	\N
2452	\N	\N	Syria	38.59308	-78.37563	22835	Little Stony Man Loop via Appalachian Trail	5471.756	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2453	\N	\N	Syria	38.55641	-78.3868	22835	Hawksbill Summit Trail	2414.01	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2454	\N	\N	Sperryville	38.65928	-78.3217	22835	Marys Rock via Appalachian Trail (North Approach)	5471.756	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2455	\N	\N	Crimora	38.17789	-78.76506	24441	Riprap Trail	15127.796	4.5	5	loop	['birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
2456	\N	\N	Sperryville	38.73032	-78.25801	22747	Little Devils Stairs Trail	8529.502	4.5	3	out and back	['hiking']	\N
2457	\N	\N	Grottoes	38.22304	-78.73333	\N	Blackrock Summit via Trayfoot Mountain and Appalachian Trail	1770.274	4.5	1	loop	['birding', 'hiking', 'nature-trips']	\N
2458	\N	\N	Syria	38.54389	-78.39337	22835	Upper Hawksbill Trail	3540.548	4.5	3	out and back	['birding', 'hiking', 'trail-running']	\N
2459	\N	\N	Grottoes	38.25426	-78.68279	22932	Doyles River Loop via Appalachian Trail	13357.522	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2460	\N	\N	Syria	38.53061	-78.43955	22851	Dark Hollow via Appalachian Trail and Story of the Forest Trail	9656.04	4.5	5	loop	['birding', 'hiking', 'nature-trips']	\N
2461	\N	\N	Bentonville	38.80185	-78.31483	22610	Overall Run Loop	14001.258	4.5	5	loop	['hiking', 'nature-trips']	\N
2462	\N	\N	Crozet	38.2299	-78.72597	22932	Jones Run Falls Trail	7242.03	4.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
2463	\N	\N	Crozet	38.12901	-78.78466	22932	Turk Mountain Trail	4023.35	4	1	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2464	\N	\N	Crozet	38.25429	-78.68279	22932	Doyles River Falls Trail	5471.756	4.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
2465	\N	\N	Stanley	38.53082	-78.43969	22851	Lewis Spring Falls Trail	4506.152	4	3	loop	['hiking', 'walking']	\N
2466	\N	\N	Sperryville	38.63775	-78.31438	22835	Mary's Rock via the Appalachian Trail (Southern Approach)	3862.416	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2467	\N	\N	Sperryville	38.57112	-78.28772	22719	Old Rag Mountain via Weakley Hollow Fire Road	15771.532	4.5	3	out and back	['camping', 'hiking', 'nature-trips', 'trail-running']	\N
2468	\N	\N	Sperryville	38.63832	-78.31371	22835	Hazel Falls and Caves	8529.502	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2469	\N	\N	Front Royal	38.87069	-78.20444	22630	Snead Farm Dickey Ridge Loop Trail	5471.756	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2470	\N	\N	Grottoes	38.12911	-78.78466	22932	Moormans River Overnight Loop via Appalachian Trail	27519.714	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking']	\N
2471	\N	\N	Syria	38.53952	-78.34914	22743	Shenandoah National Park Loop	39106.962	5	7	loop	['backpacking', 'camping', 'hiking', 'trail-running']	\N
2472	\N	\N	Bentonville	38.82325	-78.17043	\N	Compton Peak Summit via Appalachian Trail	3057.746	4	3	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'walking']	\N
2473	\N	\N	Crozet	38.13943	-78.74966	22932	North Fork Moormans River	1448.406	4.5	1	out and back	['birding', 'fishing', 'hiking', 'mountain-biking', 'nature-trips', 'walking', 'cross-country-skiing', 'fly-fishing']	\N
2474	\N	\N	Front Royal	38.83388	-78.18577	22630	Lands Run Falls Trail	9173.238	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
2475	\N	\N	Luray	38.57993	-78.38128	22743	Limberlost Trail	2092.142	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2476	\N	\N	Mount Vernon	38.7108	-77.08579	22309	Mount Vernon Trail	29611.856	4	1	out and back	['birding', 'hiking', 'nature-trips', 'road-biking', 'trail-running', 'walking']	\N
2477	\N	\N	Rileyville	38.76133	-78.2822	22650	Beecher Ridge and Overall Run Loop via Appalachian Trail	17702.74	4	5	loop	['backpacking', 'camping', 'hiking']	\N
2479	\N	\N	Sperryville	38.62462	-78.34239	22835	Marys Rock via Pinnacle Picnic Grounds	10621.644	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2480	\N	\N	Grottoes	38.2629	-78.66037	22932	Loft Mountain Loop via Appalachian Trail	2896.812	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2481	\N	\N	Rileyville	38.76417	-78.2936	22650	Mathews Arm Overall Run Trail	14323.126	4	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
2482	\N	\N	Syria	38.55605	-78.3867	22743	Cedar Run Falls Trail	9334.172	4.5	5	out and back	['backpacking', 'hiking']	\N
2483	\N	\N	Sperryville	38.65829	-78.28188	22740	Buck Ridge Trail To Mary's Rock Loop	14162.192	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running', 'walking']	\N
2484	\N	\N	Grottoes	38.17774	-78.76515	24441	Calvary and Chimney Rocks Trail	5149.888	4	1	out and back	['hiking']	\N
2485	\N	\N	Crozet	38.24079	-78.70995	22932	Appalachian Trail: Jones Run Trail to Pinefield Gap	11748.182	4.5	1	loop	['hiking', 'walking']	\N
2486	\N	\N	Huntly	38.80233	-78.17884	22640	Mount Marshall Loop via Appalachian Trail	19151.146	4	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'cross-country-skiing']	\N
2487	\N	\N	Madison	38.50018	-78.44586	22851	Laurel Prong, Rapidan Camp, Jones Mountain Trail via Appalachian Trail	11587.248	4	3	loop	['birding', 'hiking', 'nature-trips']	\N
2488	\N	\N	Elkton	38.35641	-78.54516	22973	Hightop Peak Loop via Appalachian Trail	13679.39	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2489	\N	\N	Grottoes	38.19973	-78.79442	24441	Trayfoot Mountain Trail	15932.466	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2490	\N	\N	Front Royal	38.9062	-78.19659	22630	Dickey Ridge Trail	28968.12	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2491	\N	\N	Elkton	38.34493	-78.5532	22827	Hightop Peak Trail	4828.02	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2492	\N	\N	Etlan	38.57044	-78.28618	22719	Robertson Mountain Trail Loop	14644.994	4	5	loop	['hiking']	\N
2493	\N	\N	Sperryville	38.73849	-78.3102	22650	Jeremy's Run Trail	18829.278	4	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2494	\N	\N	Syria	38.53977	-78.34763	22743	Cedar Run Trail to Hawksbill to White Oak Trail Loop	20116.75	4.5	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2495	\N	\N	Grottoes	38.25759	-78.77182	24441	Furnace Mountain Trail	12391.918	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2496	\N	\N	Syria	38.55598	-78.38683	22835	Crescent Rock via Appalachian Trail	1448.406	4	3	out and back	['hiking']	\N
2497	\N	\N	Elkton	38.51639	-78.44008	22851	Rapidan Camp Rapidan River via Millprong	9977.908	4	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'walking']	\N
2498	\N	\N	Luray	38.60573	-78.36657	22835	Little Stony Man to Stony Man Loop via Appalachian Trail	4988.954	4.5	3	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2499	\N	\N	Greenwood	38.07332	-78.793	22932	Calf Mountain Trail	4345.218	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2500	\N	\N	Syria	38.59052	-78.38379	22835	Millers Head Trail	2574.944	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2501	\N	\N	Bentonville	38.75135	-78.28917	22650	Sugarloaf Loop via Appalachian Trail	7242.03	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2502	\N	\N	Luray	38.60577	-78.36654	22835	Little Stony Man via Appalachian Trail	1931.208	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2503	\N	\N	Luray	38.58585	-78.38254	22835	Skyline to Old Rag Mountain Loop	24461.968	5	7	loop	['backpacking', 'hiking', 'trail-running']	\N
2504	\N	\N	Syria	38.54871	-78.33886	22743	Berry Hollow to Old Rag Mountain Trail	8207.634	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2505	\N	\N	Front Royal	38.87183	-78.20354	22630	Fox Hollow Trail	1931.208	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2506	\N	\N	Syria	38.55605	-78.38677	22835	Cedar Run Trail to White Oak Fire Road Loop	11909.116	4.5	3	loop	['birding', 'hiking', 'nature-trips']	\N
2507	\N	\N	Huntly	38.80698	-78.18111	\N	Compton Peak from Jenkins Gap via Appalachian Trail	5310.822	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2508	\N	\N	Bentonville	38.76778	-78.2336	22747	Big Devil Stairs Trail	9816.974	3.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
2509	\N	\N	Stanley	38.51697	-78.442	22851	Lewis Falls via Lewis Spring	2896.812	4	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2510	\N	\N	Front Royal	38.6625	-78.32071	22835	Skyline Drive: Thornton Gap to Gooney Overlook	42164.708	5	1	point to point	['road-biking', 'scenic-driving']	\N
2511	\N	\N	Rileyville	38.75957	-78.29664	22650	Tuscarora-Overall Run Trail	11909.116	4.5	5	out and back	['hiking']	\N
2512	\N	\N	Sperryville	38.62958	-78.25163	22740	White Rocks Trail	9656.04	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2513	\N	\N	Syria	38.51877	-78.43605	22851	Story of the Forest Trail	2896.812	3.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
2514	\N	\N	Sperryville	38.6383	-78.31369	22835	Hazel Mountain, Sam's Ridge, White Rocks Loop	16898.07	4	5	loop	['hiking', 'nature-trips']	\N
2515	\N	\N	Stanley	38.53095	-78.43987	22851	Rose River Trail to Lewis Falls Trail and Appalachian Trail	12070.05	4.5	3	loop	['hiking']	\N
2516	\N	\N	Madison	38.50014	-78.44584	22851	Mill Prong Trail	5954.558	4.5	3	out and back	['hiking', 'trail-running']	\N
2517	\N	\N	Sperryville	38.75065	-78.2946	22650	Appalachian Trail: Hogback Overlook to Jenkins Gap	11587.248	4.5	3	loop	['hiking']	\N
2518	\N	\N	Syria	38.52959	-78.43958	22851	Blackrock Trail	965.604	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2519	\N	\N	Huntly	38.80704	-78.18131	\N	Mount Marshall via the Appalacian Trail	15610.598	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2520	\N	\N	Elkton	38.29919	-78.64664	\N	Rocky Mount and Gap Run Trails	14805.928	3.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2850	\N	\N	Quinault	47.4491	-123.48942	98548	Church Creek - Satsop Lakes Trail	7402.964	4.5	3	out and back	['hiking']	\N
2521	\N	\N	Elkton	38.26396	-78.65992	22940	Big Run, Doyles River, and Frazier Loop	27036.912	4.5	3	loop	['backpacking', 'camping', 'hiking']	\N
2522	\N	\N	Afton	38.03422	-78.85888	22980	Appalachian Trail: Rockfish Gap to Chester Gap	160612.132	5	5	point to point	['backpacking', 'camping', 'hiking', 'trail-running']	\N
2523	\N	\N	Stanardsville	38.46838	-78.45722	\N	Jones Mountain Trail to Cat Knob and Bear Church Rock	17863.674	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2524	\N	\N	Afton	38.03281	-78.859	\N	Skyline Drive: Waynesboro to Front Royal	168497.898	4.5	3	point to point	['hiking', 'scenic-driving']	\N
2525	\N	\N	Vienna	38.93672	-77.26292	22182	Wolf Trap Loop Trail	2896.812	4.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
2526	\N	\N	Greenwood	38.09769	-78.78084	22932	Jarman to Turk's Mountain Loop	15449.664	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2527	\N	\N	Front Royal	38.87779	-78.15073	22630	Appalachian Trail: Sloan Creek to Jenkins Gap	23496.364	4	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2528	\N	\N	Rileyville	38.7598	-78.29722	22650	Elkwallow, Mathews Arm, and Knob Mountain Cutoff Trail	9012.304	4	3	loop	['birding', 'camping', 'hiking', 'nature-trips']	\N
2529	\N	\N	Waynesboro	38.03431	-78.85878	22943	Appalachian Trail: Shenandoah National Park	206478.322	4.5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2530	\N	\N	Huntly	38.82346	-78.17039	\N	Appalachian Trail: Compton Gap to Jenkins Gap	8046.7	4	1	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2531	\N	\N	Luray	38.61578	-78.35072	\N	Corbin Cabin and Nicholson Hollow Loop via Appalachian Trail and Indian Run Trail	27197.846	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2532	\N	\N	Syria	38.60566	-78.36637	22835	Passamaquoddy Trail	4023.35	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2533	\N	\N	Sperryville	38.63783	-78.31406	22835	Hazel River Trail	19473.014	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2534	\N	\N	Rileyville	38.74966	-78.29423	22740	Piney Branch Trail	13679.39	4	3	out and back	['hiking']	\N
2535	\N	\N	Huntly	38.80723	-78.18088	\N	Bluff Trail, Mount Marshall Trail, Appalachian Loop	21726.09	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2536	\N	\N	Elkton	38.38114	-78.51699	\N	Saddleback Mountain and Appalachian Trail Loop	6115.492	4	1	loop	['hiking', 'nature-trips']	\N
2537	\N	\N	Port Republic	38.25753	-78.77153	24441	Browns Gap	7242.03	3.5	7	out and back	['hiking']	\N
2538	\N	\N	Stanley	38.51872	-78.43578	22851	Rose River Trail to Story of the Forest Trail Loop	10299.776	4.5	3	loop	['hiking', 'trail-running', 'walking']	\N
2539	\N	\N	Stanardsville	38.41381	-78.4893	22827	Pocosin Trail	3379.614	3.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2540	\N	\N	Luray	38.9067	-78.20032	22630	Skyline Drive: Front Royal to Waynesboro	168658.832	5	5	point to point	['road-biking', 'scenic-driving']	\N
2541	\N	\N	Front Royal	38.86082	-78.16839	22630	Lands Run Falls to Hickerson Hollow via Appalachian Trail	14001.258	3.5	3	loop	['backpacking', 'birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
2542	\N	\N	Etlan	38.57087	-78.28738	22719	Nicholson Hollow to Corbin Cabin	14484.06	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2543	\N	\N	Syria	38.61608	-78.35073	22835	Corbin Cabin Trail	4667.086	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2544	\N	\N	Crozet	38.12536	-78.7864	22980	Turk Branch Trail	3057.746	4	1	out and back	['hiking', 'nature-trips']	\N
2545	\N	\N	Front Royal	38.83428	-78.18579	22630	Hickerson Hollow Trail	4506.152	4	1	out and back	['hiking', 'mountain-biking', 'trail-running']	\N
2546	\N	\N	Crozet	38.25432	-78.68287	22932	Big Run Trail	14484.06	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2547	\N	\N	Crozet	38.13949	-78.74988	22932	Charlottesville Reservoir to Jarman Gap	12874.72	4	1	out and back	['fishing', 'hiking', 'trail-running']	\N
2548	\N	\N	Grottoes	38.2404	-78.71069	22932	Austin Mountain and Furnace Mountain Loop	18024.608	4.5	5	loop	['hiking', 'nature-trips']	\N
2549	\N	\N	Grottoes	38.25761	-78.77184	24441	Austin Mountain Trail	12391.918	5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2550	\N	\N	Dyke	38.29259	-78.65797	22940	Brown Rocky Mountain Trail	14805.928	4	3	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
2551	\N	\N	Etlan	38.57044	-78.2863	22719	Catlett Mountain	17059.004	4.5	5	loop	['birding', 'hiking', 'nature-trips']	\N
2552	\N	\N	Huntly	38.82363	-78.17055	\N	Carson Mountain Fort Windham Rocks via Appalachian Trail	1287.472	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2553	\N	\N	Bentonville	38.77507	-78.2108	\N	North Marshall Mountain	1770.274	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2554	\N	\N	Grottoes	38.28487	-78.65889	22940	Ivy Creek via Appalachian Trail	4345.218	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2555	\N	\N	Syria	38.49965	-78.44582	22851	Mill Prong to Rapidan Camp	5954.558	4.5	3	out and back	['camping', 'hiking', 'walking']	\N
2556	\N	\N	Shenandoah	38.43945	-78.47706	22973	Pocosin Hollow Loop	20921.42	4	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2557	\N	\N	Luray	38.65984	-78.32044	22835	Skyline Drive: Thornton Gap to Swift Run Gap	54395.692	4.5	1	point to point	['nature-trips', 'road-biking', 'scenic-driving']	\N
2558	\N	\N	Stanley	38.53084	-78.43967	22851	Lewis Spring Trail	4023.35	4.5	3	out and back	['hiking', 'trail-running']	\N
2559	\N	\N	Syria	38.65839	-78.28212	22740	Thorton Gap and Buck Hollow Trail	19473.014	4	3	loop	['birding', 'hiking', 'nature-trips']	\N
2560	\N	\N	Washington	38.80698	-78.1812	\N	The Peak Trail	14805.928	3.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2561	\N	\N	Sperryville	38.61445	-78.25682	22740	Cave Falls via Hazel River and White Rocks Trail	10460.71	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2562	\N	\N	Elkton	38.32836	-78.574	22973	Hightop Trail	5310.822	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2563	\N	\N	Elkton	38.35767	-78.54522	\N	Saddleback Mountain Loop via Appalachian Trail	9495.106	3.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2564	\N	\N	Grottoes	38.23992	-78.71084	22932	Black Rock Summit via Browns Gap	9012.304	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2565	\N	\N	Crimora	38.15298	-78.77305	\N	Wildcat Ridge Trail	9656.04	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2566	\N	\N	Grottoes	38.22282	-78.73359	\N	Furnace Mountain Trail	10460.71	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2567	\N	\N	Elkton	38.32113	-78.59208	22827	Powell Gap via Appalachian Trail	1287.472	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2568	\N	\N	Bentonville	38.77508	-78.21082	\N	Marshall Mountain Overlook	965.604	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2569	\N	\N	Sperryville	38.67523	-78.33433	22835	Pass Mountain Loop	482.802	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2570	\N	\N	Sperryville	38.63831	-78.31365	22835	Buck Hollow Trail and Buck Ridge Trail Loop	9012.304	4	3	out and back	['hiking', 'nature-trips']	\N
2571	\N	\N	Sperryville	38.74084	-78.31182	22650	Piney Ridge Trail and Appalachian Trail Loop	17702.74	4	3	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
2572	\N	\N	Grottoes	38.26272	-78.65992	22932	Big Flat Mountain Loop via Appalachian Trail	8368.568	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2573	\N	\N	Luray	38.70771	-78.33085	22835	Neighbor Mountain via Neighbor Mountain Trail	7563.898	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2574	\N	\N	Grottoes	38.23997	-78.71084	22932	Appalachian Trail: Shendandoah Loft Mountain to Rockfish Gap	35888.282	4.5	3	point to point	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2575	\N	\N	Elkton	38.46846	-78.45737	22827	Cat Knob, Bear Church Rocks, Staunton River Trail, Fork Mountain	18185.542	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2576	\N	\N	Elkton	38.46693	-78.49989	22827	Powell Mountain Trail	4667.086	4	3	out and back	['hiking']	\N
2577	\N	\N	Washington	38.76778	-78.23354	22747	Browntown Trail	9816.974	4.5	3	out and back	['hiking']	\N
2578	\N	\N	Sperryville	38.69447	-78.31974	22835	Byrds Nest Summit and Byrds Nest Shelter No. 4 via Appalachian Trail	4023.35	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2579	\N	\N	Washington	38.76795	-78.23356	22610	Shenandoah Bluff Trail	13035.654	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2580	\N	\N	Syria	38.55589	-78.38663	22743	Hawksbill Mountain, Franklin Cliffs, Big Meadows Horse Trail	14484.06	4.5	3	loop	['hiking']	\N
2581	\N	\N	Crozet	38.22992	-78.72602	22932	Austin, Furnace and Trayfoot Mountain Loop	32830.536	4.5	5	loop	['backpacking', 'camping', 'hiking', 'trail-running']	\N
2582	\N	\N	Rileyville	38.75986	-78.29706	22650	Traces Trail	2574.944	4	1	loop	['camping', 'hiking', 'nature-trips', 'walking']	\N
2583	\N	\N	Greenwood	38.09785	-78.78103	22932	Beagle Gap and Little Calf Mountain Loop via Jarman Gap	12874.72	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2584	\N	\N	Front Royal	38.90611	-78.19671	22630	Snead Farm via Dickey Ridge Trail Loop	18829.278	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2585	\N	\N	Elkton	38.46847	-78.45742	22827	Hazeltop Summit via Appalachian Trail	3057.746	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2586	\N	\N	Sperryville	38.59182	-78.27437	22740	Pine Hill Gap Trail	10782.578	3.5	3	loop	['hiking', 'trail-running']	\N
2587	\N	\N	Syria	38.51433	-78.36585	22743	Rose River Fire Road	19151.146	4	5	out and back	['backpacking', 'hiking', 'nature-trips', 'horseback-riding']	\N
2588	\N	\N	Elkton	38.43705	-78.47817	22973	Appalachian Trail: Lewis Mountain to Big Meadows	13840.324	4	3	point to point	['hiking', 'nature-trips']	\N
2589	\N	\N	Syria	38.51451	-78.36601	22743	Rose River and Rapidan Road Loop	18829.278	4.5	5	loop	['backpacking', 'hiking', 'nature-trips']	\N
2590	\N	\N	Stanardsville	38.52914	-78.44112	22851	Big Meadows to Lewis Mountain Cabins via Appalachian Trail	12070.05	5	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
2591	\N	\N	Rileyville	38.72328	-78.3208	22650	Thornton River Loop	12391.918	4	3	loop	['hiking']	\N
2592	\N	\N	Grottoes	38.22281	-78.73332	\N	Blackrock and Trayfoot Mountains	4828.02	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2593	\N	\N	Syria	38.53951	-78.34928	22743	Cedar Run, White Oak, Old Rag, Weakley Hollow and Nicholson Hollow Trail	29289.988	4.5	5	loop	['backpacking', 'hiking', 'trail-running']	\N
2594	\N	\N	Grottoes	38.25758	-78.77189	24441	Madison Run Road	16254.334	4	3	out and back	['hiking', 'walking', 'horseback-riding']	\N
2595	\N	\N	Grottoes	38.24084	-78.71121	24441	Lewis Mountain via Rockytop Trail	12552.852	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2596	\N	\N	Syria	38.43698	-78.36642	22727	Grave Mills Trail	6920.162	4	3	out and back	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
2597	\N	\N	Luray	38.69536	-78.32001	22835	Appalachian Trail: Beahms Gap to Elkwallow Wayside	16254.334	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'scenic-driving', 'trail-running', 'walking']	\N
2598	\N	\N	Crozet	38.22992	-78.72602	22932	Loft Mountain Campground via Jones Run Trail	17541.806	4.5	3	out and back	['backpacking', 'hiking']	\N
2599	\N	\N	Sperryville	38.65883	-78.32173	22835	Appalachian Trail and Pass Mountain Trail Loop	17863.674	3.5	5	loop	['backpacking', 'birding', 'hiking', 'nature-trips']	\N
2600	\N	\N	Sperryville	38.62246	-78.32295	22835	Hannah Run to Catlett Mountain Trail	7242.03	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2601	\N	\N	Sperryville	38.59393	-78.27201	22740	Broad Hollow Trail Loop	13196.588	3.5	3	loop	['hiking']	\N
2602	\N	\N	Etlan	38.57098	-78.28712	22719	Robertson Mountain via Weakley Hollow and Old Rag Fire Roads	15610.598	4.5	5	loop	['hiking']	\N
2603	\N	\N	Sperryville	38.73862	-78.3099	22650	Thorton Hollow via Appalachian Trail	18346.476	3.5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2604	\N	\N	Luray	38.74113	-78.31201	22650	Appalachian Trail: Elkwallow Wayside to Hogback Overlook	9334.172	4.5	3	out and back	['birding', 'hiking', 'trail-running', 'walking']	\N
2605	\N	\N	Front Royal	38.8715	-78.20531	22630	Fox Hollow to Dickey Ridge Loop	7885.766	4.5	1	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2606	\N	\N	Etlan	38.57092	-78.28716	22719	Nicholson Hollow and Hannah Run Trail	12713.786	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2607	\N	\N	Sperryville	38.6992	-78.32048	22835	Hull School Trail	6437.36	3	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2608	\N	\N	Syria	38.5002	-78.44566	22851	Milam Gap and Lewis Falls Loop	9977.908	4	3	loop	['hiking', 'nature-trips', 'walking']	\N
2609	\N	\N	Sperryville	38.61369	-78.25655	22740	Sams Ridge, Hazel Mountain and Hannah Run Loop	22530.76	5	5	loop	['birding', 'hiking', 'nature-trips']	\N
2610	\N	\N	Elkton	38.35792	-78.54655	22827	Appalachian Trail: Skyline Drive to Lewis Mountain	13679.39	4.5	3	loop	['birding', 'hiking', 'nature-trips']	\N
2611	\N	\N	Grottoes	38.25761	-78.7719	24441	Furnace Mountain Jones and Doyles Rivers Loop	29289.988	4	5	loop	['backpacking', 'hiking', 'nature-trips', 'trail-running']	\N
2612	\N	\N	Etlan	38.57072	-78.28694	22719	Weakley Hollow Road to Corbin Hollow to Nicholson Hollow Loop	18024.608	4	3	loop	['birding', 'hiking', 'nature-trips']	\N
2613	\N	\N	Stanardsville	38.3564	-78.54514	22973	Appalachian Trail: Swift Run Gap to Rockfish Gap	69845.356	5	3	point to point	['backpacking', 'camping']	\N
2614	\N	\N	Syria	38.61574	-78.35051	\N	Corbin Cabin via Nicholson Hollow and Appalachian Trail Loop	6759.228	4	3	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2615	\N	\N	Sperryville	38.68098	-78.34378	22835	Rocky Branch Trail	4667.086	3	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2616	\N	\N	Etlan	38.57105	-78.2865	22719	Pine Hill Gap, Nicholson Hollow, Corbin Hollow, Weakley Hollow Fire Road	24783.836	3	5	loop	['birding', 'hiking', 'nature-trips']	\N
2617	\N	\N	Syria	38.57073	-78.28674	22719	Corbin Mountain Trail	17541.806	4.5	3	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2618	\N	\N	Syria	38.61764	-78.3425	\N	Camp Ridge Trail	2253.076	0	1	out and back	['hiking', 'walking']	\N
2619	\N	\N	Alexandria	38.71518	-77.05732	22308	Fort Hunt Park Main Loop	2092.142	4	1	loop	['nature-trips', 'road-biking', 'walking']	\N
2620	\N	\N	Elkton	38.4511	-78.48581	22827	Allen Hollow Trail	11426.314	0	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2621	\N	\N	Stanley	38.47667	-78.48749	22827	East Branch Naked Creek Trail	9173.238	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2622	\N	\N	Free Union	38.30655	-78.70374	22827	Rockytop, Austin Mountain, Furnace Mountain, Blackrock	22208.892	4	3	point to point	['backpacking', 'hiking']	\N
2623	\N	\N	Greenwood	38.09845	-78.81842	22980	Barking Dogs and Jarman Gap	24461.968	0	3	out and back	['birding', 'hiking', 'walking', 'horseback-riding']	\N
2624	\N	\N	Sperryville	38.6142	-78.25652	22740	Sam's Ridge, Pine Hill Gap, and Hazel Mountain Loop	16415.268	2	5	loop	['birding', 'hiking']	\N
2625	\N	\N	Stanley	38.5534	-78.43439	22851	Hawksbill via Appalachian Trail and Redgate Road	21404.222	4	3	out and back	['hiking', 'trail-running']	\N
2626	\N	\N	Elkton	38.46835	-78.45734	22827	Conway River Trail	4345.218	2.5	3	out and back	['hiking', 'walking']	\N
2627	\N	\N	Elkton	38.48569	-78.50135	22827	West Branch Naked Creek Trail	11909.116	0	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2628	\N	\N	Syria	38.57997	-78.38125	22743	Old Rag Fire Road, Weakley Hollow and Robertson Mountain Loop	16254.334	5	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2629	\N	\N	Sperryville	38.61394	-78.25653	22740	Sam\\'92s Ridge and Catlett Spur	14001.258	5	3	loop	['birding', 'hiking', 'nature-trips']	\N
2630	\N	\N	Alexandria	38.71507	-77.05733	22308	Fort Hunt Park Short Loop	1126.538	2	1	loop	['nature-trips', 'road-biking', 'walking']	\N
2631	\N	\N	Rileyville	38.72195	-78.38725	22835	Knob Mountain Trail [CLOSED / PRIVATE PROPERTY]	11909.116	2.5	3	out and back	['hiking', 'walking']	\N
2632	\N	\N	Elkton	38.48874	-78.51655	22827	Harris Cove Utz Gap Trail [PRIVATE PROPERTY]	9656.04	1	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2633	\N	\N	Luray	38.73929	-78.30763	22835	Overall Run and Beecher Ridge Trail	21726.09	4.5	5	loop	['backpacking', 'camping', 'hiking', 'trail-running']	\N
2634	\N	\N	Ashford	46.93736	-121.8677	98304	Tolmie Peak Trail	8851.37	4.5	3	out and back	['hiking', 'nature-trips']	\N
2635	\N	\N	Paradise Inn	46.78647	-121.73641	98304	Skyline Trail	8529.502	5	3	loop	['backpacking', 'camping', 'hiking']	\N
2636	\N	\N	Port Angeles	47.97651	-123.5178	98363	Hurricane Hill via Hurricane Ridge	4988.954	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing']	\N
2637	\N	\N	Port Angeles	48.05809	-123.78918	98363	Mount Storm King	6276.426	5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2638	\N	\N	Port Angeles	47.95482	-123.83476	98363	Sol Duc Falls Nature Trail	2574.944	4.5	1	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2639	\N	\N	Forks	47.86023	-123.9345	98331	Hoh Rain Forest Hall of Moss	1609.34	4.5	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2640	\N	\N	Port Angeles	48.05808	-123.78914	98363	Marymere Falls Trail	2735.878	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2641	\N	\N	Ashford	46.77868	-121.7839	98361	Comet and Christine Falls	6920.162	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2642	\N	\N	Paradise Inn	46.78616	-121.73599	98304	Camp Muir Route Via Skyline Trail	13518.456	5	7	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'skiing', 'snowshoeing', 'snowboarding']	\N
2643	\N	\N	Ashford	46.9142	-121.64181	98304	Burroughs Mountain Loop Trail	15127.796	5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2644	\N	\N	Ashford	46.86978	-121.51945	98022	Naches Peak Loop Trail	5310.822	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
2645	\N	\N	Ashford	46.93268	-121.8634	98304	Spray Park Trail to Mount Pleasant	11104.446	4.5	3	out and back	['hiking', 'walking']	\N
2646	\N	\N	Forks	47.86009	-123.93447	98331	Hoh River Trail	52786.352	4.5	3	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
2647	\N	\N	Forks	47.95481	-123.83471	98363	High Divide - Seven Lakes Basin Loop	30577.46	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2648	\N	\N	Ashford	46.91435	-121.6423	98304	Mount Fremont Lookout Trail	9012.304	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2649	\N	\N	Stehekin	48.51941	-120.67423	98862	Blue Lake Trail	8529.502	4.5	3	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'rock-climbing', 'snowshoeing', 'trail-running', 'walking', 'fly-fishing']	\N
2650	\N	\N	Forks	47.7097	-124.41341	98331	Ruby Beach	2253.076	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2651	\N	\N	Lilliwaup	47.51546	-123.33012	98548	Staircase Rapids Loop	3379.614	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2652	\N	\N	Rockport	48.4754	-121.07501	98267	Cascade Pass and Sahale Arm Trail	17541.806	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing']	\N
2653	\N	\N	Paradise Inn	46.76825	-121.73115	98361	Pinnacle Peak Saddle Trail	3862.416	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2654	\N	\N	Ashford	46.88801	-121.61005	98304	Summerland Trail	13196.588	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2655	\N	\N	Port Angeles	48.09334	-123.80247	98363	Spruce Railroad Trail: Lake Crescent	18024.608	4.5	1	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'walking', 'horseback-riding', 'whitewater-kayaking', 'canoeing', 'rails-trails']	\N
2656	\N	\N	Randle	46.7573	-121.55769	98377	Grove of the Patriarchs Nature Trail	1931.208	4.5	1	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2657	\N	\N	Randle	46.73646	-121.56605	98377	Silver Falls Trail	6437.36	4.5	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2658	\N	\N	Quinault	47.57271	-123.57014	\N	Enchanted Valley Chalet via East Fork Quinault River Trail	49245.804	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2659	\N	\N	Paradise Inn	46.78554	-121.7334	98304	Narada Falls Trail	3862.416	4.5	3	out and back	['hiking', 'nature-trips', 'snowshoeing']	\N
2660	\N	\N	Paradise Inn	46.76777	-121.70782	98361	Bench and Snow Lakes Trail	4345.218	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2661	\N	\N	Paradise Inn	46.78527	-121.74152	98304	Nisqually Vista Trail	1448.406	4.5	1	loop	['hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
2662	\N	\N	Sekiu	48.15352	-124.66998	98326	Ozette Triangle Trail	13840.324	4.5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2663	\N	\N	Port Angeles	48.04083	-123.58995	98363	Madison Falls Trail	482.802	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2664	\N	\N	Ashford	46.7866	-121.73549	98304	Myrtle Falls Viewpoint via Skyline Trail	1448.406	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
2665	\N	\N	Forks	47.92074	-124.63833	98331	Hole-in-the-Wall Trail	6115.492	4.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
2666	\N	\N	Longmire	46.76641	-121.79122	98304	The Wonderland Trail	154818.508	4.5	7	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
2667	\N	\N	Paradise Inn	46.90199	-121.64489	98304	Glacier Basin Trail	12552.852	4.5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'skiing', 'walking', 'snowboarding']	\N
2668	\N	\N	Marblemount	48.71784	-121.14496	98283	Sourdough Mountain Trail	14644.994	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2669	\N	\N	Port Angeles	48.03893	-123.43147	98362	Lake Angeles Trail	10299.776	4.5	5	out and back	['camping', 'hiking', 'snowshoeing']	\N
2670	\N	\N	Port Angeles	47.97003	-123.49505	98363	Klahhane Ridge Trail to Lake Angeles	20277.684	4.5	5	out and back	['birding', 'hiking', 'trail-running', 'horseback-riding']	\N
2671	\N	\N	Lilliwaup	47.59963	-123.15135	\N	Lena Lake Trail to Upper Lena Lake Trail	19312.08	4.5	5	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running']	\N
2672	\N	\N	Packwood	46.91491	-121.64159	98304	Sunrise Rim Trail	8851.37	4.5	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2673	\N	\N	Hoodsport	47.49255	-123.21023	98548	Upper Big Creek Loop Trail	7242.03	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2674	\N	\N	Carbonado	46.9951	-121.91522	98304	Green Lake Trail	15610.598	4.5	3	out and back	['hiking', 'walking']	\N
2675	\N	\N	Port Angeles	47.97024	-123.49452	98363	Sunrise Ridge Trail to Mount Angeles	8046.7	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
2676	\N	\N	Paradise Inn	46.76851	-121.73146	98361	Reflection Lake to Narada Falls	5793.624	4.5	3	out and back	['hiking', 'nature-trips']	\N
2677	\N	\N	Longmire	46.74963	-121.81216	98304	Rampart Ridge Loop Trail	7724.832	4	3	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing']	\N
2678	\N	\N	Marblemount	48.4754	-121.07502	98267	Cascade Pass Trail to Cottonwood Camp	25588.506	5	5	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing']	\N
2679	\N	\N	Forks	47.92031	-124.63715	98331	Rialto Beach Trail	21565.156	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2680	\N	\N	Lilliwaup	47.58343	-123.23405	98548	Putvin Trail to Lake of the Angels	9816.974	4.5	7	out and back	['birding', 'hiking', 'nature-trips']	\N
2681	\N	\N	Packwood	46.91447	-121.64127	98304	Burroughs Mountain Trail	14323.126	5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking', 'cross-country-skiing']	\N
2682	\N	\N	Ashford	46.91471	-121.64139	98304	Frozen Lake	4667.086	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'skiing', 'walking']	\N
2683	\N	\N	Ashford	46.78577	-121.73554	98304	Mount Rainier Standard Summit Route	23657.298	5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing', 'skiing', 'snowshoeing', 'ice-climbing']	\N
2684	\N	\N	Port Angeles	48.04076	-123.59018	98363	Olympic Hot Springs Trail	34118.008	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2685	\N	\N	Paradise Inn	46.92257	-121.5335	98022	Crystal Lakes Trail to Sourdough Gap	11909.116	4.5	3	out and back	['hiking', 'nature-trips']	\N
2686	\N	\N	Sequim	47.87754	-123.13717	98382	Royal Basin Trail	25749.44	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2687	\N	\N	Paradise Inn	46.78662	-121.73409	98304	Panorama Point from Paradise Inn	6598.294	5	3	out and back	['hiking', 'nature-trips', 'skiing', 'snowshoeing', 'walking', 'snowboarding']	\N
2688	\N	\N	Paradise Inn	46.88802	-121.61005	98304	Wonderland Trail to Panhandle Gap	17863.674	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2689	\N	\N	Quinault	47.45979	-123.86216	98575	Quinault Rain Forest Nature Trail	1448.406	4.5	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2690	\N	\N	Buckley	46.99482	-121.91792	98323	Carbon Glacier Trail	30416.526	4.5	3	out and back	['bike-touring', 'camping', 'hiking', 'mountain-biking']	\N
2691	\N	\N	Rockport	48.47497	-121.07505	98267	Cascade Pass Trail	10460.71	5	5	out and back	['birding', 'hiking']	\N
2692	\N	\N	Forks	47.96981	-123.86434	98363	Lovers Lane Trail	9816.974	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2693	\N	\N	Paradise Inn	46.76848	-121.7313	98361	High Lakes Loop Trail	5149.888	4.5	3	loop	['hiking']	\N
2694	\N	\N	Quinault	47.5727	-123.57055	\N	Quinault River Pony Bridge Trail	7724.832	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2695	\N	\N	Ashford	46.91467	-121.64085	98304	Sourdough Ridge Nature Trail	6276.426	4.5	1	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2696	\N	\N	Port Angeles	47.96962	-123.50002	98362	Cirque Rim Nature Trail	2574.944	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
2697	\N	\N	Port Angeles	47.94586	-123.42561	98362	PJ Lake Trail	2414.01	4.5	7	out and back	['birding', 'hiking', 'nature-trips']	\N
2698	\N	\N	Quilcene	47.87458	-123.08228	98382	Silver Lake Way Trail	9656.04	4.5	3	out and back	['birding', 'camping', 'fishing', 'hiking', 'walking']	\N
2699	\N	\N	Brinnon	47.74152	-123.04939	98320	Lake Constance Trail	23335.43	4.5	5	out and back	['backpacking', 'camping', 'fishing', 'hiking', 'mountain-biking', 'rock-climbing', 'fly-fishing']	\N
2700	\N	\N	Port Angeles	48.03515	-123.42584	98362	Heart O' the Forest Trail	7081.096	4	3	out and back	['camping', 'hiking', 'trail-running', 'walking']	\N
2701	\N	\N	Packwood	46.76831	-121.79061	98304	Wonderland Trail to Carter Falls and Narada Falls	9012.304	4.5	5	out and back	['hiking']	\N
2702	\N	\N	Lilliwaup	47.51545	-123.32934	98548	Flapjack Lakes Trail	22369.826	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2703	\N	\N	Paradise Inn	46.78642	-121.73576	98304	Paradise Glacier Caves via Skyline Trail Spur	8690.436	4.5	3	out and back	['backpacking', 'hiking', 'snowshoeing', 'snowboarding']	\N
2704	\N	\N	Paradise Inn	46.78619	-121.73611	98304	Skyline, Glacier Vista, Upper Skyline and Golden Gate Loop	7402.964	5	3	loop	['hiking', 'trail-running']	\N
2705	\N	\N	Ashford	46.91444	-121.64202	98304	Sunrise Rim Trail Loop and Mount Fremont Lookout	14001.258	5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2706	\N	\N	Paradise Inn	46.7865	-121.7363	98304	Golden Gate Trail	6115.492	4.5	3	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2707	\N	\N	Port Angeles	47.9867	-123.46113	98362	Olympic National Park Switchback Trail	4345.218	4.5	5	out and back	['birding', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
2708	\N	\N	Marblemount	48.47543	-121.07498	98267	Sahale Arm Trail to Quien Sabe Glacier	19955.816	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing']	\N
2709	\N	\N	Packwood	46.91402	-121.64187	98304	Shadow Lakes Trail	4184.284	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2710	\N	\N	Paradise Inn	46.78386	-121.74238	98361	Alta Vista Trail	2896.812	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
2711	\N	\N	Forks	47.86001	-123.93459	98331	Spruce Nature Trail	2253.076	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2712	\N	\N	Paradise Inn	46.77516	-121.74664	98361	Narada Falls	482.802	4.5	1	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2713	\N	\N	Randle	46.80192	-121.5551	98304	Shriner Peak Lookout Trail	12070.05	4.5	5	out and back	['hiking']	\N
2714	\N	\N	Buckley	46.99496	-121.91649	98323	Chenuis Falls Trail	12230.984	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2715	\N	\N	Port Angeles	48.06578	-123.85967	98363	Pyramid Mountain Trail	10138.842	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2716	\N	\N	Packwood	46.71303	-121.71581	98361	Tatoosh Ridge Trail	17702.74	4.5	7	out and back	['hiking', 'horseback-riding']	\N
2717	\N	\N	Orting	46.93317	-121.86435	98304	Lakeshore Trail and Wonderland Trail to Ipsut Pass	4345.218	4.5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
2718	\N	\N	Paradise Inn	46.77864	-121.78353	98304	Mildred Point via Comet Falls	9816.974	4.5	5	out and back	['hiking', 'nature-trips']	\N
2719	\N	\N	Longmire	46.74759	-121.80875	98361	Eagle Peak Trail	11587.248	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2720	\N	\N	Ashford	46.91734	-121.58929	98304	Dege Peak Trail	4988.954	4.5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2721	\N	\N	Port Angeles	47.94979	-123.26497	98362	Obstruction Point - Deer Park Trail	22369.826	4.5	5	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2722	\N	\N	Ashford	46.91765	-121.58781	98304	Palisades Lakes Trail	11265.38	4.5	3	out and back	['hiking']	\N
2723	\N	\N	Port Angeles	48.05731	-123.79917	98363	Marymere Falls Trail from Lake Crescent Lodge	3218.68	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2724	\N	\N	Port Angeles	47.95356	-123.83299	98363	Deer Lake Trail	10138.842	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2725	\N	\N	Ashford	46.87407	-121.51615	98937	Dewey Lake Trail	9656.04	4.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
2851	\N	\N	Enumclaw	47.04128	-121.59603	98022	Suntop Trail	1609.34	4.5	3	out and back	['hiking', 'mountain-biking']	\N
2726	\N	\N	Hoodsport	47.41887	-123.32941	98548	Lower South Fork Skokomish Trail	16254.334	4	3	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
2727	\N	\N	Ashford	46.8751	-121.51795	98937	Sourdough Gap (past Sheep Lake)	10782.578	4.5	3	out and back	['hiking']	\N
2728	\N	\N	Forks	47.74926	-124.41879	98331	Olympic Coast South Trail	25588.506	5	5	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'fly-fishing']	\N
2729	\N	\N	Ashford	46.92273	-121.53331	98022	Crystal Peak Trail	11104.446	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2730	\N	\N	Ashford	46.91434	-121.64278	98304	Skyscraper Mountain via Wonderland Trail	12713.786	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2731	\N	\N	Paradise Inn	46.78934	-121.72596	98361	Paradise Glacier Trail	5632.69	4.5	3	out and back	['hiking', 'nature-trips', 'snowshoeing', 'trail-running']	\N
2732	\N	\N	Ashford	46.78651	-121.73651	98304	Glacier Vista Loop via Skyline Trail	4184.284	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2733	\N	\N	Port Angeles	47.95642	-123.25986	98362	Blue Mountain Trail	643.736	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2734	\N	\N	Port Angeles	47.96786	-123.58245	98363	Humes Ranch Loop Trail	9495.106	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2735	\N	\N	Forks	47.86042	-123.93462	98331	Hoh River Trail to Blue Glacier Trail	54717.56	4.5	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2736	\N	\N	Orting	46.93264	-121.86336	98304	Wonderland Trail Ipsut Creek Loop to Ipsut Pass and Mowich Lake	28163.45	4.5	5	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2737	\N	\N	La Push	48.27525	-124.67867	98326	Shi Shi to Ozette River Beach Trail	28324.384	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running', 'walking']	\N
2738	\N	\N	Lilliwaup	47.51888	-123.23697	98548	Mount Washington	6598.294	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2739	\N	\N	Port Angeles	47.91836	-123.3822	98362	Grand Pass Trail	22530.76	5	7	out and back	['backpacking', 'camping', 'hiking']	\N
2740	\N	\N	Longmire	46.75004	-121.81321	98304	Trail of the Shadows Trail	1126.538	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2741	\N	\N	Packwood	46.76687	-121.7908	98304	Carter Falls	4345.218	4	1	out and back	['hiking', 'nature-trips']	\N
2742	\N	\N	Carbonado	46.99633	-121.6417	98022	Grand Park Trail past Lake Eleanor	13035.654	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2743	\N	\N	Forks	47.95511	-123.83522	98363	Sol Duc Falls Nature Trail to Appleton Pass Trail	15288.73	4.5	5	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2744	\N	\N	Lilliwaup	47.51611	-123.32797	98548	North Fork Skokomish River Trail	37819.49	4.5	5	out and back	['backpacking', 'camping', 'hiking']	\N
2745	\N	\N	Marblemount	48.67253	-121.24657	98283	Trail of the Cedars Nature Walk	3057.746	4	1	loop	['hiking', 'walking']	\N
2746	\N	\N	Ashford	46.91577	-121.64369	98304	Mount Rainier Northern Loop Trail	50211.408	4.5	7	loop	['backpacking', 'hiking']	\N
2747	\N	\N	Lilliwaup	47.51523	-123.32909	98548	Black and White Lakes Primitive Trail	23979.166	4	5	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'fly-fishing']	\N
2748	\N	\N	Carbonado	46.89089	-121.59658	98304	Owyhigh Lakes Trail	12070.05	4.5	3	out and back	['hiking']	\N
2749	\N	\N	Port Angeles	48.09987	-123.43007	98362	Peabody Creek Trail	7563.898	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2750	\N	\N	Paradise Inn	46.78475	-121.74164	98304	Moraine Trail	4023.35	4.5	3	out and back	['birding', 'hiking', 'trail-running', 'walking']	\N
2751	\N	\N	Orting	46.93344	-121.86518	98304	Mowich Lake to Mystic Lake Trail	36692.952	4.5	5	out and back	['backpacking', 'camping', 'hiking']	\N
2752	\N	\N	Sequim	47.9652	-123.19346	98382	Deer Ridge Trail	14805.928	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2753	\N	\N	Forks	47.89044	-124.59899	98331	Third Beach to Hoh River	24622.902	4.5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'surfing', 'walking']	\N
2754	\N	\N	Olympia	47.02164	-122.90689	98512	Olympic Peninsula Loop Drive	529794.728	4.5	1	loop	['birding', 'camping', 'fishing', 'nature-trips', 'scenic-driving', 'sea-kayaking']	\N
2755	\N	\N	Longmire	46.76646	-121.79048	98361	Madcap Falls Trail	4667.086	4	1	out and back	['hiking']	\N
2756	\N	\N	Lilliwaup	47.51591	-123.32791	98548	Wagonwheel Lake Trail	7885.766	4.5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2757	\N	\N	Port Angeles	48.07577	-124.01309	98363	Mount Muller Trail	20921.42	4.5	5	loop	['backpacking', 'hiking', 'mountain-biking', 'nature-trips', 'horseback-riding']	\N
2758	\N	\N	Paradise Inn	46.76844	-121.73141	98361	Plummer Peak via Pinnacle Peak Trail	5149.888	4.5	5	out and back	['hiking', 'trail-running']	\N
2759	\N	\N	Longmire	46.78001	-121.8853	98304	Tahoma Creek Suspension Bridge	10138.842	4	3	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2760	\N	\N	Port Angeles	48.05946	-123.79745	98363	Moments in Time Trail	1126.538	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2761	\N	\N	Paradise Inn	46.78497	-121.7416	98304	Dead Horse Creek Trail	3540.548	4.5	1	out and back	['hiking']	\N
2762	\N	\N	Ashford	46.91444	-121.64262	98304	Berkeley Park Trail	11265.38	4.5	3	out and back	['camping', 'hiking', 'trail-running']	\N
2763	\N	\N	Joyce	47.8602	-123.93449	98331	Spruce Nature Trail and Hall of Mosses Loop	3379.614	4.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
2764	\N	\N	Ashford	46.90221	-121.6428	98304	Burroughs Mountain Loop Via Glacier Basin	16576.202	5	5	loop	['birding', 'hiking', 'trail-running']	\N
2765	\N	\N	Port Angeles	47.96785	-123.58248	98363	Elwha River Trail	41360.038	4.5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2766	\N	\N	Port Angeles	48.04284	-123.33987	98362	Deer Park Road	18990.212	4.5	3	point to point	['nature-trips', 'off-road-driving', 'scenic-driving']	\N
2767	\N	\N	Port Angeles	47.9184	-123.38219	98362	Grand Lake via Badger Valley Trail	13357.522	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2768	\N	\N	Lilliwaup	47.51612	-123.32797	98548	Gladys Divide Primitive Trail	26393.176	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2769	\N	\N	Port Angeles	47.95477	-123.83458	98363	High Divide and Seven Lakes Basin	34761.744	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2770	\N	\N	Lilliwaup	47.57541	-123.26115	98548	Mildred Lakes Trail	9977.908	4	7	out and back	['birding', 'fishing', 'hiking', 'nature-trips']	\N
2771	\N	\N	Quilcene	47.78962	-122.92835	98376	Fallsview Canyon Trail	2092.142	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2772	\N	\N	Paradise Inn	46.78704	-121.73503	98304	Mazama Ridge Trail to Faraway Rock	8368.568	4.5	3	out and back	['hiking', 'snowshoeing']	\N
2773	\N	\N	Orting	46.93472	-121.90727	98304	Paul Peak Trail	10138.842	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2774	\N	\N	Port Angeles	48.03896	-123.4314	98362	Heather Park via Lake Angeles Trail	24301.034	4.5	5	loop	['backpacking', 'camping', 'hiking', 'trail-running', 'horseback-riding']	\N
2775	\N	\N	Quilcene	47.87802	-123.13701	98382	Upper Dungeness Trail to Constance Pass trail Junction	31221.196	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2776	\N	\N	Buckley	46.99489	-121.91588	98323	Ipsut Creek Campground via Carbon River Trail	15610.598	4	1	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
2777	\N	\N	Port Angeles	47.91827	-123.38221	98362	Badger Valley to Grand Lake and Grand Pass Loop	13840.324	5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2778	\N	\N	Buckley	46.91431	-121.64181	98304	Silver Forest Trail	3057.746	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2779	\N	\N	Ashford	46.87433	-121.51667	98937	Tipsoo Lake to American Ridge	25588.506	4	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
2780	\N	\N	Longmire	46.780030000000004	-121.88524	98304	Lake George Trail	14001.258	4	1	out and back	['birding', 'camping', 'hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
2781	\N	\N	Sequim	47.9652	-123.19345	98382	Slab Camp Trail	8851.37	4	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'walking']	\N
2782	\N	\N	Lilliwaup	47.51532	-123.32901	98548	Four Stream Trail	11426.314	4	1	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2783	\N	\N	Sequim	47.87764	-123.13704	98382	Upper Dungeness Trail to Handy Camp	10460.71	4.5	3	out and back	['backpacking', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2784	\N	\N	Port Angeles	47.98648	-123.65145	98363	Olympic Hot Springs, Appleton Pass, and Sol Duc Loop Trail	39106.962	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2785	\N	\N	Port Angeles	48.01229	-123.5931	98363	West Elwha River Trail	9816.974	4.5	3	out and back	['birding', 'hiking', 'walking']	\N
2786	\N	\N	Quinault	47.57272	-123.57051	\N	Enchanted Valley LaCrosse Basin O'Neill Pass Loop	81593.538	5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2787	\N	\N	Marblemount	48.68838	-121.09453	98283	Fourth of July Pass via Panther Creek Trail	14966.862	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2788	\N	\N	Port Angeles	47.91849	-123.38205	98362	Elk Mountain Trail Loop	6920.162	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2789	\N	\N	Longmire	46.7364	-121.85586	98304	Indian Henrys Hunting Ground Trail to Mirror Lakes	18990.212	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2790	\N	\N	Buckley	46.99498	-121.91548	98323	Carbon River Rain Forest Nature Trail	482.802	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2791	\N	\N	Joyce	47.86025	-123.93487	98331	Hoh River Trail to Hoh Lake Trail	46027.124	4.5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2792	\N	\N	Ashford	46.90199	-121.64489	98304	Emmons Moraine Trail	6759.228	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2793	\N	\N	Ashford	46.86977	-121.51942	98022	Tipsoo Lake Loop	1287.472	4.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
2794	\N	\N	Lilliwaup	47.57923	-123.12017	98548	Elk Lake Trail	5632.69	4	1	out and back	['birding', 'hiking', 'nature-trips']	\N
2795	\N	\N	Clallam Bay	48.15477	-124.66884	98326	Sand Point Trail	9495.106	4.5	1	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2796	\N	\N	Ashford	46.78643	-121.73585	98304	Deadhouse Creek Trail to Golden Gate Trail Loop	7724.832	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'scenic-driving', 'trail-running', 'walking']	\N
2797	\N	\N	Port Angeles	48.05713	-123.50131	98363	Olympic National Park Little River Trail	22208.892	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2798	\N	\N	Randle	46.73258	-121.56891	98377	Ohanapecosh Hot Springs Trail	1609.34	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2799	\N	\N	Port Angeles	47.9765	-123.51781	98363	Hurricane Hill Nature Trail to Little River Trail	24783.836	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'horseback-riding']	\N
2800	\N	\N	Longmire	46.73639	-121.85583	98304	Kautz Creek Trail to Mirror Lakes	18990.212	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2801	\N	\N	Sequim	47.85856	-122.88835	98376	Bon Jon Pass OHV Route	51981.682	4	3	point to point	['off-road-driving']	\N
2802	\N	\N	Paradise Inn	46.76895	-121.72436	98361	Faraway Rock via Reflection Lakes	2092.142	4.5	1	out and back	['hiking', 'walking']	\N
2803	\N	\N	Port Angeles	48.01079	-123.91106	98363	North Fork of the Sol Duc Trail	30738.394	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2804	\N	\N	Paradise Inn	46.76539	-121.63566	98361	Indian Bar Trail	23174.496	5	5	out and back	['hiking']	\N
2805	\N	\N	Forks	47.60532	-124.37168	98331	Kalaloch to Browns Point Trail	9012.304	4.5	1	out and back	['birding', 'camping', 'hiking', 'walking']	\N
2806	\N	\N	Paradise Inn	46.73364	-121.8382	98304	Twin Firs Loop Trail	643.736	4.5	1	loop	['hiking', 'walking']	\N
2807	\N	\N	Rockport	48.6854	-121.09254	98283	Ruby Mountain Summit via Fourth of July and Thunder Creek Trail	23335.43	4	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
2808	\N	\N	Rockport	48.70006	-121.21053	98283	Gorge Creek Falls Trail	804.67	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2809	\N	\N	Paradise Inn	46.76576	-121.63502	98361	Box Canyon Trail	482.802	4	1	loop	['hiking', 'walking']	\N
2810	\N	\N	Port Angeles	47.98665	-123.65158	98363	Boulder Lake Trail	19151.146	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'horseback-riding']	\N
2811	\N	\N	Packwood	46.76854	-121.73162	98361	Reflection Lake to Narada Falls via Wonderland Trail	4828.02	4	3	out and back	['hiking', 'nature-trips', 'walking']	\N
2812	\N	\N	Hoodsport	47.50168	-123.32083	98563	Dry Creek Trail	10943.512	4.5	3	out and back	['hiking', 'nature-trips']	\N
2813	\N	\N	Forks	47.56782	-124.36173	98331	Beach Trail 2	5632.69	5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2814	\N	\N	Longmire	46.77909	-121.88458	98304	Emerald Ridge Trail	23174.496	4	5	out and back	['backpacking', 'hiking', 'mountain-biking', 'nature-trips']	\N
2815	\N	\N	Port Angeles	47.96953	-123.49397	98363	Obstruction Point Road	23818.232	4	3	out and back	['nature-trips', 'scenic-driving']	\N
2816	\N	\N	Port Angeles	48.09319	-123.80257	98363	Devil's Punchbowl via Spruce Railroad Trail	3862.416	4.5	1	out and back	['hiking', 'walking']	\N
2817	\N	\N	Port Angeles	48.01696	-123.58866	98363	Griff Creek Trail	7563.898	5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2818	\N	\N	Sekiu	48.15246	-124.66813	98326	Wedding Rocks Trail	13357.522	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2819	\N	\N	Amanda Park	47.50517	-123.82119	98526	Maple Glade Nature Trail	804.67	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2820	\N	\N	Quinault	47.39007	-123.60344	98563	Wynoochee Lake Shore Trail	23979.166	3.5	3	loop	['hiking', 'mountain-biking', 'nature-trips']	\N
2821	\N	\N	Sekiu	48.15452	-124.66891	98326	Point of the Arches Trail	36049.216	4.5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
2822	\N	\N	Buckley	46.93329	-121.86486	98304	Wonderland Trail Loop	144035.93	5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2823	\N	\N	Quinault	47.57591	-123.64796	98575	North Fork Quinault Trail	47958.332	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
2824	\N	\N	Port Angeles	48.05805	-123.78922	98363	Barnes Creek Trail	28002.516	4	5	out and back	['birding', 'camping', 'hiking', 'nature-trips']	\N
2825	\N	\N	Port Angeles	48.01335	-123.58713	98363	Hurricane Hill	17541.806	4	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2826	\N	\N	Sequim	47.87803	-123.137	98382	Upper Maynard Burn Way Trail	15449.664	4.5	5	loop	['birding', 'hiking', 'nature-trips']	\N
2827	\N	\N	Port Angeles	47.9682	-123.58261	98363	Wolf Creek Trail	23657.298	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2828	\N	\N	Quilcene	47.68163	-122.99405	98320	Ranger Hole Trail	2574.944	4.5	1	out and back	['hiking', 'walking']	\N
2829	\N	\N	Enumclaw	47.04921	-121.5702	98022	Dalles Falls Trail	4184.284	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2830	\N	\N	Ashford	46.78446	-121.74129	98304	Muir Snowfield Ski Tour	13357.522	5	5	out and back	['backpacking', 'rock-climbing', 'skiing', 'snowshoeing', 'snowboarding']	\N
2831	\N	\N	Ashford	46.9176	-121.58773	98304	Sunrise Lake Trail	2253.076	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2832	\N	\N	Paradise Inn	46.75997	-121.63921	98361	Stevens Creek Trail	1931.208	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2833	\N	\N	Forks	47.61273	-124.37558	98331	Kalaloch Nature Trail	3218.68	4	1	loop	['birding', 'camping', 'nature-trips', 'walking']	\N
2834	\N	\N	Ashford	46.91468	-121.64182	98304	Sunrise Nature Trail	2414.01	4.5	1	loop	['hiking', 'nature-trips', 'trail-running', 'walking']	\N
2835	\N	\N	La Push	47.91951	-124.63782	98331	Olympic Coast North	32669.602	4.5	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
2836	\N	\N	Buckley	46.93329	-121.86485	98304	Wonderland Trail: Mowich Lake Campground to Ipsut Creek Campground	15771.532	4	5	out and back	['backpacking', 'camping', 'hiking', 'mountain-biking', 'nature-trips']	\N
2837	\N	\N	Deming	48.85009	-121.68649	98244	Mount Shuksan via the Fischer Chimneys Approach	25266.638	4.5	7	out and back	['backpacking', 'camping', 'hiking', 'rock-climbing', 'ice-climbing']	\N
2838	\N	\N	Ashford	46.99496	-121.9155	98323	Florence Peak Trail	11426.314	4	5	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running']	\N
2839	\N	\N	Brinnon	47.7416	-123.04939	98320	Dosweallips Road to Constance Pass Trail	53108.22	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2840	\N	\N	Ashford	46.91445	-121.64236	98304	Dege Peak Trail	6598.294	4.5	3	out and back	['hiking', 'trail-running']	\N
2841	\N	\N	Sequim	47.87802	-123.13699	98382	Lower Dungeness Trail	18346.476	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2842	\N	\N	Hoodsport	47.4794	-123.45202	98548	Upper South Fork Skokomish Trail	10460.71	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'horseback-riding']	\N
2843	\N	\N	Ashford	46.9177	-121.58769	98304	Hidden Lake Spur Via Palisades Lake Trail	9977.908	4.5	3	out and back	['hiking']	\N
2844	\N	\N	Forks	47.95486	-123.83479	98363	Lunch Lake Trail	23657.298	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2845	\N	\N	Port Angeles	47.91832	-123.38225	98362	Lillian Ridge Way Trail	12552.852	4	5	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
2846	\N	\N	Quilcene	47.87861	-123.13693	98382	Royal Basin - Royal Lake	24622.902	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2847	\N	\N	Forks	47.96965	-123.86517	98363	Mink Lake Trail to Blackwood Lake	15127.796	4	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2848	\N	\N	Quinault	47.57273	-123.56998	\N	Enchanted Valley with O'Neil Pass Loop and Anderson Glacier Trek	74995.244	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2849	\N	\N	Ashford	46.91416	-121.64274	98304	Sunrise Backcountry Camp Loop	4345.218	4.5	1	loop	['backpacking', 'hiking']	\N
2852	\N	\N	Brinnon	47.74157	-123.04937	98320	Main Fork Dosewallips River Trail	65661.072	4.5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2853	\N	\N	Montesano	47.513	-123.54366	98563	Lake Sundown Trail	15771.532	4.5	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2854	\N	\N	Forks	47.86057	-123.93522	98331	Olympic National Park Traverse: Hoh to Quinault	151277.96	4.5	7	point to point	['backpacking', 'camping', 'fishing', 'hiking', 'fly-fishing']	\N
2855	\N	\N	Packwood	46.75154	-121.55744	98377	Silver Falls via Silver Falls Trail	804.67	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2856	\N	\N	Quinault	47.56755	-123.65481	98575	Irely Lake Trail	3540.548	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2857	\N	\N	Sequim	47.96515	-123.19349	98382	Baldy Trail	22369.826	5	7	out and back	['birding', 'hiking', 'nature-trips']	\N
2858	\N	\N	Forks	47.56765	-124.36139	98331	Beach 1 Nature Trail	2735.878	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2859	\N	\N	Port Angeles	47.95486	-123.83475	98363	Mount Carrie: High Divide Trail Route	46831.794	5	5	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
2860	\N	\N	Ashford	46.99497	-121.91549	98323	Old Mine Trail	4506.152	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2861	\N	\N	Packwood	46.75817	-121.55743	98361	Mount Rainier Eastside Trail	11587.248	4.5	3	out and back	['hiking']	\N
2862	\N	\N	Ashford	46.90207	-121.6425	98304	Glacier Basin to Burroughs Mountain to Wonderland Trail Loop	15610.598	5	5	loop	['hiking', 'nature-trips', 'trail-running']	\N
2863	\N	\N	Port Angeles	48.0644	-123.99621	98363	Aurora Ridge Trail	46509.926	4	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2864	\N	\N	Ashford	46.7865	-121.73648	98304	Glacier Vista via Avalanche Lily, DeadHorse Creek and Skyline Trail 	4667.086	4.5	3	loop	['hiking', 'trail-running']	\N
2865	\N	\N	Brinnon	47.7416	-123.04939	98320	West Fork Dosewallips River Trail	51498.88	4	5	out and back	['backpacking', 'birding', 'fishing', 'hiking', 'nature-trips']	\N
2866	\N	\N	Amanda Park	47.62403	-124.01517	98526	Queets River Trail	48763.002	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2867	\N	\N	Sequim	47.89263	-122.98753	98376	Deadfall Trail	7402.964	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2868	\N	\N	Port Angeles	47.97207	-123.50822	98363	Press Expedition Traverse	78696.726	4.5	5	point to point	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
2869	\N	\N	Ashford	46.99498	-121.91548	98323	Mystic Lake via Carbon River and Wonderland Trails	40555.368	4.5	5	out and back	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
2870	\N	\N	Port Angeles	47.94896	-123.25814	98362	Cameron Pass Trail	44900.586	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2871	\N	\N	Ashford	46.90206	-121.64227	98304	Emmons Glacier Summit via Glacier Basin Trail	25749.44	4.5	7	out and back	['hiking', 'nature-trips']	\N
2872	\N	\N	Port Angeles	47.94984	-123.26487	98362	Maiden Peak from Deer Park Campground	11265.38	5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2873	\N	\N	Paradise Inn	46.7897	-121.72653	98361	Fourth Crossing Trail	965.604	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
2874	\N	\N	Longmire	46.75011	-121.81253	98304	Mildred Point via Wonderland Trail	14805.928	4.5	5	out and back	['hiking', 'snowshoeing', 'trail-running']	\N
2875	\N	\N	Longmire	46.77839	-121.88297	98304	Tahoma Creek Suspension Bridge to Emerald Ridge Loop	19312.08	4.5	5	loop	['hiking', 'nature-trips', 'trail-running']	\N
2876	\N	\N	Port Angeles	47.95476	-123.83469	98363	Little Divide Loop	22691.694	4.5	7	loop	['birding', 'hiking', 'nature-trips']	\N
2877	\N	\N	Ashford	46.91737	-121.58869	98304	Dege Peak and Frozen Lake via Sourdough Ridge Trail	13679.39	4.5	3	out and back	['birding', 'camping', 'hiking', 'trail-running']	\N
2878	\N	\N	Ashford	46.78629	-121.73403	98304	Skyline, Mazama Ridge, Wonderland and Lower Lakes Trail Loop	8529.502	4.5	3	loop	['hiking', 'nature-trips']	\N
2879	\N	\N	Brinnon	47.72971	-123.14178	98320	Hayden Pass Trail	38141.358	5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2880	\N	\N	Taholah	47.534440000000004	-124.22318	98331	Queets River Road	43452.18	3.5	1	out and back	['nature-trips', 'off-road-driving', 'scenic-driving']	\N
2881	\N	\N	Brinnon	47.74158	-123.04937	98320	Dosewallips River Road Trail	20277.684	4.5	3	out and back	['camping', 'hiking', 'nature-trips', 'trail-running']	\N
2882	\N	\N	Amanda Park	47.6162	-124.0318	98526	Sam's River Trail	4506.152	3.5	1	loop	['camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2883	\N	\N	Orting	46.93296	-121.86289	98304	Golden Lakes Trail	24783.836	4	7	out and back	['bike-touring', 'birding', 'camping', 'hiking', 'mountain-biking', 'nature-trips']	\N
2884	\N	\N	Paradise Inn	46.88791	-121.61007	98304	Goat Island Mountain Trail	14001.258	4	7	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
2885	\N	\N	Ashford	46.78574	-121.73531	98361	Reflection Lakes via Mazada Ridge Loop	10460.71	5	3	loop	['hiking']	\N
2886	\N	\N	Port Angeles	47.98354	-123.6256	98363	Happy Lake Ridge Trail	30899.328	4	5	out and back	['birding', 'camping', 'hiking', 'nature-trips']	\N
2887	\N	\N	Port Angeles	47.949	-123.25792	98362	Gray Wolf Pass	52464.484	4.5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2888	\N	\N	Ashford	46.78603	-121.73489000000001	98361	Norada Falls to Mazama Ridge Loop	11909.116	5	3	loop	['hiking']	\N
2889	\N	\N	Ashford	46.91463	-121.64169	98304	Forest Lake Via Huckleberry Creek and Sourdough Ridge Trails	8529.502	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2890	\N	\N	Stehekin	48.38019	-120.83793	98852	Old Wagon Trail	14805.928	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2891	\N	\N	Forks	47.74944	-124.41896	98331	Oil City Trail	2896.812	4	1	out and back	['hiking', 'walking']	\N
2892	\N	\N	Ashford	46.90211	-121.64231	98304	Wonderland Trail to Shadow Lake	10299.776	5	3	out and back	['camping', 'hiking', 'nature-trips']	\N
2893	\N	\N	Port Angeles	47.94863	-123.25866	98362	Three Forks Trail	13035.654	4	5	out and back	['birding', 'fishing', 'hiking', 'nature-trips']	\N
2894	\N	\N	Stehekin	48.38008	-120.83826	98852	Howard Lake via PCT	4667.086	4.5	1	out and back	['camping', 'hiking', 'walking']	\N
2895	\N	\N	Quinault	47.51158	-123.54607	98563	Wynoochee Pass Trail	12230.984	3.5	3	out and back	['birding', 'hiking']	\N
2896	\N	\N	Paradise Inn	46.83372	-121.53505	98304	Deer Creek Falls to Owyhigh Lakes Trail	14966.862	4	5	out and back	['hiking']	\N
2897	\N	\N	Joyce	47.95475	-123.83461	98363	Canyon Creek and Mink Lake Loop Trail	22691.694	3.5	5	loop	['backpacking', 'camping', 'fishing', 'nature-trips', 'fly-fishing']	\N
2898	\N	\N	Port Angeles	47.94984	-123.26487	98362	Green Mountain from Deer Park Campground	4828.02	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2899	\N	\N	Port Angeles	47.91833	-123.38225	98362	Badger Valley Trail to Grand Pass Trail Loop	16415.268	4.5	5	loop	['backpacking', 'hiking', 'scenic-driving', 'snowshoeing', 'trail-running']	\N
2900	\N	\N	Forks	47.85971	-123.93613	98331	Hoh River and Jackson Creek Trail	5632.69	5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
2901	\N	\N	Ashford	46.93274	-121.86306	98304	Fay Peak Trail	4023.35	3.5	5	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
2902	\N	\N	Packwood	46.76775	-121.70792	98361	Bench Lake	2092.142	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2903	\N	\N	Quinault	47.57276	-123.57004	\N	Graves Creek Trail	28163.45	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2904	\N	\N	Paradise Inn	46.7371	-121.56679	98361	Cowlitz Divide Trail	16737.136	3.5	5	out and back	['hiking', 'trail-running']	\N
2905	\N	\N	Ashford	46.73598	-121.85581	98304	Kautz to Longmire via Indian Henry's Hunting Ground	19473.014	5	5	point to point	['backpacking', 'birding', 'hiking']	\N
2906	\N	\N	Marblemount	48.71904	-121.14768	98283	Stetattle Trail	10621.644	3	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2907	\N	\N	Stehekin	48.43243	-120.87163	\N	Bridge Creek Trail	22369.826	4	5	point to point	['birding', 'camping', 'fishing', 'hiking', 'skiing', 'snowshoeing', 'horseback-riding']	\N
2908	\N	\N	Forks	47.93765	-124.16679	98363	Rugged Ridge Trail	8529.502	3.5	5	out and back	['backpacking', 'camping', 'fishing', 'hiking']	\N
2909	\N	\N	Marblemount	48.48056	-121.07977	98267	Forbidden Peak Trail	11104.446	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing']	\N
2910	\N	\N	Port Angeles	47.91849	-123.38209	98362	Lost Pass Primitive Trail	70650.026	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2911	\N	\N	Quinault	47.56774	-123.65529	98575	Skyline Ridge Trail	87709.03	3	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2912	\N	\N	Port Angeles	48.06456	-123.42747	98362	Olympic National Park Foothills Trail	9656.04	4	5	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'horseback-riding']	\N
2913	\N	\N	Quinault	47.56776	-123.65525	98575	Irely Lake Trail	3379.614	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2914	\N	\N	Beaver	48.06473	-124.11549	98363	Pioneer Path Nature Trail	321.868	4.5	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2915	\N	\N	Port Angeles	48.05695	-123.79984	98363	Bovies Meadow Trail	643.736	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2916	\N	\N	Sequim	47.96708	-123.12743	98382	Baldy Trail (historical) Via Gray Wolf Trail	28485.318	3.5	5	out and back	['hiking']	\N
2917	\N	\N	Port Angeles	47.95473	-123.8346	98363	High Divide Trail and Cat Basin Primitive Trail to Swimming Bear Lakeway Trail	35244.546	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2918	\N	\N	Forks	47.9381	-124.16636	98363	Rugged Ridge to Indian Pass Trail	18668.344	4	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2919	\N	\N	Longmire	46.77861	-121.8837	98304	Westside Road and South Puyallup Trail	19794.882	3.5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'skiing', 'snowboarding']	\N
2920	\N	\N	Brinnon	47.72974	-123.14179	98320	Sunnybrook Meadows Trail	26393.176	5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2921	\N	\N	Ashford	46.99496	-121.9155	98323	Carbon Glacier, Mowich Lake and Itsup Creek Loop Trail	44578.718	5	5	loop	['backpacking', 'camping', 'hiking', 'snowshoeing', 'trail-running', 'cross-country-skiing']	\N
2922	\N	\N	Port Angeles	47.96785	-123.58244	98363	Dodger Point via Long Ridge Trail	54073.824	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2923	\N	\N	Hoodsport	47.51591	-123.32789	98548	O'Neil Pass via North Fork of Skokomish Trail	58579.976	5	7	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2924	\N	\N	Port Angeles	47.94983	-123.26489	98362	Elk Mountain from Deer Pass Campground	17541.806	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2925	\N	\N	Naches	46.8754	-121.5184	98937	Crystal Lake via Sourdough gap and Sheep Lake	12552.852	3.5	3	out and back	['backpacking', 'camping', 'hiking']	\N
2926	\N	\N	Packwood	46.76776	-121.70817	98361	Castle Traverse	8690.436	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2927	\N	\N	Brinnon	47.74157	-123.04936	98320	O'Neill Pass To Lake La Crosse Loop	74834.31	3	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2928	\N	\N	Ashford	46.7901	-121.72674	98304	Mazama Ridge Trail via 4th Crossing Trail	5793.624	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2929	\N	\N	Packwood	46.75992	-121.63936	98361	Steven\\'92s Canyon Waterfalls Trail	13196.588	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2930	\N	\N	Hoodsport	47.57285	-123.57995	\N	Cascading Terraces Nature Trail	1126.538	3	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2931	\N	\N	Rockport	48.91022	-121.592	98244	Little Beaver Trail via Hannegan Pass	51337.946	3	5	point to point	['backpacking', 'birding', 'camping', 'hiking']	\N
2932	\N	\N	Port Angeles	47.94896	-123.25807	98362	Cameron Creek via Three Forks Trail	52947.286	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2933	\N	\N	Marblemount	48.4754	-121.07501	98267	Ptarmigan Traverse	49245.804	5	5	point to point	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
2934	\N	\N	Lilliwaup	47.57276	-123.57049	\N	Six Ridge Trail	51981.682	4	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2935	\N	\N	Sequim	47.94895	-123.25802	98362	Cedar Lake Primitive Trail via Grey Wolf River	41199.104	5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2936	\N	\N	Maple Falls	48.91017	-121.59214	98244	Mount Challenger: Challenger Glacier Route	56487.834	5	7	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
2937	\N	\N	Quinault	47.57599	-123.64794	98575	Olympic Traverse: North Fork to Hoh	159163.726	5	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
2938	\N	\N	Paradise Inn	46.91761	-121.58777	98304	Marcus Peak Trail	13518.456	4	3	loop	['birding', 'hiking', 'nature-trips', 'rock-climbing']	\N
2939	\N	\N	Port Angeles	47.97033	-123.86501	98363	Mink Lake	8046.7	3.5	3	out and back	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
2940	\N	\N	Ashford	46.91574	-121.64378	98304	Sunrise to Mystic Lake via Wonderland Trail	28002.516	5	3	out and back	['backpacking', 'camping', 'hiking']	\N
2941	\N	\N	Ashford	46.75012	-121.81246	98304	Longmire to Mowich Lake	56005.032	5	5	point to point	['backpacking', 'hiking', 'trail-running']	\N
2942	\N	\N	Forks	47.95481	-123.83475	98363	Deer Lake and Little Divide Trail	21726.09	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2943	\N	\N	Port Angeles	47.98651	-123.65142	98363	Everett Peak, and Mount Appleton Loop Trail	27358.78	0	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing']	\N
2944	\N	\N	Port Angeles	47.9704	-123.49405	98363	Hurricane Ridge to Heart of the Hills via Heather Park Trail	15127.796	5	5	point to point	['backpacking', 'hiking']	\N
2945	\N	\N	Winthrop	48.5049	-120.7188	98862	Stiletto Lake via Twisp Pass Trail	28324.384	4	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'trail-running']	\N
2946	\N	\N	Port Angeles	47.96949	-123.86507	98363	Mink Lake Trail to Bogachiel River and Slide Peak Route #2	20116.75	3	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2947	\N	\N	Port Angeles	47.96784	-123.58248	98363	Elwha River and Lillian River Trails	20116.75	5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2948	\N	\N	Quinault	47.56773	-123.65521	98575	Ikeny Lake Trail to Big Creek Trail	20438.618	5	5	out and back	['birding', 'hiking', 'trail-running']	\N
2949	\N	\N	Port Angeles	47.94902	-123.25838	98362	Grey Wolf Deer Loop	71776.564	0	5	loop	['backpacking', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running']	\N
2950	\N	\N	Sequim	47.87773	-123.137	98382	Upper Dungeness Trail to Heather Creek Trail	22369.826	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2951	\N	\N	Sekiu	48.15345	-124.67018	98326	Ericsons Bay Primitive Trail	17863.674	2	3	out and back	['birding', 'hiking']	\N
2952	\N	\N	Port Angeles	47.85604	-123.47025	\N	Remanns Cabin to Dodger Point Lookout	21565.156	4	7	out and back	['backpacking', 'hiking']	\N
2953	\N	\N	Forks	47.8601	-123.93447	98331	Hoh River Trail to Mineral Creek Falls	8851.37	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2954	\N	\N	Moose	43.7672	-110.74426	83414	Cascade Canyon Trail	15610.598	5	3	out and back	['camping', 'hiking']	\N
2955	\N	\N	Moose	43.75094	-110.72384	83414	Jenny Lake Trail	12391.918	4.5	3	loop	['hiking', 'snowshoeing']	\N
2956	\N	\N	Moose	43.69309	-110.73286	83012	Taggart Lake Loop	6598.294	4.5	1	loop	['birding', 'hiking', 'trail-running', 'horseback-riding']	\N
2957	\N	\N	Yellowstone National Park	44.48515	-110.85207	82190	Mystic Falls, Fairy Creek and Little Firehole Loop	5632.69	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2958	\N	\N	Moose	43.73484	-110.74153	83414	Delta Lake via Amphitheater Lake Trail	14484.06	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
2959	\N	\N	Yellowstone National Park	44.51531	-110.8326	82190	Grand Prismatic Hot Spring	2574.944	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2960	\N	\N	Moose	43.73458	-110.74157	83414	Surprise and Amphitheater Lakes Trail	14323.126	5	7	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'canoeing']	\N
2961	\N	\N	Jackson	43.75043	-110.72455	83414	Hidden Falls Trail	7885.766	4.5	1	loop	['birding', 'camping', 'hiking', 'rock-climbing', 'trail-running']	\N
2962	\N	\N	Yellowstone National Park	44.46011	-110.83002	82190	Upper Geyser Basin and Old Faithful Observation Point Loop	7242.03	4.5	1	loop	['hiking', 'nature-trips', 'walking', 'ice-climbing', 'fly-fishing']	\N
2963	\N	\N	Jackson	43.62661	-110.77327	83001	Phelps Lake Trail	11265.38	4.5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
2964	\N	\N	Yellowstone National Park	44.70805	-110.50114	82190	Canyon Rim North Trail to Inspiration Point	12713.786	4	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2965	\N	\N	Alta	43.78486	-110.72747	83414	Lake Solitude Trail	25749.44	5	5	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing']	\N
2966	\N	\N	Yellowstone National Park	44.41557	-110.57378	82190	West Thumb Geyser Basin Trail	1609.34	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2967	\N	\N	Moran	43.78854	-110.73063	83414	String Lake Trail	5954.558	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2968	\N	\N	Yellowstone National Park	44.974	-110.70419	82190	Mammoth Hot Springs Area Trail	5632.69	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2969	\N	\N	Moose	43.69286	-110.73287	83012	Taggart Lake and Bradley Lake Loop	9656.04	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2970	\N	\N	Yellowstone National Park	44.69631	-110.74102	82190	Artists Paintpots Trail	1609.34	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2971	\N	\N	Yellowstone National Park	44.47151	-110.14258	82190	Avalanche Peak Trail	7402.964	5	5	out and back	['birding', 'hiking', 'rock-climbing', 'snowshoeing', 'trail-running']	\N
2972	\N	\N	Yellowstone National Park	44.45952	-110.82641	82190	Old Faithful Geyser Loop Trail	1126.538	4.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
2973	\N	\N	Yellowstone National Park	44.70805	-110.50117	82190	Upper Falls, Lower Falls and Crystal Falls Trail	6115.492	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2974	\N	\N	Jackson	43.65579	-110.7811	83414	Death Canyon to Patrol Cabin	11748.182	4.5	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
2975	\N	\N	Yellowstone National Park	44.71933	-110.49733	82190	Brink of the Lower Falls Trail	1287.472	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2976	\N	\N	Yellowstone National Park	44.52844	-110.8362	82190	Midway Geyser Basin Trail	1287.472	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2977	\N	\N	Yellowstone National Park	44.51599	-110.83268	82190	Fairy Falls	7885.766	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2978	\N	\N	Moose	43.767	-110.74415	83414	Inspiration Point via Jenny Lake Boat Shuttle	2896.812	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
2979	\N	\N	Yellowstone National Park	44.72022	-110.47974	82190	Artist Point Trail	321.868	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
2980	\N	\N	Moose	43.69315	-110.73297	83012	Bradley Lake Trail	8207.634	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2981	\N	\N	Yellowstone National Park	44.62415	-110.43302	82190	Mud Volcano Trail	1126.538	4.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
2982	\N	\N	Moose	43.78906	-110.73163	83414	Leigh Lake Trail	11265.38	4.5	1	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2983	\N	\N	Yellowstone National Park	44.726	-110.7015	82190	Norris Geyser Basin Complete Loop Trail	4345.218	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2984	\N	\N	Yellowstone National Park	44.93227	-110.72788	82190	Bunsen Peak	7081.096	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
2985	\N	\N	Teton Village	43.59711	-110.87089	83025	Teton Crest Trail	41360.038	5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2986	\N	\N	Moose	43.7527	-110.7233	83414	The Grand Teton Loop Trail	50855.144	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'snowboarding']	\N
2987	\N	\N	Yellowstone National Park	44.44448	-110.8046	82190	Lone Star Geyser Trail	8529.502	4.5	1	out and back	['hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
2988	\N	\N	Yellowstone National Park	44.51478	-110.83235	82190	Fairy Creek Trail to Imperial Geyser	10460.71	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'whitewater-kayaking']	\N
2989	\N	\N	Yellowstone National Park	44.5484	-110.80725	82190	Fountain Paint Pot Trail	965.604	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2990	\N	\N	Yellowstone National Park	44.824510000000004	-110.44468	82190	Chittenden Road to Mount Washburn	9012.304	4.5	3	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
2991	\N	\N	Moran	43.90306	-110.6443	83013	Colter Bay Lakeshore Trail	4023.35	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2992	\N	\N	Yellowstone National Park	44.48531	-110.85227	82190	Mystic Falls	3862.416	4.5	1	out and back	['hiking', 'nature-trips']	\N
2993	\N	\N	Yellowstone National Park	44.55638	-110.40305	82190	Elephant Back Mountain Trail	5793.624	4	3	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
2994	\N	\N	Jackson	43.73458	-110.74161	83414	Garnet Canyon Trail to Cleft Falls	12391.918	5	5	out and back	['birding', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
2995	\N	\N	Moose	43.78488	-110.72746	83414	Paintbrush Canyon & String Lake Loop Trail to Lake Solitude	32830.536	4.5	3	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2996	\N	\N	Yellowstone National Park	44.71557	-110.49575	82190	Clear Lake Artist's Point Loop Trail	5471.756	4.5	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
2997	\N	\N	Yellowstone National Park	44.48496	-110.85223	82190	Biscuit Basin Interpretive Trail	1126.538	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
2998	\N	\N	Alta	43.78818	-110.73054	83414	Paintbrush Divide and Lake Solitude	30899.328	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
2999	\N	\N	Yellowstone National Park	44.95621	-110.7017	82190	Osprey Falls Trail	11909.116	4.5	3	out and back	['hiking', 'mountain-biking']	\N
3000	\N	\N	Yellowstone National Park	44.55948	-110.32776	82414	Storm Point Loop	3701.482	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3001	\N	\N	Yellowstone National Park	44.72143	-110.48791	82190	Red Rock Point via Red Point Trail	965.604	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
3002	\N	\N	Yellowstone National Park	44.89205	-110.3867	82190	Tower Falls Trail	1448.406	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3003	\N	\N	Yellowstone National Park	44.13139	-110.8205	83414	Union Falls Trail	24783.836	5	5	out and back	['backpacking', 'camping', 'hiking', 'trail-running', 'horseback-riding']	\N
3004	\N	\N	Moose	43.7673	-110.74414	83414	Hidden Falls Trail	2253.076	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3005	\N	\N	Yellowstone National Park	44.53333	-110.43837	82190	Yellowstone Natural Bridge Trail	4667.086	4	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
3006	\N	\N	Moose	43.71148	-110.67055	83012	Schwabacher's Landing Trail	2896.812	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3007	\N	\N	Moose	43.65616	-110.7815	83414	Phelps Lake Overlook	3218.68	4.5	1	out and back	['hiking', 'trail-running']	\N
3008	\N	\N	Yellowstone National Park	44.46212	-110.85335	82190	Black Sand Basin Trail	804.67	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3009	\N	\N	Yellowstone National Park	44.89911	-110.12296	82190	Trout Lake Loop	1931.208	4.5	1	loop	['birding', 'fishing', 'hiking', 'paddle-sports', 'trail-running', 'walking', 'whitewater-kayaking', 'fly-fishing', 'canoeing']	\N
3010	\N	\N	Yellowstone National Park	44.41565	-110.57497	82190	Yellowstone Lake Overlook Trail	2735.878	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3011	\N	\N	Yellowstone National Park	44.86919	-110.16695	82190	Lamar Valley Trail	11426.314	4.5	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding', 'whitewater-kayaking', 'fly-fishing', 'canoeing']	\N
3012	\N	\N	Moose	43.76705	-110.74415	83414	Lake Solitude via Lake Solitude and Cascade Canyon Trail	22047.958	5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
3013	\N	\N	Yellowstone National Park	44.65227	-110.7716	82190	Gibbon Falls	804.67	4	1	loop	['birding', 'fishing', 'nature-trips', 'walking', 'fly-fishing']	\N
3014	\N	\N	Moose	43.62649	-110.77364	83001	Woodland and Lake Creek Trail Loop	5310.822	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
3015	\N	\N	Jackson	43.75094	-110.72377	83414	Moose Ponds Trail	5149.888	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3016	\N	\N	Teton Village	43.60742	-110.79302	83001	Granite Canyon Trail	18829.278	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'skiing', 'trail-running', 'walking']	\N
3017	\N	\N	Yellowstone National Park	44.72974	-110.47315	82190	Seven Mile Hole Trail	15610.598	4.5	5	out and back	['backpacking', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running']	\N
3018	\N	\N	Yellowstone National Park	44.72018	-110.47974	82190	Point Sublime Trail	4345.218	4.5	1	out and back	['hiking']	\N
3019	\N	\N	Moose	43.84321	-110.61073	83013	Signal Mountain Trail	13357.522	4	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3020	\N	\N	Yellowstone National Park	44.61829	-110.86008	82190	Firehole River Swimming Area	160.934	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3021	\N	\N	Yellowstone National Park	44.71438	-110.50073	82190	Brink of the Upper Yellowstone Falls	482.802	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
3022	\N	\N	Yellowstone National Park	44.70791	-110.50084	82190	Canyon Rim South Trail to Point Sublime	10299.776	4.5	1	out and back	['hiking', 'nature-trips']	\N
3023	\N	\N	Moose	43.66052	-110.66434	83012	Mormon Row's Moulton Barn	321.868	3.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3024	\N	\N	Yellowstone National Park	44.45954	-110.82634	82190	Geyser Hill Loop Trail and Observation Point	4023.35	4.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
3025	\N	\N	Yellowstone National Park	44.94358	-110.30819	82190	Slough Creek Trail	32508.668	4.5	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'paddle-sports', 'horseback-riding', 'whitewater-kayaking', 'fly-fishing', 'canoeing']	\N
3026	\N	\N	Yellowstone National Park	44.94241	-110.62349	82190	Wraith Falls	1287.472	4	1	out and back	['hiking', 'nature-trips']	\N
3027	\N	\N	Yellowstone National Park	44.45925	-110.82629	82190	Yellowstone Observation Point	2414.01	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3028	\N	\N	Moose	43.7886	-110.73093	83414	Bearpaw and Trapper Lake Trail	12552.852	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'paddle-sports', 'walking', 'horseback-riding', 'canoeing']	\N
3029	\N	\N	Teton Village	43.5877	-110.83016	83001	Teton Village Wildflower Trail to Gondola Summit	11909.116	4.5	5	out and back	['hiking', 'nature-trips', 'trail-running']	\N
3030	\N	\N	Moose	43.78867	-110.73062	83414	Leigh Lake Trail: Short Version	4667.086	4.5	1	out and back	['hiking']	\N
3031	\N	\N	Moose	43.73523	-110.74103	83414	Garnet Canyon to The Lower Saddle Trail	19794.882	5	5	out and back	['hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
3032	\N	\N	Yellowstone National Park	44.91182	-110.32773	82190	Petrified Forest Trail	5632.69	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
3033	\N	\N	Moose	43.78486	-110.72742	83414	Holly Lake Trail	19955.816	5	5	out and back	['backpacking', 'camping', 'hiking']	\N
3034	\N	\N	Moose	43.73476	-110.74149	83414	Middle Teton Southwest Couloir	20921.42	4.5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'rock-climbing', 'trail-running']	\N
3035	\N	\N	Moran	43.89414	-110.56905	83013	Grand View Point Trail	8207.634	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3036	\N	\N	Moran	43.90129	-110.64168	83013	Colter Bay Hermitage Point Trail	15449.664	4	1	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'snowshoeing', 'cross-country-skiing']	\N
3037	\N	\N	Yellowstone National Park	44.72606	-110.70195	82190	Porcelain Basin Trail	1448.406	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'walking']	\N
3038	\N	\N	Yellowstone National Park	44.72618	-110.70217	82190	Back Basin Trail	4184.284	4.5	1	loop	['hiking', 'nature-trips', 'walking']	\N
3039	\N	\N	Yellowstone National Park	44.97817	-110.69364	82190	Lava Creek Canyon Trail to Undine Falls	13357.522	4	3	out and back	['backpacking', 'camping', 'fishing', 'hiking', 'snowshoeing', 'trail-running', 'cross-country-skiing', 'horseback-riding', 'fly-fishing']	\N
3040	\N	\N	Yellowstone National Park	44.45639	-110.83385	82190	Old Faithful to Madison Junction	27036.912	5	1	point to point	['nature-trips', 'road-biking', 'scenic-driving']	\N
3041	\N	\N	Yellowstone National Park	44.12908	-110.84761	83414	Cascade Creek Trail to Terraced Falls	5954.558	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3042	\N	\N	Moose	43.65587	-110.7813	83414	Static Peak	27036.912	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
3043	\N	\N	Moran	43.78485	-110.72729	83414	Jenny Lake Loop via String Lake Trailhead	12070.05	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
3044	\N	\N	Moran	43.90115	-110.64166	83013	Swan Lake and Heron Pond Trail	5149.888	4	1	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3045	\N	\N	Yellowstone National Park	44.64644	-110.85511	82190	Purple Mountain Trail	10460.71	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
3046	\N	\N	Yellowstone National Park	44.72626	-110.70146	82190	Norris Geyser Basin	2735.878	4.5	1	loop	['hiking', 'walking']	\N
3047	\N	\N	Yellowstone National Park	44.44681	-110.70121	82190	Shoshone Lake Via Delacy Creek Trail	10138.842	4	1	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'paddle-sports', 'walking']	\N
3048	\N	\N	Moran	43.90098	-110.50135	83013	Two Ocean Lake Trail	9816.974	4	3	loop	['birding', 'hiking']	\N
3049	\N	\N	Yellowstone National Park	44.91265	-110.41669	82190	Lost Lake Loop Trail	4828.02	4	1	loop	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
3050	\N	\N	Yellowstone National Park	44.7154	-110.49653	82190	Canyon Rim South Trail to Artist Point	4023.35	4.5	1	out and back	['hiking', 'walking']	\N
3051	\N	\N	Moran	43.74974	-110.7298	83414	Cascade Canyon to Hurricane Pass Trail	36049.216	5	5	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'paddle-sports']	\N
3052	\N	\N	Moran	44.04762	-110.68966	83013	Grand Teton National Park Road Trip	65661.072	5	1	point to point	['road-biking', 'scenic-driving']	\N
3053	\N	\N	Teton Village	43.58756	-110.82792	83025	Teton Village Tram Ride	3701.482	4.5	1	point to point	['birding', 'nature-trips']	\N
3054	\N	\N	Yellowstone National Park	44.31995	-110.59948	82190	Lewis River Channel Loop	17541.806	4.5	3	loop	['backpacking', 'camping', 'fishing', 'hiking', 'mountain-biking', 'paddle-sports', 'trail-running', 'whitewater-kayaking', 'fly-fishing', 'canoeing']	\N
3055	\N	\N	Moose	43.6558	-110.78132	83414	Phelps Lake	7081.096	4.5	3	out and back	['hiking', 'trail-running']	\N
3056	\N	\N	Yellowstone National Park	44.94897	-110.45107	82190	Hellroaring Creek to Yellowstone River	3379.614	4.5	3	out and back	['hiking']	\N
3057	\N	\N	Moose	43.65579	-110.7811	83414	Death Canyon Loop	41038.17	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running']	\N
3058	\N	\N	Moose	43.69806	-110.72893	83012	Teton Park Road	24944.77	5	1	point to point	['birding', 'hiking', 'nature-trips', 'road-biking', 'scenic-driving', 'trail-running', 'walking']	\N
3059	\N	\N	Moose	43.59701	-110.87123	83025	Marion Lake Trail	21565.156	4.5	5	loop	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
3060	\N	\N	Yellowstone National Park	44.75158	-110.4859	82190	Cascade Lake Trail	7081.096	4	3	out and back	['birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'paddle-sports', 'trail-running', 'walking', 'canoeing']	\N
3061	\N	\N	Yellowstone National Park	44.53535	-110.81771	82190	Firehole Lake Drive	5310.822	4.5	1	point to point	['nature-trips', 'scenic-driving', 'walking']	\N
3062	\N	\N	Yellowstone National Park	44.75033	-110.49141	82190	Cascade Lake Trail to Observation Peak	14966.862	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3063	\N	\N	Yellowstone National Park	44.90176	-110.39314	82190	Calcite Springs Overlook Trail	321.868	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3064	\N	\N	Moose	43.73443	-110.74154	83414	Surprise, Amphitheater and Delta Lakes via Amphitheater Trail	18507.41	5	5	out and back	['birding', 'fishing', 'hiking', 'nature-trips']	\N
3065	\N	\N	Yellowstone National Park	44.35837	-110.58205	82190	Riddle Lake Trail	7563.898	4	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3066	\N	\N	Yellowstone National Park	44.91683	-110.40025	82190	Yellowstone River Picnic Area Loop Trail	6276.426	4.5	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3067	\N	\N	Teton Village	43.59724	-110.87128	83025	Jackson Hole Mountain Resort Loop	4988.954	4.5	3	loop	['hiking', 'mountain-biking', 'nature-trips', 'road-biking', 'rock-climbing', 'skiing', 'trail-running', 'snowboarding']	\N
3068	\N	\N	Yellowstone National Park	44.91588	-110.41665	82190	Garnet Hill Loop Trail	14001.258	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
3069	\N	\N	Yellowstone National Park	44.48557	-110.85224	82190	Mystic Falls - Geyser Basin Loop	14323.126	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3070	\N	\N	Yellowstone National Park	44.97359	-110.70451	82190	Electric Peak	32669.602	5	5	out and back	['backpacking', 'camping', 'hiking', 'horseback-riding']	\N
3071	\N	\N	Yellowstone National Park	44.71981	-110.48014	82190	Ribbon Lake Trail	6598.294	4	1	out and back	['birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3072	\N	\N	Moose	43.86616	-110.54766	83013	Oxbow Bend Overlook	0	4	1	out and back	['nature-trips']	\N
3073	\N	\N	Yellowstone National Park	44.91234	-110.38736	82190	Specimen Ridge Trail	27197.846	4.5	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'horseback-riding']	\N
3074	\N	\N	Yellowstone National Park	44.44449	-110.80458	82190	Bechler River Trail: Lone Star Trailhead to Belcher Ranger Station	61959.59	5	3	point to point	['backpacking', 'camping', 'hiking']	\N
3075	\N	\N	Yellowstone National Park	44.14865	-111.04654	82190	Dunanda Falls and Silver Scarf Falls Trail	27358.78	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
3076	\N	\N	Moose	43.65578	-110.7811	83414	Mount Hunt Divide via Death Canyon Trail	36210.15	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
3077	\N	\N	Yellowstone National Park	44.64025	-110.88732	82190	Harlequin Lake Trail	1609.34	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3078	\N	\N	Yellowstone National Park	44.68367	-110.74457	82190	Monument Geyser Basin Trail	3701.482	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3079	\N	\N	Yellowstone National Park	44.93215	-110.72805	82190	Osprey Falls	13679.39	4.5	3	out and back	['hiking']	\N
3080	\N	\N	Moose	43.76718	-110.74424	83414	Lake of the Crags Trail	6920.162	4.5	5	out and back	['hiking', 'nature-trips', 'trail-running']	\N
3081	\N	\N	Yellowstone National Park	44.44681	-110.70158	82190	Delacy Creek Trail to Shoshone Lake	45544.322	4.5	5	loop	['backpacking', 'camping', 'fishing', 'hiking', 'paddle-sports', 'trail-running', 'whitewater-kayaking', 'fly-fishing', 'canoeing']	\N
3082	\N	\N	Yellowstone National Park	44.72148	-110.48787	82190	Brink of Lower Falls via North Rim Trail	3701.482	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
3083	\N	\N	Yellowstone National Park	44.97375	-110.70439	82190	Sepulcher Mountain Trail	18024.608	4.5	5	loop	['backpacking', 'hiking', 'trail-running']	\N
3084	\N	\N	Yellowstone National Park	44.71277	-110.627	82190	Ice Lake and Little Gibbon Falls Loop	5954.558	4	1	loop	['camping', 'fishing', 'hiking', 'paddle-sports', 'walking', 'canoeing']	\N
3085	\N	\N	Yellowstone National Park	44.50569	-110.27554	82414	The Thorofare and South Boundary Trail	108630.45	5	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'horseback-riding']	\N
3086	\N	\N	Yellowstone National Park	44.71969	-110.4803	82190	Lily Pad Lake via Artist's Point	3218.68	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3087	\N	\N	Yellowstone National Park	44.31711	-110.59861	82190	Heart Lake Trail	23979.166	4.5	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'fly-fishing']	\N
3088	\N	\N	Moran	43.90369	-110.64383	83013	Colter Bay Village	2092.142	4	1	out and back	['birding', 'camping', 'nature-trips', 'road-biking', 'trail-running', 'walking']	\N
3089	\N	\N	Alta	43.75571	-110.91539	83414	Devil Staircase, Death Canyon Shelf and Phelps Lake	34278.942	4.5	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
3090	\N	\N	Yellowstone National Park	44.95555	-110.59363	82190	Blacktail Deer Creek Trail	11909.116	4.5	3	out and back	['fishing', 'hiking', 'paddle-sports', 'walking', 'whitewater-kayaking', 'fly-fishing', 'canoeing']	\N
3091	\N	\N	Yellowstone National Park	44.5672	-110.83514	82190	Sentinel Meadows Trail	5632.69	4.5	3	out and back	['camping', 'hiking', 'nature-trips', 'walking']	\N
3092	\N	\N	Yellowstone National Park	44.93223	-110.72793	82190	Bunsen Peak Loop	16093.4	5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
3093	\N	\N	Yellowstone National Park	44.9738	-110.70431	82190	Palette Spring via Mammoth Terraces	482.802	4	1	out and back	['hiking', 'walking']	\N
3094	\N	\N	Moran	43.87751	-110.57794	83013	Lunch Tree Hill Trail	804.67	4	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3095	\N	\N	Moran	43.78852	-110.73063	83414	Holly Lake via Leigh Lake Trail to Paintbrush Canyon Trail	20921.42	5	5	out and back	['hiking']	\N
3096	\N	\N	Yellowstone National Park	44.93225	-110.72812	82190	The Hoodoos	8690.436	4	3	out and back	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'horseback-riding']	\N
3097	\N	\N	Yellowstone National Park	44.91556	-110.43848	82190	Petrified Tree Trail	160.934	3.5	1	out and back	['birding', 'nature-trips', 'walking']	\N
3098	\N	\N	Yellowstone National Park	44.71876	-110.48242	82190	South Rim to Ribbon Lake Loop Trail	12713.786	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3099	\N	\N	Yellowstone National Park	44.51543	-110.8325	82190	Fairy Falls and Imperial Geyser Loop	14162.192	4.5	3	loop	['hiking', 'nature-trips']	\N
3100	\N	\N	Yellowstone National Park	44.9124	-110.38709	82190	Specimen Ridge and Amethyst Mountain Trails	12874.72	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3101	\N	\N	Yellowstone National Park	44.94085	-110.6321	82190	Upper and Lower Undine Falls	2574.944	4	1	out and back	['birding', 'fishing', 'hiking', 'walking']	\N
3102	\N	\N	Moose	43.66135	-110.69771	83012	Black Tail Butte Peak Trail	10460.71	4.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3103	\N	\N	Yellowstone National Park	44.50703	-110.83344	82190	Mystic Falls to Ferry Creek Loop	27197.846	4.5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
3104	\N	\N	Yellowstone National Park	44.70785	-110.50075	82190	Clear Lake Artist's Point Loop via Wapiti Lake Trailhead	7402.964	4.5	1	loop	['hiking']	\N
3105	\N	\N	Yellowstone National Park	44.86912	-110.16671	82190	Lamar River Trail	52947.286	4	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'horseback-riding', 'fly-fishing']	\N
3106	\N	\N	Yellowstone National Park	44.6454	-110.85848	82190	Madison Junction to Norris Drive	21404.222	4.5	3	point to point	['nature-trips', 'scenic-driving']	\N
3107	\N	\N	Yellowstone National Park	44.91681	-110.40055	82190	Yellowstone River Overlook Trail via Yellowstone Picnic Ground Trailhead	5149.888	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3108	\N	\N	Yellowstone National Park	44.56523	-110.37464	82190	Hayden Valley Trail	21887.024	4.5	5	point to point	['backpacking', 'fishing', 'hiking', 'trail-running']	\N
3109	\N	\N	Yellowstone National Park	44.56715	-110.8352	82190	Fairy Falls Lollipop Trail	13840.324	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3110	\N	\N	Moose	43.65578	-110.78109	83414	Death Canyon and Phelps Lake Loop	12230.984	5	3	loop	['camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3111	\N	\N	Yellowstone National Park	44.93221	-110.72802	82190	Terrace Mountain Trail	10782.578	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'cross-country-skiing']	\N
3112	\N	\N	Moose	43.77771	-110.55751	83012	Cunningham Cabin	321.868	4.5	1	loop	['hiking', 'walking']	\N
3113	\N	\N	Yellowstone National Park	44.41623	-110.57513	82190	Duck Lake Trail	1448.406	3.5	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3114	\N	\N	Yellowstone National Park	44.56017	-110.36061	82190	Pelican Creek Nature Trail	1126.538	3.5	1	loop	['birding', 'fishing', 'hiking', 'nature-trips', 'walking']	\N
3115	\N	\N	Yellowstone National Park	44.72957	-110.47261	82190	Seven Mile Hole to Mount Washburn Spur	17863.674	4.5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'mountain-biking', 'nature-trips', 'trail-running', 'walking']	\N
3116	\N	\N	Jackson	43.65573	-110.71829	83012	North South Highway: Moose to Rockefeller Parkway	62281.458	5	1	point to point	['bike-touring', 'birding', 'camping', 'fishing', 'nature-trips', 'paddle-sports', 'road-biking', 'scenic-driving', 'walking', 'canoeing']	\N
3117	\N	\N	Yellowstone National Park	44.56985	-110.81633	82190	Mary Mountain-Nez Perce Trail	32186.8	4	5	point to point	['backpacking', 'birding', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'fly-fishing']	\N
3118	\N	\N	Yellowstone National Park	44.45828	-110.82592	82190	Mallard Lake Trail	11748.182	3.5	3	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
3119	\N	\N	Moose	43.62641	-110.66468	83012	Blacktail Butte Trail	11748.182	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
3120	\N	\N	Yellowstone National Park	44.91601	-110.41562	82190	Tower-Roosevelt to Canyon Village Drive	28324.384	4.5	3	point to point	['birding', 'nature-trips', 'scenic-driving']	\N
3121	\N	\N	Yellowstone National Park	44.94903	-110.45043	82190	Black Canyon Trail	20760.486	5	3	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'fly-fishing']	\N
3122	\N	\N	Moran	43.87812	-110.5727	83013	Emma Matilda Lake Trail	17702.74	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3123	\N	\N	Yellowstone National Park	44.45921	-110.82631	82190	Solitary Geyser	2574.944	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3124	\N	\N	Yellowstone National Park	44.65882	-111.09744	59758	West Yellowstone to Jackson Scenic Drive	200201.896	4.5	1	point to point	['nature-trips', 'scenic-driving']	\N
3125	\N	\N	Yellowstone National Park	44.78482	-110.45348	82190	Dunraven Pass to Mount Washburn	10943.512	4.5	5	out and back	['backpacking', 'camping', 'hiking']	\N
3126	\N	\N	Yellowstone National Park	44.31743	-110.59815	82190	Heart Lake and the Snake River Trails	38624.16	4	5	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'paddle-sports', 'trail-running', 'whitewater-kayaking', 'fly-fishing', 'canoeing']	\N
3127	\N	\N	Yellowstone National Park	44.71791	-110.5497	82190	Grebe Lake Trail	10460.71	4	1	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'fly-fishing']	\N
3128	\N	\N	Yellowstone National Park	44.56789	-110.38482	82190	Fishing Bridge to West Thumb Scenic Drive	32669.602	4	1	point to point	['birding', 'fishing', 'nature-trips', 'paddle-sports', 'road-biking', 'scenic-driving', 'walking', 'canoeing']	\N
3129	\N	\N	Yellowstone National Park	44.94884	-110.45101	82190	Yellowstone River Trail	27519.714	5	5	point to point	['backpacking', 'hiking', 'trail-running']	\N
3130	\N	\N	Yellowstone National Park	44.28293	-110.62774	82190	Lewis Lake Campground	1770.274	4.5	1	loop	['camping', 'hiking', 'walking']	\N
3131	\N	\N	Yellowstone National Park	44.32004	-110.59952	82190	Lewis Lake Trail	13196.588	5	3	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'paddle-sports', 'fly-fishing', 'canoeing']	\N
3132	\N	\N	Yellowstone National Park	44.71279	-110.62718	82190	Wolf Lake Trail	11104.446	4	1	out and back	['hiking']	\N
3133	\N	\N	Wilson	43.59695	-110.87107	83025	Rendezvous Mountain Trail	11104.446	4.5	5	out and back	['hiking', 'nature-trips']	\N
3134	\N	\N	Moran	43.87804	-110.5724	83013	Lookout Rock Trail	7081.096	3.5	3	loop	['birding', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'walking']	\N
3135	\N	\N	Yellowstone National Park	44.56764	-110.83503	82190	Sentinel Meadows to Queen's Laundry	7563.898	4	3	loop	['birding', 'nature-trips', 'trail-running', 'walking']	\N
3136	\N	\N	Yellowstone National Park	44.73719	-110.6978	82190	Norris Campground to Norris Basin Loop	5793.624	4.5	3	loop	['hiking', 'walking']	\N
3137	\N	\N	Moose	43.87811	-110.57261	83013	Christian Pond Trail	5632.69	3.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3138	\N	\N	Yellowstone National Park	44.48502	-110.85241	82190	Firehole Falls via Little Firehole Trail	16254.334	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
3139	\N	\N	Yellowstone National Park	44.70793	-110.50053	82190	Wapiti Lake Trail	50372.342	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
3140	\N	\N	Yellowstone National Park	44.9322	-110.72797	82190	Electric Peak Trail	29450.922	5	7	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
3141	\N	\N	Yellowstone National Park	44.91591	-110.10925	82190	Pebble Creek Trail To Bliss Pass	41681.906	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
3142	\N	\N	Yellowstone National Park	44.31735	-110.59824	82190	Heart Lake Loop Trail	51498.88	4.5	3	loop	['backpacking', 'camping', 'fishing', 'hiking', 'rock-climbing', 'snowshoeing', 'trail-running', 'fly-fishing']	\N
3143	\N	\N	Yellowstone National Park	44.88254	-110.73509	82190	Bighorn Pass Trail from Indian Creek Campground	30899.328	5	3	point to point	['backpacking', 'camping', 'hiking', 'snowshoeing', 'walking', 'cross-country-skiing']	\N
3144	\N	\N	Moran	43.78482	-110.72815	83414	Hidden Falls via String Lake Trail	7402.964	4.5	1	out and back	['hiking', 'nature-trips', 'trail-running']	\N
3145	\N	\N	Yellowstone National Park	44.71984	-110.48023	82190	Artist's Point, Lily Pad Lake, and Clear Lake Loop	5310.822	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3146	\N	\N	Yellowstone National Park	44.92215	-110.40052	82190	Yellowstone River Overlook Trail	7402.964	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3147	\N	\N	Moose	43.73472	-110.74143	83414	Bradley and Taggart Lakes via Valley Trail and Lupine Meadows	16576.202	4.5	3	out and back	['backpacking', 'hiking', 'trail-running']	\N
3148	\N	\N	Yellowstone National Park	44.71522	-110.49621	82190	Uncle Tom's Trail [CLOSED]	965.604	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
3149	\N	\N	Yellowstone National Park	44.14896	-111.0481	82190	Boundary Creek to Buffalo Lake Trail	54073.824	5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking', 'horseback-riding']	\N
3150	\N	\N	Yellowstone National Park	44.31741	-110.59824	82190	Mount Sheridan Trail	36049.216	4.5	7	out and back	['backpacking', 'hiking', 'trail-running']	\N
3151	\N	\N	Yellowstone National Park	44.14487	-110.99756000000001	82190	Cave Falls to Bechler Falls	4023.35	4.5	1	out and back	['birding', 'hiking', 'walking']	\N
3152	\N	\N	Alta	43.75596	-110.91551	83414	Teton Canyon to Jenny Lake	34278.942	4.5	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
3153	\N	\N	Yellowstone National Park	44.54427	-110.78514	82190	Black Warrior Lake and Firehole Lake	643.736	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3154	\N	\N	Moose	43.78382	-110.72882	83414	Hanging Canyon to Lake of the Crags	12713.786	5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
3155	\N	\N	Alta	43.75571	-110.91539	83414	Teton Canyon to Phelps Lake via Alaska Basin Trail	32347.734	5	7	point to point	['backpacking', 'camping', 'hiking', 'trail-running']	\N
3156	\N	\N	Yellowstone National Park	44.68354	-110.49365	82190	Mary Mountain-Nez Pierce Trail	31382.13	3.5	3	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3157	\N	\N	Yellowstone National Park	44.92807	-111.04901	82190	Bighorn Pass Trail from US 191	31864.932	4.5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'snowshoeing', 'cross-country-skiing', 'fly-fishing']	\N
3158	\N	\N	Yellowstone National Park	44.97374	-110.70439	82190	Clagett Butte - Snow Pass Loop	7563.898	4.5	3	loop	['birding', 'hiking', 'trail-running']	\N
3159	\N	\N	Yellowstone National Park	44.55984	-110.31872	\N	Pelican Valley Trail	25266.638	4	3	point to point	['backpacking', 'hiking', 'trail-running']	\N
3160	\N	\N	Moran	44.08943	-110.72416	83013	Webb Canyon Trail-Moose Basin Divide-Owl Creek Canyon	50211.408	4	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'paddle-sports', 'trail-running', 'canoeing']	\N
3161	\N	\N	Moose	43.84152	-110.50777	83013	Wyoming Centennial Scenic Byway (North): Moran Junction to Dubois	89318.37	5	3	point to point	['nature-trips', 'scenic-driving']	\N
3162	\N	\N	Teton Village	43.73452	-110.74156	83414	Teton Valley Trail	24944.77	3.5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
3163	\N	\N	Moose	43.62651	-110.77385	83001	Aspen Ridge Trail	9173.238	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3164	\N	\N	Yellowstone National Park	44.95544	-110.59361	82190	Crevice Lake Trail	14644.994	4.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3165	\N	\N	Teton Village	43.58867	-110.82754	83025	Granite Canyon to the Tram	21243.288	4.5	5	point to point	['hiking', 'trail-running']	\N
3166	\N	\N	Yellowstone National Park	44.12557	-110.78638	83414	Beula Lake Trail	8529.502	4	3	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'paddle-sports', 'walking', 'whitewater-kayaking', 'fly-fishing', 'canoeing']	\N
3167	\N	\N	Yellowstone National Park	44.92177	-110.09519	82190	Thunderer Cutoff Trail	15771.532	4.5	5	out and back	['backpacking', 'hiking', 'trail-running']	\N
3168	\N	\N	Yellowstone National Park	44.71689	-110.63401	82190	Chain of Lakes	17219.938	4	3	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'fly-fishing']	\N
3169	\N	\N	Yellowstone National Park	44.95067	-111.05895	59730	Fawn Pass Trail	32669.602	4.5	5	point to point	['backpacking', 'birding', 'hiking', 'nature-trips', 'skiing']	\N
3170	\N	\N	Yellowstone National Park	44.79619	-111.10323	59758	Gneiss Creek Trail	22369.826	3.5	3	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'walking', 'fly-fishing']	\N
3171	\N	\N	Yellowstone National Park	44.95541	-110.59359	82190	Rescue Creek Trail	25749.44	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3172	\N	\N	Yellowstone National Park	44.56686	-110.37337	82190	Howard Eaton Trail	21565.156	3.5	3	point to point	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
3173	\N	\N	Yellowstone National Park	44.70766	-110.50035	82190	Wrangler Lake Trail	12874.72	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3174	\N	\N	Moran	43.76719	-110.74422	83414	South Fork Cascade Canyon to Hurricane Pass	29129.054	5	7	out and back	['backpacking', 'camping', 'hiking']	\N
3175	\N	\N	Alta	43.75569	-110.91538	83414	Teton Canyon to Phelps Lake via Alaska Basin, Teton Crest, and Death Canyon Trails	37336.688	4.5	5	point to point	['backpacking', 'hiking', 'trail-running']	\N
3176	\N	\N	Moran	44.13698	-110.66593	83013	Snake River South Boundary Loop	44256.85	3	3	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'paddle-sports', 'snowshoeing', 'trail-running', 'whitewater-kayaking', 'canoeing']	\N
3177	\N	\N	Dubois	43.75188	-110.00698	82513	Jade,  Upper Brooks, Rainbow Lakes Loop	14323.126	5	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3178	\N	\N	Jackson	43.5743	-110.73319	83001	Gros Ventre Slide: Bridger-Teton National Forest	20438.618	3.5	1	point to point	['birding', 'nature-trips', 'scenic-driving']	\N
3179	\N	\N	Yellowstone National Park	44.45363	-110.82961	82190	Howard Eaton/Lone Star Trail	9012.304	4.5	3	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
3180	\N	\N	Yellowstone National Park	44.7352	-110.50336	82190	Grebe Lake via Cascade Creek Trail	15771.532	5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
3181	\N	\N	Yellowstone National Park	44.91681	-110.40057	82190	Agate Creek Trail	23335.43	4.5	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
3182	\N	\N	Yellowstone National Park	44.56014	-110.31741	\N	Pelican Creek Loop Trail	50533.276	4	3	loop	['birding', 'hiking', 'nature-trips', 'paddle-sports', 'walking', 'whitewater-kayaking', 'canoeing']	\N
3183	\N	\N	Moose	43.65579	-110.78021	83414	Buck Mountain Summit	14805.928	4	7	out and back	['birding', 'hiking', 'nature-trips']	\N
3184	\N	\N	Yellowstone National Park	44.79896	-110.74525	82190	Grizzly Lake Trail	12713.786	2.5	3	out and back	['birding', 'camping', 'fishing', 'hiking', 'paddle-sports', 'walking', 'canoeing']	\N
3185	\N	\N	Moose	43.65698	-110.78044	83414	Granite Canyon and Teton Crest Trail Loop	90605.842	4.5	7	loop	['backpacking', 'hiking']	\N
3186	\N	\N	Yellowstone National Park	44.43476	-110.73487	82190	Divide Mountain Trail	5471.756	3	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3187	\N	\N	Kelly	43.69978	-110.61533	83001	Antelope Spring Loop Trail	10943.512	5	3	loop	['birding', 'mountain-biking', 'nature-trips', 'walking']	\N
3188	\N	\N	Yellowstone National Park	44.48903	-110.00476	82414	East Entrance to Fishing Bridge Drive	40233.5	4	3	point to point	['birding', 'nature-trips', 'scenic-driving', 'walking']	\N
3189	\N	\N	Moose	43.65579	-110.7811	83414	Death Canyon Trail	30094.658	4.5	5	out and back	['birding', 'hiking', 'nature-trips']	\N
3190	\N	\N	Yellowstone National Park	44.4849	-110.85205	82190	Summit Lake Trail	55039.428	4	5	out and back	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'paddle-sports', 'trail-running', 'canoeing']	\N
3191	\N	\N	Yellowstone National Park	44.8896	-110.39146	82190	Tower Creek Trail	11104.446	3.5	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
3192	\N	\N	Yellowstone National Park	44.4704	-110.1427	82190	Eleanor Lake Trail	643.736	5	1	loop	['birding', 'fishing', 'hiking', 'mountain-biking', 'nature-trips', 'paddle-sports', 'walking', 'whitewater-kayaking', 'canoeing']	\N
3193	\N	\N	Yellowstone National Park	44.50569	-110.27556	82414	Yellowstone Lake to Old Faithful via Southern Boundary	233998.036	3.5	5	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'horseback-riding']	\N
3194	\N	\N	Yellowstone National Park	44.28265	-110.6287	82190	Shoshone Lake Via Canoe	47958.332	5	3	out and back	['camping', 'paddle-sports', 'canoeing']	\N
3232	\N	\N	Moran	44.09338	-110.66305	83013	Sheffield Creek Trail	19955.816	3	5	out and back	['birding', 'hiking', 'nature-trips']	\N
3195	\N	\N	Teton Village	43.59597	-110.87359000000001	83025	Rendezvous Mountain Trail to String Lake	69684.422	4.5	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
3196	\N	\N	Alta	43.76045	-110.98733	83414	Teton Canyon Road	12713.786	4.5	3	out and back	['nature-trips', 'cross-country-skiing']	\N
3197	\N	\N	Yellowstone National Park	44.94902	-110.45044	82190	Buffalo Plateau Trail	30094.658	5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3198	\N	\N	Yellowstone National Park	44.94353	-110.30791	82190	Bliss Pass via Slough Creek	30255.592	4.5	5	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'fly-fishing']	\N
3199	\N	\N	Teton Village	43.60738	-110.79301	83001	Open Canyon Trail to Marion Lake	40555.368	4	5	out and back	['camping', 'hiking']	\N
3200	\N	\N	Yellowstone National Park	44.86859	-110.17452	82190	Lamar River Stock Cutoff Trail	2896.812	3.5	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3201	\N	\N	Moose	43.65123	-110.70768	83012	Grand Teton National Park Pathway	17059.004	5	1	point to point	['birding', 'nature-trips', 'road-biking', 'trail-running', 'walking']	\N
3202	\N	\N	Yellowstone National Park	44.56153	-110.31591	82190	Hayden\\'92s Valley Loop	34278.942	4.5	3	loop	['hiking', 'nature-trips', 'trail-running']	\N
3203	\N	\N	Yellowstone National Park	44.48498	-110.85309	82190	Biscuit Basin to Goose Lake via Little Firehole	26232.242	4	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips']	\N
3204	\N	\N	Yellowstone National Park	44.1493	-111.04691	82190	Bechler Short Loop Trail	12713.786	4.5	3	loop	['backpacking', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3205	\N	\N	Yellowstone National Park	44.14954	-111.04579	82190	Falls River Basin Trail	25266.638	5	3	loop	['backpacking', 'camping', 'hiking', 'trail-running']	\N
3206	\N	\N	Cody	44.88282	-109.65128	82414	Clark's Fork Canyon West End Trail	9173.238	4	1	out and back	['birding', 'hiking', 'horseback-riding']	\N
3207	\N	\N	Yellowstone National Park	44.8382	-110.73258	82190	Mount Holmes Trail	34278.942	4	7	out and back	['backpacking', 'camping', 'hiking']	\N
3208	\N	\N	Yellowstone National Park	44.29706	-110.23416	82190	Two Ocean Loop Trail	79662.33	0	3	loop	['birding', 'hiking', 'nature-trips', 'paddle-sports', 'walking', 'whitewater-kayaking']	\N
3209	\N	\N	Yellowstone National Park	44.52965	-110.83632	82190	Firehole River Trail	1448.406	2.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
3210	\N	\N	Yellowstone National Park	44.93221	-110.72804	82190	Cache Lake Trail	18990.212	3.5	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
3211	\N	\N	Moran	44.08979	-110.72416	83013	Glade Creek Trail	11426.314	4	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3212	\N	\N	Moose	43.65579	-110.7811	83414	Death Canyon Trailhead to Jenny Lake Dock	51498.88	5	3	point to point	['backpacking', 'camping', 'nature-trips', 'walking']	\N
3213	\N	\N	Yellowstone National Park	44.31735	-110.59824	82190	Heart Lake and the Two Ocean Plateau Loop Trail	96238.532	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running']	\N
3214	\N	\N	Yellowstone National Park	44.50589	-110.27583	82414	Yellowstone Lake to Heart Lake Trail	79501.396	5	5	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'fly-fishing']	\N
3215	\N	\N	Yellowstone National Park	44.13147	-110.82062	83414	Pitchstone Plateau Trail	29129.054	4.5	3	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'snowshoeing', 'trail-running', 'cross-country-skiing']	\N
3216	\N	\N	Yellowstone National Park	44.50636	-110.27592	82190	Turbid Lake Trail	21082.354	3.5	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3217	\N	\N	Yellowstone National Park	44.91214	-110.38741	82190	Agate Creek	20599.552	5	5	out and back	['backpacking', 'birding', 'fishing', 'hiking', 'nature-trips', 'fly-fishing']	\N
3218	\N	\N	Yellowstone National Park	44.93217	-110.72791	82190	Fawn Lake via Fawn Pass Trail	17380.872	4.5	3	out and back	['birding', 'hiking', 'nature-trips']	\N
3219	\N	\N	Yellowstone National Park	44.94085	-110.6321	82190	Lava Creek to Suspension Bridge	14805.928	5	3	out and back	['hiking', 'nature-trips', 'trail-running']	\N
3220	\N	\N	Yellowstone National Park	44.31756	-110.59805	82190	Heart Lake and Two Ocean Plateau Loop	110561.658	0	7	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'trail-running']	\N
3221	\N	\N	Yellowstone National Park	44.55998	-110.31842	\N	Fern Lake Loop Trail	40877.236	0	5	loop	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running']	\N
3222	\N	\N	Yellowstone National Park	44.70773	-110.50004	82190	Sour Creek Trail	8207.634	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3223	\N	\N	Yellowstone National Park	44.80661	-110.73477	82190	Solfatara Creek Trail	20921.42	4	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3224	\N	\N	Moose	43.69723	-110.73017	83414	Cottonwood Creek	5310.822	5	1	loop	['hiking', 'snowshoeing', 'cross-country-skiing']	\N
3225	\N	\N	Yellowstone National Park	44.56	-110.31844	\N	Mist Creek Pass Trail	54234.758	4.5	5	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'fly-fishing']	\N
3226	\N	\N	Moran	43.97366	-110.64604	83013	Arizona Creek Trail	25427.572	0	3	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3227	\N	\N	Yellowstone National Park	44.93218	-110.72822	82190	The Gallatin Skyline Trail	65982.94	0	7	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'trail-running', 'fly-fishing']	\N
3228	\N	\N	Yellowstone National Park	44.83836	-110.73283	82190	Trilobite Lake	25266.638	4	5	out and back	['backpacking', 'hiking']	\N
3229	\N	\N	Yellowstone National Park	44.94402	-110.08313	82190	Barronette Ski Trail	12391.918	5	3	out and back	['birding', 'nature-trips', 'skiing', 'snowshoeing']	\N
3230	\N	\N	Yellowstone National Park	44.56722	-110.83514	82190	Fountain Flat Drive	6920.162	3.5	1	point to point	['birding', 'hiking', 'mountain-biking', 'road-biking', 'trail-running', 'walking']	\N
3231	\N	\N	Yellowstone National Park	44.70594	-110.57314	82190	Cygnet Lakes Trail	13196.588	2.5	3	out and back	['birding', 'hiking', 'trail-running']	\N
3233	\N	\N	Moran	44.08984	-110.72433	83013	Berry Creek Loop	32347.734	0	3	loop	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking']	\N
3234	\N	\N	Wilson	43.49722	-110.94923	83014	Fuzzy Bunny Trail to Phillips Connector	5954.558	1	3	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
3235	\N	\N	Moran	44.3172	-110.59868	82190	Heart Lake and Creek Trail	64695.468	5	3	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
3236	\N	\N	Yellowstone National Park	44.86851	-110.17448	82190	Cache Creek Trail	60511.184	3	5	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'cross-country-skiing']	\N
3237	\N	\N	Dubois	43.75166	-110.00545	82513	Upper Jade Lake Trek	8207.634	4	1	out and back	['hiking', 'nature-trips']	\N
3238	\N	\N	Yellowstone National Park	44.949	-110.45075	82190	Bull Mountain Loop Trail	33957.074	0	5	loop	['backpacking', 'camping', 'fishing', 'hiking', 'trail-running', 'horseback-riding', 'fly-fishing']	\N
3239	\N	\N	Yellowstone National Park	44.94907	-110.45044	82190	Coyote Creek Trail	22369.826	3	3	out and back	['backpacking', 'hiking']	\N
3240	\N	\N	Yellowstone National Park	44.56722	-110.83514	82190	Sentinel Meadows and Fairy Falls Loop	16898.07	4.5	3	loop	['birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
3241	\N	\N	Yellowstone National Park	44.14984	-111.04558	82190	Robinson Creek Trail To Robinson Lake	7563.898	0	1	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3242	\N	\N	Yellowstone National Park	44.50543	-110.27566	82414	East Shore Yellowstone Lake and Heart Lake to South Entrance	94629.192	0	5	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips', 'horseback-riding']	\N
3243	\N	\N	Yellowstone National Park	44.13191	-110.81937	83414	Old Marysville Road	18507.41	0	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3244	\N	\N	Yellowstone National Park	44.24325	-110.64719	83013	Pitchstone Plateau to Union Falls to Grassy Lake Reservoir	49728.606	5	7	point to point	['backpacking', 'hiking']	\N
3245	\N	\N	Yellowstone National Park	44.55959	-110.31793	\N	Pelican Cone Trail	36049.216	3	5	out and back	['birding', 'hiking', 'nature-trips', 'trail-running']	\N
3246	\N	\N	Yellowstone National Park	44.50552	-110.27561	82414	Heart Lake to South Entrance Trail via Thorofare Trail	97847.872	0	5	point to point	['backpacking', 'birding', 'camping', 'fishing', 'hiking', 'nature-trips']	\N
3247	\N	\N	Moran	43.92488	-110.56443	83013	Middle Pilgram Creek Trail	38302.292	0	3	out and back	['backpacking', 'birding', 'hiking', 'nature-trips', 'walking', 'horseback-riding']	\N
3248	\N	\N	Moran	43.77562	-110.11846	83013	Lost Lake	4988.954	5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3249	\N	\N	Yellowstone National Park	44.55966	-110.31833	\N	Tern Lake Trail	45866.19	0	3	out and back	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3250	\N	\N	Yellowstone National Park	44.08974	-110.72554	83013	Owl Creek Trail to Moose Basin Divide	47797.398	0	5	out and back	['birding', 'fishing', 'hiking', 'nature-trips', 'fly-fishing']	\N
3251	\N	\N	Yellowstone National Park	44.6614	-110.9622	82190	Madison River West Entrance Road	13035.654	2.5	3	point to point	['birding', 'hiking', 'snowshoeing']	\N
3252	\N	\N	Yellowstone National Park	44.14923	-111.04637	82190	Bechler River Cutoff Trail	5632.69	4	3	out and back	['birding', 'fishing', 'nature-trips', 'walking']	\N
3253	\N	\N	Moose	43.69301	-110.73289	83012	Taggart Lake, Lake Taminah, Shoshoko Falls	21243.288	3	5	out and back	['hiking']	\N
3254	\N	\N	Yellowstone National Park	44.14939	-111.04614	82190	Boundary Creek, Bechler Meadows and Bechler River	47153.662	5	5	out and back	['backpacking', 'camping', 'hiking', 'horseback-riding']	\N
3255	\N	\N	Yellowstone National Park	44.93216	-110.72813	82190	Sportsman Lake Trail	38624.16	0	5	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'trail-running']	\N
3256	\N	\N	Dubois	43.74582	-109.98439	82513	Bonneville Pass, Kissinger Lakes Loop	25105.704	4	3	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3257	\N	\N	Cody	44.47158	-109.88846	82414	Eagle Peak	53430.088	0	5	out and back	['birding', 'hiking', 'nature-trips']	\N
3258	\N	\N	Yellowstone National Park	44.28702	-110.89878	82190	Three Rivers Junction to Douglas Knob	8851.37	4	3	point to point	['backpacking', 'hiking', 'horseback-riding']	\N
3259	\N	\N	Yellowstone National Park	44.23386	-111.01726	82190	Dunanda Falls to Three Rivers Junction	23657.298	4	3	point to point	['backpacking', 'hiking', 'horseback-riding']	\N
3260	\N	\N	Dubois	43.74729	-110.0074	82513	Continental Divide Snowmobile Route	54073.824	5	3	out and back	['nature-trips', 'off-road-driving']	\N
3261	\N	\N	Yellowstone National Park	44.32096	-110.8522	82190	Douglas Knob to Old Faithful	19633.948	0	3	point to point	['backpacking', 'camping', 'hiking', 'horseback-riding']	\N
3262	\N	\N	Yellowstone National Park	44.50569	-110.27556	82414	Yellowstone Lake East Shore to 6D1 Trail	43452.18	5	5	point to point	['backpacking', 'camping', 'hiking']	\N
3263	\N	\N	Yellowstone National Park	44.53625	-110.79927	82190	Five Senses Trail to Octopus Spring and Five Sisters Spring [CLOSED]	1126.538	2.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3264	\N	\N	Yellowstone National Park	44.95538	-110.5937	82190	Black Canyon via Blacktail Deer Creek Trailhead [PRIVATE PROPERTY]	19955.816	4.5	3	point to point	['backpacking', 'hiking', 'nature-trips']	\N
3265	\N	\N	Pahala	19.41648	-155.24294	96778	Kilauea Iki Trail and Crater Rim Trail	4828.02	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
3266	\N	\N	Pahoa	19.3557	-154.98677	96778	Kalapana Lava Viewing	15288.73	4.5	1	out and back	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'walking', 'rails-trails']	\N
3267	\N	\N	Pahoa	19.36539	-155.2165	96778	Pu'u Huluhulu via Napau Crater Trail	4023.35	4.5	3	out and back	['hiking']	\N
3268	\N	\N	Volcano	19.42902	-155.25833	96718	Halema\\'92uma\\'92u Steam Bluff and Sulfur Banks	2092.142	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3269	\N	\N	Pahala	19.28898	-155.12998	96778	Puu Loa Petroglyphs Trail	1931.208	4	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3270	\N	\N	Holualoa	19.53805	-155.57531	96743	Mauna Loa via Observatory Trail and Summit Trail	20760.486	4.5	7	out and back	['hiking']	\N
3271	\N	\N	Pahala	19.4064	-155.25293	96778	Devastation Trail to Puu Puai Overlook	1609.34	3.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
3272	\N	\N	Kalapana	19.29555	-155.09752	96778	End of Chain of Craters Road Trail to Lava Viewing	16576.202	4	3	out and back	['hiking']	\N
3273	\N	\N	Pahala	19.4314	-155.26536	96785	Sandalwood (Iliahi) Trail	1931.208	4	3	loop	['hiking', 'walking']	\N
3274	\N	\N	Pahoa	19.42964	-155.25883	96718	Halema'uma'u Trail	2735.878	4.5	3	out and back	['hiking']	\N
3275	\N	\N	Pahala	19.43748	-155.30324	96785	Kipuka Puaulu Trail	1770.274	4	1	loop	['birding', 'hiking', 'mountain-biking', 'nature-trips', 'walking']	\N
3276	\N	\N	Kalapana	19.33504	-155.02078	96778	End of Chain of Craters Road to Active Lava Flow	10943.512	4.5	5	out and back	['hiking', 'nature-trips']	\N
3277	\N	\N	Pahala	19.29546	-155.30693	96718	Hilina Pali Trail	15932.466	5	5	out and back	['hiking']	\N
3278	\N	\N	Pahala	19.31753	-155.16243	96778	N\\uc0\\u257 ulu Trail	10138.842	4	3	out and back	['hiking', 'nature-trips']	\N
3279	\N	\N	Pahala	19.49264	-155.3854	96785	Mauna Loa Trail	58097.174	4.5	7	out and back	['backpacking', 'camping', 'hiking']	\N
3280	\N	\N	Volcano	19.40536	-155.25306	96778	Crater Rim Drive	3540.548	4	1	out and back	['hiking', 'nature-trips', 'walking']	\N
3281	\N	\N	Pahala	19.36522	-155.21615	96778	Napau Crater Trail to Makaopuhi Crater	18990.212	4.5	5	out and back	['backpacking', 'camping', 'hiking']	\N
3282	\N	\N	Volcano	19.42964	-155.25812	96771	Kilauea Iki Trail	2574.944	4.5	1	out and back	['birding', 'hiking', 'nature-trips', 'walking']	\N
3283	\N	\N	Pahala	19.29056	-155.1341	96778	Puna Kau Trail to Halape Trail	25266.638	5	7	point to point	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'walking']	\N
3284	\N	\N	Pahala	19.3572	-155.22412	96778	Keauhou Trail	27841.582	4.5	5	out and back	['backpacking', 'camping', 'hiking', 'trail-running']	\N
3285	\N	\N	Pahala	19.36885	-155.36754	96785	Kau Desert Footprints Trail	6115.492	4.5	1	out and back	['hiking', 'nature-trips', 'walking']	\N
3286	\N	\N	Volcano	19.49266	-155.38535	96785	Mauna Loa Trail to Red Hill	22369.826	5	5	out and back	['backpacking', 'birding', 'camping', 'hiking']	\N
3287	\N	\N	Pahala	19.29054	-155.13412	96778	Puna Kau Trail	29289.988	4.5	5	out and back	['hiking']	\N
3288	\N	\N	Pahala	19.29037	-155.13408	96778	Puna Kau Trail to Apua Point	15127.796	4	7	out and back	['hiking']	\N
3289	\N	\N	Volcano	19.42019	-155.28883	96778	Crater Rim Trail: East from Jaggar Museum	4184.284	4.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
3290	\N	\N	Pahoa	19.36525	-155.21625	96778	Mauna Ulu Eruption Trail	965.604	4	1	loop	['hiking', 'walking']	\N
3291	\N	\N	Pahala	19.32556	-155.2785	\N	Halape Trail	21082.354	4	5	out and back	['hiking']	\N
3292	\N	\N	Honaunau	19.53804	-155.57516	96743	Mauna Loa Cabin Trail via Observatory Trail	19955.816	5	7	out and back	['backpacking', 'hiking']	\N
3293	\N	\N	Hawaiian Ocean View	19.26041	-155.61541	96772	Old Hawaiian Trail	19473.014	0	3	out and back	['hiking', 'trail-running']	\N
3294	\N	\N	Pahala	19.36842	-155.36769	96785	Mauna Iki Trail to Kulanaokuaiki Campground	23979.166	4.5	3	out and back	['backpacking', 'camping', 'hiking']	\N
3295	\N	\N	Pahala	19.41357	-155.2389	96778	Thurston Lava Tube Trail [CLOSED]	643.736	4	1	loop	['hiking', 'nature-trips', 'walking']	\N
3296	\N	\N	Hawaiian Ocean View	19.08609	-155.68402	96704	Palm Trail	4345.218	4	1	loop	['hiking', 'nature-trips']	\N
3297	\N	\N	Volcano	19.41351	-155.23894	96778	Kilauea Craters Trail [CLOSED]	12874.72	4.5	3	loop	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3298	\N	\N	Pahala	19.40613	-155.25297	96778	Byron Ledge Trail from Devastation Trailhead [CLOSED]	7081.096	3.5	3	out and back	['hiking', 'nature-trips', 'walking']	\N
3299	\N	\N	Volcano	19.43001	-155.25985	96785	Byron Ledge & Halema'uma'u Loop [CLOSED]	5149.888	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
3300	\N	\N	Hana	20.66233	-156.04445	96713	Pipiwai Trail and Waimoku Falls	5471.756	5	3	out and back	['birding', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3301	\N	\N	Kula	20.71473	-156.25053	96790	Sliding Sands Trail	17702.74	4.5	7	out and back	['birding', 'camping', 'hiking', 'nature-trips', 'trail-running', 'walking']	\N
3302	\N	\N	Hana	20.662	-156.04514	96713	Seven Sacred Pools Trail ('Ohe'o Gulch)	965.604	4	1	loop	['birding', 'hiking', 'nature-trips', 'walking']	\N
3303	\N	\N	Kula	20.71417	-156.25093	96790	Halalai'i and Pu'unaue Trail	20116.75	5	5	loop	['backpacking', 'birding', 'camping', 'hiking', 'nature-trips', 'road-biking', 'trail-running', 'horseback-riding']	\N
3304	\N	\N	Kula	20.75236	-156.22844	96790	Halemau'u Haleakala Overlook Trail	12230.984	4.5	5	out and back	['hiking', 'trail-running']	\N
3305	\N	\N	Kula	20.71449	-156.25072	96790	Haleakala Crater Trail	18024.608	5	5	point to point	['backpacking', 'camping', 'hiking', 'nature-trips']	\N
3306	\N	\N	Kula	20.71479	-156.25102	96790	Pa Ka'oao Trail	965.604	4.5	3	loop	['hiking', 'nature-trips', 'walking']	\N
3307	\N	\N	Kula	20.74424	-156.23037	96790	Leleiwi Overlook Trail	482.802	4.5	1	out and back	['hiking', 'walking']	\N
3308	\N	\N	Kula	20.71442	-156.25102	96790	Pa ka'oao Trail (White Hill Trail)	804.67	4.5	1	out and back	['hiking', 'walking']	\N
3309	\N	\N	Kula	20.75275	-156.22884	96790	Silversword Loop Via Halemau'u Trail	20116.75	4.5	5	loop	['birding', 'hiking', 'nature-trips']	\N
3310	\N	\N	Kula	20.714480000000002	-156.25072	96790	Keonehe'ehe'e Trail	28324.384	5	5	out and back	['backpacking', 'camping', 'hiking']	\N
3311	\N	\N	Kula	20.71007	-156.25357	96790	Red Hill Overlook Summit Trail	321.868	4.5	1	out and back	['hiking', 'walking']	\N
3312	\N	\N	Kula	20.64981	-156.137	96713	Kaupo Trail	19312.08	4	5	out and back	['hiking']	\N
3313	\N	\N	Kula	20.71449	-156.25085	96790	Ka Lu'u o ka O'o Cinder Cone via Crater and Sliding Sands Trail [CLOSED]	8368.568	4.5	3	loop	['hiking']	\N
\.


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: stephaniemow
--

COPY public.ratings (rating_id, rating, hike_id, user_id, comments) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: stephaniemow
--

COPY public.users (user_id, email, password) FROM stdin;
1	user0@test.com	test
2	user1@test.com	test
3	user2@test.com	test
4	user3@test.com	test
5	user4@test.com	test
6	user5@test.com	test
7	user6@test.com	test
8	user7@test.com	test
9	user8@test.com	test
10	user9@test.com	test
\.


--
-- Name: bookmarks_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stephaniemow
--

SELECT pg_catalog.setval('public.bookmarks_bookmark_id_seq', 1, false);


--
-- Name: hikes_hike_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stephaniemow
--

SELECT pg_catalog.setval('public.hikes_hike_id_seq', 3313, true);


--
-- Name: ratings_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stephaniemow
--

SELECT pg_catalog.setval('public.ratings_rating_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stephaniemow
--

SELECT pg_catalog.setval('public.users_user_id_seq', 10, true);


--
-- Name: bookmarks bookmarks_pkey; Type: CONSTRAINT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT bookmarks_pkey PRIMARY KEY (bookmark_id);


--
-- Name: hikes hikes_pkey; Type: CONSTRAINT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.hikes
    ADD CONSTRAINT hikes_pkey PRIMARY KEY (hike_id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (rating_id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: bookmarks bookmarks_hike_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT bookmarks_hike_id_fkey FOREIGN KEY (hike_id) REFERENCES public.hikes(hike_id);


--
-- Name: bookmarks bookmarks_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT bookmarks_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: ratings ratings_hike_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_hike_id_fkey FOREIGN KEY (hike_id) REFERENCES public.hikes(hike_id);


--
-- Name: ratings ratings_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: stephaniemow
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

