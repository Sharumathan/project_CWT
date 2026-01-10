--
-- PostgreSQL database dump
--

\restrict CVqRV8TQyyGbkPov2H7lnQ5yvUv6d2ivLd9C0aWbbBqTJh4BUG0ca1XewcaewQM

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-01-10 17:12:40

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5376 (class 0 OID 26804)
-- Dependencies: 256
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, email, role, is_active, profile_photo, created_at, last_login, updated_at) FROM stdin;
15	TharminiBuyer	$2y$12$KHJIc58a.oKU8xLdGUw5BOnsWgza0c3T3AEOyG0cNfYpkRxHW36Ra	abishiganfcl24@gmail.com	buyer	t	default-avatar.png	2025-12-18 12:24:00	\N	2025-12-18 12:24:00
16	Buyer_Ragu_1712	$2y$12$MZGBiGwaOIXY/B5CMLadX.QdC4pPTNAnXif0jF9.IAhQMv4zLh71q	raguraam712@gmail.com	buyer	t	default-avatar.png	2025-12-18 13:53:13	\N	2025-12-18 13:53:13
19	Dulaji123	$2y$12$hlS0pnRWYAJ.1pPMkufFauE6gO5tJ4LhjXxmfko.rCBHjBJBH0Fei	abi24ati3@gmail.com	buyer	t	default-avatar.png	2025-12-18 14:59:53	\N	2025-12-18 14:59:53
21	abi5	$2y$12$Lvm1y8dpLIAWRooLV0Plv.Bw5bBdep8RUsalkEPPSFFy9QslnM2/S	koneswaramkovil@gmail.com	buyer	t	default-avatar.png	2025-12-18 15:52:05	\N	2025-12-18 15:52:05
22	abikih123	$2y$12$K3WbNcf2.6QVMWiq0oLbYOXpkH2TF6sISnWNbNPAsgUG4bdQvMSh6	koneswaram3@gmail.com	buyer	t	default-avatar.png	2025-12-18 16:10:02	\N	2025-12-18 16:10:02
23	Abiragu1	$2y$12$F4ez6VA1hCZOZCC6D2HtWe742C96YiYcpaeUO4at.25ZiNKvQulX2	pdofficeabi3@gmail.com	buyer	t	default-avatar.png	2025-12-18 16:48:58	\N	2025-12-18 16:48:58
26	abi123	$2y$12$Ruv9MUPTOjWvcjOpGXNxweh4/WTGHrurYb7i/YF6vtG06pTgiHDt2	kolitha@creativesoftware.com	buyer	t	default-avatar.png	2026-01-09 16:55:51	2026-01-09 16:56:50	2026-01-09 16:55:51
20	Abi12345	$2y$12$P01T/8OXIJubC7J7jqFAa.tXDkw43Nql4h9k4pAw5GOpv4K6PHWY6	atiblood2024@gmail.com	buyer	t	default-avatar.png	2025-12-18 15:29:56	2025-12-20 00:12:14	2025-12-18 15:29:56
1	admin_user	$2y$12$mP.S9NMYqLhzyOkQFMBUGuUPAXKXZrAmqyLY8kNr/DEGwmD/F2HsS	admin@hghub.lk	admin	t	admin123.png	2025-11-27 15:35:38.156034	2026-01-09 17:00:26	2025-11-27 18:48:05
5	fm_Menuka	$2y$12$oWS/t1WYMkUKy4d.XPKpweBU427f5H5Uaf605XPalkIvdqKqANkAm	kamala@farm.lk	farmer	t	farmer2.png	2025-11-27 15:35:38.156034	2026-01-09 17:12:47	2025-12-30 15:50:58
4	fm_Tenura	$2y$12$i2kQiMNS9tLrTI8XmfOQbeLP4dFLx2G2rD.5ez1a68.fvluJskbsK	sudath@farm.lk	farmer	t	farmer_4_1765609591.jpeg	2025-11-27 15:35:38.156034	2025-12-14 07:25:00	2025-12-29 12:13:44
3	lf_malini	$2y$12$r4M.KMJ/x9MMpwNQaOdYo.PJ1N0Ys95wl1rMy5PBcezYY7lid1f6a	malini.s@lffarm.lk	lead_farmer	t	lf2.png	2025-11-27 15:35:38.156034	2026-01-09 17:17:35	2025-11-27 18:48:06
8	fa_nimal	$2y$12$4aVqa3IaHSkViqhy5FcMReC.VdAsbn2KaLmjie4sU1OAkaHrPGGGe	nimal.d@field.lk	facilitator	t	facilitator1.png	2025-11-27 15:35:38.156034	2026-01-09 17:21:46	2025-11-27 18:48:07
7	by_saman	$2y$12$ojILpVrgORhhqArt8y2k9ONKhv9qFuIZ1H0iez1VxHV8HymvfjSFi	saman.perera@mail.lk	buyer	t	buyer2.png	2025-11-27 15:35:38.156034	2026-01-01 11:52:49	2025-12-05 08:01:22
18	AbiBuyer1234	$2y$12$nO5f9MHbnNa/b1aZWaqm3.uz/WeF1wZ6j/jJK1eIq/JaSLp2kC5fi	abi.ragu4@gmail.com	buyer	t	default-avatar.png	2025-12-18 14:51:56	\N	2025-12-22 03:36:27
2	lf_rukshan	$2y$12$wNIW4CB7OWEavpnec/7r7Oi9egQ5RuY2xMOvemBKECF.WglxVR.9K	rukshan.p@lffarm.lk	lead_farmer	t	lf1.png	2025-11-27 15:35:38.156034	2025-12-17 09:55:41	2025-11-27 18:48:05
17	abinayah_buyer	$2y$12$K/1/Hm1YjmRl.zU3DleWYOt4LmR/tQZRSRlaN3Po1CCJTM059jNc2	trincoabishigan@gmail.com	buyer	t	default-avatar.png	2025-12-18 14:20:51	2026-01-06 08:02:48	2025-12-18 14:20:51
25	buyer_Kolitha_1	$2y$12$UnDH6VhHmo4QpfN7Yapp3uueHRJwv3FPpqYQS8KpjwRuOJVO2lnOa	songsabi24@gmail.com	buyer	t	default-avatar.png	2025-12-30 05:46:34	2025-12-30 06:55:07	2025-12-30 07:10:58
9	AbiBuyer24	$2y$12$QvbYK4SHfr2nb6vwXVJbCeirJ2ILIh7unjvjk3vN6uvhc7pFoZoge	abifamily24@gmail.com	buyer	t	buyer_9_1766053881.jpg	2025-12-18 10:25:50	2025-12-18 10:30:22	2025-12-29 06:12:15
24	asd_Buyer	$2y$12$OCDyBmZjOxlM65HAfa9XjO6SW5WywNpAriucZuVPM57V.KQKQIP.W	Dulaj@CreativeSoftware.com	buyer	t	default-avatar.png	2025-12-19 11:30:06	\N	2025-12-19 11:30:06
6	by_kandy_foods	$2y$12$EPyfmg.k8Fh3fjjNgk/DMeAKUSCu0QCx2yCA8j9OGJolDGE5abRgy	kandy_foods@mail.lk	buyer	t	buyer1.png	2025-11-27 15:35:38.156034	2025-12-31 10:14:33	2025-12-05 06:10:14
\.


--
-- TOC entry 5350 (class 0 OID 26546)
-- Dependencies: 230
-- Data for Name: buyers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.buyers (id, user_id, name, nic_no, primary_mobile, whatsapp_number, residential_address, business_name, business_type, is_verified, created_at, updated_at) FROM stdin;
1	6	Kandy Wholesale Foods	200100200V	0772233445	0772233445	12, Market Street, Kandy	Kandy Wholesale Foods	wholesaler	t	2025-11-27 15:36:43.43265	2025-11-30 01:14:28.935071
2	7	Saman Perera1	880990123V	0719988776	0719988776	45/1, Malabe Road, Colombo	\N	individual	f	2025-11-27 15:36:43.43265	2025-12-05 13:31:02.825391
3	9	Abishigan Raguraam	\N	0764440305	0764440305	No.48/277, Rajavarothayam Square, Kandy Road, Trincomalee.	\N	individual	f	2025-12-18 10:25:50	2025-12-18 10:25:50
9	15	Tharmini Raguraam	\N	0764440305	0764440305	No.48/277, Rajavarothayam Square, Kandy Road, Trincomalee.	\N	individual	f	2025-12-18 12:24:00	2025-12-18 12:24:00
10	16	Raguraam	\N	0764440305	0776535484	No.48/277, Rajavarothayam Square, Kandy Road, Trincomalee.	\N	individual	f	2025-12-18 13:53:13	2025-12-18 13:53:13
15	21	abi5	\N	0764440305	\N	12358	\N	individual	f	2025-12-18 15:52:05	2025-12-18 15:52:05
16	22	abikih	\N	0764440305	\N	12258	\N	individual	f	2025-12-18 16:10:02	2025-12-18 16:10:02
17	23	abishigan ragu	\N	0764440305	\N	85213	\N	individual	f	2025-12-18 16:48:58	2025-12-18 16:48:58
12	18	Abishigan	\N	0776535484	0776535484	48/277	\N	individual	f	2025-12-18 14:51:56	2025-12-22 09:06:27.896295
19	25	Kolitha de Silva	\N	0764440305	0764440305	No. 15, \r\nGalle Road, \r\nColombo.	\N	individual	f	2025-12-30 05:46:34	2025-12-30 05:46:34
13	19	Dulaj	\N	0716608301	\N	123	\N	individual	f	2025-12-18 14:59:53	2025-12-31 08:37:44.934193
18	24	asd 	\N	0779012324	0779012324	123456	\N	individual	f	2025-12-19 11:30:06	2025-12-31 08:38:45.070152
14	20	abi1	\N	0764440305	0701200262	456123	\N	individual	f	2025-12-18 15:29:56	2026-01-05 18:30:49.857363
11	17	Abinayha Raguraam	\N	0764440305	0764440305	48/277	\N	individual	f	2025-12-18 14:20:51	2026-01-06 08:02:15.997195
21	26	Raguraam Abishigan	\N	0777256682	\N	48/277	\N	individual	f	2026-01-09 16:55:51	2026-01-09 16:55:51
\.


--
-- TOC entry 5393 (class 0 OID 40972)
-- Dependencies: 274
-- Data for Name: buyer_product_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.buyer_product_requests (id, buyer_id, product_name, product_image, needed_quantity, unit_of_measure, needed_date, unit_price, description, status, created_at, updated_at) FROM stdin;
4	14	Big Onion	request_1766192731_6945f65be9dbc.png	50.00	kg	2026-01-21	150.00	Ensure the onions have been properly dried so they don't rot during transport.	active	2025-12-20 01:05:31	2025-12-20 01:05:31
3	2	Bell Peppers	\N	30.00	kg	2026-02-10	300.00	Red and green bell peppers needed	active	2025-12-19 18:24:01.086807	2025-12-20 06:58:52.341457
23	11	Potatoes	\N	12.00	kg	2026-05-20	250.00	321321	active	2026-01-06 16:17:22	2026-01-06 16:17:22
24	11	Potatoes	\N	21.00	kg	2027-01-01	120.00	Potatoes	active	2026-01-06 16:29:58	2026-01-06 16:29:58
\.


--
-- TOC entry 5342 (class 0 OID 26464)
-- Dependencies: 222
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache (key, value, expiration) FROM stdin;
greenmarket-cache-lead_farmer_groups_stats	TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Mjp7aTowO086ODoic3RkQ2xhc3MiOjEyOntzOjI6ImlkIjtpOjE7czoxMDoiZ3JvdXBfbmFtZSI7czoyMToiS2VnYWxsZSBPcmdhbmljIEdyb3VwIjtzOjEyOiJncm91cF9udW1iZXIiO3M6MTA6IktFRy1PRy0wMDEiO3M6MTQ6ImFjdGl2ZV9mYXJtZXJzIjtpOjE7czoxNDoidG90YWxfcHJvZHVjdHMiO2k6Mzc7czoxMToic2FsZXNfY291bnQiO2k6MjtzOjExOiJ0b3RhbF9zYWxlcyI7czo4OiIyMjY1MC4wMCI7czoxMjoic3VjY2Vzc19yYXRlIjtzOjIwOiIxMDAuMDAwMDAwMDAwMDAwMDAwMCI7czo0OiJyYW5rIjtpOjE7czoyMjoic3VjY2Vzc19yYXRlX2Zvcm1hdHRlZCI7czo2OiIxMDAuMCUiO3M6MjE6InRvdGFsX3NhbGVzX2Zvcm1hdHRlZCI7czoxMzoiTEtSIDIyLDY1MC4wMCI7czoxMToiY29sb3JfY2xhc3MiO3M6MTI6InN1Y2Nlc3MtaGlnaCI7fWk6MTtPOjg6InN0ZENsYXNzIjoxMjp7czoyOiJpZCI7aToyO3M6MTA6Imdyb3VwX25hbWUiO3M6MTg6Ikt1cnVuZWdhbGEgSGFydmVzdCI7czoxMjoiZ3JvdXBfbnVtYmVyIjtzOjEwOiJLVVItSFYtMDA1IjtzOjE0OiJhY3RpdmVfZmFybWVycyI7aToxO3M6MTQ6InRvdGFsX3Byb2R1Y3RzIjtpOjMwO3M6MTE6InNhbGVzX2NvdW50IjtpOjA7czoxMToidG90YWxfc2FsZXMiO3M6MToiMCI7czoxMjoic3VjY2Vzc19yYXRlIjtzOjE6IjAiO3M6NDoicmFuayI7aToyO3M6MjI6InN1Y2Nlc3NfcmF0ZV9mb3JtYXR0ZWQiO3M6NDoiMC4wJSI7czoyMToidG90YWxfc2FsZXNfZm9ybWF0dGVkIjtzOjg6IkxLUiAwLjAwIjtzOjExOiJjb2xvcl9jbGFzcyI7czoxMjoic3VjY2Vzcy1wb29yIjt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9	1767962033
\.


--
-- TOC entry 5343 (class 0 OID 26474)
-- Dependencies: 223
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- TOC entry 5354 (class 0 OID 26577)
-- Dependencies: 234
-- Data for Name: facilitators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facilitators (id, user_id, name, nic_no, primary_mobile, whatsapp_number, email, assigned_division, is_active, created_at, updated_at) FROM stdin;
1	8	Nimal Dissanayake	701234567V	0776543210	0776543210	nimal.d@field.lk	Kegalle District	t	2025-11-27 15:36:59.446052	2025-11-30 01:14:28.935071
\.


--
-- TOC entry 5358 (class 0 OID 26616)
-- Dependencies: 238
-- Data for Name: lead_farmers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lead_farmers (id, user_id, name, nic_no, primary_mobile, whatsapp_number, residential_address, grama_niladhari_division, group_name, group_number, preferred_payment, payment_details, created_at, updated_at, account_number, account_holder_name, bank_name, bank_branch) FROM stdin;
1	2	Rukshan Perera	901234567V	0771234567	0771234567	23/A, Green Gardens, Kegalle	Kegalle South	Kegalle Organic Group	KEG-OG-001	bank	Bank: BOC, A/C: 2422737	2025-11-27 15:35:58.6277	2025-12-09 10:33:33.944786	2422737	Abishigan	BOC	Trincomalee Super Grade
2	3	Malini Senanayake	756789012V	0719876543	0719876543	10/B, Coconut Road, Kurunegala	Kurunegala East	Kurunegala Harvest	KUR-HV-005	bank	Bank: BOC, A/C: 2422737	2025-11-27 15:35:58.6277	2025-12-09 10:33:33.944786	2422737	Abishigan	BOC	Trincomalee Super Grade
\.


--
-- TOC entry 5356 (class 0 OID 26590)
-- Dependencies: 236
-- Data for Name: farmers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.farmers (id, user_id, lead_farmer_id, name, nic_no, primary_mobile, whatsapp_number, email, residential_address, address_map_link, preferred_payment, payment_details, grama_niladhari_division, is_active, created_at, updated_at, district, account_number, account_holder_name, bank_name, bank_branch, ezcash_mobile, mcash_mobile) FROM stdin;
1	4	1	Tenura Rupasinghe	854321098V	0764440305	0776655203	sudath@farm.lk	Farm 1, near temple, Kegalle	https://maps.link/sudath-farm2	bank	\N	Kegalle South	t	2025-11-27 15:36:15.971934	2025-12-29 16:46:20.402887	Kegalle	800900101	Tenura Rupasinghe	BOC	Kegalle Main Branch	\N	\N
2	5	2	Menuka Dolage	687654321V	0764440305	0754455667	kamala@farm.lk	35, Paddy Fields, Kurunegala	https://maps.link/kamala-farm	mcash	Mcash: 0754455667	Kurunegala East	t	2025-11-27 15:36:15.971934	2026-01-01 14:34:34.58809	Kurunegala	\N	\N	\N	\N	\N	0754455667
\.


--
-- TOC entry 5364 (class 0 OID 26664)
-- Dependencies: 244
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, order_number, buyer_id, farmer_id, lead_farmer_id, order_status, total_amount, created_at, paid_date, completed_date, updated_at) FROM stdin;
2	ORD-1002	2	2	1	completed	600.00	2025-11-27 15:41:28.796716	\N	\N	2025-12-11 14:55:32.377716
1	ORD-1001	1	1	1	paid	22050.00	2025-11-27 15:41:28.796716	2025-11-30 15:00:00.123456	\N	2025-12-12 11:25:28.679659
\.


--
-- TOC entry 5352 (class 0 OID 26561)
-- Dependencies: 232
-- Data for Name: complaints; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.complaints (id, complainant_user_id, complainant_role, against_user_id, related_order_id, complaint_type, description, status, resolved_by_facilitator_id, created_at, updated_at) FROM stdin;
1	4	farmer	2	1	payment_issue	Payment not received yet	in_progress	1	2025-11-27 15:43:25.174899	2025-12-21 09:27:52.686292
2	5	farmer	3	\N	product_quality	Incorrect product weight added	resolved	\N	2025-11-27 15:43:25.174899	2026-01-03 20:06:49.080543
4	7	buyer	\N	\N	request_ignored	134568789qwertyuiopasdfgh	resolved	1	2025-12-21 04:21:54	2026-01-03 20:07:09.365939
\.


--
-- TOC entry 5348 (class 0 OID 26515)
-- Dependencies: 228
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- TOC entry 5346 (class 0 OID 26500)
-- Dependencies: 226
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- TOC entry 5345 (class 0 OID 26485)
-- Dependencies: 225
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
1	default	{"uuid":"290bf662-5601-4458-a321-74ffb711cb66","displayName":"App\\\\Mail\\\\ContactFormMail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Mail\\\\SendQueuedMailable","command":"O:34:\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\":17:{s:8:\\"mailable\\";O:24:\\"App\\\\Mail\\\\ContactFormMail\\":3:{s:4:\\"data\\";a:5:{s:6:\\"_token\\";s:40:\\"6dzp3kCzYFlfZkdCqlLmWkLz4rgfWrTGBcOvg0QA\\";s:4:\\"name\\";s:9:\\"Abishigan\\";s:5:\\"email\\";s:21:\\"abifamily24@gmail.com\\";s:7:\\"subject\\";s:6:\\"check1\\";s:7:\\"message\\";s:14:\\"check123456789\\";}s:2:\\"to\\";a:1:{i:0;a:2:{s:4:\\"name\\";N;s:7:\\"address\\";s:25:\\"trincoabishigan@gmail.com\\";}}s:6:\\"mailer\\";s:4:\\"smtp\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:13:\\"maxExceptions\\";N;s:17:\\"shouldBeEncrypted\\";b:0;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:12:\\"messageGroup\\";N;s:12:\\"deduplicator\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;s:3:\\"job\\";N;}"},"createdAt":1766038947,"delay":null}	0	\N	1766038947	1766038947
2	default	{"uuid":"0e3784cc-5236-4fe2-895c-a4b1c24b236c","displayName":"App\\\\Mail\\\\ContactFormMail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Mail\\\\SendQueuedMailable","command":"O:34:\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\":17:{s:8:\\"mailable\\";O:24:\\"App\\\\Mail\\\\ContactFormMail\\":3:{s:4:\\"data\\";a:5:{s:6:\\"_token\\";s:40:\\"6dzp3kCzYFlfZkdCqlLmWkLz4rgfWrTGBcOvg0QA\\";s:4:\\"name\\";s:28:\\"Abishigan Four Corners Lanka\\";s:5:\\"email\\";s:21:\\"abifamily24@gmail.com\\";s:7:\\"subject\\";s:6:\\"check1\\";s:7:\\"message\\";s:16:\\"fewefwefwefwefwe\\";}s:2:\\"to\\";a:1:{i:0;a:2:{s:4:\\"name\\";N;s:7:\\"address\\";s:25:\\"trincoabishigan@gmail.com\\";}}s:6:\\"mailer\\";s:4:\\"smtp\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:13:\\"maxExceptions\\";N;s:17:\\"shouldBeEncrypted\\";b:0;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:12:\\"messageGroup\\";N;s:12:\\"deduplicator\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;s:3:\\"job\\";N;}"},"createdAt":1766039645,"delay":null}	0	\N	1766039645	1766039645
3	default	{"uuid":"e8a4af44-99d7-416f-8e16-70825bf1cefd","displayName":"App\\\\Mail\\\\ContactFormMail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Mail\\\\SendQueuedMailable","command":"O:34:\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\":17:{s:8:\\"mailable\\";O:24:\\"App\\\\Mail\\\\ContactFormMail\\":3:{s:4:\\"data\\";a:5:{s:6:\\"_token\\";s:40:\\"6dzp3kCzYFlfZkdCqlLmWkLz4rgfWrTGBcOvg0QA\\";s:4:\\"name\\";s:9:\\"Abishigan\\";s:5:\\"email\\";s:21:\\"abifamily24@gmail.com\\";s:7:\\"subject\\";s:6:\\"check1\\";s:7:\\"message\\";s:11:\\"ascasdasdsa\\";}s:2:\\"to\\";a:1:{i:0;a:2:{s:4:\\"name\\";N;s:7:\\"address\\";s:25:\\"trincoabishigan@gmail.com\\";}}s:6:\\"mailer\\";s:4:\\"smtp\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:13:\\"maxExceptions\\";N;s:17:\\"shouldBeEncrypted\\";b:0;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:12:\\"messageGroup\\";N;s:12:\\"deduplicator\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;s:3:\\"job\\";N;}"},"createdAt":1766040093,"delay":null}	0	\N	1766040093	1766040093
4	default	{"uuid":"3c9f3e52-361b-4ecd-b058-fe87ceb715a7","displayName":"App\\\\Mail\\\\ContactFormMail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Mail\\\\SendQueuedMailable","command":"O:34:\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\":17:{s:8:\\"mailable\\";O:24:\\"App\\\\Mail\\\\ContactFormMail\\":3:{s:4:\\"data\\";a:5:{s:6:\\"_token\\";s:40:\\"6dzp3kCzYFlfZkdCqlLmWkLz4rgfWrTGBcOvg0QA\\";s:4:\\"name\\";s:9:\\"Abishigan\\";s:5:\\"email\\";s:21:\\"abifamily24@gmail.com\\";s:7:\\"subject\\";s:18:\\"smart market check\\";s:7:\\"message\\";s:13:\\"1246789456123\\";}s:2:\\"to\\";a:1:{i:0;a:2:{s:4:\\"name\\";N;s:7:\\"address\\";s:25:\\"trincoabishigan@gmail.com\\";}}s:6:\\"mailer\\";s:4:\\"smtp\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:13:\\"maxExceptions\\";N;s:17:\\"shouldBeEncrypted\\";b:0;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:12:\\"messageGroup\\";N;s:12:\\"deduplicator\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;s:3:\\"job\\";N;}"},"createdAt":1766040496,"delay":null}	0	\N	1766040496	1766040496
\.


--
-- TOC entry 5341 (class 0 OID 26455)
-- Dependencies: 221
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	0001_01_01_000001_create_cache_table	1
2	0001_01_01_000002_create_jobs_table	1
3	2025_11_27_132430_create_sessions_table	1
5	2025_11_27_183908_add_timestamps_to_users_table	2
6	2025_12_04_174217_create_wishlists_table	3
7	2024_12_29_123456_create_password_history_table	4
8	2025_12_30_123456_add_subadmin_to_users_role	5
\.


--
-- TOC entry 5360 (class 0 OID 26635)
-- Dependencies: 240
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications (id, user_id, recipient_type, recipient_address, title, message, notification_type, is_read, related_id, created_at, updated_at) FROM stdin;
1	2	user	\N	New Order	You have a new order ORD-1001	order_payment	f	1	2025-11-27 15:44:31.551929	2025-11-30 01:14:28.935071
2	4	farmer_mobile	0701122334	Pickup Reminder	Buyer will arrive at 3pm	system	t	\N	2025-11-27 15:44:31.551929	2025-12-14 13:19:13.953979
44	4	user	\N	⚠️ Complaint Against You	Buyer Kandy Foods has filed a complaint regarding your TJC Mango quality	system	t	2	2024-01-13 11:25:00	2025-12-14 13:19:13.953979
5	\N	system_wide	\N	System Maintenance	System will be down for maintenance on 2024-01-15 from 2AM to 4AM	admin_alert	f	\N	2024-01-10 09:00:00	2025-12-12 08:14:48.114369
6	2	user	\N	🎉 New Order Received!	Buyer "Kandy Foods" placed order ORD-1001 for 5kg TJC Mango	order_payment	f	1	2024-01-10 10:15:00	2025-12-12 08:14:48.114369
7	3	user	\N	🎉 New Order Received!	Buyer "Saman Perera" placed order ORD-1002 for 3kg Pineapple	order_payment	f	2	2024-01-10 11:30:00	2025-12-12 08:14:48.114369
8	2	user	\N	💰 Payment Confirmed	Payment confirmed for order ORD-1001. Amount: LKR 2,500	order_payment	f	1	2024-01-10 10:20:00	2025-12-12 08:14:48.114369
9	2	user	\N	⚠️ Low Stock Alert	Product "TJC Mango" is running low (only 2kg remaining)	system	f	5	2024-01-09 14:00:00	2025-12-12 08:14:48.114369
10	3	user	\N	📦 Stock Update Needed	Product "Passion Fruit" availability date is tomorrow	system	f	6	2024-01-09 15:30:00	2025-12-12 08:14:48.114369
11	2	user	\N	👨‍🌾 New Farmer Added	Farmer "Sudath" has been added to your group successfully	system	f	4	2024-01-08 09:00:00	2025-12-12 08:14:48.114369
12	2	user	\N	✅ Order Ready for Pickup	Order ORD-1001 is ready. Farmer Sudath has prepared the products	system	f	1	2024-01-10 16:00:00	2025-12-12 08:14:48.114369
13	\N	farmer_mobile	0701122334	Order Confirmation	Your product, 5kg of TJC Mango, has been ordered by Kandy Foods. Prepare for pickup.	order_payment	f	1	2024-01-10 10:25:00	2025-12-12 08:14:48.114369
14	\N	farmer_email	sudath@farm.lk	Order Confirmation	Your product, 5kg of TJC Mango, has been ordered by Kandy Foods. Prepare for pickup.	order_payment	f	1	2024-01-10 10:25:00	2025-12-12 08:14:48.114369
15	\N	farmer_mobile	0712233445	Order Confirmation	Your product, 3kg of Pineapple, has been ordered by Saman Perera. Prepare for pickup.	order_payment	f	2	2024-01-10 11:35:00	2025-12-12 08:14:48.114369
16	\N	farmer_mobile	0701122334	Product Listed Successfully	Your TJC Mango has been listed in the marketplace	system	f	5	2024-01-08 14:00:00	2025-12-12 08:14:48.114369
17	\N	farmer_email	kamala@farm.lk	Product Almost Sold Out	Your Local Greens (Kola) has only 1kg remaining	system	f	7	2024-01-09 16:00:00	2025-12-12 08:14:48.114369
18	\N	farmer_mobile	0701122334	Pickup Reminder	Buyer Kandy Foods will arrive at your location tomorrow at 3pm	system	f	1	2024-01-11 09:00:00	2025-12-12 08:14:48.114369
19	\N	farmer_mobile	0712233445	Pickup Completed	Buyer has collected the Pineapple order. Thank you!	system	f	2	2024-01-11 17:00:00	2025-12-12 08:14:48.114369
20	6	user	\N	✅ Order Confirmed	Your order ORD-1001 has been confirmed. Total: LKR 2,500	order_payment	f	1	2024-01-10 10:18:00	2025-12-12 08:14:48.114369
21	7	user	\N	✅ Order Confirmed	Your order ORD-1002 has been confirmed. Total: LKR 1,500	order_payment	f	2	2024-01-10 11:32:00	2025-12-12 08:14:48.114369
22	6	user	\N	💳 Payment Successful	Payment of LKR 2,500 for order ORD-1001 completed successfully	order_payment	f	1	2024-01-10 10:19:00	2025-12-12 08:14:48.114369
23	6	user	\N	📄 Invoice Generated	Invoice for order ORD-1001 is ready for download	order_payment	f	1	2024-01-10 10:21:00	2025-12-12 08:14:48.114369
24	6	user	\N	📍 Pickup Details	Order ORD-1001 ready for pickup at Sudath's farm. Address: 123 Farm Road, Colombo	system	f	1	2024-01-10 16:05:00	2025-12-12 08:14:48.114369
25	7	user	\N	📍 Pickup Details	Order ORD-1002 ready for pickup at Kamala's garden. Address: 456 Garden Lane, Gampaha	system	f	2	2024-01-10 16:10:00	2025-12-12 08:14:48.114369
26	6	user	\N	🛒 Back in Stock	TJC Mango is back in stock!	system	f	5	2024-01-12 08:00:00	2025-12-12 08:14:48.114369
27	7	user	\N	🎯 Price Drop Alert	Pineapple price reduced by 15%	system	f	6	2024-01-12 09:00:00	2025-12-12 08:14:48.114369
28	6	user	\N	🚚 Pickup Completed	Thank you for picking up order ORD-1001. Please leave feedback!	system	f	1	2024-01-11 18:00:00	2025-12-12 08:14:48.114369
29	8	user	\N	📅 Training Session	Schedule farmer training in Colombo on 2024-01-20	system	f	\N	2024-01-15 10:00:00	2025-12-12 08:14:48.114369
30	8	user	\N	🔧 Profile Update Request	Farmer Sudath requested NIC number update	system	f	4	2024-01-11 14:00:00	2025-12-12 08:14:48.114369
32	8	user	\N	⚠️ System Alert	Taxonomy category "Fresh Fruit" needs review	admin_alert	f	1	2024-01-13 15:00:00	2025-12-12 08:14:48.114369
33	8	user	\N	⚠️ Payment Gateway Issue	Payment gateway experiencing delays	admin_alert	f	\N	2024-01-14 09:30:00	2025-12-12 08:14:48.114369
34	8	user	\N	👤 New User Registered	New buyer "Hotel Paradise" registered in system	system	f	9	2024-01-14 16:00:00	2025-12-12 08:14:48.114369
35	1	user	\N	👤 New User Registration	New lead farmer registered: "Lakshman Silva"	system	f	10	2024-01-13 08:00:00	2025-12-12 08:14:48.114369
36	1	user	\N	⚠️ Account Suspension Required	Buyer "ABC Restaurant" has 3 unresolved complaints	admin_alert	f	11	2024-01-14 10:00:00	2025-12-12 08:14:48.114369
37	1	user	\N	📊 System Report Ready	Monthly sales report for December 2023 is available	admin_alert	f	\N	2024-01-05 06:00:00	2025-12-12 08:14:48.114369
38	1	user	\N	💾 Backup Completed	Daily database backup completed successfully	system	f	\N	2024-01-15 03:00:00	2025-12-12 08:14:48.114369
39	1	user	\N	⚠️ New Complaint Filed	Farmer Sudath filed complaint against Lead Farmer Rukshan	admin_alert	f	1	2024-01-12 14:30:00	2025-12-12 08:14:48.114369
40	1	user	\N	⚠️ New Complaint Filed	Buyer Kandy Foods filed complaint about product quality	admin_alert	f	2	2024-01-13 11:20:00	2025-12-12 08:14:48.114369
41	1	user	\N	💰 High Value Transaction	Order ORD-1005 worth LKR 25,000 placed by bulk buyer	admin_alert	f	5	2024-01-14 15:45:00	2025-12-12 08:14:48.114369
42	1	user	\N	📈 Sales Milestone	System crossed LKR 500,000 in total sales	admin_alert	f	\N	2024-01-15 09:00:00	2025-12-12 08:14:48.114369
43	1	user	\N	🔒 Suspicious Activity	Multiple failed login attempts for user fm_sudath	admin_alert	f	4	2024-01-14 22:30:00	2025-12-12 08:14:48.114369
46	2	user	\N	⏰ Reminder: Update Stock	Product "Rambutan" availability needs confirmation	system	f	8	2024-01-11 09:00:00	2025-12-12 08:14:48.114369
47	6	user	\N	⏰ Pickup Reminder	Order ORD-1001 pickup is pending for 2 days	system	f	1	2024-01-12 10:00:00	2025-12-12 08:14:48.114369
48	8	user	\N	⏰ Training Follow-up	Follow up with Colombo farmers group about last training	system	f	\N	2024-01-22 10:00:00	2025-12-12 08:14:48.114369
49	6	user	\N	⭐ Rate Your Purchase	How was your experience with TJC Mango? Please leave feedback	system	f	1	2024-01-12 10:00:00	2025-12-12 08:14:48.114369
51	\N	system_wide	\N	🌱 New Season Products	Fresh seasonal fruits now available! Check out new arrivals	system	f	\N	2024-01-20 08:00:00	2025-12-12 08:14:48.114369
52	6	user	\N	🎁 Special Offer	Get 10% off on your next order of tropical fruits	system	f	\N	2024-01-25 09:00:00	2025-12-12 08:14:48.114369
53	\N	system_wide	\N	🌧️ Weather Alert	Heavy rains forecasted. Consider adjusting pickup schedules	admin_alert	f	\N	2024-01-18 07:00:00	2025-12-12 08:14:48.114369
54	\N	system_wide	\N	🎄 Holiday Schedule	System will have limited support during New Year holidays	admin_alert	f	\N	2024-12-28 09:00:00	2025-12-12 08:14:48.114369
50	4	user	\N	⭐ Buyer Feedback Received	Kandy Foods rated your TJC Mango 4.5/5 stars	system	t	1	2024-01-12 11:00:00	2025-12-14 13:19:13.953979
58	\N	system_wide	\N	New Complaint Filed	Buyer Saman Perera1 has filed a new complaint (#4)	admin_alert	f	4	2025-12-21 04:21:54	2025-12-21 04:21:54
\.


--
-- TOC entry 5362 (class 0 OID 26651)
-- Dependencies: 242
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items (id, order_id, product_id, product_name_snapshot, quantity_ordered, unit_price_snapshot, item_total, created_at, updated_at) FROM stdin;
2	2	3	Mukunuwenna	10.00	60.00	600.00	2025-11-30 01:14:28.935071	2025-11-30 01:14:28.935071
1	1	1	Green Chillies	49.00	450.00	22050.00	2025-11-30 01:14:28.935071	2025-12-11 14:45:29.611492
\.


--
-- TOC entry 5396 (class 0 OID 41002)
-- Dependencies: 277
-- Data for Name: otp_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.otp_verifications (id, user_id, otp, action, expires_at, used, used_at, created_at) FROM stdin;
1	4	491608	edit_payment	2025-12-22 04:08:06	f	\N	2025-12-22 04:03:06
2	4	921419	edit_payment	2025-12-22 04:08:28	t	2025-12-22 04:04:47	2025-12-22 04:03:28
3	4	962100	edit_payment	2025-12-22 06:21:24	t	2025-12-22 06:17:01	2025-12-22 06:16:24
4	4	935204	edit_payment	2025-12-22 06:23:17	t	2025-12-22 06:18:35	2025-12-22 06:18:17
5	4	879113	edit_payment	2025-12-22 06:27:29	f	\N	2025-12-22 06:22:29
6	9	177973	password_reset	2025-12-29 06:21:28	t	2025-12-29 06:11:55	2025-12-29 06:11:28
7	4	824854	password_reset	2025-12-29 11:28:30	t	2025-12-29 11:18:53	2025-12-29 11:18:30
8	4	037360	password_reset	2025-12-29 11:43:02	t	2025-12-29 11:33:24	2025-12-29 11:33:02
9	4	939704	password_reset	2025-12-29 12:11:35	t	2025-12-29 12:01:55	2025-12-29 12:01:35
10	4	334102	password_reset	2025-12-29 12:15:20	t	2025-12-29 12:05:41	2025-12-29 12:05:20
11	4	936583	password_reset	2025-12-29 12:20:27	t	2025-12-29 12:10:59	2025-12-29 12:10:27
12	4	549189	password_reset	2025-12-29 12:23:08	t	2025-12-29 12:13:33	2025-12-29 12:13:08
13	25	606340	password_reset	2025-12-30 06:24:43	t	2025-12-30 06:15:01	2025-12-30 06:14:43
14	25	671108	password_reset	2025-12-30 06:43:30	t	2025-12-30 06:33:50	2025-12-30 06:33:30
15	25	794778	password_reset	2025-12-30 07:05:51	t	2025-12-30 06:56:22	2025-12-30 06:55:51
16	25	848887	password_reset	2025-12-30 07:11:51	t	2025-12-30 07:02:11	2025-12-30 07:01:51
17	25	712965	password_reset	2025-12-30 07:13:51	t	2025-12-30 07:04:08	2025-12-30 07:03:51
18	25	988103	password_reset	2025-12-30 07:19:43	t	2025-12-30 07:10:00	2025-12-30 07:09:43
19	17	764917	password_reset	2026-01-06 15:20:05	f	\N	2026-01-06 15:10:05
\.


--
-- TOC entry 5398 (class 0 OID 49165)
-- Dependencies: 279
-- Data for Name: password_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_history (id, user_id, password_hash, changed_at, changed_by, change_reason, created_at, updated_at) FROM stdin;
1	4	$2y$12$.nS2q3.rqaJHAKsSsAE5FuixBQyUUscNNp8rpx9ND/A.K4EsH.mbe	2025-12-29 12:02:08	4	password_reset	\N	\N
2	4	$2y$12$rj1mBhn0S162D3ZTtVT71uXLjA.5SExHqo/UhelcbGLrNgE7.oIfW	2025-12-29 12:04:31	4	password_reset	\N	\N
3	4	$2y$12$WUNoaDcK11kx0FCXkteBPui8fbBo3BL6Pjq.u/CkkmzpiVoPOZhQS	2025-12-29 12:05:54	4	password_reset	\N	\N
4	4	$2y$12$uGZOxguIP04GeG3oMCJ6Qe4cOI0klbwEj4.LotWDVyrDL1zp7pMca	2025-12-29 12:11:12	4	password_reset	\N	\N
5	4	$2y$12$i2kQiMNS9tLrTI8XmfOQbeLP4dFLx2G2rD.5ez1a68.fvluJskbsK	2025-12-29 12:13:44	4	password_reset	\N	\N
6	25	$2y$12$pbrdj0allo/Gfi872CeJPuXLDdTH1ShtkZBu55WcYWdzzIOc2kxjK	2025-12-30 06:15:34	25	password_reset	\N	\N
7	25	$2y$12$vfjoQypBkQSNsr8QSA6hp.LQoXqd9jirTpUQJO6wmjbsBzV5jHUza	2025-12-30 06:34:17	25	password_reset	\N	\N
8	25	$2y$12$S9EkBewDlymBFyWkVIrQMu1ZfA/WgpeF2FtiLWRhHQLebhzfxjCmC	2025-12-30 06:56:39	25	password_reset	\N	\N
9	25	$2y$12$TJD8drczjrwXo8on3KXD9O2ZjtPDgjIHWTM2IT4h.qeZejM97C28C	2025-12-30 07:02:38	25	password_reset	\N	\N
10	25	$2y$12$p9PiuKxA3Gyh0kpGCMZnueJAYwCXzBhNGcd8fdAu3A1LHaS/DvfMa	2025-12-30 07:04:38	25	password_reset	\N	\N
11	25	$2y$12$UnDH6VhHmo4QpfN7Yapp3uueHRJwv3FPpqYQS8KpjwRuOJVO2lnOa	2025-12-30 07:10:58	25	password_reset	\N	\N
\.


--
-- TOC entry 5366 (class 0 OID 26678)
-- Dependencies: 246
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments (id, order_id, payment_reference, amount, payment_method, payment_status, payment_date, transaction_id, receipt_url, updated_at) FROM stdin;
2	2	PAY-REF-1002	600.00	cash	completed	2025-11-27 15:42:36.094144	\N	\N	2025-11-30 01:14:28.935071
1	1	PAY-REF-1001	22050.00	card	completed	2025-11-27 15:42:36.094144	13456789	\N	2025-12-12 05:18:36.905285
\.


--
-- TOC entry 5386 (class 0 OID 27253)
-- Dependencies: 266
-- Data for Name: product_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_categories (id, category_name, description, icon_filename, is_active, display_order, created_at, created_by_user_id, updated_at) FROM stdin;
2	Fruits	Fresh and seasonal fruits	fruits.png	t	2	2025-11-27 15:37:28.022495	1	2025-12-14 21:49:10.60707
1	Vegetables	All types of vegetables	Vegetables.png	t	1	2025-11-27 15:37:28.022495	1	2025-12-14 21:49:10.60707
4	Fresh Fruit	Tropical, Citrus, and Exotic fruits	fresh-fruit.png	t	4	2025-11-27 15:52:02.024623	1	2025-12-14 21:49:10.60707
5	Fresh Vegetables	Leafy greens, tubers, gourds	fresh-vegetables.png	t	5	2025-11-27 15:52:23.73345	1	2025-12-14 21:49:10.60707
11	Herbs & Spices	Fresh and dried herbs, spices, infusions	Herbs & Spices.png	t	11	2025-12-06 13:11:19.689371	1	2025-12-14 21:49:10.60707
12	Baked Goods/Sweets	Preserves, confections, loaves	Baked Goods Sweets.png	t	12	2025-11-27 15:53:58.255686	1	2025-12-14 21:49:10.60707
6	Processed Fruits	Jams, dried fruits, canned items, pulps	processed-fruits.png	t	6	2025-11-27 15:52:35.943763	1	2025-12-14 21:49:10.60707
7	Processed Vegetables	Pickles, relishes, canned vegetables	processed-veg.png	t	7	2025-12-06 13:11:19.689371	1	2025-12-14 21:49:10.60707
8	Pantry Staples	Flours, powders, syrups, curry mixes	pantry-staples.png	t	8	2025-11-27 15:52:57.447679	1	2025-12-14 21:49:10.60707
9	Pre-Packaged	Box sets and ready-to-eat packs	Pre-Packaged.png	t	9	2025-11-27 15:53:29.693364	1	2025-12-14 21:49:10.60707
10	Plants & Seeds	Seedlings, saplings, cuttings, seeds	Plants & Seeds.png	t	10	2025-11-27 15:53:40.462365	1	2025-12-14 21:49:10.60707
13	Non-Food Items	Crafts, personal care, garden supplies	Non-Food Items.png	t	13	2025-11-27 15:54:34.380252	1	2025-12-14 21:49:10.60707
3	Leafy Greens	Fresh leafy varieties	Leafy Greens.png	t	3	2025-11-27 15:37:28.022495	1	2025-12-14 21:49:10.60707
\.


--
-- TOC entry 5388 (class 0 OID 27267)
-- Dependencies: 268
-- Data for Name: product_subcategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_subcategories (id, category_id, subcategory_name, description, is_active, display_order, created_at, updated_at) FROM stdin;
1	1	Chillies	Green & red chillies	t	1	2025-11-27 15:37:43.208724	2025-11-30 01:14:28.935071
2	1	Tomato	Fresh tomatoes	t	2	2025-11-27 15:37:43.208724	2025-11-30 01:14:28.935071
4	3	Mukunuwenna	Fresh leafy bundle	t	1	2025-11-27 15:37:43.208724	2025-11-30 01:14:28.935071
5	4	Tropical	Tropical fruits	t	1	2025-11-27 15:52:02.024623	2025-11-30 01:14:28.935071
6	4	Citrus	Citrus fruits	t	2	2025-11-27 15:52:02.024623	2025-11-30 01:14:28.935071
7	4	Exotic	Exotic premium fruits	t	3	2025-11-27 15:52:02.024623	2025-11-30 01:14:28.935071
8	5	Leafy Greens	Local kola varieties	t	1	2025-11-27 15:52:23.73345	2025-11-30 01:14:28.935071
9	5	Root Tubers	Manioc, sweet potato etc.	t	2	2025-11-27 15:52:23.73345	2025-11-30 01:14:28.935071
10	5	Gourds	Local gourd varieties	t	3	2025-11-27 15:52:23.73345	2025-11-30 01:14:28.935071
11	6	Jams/Jellies	Fruit jams and jellies	t	1	2025-11-27 15:52:35.943763	2025-11-30 01:14:28.935071
12	6	Dried	Dried fruit products	t	2	2025-11-27 15:52:35.943763	2025-11-30 01:14:28.935071
13	6	Canned	Canned fruits	t	3	2025-11-27 15:52:35.943763	2025-11-30 01:14:28.935071
14	6	Pulps	Fruit pulps and cordials	t	4	2025-11-27 15:52:35.943763	2025-11-30 01:14:28.935071
15	7	Pickles	Pickled vegetables	t	1	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
16	7	Relishes	Relish & moju items	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
17	7	Canned	Canned vegetable products	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
18	8	Flours	Various flours	t	1	2025-11-27 15:52:57.447679	2025-11-30 01:14:28.935071
19	8	Powders	Leaf & spice powders	t	2	2025-11-27 15:52:57.447679	2025-11-30 01:14:28.935071
20	8	Syrups	Local sweeteners	t	3	2025-11-27 15:52:57.447679	2025-11-30 01:14:28.935071
21	9	Box Sets	Pre-made boxes	t	1	2025-11-27 15:53:29.693364	2025-11-30 01:14:28.935071
22	9	Ready-to-Eat	Instant or semi-ready meals	t	2	2025-11-27 15:53:29.693364	2025-11-30 01:14:28.935071
23	10	Seedlings	Vegetable seedlings	t	1	2025-11-27 15:53:40.462365	2025-11-30 01:14:28.935071
24	10	Saplings	Plant saplings	t	2	2025-11-27 15:53:40.462365	2025-11-30 01:14:28.935071
25	10	Seeds	Various seeds	t	3	2025-11-27 15:53:40.462365	2025-11-30 01:14:28.935071
26	10	Cuttings	Plant cuttings	t	4	2025-11-27 15:53:40.462365	2025-11-30 01:14:28.935071
27	11	Fresh	Fresh herbs	t	1	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
28	11	Dried	Dried herbs	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
29	11	Ground	Ground spice blends	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
30	11	Infusions	Herbal teas & infusions	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
31	12	Preserves	Sweet preserves	t	1	2025-11-27 15:53:58.255686	2025-11-30 01:14:28.935071
32	12	Confections	Sweet treats	t	2	2025-11-27 15:53:58.255686	2025-11-30 01:14:28.935071
33	12	Loaves	Baked loaves	t	3	2025-11-27 15:53:58.255686	2025-11-30 01:14:28.935071
34	13	Crafts	Handmade crafts	t	1	2025-11-27 15:54:34.380252	2025-11-30 01:14:28.935071
35	13	Personal Care	Soaps & natural care	t	2	2025-11-27 15:54:34.380252	2025-11-30 01:14:28.935071
36	13	Garden Supplies	Fertilizer & compost	t	3	2025-11-27 15:54:34.380252	2025-11-30 01:14:28.935071
3	2	Banana	All banana types	t	1	2025-11-27 15:37:43.208724	2025-12-14 15:39:34
\.


--
-- TOC entry 5392 (class 0 OID 27346)
-- Dependencies: 272
-- Data for Name: product_examples; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_examples (id, subcategory_id, product_name, description, is_active, display_order, created_at, updated_at) FROM stdin;
1	1	Green Chillies	Fresh green chillies	t	1	2025-11-27 15:38:56.059982	2025-11-30 01:14:28.935071
2	1	Red Chillies	Dried red chillies	t	2	2025-11-27 15:38:56.059982	2025-11-30 01:14:28.935071
3	1	Bird Eye Chillies	Small and very hot chillies	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
4	2	Ripe Tomato	Fresh tomatoes	t	1	2025-11-27 15:38:56.059982	2025-11-30 01:14:28.935071
5	2	Cherry Tomatoes	Small sweet tomatoes	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
7	2	Beefsteak Tomatoes	Large juicy tomatoes	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
9	3	Ambul Banana	Popular cooking banana	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
10	3	Seeni Banana	Small sweet banana	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
11	4	Fresh Mukunuwenna	Leafy bundle	t	1	2025-11-27 15:38:56.059982	2025-11-30 01:14:28.935071
12	5	TJC Mango	TJC variety mango	t	1	2025-11-27 15:52:02.024623	2025-11-30 01:14:28.935071
13	5	Pineapple	Fresh Sri Lankan pineapple	t	2	2025-11-27 15:52:02.024623	2025-11-30 01:14:28.935071
14	5	Mango	Seasonal mangoes	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
15	5	Papaya	Ripe papaya	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
16	5	Jackfruit	Seasonal jackfruit	t	5	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
17	5	Avocado	Creamy avocado	t	6	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
18	6	Lime	Fresh limes	t	1	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
19	6	Lemon	Juicy lemons	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
20	6	Orange	Sweet oranges	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
21	6	Grapefruit	Fresh grapefruit	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
22	7	Passion Fruit	Yellow/Black passion fruit	t	1	2025-11-27 15:52:02.024623	2025-11-30 01:14:28.935071
23	7	Mangosteen	Sweet mangosteen	t	2	2025-11-27 15:52:02.024623	2025-11-30 01:14:28.935071
24	7	Rambutan	Local rambutan	t	3	2025-11-27 15:52:02.024623	2025-11-30 01:14:28.935071
25	7	Strawberry	Fresh strawberries	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
26	7	Blueberry	Organic blueberries	t	5	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
27	7	Kiwi	New Zealand kiwi	t	6	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
28	8	Local Greens (Kola)	Mixed leafy greens pack	t	1	2025-11-27 15:52:23.73345	2025-11-30 01:14:28.935071
29	8	Gotukola	Fresh gotukola	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
30	8	Kankun	Water spinach	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
31	8	Thampala	Red amaranth	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
32	9	Manioc	Fresh manioc	t	1	2025-11-27 15:52:23.73345	2025-11-30 01:14:28.935071
33	9	Sweet Potato	Local sweet potato	t	2	2025-11-27 15:52:23.73345	2025-11-30 01:14:28.935071
34	9	Sweet Potato	Red sweet potato	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
35	9	Cassava	Fresh cassava	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
36	9	Potato	Local potatoes	t	5	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
37	9	Carrot	Fresh carrots	t	6	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
38	10	Pumpkin	Fresh pumpkin	t	1	2025-11-27 15:52:23.73345	2025-11-30 01:14:28.935071
39	10	Snake Gourd	Fresh snake gourd	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
40	10	Bitter Gourd	Bitter gourd	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
41	11	Woodapple Jam	Fresh woodapple jam	t	1	2025-11-27 15:52:35.943763	2025-11-30 01:14:28.935071
42	11	Mango Jam	Homemade mango jam	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
43	11	Strawberry Jam	Sweet strawberry jam	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
44	11	Pineapple Jam	Tropical pineapple jam	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
45	12	Dried Mango Strips	Sun dried mango	t	1	2025-11-27 15:52:35.943763	2025-11-30 01:14:28.935071
46	12	Dried Mango	Sun-dried mango slices	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
47	12	Dried Papaya	Sweet dried papaya	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
48	12	Dried Banana Chips	Crispy banana chips	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
49	13	Canned Jackfruit in Syrup	Jackfruit sweet syrup can	t	1	2025-11-27 15:52:35.943763	2025-11-30 01:14:28.935071
50	13	Canned Pineapple	Syrup packed pineapple	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
51	13	Canned Mango	Mango in light syrup	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
52	14	Fruit Cordials	Concentrated fruit cordials	t	1	2025-11-27 15:52:35.943763	2025-11-30 01:14:28.935071
53	14	Mango Pulp	Fresh mango pulp	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
54	14	Woodapple Pulp	Traditional woodapple pulp	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
55	15	Mango Pickle	Spicy mango pickle	t	1	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
56	15	Lime Pickle	Tangy lime pickle	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
57	16	Onion Moju	Fried onion relish	t	1	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
58	16	Chilli Paste	Spicy chilli relish	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
59	17	Canned Corn	Sweet corn kernels	t	1	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
60	17	Canned Mushrooms	Button mushrooms	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
61	18	Cassava Flour	Finely milled cassava flour	t	1	2025-11-27 15:52:57.447679	2025-11-30 01:14:28.935071
62	18	Rice Flour	Fine rice flour	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
63	18	Wheat Flour	Whole wheat flour	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
64	18	Kurakkan Flour	Traditional finger millet flour	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
65	19	Moringa Powder	Pure moringa leaf powder	t	1	2025-11-27 15:52:57.447679	2025-11-30 01:14:28.935071
66	19	Curry Pastes	Local curry paste mixes	t	2	2025-11-27 15:52:57.447679	2025-11-30 01:14:28.935071
67	19	Curry Powder	Traditional curry mix	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
68	19	Chilli Powder	Hot chilli powder	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
69	19	Turmeric Powder	Organic turmeric	t	5	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
70	20	Kithul Treacle	Natural kithul syrup	t	1	2025-11-27 15:52:57.447679	2025-11-30 01:14:28.935071
71	20	Kithul Treacle	Pure kithul syrup	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
72	20	Palm Sugar	Jaggery blocks	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
73	21	Family Veg Box	Assorted vegetables box	t	1	2025-11-27 15:53:29.693364	2025-11-30 01:14:28.935071
74	21	Vegetable Basket	Mixed vegetable box	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
75	21	Fruit Hamper	Seasonal fruit collection	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
76	22	Curry Kit	Ready curry ingredients	t	1	2025-11-27 15:53:29.693364	2025-11-30 01:14:28.935071
77	22	Sambols	Ready-made sambols	t	2	2025-11-27 15:53:29.693364	2025-11-30 01:14:28.935071
78	22	Mallums	Ready-to-eat mallum packs	t	3	2025-11-27 15:53:29.693364	2025-11-30 01:14:28.935071
79	22	Rice & Curry Pack	Homemade meal	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
80	22	Snack Pack	Local snack assortment	t	5	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
81	23	Chili Seedlings	Healthy chili seedlings	t	1	2025-11-27 15:53:40.462365	2025-11-30 01:14:28.935071
82	23	Tomato Seedlings	Healthy tomato plants	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
83	23	Chilli Seedlings	Spicy chilli plants	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
84	24	Curry Leaf Saplings	Curry leaf plants	t	1	2025-11-27 15:53:40.462365	2025-11-30 01:14:28.935071
85	24	Mango Sapling	Grafted mango plant	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
86	24	Papaya Sapling	Fast-growing papaya	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
87	25	Heirloom Tomato Seeds	Local tomato heirloom seeds	t	1	2025-11-27 15:53:40.462365	2025-11-30 01:14:28.935071
6	2	Roma Tomatoes	Plum tomatoes for cooking	t	3	2025-12-06 13:11:19.689371	2025-12-14 17:02:30
88	25	Ladies Finger Seeds	Okra seeds	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
89	25	Bean Seeds	Climbing bean seeds	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
90	26	Hibiscus Cuttings	Fresh hibiscus cuttings	t	1	2025-11-27 15:53:40.462365	2025-11-30 01:14:28.935071
91	26	Herb Cuttings	Medicinal plant cuttings	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
92	26	Flower Cuttings	Ornamental plants	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
93	27	Coriander	Fresh coriander leaves	t	1	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
94	27	Mint	Aromatic mint leaves	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
95	28	Dried Curry Leaves	Aromatic curry leaves	t	1	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
96	28	Dried Pandan Leaves	Fragrant pandan	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
97	29	Cinnamon Powder	True cinnamon powder	t	1	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
98	29	Cardamom Powder	Aromatic cardamom	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
99	30	Gotukola Tea	Herbal tea blend	t	1	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
100	30	Cinnamon Tea	Warming cinnamon tea	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
101	31	Sweet Potato Halva	Local sweet halva	t	1	2025-11-27 15:53:58.255686	2025-11-30 01:14:28.935071
102	31	Fruit Leather	Dried fruit leather	t	2	2025-11-27 15:53:58.255686	2025-11-30 01:14:28.935071
103	31	Coconut Treacle	Traditional preserves	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
104	31	Fruit Preserve	Mixed fruit conserve	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
105	32	Coconut Macaroons	Fresh coconut sweets	t	1	2025-11-27 15:53:58.255686	2025-11-30 01:14:28.935071
106	32	Kokis	Traditional sweet	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
107	32	Aasmi	Festival sweet	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
108	33	Banana Bread	Moist banana bread loaf	t	1	2025-11-27 15:53:58.255686	2025-11-30 01:14:28.935071
109	33	Banana Bread	Homemade banana loaf	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
110	33	Date Cake	Healthy date loaf	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
111	34	Beeswax Candles	Pure beeswax candles	t	1	2025-11-27 15:54:34.380252	2025-11-30 01:14:28.935071
112	34	Coir Products	Coconut fiber crafts	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
113	34	Wood Carvings	Hand-carved items	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
114	35	Handmade Soaps	Natural handmade soaps	t	1	2025-11-27 15:54:34.380252	2025-11-30 01:14:28.935071
115	35	Natural Mosquito Repellent	Herbal mosquito repellent	t	2	2025-11-27 15:54:34.380252	2025-11-30 01:14:28.935071
116	35	Herbal Soap	Natural plant soap	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
117	35	Coconut Oil	Pure coconut oil	t	4	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
118	36	Compost/Fertilizer	Organic compost	t	1	2025-11-27 15:54:34.380252	2025-11-30 01:14:28.935071
119	36	Organic Fertilizer	Natural compost	t	2	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
120	36	Potting Mix	Garden soil blend	t	3	2025-12-06 13:11:19.689371	2025-12-06 13:11:19.689371
8	3	Kolikuttu Banana	Sweet banana variety	t	1	2025-11-27 15:38:56.059982	2025-12-14 15:39:56
\.


--
-- TOC entry 5368 (class 0 OID 26717)
-- Dependencies: 248
-- Data for Name: product_feedback; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_feedback (id, buyer_id, order_id, rating, comment, created_at, updated_at) FROM stdin;
1	1	1	5	Very fresh and great quality!	2025-11-27 15:44:00.796276	2025-11-30 01:14:28.935071
2	2	2	4	Good but slightly delayed pickup.	2025-11-27 15:44:00.796276	2025-11-30 01:14:28.935071
\.


--
-- TOC entry 5390 (class 0 OID 27309)
-- Dependencies: 270
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, farmer_id, lead_farmer_id, product_name, product_description, product_photo, type_variant, category_id, subcategory_id, quantity, unit_of_measure, quality_grade, expected_availability_date, selling_price, pickup_address, pickup_map_link, is_available, views_count, created_at, updated_at, product_status) FROM stdin;
1	1	1	Green Chillies	Fresh and Spicy	chillies.png	fresh	1	1	50.00	kg	grade_a	2025-02-10	450.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-11-27 15:40:34.251978	2025-12-05 15:31:03.814258	have it
2	2	2	Tomato	Ripe red tomatoes	tomato.png	fresh	1	2	80.00	kg	grade_b	2025-02-12	320.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-11-27 15:40:34.251978	2025-11-27 15:40:34.251978	have it
4	2	2	Bird Eye Chillies	Small and very hot chillies	bird_eye_chillies.png	fresh	1	1	15.00	kg	export_quality	2025-02-08	680.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
5	3	1	Kolikuttu Banana	Sweet dessert banana	banana_kolikuttu.png	fresh	2	3	100.00	units	grade_a	2025-02-05	40.00	Village Rd, Kegalle	https://maps.link/lalith-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
6	1	1	Ambul Banana	Cooking banana variety	banana_ambul.png	fresh	2	3	75.00	units	grade_b	2025-02-07	35.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
7	2	2	Seeni Banana	Small sweet banana	banana_seeni.png	fresh	2	3	60.00	units	grade_a	2025-02-06	45.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
8	3	1	Fresh Mukunuwenna	Leafy green bundle	mukunuwenna.png	fresh	3	4	40.00	bunches	grade_a	2025-02-08	60.00	Village Rd, Kegalle	https://maps.link/lalith-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
9	1	1	TJC Mango	Premium TJC variety mango	mango_tjc.png	fresh	4	5	50.00	kg	export_quality	2025-03-01	450.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
10	2	2	Pineapple	Fresh Sri Lankan pineapple	pineapple.png	fresh	4	5	45.00	units	grade_a	2025-02-20	250.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
12	2	2	Lime	Fresh limes	lime.png	fresh	4	6	100.00	kg	grade_b	2025-02-18	180.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
13	1	1	Orange	Sweet oranges	orange.png	fresh	4	6	50.00	kg	grade_a	2025-02-20	280.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
14	2	2	Passion Fruit	Yellow passion fruit	passion_fruit.png	fresh	4	7	20.00	kg	export_quality	2025-02-25	650.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
16	3	1	Local Greens (Kola)	Mixed leafy greens pack	local_greens.png	fresh	5	8	35.00	bunches	grade_a	2025-02-09	75.00	Village Rd, Kegalle	https://maps.link/lalith-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
18	1	1	Manioc	Fresh manioc roots	manioc.png	fresh	5	9	100.00	kg	grade_a	2025-02-12	120.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
19	2	2	Sweet Potato	Red sweet potatoes	sweet_potato.png	fresh	5	9	80.00	kg	grade_b	2025-02-14	150.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
20	1	1	Pumpkin	Fresh pumpkin	pumpkin.png	fresh	5	10	40.00	kg	grade_a	2025-02-10	200.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
21	2	2	Snake Gourd	Fresh snake gourd	snake_gourd.png	fresh	5	10	30.00	kg	grade_a	2025-02-13	220.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
23	2	2	Mango Jam	Homemade mango jam	mango_jam.png	processed	6	11	45.00	units	grade_a	2025-02-01	480.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
24	1	1	Dried Mango Strips	Sun-dried mango strips	dried_mango.png	processed	6	12	25.00	kg	export_quality	2025-02-01	1200.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
25	2	2	Dried Banana Chips	Crispy banana chips	banana_chips.png	processed	6	12	30.00	kg	grade_a	2025-02-01	850.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
27	2	2	Canned Pineapple	Pineapple in syrup	canned_pineapple.png	processed	6	13	35.00	units	grade_b	2025-02-01	350.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
28	1	1	Mango Pulp	Fresh mango pulp	mango_pulp.png	processed	6	14	40.00	kg	grade_a	2025-02-01	600.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
29	1	1	Mango Pickle	Spicy mango pickle	mango_pickle.png	processed	7	15	60.00	units	grade_a	2025-02-01	350.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
30	2	2	Lime Pickle	Tangy lime pickle	lime_pickle.png	processed	7	15	55.00	units	grade_a	2025-02-01	380.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
31	1	1	Onion Moju	Traditional onion relish	onion_moju.png	processed	7	16	45.00	units	grade_a	2025-02-01	320.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
32	2	2	Chilli Paste	Spicy chilli relish	chilli_paste.png	processed	7	16	40.00	units	grade_b	2025-02-01	340.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
33	1	1	Canned Corn	Sweet corn kernels	canned_corn.png	processed	7	17	50.00	units	grade_a	2025-02-01	280.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
34	1	1	Cassava Flour	Finely milled cassava flour	cassava_flour.png	pantry	8	18	100.00	kg	grade_a	2025-02-01	180.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
35	2	2	Rice Flour	Fine rice flour	rice_flour.png	pantry	8	18	120.00	kg	grade_b	2025-02-01	160.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
36	1	1	Moringa Powder	Pure moringa leaf powder	moringa_powder.png	pantry	8	19	25.00	kg	export_quality	2025-02-01	1200.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
37	2	2	Curry Powder	Traditional curry powder	curry_powder.png	pantry	8	19	40.00	kg	grade_a	2025-02-01	450.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
38	1	1	Kithul Treacle	Pure kithul syrup	kithul_treacle.png	pantry	8	20	30.00	units	grade_a	2025-02-01	1200.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
26	1	1	Canned Jackfruit	Jackfruit in sweet syrup	canned_jackfruit.png	processed	6	13	40.00	units	grade_a	2025-02-01	380.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	removed by lead farmer
3	1	1	Red Chillies	Sun-dried red chillies	red_chillies.png	dried	1	1	25.00	kg	grade_a	2025-12-15	850.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
15	1	1	Mangosteen	Sweet mangosteen	uploads/product_images/product_15_1767229488.jpg	fresh	4	7	15.00	kg	grade_a	2025-02-22	850.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2026-01-01 01:04:49	have it
11	1	1	Papaya	Ripe papaya	product_11_1767242894.jpeg	fresh	4	5	30.00	kg	grade_a	2025-02-15	200.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2026-01-01 04:48:14	have-it
39	2	2	Palm Sugar	Traditional jaggery blocks	palm_sugar.png	pantry	8	20	35.00	units	grade_b	2026-02-01	850.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
40	1	1	Family Veg Box	Assorted vegetables box	veg_box.png	prepack	9	21	20.00	units	grade_a	2025-02-05	1200.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
41	2	2	Fruit Hamper	Seasonal fruit collection	fruit_hamper.png	prepack	9	21	15.00	units	export_quality	2025-02-06	1800.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
42	1	1	Curry Kit	Ready curry ingredients	curry_kit.png	prepack	9	22	25.00	units	grade_a	2025-02-01	850.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
45	2	2	Tomato Seedlings	Healthy tomato plants	tomato_seedlings.png	plants	10	23	150.00	units	grade_a	2025-02-01	55.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
46	1	1	Curry Leaf Saplings	Curry leaf plants	curry_leaf_saplings.png	plants	10	24	100.00	units	grade_a	2025-02-01	120.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
47	2	2	Mango Sapling	Grafted mango plant	mango_sapling.png	plants	10	24	50.00	units	export_quality	2025-02-01	450.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
48	1	1	Heirloom Tomato Seeds	Local heirloom seeds	tomato_seeds.png	plants	10	25	200.00	packets	grade_a	2025-02-01	80.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
49	2	2	Ladies Finger Seeds	Okra seeds	okra_seeds.png	plants	10	25	150.00	packets	grade_b	2025-02-01	70.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
52	2	2	Mint	Aromatic mint leaves	mint.png	fresh	11	27	40.00	bunches	grade_b	2025-02-10	60.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
53	1	1	Dried Curry Leaves	Aromatic curry leaves	dried_curry_leaves.png	dried	11	28	20.00	kg	grade_a	2025-02-01	850.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
54	2	2	Dried Pandan Leaves	Fragrant pandan leaves	pandan_leaves.png	dried	11	28	15.00	kg	grade_a	2025-02-01	950.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
55	1	1	Cinnamon Powder	True cinnamon powder	cinnamon_powder.png	ground	11	29	25.00	kg	export_quality	2025-02-01	2800.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
56	2	2	Cardamom Powder	Aromatic cardamom	cardamom_powder.png	ground	11	29	20.00	kg	grade_a	2025-02-01	3200.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
57	1	1	Gotukola Tea	Herbal tea blend	gotukola_tea.png	infusion	11	30	100.00	units	grade_a	2025-02-01	120.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
58	2	2	Cinnamon Tea	Warming cinnamon tea	cinnamon_tea.png	infusion	11	30	80.00	units	grade_b	2025-02-01	150.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
59	1	1	Sweet Potato Halva	Traditional sweet halva	sweet_potato_halva.png	processed	12	31	40.00	units	grade_a	2025-02-01	350.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
60	2	2	Fruit Leather	Dried fruit leather	fruit_leather.png	processed	12	31	35.00	units	grade_b	2025-02-01	320.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
61	1	1	Coconut Macaroons	Fresh coconut sweets	coconut_macaroons.png	processed	12	32	50.00	units	grade_a	2025-02-01	25.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
62	2	2	Kokis	Traditional crispy sweet	kokis.png	processed	12	32	45.00	units	grade_a	2025-02-01	30.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
63	1	1	Banana Bread	Moist banana loaf	banana_bread.png	processed	12	33	30.00	units	grade_a	2025-02-01	350.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
64	2	2	Date Cake	Healthy date loaf	date_cake.png	processed	12	33	25.00	units	grade_b	2025-02-01	380.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
65	1	1	Beeswax Candles	Pure beeswax candles	beeswax_candles.png	craft	13	34	50.00	units	grade_a	2025-02-01	450.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
66	2	2	Coir Products	Coconut fiber crafts	coir_products.png	craft	13	34	40.00	units	grade_b	2025-02-01	380.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
67	1	1	Handmade Soaps	Natural handmade soaps	handmade_soaps.png	care	13	35	60.00	units	grade_a	2025-02-01	180.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
68	2	2	Herbal Soap	Natural plant soap	herbal_soap.png	care	13	35	55.00	units	grade_a	2025-02-01	200.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
69	1	1	Compost/Fertilizer	Organic compost	compost.png	garden	13	36	500.00	kg	grade_a	2025-02-01	50.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
70	2	2	Organic Fertilizer	Natural compost	organic_fertilizer.png	garden	13	36	400.00	kg	grade_b	2025-02-01	55.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
43	2	2	Rice & Curry Pack	Homemade meal pack	rice_curry_pack.png	prepack	9	22	20.00	units	grade_a	2025-02-01	950.00	Farm 2, Kurunegala	https://maps.link/kamala-farm	f	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
44	1	1	Chili Seedlings	Healthy chili seedlings	chili_seedlings.png	plants	10	23	200.00	units	grade_a	2025-02-01	50.00	Farm 1, Kegalle	https://maps.link/sudath-farm	f	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	have it
50	1	1	Hibiscus Cuttings	Fresh hibiscus cuttings	hibiscus_cuttings.png	plants	10	26	100.00	units	grade_a	2025-02-01	60.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2026-01-01 11:47:51	have it
51	1	1	Coriander	Fresh coriander leaves	coriander.png	fresh	11	27	50.00	bunches	grade_a	2025-02-09	40.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2026-01-01 02:53:20	removed by facilitator
22	1	1	Woodapple Jam	Traditional woodapple jam	woodapple_jam.png	processed	6	11	50.00	units	grade_a	2026-02-01	450.00	Farm 1, Kegalle	https://maps.link/sudath-farm	t	0	2025-12-06 17:29:18.797562	2025-12-06 17:29:18.797562	removed by the admin
\.


--
-- TOC entry 5349 (class 0 OID 26533)
-- Dependencies: 229
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
7De0sieGrLo3DFVjP4X3uZTwQGg50ujGgvWpbLXM	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiV213VmZOYmNYYUtVZWx3SlltR2J5WjFBZ1AxOWZIUDliYVV5dkVYNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hYm91dC11cyI7czo1OiJyb3V0ZSI7czo1OiJhYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1767952945
KXTjBs33uwfPoXxHA3g4xLr6OTk8NrqngK62dPrY	8	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMEZpUnlBRGdpa1lSNmh5clhLU203TFZZZjRxSDRlQWdVc1NlZ1hWRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mYWNpbGl0YXRvci9wcm9maWxlIjtzOjU6InJvdXRlIjtzOjE5OiJmYWNpbGl0YXRvci5wcm9maWxlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODt9	1767959745
exqrfX4b6AUocbeA5dtKq9vutjpPh4IkcfoyxdVO	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTDU1aWFuU25oZ1M1Q05FS1N2RDVnSE40VzhGNnFncVB5TWJDS2F6NiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2ZhY2lsaXRhdG9yL3Byb2ZpbGUvcGhvdG8iO31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozNDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2hvdy1pdC13b3JrcyI7czo1OiJyb3V0ZSI7czoxMjoiaG93Lml0LndvcmtzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1767970042
LQBBXMNrYSCSQ40mMKbwFKZqo3F74nioKkCLjc67	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXVXa0xsR092d216Q0F6TlRsM3lYd1dENUppN0VlQXQ2OFJQNG5EWSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1768043402
\.


--
-- TOC entry 5370 (class 0 OID 26767)
-- Dependencies: 250
-- Data for Name: shopping_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shopping_cart (id, buyer_id, product_id, quantity, selling_price_snapshot, created_at, updated_at) FROM stdin;
3	2	3	10.00	60.00	2025-11-27 15:41:21.533679	2025-11-30 01:14:28.935071
10	1	10	1.00	250.00	2025-12-09 05:37:15	2025-12-09 05:37:15
9	1	12	2.00	180.00	2025-12-09 05:37:05	2025-12-09 18:41:45.698102
11	1	61	1.00	25.00	2025-12-10 05:07:57	2025-12-10 05:07:57
8	1	5	12.00	40.00	2025-12-08 12:31:38	2025-12-10 15:31:57.379145
12	21	16	2.09	75.00	2026-01-09 16:57:19	2026-01-09 16:57:35.18987
\.


--
-- TOC entry 5372 (class 0 OID 26778)
-- Dependencies: 252
-- Data for Name: system_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.system_config (id, config_key, config_value, config_group, description, is_public, updated_by, updated_at) FROM stdin;
26	about_us_image_1	hero-bg-26.jpg	about_us	About Us Image 1	t	1	2026-01-09 15:07:01.531439
3	banner_main	banner1.jpg	banner	Homepage banner	t	1	2025-11-27 15:44:44.655197
32	admin_email	trincoabishigan@gmail.com	general	Admin Email	t	1	2026-01-09 15:50:50.492898
2	about_us	A platform connecting farmers and buyers	about_us	About Us	t	1	2026-01-09 15:53:40.078703
28	How_Works_For_Buyers_para	Register easily with your details. Login with SMS credentials. Browse fresh products. Add to cart and checkout. Pay securely via card or COD1.\r\n\r\nCoordinate with farmer for pickup. Rate orders and provide feedback. Post requests for specific products.	how_it_works	How Works For Buyers Para	t	1	2026-01-09 16:44:38.065859
15	about_us_1st_para	We are a digital platform dedicated to empowering smallholder farmers and connecting them directly with buyers. Our mission is to create sustainable agricultural ecosystems through transparent transactions and fair pricing.	about_us	About Us 1st Para	t	1	2026-01-09 16:13:57.738244
16	about_us_Our_Story_para_1	GreenMarket was born from a simple idea: to connect local farmers directly with buyers, eliminating middlemen and ensuring fair prices for quality produce. We provide a digital marketplace where transparency and trust are built into every transaction.	about_us	About Us Our Story Para 1	t	1	2026-01-09 16:13:57.738244
29	How_Works_For_Farmers_para	Contact your area's Lead Farmer. Get registered through them. Provide product details, photos, quantity, and price.\r\n\r\nDon't know your Lead Farmer? Contact Grama Sevakar. Connect directly with buyers. Manage your products easily.	how_it_works	How Works For Farmers Para	t	1	2026-01-09 16:44:38.065859
17	about_us_Our_Story_para_2	Our platform supports sustainable agriculture practices and empowers smallholder farmers across Sri Lanka. We believe in creating economic opportunities while preserving traditional farming methods and promoting environmental stewardship.	about_us	About Us Our Story Para 2	t	1	2026-01-09 16:13:57.738244
18	about_us_Vision_para	To create a sustainable agricultural ecosystem where every farmer has direct market access and every buyer receives fresh, quality produce directly from source.	about_us	About Us Vision Para	t	1	2026-01-09 16:13:57.738244
19	about_us_Vision_1st_point	Sustainable Farming	about_us	About Us Vision 1st Point	t	1	2026-01-09 16:13:57.738244
20	about_us_Vision_2nd_point	Economic Empowerment	about_us	About Us Vision 2nd Point	t	1	2026-01-09 16:13:57.738244
21	about_us_Vision_3rd_point	Community Growth	about_us	About Us Vision 3rd Point	t	1	2026-01-09 16:13:57.738244
22	about_us_Mission_para	To provide a technology-driven platform that connects farmers with buyers, ensures fair pricing, promotes sustainable practices, and builds trust in agricultural transactions.	about_us	About Us Mission Para	t	1	2026-01-09 16:13:57.738244
23	about_us_Mission_1st_point	Direct Connections	about_us	About Us Mission 1st Point	t	1	2026-01-09 16:13:57.738244
27	about_us_image_2	hero-bg-8.jpg	about_us	about us image 2	t	1	2026-01-09 11:25:43.978435
1	footer_copyright	© 2026 GreenMarket CSIAP. All rights reserved.	footer	Footer Copyright	t	1	2026-01-09 15:03:30.3093
4	footer_contact_no	011 205 3252	footer	Footer Contact No	t	1	2026-01-09 15:03:30.3093
30	How_Works_For_Buyers_image	how it works - buyer.png	how_it_works	How Works For Buyers image	t	1	2026-01-09 11:46:46.303678
31	How_Works_For_Farmer_image	how it works - farmer.png	how_it_works	How Works For Farmer image	t	1	2026-01-09 11:47:58.02135
5	footer_email	contact.pmu@csiap.lk	footer	Footer Email	t	1	2026-01-09 15:03:30.3093
7	footer_fax_no	011 205 3167	footer	Footer Fax No	t	1	2026-01-09 15:03:30.3093
6	footer_address	Climate Smart Irrigated Agriculture Project (CSIAP)\r\nNo: 61/1, \r\nM. D. H. Jayawardena Mawatha, \r\nMadinnagoda, \r\nRajagiriya, \r\nColombo,\r\nSri Lanka	footer	Footer Address	t	1	2026-01-09 15:03:30.3093
12	footer_small_para	Connecting local farmers with buyers directly. Browse fresh produce, manage garden sales, or shop for quality home-grown products. Supporting sustainable agriculture with secure, community-driven transactions.	footer	Footer Small Para	t	1	2026-01-09 15:03:30.3093
8	footer_youtube	https://www.youtube.com/@csiapsrilanka8892	footer	Footer Youtube	t	1	2026-01-09 15:03:30.3093
9	footer_facebook	https://www.facebook.com/csiap.srilanka/	footer	Footer Facebook	t	1	2026-01-09 15:03:30.3093
11	footer_twitter	https://twitter.com/CsiapSl	footer	Footer Twitter	t	1	2026-01-09 15:03:30.3093
10	footer_blogspot	https://csiaplk.blogspot.com/	footer	Footer Blogspot	t	1	2026-01-09 15:03:30.3093
13	footer_privacy_policy	Privacy Policy.pdf	footer	Footer Privacy Policy	t	1	2026-01-09 14:37:48.070119
14	footer_terms_of_service	Terms of Service.pdf	footer	Footer Terms Of Service	t	1	2026-01-09 14:37:48.070119
24	about_us_Mission_2nd_point	Fair Pricing	about_us	About Us Mission 2nd Point	t	1	2026-01-09 16:13:57.738244
25	about_us_Mission_3rd_point	Technology Integration	about_us	About Us Mission 3rd Point	t	1	2026-01-09 16:13:57.738244
\.


--
-- TOC entry 5374 (class 0 OID 26790)
-- Dependencies: 254
-- Data for Name: system_standards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.system_standards (id, standard_type, standard_value, description, is_active, display_order, created_at, updated_at) FROM stdin;
1	unit_of_measure	kg	Kilograms	t	1	2025-11-27 15:39:56.126966	2025-11-30 01:14:28.935071
2	unit_of_measure	units	Pieces	t	2	2025-11-27 15:39:56.126966	2025-11-30 01:14:28.935071
3	unit_of_measure	bunches	Leafy bunches	t	3	2025-11-27 15:39:56.126966	2025-11-30 01:14:28.935071
7	unit_of_measure	Tonne	Metric Ton (1,000 kg)	t	4	2025-12-14 21:27:23	2025-12-14 21:27:23
5	quality_grade	Grade b	Medium quality	t	2	2025-11-27 15:39:56.126966	2025-12-15 03:24:05.57859
4	quality_grade	Grade A	High quality	t	1	2025-11-27 15:39:56.126966	2025-12-15 03:24:26.248829
6	quality_grade	Export Quality	Export standard	t	3	2025-11-27 15:39:56.126966	2025-12-15 03:24:40.223898
8	quality_grade	Grade C / Standard	Lower but Acceptable Quality	t	4	2025-12-14 21:59:09	2025-12-14 21:59:09
\.


--
-- TOC entry 5378 (class 0 OID 27111)
-- Dependencies: 258
-- Data for Name: templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.templates (id, template_name, template_type, template_file_path, template_file_name, file_size, file_type, is_active, is_default, description, uploaded_by, created_at, updated_at) FROM stdin;
1	Default Invoice Template	invoice	/templates/invoices/default_invoice.html	default_invoice.html	\N	\N	t	t	Default invoice template for all buyers	\N	2025-12-02 00:03:29.643737	2025-12-02 00:03:29.643737
2	Sales Report Template	report	/templates/reports/sales_report.html	sales_report.html	\N	\N	t	t	Default sales report template	\N	2025-12-02 00:03:29.643737	2025-12-02 00:03:29.643737
\.


--
-- TOC entry 5384 (class 0 OID 27226)
-- Dependencies: 264
-- Data for Name: wishlists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wishlists (id, buyer_id, product_id, created_at, updated_at) FROM stdin;
11	1	3	2025-12-10 07:57:34	2025-12-10 07:57:34
12	21	4	2026-01-09 16:58:10	2026-01-09 16:58:10
\.


--
-- TOC entry 5404 (class 0 OID 0)
-- Dependencies: 275
-- Name: buyer_product_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.buyer_product_requests_id_seq', 43, true);


--
-- TOC entry 5405 (class 0 OID 0)
-- Dependencies: 231
-- Name: buyers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.buyers_id_seq', 21, true);


--
-- TOC entry 5406 (class 0 OID 0)
-- Dependencies: 233
-- Name: complaints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.complaints_id_seq', 4, true);


--
-- TOC entry 5407 (class 0 OID 0)
-- Dependencies: 235
-- Name: facilitators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facilitators_id_seq', 2, true);


--
-- TOC entry 5408 (class 0 OID 0)
-- Dependencies: 227
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 5409 (class 0 OID 0)
-- Dependencies: 237
-- Name: farmers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.farmers_id_seq', 3, true);


--
-- TOC entry 5410 (class 0 OID 0)
-- Dependencies: 260
-- Name: invoice_template_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_template_settings_id_seq', 1, false);


--
-- TOC entry 5411 (class 0 OID 0)
-- Dependencies: 224
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 4, true);


--
-- TOC entry 5412 (class 0 OID 0)
-- Dependencies: 239
-- Name: lead_farmers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lead_farmers_id_seq', 2, true);


--
-- TOC entry 5413 (class 0 OID 0)
-- Dependencies: 220
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 8, true);


--
-- TOC entry 5414 (class 0 OID 0)
-- Dependencies: 241
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_id_seq', 58, true);


--
-- TOC entry 5415 (class 0 OID 0)
-- Dependencies: 243
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_id_seq', 19, true);


--
-- TOC entry 5416 (class 0 OID 0)
-- Dependencies: 245
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 9, true);


--
-- TOC entry 5417 (class 0 OID 0)
-- Dependencies: 276
-- Name: otp_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.otp_verifications_id_seq', 19, true);


--
-- TOC entry 5418 (class 0 OID 0)
-- Dependencies: 278
-- Name: password_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.password_history_id_seq', 11, true);


--
-- TOC entry 5419 (class 0 OID 0)
-- Dependencies: 247
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 2, true);


--
-- TOC entry 5420 (class 0 OID 0)
-- Dependencies: 265
-- Name: product_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_categories_id_seq', 14, true);


--
-- TOC entry 5421 (class 0 OID 0)
-- Dependencies: 271
-- Name: product_examples_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_examples_id_seq', 120, true);


--
-- TOC entry 5422 (class 0 OID 0)
-- Dependencies: 249
-- Name: product_feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_feedback_id_seq', 2, true);


--
-- TOC entry 5423 (class 0 OID 0)
-- Dependencies: 267
-- Name: product_subcategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_subcategories_id_seq', 38, true);


--
-- TOC entry 5424 (class 0 OID 0)
-- Dependencies: 269
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 70, true);


--
-- TOC entry 5425 (class 0 OID 0)
-- Dependencies: 261
-- Name: report_template_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_template_settings_id_seq', 1, false);


--
-- TOC entry 5426 (class 0 OID 0)
-- Dependencies: 251
-- Name: shopping_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shopping_cart_id_seq', 12, true);


--
-- TOC entry 5427 (class 0 OID 0)
-- Dependencies: 253
-- Name: system_config_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.system_config_id_seq', 41, true);


--
-- TOC entry 5428 (class 0 OID 0)
-- Dependencies: 255
-- Name: system_standards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.system_standards_id_seq', 8, true);


--
-- TOC entry 5429 (class 0 OID 0)
-- Dependencies: 262
-- Name: template_variables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.template_variables_id_seq', 1, false);


--
-- TOC entry 5430 (class 0 OID 0)
-- Dependencies: 259
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.templates_id_seq', 2, true);


--
-- TOC entry 5431 (class 0 OID 0)
-- Dependencies: 257
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 26, true);


--
-- TOC entry 5432 (class 0 OID 0)
-- Dependencies: 263
-- Name: wishlists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wishlists_id_seq', 12, true);


-- Completed on 2026-01-10 17:12:40

--
-- PostgreSQL database dump complete
--

\unrestrict CVqRV8TQyyGbkPov2H7lnQ5yvUv6d2ivLd9C0aWbbBqTJh4BUG0ca1XewcaewQM

