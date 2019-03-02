--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = ON;
SELECT pg_catalog.set_config('search_path', '', FALSE);
SET check_function_bodies = FALSE;
SET client_min_messages = WARNING;
SET row_security = OFF;

--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: pgw
--


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: pgw
--

INSERT INTO public.books (id, name, created_at)
VALUES (1, 'Harry Potter and the Half-Blood Prince', '2019-03-01 13:38:38.055069');
INSERT INTO public.books (id, name, created_at)
VALUES (2, 'Harry Potter and the Sorcerer''s Stone', '2019-03-01 13:38:38.105776');
INSERT INTO public.books (id, name, created_at)
VALUES (3, 'Harry Potter and the Goblet of Fire', '2019-03-01 13:38:38.11498');
INSERT INTO public.books (id, name, created_at)
VALUES (4, 'Harry Potter and the Prisoner of Azkaban', '2019-03-01 13:38:38.134969');
INSERT INTO public.books (id, name, created_at)
VALUES (5, 'Gollum', '2019-03-01 13:38:38.430156');
INSERT INTO public.books (id, name, created_at)
VALUES (6, 'Tom Bombadil', '2019-03-01 13:38:38.438796');
INSERT INTO public.books (id, name, created_at)
VALUES (7, 'Shadowfax', '2019-03-01 13:38:38.449121');
INSERT INTO public.books (id, name, created_at)
VALUES (8, 'Beregond', '2019-03-01 13:38:38.458653');
INSERT INTO public.books (id, name, created_at)
VALUES (9, 'Faramir', '2019-03-01 13:38:38.507089');
INSERT INTO public.books (id, name, created_at)
VALUES (10, 'Elrond', '2019-03-01 13:38:38.513464');
INSERT INTO public.books (id, name, created_at)
VALUES (11, 'Quickbeam', '2019-03-01 13:38:38.5229');
INSERT INTO public.books (id, name, created_at)
VALUES (12, 'Denethor', '2019-03-01 13:38:38.536743');
INSERT INTO public.books (id, name, created_at)
VALUES (13, 'Peregrin Took', '2019-03-01 13:38:38.642737');
INSERT INTO public.books (id, name, created_at)
VALUES (14, 'Arwen Evenstar', '2019-03-01 13:38:38.650143');
INSERT INTO public.books (id, name, created_at)
VALUES (15, 'Legolas', '2019-03-01 13:38:38.661147');
INSERT INTO public.books (id, name, created_at)
VALUES (16, 'Sauron', '2019-03-01 13:38:38.670708');
INSERT INTO public.books (id, name, created_at)
VALUES (17, 'Meriadoc Brandybuck', '2019-03-01 13:38:38.735969');
INSERT INTO public.books (id, name, created_at)
VALUES (18, 'Glorfindel', '2019-03-01 13:38:38.743068');
INSERT INTO public.books (id, name, created_at)
VALUES (19, 'Aragorn', '2019-03-01 13:38:38.75082');
INSERT INTO public.books (id, name, created_at)
VALUES (20, 'Dr. Egon Spengler', '2019-03-01 13:38:39.016378');
INSERT INTO public.books (id, name, created_at)
VALUES (21, 'Dr. Peter Venkman', '2019-03-01 13:38:39.023473');
INSERT INTO public.books (id, name, created_at)
VALUES (22, 'Winston Zeddmore', '2019-03-01 13:38:39.074813');
INSERT INTO public.books (id, name, created_at)
VALUES (23, 'Darth Sidious', '2019-03-01 13:38:39.27039');
INSERT INTO public.books (id, name, created_at)
VALUES (24, 'Shmi Skywalker', '2019-03-01 13:38:39.277256');
INSERT INTO public.books (id, name, created_at)
VALUES (25, 'General Hux', '2019-03-01 13:38:39.284083');
INSERT INTO public.books (id, name, created_at)
VALUES (26, 'Supreme Leader Snoke', '2019-03-01 13:38:39.290693');
INSERT INTO public.books (id, name, created_at)
VALUES (27, 'Grand Moff Tarkin', '2019-03-01 13:38:39.304253');
INSERT INTO public.books (id, name, created_at)
VALUES (28, 'Padme Amidala', '2019-03-01 13:38:39.310176');
INSERT INTO public.books (id, name, created_at)
VALUES (29, 'Darth Caedus', '2019-03-01 13:38:39.315757');
INSERT INTO public.books (id, name, created_at)
VALUES (30, 'Leia Organa', '2019-03-01 13:38:39.321373');
INSERT INTO public.books (id, name, created_at)
VALUES (31, 'Grand Admiral Thrawn', '2019-03-01 13:38:39.327947');
INSERT INTO public.books (id, name, created_at)
VALUES (32, 'Captain Phasma', '2019-03-01 13:38:39.335503');
INSERT INTO public.books (id, name, created_at)
VALUES (33, 'Rose Tico', '2019-03-01 13:38:39.377473');
INSERT INTO public.books (id, name, created_at)
VALUES (34, 'Wedge Antilles', '2019-03-01 13:38:39.383805');
INSERT INTO public.books (id, name, created_at)
VALUES (35, 'Sheev Palpatine', '2019-03-01 13:38:39.392309');
INSERT INTO public.books (id, name, created_at)
VALUES (36, 'Boba Fett', '2019-03-01 13:38:39.399342');
INSERT INTO public.books (id, name, created_at)
VALUES (37, 'Jar Jar Binks', '2019-03-01 13:38:39.461097');
INSERT INTO public.books (id, name, created_at)
VALUES (38, 'Jango Fett', '2019-03-01 13:38:39.468435');
INSERT INTO public.books (id, name, created_at)
VALUES (39, 'Obi-Wan Kenobi', '2019-03-01 13:38:39.477828');
INSERT INTO public.books (id, name, created_at)
VALUES (40, 'Qui-Gon Jinn', '2019-03-01 13:38:39.55356');
INSERT INTO public.books (id, name, created_at)
VALUES (41, 'Sabine Wren', '2019-03-01 13:38:39.558601');
INSERT INTO public.books (id, name, created_at)
VALUES (42, 'Galen Erso', '2019-03-01 13:38:39.564102');
INSERT INTO public.books (id, name, created_at)
VALUES (43, 'Greedo', '2019-03-01 13:38:39.570436');
INSERT INTO public.books (id, name, created_at)
VALUES (44, 'Vice Admiral Holdo', '2019-03-01 13:38:39.576835');
INSERT INTO public.books (id, name, created_at)
VALUES (45, 'Poe Dameron', '2019-03-01 13:38:39.643457');
INSERT INTO public.books (id, name, created_at)
VALUES (46, 'Luke Skywalker', '2019-03-01 13:38:39.650112');
INSERT INTO public.books (id, name, created_at)
VALUES (47, 'Ki-Adi-Mundi', '2019-03-01 13:38:39.660544');
INSERT INTO public.books (id, name, created_at)
VALUES (48, 'Hera Syndulla', '2019-03-01 13:38:39.668771');
INSERT INTO public.books (id, name, created_at)
VALUES (49, 'Saw Gerrera', '2019-03-01 13:38:39.717832');
INSERT INTO public.books (id, name, created_at)
VALUES (50, 'Han Solo', '2019-03-01 13:38:39.724073');
INSERT INTO public.books (id, name, created_at)
VALUES (51, 'Kanan Jarrus', '2019-03-01 13:38:39.730526');
INSERT INTO public.books (id, name, created_at)
VALUES (52, 'Chewbacca', '2019-03-01 13:38:39.739687');
INSERT INTO public.books (id, name, created_at)
VALUES (53, 'Laboon', '2019-03-01 13:38:39.966852');
INSERT INTO public.books (id, name, created_at)
VALUES (54, 'Gold D. Roger', '2019-03-01 13:38:39.975775');
INSERT INTO public.books (id, name, created_at)
VALUES (55, 'Kuroken Mr. 1', '2019-03-01 13:38:39.984897');
INSERT INTO public.books (id, name, created_at)
VALUES (56, 'Jozu', '2019-03-01 13:38:39.992263');
INSERT INTO public.books (id, name, created_at)
VALUES (57, 'Nico Robin', '2019-03-01 13:38:40.032718');
INSERT INTO public.books (id, name, created_at)
VALUES (58, 'Señor Pink', '2019-03-01 13:38:40.041805');
INSERT INTO public.books (id, name, created_at)
VALUES (59, 'Don Chinjao', '2019-03-01 13:38:40.050695');
INSERT INTO public.books (id, name, created_at)
VALUES (60, 'Enel', '2019-03-01 13:38:40.061319');
INSERT INTO public.books (id, name, created_at)
VALUES (61, 'Jewelry Bonney', '2019-03-01 13:38:40.116726');
INSERT INTO public.books (id, name, created_at)
VALUES (62, 'Shanks', '2019-03-01 13:38:40.123085');
INSERT INTO public.books (id, name, created_at)
VALUES (63, 'Capone Bege', '2019-03-01 13:38:40.130725');
INSERT INTO public.books (id, name, created_at)
VALUES (64, 'X Drake', '2019-03-01 13:38:40.139592');
INSERT INTO public.books (id, name, created_at)
VALUES (65, 'Spandam', '2019-03-01 13:38:40.147708');
INSERT INTO public.books (id, name, created_at)
VALUES (66, 'Jyabura', '2019-03-01 13:38:40.220155');
INSERT INTO public.books (id, name, created_at)
VALUES (67, 'Portgas D. Ace', '2019-03-01 13:38:40.22561');
INSERT INTO public.books (id, name, created_at)
VALUES (68, 'Kizaru', '2019-03-01 13:38:40.231233');
INSERT INTO public.books (id, name, created_at)
VALUES (69, 'Hacchi', '2019-03-01 13:38:40.240013');
INSERT INTO public.books (id, name, created_at)
VALUES (70, 'Van Auger', '2019-03-01 13:38:40.249778');
INSERT INTO public.books (id, name, created_at)
VALUES (71, 'Edward Newgate', '2019-03-01 13:38:40.297161');
INSERT INTO public.books (id, name, created_at)
VALUES (72, 'Diamante', '2019-03-01 13:38:40.304246');
INSERT INTO public.books (id, name, created_at)
VALUES (73, 'Kumadori', '2019-03-01 13:38:40.311606');
INSERT INTO public.books (id, name, created_at)
VALUES (74, 'Monkey D. Garp', '2019-03-01 13:38:40.372462');
INSERT INTO public.books (id, name, created_at)
VALUES (75, 'Kalifa', '2019-03-01 13:38:40.378629');
INSERT INTO public.books (id, name, created_at)
VALUES (76, 'Tony Tony Chopper', '2019-03-01 13:38:40.386107');
INSERT INTO public.books (id, name, created_at)
VALUES (77, 'Ryuma', '2019-03-01 13:38:40.39443');
INSERT INTO public.books (id, name, created_at)
VALUES (78, 'Marshall D. Teach', '2019-03-01 13:38:40.469257');
INSERT INTO public.books (id, name, created_at)
VALUES (79, 'Pika', '2019-03-01 13:38:40.475078');
INSERT INTO public.books (id, name, created_at)
VALUES (80, 'Rob Lucci', '2019-03-01 13:38:40.480639');
INSERT INTO public.books (id, name, created_at)
VALUES (81, 'Laffitte', '2019-03-01 13:38:40.487889');
INSERT INTO public.books (id, name, created_at)
VALUES (82, 'Kinemon', '2019-03-01 13:38:40.495512');
INSERT INTO public.books (id, name, created_at)
VALUES (83, 'Hody Jones', '2019-03-01 13:38:40.541299');
INSERT INTO public.books (id, name, created_at)
VALUES (84, 'Crocodile', '2019-03-01 13:38:40.547206');
INSERT INTO public.books (id, name, created_at)
VALUES (85, 'Kaido', '2019-03-01 13:38:40.555506');
INSERT INTO public.books (id, name, created_at)
VALUES (86, 'Mokey D. Dragon', '2019-03-01 13:38:40.56323');
INSERT INTO public.books (id, name, created_at)
VALUES (87, 'Gecko Moriah', '2019-03-01 13:38:40.621084');
INSERT INTO public.books (id, name, created_at)
VALUES (88, 'Hannyabal', '2019-03-01 13:38:40.626959');
INSERT INTO public.books (id, name, created_at)
VALUES (89, 'Kyros', '2019-03-01 13:38:40.633431');
INSERT INTO public.books (id, name, created_at)
VALUES (90, 'Money', '2019-03-01 13:38:40.64199');
INSERT INTO public.books (id, name, created_at)
VALUES (91, 'Bepo', '2019-03-01 13:38:40.714487');
INSERT INTO public.books (id, name, created_at)
VALUES (92, 'Sadi', '2019-03-01 13:38:40.723271');
INSERT INTO public.books (id, name, created_at)
VALUES (93, 'Fujitora', '2019-03-01 13:38:40.818941');
INSERT INTO public.books (id, name, created_at)
VALUES (94, 'Eustass Kid', '2019-03-01 13:38:40.826256');
INSERT INTO public.books (id, name, created_at)
VALUES (95, 'Blueno', '2019-03-01 13:38:40.837268');
INSERT INTO public.books (id, name, created_at)
VALUES (96, 'Coby', '2019-03-01 13:38:40.849049');
INSERT INTO public.books (id, name, created_at)
VALUES (97, 'Jinbe', '2019-03-01 13:38:40.862433');
INSERT INTO public.books (id, name, created_at)
VALUES (98, 'Vergo', '2019-03-01 13:38:40.909478');
INSERT INTO public.books (id, name, created_at)
VALUES (99, 'Donquixote Doflamingo', '2019-03-01 13:38:40.917041');
INSERT INTO public.books (id, name, created_at)
VALUES (100, 'Vinsmoke Sanji', '2019-03-01 13:38:40.923913');


--
-- Data for Name: authors_books; Type: TABLE DATA; Schema: public; Owner: pgw
--


--
-- Name: authors_books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.authors_books_id_seq', 1, FALSE);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.authors_id_seq', 1, FALSE);


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: pgw
--


--
-- Data for Name: books_genres; Type: TABLE DATA; Schema: public; Owner: pgw
--


--
-- Name: books_genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.books_genres_id_seq', 1, FALSE);


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.books_id_seq', 100, TRUE);


--
-- Data for Name: editions; Type: TABLE DATA; Schema: public; Owner: pgw
--

INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (1, 'Harry Potter and the Chamber of Secrets', '2019-03-01 13:38:38.097702', 1, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (2, 'Harry Potter and the Deathly Hallows', '2019-03-01 13:38:38.108342', 2, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (3, 'Harry Potter and the Order of the Phoenix', '2019-03-01 13:38:38.119275', 3, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (4, 'Théoden', '2019-03-01 13:38:38.423964', 4, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (5, 'Grìma Wormtongue', '2019-03-01 13:38:38.432602', 5, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (6, 'Boromir', '2019-03-01 13:38:38.441844', 6, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (7, 'Barliman Butterbur', '2019-03-01 13:38:38.452423', 7, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (8, 'Treebeard', '2019-03-01 13:38:38.461606', 8, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (9, 'Bilbo Baggins', '2019-03-01 13:38:38.509058', 9, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (10, 'Éowyn', '2019-03-01 13:38:38.515882', 10, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (11, 'Gimli', '2019-03-01 13:38:38.527342', 11, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (12, 'Samwise Gamgee', '2019-03-01 13:38:38.637846', 12, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (13, 'Saruman the White', '2019-03-01 13:38:38.644679', 13, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (14, 'Éomer', '2019-03-01 13:38:38.653536', 14, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (15, 'Shelob', '2019-03-01 13:38:38.663928', 15, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (16, 'Frodo Baggins', '2019-03-01 13:38:38.672974', 16, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (17, 'Gandalf the Grey', '2019-03-01 13:38:38.738131', 17, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (18, 'Galadriel', '2019-03-01 13:38:38.745143', 18, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (19, 'Janine Melnitz', '2019-03-01 13:38:39.010517', 19, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (20, 'Louis Tully', '2019-03-01 13:38:39.018616', 20, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (21, 'Dr. Raymond Stantz', '2019-03-01 13:38:39.02581', 21, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (22, 'Dana Barrett', '2019-03-01 13:38:39.076719', 22, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (23, 'Rey', '2019-03-01 13:38:39.272615', 23, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (24, 'Lando Calrissian', '2019-03-01 13:38:39.279174', 24, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (25, 'Bail Organa', '2019-03-01 13:38:39.28618', 25, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (26, 'Ben Solo', '2019-03-01 13:38:39.292764', 26, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (27, 'Count Dooku', '2019-03-01 13:38:39.306163', 27, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (28, 'Mace Windu', '2019-03-01 13:38:39.311891', 28, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (29, 'Mon Mothma', '2019-03-01 13:38:39.317468', 29, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (30, 'Ahsoka Tano', '2019-03-01 13:38:39.323482', 30, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (31, 'Nute Gunray', '2019-03-01 13:38:39.330118', 31, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (32, 'Chirrut Imwe', '2019-03-01 13:38:39.372963', 32, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (33, 'Admiral Ackbar', '2019-03-01 13:38:39.379275', 33, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (34, 'Jyn Erso', '2019-03-01 13:38:39.386378', 34, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (35, 'Yoda', '2019-03-01 13:38:39.394751', 35, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (36, 'Rune Haako', '2019-03-01 13:38:39.401427', 36, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (37, 'Sebulba', '2019-03-01 13:38:39.463208', 37, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (38, 'Bendu', '2019-03-01 13:38:39.471562', 38, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (39, 'Watto', '2019-03-01 13:38:39.480965', 39, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (40, 'Ezra Bridger', '2019-03-01 13:38:39.555245', 40, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (41, 'Borvo the Hutt', '2019-03-01 13:38:39.560405', 41, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (42, 'Finn', '2019-03-01 13:38:39.566055', 42, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (43, 'Maz Kanata', '2019-03-01 13:38:39.572448', 43, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (44, 'Kylo Ren', '2019-03-01 13:38:39.639215', 44, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (45, 'Jabba the Hutt', '2019-03-01 13:38:39.645255', 45, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (46, 'Lyra Erso', '2019-03-01 13:38:39.654084', 46, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (47, 'Darth Maul', '2019-03-01 13:38:39.66297', 47, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (48, 'Panaka', '2019-03-01 13:38:39.672037', 48, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (49, 'Asajj Ventress', '2019-03-01 13:38:39.719869', 49, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (50, 'Darth Vader', '2019-03-01 13:38:39.726203', 50, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (51, 'Savage Opress', '2019-03-01 13:38:39.733056', 51, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (52, 'Anakin Skywalker', '2019-03-01 13:38:39.744191', 52, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (53, 'Bellamy', '2019-03-01 13:38:39.969699', 53, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (54, 'Don Krieg', '2019-03-01 13:38:39.9786', 54, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (55, 'Sogeking', '2019-03-01 13:38:39.98728', 55, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (56, 'Monkey D. Luffy', '2019-03-01 13:38:39.994506', 56, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (57, 'Akainu', '2019-03-01 13:38:40.035671', 57, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (58, 'Koala', '2019-03-01 13:38:40.04445', 58, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (59, 'Killer', '2019-03-01 13:38:40.053796', 59, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (60, 'Vista', '2019-03-01 13:38:40.065665', 60, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (61, 'Fullbody', '2019-03-01 13:38:40.118808', 61, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (62, 'Magellan', '2019-03-01 13:38:40.125837', 62, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (63, 'Sengoku', '2019-03-01 13:38:40.133188', 63, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (64, 'Sugar', '2019-03-01 13:38:40.142234', 64, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (65, 'Alvida', '2019-03-01 13:38:40.215491', 65, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (66, 'Dellinger', '2019-03-01 13:38:40.221887', 66, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (67, 'Aokiji', '2019-03-01 13:38:40.227304', 67, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (68, 'Franky', '2019-03-01 13:38:40.233563', 68, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (69, 'Brook', '2019-03-01 13:38:40.243277', 69, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (70, 'Perona', '2019-03-01 13:38:40.252081', 70, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (71, 'Nami', '2019-03-01 13:38:40.299645', 71, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (72, 'Lucy', '2019-03-01 13:38:40.306797', 72, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (73, 'Scratchmen Apoo', '2019-03-01 13:38:40.313774', 73, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (74, 'Boa Hancock', '2019-03-01 13:38:40.374464', 74, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (75, 'Caesar Clown', '2019-03-01 13:38:40.380718', 75, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (76, 'Kaime', '2019-03-01 13:38:40.389177', 76, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (77, 'Corazon', '2019-03-01 13:38:40.396631', 77, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (78, 'Rebecca', '2019-03-01 13:38:40.471136', 78, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (79, 'Sabo', '2019-03-01 13:38:40.476704', 79, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (80, 'Baby Five', '2019-03-01 13:38:40.482852', 80, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (81, 'Miss Valentine', '2019-03-01 13:38:40.490519', 81, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (82, 'Bastille', '2019-03-01 13:38:40.536739', 82, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (83, 'Bartolomeo', '2019-03-01 13:38:40.543231', 83, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (84, 'Leo', '2019-03-01 13:38:40.549679', 84, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (85, 'Gladius', '2019-03-01 13:38:40.557745', 85, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (86, 'Tashigi', '2019-03-01 13:38:40.61632', 86, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (87, 'Roronoa Zoro', '2019-03-01 13:38:40.622927', 87, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (88, 'Ussop', '2019-03-01 13:38:40.62873', 88, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (89, 'Basil Hawkins', '2019-03-01 13:38:40.636178', 89, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (90, 'Lao G', '2019-03-01 13:38:40.644493', 90, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (91, 'Nojiko', '2019-03-01 13:38:40.716895', 91, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (92, 'Smoker', '2019-03-01 13:38:40.726348', 92, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (93, 'Doc Q', '2019-03-01 13:38:40.821398', 93, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (94, 'Emporio Ivankov', '2019-03-01 13:38:40.828777', 94, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (95, 'Bon Clay Mr. 2', '2019-03-01 13:38:40.840888', 95, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (96, 'Cavendish', '2019-03-01 13:38:40.853782', 96, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (97, 'Buggy', '2019-03-01 13:38:40.904554', 97, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (98, 'Bartholomew Kuma', '2019-03-01 13:38:40.911726', 98, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (99, 'Kaku', '2019-03-01 13:38:40.919284', 99, FALSE);
INSERT INTO public.editions (id, name, created_at, book_id, current)
VALUES (100, 'Bufalo', '2019-03-01 13:38:40.927148', 100, FALSE);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: pgw
--

INSERT INTO public.users (id, login, email, created_at, admin)
VALUES (1, 'carl', 'jeremiah@waters.com', '2019-03-01 13:39:12.922285', FALSE);
INSERT INTO public.users (id, login, email, created_at, admin)
VALUES (2, 'scotty.schimmel', 'amadobartoletti@hauckryan.biz', '2019-03-01 13:39:13.338798', FALSE);
INSERT INTO public.users (id, login, email, created_at, admin)
VALUES (3, 'reyna', 'erlinekutch@bartell.name', '2019-03-01 13:39:13.499295', FALSE);
INSERT INTO public.users (id, login, email, created_at, admin)
VALUES (4, 'doyle', 'lachelle@schupperowe.io', '2019-03-01 13:39:14.386125', FALSE);
INSERT INTO public.users (id, login, email, created_at, admin)
VALUES (5, 'burma', 'tobiaszieme@mosciski.co', '2019-03-01 13:39:15.310703', FALSE);
INSERT INTO public.users (id, login, email, created_at, admin)
VALUES (6, 'teresia_collier', 'jan@collins.org', '2019-03-01 13:39:15.718743', FALSE);
INSERT INTO public.users (id, login, email, created_at, admin)
VALUES (7, 'lynn_prohaska', 'oraleelemke@murray.org', '2019-03-01 13:39:15.987267', FALSE);
INSERT INTO public.users (id, login, email, created_at, admin)
VALUES (8, 'nolan_cormier', 'cathiemurphy@mckenzie.biz', '2019-03-01 13:39:16.188656', FALSE);
INSERT INTO public.users (id, login, email, created_at, admin)
VALUES (9, 'jazmine', 'randolph@krajcikosinski.net', '2019-03-01 13:39:17.417242', FALSE);


--
-- Data for Name: shelves; Type: TABLE DATA; Schema: public; Owner: pgw
--

INSERT INTO public.shelves (id, name, user_id, description)
VALUES (1, 'Vivi', 1, 'Effulgence unutterable singular nameless fainted.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (2, 'Trafalgar D. Water Law', 1,
        'Antediluvian unmentionable loathsome hideous swarthy noisome shunned madness.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (3, 'Momonosuke', 1, 'Shunned gambrel amorphous tentacles fungus nameless.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (4, 'Dracule Mihawk', 2, 'Ululate nameless abnormal tenebrous shunned gambrel accursed fungus.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (5, 'Marco', 3, 'Tentacles abnormal singular shunned eldritch daemoniac fungus stygian.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (6, 'Arlong', 3, 'Lurk abnormal mortal stygian.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (7, 'Sentoumaru', 3, 'Unnamable immemorial iridescence nameless.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (8, 'Fukuro', 3, 'Tentacles unmentionable lurk cat gambrel eldritch.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (9, 'Silvers Rayleigh', 3, 'Shunned blasphemous furtive noisome daemoniac squamous.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (10, 'Jesus Burgess', 3, 'Gibbous unutterable fungus shunned.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (11, 'Hakuba', 4, 'Unutterable indescribable gambrel singular cat hideous squamous lurk.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (12, 'Shirahoshi', 4, 'Nameless lurk indescribable stygian singular.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (13, 'Ben Beckmann', 4, 'Loathsome squamous gibbous unmentionable accursed.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (14, 'Garlic Jr', 4, 'Antiquarian abnormal effulgence madness unutterable dank indescribable tenebrous.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (15, 'Jaco', 4, 'Mortal cyclopean unutterable non-euclidean eldritch lurk.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (16, 'Gogeta', 4, 'Ululate eldritch stench amorphous accursed mortal swarthy indescribable.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (17, 'Kid Trunks', 4,
        'Iridescence cyclopean charnel tenebrous madness fainted accursed unnamable non-euclidean.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (18, 'Super Saiyan 2 Vegeta', 4,
        'Unmentionable decadent cyclopean indescribable accursed cat shunned daemoniac fainted.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (19, 'Majin Buu', 5, 'Gibbous antiquarian cat spectral.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (20, 'Uub', 5, 'Unutterable non-euclidean madness tentacles eldritch gibbous immemorial tenebrous.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (21, 'King Kai', 5, 'Cat iridescence daemoniac shunned stench blasphemous accursed.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (22, 'Yamcha', 5, 'Shunned noisome unnamable singular.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (23, 'San Shenlong', 5, 'Madness shunned tentacles nameless eldritch foetid.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (24, 'Whis', 5, 'Unnamable spectral gibbous hideous mortal singular cat.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (25, 'Super Saiyan 2 Goku', 5, 'Blasphemous madness furtive tenebrous shunned.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (26, 'Dr. Gero', 6, 'Antediluvian iridescence spectral squamous tentacles.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (27, 'Hit', 6, 'Antediluvian fainted amorphous gibbous shunned singular blasphemous fungus.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (28, 'Super Saiyan Goku', 6, 'Tentacles foetid manuscript indescribable.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (29, 'Chi-Chi', 7, 'Swarthy madness furtive eldritch cat tenebrous gibbous.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (30, 'Ryan Shenlong', 7, 'Immemorial squamous unmentionable gibbering unutterable tentacles.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (31, 'Baba', 8, 'Fainted singular gambrel effulgence fungus.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (32, 'Raditz', 8, 'Non-euclidean antiquarian unnamable effulgence singular manuscript.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (33, 'Super Saiyan Trunks', 8, 'Blasphemous decadent gibbous effulgence ululate.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (34, 'Supreme Kai', 8, 'Furtive stench iridescence indescribable loathsome accursed singular gambrel.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (35, 'Bardock', 8, 'Charnel madness iridescence unnamable eldritch.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (36, 'Android 20', 8, 'Furtive charnel cat stench unutterable gibbous.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (37, 'Zarbon', 8, 'Gibbering accursed effulgence singular.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (38, 'Videl', 8, 'Comprehension eldritch charnel gibbous cyclopean antiquarian.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (39, 'Vegito', 8, 'Stench abnormal fainted tentacles.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (40, 'Super Saiyan Goten', 9, 'Unnamable squamous unutterable ululate fainted antiquarian.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (41, 'Nail', 9, 'Lurk amorphous manuscript stygian tentacles nameless.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (42, 'Super Saiyan 3 Goku', 9, 'Manuscript unmentionable lurk swarthy cat.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (43, 'Baby', 9, 'Non-euclidean antiquarian cyclopean abnormal indescribable.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (44, 'Krillin', 9, 'Gibbering noisome accursed comprehension.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (45, 'Majin Vegeta', 9, 'Dank charnel squamous singular comprehension.');
INSERT INTO public.shelves (id, name, user_id, description)
VALUES (46, 'Nappa', 9, 'Antediluvian unutterable eldritch daemoniac cyclopean unmentionable singular.');


--
-- Data for Name: books_on_the_shelves; Type: TABLE DATA; Schema: public; Owner: pgw
--

INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (1, 81, 1, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (2, 93, 1, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (3, 25, 1, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (4, 94, 1, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (5, 86, 1, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (6, 69, 1, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (7, 74, 1, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (8, 71, 1, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (9, 99, 1, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (10, 80, 2, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (11, 49, 2, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (12, 7, 2, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (13, 96, 2, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (14, 60, 2, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (15, 68, 3, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (16, 14, 3, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (17, 25, 3, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (18, 77, 3, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (19, 100, 3, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (20, 34, 3, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (21, 62, 3, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (22, 41, 3, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (23, 86, 4, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (24, 77, 4, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (25, 47, 4, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (26, 57, 4, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (27, 70, 4, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (28, 73, 4, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (29, 15, 5, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (30, 100, 5, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (31, 35, 6, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (32, 59, 6, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (33, 32, 6, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (34, 8, 6, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (35, 91, 6, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (36, 43, 6, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (37, 73, 6, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (38, 5, 6, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (39, 9, 6, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (40, 96, 6, 10);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (41, 94, 7, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (42, 19, 7, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (43, 46, 7, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (44, 12, 7, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (45, 72, 7, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (46, 93, 7, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (47, 76, 7, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (48, 3, 7, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (49, 41, 7, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (50, 98, 8, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (51, 80, 8, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (52, 7, 8, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (53, 8, 8, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (54, 6, 8, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (55, 59, 8, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (56, 85, 8, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (57, 27, 8, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (58, 48, 8, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (59, 95, 9, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (60, 56, 9, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (61, 88, 9, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (62, 66, 9, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (63, 42, 9, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (64, 80, 9, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (65, 83, 9, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (66, 52, 10, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (67, 16, 10, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (68, 14, 10, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (69, 3, 10, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (70, 43, 10, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (71, 79, 10, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (72, 57, 10, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (73, 20, 10, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (74, 41, 10, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (75, 46, 10, 10);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (76, 24, 11, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (77, 65, 11, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (78, 49, 11, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (79, 63, 11, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (80, 38, 11, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (81, 86, 11, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (82, 81, 11, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (83, 93, 11, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (84, 17, 11, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (85, 30, 11, 10);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (86, 7, 12, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (87, 50, 12, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (88, 87, 12, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (89, 86, 12, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (90, 7, 13, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (91, 7, 14, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (92, 27, 14, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (93, 57, 14, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (94, 47, 14, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (95, 89, 15, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (96, 78, 15, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (97, 52, 15, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (98, 60, 15, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (99, 49, 15, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (100, 65, 15, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (101, 53, 15, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (102, 72, 15, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (103, 91, 15, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (104, 71, 15, 10);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (105, 71, 17, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (106, 53, 17, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (107, 51, 18, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (108, 34, 19, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (109, 84, 19, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (110, 2, 19, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (111, 27, 20, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (112, 59, 20, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (113, 51, 20, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (114, 96, 20, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (115, 58, 20, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (116, 76, 21, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (117, 14, 21, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (118, 48, 23, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (119, 29, 25, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (120, 59, 25, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (121, 19, 25, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (122, 99, 25, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (123, 77, 25, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (124, 96, 27, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (125, 50, 27, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (126, 50, 28, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (127, 63, 28, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (128, 21, 28, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (129, 41, 28, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (130, 60, 28, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (131, 87, 28, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (132, 31, 28, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (133, 17, 28, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (134, 45, 28, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (135, 38, 29, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (136, 55, 29, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (137, 73, 29, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (138, 21, 29, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (139, 3, 29, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (140, 65, 29, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (141, 48, 29, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (142, 6, 29, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (143, 69, 29, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (144, 27, 29, 10);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (145, 77, 30, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (146, 3, 30, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (147, 76, 30, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (148, 16, 30, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (149, 68, 31, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (150, 78, 31, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (151, 61, 31, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (152, 6, 31, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (153, 78, 32, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (154, 18, 32, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (155, 62, 32, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (156, 50, 32, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (157, 44, 32, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (158, 2, 32, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (159, 40, 32, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (160, 38, 32, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (161, 33, 32, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (162, 10, 32, 10);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (163, 12, 33, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (164, 18, 33, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (165, 65, 33, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (166, 10, 33, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (167, 2, 33, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (168, 56, 33, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (169, 92, 33, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (170, 46, 33, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (171, 91, 33, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (172, 33, 33, 10);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (173, 76, 35, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (174, 51, 36, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (175, 61, 36, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (176, 52, 36, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (177, 78, 36, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (178, 63, 36, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (179, 46, 36, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (180, 77, 36, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (181, 89, 36, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (182, 58, 37, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (183, 39, 37, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (184, 53, 37, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (185, 6, 37, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (186, 68, 37, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (187, 37, 37, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (188, 69, 37, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (189, 74, 37, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (190, 25, 37, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (191, 18, 38, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (192, 85, 38, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (193, 83, 38, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (194, 79, 38, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (195, 37, 38, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (196, 65, 38, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (197, 89, 38, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (198, 62, 38, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (199, 78, 38, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (200, 84, 39, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (201, 33, 39, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (202, 5, 39, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (203, 91, 39, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (204, 10, 39, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (205, 56, 39, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (206, 57, 39, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (207, 95, 40, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (208, 85, 40, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (209, 27, 40, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (210, 23, 40, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (211, 45, 40, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (212, 26, 40, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (213, 7, 40, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (214, 57, 40, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (215, 55, 40, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (216, 24, 40, 10);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (217, 90, 41, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (218, 60, 41, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (219, 92, 41, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (220, 63, 41, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (221, 84, 41, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (222, 22, 42, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (223, 61, 42, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (224, 85, 42, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (225, 88, 42, 4);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (226, 21, 42, 5);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (227, 94, 42, 6);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (228, 50, 42, 7);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (229, 90, 42, 8);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (230, 76, 42, 9);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (231, 25, 43, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (232, 1, 43, 2);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (233, 33, 43, 3);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (234, 91, 44, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (235, 93, 46, 1);
INSERT INTO public.books_on_the_shelves (id, edition_id, shelf_id, "position")
VALUES (236, 65, 46, 2);


--
-- Name: books_on_the_shelves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.books_on_the_shelves_id_seq', 236, TRUE);


--
-- Name: editions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.editions_id_seq', 100, TRUE);


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.genres_id_seq', 1, FALSE);


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: pgw
--


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.ratings_id_seq', 1, FALSE);


--
-- Name: shelves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.shelves_id_seq', 46, TRUE);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgw
--

SELECT pg_catalog.setval('public.users_id_seq', 9, TRUE);


--
-- PostgreSQL database dump complete
--

