--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: pgw
--

COPY public.authors (id, name, bio, created_at) FROM stdin;
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: pgw
--

COPY public.books (id, name, created_at) FROM stdin;
1	Harry Potter and the Half-Blood Prince	2019-03-01 13:38:38.055069
2	Harry Potter and the Sorcerer's Stone	2019-03-01 13:38:38.105776
3	Harry Potter and the Goblet of Fire	2019-03-01 13:38:38.11498
4	Harry Potter and the Prisoner of Azkaban	2019-03-01 13:38:38.134969
5	Gollum	2019-03-01 13:38:38.430156
6	Tom Bombadil	2019-03-01 13:38:38.438796
7	Shadowfax	2019-03-01 13:38:38.449121
8	Beregond	2019-03-01 13:38:38.458653
9	Faramir	2019-03-01 13:38:38.507089
10	Elrond	2019-03-01 13:38:38.513464
11	Quickbeam	2019-03-01 13:38:38.5229
12	Denethor	2019-03-01 13:38:38.536743
13	Peregrin Took	2019-03-01 13:38:38.642737
14	Arwen Evenstar	2019-03-01 13:38:38.650143
15	Legolas	2019-03-01 13:38:38.661147
16	Sauron	2019-03-01 13:38:38.670708
17	Meriadoc Brandybuck	2019-03-01 13:38:38.735969
18	Glorfindel	2019-03-01 13:38:38.743068
19	Aragorn	2019-03-01 13:38:38.75082
20	Dr. Egon Spengler	2019-03-01 13:38:39.016378
21	Dr. Peter Venkman	2019-03-01 13:38:39.023473
22	Winston Zeddmore	2019-03-01 13:38:39.074813
23	Darth Sidious	2019-03-01 13:38:39.27039
24	Shmi Skywalker	2019-03-01 13:38:39.277256
25	General Hux	2019-03-01 13:38:39.284083
26	Supreme Leader Snoke	2019-03-01 13:38:39.290693
27	Grand Moff Tarkin	2019-03-01 13:38:39.304253
28	Padme Amidala	2019-03-01 13:38:39.310176
29	Darth Caedus	2019-03-01 13:38:39.315757
30	Leia Organa	2019-03-01 13:38:39.321373
31	Grand Admiral Thrawn	2019-03-01 13:38:39.327947
32	Captain Phasma	2019-03-01 13:38:39.335503
33	Rose Tico	2019-03-01 13:38:39.377473
34	Wedge Antilles	2019-03-01 13:38:39.383805
35	Sheev Palpatine	2019-03-01 13:38:39.392309
36	Boba Fett	2019-03-01 13:38:39.399342
37	Jar Jar Binks	2019-03-01 13:38:39.461097
38	Jango Fett	2019-03-01 13:38:39.468435
39	Obi-Wan Kenobi	2019-03-01 13:38:39.477828
40	Qui-Gon Jinn	2019-03-01 13:38:39.55356
41	Sabine Wren	2019-03-01 13:38:39.558601
42	Galen Erso	2019-03-01 13:38:39.564102
43	Greedo	2019-03-01 13:38:39.570436
44	Vice Admiral Holdo	2019-03-01 13:38:39.576835
45	Poe Dameron	2019-03-01 13:38:39.643457
46	Luke Skywalker	2019-03-01 13:38:39.650112
47	Ki-Adi-Mundi	2019-03-01 13:38:39.660544
48	Hera Syndulla	2019-03-01 13:38:39.668771
49	Saw Gerrera	2019-03-01 13:38:39.717832
50	Han Solo	2019-03-01 13:38:39.724073
51	Kanan Jarrus	2019-03-01 13:38:39.730526
52	Chewbacca	2019-03-01 13:38:39.739687
53	Laboon	2019-03-01 13:38:39.966852
54	Gold D. Roger	2019-03-01 13:38:39.975775
55	Kuroken Mr. 1	2019-03-01 13:38:39.984897
56	Jozu	2019-03-01 13:38:39.992263
57	Nico Robin	2019-03-01 13:38:40.032718
58	Señor Pink	2019-03-01 13:38:40.041805
59	Don Chinjao	2019-03-01 13:38:40.050695
60	Enel	2019-03-01 13:38:40.061319
61	Jewelry Bonney	2019-03-01 13:38:40.116726
62	Shanks	2019-03-01 13:38:40.123085
63	Capone Bege	2019-03-01 13:38:40.130725
64	X Drake	2019-03-01 13:38:40.139592
65	Spandam	2019-03-01 13:38:40.147708
66	Jyabura	2019-03-01 13:38:40.220155
67	Portgas D. Ace	2019-03-01 13:38:40.22561
68	Kizaru	2019-03-01 13:38:40.231233
69	Hacchi	2019-03-01 13:38:40.240013
70	Van Auger	2019-03-01 13:38:40.249778
71	Edward Newgate	2019-03-01 13:38:40.297161
72	Diamante	2019-03-01 13:38:40.304246
73	Kumadori	2019-03-01 13:38:40.311606
74	Monkey D. Garp	2019-03-01 13:38:40.372462
75	Kalifa	2019-03-01 13:38:40.378629
76	Tony Tony Chopper	2019-03-01 13:38:40.386107
77	Ryuma	2019-03-01 13:38:40.39443
78	Marshall D. Teach	2019-03-01 13:38:40.469257
79	Pika	2019-03-01 13:38:40.475078
80	Rob Lucci	2019-03-01 13:38:40.480639
81	Laffitte	2019-03-01 13:38:40.487889
82	Kinemon	2019-03-01 13:38:40.495512
83	Hody Jones	2019-03-01 13:38:40.541299
84	Crocodile	2019-03-01 13:38:40.547206
85	Kaido	2019-03-01 13:38:40.555506
86	Mokey D. Dragon	2019-03-01 13:38:40.56323
87	Gecko Moriah	2019-03-01 13:38:40.621084
88	Hannyabal	2019-03-01 13:38:40.626959
89	Kyros	2019-03-01 13:38:40.633431
90	Money	2019-03-01 13:38:40.64199
91	Bepo	2019-03-01 13:38:40.714487
92	Sadi	2019-03-01 13:38:40.723271
93	Fujitora	2019-03-01 13:38:40.818941
94	Eustass Kid	2019-03-01 13:38:40.826256
95	Blueno	2019-03-01 13:38:40.837268
96	Coby	2019-03-01 13:38:40.849049
97	Jinbe	2019-03-01 13:38:40.862433
98	Vergo	2019-03-01 13:38:40.909478
99	Donquixote Doflamingo	2019-03-01 13:38:40.917041
100	Vinsmoke Sanji	2019-03-01 13:38:40.923913
\.


--
-- Data for Name: authors_books; Type: TABLE DATA; Schema: public; Owner: pgw
--

COPY public.authors_books (id, book_id, author_id, "position", created_at) FROM stdin;
\.


--
-- Name: authors_books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.authors_books_id_seq', 1, false);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.authors_id_seq', 1, false);


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: pgw
--

COPY public.genres (id, name, created_at) FROM stdin;
\.


--
-- Data for Name: books_genres; Type: TABLE DATA; Schema: public; Owner: pgw
--

COPY public.books_genres (id, book_id, genre_id) FROM stdin;
\.


--
-- Name: books_genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.books_genres_id_seq', 1, false);


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.books_id_seq', 100, true);


--
-- Data for Name: editions; Type: TABLE DATA; Schema: public; Owner: pgw
--

COPY public.editions (id, name, created_at, book_id, current) FROM stdin;
1	Harry Potter and the Chamber of Secrets	2019-03-01 13:38:38.097702	1	f
2	Harry Potter and the Deathly Hallows	2019-03-01 13:38:38.108342	2	f
3	Harry Potter and the Order of the Phoenix	2019-03-01 13:38:38.119275	3	f
4	Théoden	2019-03-01 13:38:38.423964	4	f
5	Grìma Wormtongue	2019-03-01 13:38:38.432602	5	f
6	Boromir	2019-03-01 13:38:38.441844	6	f
7	Barliman Butterbur	2019-03-01 13:38:38.452423	7	f
8	Treebeard	2019-03-01 13:38:38.461606	8	f
9	Bilbo Baggins	2019-03-01 13:38:38.509058	9	f
10	Éowyn	2019-03-01 13:38:38.515882	10	f
11	Gimli	2019-03-01 13:38:38.527342	11	f
12	Samwise Gamgee	2019-03-01 13:38:38.637846	12	f
13	Saruman the White	2019-03-01 13:38:38.644679	13	f
14	Éomer	2019-03-01 13:38:38.653536	14	f
15	Shelob	2019-03-01 13:38:38.663928	15	f
16	Frodo Baggins	2019-03-01 13:38:38.672974	16	f
17	Gandalf the Grey	2019-03-01 13:38:38.738131	17	f
18	Galadriel	2019-03-01 13:38:38.745143	18	f
19	Janine Melnitz	2019-03-01 13:38:39.010517	19	f
20	Louis Tully	2019-03-01 13:38:39.018616	20	f
21	Dr. Raymond Stantz	2019-03-01 13:38:39.02581	21	f
22	Dana Barrett	2019-03-01 13:38:39.076719	22	f
23	Rey	2019-03-01 13:38:39.272615	23	f
24	Lando Calrissian	2019-03-01 13:38:39.279174	24	f
25	Bail Organa	2019-03-01 13:38:39.28618	25	f
26	Ben Solo	2019-03-01 13:38:39.292764	26	f
27	Count Dooku	2019-03-01 13:38:39.306163	27	f
28	Mace Windu	2019-03-01 13:38:39.311891	28	f
29	Mon Mothma	2019-03-01 13:38:39.317468	29	f
30	Ahsoka Tano	2019-03-01 13:38:39.323482	30	f
31	Nute Gunray	2019-03-01 13:38:39.330118	31	f
32	Chirrut Imwe	2019-03-01 13:38:39.372963	32	f
33	Admiral Ackbar	2019-03-01 13:38:39.379275	33	f
34	Jyn Erso	2019-03-01 13:38:39.386378	34	f
35	Yoda	2019-03-01 13:38:39.394751	35	f
36	Rune Haako	2019-03-01 13:38:39.401427	36	f
37	Sebulba	2019-03-01 13:38:39.463208	37	f
38	Bendu	2019-03-01 13:38:39.471562	38	f
39	Watto	2019-03-01 13:38:39.480965	39	f
40	Ezra Bridger	2019-03-01 13:38:39.555245	40	f
41	Borvo the Hutt	2019-03-01 13:38:39.560405	41	f
42	Finn	2019-03-01 13:38:39.566055	42	f
43	Maz Kanata	2019-03-01 13:38:39.572448	43	f
44	Kylo Ren	2019-03-01 13:38:39.639215	44	f
45	Jabba the Hutt	2019-03-01 13:38:39.645255	45	f
46	Lyra Erso	2019-03-01 13:38:39.654084	46	f
47	Darth Maul	2019-03-01 13:38:39.66297	47	f
48	Panaka	2019-03-01 13:38:39.672037	48	f
49	Asajj Ventress	2019-03-01 13:38:39.719869	49	f
50	Darth Vader	2019-03-01 13:38:39.726203	50	f
51	Savage Opress	2019-03-01 13:38:39.733056	51	f
52	Anakin Skywalker	2019-03-01 13:38:39.744191	52	f
53	Bellamy	2019-03-01 13:38:39.969699	53	f
54	Don Krieg	2019-03-01 13:38:39.9786	54	f
55	Sogeking	2019-03-01 13:38:39.98728	55	f
56	Monkey D. Luffy	2019-03-01 13:38:39.994506	56	f
57	Akainu	2019-03-01 13:38:40.035671	57	f
58	Koala	2019-03-01 13:38:40.04445	58	f
59	Killer	2019-03-01 13:38:40.053796	59	f
60	Vista	2019-03-01 13:38:40.065665	60	f
61	Fullbody	2019-03-01 13:38:40.118808	61	f
62	Magellan	2019-03-01 13:38:40.125837	62	f
63	Sengoku	2019-03-01 13:38:40.133188	63	f
64	Sugar	2019-03-01 13:38:40.142234	64	f
65	Alvida	2019-03-01 13:38:40.215491	65	f
66	Dellinger	2019-03-01 13:38:40.221887	66	f
67	Aokiji	2019-03-01 13:38:40.227304	67	f
68	Franky	2019-03-01 13:38:40.233563	68	f
69	Brook	2019-03-01 13:38:40.243277	69	f
70	Perona	2019-03-01 13:38:40.252081	70	f
71	Nami	2019-03-01 13:38:40.299645	71	f
72	Lucy	2019-03-01 13:38:40.306797	72	f
73	Scratchmen Apoo	2019-03-01 13:38:40.313774	73	f
74	Boa Hancock	2019-03-01 13:38:40.374464	74	f
75	Caesar Clown	2019-03-01 13:38:40.380718	75	f
76	Kaime	2019-03-01 13:38:40.389177	76	f
77	Corazon	2019-03-01 13:38:40.396631	77	f
78	Rebecca	2019-03-01 13:38:40.471136	78	f
79	Sabo	2019-03-01 13:38:40.476704	79	f
80	Baby Five	2019-03-01 13:38:40.482852	80	f
81	Miss Valentine	2019-03-01 13:38:40.490519	81	f
82	Bastille	2019-03-01 13:38:40.536739	82	f
83	Bartolomeo	2019-03-01 13:38:40.543231	83	f
84	Leo	2019-03-01 13:38:40.549679	84	f
85	Gladius	2019-03-01 13:38:40.557745	85	f
86	Tashigi	2019-03-01 13:38:40.61632	86	f
87	Roronoa Zoro	2019-03-01 13:38:40.622927	87	f
88	Ussop	2019-03-01 13:38:40.62873	88	f
89	Basil Hawkins	2019-03-01 13:38:40.636178	89	f
90	Lao G	2019-03-01 13:38:40.644493	90	f
91	Nojiko	2019-03-01 13:38:40.716895	91	f
92	Smoker	2019-03-01 13:38:40.726348	92	f
93	Doc Q	2019-03-01 13:38:40.821398	93	f
94	Emporio Ivankov	2019-03-01 13:38:40.828777	94	f
95	Bon Clay Mr. 2	2019-03-01 13:38:40.840888	95	f
96	Cavendish	2019-03-01 13:38:40.853782	96	f
97	Buggy	2019-03-01 13:38:40.904554	97	f
98	Bartholomew Kuma	2019-03-01 13:38:40.911726	98	f
99	Kaku	2019-03-01 13:38:40.919284	99	f
100	Bufalo	2019-03-01 13:38:40.927148	100	f
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: pgw
--

COPY public.users (id, login, email, created_at, admin) FROM stdin;
1	carl	jeremiah@waters.com	2019-03-01 13:39:12.922285	f
2	scotty.schimmel	amadobartoletti@hauckryan.biz	2019-03-01 13:39:13.338798	f
3	reyna	erlinekutch@bartell.name	2019-03-01 13:39:13.499295	f
4	doyle	lachelle@schupperowe.io	2019-03-01 13:39:14.386125	f
5	burma	tobiaszieme@mosciski.co	2019-03-01 13:39:15.310703	f
6	teresia_collier	jan@collins.org	2019-03-01 13:39:15.718743	f
7	lynn_prohaska	oraleelemke@murray.org	2019-03-01 13:39:15.987267	f
8	nolan_cormier	cathiemurphy@mckenzie.biz	2019-03-01 13:39:16.188656	f
9	jazmine	randolph@krajcikosinski.net	2019-03-01 13:39:17.417242	f
\.


--
-- Data for Name: shelves; Type: TABLE DATA; Schema: public; Owner: pgw
--

COPY public.shelves (id, name, user_id, description) FROM stdin;
1	Vivi	1	Effulgence unutterable singular nameless fainted.
2	Trafalgar D. Water Law	1	Antediluvian unmentionable loathsome hideous swarthy noisome shunned madness.
3	Momonosuke	1	Shunned gambrel amorphous tentacles fungus nameless.
4	Dracule Mihawk	2	Ululate nameless abnormal tenebrous shunned gambrel accursed fungus.
5	Marco	3	Tentacles abnormal singular shunned eldritch daemoniac fungus stygian.
6	Arlong	3	Lurk abnormal mortal stygian.
7	Sentoumaru	3	Unnamable immemorial iridescence nameless.
8	Fukuro	3	Tentacles unmentionable lurk cat gambrel eldritch.
9	Silvers Rayleigh	3	Shunned blasphemous furtive noisome daemoniac squamous.
10	Jesus Burgess	3	Gibbous unutterable fungus shunned.
11	Hakuba	4	Unutterable indescribable gambrel singular cat hideous squamous lurk.
12	Shirahoshi	4	Nameless lurk indescribable stygian singular.
13	Ben Beckmann	4	Loathsome squamous gibbous unmentionable accursed.
14	Garlic Jr	4	Antiquarian abnormal effulgence madness unutterable dank indescribable tenebrous.
15	Jaco	4	Mortal cyclopean unutterable non-euclidean eldritch lurk.
16	Gogeta	4	Ululate eldritch stench amorphous accursed mortal swarthy indescribable.
17	Kid Trunks	4	Iridescence cyclopean charnel tenebrous madness fainted accursed unnamable non-euclidean.
18	Super Saiyan 2 Vegeta	4	Unmentionable decadent cyclopean indescribable accursed cat shunned daemoniac fainted.
19	Majin Buu	5	Gibbous antiquarian cat spectral.
20	Uub	5	Unutterable non-euclidean madness tentacles eldritch gibbous immemorial tenebrous.
21	King Kai	5	Cat iridescence daemoniac shunned stench blasphemous accursed.
22	Yamcha	5	Shunned noisome unnamable singular.
23	San Shenlong	5	Madness shunned tentacles nameless eldritch foetid.
24	Whis	5	Unnamable spectral gibbous hideous mortal singular cat.
25	Super Saiyan 2 Goku	5	Blasphemous madness furtive tenebrous shunned.
26	Dr. Gero	6	Antediluvian iridescence spectral squamous tentacles.
27	Hit	6	Antediluvian fainted amorphous gibbous shunned singular blasphemous fungus.
28	Super Saiyan Goku	6	Tentacles foetid manuscript indescribable.
29	Chi-Chi	7	Swarthy madness furtive eldritch cat tenebrous gibbous.
30	Ryan Shenlong	7	Immemorial squamous unmentionable gibbering unutterable tentacles.
31	Baba	8	Fainted singular gambrel effulgence fungus.
32	Raditz	8	Non-euclidean antiquarian unnamable effulgence singular manuscript.
33	Super Saiyan Trunks	8	Blasphemous decadent gibbous effulgence ululate.
34	Supreme Kai	8	Furtive stench iridescence indescribable loathsome accursed singular gambrel.
35	Bardock	8	Charnel madness iridescence unnamable eldritch.
36	Android 20	8	Furtive charnel cat stench unutterable gibbous.
37	Zarbon	8	Gibbering accursed effulgence singular.
38	Videl	8	Comprehension eldritch charnel gibbous cyclopean antiquarian.
39	Vegito	8	Stench abnormal fainted tentacles.
40	Super Saiyan Goten	9	Unnamable squamous unutterable ululate fainted antiquarian.
41	Nail	9	Lurk amorphous manuscript stygian tentacles nameless.
42	Super Saiyan 3 Goku	9	Manuscript unmentionable lurk swarthy cat.
43	Baby	9	Non-euclidean antiquarian cyclopean abnormal indescribable.
44	Krillin	9	Gibbering noisome accursed comprehension.
45	Majin Vegeta	9	Dank charnel squamous singular comprehension.
46	Nappa	9	Antediluvian unutterable eldritch daemoniac cyclopean unmentionable singular.
\.


--
-- Data for Name: books_on_the_shelves; Type: TABLE DATA; Schema: public; Owner: pgw
--

COPY public.books_on_the_shelves (id, edition_id, shelf_id, "position") FROM stdin;
1	81	1	1
2	93	1	2
3	25	1	3
4	94	1	4
5	86	1	5
6	69	1	6
7	74	1	7
8	71	1	8
9	99	1	9
10	80	2	1
11	49	2	2
12	7	2	3
13	96	2	4
14	60	2	5
15	68	3	1
16	14	3	2
17	25	3	3
18	77	3	4
19	100	3	5
20	34	3	6
21	62	3	7
22	41	3	8
23	86	4	1
24	77	4	2
25	47	4	3
26	57	4	4
27	70	4	5
28	73	4	6
29	15	5	1
30	100	5	2
31	35	6	1
32	59	6	2
33	32	6	3
34	8	6	4
35	91	6	5
36	43	6	6
37	73	6	7
38	5	6	8
39	9	6	9
40	96	6	10
41	94	7	1
42	19	7	2
43	46	7	3
44	12	7	4
45	72	7	5
46	93	7	6
47	76	7	7
48	3	7	8
49	41	7	9
50	98	8	1
51	80	8	2
52	7	8	3
53	8	8	4
54	6	8	5
55	59	8	6
56	85	8	7
57	27	8	8
58	48	8	9
59	95	9	1
60	56	9	2
61	88	9	3
62	66	9	4
63	42	9	5
64	80	9	6
65	83	9	7
66	52	10	1
67	16	10	2
68	14	10	3
69	3	10	4
70	43	10	5
71	79	10	6
72	57	10	7
73	20	10	8
74	41	10	9
75	46	10	10
76	24	11	1
77	65	11	2
78	49	11	3
79	63	11	4
80	38	11	5
81	86	11	6
82	81	11	7
83	93	11	8
84	17	11	9
85	30	11	10
86	7	12	1
87	50	12	2
88	87	12	3
89	86	12	4
90	7	13	1
91	7	14	1
92	27	14	2
93	57	14	3
94	47	14	4
95	89	15	1
96	78	15	2
97	52	15	3
98	60	15	4
99	49	15	5
100	65	15	6
101	53	15	7
102	72	15	8
103	91	15	9
104	71	15	10
105	71	17	1
106	53	17	2
107	51	18	1
108	34	19	1
109	84	19	2
110	2	19	3
111	27	20	1
112	59	20	2
113	51	20	3
114	96	20	4
115	58	20	5
116	76	21	1
117	14	21	2
118	48	23	1
119	29	25	1
120	59	25	2
121	19	25	3
122	99	25	4
123	77	25	5
124	96	27	1
125	50	27	2
126	50	28	1
127	63	28	2
128	21	28	3
129	41	28	4
130	60	28	5
131	87	28	6
132	31	28	7
133	17	28	8
134	45	28	9
135	38	29	1
136	55	29	2
137	73	29	3
138	21	29	4
139	3	29	5
140	65	29	6
141	48	29	7
142	6	29	8
143	69	29	9
144	27	29	10
145	77	30	1
146	3	30	2
147	76	30	3
148	16	30	4
149	68	31	1
150	78	31	2
151	61	31	3
152	6	31	4
153	78	32	1
154	18	32	2
155	62	32	3
156	50	32	4
157	44	32	5
158	2	32	6
159	40	32	7
160	38	32	8
161	33	32	9
162	10	32	10
163	12	33	1
164	18	33	2
165	65	33	3
166	10	33	4
167	2	33	5
168	56	33	6
169	92	33	7
170	46	33	8
171	91	33	9
172	33	33	10
173	76	35	1
174	51	36	1
175	61	36	2
176	52	36	3
177	78	36	4
178	63	36	5
179	46	36	6
180	77	36	7
181	89	36	8
182	58	37	1
183	39	37	2
184	53	37	3
185	6	37	4
186	68	37	5
187	37	37	6
188	69	37	7
189	74	37	8
190	25	37	9
191	18	38	1
192	85	38	2
193	83	38	3
194	79	38	4
195	37	38	5
196	65	38	6
197	89	38	7
198	62	38	8
199	78	38	9
200	84	39	1
201	33	39	2
202	5	39	3
203	91	39	4
204	10	39	5
205	56	39	6
206	57	39	7
207	95	40	1
208	85	40	2
209	27	40	3
210	23	40	4
211	45	40	5
212	26	40	6
213	7	40	7
214	57	40	8
215	55	40	9
216	24	40	10
217	90	41	1
218	60	41	2
219	92	41	3
220	63	41	4
221	84	41	5
222	22	42	1
223	61	42	2
224	85	42	3
225	88	42	4
226	21	42	5
227	94	42	6
228	50	42	7
229	90	42	8
230	76	42	9
231	25	43	1
232	1	43	2
233	33	43	3
234	91	44	1
235	93	46	1
236	65	46	2
\.


--
-- Name: books_on_the_shelves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.books_on_the_shelves_id_seq', 236, true);


--
-- Name: editions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.editions_id_seq', 100, true);


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.genres_id_seq', 1, false);


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: pgw
--

COPY public.ratings (id, user_id, edition_id, rating, review) FROM stdin;
\.


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);


--
-- Name: shelves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.shelves_id_seq', 46, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.users_id_seq', 9, true);


--
-- PostgreSQL database dump complete
--

