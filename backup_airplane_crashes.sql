--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11
-- Dumped by pg_dump version 12.11

-- Started on 2022-11-15 08:48:57

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
-- TOC entry 211 (class 1259 OID 41789)
-- Name: accidente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accidente (
    id integer,
    location character varying(80),
    date date,
    "time" time without time zone
);


ALTER TABLE public.accidente OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 41756)
-- Name: avion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avion (
    id integer,
    type character varying(100),
    id_operador integer,
    id_vuelo integer
);


ALTER TABLE public.avion OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 41772)
-- Name: baja; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baja (
    id integer,
    fatalities integer,
    ground integer
);


ALTER TABLE public.baja OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 41779)
-- Name: multiplo_2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.multiplo_2
    START WITH 2
    INCREMENT BY 2
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiplo_2 OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 41766)
-- Name: multiplo_3; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.multiplo_3
    START WITH 3
    INCREMENT BY 3
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiplo_3 OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 41674)
-- Name: multiplo_4; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.multiplo_4
    START WITH 4
    INCREMENT BY 4
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiplo_4 OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 41663)
-- Name: multiplo_5; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.multiplo_5
    START WITH 5
    INCREMENT BY 5
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiplo_5 OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 41635)
-- Name: multiplo_6; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.multiplo_6
    START WITH 6
    INCREMENT BY 6
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiplo_6 OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 41645)
-- Name: operador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.operador (
    id integer,
    operador character varying(100)
);


ALTER TABLE public.operador OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 41802)
-- Name: siniestro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.siniestro (
    index integer,
    "cn/ln" character varying(50),
    id_baja integer,
    id_accidente integer,
    id_avion integer
);


ALTER TABLE public.siniestro OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 41739)
-- Name: vuelo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vuelo (
    id integer,
    registration character varying(30),
    route character varying(60),
    aboard integer
);


ALTER TABLE public.vuelo OWNER TO postgres;

--
-- TOC entry 2850 (class 0 OID 41789)
-- Dependencies: 211
-- Data for Name: accidente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accidente (id, location, date, "time") FROM stdin;
2	Fort Myer. Virginia	1908-09-17	17:18:00
4	AtlantiCity. New Jersey	1912-12-07	06:30:00
6	Victoria. British Columbia. Canada	1913-06-08	\N
8	Over the North Sea	1913-09-09	18:30:00
10	Near Johannisthal. Germany	1913-10-17	10:30:00
12	Tienen. Belgium	1915-05-03	01:00:00
14	Off Cuxhaven. Germany	1915-03-09	15:20:00
16	Near Jambol. Bulgeria	1916-07-28	\N
18	Billericay. England	1916-09-24	01:00:00
20	Potters Bar. England	1916-01-10	23:45:00
22	Mainz. Germany	1916-11-21	\N
24	Off West Hartlepool. England	1916-11-28	23:45:00
26	Near Gent. Belgium	1917-04-03	\N
28	Off Northern Germany	1917-03-30	\N
30	Near Texel Island. North Sea	1917-05-14	05:15:00
32	Off Vlieland Island. North Sea	1917-06-14	08:45:00
34	Off western Denmark	1917-08-21	07:00:00
36	Near Luneville. France	1917-10-20	07:45:00
38	Over the Mediterranean	1918-07-04	21:30:00
40	Off Helgoland Island. Germany	1918-10-05	\N
42	Ameland Island. North Sea	1918-11-08	10:00:00
44	Elizabeth. New Jersey	1918-12-16	\N
46	Cleveland. Ohio	1919-05-25	\N
48	Dix Run. Pennsylvania	1919-07-19	\N
50	Newcastle. England	1919-02-10	\N
52	Cantonsville. Maryland	1919-10-14	\N
54	English Channel	1919-10-20	\N
56	Long Valley. New Jersey	1919-10-30	\N
58	New Paris. Indiana	1920-10-03	\N
60	Newark. New Jersey	1920-03-30	\N
62	Newark. New Jersey	1920-10-04	\N
64	Heller Field. New Jersey	1920-11-04	\N
66	Oskaloosa. Iowa	1920-12-05	\N
68	Cleveland. Ohio	1920-06-06	\N
70	Bedford. England	1920-08-16	\N
72	College Park. Maryland	1920-08-16	\N
74	Morristown. New Jersey	1920-01-09	\N
76	Pemberville. Ohio	1920-09-15	\N
78	Hillersburg. Pennsylvania	1920-09-27	\N
80	Off Port Vendres. France	1920-02-10	\N
82	Valencia. Spain	1920-05-10	\N
84	Batavia. Illinois	1920-10-15	\N
86	Tie Siding. Wyoming	1920-07-11	\N
88	Cricklewood. England	1920-12-14	\N
90	Barcelona. Spain	1920-12-24	\N
92	Mendotta. Minnisota	1921-03-02	\N
94	La Crosse. Wisconsin	1921-09-02	\N
96	Off Gibraltar	1921-02-15	\N
98	Elko. Nevada	1921-02-22	\N
100	Point Cook. Australia	1921-06-04	\N
102	Mitchel Field. NY	1921-04-21	\N
104	Cleveland. Ohio	1921-04-29	\N
106	Rock Springs. Wyoming	1921-05-17	\N
108	San Francisco. California	1921-07-16	\N
110	Toulouse. France	1921-08-14	\N
112	River Humber. England	1921-08-24	17:40:00
114	Paris. France	1921-06-09	\N
116	Near Murchinson River. Australia	1921-05-12	\N
118	Paris. France	1922-01-14	\N
120	Near Norfolk. Virginia	1922-02-21	\N
122	Grandvilliers. France	1922-07-04	\N
124	Pao Ting Fou. China	1922-08-04	\N
126	Brooklands. England	1922-04-13	\N
128	Nittany Mt. Ohio	1925-01-10	\N
130	Off Folkestone. Kent. England	1922-03-06	\N
132	Cadix. Spain	1922-07-26	\N
134	Indianapolis. Indiana	1922-07-09	\N
136	Venice. Italy	1922-02-10	\N
138	Larache. Morocco	1922-10-25	\N
140	Fez. Morocco	1922-03-12	\N
142	Ajaccio. France	1923-10-01	\N
144	Barcelona. Spain	1923-01-17	\N
146	Cheyenne. Wyoming	1923-01-18	\N
148	Meadville. Pennsylvania	1923-02-26	\N
150	Monsures. France	1923-05-14	\N
152	Bucharest. Romania	1923-08-27	\N
154	Colton. Ohio	1923-07-09	\N
156	Berks. England	1923-09-14	\N
158	Russia	1923-11-18	\N
160	Castalia. Ohio	1923-06-12	\N
162	Over the Mediterranean Sea	1923-12-23	02:30:00
164	Egbert. WY	1923-12-24	\N
166	Grampian. Pennsylvania	1924-07-03	\N
168	Over the English Channel	1924-04-24	\N
170	Barranquilla. Colombia	1924-08-06	\N
172	United States	1924-01-08	\N
174	Cabrerolles. France	1924-06-11	\N
176	Goshen. Indiana	1924-12-21	\N
178	Purley. England	1924-12-24	\N
180	Near Tiflies. Georgia. USSR	1925-03-22	\N
182	Alicante. Spain	1925-04-25	\N
184	Alicante. Spain	1925-05-25	\N
186	LandrÃ©cies. France	1925-06-25	\N
188	Alicante. Spain	1925-06-26	\N
190	Rosas. Spain	1925-07-20	\N
192	Budapest. Hungary	1925-07-24	\N
194	Caldwell. Ohio	1925-03-09	05:30:00
196	Toul. France	1925-07-09	\N
198	Off Boulogne-sur-Mer. France	1925-11-14	\N
200	Montpelier. Ohio	1926-12-02	\N
202	Staaken. Germany	1926-08-03	\N
204	English Channel	1926-05-31	\N
206	Rossaugpt. Czechoslovakia	1926-03-07	\N
208	Wolvertem. Belgium	1926-09-07	\N
210	Juist. Germany	1926-07-24	\N
212	Hurst. Kent. England	1926-08-18	\N
214	New York. New York	1926-09-26	\N
216	Bueren. Germany	1926-08-10	\N
218	English Channel	1926-10-21	13:15:00
220	Cape Bojador. Morocco	1926-11-11	\N
222	Medford. Oregon	1926-12-16	\N
224	Lille. France	1927-12-01	\N
226	Rabat. Morocco	1927-03-20	\N
228	Tambo. Qld. Australia	1927-03-24	\N
230	King Hill. Idaho	1927-04-15	\N
232	Goshen. Indiana	1927-04-22	\N
234	Floh. Germany	1927-04-22	\N
236	Algiers. Algeria	1927-02-05	\N
238	Amoneburg. Germany	1927-07-27	\N
240	Sevenoaks. England	1927-08-22	08:30:00
242	Willington. Connecticut	1927-03-09	\N
244	Hadley. New Jersey	1927-09-17	\N
246	Saale. Germany	1927-09-22	\N
248	Schleiz. Germany	1927-09-23	10:00:00
250	Thies. Mauritania	1927-06-10	\N
252	New Brunswick. New Jersey	1927-10-30	\N
254	Strasburg. France	1927-11-16	\N
256	Over the Gulf of Finland	1927-11-16	\N
258	Corunna. Indiana	1927-11-29	\N
260	Almeria. Spain	1927-12-26	\N
262	Abuerio. Spain	1927-12-28	\N
264	France	1927-12-31	\N
266	Near Canajoharie. New York	1928-08-01	\N
268	Solis. Uruguay	1928-01-16	\N
270	Tarragona. Spain	1928-01-22	\N
272	France	1928-01-22	\N
274	Almeria. Spain	1928-01-27	\N
276	Marquette. Nebraska	1928-02-26	\N
278	Rio de Janeiro. Brazil	1928-03-03	\N
280	Off Cape Griz Nez. France	1928-11-03	\N
282	Federal. Wyoming	1928-04-17	\N
284	Minuesa. Spain	1928-04-19	\N
286		1928-07-05	\N
288	Dearborn. Minnesota	1928-12-05	\N
290	Radevormwald. Germany	1928-05-26	\N
292	Frankfurt. Germany	1928-06-14	\N
294	Lebo. Kansas	1928-06-22	\N
296	Over the Gulf of Finland	1928-10-07	\N
298	Purley. England	1928-07-13	\N
300	Waalhaven harbor. Netherlands	1928-07-24	\N
302	Near Port Townsend. BC. Canada	1928-08-25	\N
304	Toul. France	1928-02-09	\N
306	Adelaide Hills. Australia	1928-04-09	\N
308	Pocatello. Idaho	1928-04-09	\N
310	Heroldbach. Germany	1928-06-09	\N
312	Gerona. Spain	1928-04-10	\N
314	Polk. Pennsylvania	1928-10-18	\N
316	Valence. France	1928-10-31	\N
318	Off Gibraltar	1928-11-15	\N
320	Edgerton. Ohio	1928-11-24	\N
322	Bristolville. Ohio	1928-11-25	\N
324	Edgerton. Ohio	1928-11-25	\N
326	Spur. Texas	1928-01-12	10:00:00
328	Brazil	1928-03-12	08:00:00
330	Rio de Janeiro. Brazil	1928-04-12	\N
332	Letzlingen. Germany	1928-11-12	\N
334	Huron. Ohio	1928-12-20	\N
336	Chattanooga. Tennessee	1928-12-23	\N
338	Reims. France	1928-12-31	\N
340	Stafford Springs. Connecticut	1929-05-01	\N
342	Cove. Oregon	1929-01-18	\N
344	Near Corfu. Greece	1929-01-25	\N
346	Morgantown. West Virginia	1929-01-31	\N
348	Off Morocco	1929-01-31	\N
350	Newark. New Jersey	1929-03-17	\N
352	Near Beaumont. California	1929-03-30	09:18:00
354	San Diego. California	1929-04-21	\N
356	Hungary	1929-05-18	\N
358	Algiers	1929-05-22	\N
360	Santiago de Cuba. Cuba	1929-10-06	\N
362	Barcelona. Spain	1929-06-14	\N
364	Off Dungeness. England	1929-06-17	\N
366	St. Paul. Minnesota	1929-06-24	\N
368	Lake Constance. Switzerland	1929-06-29	\N
370	Columbus. Ohio	1929-06-29	\N
372	Clovis. New Mexico	1929-11-08	\N
374	Perpignan. France	1929-08-13	\N
376	Sochi. Russia	1929-08-24	\N
378	Elm. Germany	1929-08-24	\N
380	Needles. California	1929-02-09	\N
382	Mt. Taylor. New Mexico	1929-03-09	01:00:00
384	Jask. Iran	1929-06-09	\N
386	Off Larache. Morocco	1929-09-17	\N
388	Jacumba. California	1929-09-17	\N
390	Mt Lamentation. Connecticut	1929-09-17	\N
392	Off Spezia. Italy	1929-10-26	\N
394	Mount Vernon. Ohio	1929-10-29	\N
396	Off Bremerton. Washington	1929-10-31	\N
398	Cerro del Carbon. Mexico	1929-04-11	07:00:00
400	Near Godstone. Surrey. England	1929-06-11	\N
402	Off Corsica. France	1929-11-15	\N
404	Vancouver. Washington	1929-11-30	\N
406	Chagrin Falls. Ohio	1929-02-12	\N
408	Mediterranean Sea	1929-12-14	\N
410	Near Berlin. Germany	1929-12-19	\N
412	Amarillo. Texas	1929-12-30	\N
414	Brawnson. Nebraska	1930-10-01	\N
416	Antananarivo. Madagascar	1930-01-13	\N
418	Oceanside. California	1930-01-19	18:23:00
420	Off Ceuta. Spain	1930-01-25	\N
422	Kansas City. Kansas	1930-01-27	17:30:00
424	Hartford. Connecticut	1930-03-02	\N
426	Marden. England	1930-10-02	\N
428	Jersey City. New Jersey	1930-04-18	17:00:00
430	Buenos Aires	1930-10-05	\N
432	Boston. Massachusetts	1930-05-06	\N
434	Bornholm. Denmark	1930-07-07	\N
436	Arkansas Pass. Texas	1930-10-07	\N
438	Iglau. Czechoslovakia	1930-08-22	\N
440	Croydon. England	1930-11-09	\N
442	Southesk. Saskatchewan. Canada	1930-09-25	\N
444	Near Beauvais. France	1930-05-10	02:05:00
446	Dresden. Germany	1930-06-10	09:45:00
448	La Rache. Morocco	1930-12-10	\N
450	Prince Rupert. BC. Canada	1930-10-28	\N
452	Near Neufchatel. France	1930-10-30	\N
454	Brookston. Indiana	1930-10-30	\N
456	Off of Santos. Brazil	1930-07-11	\N
458	Techachapi Mountains. California	1930-11-18	02:00:00
460	Shanghai. China	1930-09-12	\N
462	Melle. Belgium	1931-08-01	\N
464	Bluff Mountain. Washington	1931-01-22	\N
466	Wairoa. New Zealand	1931-08-02	\N
468	Bagot. Manitoba. Canada	1931-02-20	\N
470	Off Spain	1931-02-24	\N
472	New South Wales. Australia	1931-03-21	\N
474	Bazaar. Kansas	1931-03-31	10:45:00
476	Near Letschen. Germany	1931-04-14	\N
478	Burbank. California	1931-05-05	23:30:00
480	Wampit. Australia	1931-05-22	\N
482	Bellefonte. Pennsylvania	1931-05-24	22:30:00
484	Near Sandoway. Burma	1931-07-06	09:00:00
486	Walbridge. Ohio	1931-11-06	\N
488	Saarbrucken. Germany	1931-06-13	\N
490	Chicago. Illinois	1931-12-07	\N
492	Temora. Australia	1931-07-14	\N
494	Centralia. Illinois	1931-07-21	\N
496	Kurudjevo. Bulgaria	1931-07-24	\N
498	Cincinnati. Ohio	1931-09-08	08:40:00
500	Chicago. Illinois	1931-09-14	20:00:00
502	Oakland. California	1931-09-16	04:00:00
504	Novia Scotia. Canada	1931-06-10	\N
506	Brazil	1931-10-14	\N
508	Camden. New Jersey	1931-05-11	06:48:00
510	Sir Lowry´s pass. South Africa	1931-11-13	\N
512	Salt Lake City. Utah	1931-11-23	\N
514	Near Tsinan. China	1931-11-24	\N
516	Pasco. Washington	1931-11-26	22:30:00
518	Kewanee. Illinois	1931-05-12	\N
520	Bangkok. Thailand	1931-06-12	\N
522	Off Algiers	1931-09-12	\N
524	Springfield. Ohio	1931-12-31	\N
526	Colvin Park. Ilinois	1932-01-21	\N
528	Lebec. California	1932-01-29	\N
530	Off Miami. Florida	1932-01-02	\N
532	Marcellus. Michigan	1932-02-02	\N
534	Rio Vista. California	1932-02-02	\N
536	Off Setiba. Brazil	1932-02-27	\N
538	Saint Louis. Illinois	1932-08-03	02:00:00
540	Calimesa. California	1932-03-19	\N
542	Steubenville. Ohio	1932-03-21	\N
544	Syria	1932-03-29	\N
546	Bedford. Ohio	1932-03-31	\N
548	Fort Wayne. Indiana	1932-04-21	\N
550	Portland. Oregon	1932-03-05	\N
552	Burbank. California	1932-05-16	\N
554	Mount El Plomo. near Vitacura. Chile	1932-07-16	\N
556	Beyrouth. Lebanon	1932-12-08	\N
558	Tubergen. Germany	1932-08-30	\N
560	Salt Flats. Texas	1932-09-08	09:00:00
562	Selsdon Park. England	1932-09-17	\N
564	Byron Bay. Australia	1932-09-18	\N
566	Port Etienne. Mauritania	1932-12-10	\N
568	Villa Monte. Bolivia	1932-10-26	\N
570	Ramsgate. England	1932-10-29	\N
572	Echterpfuhl. Germany	1932-02-11	\N
574	Marianna. Arkansas	1932-11-25	\N
576	Amarillo. Texas	1932-12-14	\N
578	Rocky Ridge. Colorado	1932-12-14	\N
580	Wau. Australia	1932-12-26	\N
582	Algiers	1933-10-01	\N
584	Newark. New Jersey	1933-01-14	\N
586	Marietta. Georgia	1933-01-20	\N
588	Bourne. Texas	1933-01-20	02:07:00
590	Eugene. Oregon	1933-01-24	\N
592	Near Mendoza. Argentina	1933-11-03	\N
594	Hayward. California	1933-03-25	20:07:00
596	Near Dixmude. Belgium	1933-03-28	14:30:00
598	Hemkenrode. Germany	1933-03-04	\N
600	Off Barnegat. New Jersey	1933-04-04	12:30:00
602	Mt. Terrione. Italy	1933-04-23	\N
604	Traunstein. Germany	1933-04-29	\N
606	Viladrau. Spain	1933-09-05	\N
608	Bowling Green. Virginia	1933-02-06	\N
610	Quay. New Mexico	1933-08-29	\N
612	Ljubljana. Yugoslavia	1933-12-09	\N
614	Chesterton. Indiana	1933-10-10	21:00:00
616	Etobon. France	1933-10-31	\N
618	Portland. Oregon	1933-09-11	22:35:00
620	Moriarty. New Mexico	1933-10-11	\N
622	Near Tsinan. China	1933-11-20	\N
624	Near Kharkov. Ukraine. USSR	1933-11-21	15:00:00
626	Wedron. Illinois	1933-11-24	\N
628	Hamburg. Germany	1933-11-12	\N
630	Eshowe. South Africa	1933-12-14	\N
632	Near Ruysselede. Belgium	1933-12-30	\N
634	Corbigny. France	1934-01-15	18:15:00
636	Carombe. France	1934-01-20	\N
638	Near Salt Lake City. Utah	1934-02-23	02:00:00
640	Rio de Oro. Morocco	1934-02-26	\N
642	Petersburg. Illinois	1934-06-03	\N
644	Pereira. Colombia	1934-10-03	\N
646	Near Lima. Peru	1934-03-22	\N
648	Ningpo Bay. China	1934-10-04	\N
650	English Channel	1934-09-05	\N
652	Croydon. England	1934-05-31	05:00:00
654	Mongaup Mountain. New York	1934-09-06	\N
656	Junin. Argentina	1934-11-06	\N
658	Chausseehausen. Germany	1934-06-22	\N
660	Burbank. California	1934-06-23	06:00:00
662	San Bernardino. California	1934-09-07	\N
664	Near Tuttlingen. Germany	1934-07-27	\N
666	Bahia. Brazil	1934-05-08	\N
668	Ningbo. China	1934-10-08	\N
670	Amazonia. Missouri	1934-08-31	23:42:00
672	Near Winton. Australia	1934-03-10	\N
674	Bass Strait. Australia	1934-10-19	\N
676	Kiapit. Australia	1934-02-11	\N
678	Near Longreach. Australia	1934-11-15	\N
680	Near Longreach. NSW. Australia	1934-11-15	\N
682	Amazonia. Montana	1934-11-15	\N
684	Salchau. Germany	1934-07-12	\N
686	Columbia. Missouri	1934-08-12	05:30:00
688	Palma Soriano. Cuba	1934-10-12	07:30:00
690	Rutbah Wells. Syria	1934-12-20	02:30:00
692	Sunbright. Tennessee	1934-12-22	02:52:00
694	Pittsburgh. Pennsylvania	1935-01-26	\N
696	Stettin. Germany	1935-01-31	\N
698	Schievelbein. Germany	1935-07-03	\N
700	El Arish. Egypt	1935-03-15	\N
702	Off Samland. Germany	1935-03-29	\N
704	Beauvais. France	1935-01-04	\N
706	Brilon. Germany	1935-06-04	\N
708	Near Walsenberg. Colorado	1935-01-05	\N
710	Atlanta. Missouri	1935-06-05	03:30:00
712	Flint. Michigan	1935-05-18	18:35:00
714	Near Moscow. Russia	1935-05-18	00:45:00
716	Glendo. Wyoming	1935-05-27	\N
718	Maywood. Illinois	1935-05-28	\N
720	San Barbra. Honduras	1935-05-29	\N
722	Medellin. Colombia	1935-06-24	14:36:00
724	Amsterdam. Netherlands	1935-07-14	\N
726	Off Chandeleur Island. Mississippi	1935-07-19	14:20:00
728	Pian Giacomo. Switzerland	1935-07-20	\N
730	Hangow. China	1935-08-13	\N
732	Near Gilmer. Texas	1935-08-14	23:45:00
734	Near Glendo. Wyoming	1935-08-15	20:08:00
736	Walakpa. near Point Barrow. Alaska	1935-08-15	20:18:00
738	Burbank. California	1935-01-09	23:00:00
740	Off Finders Island. Victoria. Australia	1935-02-10	\N
742	Near Cheyenne. Wyoming	1935-07-10	02:19:00
744	Gulf of Finland	1935-09-10	\N
746	Troy. New York	1935-10-21	\N
748	Cheyenne. Wyoming	1935-10-30	19:40:00
750	Off Nhambupe. Brazil	1935-02-11	\N
752	Near Juticalpa. Honduras	1935-09-11	\N
754	Near Fort Worth. Texas	1935-09-11	04:40:00
756	Istres. France	1935-11-11	\N
758	Tours. France	1935-04-12	\N
760	Croydon. England	1935-10-12	\N
762	Breslau. Germany	1935-12-24	\N
764	Off Alexandria. Egypt	1935-12-31	17:20:00
766	Goodwin. Arkansas	1936-01-14	19:32:00
768	Near Cordillera. Boliva	1936-01-17	\N
770	Off Ajaccio. Corsica. France	1936-01-21	\N
772	Denton. Texas	1936-01-29	\N
774	South AtlantiOcean	1936-02-15	\N
776	Near Tengya. China	1936-05-03	\N
778	Amemeca. Mexico	1936-03-26	\N
780	Pavillon. New York	1936-01-04	19:10:00
782	Uniontown. Pennsylvania	1936-07-04	10:20:00
784	Port of Spain. Trinidad	1936-11-04	05:20:00
786	Near Turin. Italy	1936-04-15	\N
788	Switzerland	1936-04-17	\N
790	Senlis. France	1936-04-21	\N
792	Basel. Switzerland	1936-04-30	\N
794	Mount Waverley. Australia	1936-05-16	\N
796	Malmo. Sweden	1936-09-06	\N
798	Hannover. Germany	1936-06-13	\N
800	Mt. Lihesten. Norway	1936-06-16	\N
802	Off Channel Islands. Jersey	1936-07-31	\N
804	Mazamet. France	1936-02-08	06:00:00
806	Mexico	1936-03-08	\N
808	St. Louis. Missouri	1936-05-08	22:00:00
810	Choco. Colombia	1936-06-08	\N
812	Altenkirchen. Germany	1936-12-08	\N
814	Mirabella. Greece	1936-08-22	\N
816	English Channel	1936-09-25	\N
818	Walsenberg. Colorado	1936-09-28	\N
820	Napierville. Illinois	1936-09-29	\N
822	Mexico	1936-06-10	\N
824		1936-09-10	\N
826	Near Tabarz. Germany	1936-01-11	\N
828	Near Moscow	1936-06-11	\N
830	Nurnberg. Germany	1936-11-17	\N
832	London. England	1936-11-19	\N
834	Near Grenoble. France	1936-04-12	\N
836	Off Dakar. French West Africa	1936-07-12	10:47:00
838	Croydon. England	1936-09-12	10:30:00
840	Near Salt Lake City. Utah	1936-12-15	03:14:00
842	Kellogg. Idaho	1936-12-18	03:20:00
844	Near Milford. Pennsylvania	1936-12-19	20:47:00
846	Near Dallas. Texas	1936-12-23	\N
848	Nanking. China	1936-12-26	\N
850	Newhall. California	1936-12-27	19:38:00
852	Near Newhall. California	1937-12-01	11:07:00
854	Oran. Algeria	1937-01-26	\N
856	Off San Francisco. California	1937-09-02	20:50:00
858	McPherson Ranges. Queensland. Australia	1937-02-19	13:40:00
860	Bathurst. Gambia	1937-12-03	\N
862	Near Ouroux. France	1937-03-24	\N
864	Clifton. Pennsylvania	1937-03-25	18:40:00
866	Wetnum. Germany	1937-03-26	\N
868	Lakehurst. New Jersey	1937-06-05	19:25:00
870	Stuttgart. Germany	1937-05-20	\N
872	Off Lae. New Guinea	1937-02-07	\N
874	Hal. Belgium	1937-07-28	\N
876	Wadi Halfa. Sudan	1937-02-08	\N
878	Off Cristobal. Panama	1937-03-08	\N
880	Chilang Point. Bias Bay. China	1937-08-08	10:50:00
882	Daytona Beach. Florida	1937-10-08	04:40:00
884	San Luis. Argentina	1937-08-23	\N
886	Wau. Australia	1937-08-27	\N
888	Corsavy. France	1938-03-23	\N
890	Phaleron Bay. Greece	1937-01-10	\N
892	Palembang. Netherlands Indies	1937-06-10	\N
894	Haydens Peak. Wyoming	1937-10-17	21:00:00
896	Mannheim. Germany	1937-12-11	\N
898	Ostende. Belgium	1937-11-16	\N
900	Croydon. London	1937-11-26	\N
902	Brindisi Harbor. Italy	1937-05-12	09:00:00
904	Saint Sauveur. France	1937-08-12	\N
906	Kasperske Hory. Czechoslovakia	1937-12-24	17:30:00
908	Frankfurt. Germany	1938-04-01	\N
910	Bozeman. Montana	1938-10-01	15:07:00
912	Pago Pago. U.S. Samoa	1938-11-01	19:40:00
914	North Pine. Ontario. Canada	1938-12-01	\N
916	Off San Clemente Island. California	1938-02-02	20:40:00
918	Kandalaksha. Russia	1938-05-02	\N
920	Marseille. France	1938-09-02	\N
922	Guadalupe. Mexico	1938-09-02	\N
924	Pontoise. France	1938-02-22	\N
926	Near Wawona. Cailifornia	1938-01-03	21:30:00
928	Datia. India	1938-07-03	\N
930	Somerton. Australia	1938-08-03	\N
932	Near Formia. Italy	1938-12-04	\N
934	Balbuena. Mexico	1938-05-05	\N
936	Mangere. New Zealand	1938-10-05	\N
938	Near Saugus. California	1938-05-16	02:07:00
940	Sao Paulo. Brazil	1938-05-22	13:40:00
942	Cleveland. Ohio	1938-05-24	22:17:00
944	Germany	1938-05-27	\N
946	Alberno Canal. BC. Canada	1938-05-27	\N
948	Tanganyika	1938-08-06	\N
950	Mount  Mercedario. Chile	1938-06-19	\N
952	Billings. Montana	1938-08-07	02:56:00
954	Off Sardinia. Italy	1938-07-14	\N
956	Stulpica. Romania	1938-07-22	\N
958	Near Bogota Colombia	1938-07-24	13:00:00
960	Kisumu. Kenya	1938-07-27	\N
962	PacifiOcean between Manila and Guam	1938-07-29	04:11:00
964	Shishijima. Japan	1938-10-08	\N
966	Debrecen. Hungary	1938-10-08	\N
968	Kiel. Germany	1938-08-13	\N
970	Guanabara. Brazil	1938-08-15	\N
972	Bucharest. Romania	1938-08-18	\N
974	Montnago. Italy	1938-08-18	\N
976	Wangmoon. China	1938-08-24	08:00:00
978	Innisfail. Australia	1938-08-29	\N
980	Off Bathurst. Gambia	1938-01-10	\N
982	Grisons. Switzerland	1938-01-10	\N
984	Soest. Germany	1938-10-10	\N
986	Mt. Dandenong. Australia	1938-10-25	\N
988	Somerset. England	1938-02-11	\N
990	Channel Islands. Jersey	1938-04-11	10:50:00
992	Schiphol. Amsterdam	1938-11-14	18:41:00
994	Regina. Saskatchewan. Canada	1938-11-18	00:51:00
996	Bathurst. Gambia	1938-11-26	\N
998	Bagdad. Iraq	1938-11-27	\N
1000	Off Point Reyes. California	1938-11-29	05:30:00
1002	Off Kubashima. Japan	1938-08-12	\N
1004	Amsterdam. Netherlands	1938-09-12	\N
1006	Darwin. Australia	1938-12-12	\N
1008	Paris. France	1939-07-01	\N
1010	Miles City. Montana	1939-01-13	21:15:00
1012	Rio de Janeiro. Brazil	1939-01-13	\N
1014	Katherine. Australia	1939-01-18	\N
1016	AtlantiOcean between N.Y. and Bermuda	1939-01-21	12:30:00
1018	Mediterranean Sea	1939-02-24	\N
1020	Haren. Belgium	1939-03-14	\N
1022	Manzanares. Colombia	1939-03-16	\N
1024	Near Adler. Washington	1939-03-18	\N
1026	Hannover. Germany	1940-09-08	\N
1028	AtlantiOcean	1941-03-06	17:00:00
1030	Oklahoma City. Oklahoma	1939-03-26	14:48:00
1032	Near Marrakech. Morocco	1939-03-04	\N
1034	Mocambique	1939-01-05	\N
1036	Near Marrakech. Morocco	1939-02-05	\N
1038	Guayaquil. Ecuador	1939-08-05	12:00:00
1040	Vlissingen. The Netherlands	1939-10-06	\N
1042	Konstanz. Switzerland	1939-07-20	\N
1044	Barcelona. Spain	1939-04-08	\N
1046	Rio de Janerio. Brazil	1939-08-13	16:35:00
1048	Off Copenhagen. Denmark	1939-08-15	\N
1050	Lahore. India	1939-08-28	\N
1052	Hannover. Germany	1939-08-30	\N
1054	North Sea	1939-09-26	\N
1056	Gosport. England	1939-11-20	\N
1058	South of Gibraltar	1939-12-18	\N
1060	Off Malta-Luqa	1939-12-21	\N
1062	Mogador. Morocco	1939-12-24	\N
1064	Denpasar. Indonesia	1940-01-15	\N
1066	Gulf of Oman	1940-01-03	\N
1068	Near Loch Lomond. Scotland	1940-04-22	\N
1070	El Segundo. California	1940-02-06	\N
1072	Off Prangli Island. Gulf of Finland. Estonia	1940-06-14	14:00:00
1074	Near Ouistreham. France	1940-06-20	\N
1076	Gulf of Tonkin	1940-07-07	\N
1078	Near Canberra. Australia	1940-08-13	10:15:00
1080	Cluj. Romania	1940-08-23	\N
1082	Near Lovettsville. Virginia	1940-08-31	14:41:00
1084	Near Changyi. China	1940-10-29	\N
1086	Berlin. Germany	1940-10-29	\N
1088	Near Centerville. Utah	1940-04-11	04:42:00
1090	Brauna. Germany	1940-08-11	\N
1092	Rio de Janeiro. Brazil	1940-09-11	\N
1094	Mediterranean Sea	1940-11-27	\N
1096	Chicago. Illinois	1940-04-12	17:48:00
1098	Off South Africa	1941-01-15	\N
1100	Near Nagy-Varad. Hungary	1941-01-18	\N
1102	Near Kian. China	1941-01-20	\N
1104	Near Robertson. Missouri	1941-01-23	04:13:00
1106	Armstrong. ON. Canada	1941-06-02	02:00:00
1108	Atlanta. Georgia	1941-02-26	11:50:00
1110	Trontheim. Norway	1941-01-03	\N
1112	Elands Bay. South Africa	1941-03-28	\N
1114	Bucharest. Romania	1941-06-19	\N
1116	Sea of Japan	1941-06-21	\N
1118	Arran. Scotland	1941-10-08	20:35:00
1120	Ayr. Scotland	1941-08-14	20:40:00
1122	Near Sao Paulo. Brazil	1941-08-18	\N
1124	Bollemont. France	1941-01-09	\N
1126	Campbeltown. Argyll. Scotland	1941-01-09	\N
1128	San Juan. Puerto Rico	1941-03-10	17:48:00
1130		1941-10-28	\N
1132	Near Moorhead. Minnesota	1941-10-30	02:04:00
1134	St. Thomas. Ontario. Canada	1941-10-30	22:10:00
1136	Miami. Florida	1941-11-12	\N
1138	Near Las Vegas. Nevada	1942-01-16	19:23:00
1140	Manado. Indonesia	1942-01-20	\N
1142	Near Samarinda. Borneo	1942-01-24	\N
1144	Kupang. Timor	1942-01-26	\N
1146	Near Kupang. Timor	1942-01-30	\N
1148		1942-02-14	\N
1150	English Channel. near Plymouth. England	1942-02-15	\N
1152	Off Belmont. Brisbane. Australia	1942-02-20	\N
1154	Indian Ocean	1942-02-28	\N
1156	Off Broome. Australia	1942-03-03	\N
1158	Wyndham. Australia	1942-03-03	\N
1160	North Sea	1943-08-27	\N
1162	Kunming. China	1942-03-14	22:15:00
1164	Pine Creek. Australia	1942-04-21	21:27:00
1166	Salt Lake City. Utah	1942-01-05	23:00:00
1168	Miles City. Montana	1942-12-05	11:51:00
1170	Near Premier. West Virginia	1942-01-07	12:00:00
1172	Off Broken Head. Australia	1942-07-07	\N
1174	Llanfair. England	1942-07-20	\N
1176	Algiers. Algeria	1942-08-13	\N
1178		1942-08-21	\N
1180	Trinidad	1942-08-22	\N
1182	Invergordon. England	1942-08-23	\N
1184	Near Dunbeath. Scotland	1942-08-25	14:00:00
1186	Ameur el Ain. Algeria	1942-09-27	\N
1188	Kunming. China	1942-01-10	\N
1190	Near Coamo. Puerto Rico	1942-01-10	09:30:00
1192	Botwood. Newfoundland	1942-03-10	19:05:00
1194		1942-10-22	\N
1196	Palm Springs. California	1942-10-23	17:15:00
1198	Norway	1942-10-30	\N
1200	Fairfield. Utah	1942-12-15	01:22:00
1202	Wien. Vienna	1942-12-19	\N
1204	River Tagus. Lisbon. Portugal	1943-09-01	\N
1206	Near Paramarino. Dutch Guyana	1943-01-15	\N
1208	Off the Brazilian coast.  AtlantiOcean	1943-01-18	23:00:00
1210	Ukiah. California	1943-01-21	07:30:00
1212	Near Chaparra. Peru	1943-01-22	15:15:00
1214	Near Gander. Newfoundland	1943-09-02	\N
1216	Seattle. Washington	1943-02-18	12:30:00
1218	Lisbon. Portugal	1943-02-22	06:47:00
1220	Luishui. China	1943-11-03	\N
1222	Himalaya. China	1943-03-13	\N
1224	Archerfield Aerodrome. Queensland. Australia	1943-03-27	05:15:00
1226	Off Port Moresby. New Guinea	1943-04-22	\N
1228	Off the coast of France	1943-01-06	11:00:00
1230	Red Springs. North Carolina	1943-07-06	04:00:00
1232	Near Mackay. OLD. Australia	1943-06-14	\N
1234	Khartoum. Sudan	1943-06-16	\N
1236	Khartoum. Sudan	1943-06-30	\N
1238	Gibraltar	1943-04-07	23:00:00
1240	Brandon Head. Ireland	1943-07-28	\N
1242	Trammel. Kentucky	1943-07-28	22:43:00
1244	Ploesti. Romania	1943-01-08	15:00:00
1246	Off Townsville. Australia	1943-07-08	05:20:00
1248	Fort Hertz. China	1943-11-08	\N
1250	Rio de Janeiro. Brazil	1943-08-27	\N
1252	Off Galveston. Texas	1943-10-09	16:00:00
1254	Near Maxton. North Carolina	1943-09-20	08:50:00
1256	Near Calcutta. India	1943-09-22	06:00:00
1258	Near Centerville. Tennessee	1943-10-15	23:17:00
1260	St. Donat. Quebec. Canada	1943-10-19	\N
1262	Hallo. Sweden	1943-10-22	\N
1264	Columbus. Georgia	1943-10-22	20:20:00
1266	Poona. India	1943-08-11	\N
1268	Kunming. China	1943-11-19	\N
1270	Kunming. China	1943-11-19	\N
1272	Port Moresby. New Guinea	1943-11-26	\N
1274	Suifu. China	1943-12-18	\N
1276	Canal Creek. Australia	1943-12-19	09:20:00
1278	Lakeside. Utah	1943-12-29	15:00:00
1280	Belgrad. Yugoslavia	1944-01-15	\N
1282	Memphis. Tennessee	1944-10-02	23:36:00
1284	China	1944-02-20	\N
1286	Eubeoa. Greece	1944-02-21	\N
1288	New Guinea	1944-03-22	\N
1290	Near Nome. Alaska	1944-06-04	15:48:00
1292	Belgrad. Yugoslavia	1944-04-17	\N
1294	Frederikstad. Norway	1944-04-21	\N
1296	Montreal. Canada	1944-04-25	\N
1298	Between Calcutta to Dinjan. China	1944-05-26	\N
1300	Off Calcutta. India	1944-05-27	\N
1302	Carentan. France	1944-06-06	01:30:00
1304	Flamanville. France	1944-06-06	02:00:00
1306	Barneville. France	1944-06-06	01:15:00
1308	Kunming. China	1944-08-06	\N
1310	Kweilin. China	1944-06-18	\N
1312	Porto Alegre. Brazil	1944-06-20	\N
1314	North AtlantiOcean	1944-07-26	03:00:00
1316	Port Logan. Scotland	1944-07-27	16:00:00
1318	Funafuti. Gilbert Islands. PacifiOcean	1944-07-31	\N
1320	Naper. Nebraska	1944-03-08	20:30:00
1322	Off Antilla. Cuba	1944-08-08	13:20:00
1324	Blythburgh. England	1944-12-08	18:20:00
1326	Freckelton. England	1944-08-23	10:45:00
1328	Preswick. Scotland	1944-08-28	01:00:00
1330	Sao Paulo. Brazil	1944-08-30	\N
1332	Belgrad. Yugoslavia	1944-02-09	\N
1334	Near Mossman. Queensland. Australia	1944-07-09	\N
1336	Alaska	1944-09-18	07:42:00
1338	Rio Doce. Brazil	1944-09-21	\N
1340	Near Dijon. France	1944-09-27	20:30:00
1342	Texas	1945-06-30	\N
1344	Near Sadiya. India	1944-07-10	\N
1346	Bosnia	1944-10-10	\N
1348	Sydney. Australia	1944-11-10	\N
1350	Telemark. Norway	1944-10-16	\N
1352	Hungary	1944-10-17	\N
1354	Birkenhead. England	1944-10-18	15:40:00
1356	Hanford. California	1944-04-11	17:15:00
1358	Seljord. Norway	1944-09-11	\N
1360	Lewes. England	1944-11-19	15:10:00
1362	Tegucigalpa. Nicaragua	1944-11-29	\N
1364	Kenya	1944-11-29	\N
1366	Malmo. Sweden	1944-11-29	\N
1368	Dinjan. China	1944-11-30	\N
1370	Van Nuys. California	1944-01-12	00:54:00
1372	AtlantiOcean	1944-03-12	\N
1374	English Channel	1944-12-15	14:00:00
1376	Near Dinjan. India	1945-06-01	\N
1378	Port of Spain. Trinidad	1945-08-01	21:16:00
1380	Burbank. California	1945-10-01	04:10:00
1382	China	1945-01-14	\N
1384	Near Kunming. China	1945-01-16	\N
1386	Timor. Indonesia	1945-01-23	\N
1388	Redesdale. Australia	1945-01-31	\N
1390	Near Montieri. Italy	1945-02-02	10:15:00
1392	Nunters Burgh. England	1945-06-02	10:05:00
1394	Off Oakland. California	1945-02-13	06:30:00
1396	Lagoa Santa. Brazil	1945-02-15	\N
1398	Casablanca. Morocco	1945-02-23	\N
1400	Marion. Virginia	1945-02-23	02:25:00
1402	Coral Sea. off Australia	1945-03-27	\N
1404	Kunming. China	1945-09-04	\N
1406	Morgantown. West Virginia	1945-04-14	16:58:00
1408	Near Perth. Australia	1945-04-19	05:35:00
1410		1945-04-20	\N
1412	Sweetwater. Texas	1945-04-20	06:40:00
1414	Munchen. Germany	1945-04-21	\N
1416	North Barrule. Isle of Man. England	1945-04-23	\N
1418	Washington D.C.	1945-04-27	12:40:00
1420	Manus Island. New Guinea	1945-05-05	22:26:00
1422	Hindhead. England	1945-06-05	12:55:00
1424	Roye. France	1945-09-05	01:30:00
1426	Netherlands. New Guinea	1945-05-13	15:00:00
1428	Off Drewin. Ivory Coast	1945-05-30	09:20:00
1430	China	1945-06-15	\N
1432	Gealdton. Australia	1945-06-24	\N
1434	Swanage. England	1945-06-25	07:50:00
1436	Bangalore. India	1945-06-29	\N
1438	North AtlantiOcean	1945-04-07	\N
1440	Near Kisumu. Kenya	1945-11-07	\N
1442	Near Florence. South Carolina	1945-12-07	14:36:00
1444	New York. New York	1945-07-28	09:49:00
1446	Near San Luis Potosi. Mexico	1945-01-08	\N
1448	Fort de France. Martinique	1945-03-08	10:11:00
1450	Ixtaccihuati. Mexico	1945-11-08	\N
1452	Florence. South Carolina	1945-07-09	02:13:00
1454	Near Milne Bay. New Guinea	1945-11-09	10:15:00
1456	Near Kansas. Missouri	1945-09-15	00:08:00
1458	Puncak Jaya. Papua New Guinea	1945-09-18	\N
1460	Near Chihkiang. China	1945-09-28	\N
1462	Lakeland. Florida	1945-05-10	01:05:00
1464	Elvetham. England	1945-05-10	12:50:00
1466	Rennes. France	1945-07-10	00:30:00
1468	Melsbroek. Belgium	1945-10-13	20:45:00
1470	Near Peking. China	1945-10-16	11:30:00
1472	Timor Sea. AtlantiOcean	1945-10-20	\N
1474	Between Shanghi and Canton. China	1945-10-20	\N
1476	Near Chiringa. India	1945-10-23	\N
1478	Tarapoto. Peru	1945-10-24	\N
1480	Chihchiang. China	1945-10-30	19:15:00
1482	Herrenalb. Germany	1945-01-11	15:30:00
1484	Near Chuka. India	1945-03-11	02:00:00
1486	Off Corpus Christi. Texas	1945-08-11	20:00:00
1488	Near Boccadi. Italy	1945-09-11	20:00:00
1490	Near Picinisco. Italy	1945-11-11	12:00:00
1492	Near Castel. Libya	1945-11-11	23:45:00
1494	Himalayas	1945-11-11	\N
1496	New Britain Island. New Guinea	1945-11-15	09:14:00
1498	White´s Farm. England	1945-11-22	10:00:00
1500	Near Rochefort . France	1945-03-12	13:30:00
1502	Off the Florida coast	1945-05-12	20:00:00
1504	Near Billings. Montana	1945-08-12	\N
1506	Voksenkollen. Norway	1945-12-18	10:10:00
1508	Bangui. French Equatorial Africa	1945-12-25	\N
1510	New York City. New York	1945-12-30	21:13:00
1512	Birmingham. Alabama	1946-06-01	03:59:00
1514	Changchun. China	1946-09-01	\N
1516	Marseilles. France	1946-01-15	18:25:00
1518	Cheshire. Connecticut	1946-01-18	11:03:00
1520	Crowsnest Pass. Alberta. Canada	1946-01-19	\N
1522	Near Le Mans. France	1946-01-30	\N
1524	Mt. Elk. Wyoming	1946-01-31	02:47:00
1526	Negros. Philippines	1946-05-02	\N
1528	Charlottetown. PE. Canada	1946-02-21	\N
1530	Live Oak Springs. California	1946-03-03	08:12:00
1532	Near Prague. Czechoslovakia	1946-05-03	\N
1534	Off Hobart. Tasmania	1946-10-03	20:55:00
1536	Near Nanking. China	1946-03-17	\N
1538	Between Chungking and Shanghai. China	1946-03-18	\N
1540	Hobart Mills. California	1946-03-19	11:45:00
1542	Ceylon. Cocos Islands. Indian Ocean	1946-03-23	\N
1544	Rabat. Malta	1946-05-04	11:15:00
1546	Near Shensi. China	1946-08-04	\N
1548	Liberiad. Nicaragua	1946-04-22	\N
1550	Pindi-Khut .India	1946-04-30	\N
1552	Munson. Florida	1946-10-05	\N
1554	Richmond. Virginia	1946-05-16	01:00:00
1556	Oslo. Norway	1946-05-22	\N
1558	Off Amalfi. Italy	1946-01-06	07:40:00
1560	Near Abeokuta. Nigeria	1946-09-06	13:15:00
1562	Taboga Island. Panama	1946-09-06	10:30:00
1564	Off Malaya	1946-06-29	\N
1566	Pau. France	1946-06-29	\N
1568	Holyoke. Massachusetts	1946-09-07	20:10:00
1570	Reading. Pennsylvania	1946-11-07	\N
1572	Tsinan. China	1946-07-13	\N
1574	Cuenca. Ecuador	1946-07-17	\N
1576	Goodland. Kansas	1946-07-18	21:10:00
1578	Off the Panama coast	1946-07-20	12:15:00
1580	Bassein. Burma	1946-07-25	\N
1582	Oslo. Norway	1946-07-08	\N
1584	Lakehurst. New Jersey	1946-09-08	\N
1586	Malta-Luqa. Malta	1946-08-14	\N
1588	Rouen. France	1946-08-20	\N
1590	Moline. Illinois	1946-08-21	04:19:00
1592	Cairo. Egypt	1946-08-24	\N
1594	Holtug. Denmark	1946-03-09	\N
1596	Le Bourget. France	1946-04-09	09:15:00
1598	Elko. Nevada	1946-05-09	02:00:00
1600	Bathurst. Gambia	1946-06-09	\N
1602	Nome. Alaska	1946-07-09	\N
1604	Estevan. Saskatchewan. Canada	1946-09-15	\N
1606	Brussels. Belgium	1946-09-17	01:17:00
1608	Puesto Araujo. Colombia	1947-01-22	\N
1610	Near Gander. Newfoundland	1946-09-18	07:42:00
1612	Near Tripoli. Libya	1946-09-19	\N
1614	Lochi Mountain. China	1946-09-20	\N
1616	Near Hong Kong International Airport	1946-09-25	09:31:00
1618	Rio Doce. Brazil	1946-09-27	\N
1620	Stephenville. Newfoundland	1946-03-10	03:30:00
1622	Off Penang. Malaya	1946-06-10	07:30:00
1624	Apeldoorn. The Netherlands	1946-07-10	11:20:00
1626	Cheyenne. Wyoming	1946-08-10	04:33:00
1628	Near Sefrou. Morocco	1946-10-10	\N
1630	Laramie. Wyoming	1946-10-17	00:57:00
1632	Near Chitral. India	1946-10-17	\N
1634	Gebel Kalamoun. Egypt	1946-10-23	\N
1636	St Leger-la-Montagne. France	1946-01-11	\N
1638	Cleveland. Ohio	1946-11-11	03:30:00
1640	Lebec. California	1946-11-13	03:41:00
1642	Near Cofre de Perote. Mexico	1946-11-13	08:18:00
1644	Amsterdam. Netherlands	1946-11-14	\N
1646	North PacifiOcean	1946-11-16	23:30:00
1648	San Jose. Costa Rica	1946-11-26	10:30:00
1650	El Palomar. Argentina	1946-11-30	\N
1652	Meshed. Iran	1946-04-12	\N
1654	Toledo. Washington	1946-10-12	\N
1656	Near Osaka. Japan	1946-10-12	13:10:00
1658	Mt. Banahaur. Philippines	1946-12-14	\N
1660	Caribbean. AtlantiOcean	1946-12-17	\N
1662	Near Rio de Janeiro. Brazil	1946-12-23	\N
1664	Near San Diego. California	1946-12-24	19:19:00
1666	Lunghwa. Shanghai. China	1946-12-25	\N
1668	Michigan City. Indiana	1946-12-28	09:19:00
1670	Walshville. Illinois	1946-12-28	\N
1672	Near Shannon. Ireland	1946-12-28	02:09:00
1674	Sao Paulo. Brazil	1947-03-01	\N
1676	Carmel. New Jersey	1947-05-01	20:00:00
1678	Tsingtao. China	1947-05-01	\N
1680	Off Laoag. China	1947-11-01	\N
1682	Near Lympne. England	1947-11-01	\N
1684	Near Galax. Virginia	1947-12-01	01:38:00
1686	Near Puebla. Mexico	1947-01-14	09:00:00
1688	Chongqing. China	1947-01-25	\N
1690	Croydon. Surrey. England	1947-01-25	\N
1692	Hong Kong	1947-01-25	\N
1694	Copenhagen. Denmark	1947-01-26	15:30:00
1696	Near Hankow. China	1947-01-28	\N
1698	Near Lisbon. Portugal	1947-01-02	\N
1700	Harrington. Delaware	1947-05-02	\N
1702	Pedro Bernardo. Spain	1947-06-02	\N
1704	Denver. Colorado	1947-02-14	04:20:00
1706	Off Terracina. Italy	1947-02-15	09:30:00
1708	Near Bogota. Colombia	1947-02-15	12:18:00
1710	Chungking. China	1947-02-21	16:00:00
1712	China Sea. PacifiOcean	1947-02-26	\N
1714	Cordillera. Colombia	1947-08-03	\N
1716	L´isola di Ischia. Italy	1947-08-03	\N
1718	Mt. Moucherolles. France	1947-03-14	14:00:00
1720	Near Medellin. Colombia	1947-03-17	08:05:00
1722	Negombo. Sri Lanka	1947-03-18	\N
1724	Near Caracas. Venezuela	1947-08-04	\N
1726	Off Dakar. Senegal	1947-04-13	\N
1728	Columbus. Georgia	1947-04-22	10:40:00
1730	Near Cuzco. Peru	1949-02-24	08:00:00
1732	Near Vancouver. British Columbia. Canada	1947-04-28	23:13:00
1734	Delaware Bay. New Jersey	1947-11-05	09:39:00
1736	Hjedinsfjordur. Iceland	1947-05-29	\N
1738	Atsugi. Japan	1947-05-29	22:45:00
1740	La Guardia Airport. Queens. New York	1947-05-29	19:05:00
1742	Port Deposit. Maryland	1947-05-30	17:41:00
1744	Near Gemenos. France	1947-04-06	23:00:00
1746	Natal. Argentina	1947-11-06	\N
1748	Leesburg. Virginia	1947-06-13	18:16:00
1750	Al Mayadin. Syria	1947-06-19	23:40:00
1752	Near Eaeka. French Cameroons	1947-01-07	\N
1754	Melbourne. Florida	1947-07-13	04:30:00
1756	Vichy .France	1947-07-15	\N
1758	Az-Zubair. Iran	1947-07-16	\N
1760	Moron. Argentina	1947-07-25	\N
1762	Near Yumen. China	1947-07-31	\N
1764	Andes. Argentina	1947-02-08	17:40:00
1766	North PacifiOcean	1947-06-08	\N
1768	New York. New York	1947-08-08	18:49:00
1770	Malmo. Sweden	1947-09-08	\N
1772	Bucharest. Romania	1947-08-13	\N
1774	Hanksville. Utah	1947-08-21	06:11:00
1776	Bahrain. Persian Gulf	1947-08-23	\N
1778	Harsiad. Norway	1947-08-28	\N
1780	Near El Paso. Texas	1947-08-10	07:55:00
1782	Sylva. North Carolina	1947-10-16	\N
1784	Off Cartegena. Spain	1947-10-16	\N
1786	Bryce Canyon. Utah	1947-10-24	12:29:00
1788	Annette Island. Alaska	1947-10-26	13:45:00
1790	Near Mt. Hymettus. Greece	1947-10-26	17:20:00
1792	Srinagar. India	1947-10-31	\N
1794	Off Barrio Rizal. Philippines	1947-02-11	\N
1796	Gallup. New Mexico	1947-11-11	\N
1798	Near Bouchox. France	1947-11-13	\N
1800	Ravello. Italy	1947-11-18	\N
1802	Newcastle. Delaware	1947-11-18	13:00:00
1804	Phouznicie. Romania	1947-11-21	\N
1806	Yakutat. Alaska	1947-11-27	\N
1808	Montenegrin Mountains. Yugoslavia	1947-11-27	04:20:00
1810		1947-11-27	\N
1812	Near Trappa. Italy	1947-11-28	14:10:00
1814	Seattle. Washington	1947-11-30	14:25:00
1816	Near Goose Bay. Labrador	1947-10-12	00:20:00
1818	Near Memphis. Tennessee	1947-11-12	18:10:00
1820	Kunming. China	1947-12-23	\N
1822	Korangi Creek. India	1947-12-27	\N
1824	Leon. Mexico	1947-12-28	12:00:00
1826	Paris. France	1948-06-01	\N
1828	Ruislip. England	1948-06-01	\N
1830	Near Savannah. Georgia	1948-07-01	07:45:00
1832	Near Palestro. Algeria	1948-08-01	\N
1834	Ciudad Havajillo. Dominican Republic	1948-11-01	\N
1836	Oxon Hill. Maryland	1948-01-13	04:36:00
1838	Near Mukden. China	1948-01-20	\N
1840	Salalah. Oman	1949-09-08	\N
1842	Diablo Mts.. California	1948-01-28	10:50:00
1844	AtlantiOcean. NE of Bermuda	1948-01-30	03:00:00
1846	Off Jacksonville. Florida	1948-07-02	13:27:00
1848	Ubrichstein. Germany	1948-12-02	\N
1850	Collesalvetti.  Italy	1948-02-20	\N
1852	Off St. Marcouf. France	1948-02-21	\N
1854	Davao. Philippines	1948-02-23	\N
1856	Columbus. Ohio	1948-02-25	06:00:00
1858	Near Belem. Brazil	1948-02-27	\N
1860	Off Perpignan. France	1948-02-03	\N
1862	Heathrow Airport. London. England	1948-02-03	21:14:00
1864	Near Skalafell. Iceland	1948-07-03	\N
1866	Chicago. Illinois	1948-10-03	22:58:00
1868	Mt. Sanford. Alaska	1948-12-03	21:14:00
1870	Sierra Cristais. Brazil	1948-03-13	\N
1872	Villa Pinzon. Colombia	1948-03-15	\N
1874	Monte Cardo. Corsica. France	1948-03-27	\N
1876	Near Berlin. Germany	1948-05-04	\N
1878	Shannon. Ireland	1948-04-15	02:35:00
1880	Near Bogota. Colombia	1949-08-13	\N
1882	Near Magazini. Belgian Congo (Zaire)	1948-05-13	11:00:00
1884	Mount Coron. France	1948-05-13	\N
1886	Vrede. South Africa	1948-05-15	\N
1888	Columbus. Ohio	1948-05-16	20:42:00
1890	Near Bovingdon. England	1948-05-20	\N
1892	Albacete. Spain	1948-05-25	\N
1894	Ile of Man	1948-10-06	\N
1896	Mount Carmel. Pennsylvania	1948-06-17	12:41:00
1898	Maiquetia. Venezuela	1948-06-26	\N
1900	Keerbergen. Belgium	1948-01-07	\N
1902	Northolt. Middlesex. England	1948-04-07	\N
1904	Djiring. French Indo-China	1948-07-07	\N
1906	Belem. Brazil	1948-07-14	\N
1908	PacifiOcean between Hong Kong and Macao	1948-07-16	\N
1910	Cap-des-Rosiers. Quebec. Canada	1948-07-24	\N
1912	Buenos Aires. Argentina	1948-07-29	\N
1914	Tsingtao. China	1948-07-29	\N
1916	1.200 miles off Dakar. AtlantiOcean	1948-01-08	\N
1918	Karachi. Pakistan	1948-01-08	\N
1920	Port Underwood. New Zealand	1948-09-08	\N
1922	La Guaira. Venezuela	1948-08-20	\N
1924	Near Pasto. Colombia	1950-05-24	\N
1926	Near Winona. Minnesota	1948-08-29	17:05:00
1928	Near Elizabethville. Belgium Congo	1948-08-31	\N
1930	Near Quirindi. Australia	1948-02-09	\N
1932	Near Trondheim. Norway	1948-02-10	\N
1934	Prestwick Airport. Scotland	1948-10-20	23:32:00
1936	Mt. Ruapehu. New Zealand	1948-10-23	\N
1938	Near Edmonton. Alberta. Canada	1948-10-27	16:50:00
1940	Near Glossop. England	1948-03-11	10:50:00
1942	Cape Spencer. Alaska	1948-04-11	05:44:00
1944	Mt. Macedon. Australia	1948-08-11	07:40:00
1946	Liverpool. England	1948-11-11	\N
1948	Vehari. Pakistan	1948-11-26	\N
1950	Kiangwan. China	1948-05-12	\N
1952	Milan. Italy	1948-06-12	\N
1954	Taipei. Taiwan	1948-12-12	\N
1956	Near Bogata. Colombia	1948-12-15	\N
1958	Near Pilos. Greece	1948-12-21	\N
1960	Basalt Island. Hong Kong	1948-12-21	\N
1962	Near Madrid. Spain	1948-12-23	\N
1964	Off San Juan. Puerto Rico	1948-12-28	04:13:00
1966	Mt. Argentari. Italy	1948-12-31	17:52:00
1968	Seattle. Washington	1949-02-01	22:05:00
1970	Caravelas Bay. Brazil	1949-05-01	\N
1972	Brandywine. Maryland	1949-06-01	07:20:00
1974	Near Pelotas. Brazil	1949-11-01	\N
1976	Ras-el-Tin. Egypt	1949-01-15	\N
1978	Balihal Pass. India	1949-01-16	\N
1980	AtlantiOcean. off Bermuda	1949-01-17	13:40:00
1982	Near Succoth Glen. Lochgoilhead. Scotland	1949-01-17	09:50:00
1984	Homer. Alaska	1949-01-20	20:05:00
1986	Port Washington. New York	1949-01-30	16:22:00
1988	Trinity Bay. Newfoundland	1949-02-02	\N
1990	Castel Benito. Libya	1949-04-02	\N
1992	Buenaventura Bay. Colombia	1949-05-02	\N
1994	Off Copenhagen. Denmark	1949-08-02	19:56:00
1996	Near Huanuco. Peru	1949-10-02	\N
1998	Near Coventry. Warks. England	1949-02-19	\N
2000	Braemar Resevoir. Hong Kong	1949-02-24	\N
2002	Near Lodz. Poland	1951-11-15	\N
2004	Coolangatta. Australia	1949-10-03	09:50:00
2006	Berlin. Germany	1949-03-15	\N
2008	Near Waikanae. New Zealand	1949-03-18	09:40:00
2010	Superga. Italy	1949-04-05	17:04:00
2012	Sibuyan Sea. off the Philippine island of Elalat	1949-07-05	16:00:00
2014	Malahasa Attica. Greece	1949-06-06	\N
2016	Near Florianpolis. Brazil	1949-07-06	14:00:00
2018	San Juan. Puerto Rico	1949-07-06	00:25:00
2020	Off Bari. Italy	1949-06-23	\N
2022	Near Guildford. Australia	1949-02-07	\N
2024	Near Bombay. India	1949-12-07	03:50:00
2026	Chatsworth. California	1949-12-07	07:43:00
2028	Seattle. Washington	1949-07-19	21:01:00
2030	Chesterfield. New Jersey	1949-07-30	10:45:00
2032	Jaquirana. Brazil	1949-02-08	11:30:00
2034	Sao Francisco Bay. Brazil	1949-03-08	\N
2036	Salasaca. Ecuador	1949-06-08	\N
2038	Off Lurga Point. Ireland	1949-08-15	\N
2040	Oldham. England	1949-08-19	12:00:00
2042	Near Bigstone Lake. Manitoba	1949-08-21	23:30:00
2044	Leopoldville. Zaire	1949-08-27	\N
2046	Sault-aux-Cochons. PQ. Canada	1949-09-09	10:45:00
2048	Mt. Popocatepetl. Mexico	1949-09-26	\N
2050	Near Castilla. Argentina	1949-09-27	\N
2052	Cheyenne. Wyoming	1949-09-10	\N
2054	San Miguel Island. Azores	1949-10-28	02:50:00
2056	Arlington. Virginia	1949-01-11	11:45:00
2058	Akron. Ohio	1949-04-11	21:34:00
2060	Near Oslo. Norway	1949-11-20	16:56:00
2062	Chaleyssin. France	1949-11-28	16:45:00
2064	Dallas. Texas	1949-11-29	05:49:00
2066	Taquaracucu. Brazil	1949-01-12	\N
2068	Vallejo. California	1949-07-12	17:15:00
2070	Near Lanchow. China	1949-09-12	\N
2072	Near Hoikow. China	1949-10-12	\N
2074	Jungshahi. Pakistan	1949-12-12	21:51:00
2076	Washington. D.C.	1949-12-12	20:45:00
2078	Orizaba. Mexico	1949-12-16	\N
2080	Aulnay-sous-Bois. France	1949-12-18	20:30:00
2082	Comilla. Pakistan	1949-12-30	\N
2084	Albacete. Spain	1950-01-18	\N
2086	Near Vacas. Bolivia	1950-01-20	12:00:00
2088	Near Tamatave. Madagascar	1950-01-24	\N
2090	Iloilo.Philippines	1950-01-24	\N
2092	Near Snag. Yukon Territory	1950-01-26	\N
2094	North Sea	1950-02-02	\N
2096	Near Prague. Czechoslovakia	1950-02-27	\N
2098	Minneapolis. Minnesota	1950-07-03	20:59:00
2100	Saigon. Vietnam	1950-10-03	\N
2102	Llandow Airport. Cardiff. Wales	1950-12-03	14:50:00
2104	Ankara. Turkey	1950-03-25	\N
2106	Off Cap-Ferret. France	1950-03-28	\N
2108	Hatiara. India	1950-05-04	\N
2110	Santa Ana. Colombia	1950-04-15	\N
2112	Near Atsugi. Japan	1950-04-21	23:25:00
2114	Chimborcza. Ecuador	1950-02-05	\N
2116	Lagens Air Force Base. Azores	1950-05-17	20:59:00
2118	Myrtle Beach. South Carolina	1950-05-23	10:20:00
2120	Teterboro. New Jersey	1950-05-27	17:30:00
2122	Near Iheus. Brazil	1950-05-30	\N
2124	AtlantiOcean off Florida	1950-05-06	22:03:00
2126	Near Fonseca. Colombia	1950-09-06	19:00:00
2128	Off Bahrain	1950-12-06	21:52:00
2130	Off Bahrain	1950-06-14	21:55:00
2132	Lake Michigan. 18 NNW of Benton Harbor. Michigan	1950-06-23	23:25:00
2134	York. Australia	1950-06-26	23:00:00
2136	Busan. South Korea	1950-07-07	\N
2138	Casablanca. Morocco	1950-09-07	\N
2140	Near Patharkot. India	1950-07-17	\N
2142	Near Bocoio. Angola	1950-07-18	\N
2144	Off O-shima Island. Japan	1950-07-27	04:30:00
2146	Porte Alegre. Brazil	1950-07-28	\N
2148	Tunbukta. Algeria	1950-07-29	\N
2150	Near Fairfield. California	1950-05-08	22:00:00
2152	Kampong Jenera. Malaysia	1950-08-25	\N
2154	Near Wadi Natrun. Egypt	1950-08-31	00:03:00
2156	Utica. New York	1950-04-09	14:10:00
2158	Tehran. Iran	1950-09-14	\N
2160	Kwajalein. Marshall Islands	1950-09-20	05:20:00
2162	Near Zagreb. Yugoslavia	1950-09-21	\N
2164	Karlstad. Sweden	1950-09-23	\N
2166	Near Kyushu Island. Japan	1950-09-26	01:00:00
2168	Casablanca. Morocco	1950-10-13	\N
2170	Almelund. Minnisota	1950-10-13	\N
2172	London. England	1950-10-17	\N
2174	London Heathrow. England	1950-10-31	19:54:00
2176	Mont Blanc. France	1950-03-11	09:43:00
2178	Butte. Montana	1950-06-11	08:15:00
2180	Mt.  Tete de L´Obiou. France	1950-11-13	18:00:00
2182	Surabaya. Indonesia	1950-11-17	\N
2184	Near Moran Junction. Wyoming	1950-11-21	\N
2186	Cuzco. Peru	1950-11-23	\N
2188	Khitka. Bhutan	1950-11-25	\N
2190	Near Chamaran. Iran	1950-01-12	\N
2192	Ruig Piner. France	1950-08-12	\N
2194	Bangui. French Equatorial Africa	1950-08-12	\N
2196	Katagiri. India	1950-12-13	\N
2198	Londrina. Brazil	1950-12-13	\N
2200	Valera. Venezuela	1950-12-15	13:30:00
2202	Near Baguio. Philippines	1950-12-19	07:30:00
2204	Penticton. British Columbia. Canada	1950-12-22	13:53:00
2206	Santiago del Estado. Argentina	1950-12-30	\N
2208	Ixopo. South Africa	1951-12-01	\N
2210	Mt. Bukit. Besar.Thailand	1951-01-13	\N
2212	Philadelphia. Pennsylvania	1951-01-14	14:13:00
2214	Near Reardon. Washington	1951-01-16	12:14:00
2216	Near Civitavecchia. Italy	1951-01-17	14:36:00
2218	Near An tung. Taiwan	1951-01-28	08:40:00
2220	Off Hafnarfjorour. Iceland	1951-01-31	16:45:00
2222	Off Terceira. Portugal	1951-01-02	\N
2224	Near Mt. Cameroun. Buea. Nigeria	1951-03-02	\N
2226	Yali. Colombia	1951-02-14	\N
2228	Sioux City. Iowa	1951-02-03	09:12:00
2230	Mt. Butler. Hong Kong	1951-11-03	\N
2232	Corozal. Colombia	1951-03-21	\N
2234	Over the North Atlantic	1951-03-22	23:50:00
2236	Pakistan	1966-07-15	\N
2238	Off Florianopolis. Brazil	1951-03-22	\N
2240	Rio Grande. Argentina	1951-03-26	\N
2242	Bogota. Colombia	1951-02-04	\N
2244	Refugio Pass. near Santa Barbara. California	1951-06-04	20:30:00
2246	Near Charleston. West Virginia	1951-08-04	11:35:00
2248	Cape d´Arguilar. Hong Kong	1951-09-04	\N
2250	Key West. Florida	1951-04-25	11:49:00
2252	Fort Wayne. Indiana	1951-04-28	19:32:00
2254	Near Albuquerque. New Mexico	1951-06-05	12:30:00
2256	Bordeaux. France	1951-08-05	\N
2258	Rancharia.  Brazil	1951-05-18	\N
2260	New Boston. Texas	1951-03-06	\N
2262	Rio de Janeiro. Brazil	1951-06-06	\N
2264	Medellin. Colombia	1951-06-15	\N
2266	Near Sanoyea. Liberia	1951-06-22	03:25:00
2268	Near Rijeka. Yugoslavia	1951-06-29	\N
2270	Rocky Mountain Nat. Park. near Ft. Collins. Colorado	1951-06-30	02:00:00
2272	Near Tezpur. India	1951-12-07	\N
2274	Aracaju. Brazil	1951-12-07	\N
2276	Puy-de-DÃ´me. France	1951-11-13	\N
2278	Lyneham AFB. England	1951-12-07	22:45:00
2280	Off Lae. New Guinea	1951-07-16	\N
2282	Thudamot. China	1951-07-20	\N
2284	Near Sitka. Alaska	1951-07-21	\N
2286	Gao. Mali	1951-07-24	\N
2288	Cochabamba. Bolivia	1951-07-29	\N
2290	Barilla Bay. Australia	1951-08-08	\N
2292	Moisville. France	1951-11-08	09:25:00
2294	Ubatuba. Brazil	1951-08-17	\N
2296	Decoto. California	1951-08-24	04:28:00
2298	Sao Paulo. Brazil	1951-08-09	\N
2300	Off Redwood City. California	1951-12-09	10:46:00
2302	Off Ialas Baeares. Spain	1951-12-09	12:30:00
2304	Bangalore. India	1951-09-15	\N
2306	La Paz. Bolivia	1951-09-29	\N
2308	Cerro Blanco. Mexico	1951-08-10	\N
2310	East Griqualand. South Africa	1951-10-15	\N
2312	North Atlantic	1951-10-15	\N
2314	Mt. Benson. BC. Canada	1951-10-17	18:55:00
2316	Skopje. Yugoslavia	1951-10-22	\N
2318	Near Flores. Guatemala	1951-10-27	19:00:00
2320	Near Tucumcari. Arazona	1951-05-11	09:29:00
2322	Cairo. Egypt	1951-11-19	\N
2324	Calcutta. India	1951-11-21	\N
2326	Zurich. Switzerland	1951-11-24	\N
2328	San Luis Acatlan. Mexico	1951-11-27	\N
2330	Denver. Colorado	1951-04-12	07:25:00
2332	Yaramunda. Papua New Guinea	1951-12-13	\N
2334	Elizabeth. New Jersey	1951-12-16	15:09:00
2336	Tehran. Iran	1951-12-23	\N
2338	Near Little Valley. New York	1951-12-29	22:25:00
2340	Near Fairbanks. Alaska	1951-12-30	22:07:00
2342	Near Phoenix. Arizona	1951-12-30	15:40:00
2344	Calcutta. India	1951-12-31	\N
2346	Andapa. Madagascar	1952-02-01	\N
2348	Com Edno. Wales	1952-10-01	19:15:00
2350	Off Sandspit. BC. Canada	1952-01-19	01:38:00
2352	Elizabeth. New Jersey	1952-01-22	15:43:00
2354	Kikwit. Belgian Congo	1952-04-02	\N
2356	Kaneko. Japan	1952-07-02	\N
2358	Elizabeth. New Jersey	1952-11-02	00:20:00
2360	Issaquah. Washington	1953-07-01	20:55:00
2362	Near Burgio. Italy	1952-02-16	17:34:00
2364	Near Yaounde. Cameroon	1952-02-19	\N
2366	Nagpur. India	1952-02-19	02:23:00
2368	Uberlandia.  Brazil	1952-02-28	\N
2370	Nice. France	1952-03-03	08:10:00
2372	Cebu. Philippines	1952-10-03	\N
2374	Near Sequin. Texas	1952-12-03	\N
2376	Near Gaspe. Quebec. Canada	1952-03-22	\N
2378	Frankfurt. Germany	1952-03-22	10:45:00
2380	Gao. French West Africa	1952-03-24	03:10:00
2382	Moscow. Russia	1952-03-26	\N
2384	Near San Felipe. Venezuela	1952-03-29	\N
2386	Baguio. Philippines	1952-03-30	\N
2388	New York. New York	1952-05-04	08:25:00
2390	Mihara Volcano. Japan	1952-09-04	08:07:00
2392	Agartala. India	1952-10-04	\N
2394	North of San Juan. Puerto Rico	1952-11-04	12:20:00
2396	Near Whittier. California	1952-04-18	03:34:00
2398	Aviateca	1953-12-15	\N
2400	Near Carolina. Brazil	1952-04-29	04:40:00
2402	Delhi.  India	1952-04-30	\N
2404	Near Skien. Norway	1952-05-05	\N
2406	Ipoh. Malaysia	1952-09-05	\N
2408	Sao Paulo. Brazil	1952-05-13	\N
2410	Near Manaus. Brazil	1952-05-24	\N
2412	Near Atar. Mauritania	1952-05-26	08:45:00
2414	BaltiSea	1952-06-13	11:29:00
2416	Lakenheath AFB. England	1952-06-24	\N
2418	Off Northumberland. North Sea	1952-06-25	\N
2420	Off Rio de Janeiro. Brazil	1952-07-27	11:46:00
2422	Palmeira de Goias. Brazil	1952-12-08	\N
2424	Off Trapani. Italy	1952-08-21	01:00:00
2426	Near Khewra. West Pakistan	1952-08-26	07:00:00
2428	Kosti. Sudan	1952-08-29	21:05:00
2430	Near Farnsborough. England	1952-06-09	15:40:00
2432	San Blas. Panama	1952-10-09	\N
2434	Guam. Mariana Islands	1953-12-17	06:50:00
2436	Wadi Halfa. Sudan	1952-09-15	\N
2438	Off Tarbat Ness. Scotland	1952-08-10	\N
2440	San Fransisco do Paula. Brazil	1952-10-14	\N
2442	Off Kangnung. South Korea	1952-10-16	\N
2444	Near Flagstaff. Arizona	1952-10-29	08:30:00
2446	Lake Chad. Chad	1952-06-11	\N
2448	Near Summit. Alaska	1952-07-11	03:00:00
2450	Near Seoul. South Korea	1952-11-14	14:45:00
2452	Near Anchorage. Alaska	1952-11-15	\N
2454	Shepard. Montana	1952-11-17	\N
2456	Mount Gannett. Alaska	1952-11-22	20:15:00
2458	Near Tacoma. Washington	1952-11-28	00:50:00
2460	Near Sofia. Bugaria	1952-06-12	\N
2462	Off Bermuda-Kindley Field. Bermuda	1952-06-12	04:40:00
2464	Moses Lake. Washington	1952-12-20	06:30:00
2466	Off Miami. Florida	1952-12-21	\N
2468	Off Caracas. Venezuela	1952-12-25	\N
2470	Tehran. Iran	1952-12-25	\N
2472	Chinmen Island. Taiwan	1952-12-30	\N
2474	Belfast. Northern Ireland	1953-05-01	20:53:00
2476	Pin-la-Garenne. France	1970-02-13	\N
2478	Fish Haven. Idaho	1953-07-01	04:12:00
2480	25 nm off Agrigento. Italy	1953-01-15	04:48:00
2482	Sinnai. Sardinia. Italy	1953-01-26	\N
2484	Off Newfoundland. Canada	1953-02-02	05:30:00
2486	Muong Sai. Laos	1953-03-02	\N
2488	Eysines. France	1953-07-02	\N
2490	Cairo. Egypt	1953-09-02	19:00:00
2492	Off Mobile. Alabama	1953-02-14	17:10:00
2494	Karachi. Pakistan	1953-03-03	03:35:00
2496	Windsor Locks. Connecticut	1953-04-03	\N
2498	Kalasahar. India	1953-03-14	\N
2500	Off Da Nang. Vietnam	1953-03-17	\N
2502	Random Island. Newfoundland	1953-03-18	04:10:00
2504	Alvarado. California	1953-03-20	18:38:00
2506	Itapebi. Brazil	1953-03-27	\N
2508	Mtara. Tanganyika	1953-03-29	\N
2510	Off Kingston. Jamaica	1953-10-04	\N
2512	Miandivazo. Madagascar	1953-10-04	\N
2514	Near Guwahati. India	1953-04-14	\N
2516	Selleck. Washington	1953-04-14	02:22:00
2518	NW of Hanoi. Vietnam	1953-04-16	\N
2520	San Francisco Bay. California	1953-04-20	23:08:00
2522	Near Jalalogori. West Bengal. India	1953-02-05	16:35:00
2524	Off Hartland Point. England	1953-07-05	\N
2526	New Delhi. India	1953-09-05	01:28:00
2528	Prince Rupert. BC. Canada	1953-11-05	\N
2530	Near Marshall. Texas	1953-05-17	14:15:00
2532	Amsterdam. Netherlands	1953-05-25	15:30:00
2534	Near Copiapo. Chile	1953-06-15	\N
2536	San Ramon Mtns.. Costa Rica	1953-06-15	\N
2538	Phou-Lassy. French Indo-China	1953-06-16	\N
2540	Sao Paulo. Brazil	1953-06-17	\N
2542	Tachikawa AFB. Tokyo. Japan	1953-06-18	16:34:00
2544	PacifiOcean. 325 miles east of Wake Island	1953-12-07	08:41:00
2546	Near Milton. Florida	1953-07-17	23:15:00
2548	Near Kanggye. North Korea	1953-07-27	12:30:00
2550	Yellowknife. Northwest Territory. Canada	1955-09-29	\N
2552	Off Fethiye Point. Turkey	1953-03-08	02:28:00
2554	Sharjah. United Arab Emirates	1953-03-08	22:37:00
2556	Off Irish coast	1953-05-08	\N
2558	Near San Diego. California	1953-08-18	\N
2560	Near Barcelonnette. France	1953-01-09	\N
2562	Vail. Washington	1953-01-09	18:42:00
2564	San Andres. Honduras	1953-08-09	13:16:00
2566	Chablekal. Mexico	1953-09-14	\N
2568	Albany. New York	1953-09-16	08:34:00
2570	Ankara. Turkey	1953-09-25	\N
2572	Louisville. Kentucky	1953-09-28	16:18:00
2574	Frankfurt. Germany	1953-10-14	\N
2576	Lai Chau. Vietnam	1953-10-17	\N
2578	Near Monterrey. Mexico	1953-10-19	13:00:00
2580	New York City. New York	1953-10-19	00:56:00
2582	Near Half Moon Bay. California	1953-10-29	08:44:00
2584	Potosi. Bolivia	1953-03-11	\N
2586	Off Argyll. England	1953-11-11	17:30:00
2588	Mt. Somosierra. Spain	1953-04-12	\N
2590	Nagpur. India	1953-12-12	\N
2592	Zurich. Switzerland	1953-12-19	\N
2594	Dah-el-Kadeeb. Syria	1953-12-21	\N
2596	Herat. Afghanstan	1954-02-01	\N
2598	Lapseki. Turkey	1954-05-01	\N
2600	Near Aldbury. England	1954-06-01	17:20:00
2602	Off Elba. Italy	1954-10-01	09:50:00
2604	Manizales. Colombia	1954-11-01	\N
2606	Long Beach. California	1954-01-13	\N
2608	Rome. Italy	1954-01-14	\N
2610	Prague. Czechoslovakia	1954-01-14	\N
2612	Kansas City. Missouri	1954-01-20	\N
2614	Off Hokkaido. Japan	1954-01-02	13:50:00
2616	Susitna Valley. Alaska	1954-05-02	\N
2618	Off Gozo. Malta	1954-12-02	\N
2620	New Delhi. India	1954-02-25	\N
2622	Wright. Wyoming	1954-02-26	10:32:00
2624	Near St. Etienne de Tinee. France	1954-04-03	14:30:00
2626	Kallang Airport. Singapore	1954-03-13	\N
2628	Off Mackay. Australia	1954-03-14	\N
2630	Near Lothian. Maryland	1954-03-19	22:30:00
2632	Monterrey. Mexico	1954-03-26	\N
2634	Adana. Turkey	1954-03-04	\N
2636	Hanoi. Vietnam	1954-04-04	\N
2638	Off Stromboli. Italy	1954-08-04	19:10:00
2640	Moose Jaw. SK. Canada	1954-08-04	10:03:00
2642	Santiago. Chile	1954-04-13	\N
2644	Xieng Kouang. Laos	1954-04-13	\N
2646	Sierra del Vilgo. Argentina	1954-04-23	21:25:00
2648	Near Calcutta. India	1954-04-30	09:18:00
2650	Paraparaumu. New Zealand	1954-05-22	09:23:00
2652	Cipo Mountain. Brazil	1954-05-31	\N
2654	Near Maribor. Slovenia	1954-03-06	\N
2656	Sao Paulo. Brazil	1954-04-06	\N
2658	Tourane. Vietnam	1954-08-06	\N
2660	Off Folkestone. England	1954-06-19	\N
2662	Near Salvador. Brazil	1954-02-07	12:00:00
2664	Off Hainan Island. China	1954-07-23	09:45:00
2666	Near McGrath. Alaska	1954-08-08	15:40:00
2668	Terceira Island. Azores. Portugal	1954-09-08	00:08:00
2670	Vietnam	1954-12-08	\N
2672	Near Pakse. Laos	1954-08-16	\N
2674	Near Mason City. Iowa	1954-08-22	17:03:00
2676	Near Dutch Coast. North Sea	1954-08-23	11:35:00
2678	Chatenoy. France	1958-05-16	\N
2680	Near Rapid City. South Dekota	1954-08-27	22:10:00
2682	Foynes. Ireland	1954-05-09	02:30:00
2684	Off Rio de Janeiro. Brazil	1954-12-09	20:08:00
2686	Cairo. Egypt	1954-09-15	\N
2688	Nar Limone Piemonte. Italy	1954-10-24	17:50:00
2690	Off Ocean City. Maryland	1954-10-30	\N
2692	Off the coast of Maryland	1954-10-30	23:00:00
2694	Mangalore. Australia	1954-10-31	15:10:00
2696	Jirishanga.Cerro de Pasco. Peru	1954-11-16	\N
2698	Berlin. New Hampshire	1954-11-30	11:15:00
2700	Near Luang Pragang. Laos	1954-04-12	\N
2702	Bratislava. Slovakia	1954-12-12	\N
2704	Near Bolivar. Venezuela	1954-12-18	\N
2706	New York. New York	1954-12-18	14:00:00
2708	Pittsburgh. Pennsylvania	1954-12-22	23:00:00
2710	Prestwick. Ayrshire. Scotland	1954-12-25	\N
2712	Near Moscow. Russia	1954-12-29	\N
2714	Irkutsk. Russia	1954-12-31	\N
2716	Off Skellings. Ireland	1955-11-01	21:00:00
2718	Greater Cincinnati Airport. Covington. Kentucky	1955-12-01	09:05:00
2720	Des Moines. Iowa	1955-01-19	16:25:00
2722	Lapadrera. Colombia	1955-01-31	\N
2724	Nagpur. India	1955-02-02	03:50:00
2726	Near Calabar. Nigeria	1955-05-02	10:04:00
2728	Rome. Italy	1955-02-13	18:53:00
2730	Albuquerque. New Mexico	1955-02-19	07:31:00
2732	Salisbury.  Zimbabwe	1955-02-23	09:20:00
2734	Vitoria da Conquista. Brazil	1955-06-03	\N
2736	Mascota. Mexico	1955-08-03	\N
2738	Trujillo. Colombia	1955-09-03	\N
2740	Springfield. Mississippi	1955-03-20	22:36:00
2742	Oahu. Hawaii	1955-03-22	02:00:00
2744	Off the Oregon coast	1955-03-26	11:12:00
2746	Off Pensacola. Florida	1955-02-04	\N
2748	Islip. New York	1955-04-04	15:55:00
2750	Off Great Natuna Island. Sarawak	1955-11-04	17:30:00
2752	Kupe Mountains. Cameroons	1955-04-18	\N
2754	Mt. Kilimanjaro. Kenya	1955-05-18	11:56:00
2756	Off Barcelona. Venezuela	1955-05-21	\N
2758	Edmonton. Alberta. Canada	1955-05-26	14:30:00
2760	Fort Lamy. Cameroon	1955-03-06	\N
2762	Near Asuncion. Paraguay	1955-06-16	01:15:00
2764	Leon. Mexico	1955-06-18	\N
2766	Oaxaca. Mexico	1955-07-14	\N
2768	Chicago. Illinois	1955-07-17	06:24:00
2770	Near Petrich. Bulgaria	1955-07-27	07:40:00
2772	Fort Leonard Wood. Missouri	1955-04-08	12:23:00
2774	Near Voronezh. Russia	1955-06-08	\N
2776	Near Edelweiler. West Germany	1955-11-08	14:20:00
2778	Caparao Mountain. Brazil	1955-08-26	\N
2780	Simra. Nepal	1955-08-30	\N
2782	Meikitila. Myanmar	1955-02-09	\N
2784	Burbank. California	1955-08-09	\N
2786	Sombolabo. French Equitorial Africa	1955-10-09	\N
2788	Near Thorhild. Canada	1955-09-17	\N
2790	Idris. Libya	1955-09-21	22:23:00
2792	PacifiOcean	1955-09-24	06:41:00
2794	Pico Oiriruma-Vinac. Peru	1955-02-10	\N
2796	Near Centennial. Wyoming	1955-06-10	07:26:00
2798	Near Wien. Austria	1955-10-10	16:40:00
2800	Longmont. Colorado	1955-01-11	19:03:00
2802	Seattle. Washingon	1955-11-17	23:59:00
2804	Near Las Vegas. Nevada	1955-11-17	\N
2806	Iwo Jima. Japan	1955-11-20	17:00:00
2808	Near Ballico. California	1955-11-30	22:00:00
2810	Belem. Brazil	1955-01-12	02:00:00
2812	Hollywood. South Carolina	1955-12-17	20:17:00
2814	Sao Paulo. Brazil	1955-12-19	\N
2816	Jacksonville. Florida	1955-12-21	03:43:00
2818	Frederick Henry Bay.  Australia	1956-12-01	\N
2820	Oreway. Canada	1956-01-17	00:52:00
2822	Torysa. Czechoslovakia	1956-01-18	\N
2824	Lyon. France	1956-01-28	\N
2826	Frobisher Bay. Canada	1956-02-13	\N
2828	Near Fort Chimo. Quebec. Canada	1956-02-14	\N
2830	Near Niles. California	1956-02-17	13:45:00
2832	Near Zurrieg. Malta	1956-02-18	13:23:00
2834	Near Cairo. Egypt	1956-02-20	02:40:00
2836	Near Aleppo. Syria	1956-02-24	\N
2838	Jalkot. Pakistan	1956-02-25	14:55:00
2840	Tezpur. India	1956-03-21	\N
2842	Largs. England	1956-03-28	\N
2844	Indapur. India	1956-03-31	\N
2846	Korat .Thailand	1956-03-31	\N
2848	Pittsburgh. Pennsylvania	1956-01-04	19:20:00
2850	Seattle. Washington	1956-02-04	08:10:00
2852	Skilak Lake. Alaska	1956-09-04	09:51:00
2854	Parintins. Brazil	1956-04-18	\N
2856	London. England	1956-04-30	09:30:00
2858	Kathmandu. Nepal	1956-05-15	\N
2860	Orleans. Ontario. Canada	1956-05-15	22:17:00
2862	Guatemala City. Guatemala	1956-05-24	\N
2864	Asbury Park. New Jersey	1956-06-20	01:30:00
2866	Kano. Nigeria	1956-06-24	17:25:00
2868	Grand Canyon. Arizona	1956-06-30	10:32:00
2870	Near Flat Rock. Michigan	1956-09-07	13:53:00
2872	Near Brows Mills. New Jersey	1956-07-13	15:35:00
2874	Rio Cuarto. Argentina	1956-07-16	07:15:00
2876	Thazi. Burma	1956-08-08	\N
2878	Cold Bay. Alaska	1956-08-29	20:45:00
2880	Amman. Jordan	1956-09-09	\N
2882	Bartlesville. Oklahoma	1956-09-09	\N
2884	Near Nome. Alaska	1956-02-10	18:25:00
2886	Off Land´s End. England	1956-10-10	22:10:00
2888	Over the PacifiOcean	1956-10-16	06:15:00
2890	Agartala. India	1956-10-19	\N
2892	Over the Mediterranean Sea	1956-10-28	22:00:00
2894	Blackbushe. England	1956-05-11	23:52:00
2896	Hommelfjell. Norway	1956-07-11	09:50:00
2898	Puerto Somoza. Nicaragua	1956-11-15	14:53:00
2900	Porto Alegre. Brazil	1957-10-18	\N
2902	El Rucio Mountain. Colombia	1956-11-17	17:00:00
2904	Near Eglisau. Switzerland	1956-11-24	\N
2906	Paris. France	1956-11-24	23:17:00
2908	Caracas. Venezuela	1956-11-27	07:50:00
2910	Caqueta. Colombia	1956-08-12	06:47:00
2912	Near Chilliwack. British Columbia. Canada	1956-09-12	19:15:00
2914	Dannemois. France	1956-12-12	09:00:00
2916	Grub. Germany	1956-12-22	21:30:00
2918	Mt. Giner. Italy	1956-12-22	17:20:00
2920	Dhahran. Saudi Arabia	1956-12-30	15:00:00
2922	Owasso. Oklahoma	1957-06-01	00:01:00
2924	Near Buenos Aires. Argentina	1957-11-01	09:00:00
2926	Ometepe Island. Nicaragua	1957-01-23	16:50:00
2928	Paris. France	1957-01-29	19:24:00
2930	Near Sunland. California	1957-01-31	11:18:00
2932	New York. New York	1957-01-02	18:02:00
2934	Kimpo Air Base. South Korea	1957-02-22	20:00:00
2936	Blyn. Washington	1957-02-03	17:19:00
2938	Drayton. England	1957-05-03	11:00:00
2940	El Soldado. Colombia	1957-09-03	10:00:00
2942	Manchester. England	1957-03-14	13:46:00
2944	Near Cebu. Philippines	1957-03-17	01:30:00
2946	Near Sayari. Bolivia	1957-03-18	\N
2948	Over the North PacifiOcean	1957-03-22	01:00:00
2950	Bage. Brazil	1957-07-04	\N
2952	Algiers. Algeria	1957-08-04	\N
2954	Anchieta Island. Brazil	1957-10-04	15:20:00
2956	Merida. Mexico	1957-04-15	07:53:00
2958	Near El Quweira. Jordan	1957-04-17	08:30:00
2960	Jirkouk. Iraq	1957-04-20	\N
2962	Blackbushe. Hants. England	1957-01-05	21:20:00
2964	Santoshpur. India	1957-05-05	\N
2966	Barajas. Madrid. Spain	1957-09-05	19:04:00
2968	Near San Carlos de Bariloche. Argentina	1957-05-13	\N
2970	Narsarressuak. Greenland	1957-05-13	03:35:00
2972	New Delhi. India	1957-05-13	\N
2974	Near Moscow. Russia	1957-06-14	23:10:00
2976	Bodensee. Switzerland	1957-06-18	\N
2978	Near Clarksburg. Maryland	1957-06-22	07:50:00
2980	Port Hardy. BC. Canada	1957-06-23	14:20:00
2982	Bay of Bengal. Pakistan	1957-01-07	\N
2984	Near Biak. Indonesia	1957-07-16	03:36:00
2986	Daggett. California	1957-07-25	03:37:00
2988	Near Issoudun. Quebec. Canada	1957-11-08	14:15:00
2990	Copenhagen. Denmark	1957-08-15	\N
2992	Assam. India	1957-08-20	\N
2994	Near Juticalpa. Honduras	1957-08-29	\N
2996	Niquitao. Venezuela	1957-03-09	\N
2998	New Bedford. Massachusett	1957-09-15	20:46:00
3000	Montevideo.  Uruguay	1957-09-18	21:20:00
3002		1957-09-28	\N
3004	Beirut. Lebanon	1957-03-10	\N
3006	Belfast. Ireland	1957-10-23	16:51:00
3008	Madrid. Spain	1957-10-28	18:05:00
3010	Near Campeche. Mexico	1957-10-30	\N
3012	Bristol. England	1957-06-11	\N
3014	900 miles E of Honolulu. Hawaii. PacifiOcean	1957-09-11	16:27:00
3016	Near Palma de Mallorca. Spain	1957-11-15	20:08:00
3018	Chessell Down Hants. England	1957-11-15	22:54:00
3020	Christchurch. New Zealand	1957-11-21	11:33:00
3022	Bolivar. Argentina	1957-08-12	16:45:00
3024	Jeannine Lake. Quebec. Canada	1957-10-12	\N
3026	Ozamis City. Philippines	1957-11-12	13:12:00
3028	Stansted. England	1957-12-23	\N
3030	Off Oahu. Hawaii	1957-12-23	16:00:00
3032	Buenos Aires. Argentina	1957-12-31	\N
3034	Belem. Brazil	1958-01-16	\N
3036	Near La Paz. Bolivia	1958-01-20	\N
3038	Rio de Janeiro. Brazil	1958-01-02	\N
3040	New Delhi. India	1958-05-15	\N
3042	Norwalk. California	1958-01-02	19:15:00
3044	Munich. Germany	1958-06-02	14:17:00
3046	Motu Taoru. France	1958-02-19	\N
3048	Off Corvo Island. Azores	1958-02-20	05:35:00
3050	Horwich. Lancs. England	1958-02-27	09:45:00
3052	Off Ryukyu Islands. Okinawa	1958-07-03	19:45:00
3054	Menzalah Lake. Egypt	1958-07-03	\N
3056	Grants. New Mexico	1958-03-22	02:05:00
3058	Near Kathmandu. Nepal	1958-03-24	\N
3060	Miami. Florida	1958-03-25	\N
3062	Bridgeport. Texas	1958-03-27	16:15:00
3064	Quito. Ecuador	1958-02-04	\N
3066	Freeland. Michigan	1958-06-04	23:19:00
3068	Mt. Illiniza. Ecuador	1958-07-04	09:00:00
3070	Off Castell de Fels. Spain	1958-04-14	20:07:00
3072	Near Sloan. 10 miles SW of Las Vegas. Nevada	1958-04-21	08:30:00
3074	Near Casablanca. Morocco	1958-05-18	04:30:00
3076	Brunswick. Maryland	1958-05-20	11:29:00
3078	Gurgaon. India	1958-05-25	\N
3080	SW of Algiers. Algeria	1958-05-31	\N
3082	Rio de Janeiro. Brazil	1958-05-31	\N
3084	Manila. Philippines	1958-02-06	05:23:00
3086	Near Guadalajara. Mexico	1958-02-06	\N
3088	Martinsburg. West Virginia	1958-04-06	13:58:00
3090	Curitiba. Brazil	1958-06-16	\N
3092	Mohanbari. India	1958-06-25	\N
3094	Near Chicopee Falls. Massachusetts	1958-06-27	00:30:00
3096	Dhaka. Baangladesh	1958-09-07	\N
3098	Benghazi. Libya	1958-09-08	01:14:00
3100	Sakiya Saugye. Japan	1958-12-08	\N
3102	Maraso Bay. Brazil	1958-12-08	\N
3104	North AtlantiOcean. 100 miles W of Galway Bay. Ireland	1958-08-14	03:45:00
3106	Nantucket. Massachusett	1958-08-15	\N
3108	Near Chita. Russia	1958-08-15	\N
3110	Sasnashen. Russia	1958-02-09	\N
3112	London. England	1958-02-09	\N
3114	Off Guam	1958-02-09	06:10:00
3116	Campina Grande. Brazil	1958-05-09	\N
3118	Near Fairchild AFB. Washington DC	1958-08-09	\N
3120	Mount Oyama. Japan	1958-09-09	\N
3122	Triel. France	1958-09-15	\N
3124	Over the Mediterranean Sea	1958-09-29	\N
3126	Payette. Idaho	1958-09-10	\N
3128	Mt. Alto del Cedro. Venezuela	1958-10-14	00:22:00
3130	Villa Montes. Bolivia	1958-10-15	\N
3132	Near Kanash. Russia	1958-10-17	\N
3134	Placentia Bay. Canada	1958-10-18	\N
3136	Anzio. Italy	1958-10-22	11:50:00
3138	Nipe Bay. Cuba	1958-01-11	02:01:00
3140	Near Roccatamburo di Poggiodomo. Italy	1958-03-11	20:00:00
3142	La Paz. Bolivia	1958-08-11	\N
3144	North AtlantiOcean	1958-09-11	13:21:00
3146	Fort Collins. Colorado	1958-11-16	\N
3148	Guadarrama Mountains. Spain	1958-04-12	17:15:00
3150	Winkton. England	1958-12-24	11:58:00
3152	Salisbury. Zimbabwe	1958-12-26	12:52:00
3154	Rio de Janeiro. Brazil	1958-12-30	\N
3156	Near Tippi. Ethiopia	1962-01-13	\N
3158	Mt. Pena Blanca. Guatemala	1959-06-01	11:20:00
3160	Mt. Holston. Tennessee	1959-08-01	20:32:00
3162	Rio de Janeiro. Brazil	1959-11-01	\N
3164	Panther Peak. California	1959-01-14	\N
3166	Off Mar del Plata. Argentina	1959-01-16	21:40:00
3168	Near Merida. Venezuela	1959-01-21	\N
3170	Dabouk. Jordan	1959-01-22	15:00:00
3172	Brindisi. Italy	1959-01-27	06:10:00
3174	Kerrville. Texas	1959-01-02	23:37:00
3176	Mason City. Iowa	1959-03-02	01:00:00
3178	La Guardia Airport. New York. NY	1959-03-02	23:56:00
3180	Gatwick. Surrey. England	1959-02-17	16:00:00
3182	Belen. Chile	1959-02-18	\N
3184	Beirut. Lebanon	1959-11-21	\N
3186	Managua. Nicaragua	1959-05-03	11:35:00
3188	Tobu. India	1959-12-03	14:10:00
3190	Mahon. Spain	1959-03-13	08:00:00
3192	Near Banga. Central African Republic	1959-03-29	\N
3194	Near Silchar. India	1959-03-29	10:45:00
3196	Alma. Georgia	1959-03-30	\N
3198	Puerto Kino. Mexico	1959-04-17	\N
3200	Van. Turkey	1959-04-23	\N
3202	Valdemeca. Spain	1959-04-29	16:00:00
3204	Mallorca. Spain	1959-02-05	21:12:00
3206	Charleston. West Virginia	1959-12-05	15:29:00
3208	Chase. Maryland	1959-12-05	16:13:00
3210	Near Toumavista. Peru	1959-05-13	\N
3212	Off Mar del Plata. Aregntina	1959-05-15	\N
3214	Moro. Peru	1959-05-21	\N
3216	Nicaragua	1959-01-06	\N
3218	Cerros Baco. Peru	1959-06-23	\N
3220	Near Varese. Lombardia. 20 miles NW of Milan. Italy	1959-06-26	17:35:00
3222	Ishikawa City. Ryukyu Island. Okinawa	1959-06-30	10:35:00
3224	Sagone. India	1959-03-08	10:30:00
3226	Karachi. Pakistan	1959-08-14	17:14:00
3228	Calverton. New York	1959-08-15	16:42:00
3230	Near Barcelona. Spain	1959-08-19	\N
3232	Near Asuncion. Paraguay	1959-08-27	\N
3234	Abilene. Texas	1959-02-09	\N
3236	Poza Rica. Mexico	1959-08-09	\N
3238	Near Tegucigalpa. Honduras	1959-12-09	\N
3240	Sao Paulo. Brazil	1959-09-23	18:40:00
3242	Bordeaux. France	1959-09-24	22:24:00
3244	Great Sitkin Island. Alaska	1959-09-24	17:20:00
3246	Buffalo. Texas	1959-09-29	23:09:00
3248	Santa Maria. California	1959-10-26	20:18:00
3250	Athens. Greece	1959-10-29	15:25:00
3252	Waynesborough. Virginia	1959-10-30	20:40:00
3254	St. Cleophas. Quebec. Canada	1959-04-11	23:07:00
3256	Gulf of Mexico	1959-11-16	00:55:00
3258	Lvov. Ukraine. USSR	1959-11-16	\N
3260	Chicago. Illinois	1959-11-24	05:35:00
3262	Willamsport. Pennsylvania	1959-01-12	09:47:00
3264	Off Cartagena. Colombia	1959-08-12	16:57:00
3266	Near Tashkent. Uzbekistan. USSR	1959-12-13	\N
3268	Ketchikan. Alaska	1959-12-17	02:20:00
3270	Rome. Italy	1959-12-21	07:16:00
3272	Rid de Janeiro. Brazil	1959-12-22	\N
3274	Palembang. Indonesia	1959-12-24	05:00:00
3276	Near San Jose de Chiquitos. Bolivia	1959-12-31	\N
3278	Taksing. India	1960-03-01	10:40:00
3280	Wilmington/Bolivia. North Carolina	1960-06-01	02:38:00
3282	Gulf of Sirte	1960-10-01	15:38:00
3284	Charles City. Virginia	1960-01-18	22:19:00
3286	Ankara. Turkey	1960-01-19	18:47:00
3288	Near Semipalatinsk. USSR	1973-11-05	\N
3290	Montego Bay. Jamacia	1960-01-21	\N
3292	Off Bathurst Island. Australia	1960-01-26	00:15:00
3294	Laguna de Huana-Costa . Boliva	1960-05-02	\N
3296	Rio de Janeiro. Brazil	1960-02-26	13:07:00
3298	Shannon. Ireland	1960-02-26	\N
3300	Lvov. Ukraine. USSR	1960-02-26	\N
3302	El Refugio. Colombia	1960-03-15	\N
3304	Near Tokyo. Japan	1960-03-16	\N
3306	Near Cannelton. 10 mile SE of Tell City. Indiana	1960-03-17	15:25:00
3308	Cordoba. Colombia	1960-03-19	11:10:00
3310	Siuna. Nicaragua	1960-05-04	14:39:00
3312	Pelotas. Brazil	1960-12-04	14:20:00
3314	Taipei .Taiwan	1960-04-14	\N
3316	Stephenville. Newfoundland	1960-04-18	\N
3318	Bogota. Colombia	1960-04-19	20:48:00
3320	Hickory. North Carolina	1960-04-20	13:06:00
3322	Bunia. Belgian Congo	1960-04-22	\N
3324	Near Calabozo. Venezuela	1960-04-28	08:22:00
3326	Jebel Marra. Sudan	1960-05-15	19:57:00
3328	Near Salto. Uruguay	1960-07-09	\N
3330	El Sosneado. Argentina	1960-05-18	\N
3332	Atlanta. Georgia	1960-05-23	11:52:00
3334	Off  Mackay. Qld. Australia	1960-10-06	\N
3336	Mt. Gilbert. Alaska	1960-06-14	04:47:00
3338	Rio de Janeiro. Brazil	1960-06-24	18:30:00
3340	Off Barnegat City. New Jersey	1960-06-07	14:30:00
3342	Persian Gulf	1960-10-07	\N
3344	Near Quito. Ecuador	1960-11-07	11:45:00
3346	Off Manila. Philippines	1960-07-14	04:30:00
3348	Near Jima. Ethiopia	1960-07-15	09:40:00
3350	Near Goma. Zaire	1960-07-19	13:45:00
3352	Forest Park. Illinois	1960-07-27	22:38:00
3354	Near Rimini. Italy	1960-07-31	10:56:00
3356	Near Tipuani. Bolivia	1960-01-08	\N
3358	Kiev. Ukraine. USSR	1960-08-17	\N
3360	Near El Kelaa. Morocco	1960-08-17	23:45:00
3362	Off Heraklion. Greece	1960-08-24	\N
3364	Off Dakar. Senegal	1960-08-29	06:50:00
3366	Agana. Guam. Mariana Islands	1960-09-19	06:02:00
3368	Off Naha. Okinawa	1960-09-22	\N
3370	Moscow. Russia	1960-09-26	23:40:00
3372	Near Juchetipec. Mexico	1960-09-28	\N
3374	Off Elba. Italy	1960-09-29	12:15:00
3376	Boston. Massachusett	1960-04-10	17:40:00
3378	Elba. Italy	1960-10-14	\N
3380	Plain City. Utah	1960-10-15	\N
3382	Ust-Orda. Russia	1960-10-21	\N
3384	Near Missoula. Montana	1960-10-28	11:39:00
3386	Toledo. Ohio	1960-10-29	21:02:00
3388	Bhairawa. Nepal	1960-05-11	\N
3390	Near Quito. Ecuador	1960-07-11	\N
3392	Manila. Philippines	1960-11-23	18:45:00
3394	Cachimbo. Brazil	1960-07-12	\N
3396	San Andres de Giles. Argentina	1960-11-12	19:50:00
3398	Llico. Chile	1961-03-04	23:57:00
3400	Stah. Algeria	1961-10-05	02:30:00
3402	Near Tacoma. Washington	1961-05-24	\N
3404	Staten Island / Brooklyn. New York	1960-12-16	10:33:00
3406	Munich. West Germany	1960-12-17	14:10:00
3408	Cebu City. Philippines	1960-12-22	12:31:00
3410	Ruzyne. Czechoslovakia	1961-02-01	\N
3412	Koivulahti. Finland	1961-03-01	07:40:00
3414	New York. New York (Idlewild)	1961-01-19	20:25:00
3416	Midway Island Naval Air Station	1961-01-22	01:40:00
3418	Mt. Burangrang. Indonesia	1961-01-24	02:48:00
3420	Off Argentia. Azores	1961-01-26	\N
3422	Off Montauk Point. New York	1961-01-28	12:20:00
3424	Off Surabaya. Indonesia	1961-03-02	23:55:00
3426	Near Brussels. Belgium	1961-02-15	10:05:00
3428	Near Caracas. Venezuela	1961-09-03	15:00:00
3430	Near Natal. Brazil	1961-03-25	\N
3432	Russelbach. East Germany	1961-03-28	20:08:00
3434	Singapore	1961-05-29	\N
3436	Near Lisbon. Portugal	1961-05-30	01:20:00
3438	Cairo. Egypt	1961-12-06	04:11:00
3440	Near Kano. Nigeria	1961-06-17	22:23:00
3442	Buenos Aires. Argentina	1961-06-30	20:57:00
3444	Odessa. Ukraine. USSR	1961-10-07	\N
3446	Denver. Colorado	1961-11-07	11:36:00
3448	Casablanca. Morocco	1961-12-07	01:29:00
3450	Near Azul. Argentina	1961-07-19	08:00:00
3452	Shemya. Alaska	1961-07-21	02:11:00
3454	Budapest. Hungary	1961-06-08	\N
3456	Sola. Norway	1961-09-08	17:30:00
3458	Near Pha Khao. Laos	1961-08-13	\N
3460	SondrestrÃ¶mfjord. Greenland	1961-08-29	18:22:00
3462	Near Hinsdale. Illinois	1961-01-09	02:05:00
3464	Near Sendafar. Ethiopia	1961-05-09	\N
3466	Cerro del Aernal. Costa Rica	1961-06-09	\N
3468	Surabaya. Indonesia	1961-12-29	\N
3470	Shannon. Ireland	1961-10-09	03:55:00
3472	Near Rabat. Morrocco	1961-12-09	22:09:00
3474	Ndola. Zambia	1961-09-17	22:13:00
3476	Chicago. Illinois	1961-09-17	08:57:00
3478	Ankara. Turkey	1961-09-23	18:02:00
3480	Mt. Canigou. France	1961-07-10	02:00:00
3482	El Adem. Libya	1961-10-10	\N
3484	Les Prevosts. Guernsey	1961-01-11	14:26:00
3486	Near Recife. Brazil	1961-01-11	02:15:00
3488	Near Richmond. Virginia	1961-08-11	21:24:00
3490	Off Puerto Rico	1961-11-11	\N
3492	Campinas. Brazil	1961-11-23	05:40:00
3494	Sao TomÃ©	1961-11-23	\N
3496	Sydney. NSW. Australia	1961-11-30	\N
3498	Mainz. Germany	1961-04-12	\N
3500	Chievres. Belgium	1961-12-12	\N
3502	Managua. Nicaragua	1961-12-15	\N
3504	Ankara. Turkey	1961-12-21	\N
3506	Old Harbor. Kodiak Island. Alaska	1961-12-24	10:50:00
3508	Caranavi .Bolivia	1962-01-22	15:16:00
3510	Batataevka. USSR	1962-01-27	\N
3512	Near Tino Maria. Peru	1962-04-02	10:05:00
3514	Portlamar. Margarita Island. Venezuela	1962-02-25	\N
3516	Municipio de Marulanda. Colombia	1962-02-25	14:35:00
3518	Jamaica Bay. New York. New York	1962-01-03	10:09:00
3520	Douala. Cameroon	1962-04-03	18:20:00
3522	Near Seymour. South Africa	1962-06-03	\N
3524	Mt. Medetsiz. Turkey	1962-08-03	17:43:00
3526	Rome. Italy	1962-08-03	\N
3528	Near Alencon. France	1962-08-03	17:30:00
3530	Adak. Alaska	1962-03-15	01:14:00
3532	Western PacifiOcean. Philippine Sea	1962-03-15	00:30:00
3534	Algeria	1962-03-20	\N
3536	Santiago de Cuba. Cuba	1962-03-27	17:45:00
3538	Near Villavicencio. Colombia	1962-06-04	15:00:00
3540	Serrania del Baudo. Colombia	1962-04-22	\N
3542	Near Camona. Spain	1962-12-10	\N
3544	Near Portsmouth. England	1962-06-05	13:29:00
3546	Near Mong Pa Liao. Burma	1962-08-05	\N
3548	Vitoria. Brazil	1962-09-05	19:30:00
3550	Godthaab. Greenland	1962-12-05	\N
3552	Near Cairo. Egypt	1962-05-15	\N
3554	Near Nairobi. Kenya	1962-05-17	\N
3556	Near Markt Schwaben. West Germany	1962-05-22	11:40:00
3558	Near Unionville. Missouri	1962-05-22	21:21:00
3560	Villeneuve-le-Roi. Val-de-Marne. France	1962-03-06	12:35:00
3562	Sofia. Bulgaria	1962-04-06	\N
3564	Basse-Terre. Guadaloupe. West Indies	1962-06-22	04:01:00
3566	Near Adler. Russia	1962-06-28	\N
3568	Near Krasnoyarsk. USSR	1962-06-30	\N
3570	Near Tashkent. Uzbekistan. USSR	1962-06-07	\N
3572	Near Junnar. Maharashtra. India	1962-07-07	23:59:00
3574	Off Brindisi. Italy	1962-09-07	21:42:00
3576	Near Lahore. Pakistan	1962-07-15	\N
3578	Loheshyphn. India	1962-07-16	\N
3580	Near Bangkok. Thailand	1962-07-19	15:45:00
3582	Honolulu. Hawaii	1962-07-22	23:19:00
3584	Sochi. Russia	1962-07-28	\N
3586	Coulommiers. France	1962-07-30	\N
3588	Near Kathmandu. Nepal	1962-01-08	13:15:00
3590	Rio de Janerio. Brazil	1962-08-20	22:08:00
3592	Berranca Bermeja. Colombia	1962-08-23	15:57:00
3594	Cerro Puena Paz. Peru	1962-08-24	\N
3596	Near Khabarovsk. USSR	1962-02-09	\N
3598	Yanoyaki. Japan	1962-03-09	16:55:00
3600	Near Lake Milton. Ohio	1962-04-09	21:00:00
3602	Brno. Czechoslovakia	1962-10-09	09:00:00
3604	Near Milan. Washington	1962-10-09	11:05:00
3606	Near Alcoche. Bolivia	1962-10-09	\N
3608	Sela. India	1962-09-21	\N
3610	North AtlantiOcean	1962-09-23	21:00:00
3612	Spt-ÃŽles. Quebec. Canada	1962-10-10	18:30:00
3614	Manila. Philippines	1962-12-10	\N
3616	Acapulco. Mexico	1973-12-10	\N
3618	Windsor Locks. Connecticut	1962-10-19	20:52:00
3620	Near Moscow. Russia	1962-10-25	\N
3622	Near Tourane. South Vietnam	1962-10-11	14:37:00
3624	Near Nagoya. Japan	1962-11-19	\N
3626	Ellicott. Maryland	1962-11-23	12:24:00
3628	Sao TomÃ© & Principe	1962-11-23	\N
3630	Le Bourget. France	1962-11-23	14:10:00
3632	Paraibuna. Brazil	1962-11-26	12:09:00
3634	Lima. Peru	1962-11-27	03:40:00
3636	New York. New York	1962-11-30	21:45:00
3638	Barranca Bermeja. Colombia	1962-06-12	17:00:00
3640	Near Manaus. Brazil	1962-12-14	02:19:00
3642	Burbank. California	1962-12-14	22:12:00
3644	Warsaw. Poland	1962-12-19	19:30:00
3646	Kadena AB. Okinawa	1962-12-20	\N
3648	Near Brasilia. Brazil	1962-12-22	\N
3650	Rotterdam. The Netherlands	1962-12-28	\N
3652	Monte Renosa. Corsica. France	1962-12-29	01:11:00
3654	Grand Isle. Louisana	1964-10-03	07:00:00
3656	Barter Island. Alaska	1963-01-14	23:28:00
3658	Sao Paulo. Brazil	1963-01-15	\N
3660	Great Salt Lake. Utah	1963-01-17	15:53:00
3662	Kotzebue. Alaska	1963-01-26	\N
3664	Kansas City. Missouri	1963-01-29	22:44:00
3666	Off Patuxent River. Maryland	1963-01-30	\N
3668	Ankara. Turkey	1963-01-02	17:15:00
3670	San Francisco. California	1963-03-02	12:07:00
3672	Syktyvkar .Russia	1963-08-02	\N
3674	Near Miami. Florida	1963-12-02	13:48:00
3676	Boston. Massachusetts	1963-02-28	21:29:00
3678	Near Davao City. Philippines	1963-02-03	10:02:00
3680	Camden. Tennesee	1963-05-03	18:20:00
3682	Near Karai. Iran	1963-03-15	05:40:00
3684	Near Charana. Bolivia	1963-03-15	13:55:00
3686	Monte Matto. Italy	1963-03-20	02:23:00
3688	Misaki Mountain. Japan	1963-03-23	11:00:00
3690	Angelholm. Sweden	1964-11-20	21:14:00
3692	Near Sora. Italy	1963-03-30	\N
3694	Oslo. Norway	1963-04-14	12:18:00
3696	Near Buca. Cameroon	1963-03-05	13:27:00
3698	Sao Paulo. Brazil	1963-03-05	\N
3700	Near Ayayda. Egypt	1963-12-05	\N
3702	PacifiOcean. 116 miles WSW of Annette Island. Alaska	1963-03-06	10:16:00
3704	Sama. India	1963-03-06	04:25:00
3706	Yunnan. Burma	1963-10-06	\N
3708	Bekkessamson. Romainia	1963-06-16	\N
3710	Near Aysen. Chile	1963-06-16	\N
3712	Nar Augustdorf. West Germany	1963-06-23	12:00:00
3714	Detmold. Germany	1963-06-26	\N
3716	Passo Fundo. Brazil	1963-01-07	\N
3718	Rochester. New York	1963-02-07	15:49:00
3720	Mt. Ngatamahinerua. New Zealand	1963-03-07	09:09:00
3722	Near Irkutsk. Russia	1963-07-13	\N
3724	Farafangana. Madagascar	1963-07-15	\N
3726	Pak Tha. Laos	1963-07-17	\N
3728	Off Bandra. Maharashtra. India	1963-07-27	01:50:00
3730	Wemmershoek Mountains. South Africa	1963-08-08	\N
3732	Lyon. France	1963-12-08	13:19:00
3734	Near Great Falls. Montana	1963-08-14	15:00:00
3736	Hachijo-Jima Island. Japan	1963-08-17	\N
3738	Near Leningrad . Russia	1963-08-21	12:15:00
3740	Off Miami. Florida	1963-08-28	12:30:00
3742	Durrenasch. Aargau. Switzerland	1963-04-09	06:22:00
3744	Perpignan. France	1963-11-09	\N
3746	Near Patti. India	1963-11-09	\N
3748	Off Dover. Deleware	1963-09-22	\N
3750	Near Marseilles. France	1963-09-10	\N
3752	Jamaica. New York	1963-10-14	11:33:00
3754	Near Aswan. Egypt	1963-10-18	\N
3756	Hayes Island. Russia	1963-10-20	\N
3758	Near Tisbury. England	1963-10-22	10:40:00
3760	Mariehamn. Aaland Island. Finland	1963-08-11	17:59:00
3762	Ste. Therese de Blainville. Canada	1963-11-29	18:33:00
3764	Near Nederland. Colorado	1963-07-12	19:19:00
3766	Elkton. Maryland	1963-08-12	20:59:00
3768	Gazni. Afghanistan	1963-12-12	10:15:00
3770	Cairo. Egypt	1963-12-15	\N
3772	Los Angeles. California	1963-12-17	23:41:00
3774	Zarate. Argentina	1964-09-01	09:50:00
3776	Prescott. Arizona	1964-01-22	23:00:00
3778	Near Ankara. Turkey	1964-03-02	\N
3780	Gainsville. Florida	1964-03-02	08:00:00
3782	Yacuiba. Bolivia	1964-04-02	\N
3784	Freeport. Bahamas	1964-08-02	\N
3786	Detroit. Michigan	1964-02-15	\N
3788	Banihal Pass. India	1964-02-18	15:40:00
3790	Marawi. Philippines	1964-02-21	16:00:00
3792	Barrackpore. India	1964-02-22	\N
3794	Near Forsyth. Montana	1964-02-22	04:50:00
3796	Lake Pontchartrain. New Orleans. Louisiana	1964-02-25	02:06:00
3798	Oita. Japan	1964-02-27	06:15:00
3800	Near Innsbruck. Austria	1964-02-29	14:14:00
3802	Near Zephyr Cove. Nevada	1964-01-03	11:29:00
3804	Bogota. Colombia	1964-08-03	18:45:00
3806	Near Chicago Illinois	1964-08-03	23:56:00
3808	Boston. Massachutes	1964-10-03	08:22:00
3810	Miles City. Montana	1964-12-03	20:50:00
3812	Near Danbury. North Carolina	1964-03-20	07:20:00
3814	Mt. Vesuvius. Italy	1964-03-28	22:39:00
3816	North PacifiOcean	1964-03-28	06:00:00
3818	Hargeisa. Somalia	1964-12-04	\N
3820	Dahran. Saudi Arabia	1964-04-17	19:32:00
3822	Elim. Alaska	1964-04-17	15:14:00
3824	San Ramon. California	1964-07-05	06:49:00
3826	Cerro El Gaital. Panama	1964-08-05	\N
3828	Near Lima. Peru	1964-08-05	20:20:00
3830	Papanga. Philippines	1964-11-05	19:20:00
3832	Sibuco Point .Philippines	1964-05-20	10:00:00
3834		1964-05-27	\N
3836	Mason. Texas	1964-04-06	21:00:00
3838		1964-06-13	\N
3840	Southhampton. Massachusetts	1964-06-19	22:00:00
3842	Taichung. Taiwan	1964-06-20	17:40:00
3844	Off Palma de Mallorca. Spain	1964-06-21	04:00:00
3846	Martinsville. Virginia	1964-07-07	05:15:00
3848	Knoxville. Tennessee	1964-08-07	12:10:00
3850	Rome. Italy	1964-11-23	13:09:00
3852	Parrottsville. Tennesee	1964-09-07	18:15:00
3854	Reno. Nevada	1964-07-14	02:05:00
3856	Richmond. Virginia	1964-07-16	18:29:00
3858	Near Nashville. Tennesee	1964-07-31	16:52:00
3860	Willow. Alaska	1964-02-08	12:30:00
3862	East Falmouth. Massachusetts	1964-05-08	01:00:00
3864	Near Tipuani (Bolivia	1964-08-22	\N
3866	Island of Sakhalin. Russia	1964-02-09	\N
3868	Pico da Caledonia. Brazil	1964-04-09	16:34:00
3870	Near Vaong Nong. Thailand	1964-04-09	19:00:00
3872	Near Condoto. Colombia	1964-09-15	17:51:00
3874	Near Trevelez. Granada. Spain	1964-02-10	05:45:00
3876	Addis Ababa. Ethiopia	1964-02-10	\N
3878	Near Sibiu. Romania	1964-09-10	\N
3880	Crown King. Arizona	1964-10-16	09:15:00
3882	Near Belgrade. Yugoslavia	1964-10-19	11:35:00
3884	Branson. Colorado	1964-03-11	11:10:00
3886	Las Vegas. Nevada	1964-11-15	20:25:00
3888	Off Argentia. Newfoundland. Canada	1964-11-17	\N
3890	Bao Trai. Vietnam	1965-09-27	15:10:00
3892	Leopoldville. Zaire	1964-11-29	19:20:00
3894	Fayetteville. Arkansas	1964-04-12	19:58:00
3896	Tripuani. Bolivia	1964-08-12	10:48:00
3898	Near Da Nang. South Vietnam	1964-11-12	\N
3900	Near Kaliba. Philippines	1964-12-21	18:40:00
3902	Yurimaguas. Peru	1964-12-24	\N
3904	Near San Francisco. California	1964-12-24	00:31:00
3906	Near Turrialba. Costa Rica	1964-12-29	\N
3908	Detroit. Michigan	1964-12-30	02:14:00
3910	Kla City. Oklohoma	1965-05-01	00:28:00
3912	Fairbanks. Alaska	1965-01-13	12:25:00
3914	Wichita. Kansas	1965-01-16	09:30:00
3916	Near Durango. Mexico	1965-01-17	\N
3918	Mt. Helmos. Greece	1965-01-22	\N
3920	Garoua. Cameroon	1965-03-02	\N
3922	San Jose Volcano. Chile	1965-06-02	08:36:00
3924	Off Jones Beach. New York. New York	1965-08-02	18:26:00
3926	Miami. Florida	1965-02-13	04:20:00
3928	Mt. Nakanoone. Japan	1965-02-14	\N
3930	South Beach. New York	1965-02-14	19:30:00
3932	Fort Smith AFB. Oklahoma	1973-10-15	\N
3934	Libmanan. Philippines	1965-08-03	10:30:00
3936	Kuybyshev.  Russia	1965-08-03	\N
3938	Musquodoboit. Canada	1965-03-17	09:22:00
3940	Sugar Loaf Mountain. Colombia	1965-03-22	14:55:00
3942	Off San Juan. Puerto Rico	1965-03-25	\N
3944	Lowery Pass. Pakistan	1965-03-26	\N
3946	Off Tangiers. Morocco	1965-03-31	08:04:00
3948	Bellfontaine. Ohio	1965-09-04	00:30:00
3950	Near Damascus. Syria	1965-10-04	\N
3952	Jersey. UK	1965-04-14	\N
3954	Johnstown. Pennsylvania	1965-04-17	19:45:00
3956	Near Seattle. Washington	1965-04-23	14:23:00
3958		1965-05-05	21:17:00
3960	Cairo. Egypt	1965-05-20	23:48:00
3962	Near Colombus. Georgia	1965-06-15	09:50:00
3964	Near Santa Ana. California	1965-06-25	01:46:00
3966	San Francisco. California	1965-06-28	13:10:00
3968	Kansas City. Missouri	1965-01-07	05:29:00
3970	Near Patian. Pakistan	1965-08-10	01:15:00
3972	Near Oxford. England	1965-06-07	16:00:00
3974	Cairo. Egypt	1965-07-07	\N
3976	Dog Creek. British Columbia. Canada	1965-08-07	16:40:00
3978	Off Nantucket. Massachusetts	1965-11-07	22:22:00
3980	St. Thomas. Virgin Islands	1965-07-15	17:05:00
3982	Off Choushi. Japan	1965-07-17	12:10:00
3984	Near Libacao. Philippines	1965-07-25	07:40:00
3986	Panama City. Panama	1965-04-08	23:34:00
3988	Near Cuiaba. Brazil	1965-12-08	11:00:00
3990	Lake Michigan. near Chicago. Illinois	1965-08-16	20:21:00
3992	Jeuk. Belgium	1965-08-20	13:08:00
3994	Hong Kong	1965-08-24	10:10:00
3996	Lake Tustumena. Alaska	1965-04-09	09:40:00
3998	Near La Carlota. Phillipines	1965-11-09	16:25:00
4000	Gore. Ethiopia	1965-09-14	\N
4002	Near Pastaza. Ecuador	1965-09-16	11:02:00
4004	Quang Ngai. South Vietnam	1965-09-16	\N
4006	Montserrat. Antigua	1965-09-17	11:25:00
4008	Santiago. Chili	1975-07-31	\N
4010	Bucaramanga. Colombia	1965-10-17	\N
4012	Mohanbari. India	1965-10-17	07:28:00
4014	Near Hanoi. Vietnam	1965-10-18	\N
4016	Near Manila. Philippines	1965-10-20	10:33:00
4018	London. England	1965-10-27	01:23:00
4020	Obock. French Somaliland	1965-02-11	\N
4022	Off Northern Panama	1965-03-11	07:30:00
4024	Near Boqueron. Colombia	1965-08-11	12:25:00
4026	Cincinnati Airport. near Covington. Kentucky	1965-08-11	19:02:00
4028	Murmansk. Russia	1965-10-11	\N
4030	Salt Lake City. Utah	1965-11-11	17:52:00
4032	Maui. Hawaii	1965-12-11	14:15:00
4034	Near Palm Springs. California	1965-11-14	17:21:00
4036	Salt Lake City . Utah	1965-11-27	07:15:00
4038	Carmel. New York	1965-04-12	16:18:00
4040	Cerro el Planchon. Chile	1966-11-07	\N
4042	Tenerife. Canary Islands	1965-07-12	18:40:00
4044	Near Tuy Hoa. South Vietnam	1965-11-12	15:00:00
4046	Kingman. Arizona	1965-12-12	19:40:00
4048	Legaspi. Philippines	1965-12-16	17:22:00
4050	Redericksburg. Texas	1965-12-29	22:45:00
4052	Near Palembang. Sumarta. Indonesia	1966-01-01	\N
4054	Off Cartagena. Colombia	1966-01-15	20:55:00
4056	Port-au-Prince. Haiti	1966-01-22	\N
4058	Mont Blanc. French Alps. Switzerland	1966-01-24	08:02:00
4060	Near Binh Khe. South Vietnam	1966-01-25	10:15:00
4062	Erie. Pennsylvania	1966-01-27	12:01:00
4064	Bremen. Germany	1966-01-28	17:50:00
4066	Tokyo Bay. Japan	1966-04-02	19:00:00
4068	Srinagar. India	1966-07-02	\N
4070	Mattoon. Illinois	1966-08-02	18:40:00
4072	Delh. India	1966-02-15	\N
4074	Near Milan. Italy	1966-02-18	02:04:00
4076	Near Tokyo. Japan	1966-04-03	20:15:00
4078	Hideaway Park. Colorado	1966-11-07	20:50:00
4080	Near Gotemba City. Mt. Fuji. Japan	1966-05-03	14:15:00
4082	Santa Cruz Island. California	1966-08-03	08:04:00
4084	Reef Island. Alaska	1966-10-03	17:14:00
4086	Athens. Greece	1966-10-03	\N
4088	Cairo. Egypt	1966-03-18	18:40:00
4090	Asuncion. Paraguay	1966-03-20	\N
4092	Princeston. West Virginia	1966-05-04	18:44:00
4094	Off San Diego. California	1966-09-04	\N
4096	Sam Neua. Laos	1966-04-17	\N
4098	Near Ardmore. Oklahoma	1966-04-22	20:30:00
4100	Tomas. Peru	1966-04-27	08:05:00
4102	Near Di Linh. South Vietnam	1966-04-05	08:00:00
4104	Neah Bay. Washington	1966-06-05	21:25:00
4106	Okinawa. Japan	1966-05-18	\N
4108	Near Columbia City. Indiana	1966-06-16	08:48:00
4110	Montreal. Quebec. Canada	1966-06-20	\N
4112	Long Beach. Mississippi	1966-06-27	11:15:00
4114	Ashland. Alabama	1966-06-27	06:00:00
4116	Sagalyan. Philippines	1966-06-29	12:04:00
4118	Auckland. New Zealand	1966-04-07	15:59:00
4120	Near Munster. Indiana	1966-07-24	18:27:00
4122	Benito. Bolivia	1966-03-08	\N
4124	Near Falls City. Nebraska	1966-06-08	23:12:00
4126	Near Sibiu. Romania	1966-11-08	\N
4128	Near Acapulco. Mexico	1966-08-13	\N
4130	Anchorage. Alaska	1966-08-15	18:45:00
4132	Hebron. Ohio	1966-08-16	07:14:00
4134	Near Da Nang. South Vietnam	1966-08-17	\N
4136	Puertos Lobos. Argentina	1966-08-17	18:30:00
4138	Near Juneau. Alaska	1966-08-21	10:35:00
4140	Near Ljubljana. Slovenia. Yugoslavia	1966-01-09	00:47:00
4142	Mumbai. Indian	1966-04-09	\N
4144	Off Puertito de Sausal. Spain	1966-09-16	08:25:00
4146	Winton. Australia	1966-09-22	13:03:00
4148	Bogota. Colombia	1966-09-22	03:15:00
4150	Near Wemme. Oregon	1966-01-10	19:10:00
4152	An Khe. Vietnam	1966-04-10	\N
4154	Off Morgan City. Louisiana	1966-08-10	13:30:00
4156	Near Sukhumi. Georgia. USSR	1975-11-17	\N
4158	Dowagiac. Michigan	1966-09-10	20:20:00
4160	Heflin. Alabama	1966-02-11	09:06:00
4162	East Nassau. New York	1966-06-11	22:00:00
4164	Off Chatham. Massachusetts	1966-11-11	01:43:00
4166	Off Matsuyama. Japan	1966-11-13	20:30:00
4168	Near Dallgow. Germany	1966-11-15	02:42:00
4170	Near New Bern. North Carolina	1966-11-20	06:06:00
4172	Near Aden. Yemen	1966-11-22	12:20:00
4174	Near Bratislava. Czechoslovakia	1966-11-24	16:30:00
4176	Near Siagon. South Vietnam	1966-11-26	19:20:00
4178	Near Pedrera. Brazil	1966-01-12	\N
4180	Moscow. Russia	1966-02-12	\N
4182	Bogota. Colombia	1966-12-18	02:55:00
4184	Binh Tahi. Da Nang. Vietnam	1966-12-24	19:15:00
4186	Cascubel River. Colombia	1966-12-24	09:56:00
4188	New Shrewsbury. New Jersey	1967-05-01	06:55:00
4190	Hilo. Hawaii	1967-06-01	16:25:00
4192	Off Okisu. Japan	1967-01-17	\N
4194	AtlantiOcean	1967-01-17	\N
4196	Frankfurt. Germany	1967-01-21	04:15:00
4198	Aleppo. Syria	1967-06-02	\N
4200	Near Curitiba. Brazil	1967-03-11	11:30:00
4202	Albuquerque. New Mexico	1967-07-02	00:02:00
4204	Near Hourghada. UAR	1967-07-02	\N
4206	Near Mexico City. Mexico	1967-09-02	05:15:00
4208	Zurich. Switzerland	1967-10-02	\N
4210	Youngstown. Ohio	1967-02-15	12:13:00
4212	Menado. Indonesia	1967-02-16	14:21:00
4214	Tegucigalpa. Honduras	1967-02-20	08:45:00
4216	Mactan. Philippines	1967-02-28	04:20:00
4218	Monrovia. Liberia	1967-04-03	02:56:00
4220	Near Marseille. Ohio	1967-05-03	20:07:00
4222	Karachi. Pakistan	1967-08-03	\N
4224	Urbana. Ohio	1967-09-03	11:54:00
4226	Near Phan Rang. South Vietnam	1967-10-03	16:20:00
4228	Near Klamath Falls. Oregon	1967-10-03	05:03:00
4230	Mt Visenti. Italy	1967-11-03	\N
4232	Off East London. South Africa	1967-03-13	17:10:00
4234	Kodiak. Alaska	1967-03-16	07:51:00
4236	Greenwood. Mississippi	1967-03-27	05:44:00
4238	New Orleans. Louisiana	1967-03-30	00:45:00
4240	Phelan. California	1967-01-04	15:50:00
4242	Off Lima. Peru	1967-02-04	\N
4244	Lexington. Kentucky	1967-03-04	16:33:00
4246	Seoul. South Korea	1967-08-04	11:00:00
4248	Tamanrasset. Algeria	1967-11-04	\N
4250	Near Mamuniyeh. Iran	1967-04-17	17:40:00
4252	Near Nicosia. Cyprus	1967-04-20	01:13:00
4254	Off Nantucket. Massachusetts	1967-04-25	19:05:00
4256	Near Sogamosa. Colombia	1967-04-27	\N
4258	Malaybalay. Philippines	1967-04-27	17:10:00
4260	Off Tsushima Island . Japan	1967-04-28	\N
4262	Flushing. New York	1967-01-05	16:20:00
4264	New Castle. Virginia	1967-04-05	16:28:00
4266	El Plumerillo. Chile	1967-12-05	\N
4268	Cape Dyer. Canada	1967-05-15	\N
4270	Ottawa. Ontario. Canada	1967-05-19	18:37:00
4272	Mt. Canigou. near Roussillon. France	1967-03-06	21:06:00
4274	Stockport. Cheshire. England	1967-04-06	10:09:00
4276	Near Siagon. Vietnam	1967-09-06	\N
4278	Jedda. Saudi Arabia	1967-11-06	\N
4280	Dublin. Ireland	1967-12-06	17:58:00
4282	Near La Paz. Mexico	1967-12-06	\N
4284	Near Coari. Brazil	1967-06-15	05:00:00
4286	Near Dien Bien Phu. Vietnam	1967-12-29	\N
4288	An Khe. South Vietnam	1967-06-17	19:30:00
4290	Dublin. Ireland	1967-06-22	\N
4292	Siagon. Vietnam	1967-06-22	21:18:00
4294	Blossburg. Pennsylvania	1967-06-23	13:47:00
4296	Near Jacksonville. North Carolina	1967-06-23	09:00:00
4298	Khamis Mushait. Saudi Arabia	1967-06-24	\N
4300	Kai Tak. Hong Kong	1967-06-30	\N
4302	Bacolod. Philippines	1967-06-07	18:43:00
4304	Tananarive. Malagasy Republic	1967-07-19	07:00:00
4306	Near Hendersonville. North Carolina	1967-07-19	11:01:00
4308	Near Luang Prabang. Laos	1967-07-25	10:30:00
4310	Near Luang Prabang. Laos	1967-07-25	\N
4312	Grand Canyon. Arizona	1967-07-26	18:15:00
4314	Spitzberg. Norway	1967-08-31	\N
4316	Near Bao Loc. Vietnam	1967-04-09	\N
4318	Near Gander. Newfoundland. Canada	1967-05-09	05:10:00
4320	Farmington. New Mexico	1967-08-09	09:23:00
4322	Near Huong Thuy. South Vietnam	1967-08-10	09:40:00
4324	Isle Culebra. Puerto Rico	1967-08-10	09:45:00
4326	Off Rhodes. Greece	1967-12-10	07:25:00
4328	Camden. Arizona	1967-10-13	15:15:00
4330	South Vietnam	1967-10-24	\N
4332	Calhoun. Georgia	1967-04-11	08:15:00
4334	Fernhurst. Sussex. England	1967-04-11	\N
4336	Hong Kong. China	1967-05-11	10:35:00
4338	Cincinnati. Ohio	1967-06-11	18:41:00
4340	Near Sverdlovsk. Russia	1967-11-16	\N
4342	Cincinnati International Airport. Covington/Hebron. Kentucky	1967-11-20	20:57:00
4344	Juneau. Alaska	1967-11-23	12:00:00
4346	Sanger. California	1967-11-25	04:05:00
4348	Near Qui Nhon. South Vietnam	1967-11-30	14:30:00
4350	Muong Soui. Laos	1967-07-12	\N
4352	Carpich Huanuco Mt.. Peru	1967-08-12	\N
4354	Near Madison. Wisconsin	1967-10-12	15:25:00
4356	Hanalei. Hawaii	1967-12-13	17:36:00
4358	Corona. New Mexico	1967-12-15	15:30:00
4360	Creag Bhan. England	1967-12-21	\N
4362	Denver. Colorado	1967-12-21	16:00:00
4364	Chiang Mai. Thailand	1967-12-25	13:49:00
4366	Liepaja. Latvia	1967-12-30	08:28:00
4368	New Orleans. Louisiana	1967-12-31	12:00:00
4370	San Diego. California	1968-08-01	10:40:00
4372	Tanana. Alaska	1968-08-01	16:11:00
4374	Near Quang Tri. South Vietnam	1968-08-01	17:00:00
4376	Near Copper Canyon. Nevada	1968-10-01	14:00:00
4378	Zifta. Egypt	1968-01-15	07:54:00
4380	Iwakuni. Japan	1968-01-16	\N
4382	Minot AFB. North Dakota	1968-01-17	\N
4384	Moroni. Comoro Islands	1968-01-27	\N
4386	Off Phu Quoc. Vietnam	1968-06-02	\N
4388	Vancouver. Canada	1968-07-02	\N
4390	Northern India	1968-07-02	15:00:00
4392	Linkuo. Taiwan	1968-02-16	21:20:00
4394	Eureka. Utah	1968-02-21	19:35:00
4396	Ban Napa. Laos	1968-02-24	\N
4398	Near Bratsk. Russia	1968-02-29	\N
4400	Basse-Terre. Guadeloupe. West Indies	1968-06-03	20:32:00
4402	Near Khe Sanh. South Vietnam	1968-06-03	08:00:00
4404	Off Panay Island. Philippines	1968-08-03	19:18:00
4406	Near Saint Denis. Reunion	1968-09-03	23:20:00
4408	Potters Cove. Rhode Island	1968-03-19	19:37:00
4410	St. Louis. Missouri	1968-03-23	13:00:00
4412	Off Wexford Harbor. Ireland	1968-03-24	10:59:00
4414	St. Louis. Missouri	1968-03-27	17:57:00
4416	Near Moscow. Russia	1968-03-27	10:31:00
4418	Off Phu Quoc. Vietnam	1968-01-04	\N
4420	Heathrow Airport. London. England	1968-08-04	15:35:00
4422	Near Coyhaique. Chile	1968-08-04	\N
4424	Dahlonega. Georgia	1968-10-04	15:23:00
4426	Near Mexico City. Mexico	1968-10-04	\N
4428	Mull of Kintyre. England	1968-04-19	\N
4430	Near Cheo Reo. South Vietnam	1968-04-19	10:45:00
4432	Near Windhoek. South Africa (Namibia)	1968-04-20	18:50:00
4434	Moscow. Russia	1968-04-22	\N
4436	Carpenteria. California	1968-04-27	23:33:00
4438	Near Chaklala. West Pakistan	1968-04-30	\N
4440	Near Dawson. Texas	1968-03-05	15:48:00
4442	Got el Afraq. Libya	1968-07-05	12:00:00
4444	Kham Duc. Vietnam	1968-12-05	16:00:00
4446	Pelliston. Michigan	1968-05-14	21:46:00
4448	Paramount. California	1968-05-22	16:51:00
4450	Near Bombay. India	1968-05-28	\N
4452	Vidalia. Georgia	1968-01-06	13:45:00
4454	Calcutta. India	1968-06-13	00:58:00
4456	San Sebastian. Spain	1968-06-18	16:50:00
4458	Yuhnov. Russia	1968-06-22	\N
4460	Near Bearcat. South Vietnam	1968-06-25	07:30:00
4462	Vichy. Missouri	1968-06-28	12:46:00
4464	London. England	1968-03-07	\N
4466	Ft. Lauderdale. Florida	1968-07-07	\N
4468	Near Dharan. Saudi Arabia	1968-08-07	\N
4470	Near Lagos. Nigeria	1968-07-13	\N
4472	Gravata. Brazil	1968-07-15	\N
4474	Off Chili	1968-07-18	\N
4476	Near Recife Brazil	1968-07-28	\N
4478	Jamestown. Rhode Island	1968-01-08	08:00:00
4480	Near Milan. Italy	1968-02-08	14:06:00
4482	Milwaukee. Wisconsin	1968-04-08	08:48:00
4484	Pfaffenhofen. Germany	1968-09-08	13:05:00
4486	Charleston. West Virginia	1968-10-08	07:57:00
4488	AtlantiOcean	1969-08-03	\N
4490	Compton. California	1968-08-14	09:35:00
4492	Off Port Said. Egypt	1968-08-18	09:20:00
4494	Near Maturin. Venezuela	1968-08-20	01:30:00
4496	Lopez. Washington	1968-08-28	07:25:00
4498	Near Odda. Norway	1968-08-31	\N
4500	Near Burgas. Bulgaria	1968-03-09	21:25:00
4502	Flushing. New York	1968-08-09	14:55:00
4504	Off Cap d´Antibes. France	1968-11-09	10:30:00
4506	Wake Island	1968-09-24	\N
4508	Port Harcourt. Biafra. Nigeria	1968-09-28	\N
4510	Kenai. Alaska	1968-01-10	11:15:00
4512	Near Camp Evans. Vietnam	1968-03-10	\N
4514	Near Camp Evans. South Vietnam	1968-03-10	16:10:00
4516	Las Vegas. Nevada	1968-08-10	03:55:00
4518	Puerto Cortes. Costa Rica	1968-08-10	\N
4520	Derry. Pennsylvania	1968-10-10	18:45:00
4522	Near Prague. Czechoslovakia	1968-11-10	\N
4524	Near Izmir. Turkey	1968-10-19	\N
4526	FeijÃ³. Brazil	1968-10-20	\N
4528	Near Ban Me Thuot. South Vietnam	1968-10-21	06:00:00
4530	Hanover. New Hampshire	1968-10-25	17:17:00
4532	Barrow. Alaska	1968-11-21	09:54:00
4534	San Francisco. California	1968-11-22	01:24:00
4536	Santa Ana. California	1968-11-23	19:59:00
4538	Savannakhet. Laos	1968-11-25	\N
4540	Point Baker. Alaska	1968-11-26	13:25:00
4542	Pedro Bay. Alaska	1968-02-12	09:36:00
4544	St. Thomas. Virgin Islands	1968-06-12	18:20:00
4546	Wolf Creek. Montana	1968-08-12	10:55:00
4548	Near Caracas. Venezuela	1968-12-12	22:02:00
4550	Bradford. Pennsylvania	1968-12-24	20:12:00
4552	Prudhoe Bay. Alaska	1968-12-24	04:30:00
4554	Elmendorf Air Force Base. Alaska	1968-12-26	\N
4556	Ensenada. Mexico	1968-12-26	\N
4558	Chicago. Illinois	1968-12-27	20:22:00
4560	Ching Chuan Kang AB. Taiwan	1969-08-03	\N
4562	Minchumina. Alaska	1969-03-13	15:52:00
4564	Port Hedland. WA. Australia	1968-12-31	08:30:00
4566	Near Ciudad Vitoria. Mexico	1968-12-31	\N
4568	Mt. Paku. Taiwan	1969-02-01	20:12:00
4570	Tyonek. Alaska	1969-02-01	12:43:00
4572	Gatwick Airport. Horley. Surrey.  England	1969-05-01	02:35:00
4574	Near Bradford. Pennsylvania	1969-06-01	20:35:00
4576	Mt. Tawu. Thailand	1969-06-01	\N
4578	Off Los Angeles. California	1969-01-13	19:21:00
4580	Near Hue. Vietnam	1969-01-16	\N
4582	Off Los Angeles. California	1969-01-18	18:21:00
4584	Off  Taiwan	1969-04-02	\N
4586	Port Angeles. Washington	1969-05-02	06:53:00
4588	Off Batan Islands. Philippines	1969-05-02	11:45:00
4590	Near Lone Pine. California	1969-02-18	05:10:00
4592	Tainan. Taiwan	1969-02-24	\N
4594	San Juan. Puerto Rico	1969-05-03	17:38:00
4596	Maracaibo. Zulia. Venezuela	1969-03-16	12:00:00
4598	Kansas City. Kansas	1969-03-19	11:20:00
4600	Near Aswan. Egypt	1969-03-20	02:00:00
4602	New Orleans. Louisiana	1969-03-20	06:55:00
4604	Off New Providence Island. Bahamas	1969-02-04	12:50:00
4606	Zawoja. Poland	1969-02-04	\N
4608	Near Quang Tri. South Vietnam	1969-02-04	12:40:00
4610	Sept-ÃŽles. Canada	1969-07-04	\N
4612	Off Chongjin. North Korea	1969-04-15	13:50:00
4614	Kinshasa. Zaire	1969-04-16	\N
4616	Craig. Alaska	1969-04-19	13:00:00
4618	Khulna. Bangladesh	1969-04-21	14:59:00
4620	Near Takoradi. Ghana	1969-04-24	\N
4622	Near Nakhon Ratchasima . Thailand	1969-04-25	16:00:00
4624	Las Higueras. Argentina	1969-05-05	\N
4626	Rio Cuarto. Argentina	1969-05-05	\N
4628	Near Chon Thanh. South Vietnam	1969-06-05	13:20:00
4630	Medford. New Jersey	1969-07-05	12:45:00
4632	Near Lashio. Myanmar	1969-05-23	\N
4634	Reggio di Calabria. Italy	1969-05-25	09:52:00
4636	Near Salinas Victoria. Nuevo Leon. Mexico	1969-04-06	08:42:00
4638	North Bend. Oregon	1969-05-06	07:12:00
4640	Off Andreanof Islands. Alaska	1969-05-06	\N
4642	Pasco. Washington	1969-06-20	15:05:00
4644	Agra. India	1969-06-29	\N
4646	Near Monroe. Georgia	1969-06-07	20:22:00
4648	Hitauda. Nepal	1969-12-07	\N
4650	Barrow. Alaska	1969-07-13	15:05:00
4652	New York City. New York	1969-07-15	06:57:00
4654	Sparrevohn. Alaska	1969-07-24	13:08:00
4656	Kekaha. Hawaii	1969-07-25	17:45:00
4658	AtlantiCity. New Jersey	1969-07-26	12:33:00
4660	Biskra. Algeria	1969-07-26	\N
4662	Grand Canyon. Arizona	1969-07-30	15:26:00
4664	Uli . Nigeria	1969-03-08	\N
4666	Niagra Falls. Canada	1969-05-08	14:40:00
4668	Near Long Tieng. Laos	1969-08-19	17:00:00
4670	Sucre. Ecuador	1969-08-25	\N
4672	Moscow. Russia	1969-08-26	\N
4674	Off Caracas. Venezuela	1969-03-12	\N
4676	Near Khantanga. Russia	1969-06-12	\N
4678	Newton. Iowa	1969-08-31	20:05:00
4680	Near Pakse. Laos	1969-02-09	11:15:00
4682	Korat Air Base. Thailand	1969-06-09	05:30:00
4684	Near Medina. Colombia	1969-08-09	14:00:00
4686	Near Fairland. Indiana	1969-09-09	14:29:00
4688	Near Antipolo. Philippines	1969-12-09	\N
4690	Londrina-Parana. Brazil	1969-09-14	20:33:00
4692	Campbell River. Canada	1969-09-17	17:09:00
4694	Near Hoi An. Vietnam	1969-09-20	16:00:00
4696	Mexico City. Mexico	1969-09-21	\N
4698	Near La Paz. Bolivia	1969-09-26	\N
4700	Uli. Nigeria	1969-09-26	\N
4702	Gulf of Tonkin	1969-02-10	07:10:00
4704	Denver. Colorado	1969-03-10	17:22:00
4706	Timmins. Ontario .Canada	1969-09-11	\N
4708	Point Alexander. Alaska	1969-12-11	15:00:00
4710	Near Anderma. Russia	1969-11-13	\N
4712	Mt. Pilot Knob. Glen Falls. New York	1969-11-19	20:20:00
4714	Near Ikeja. Nigeria	1969-11-20	08:30:00
4716	Near Keratea. Greece	1969-08-12	20:46:00
4718	Passadumkeag. Maine	1969-10-12	08:31:00
4720	Near San Diego. California	1969-12-22	10:30:00
4722	Nha Trang. Vietnam	1969-12-22	\N
4724	Near Luang Prabang. Laos	1969-12-23	\N
4726	Nulato. Alaska	1970-01-01	00:30:00
4728	Stockholm. Sweden	1970-05-01	22:25:00
4730	Near Villia Greece	1970-12-01	12:00:00
4732	Faleolo. Western Samoa	1970-01-13	06:00:00
4734	Mt. Pumacona. Peru	1970-01-14	\N
4736	Portage. Michigan	1970-01-24	03:53:00
4738	Near Poza Rica. Mexico	1970-01-25	\N
4740	Near Delhi. India	1970-01-25	\N
4742	Near Batagai. Russia	1970-01-28	\N
4744	Cleveland. Ohio	1970-01-28	07:49:00
4746	Near Murmansk. Russia	1970-01-29	\N
4748	Near Corrientes. Argentina	1970-04-02	\N
4750	Apuseni mountains. Romania	1970-04-02	\N
4752	Near Samarkand. USSR	1970-06-02	\N
4754	Long Island Sound. Connecticut	1970-10-02	18:37:00
4756	Puerta Infrida. Colombia	1970-12-02	\N
4758	Off Santo Domingo. Dominican Republic	1970-02-15	18:30:00
4760	Elizabeth. New Jersey	1970-02-18	19:34:00
4762	Congo	1970-02-19	\N
4764	Zurich. Switzerland	1970-02-21	13:34:00
4766	St. Moritz. Switzerland	1970-06-03	\N
4768	Belem Bay. Brazil	1970-03-14	\N
4770	Near Da Nang. South Vietnam	1970-03-16	11:30:00
4772	Binghamton. New York	1970-03-22	16:11:00
4774	Colorado City. Arizona	1970-03-26	19:53:00
4776	Casablanca. Morocco	1970-01-04	08:16:00
4778	Novosibirsk. Russia	1970-01-04	\N
4780	Cambridge. Maryland	1970-02-04	00:55:00
4782	Dak Seang. Laos	1970-04-21	\N
4784	Manila. Philippines	1970-04-21	\N
4786	Rivolto. Italy	1970-04-25	\N
4788	Kainatu.  New Guinea	1970-04-28	\N
4790	Near St. Croix. US Virgin Islands	1970-02-05	15:49:00
4792	Hamilton AFB. California	1970-04-05	\N
4794	Mogadishu. Somalia	1970-06-05	\N
4796	Iligan. Philippines	1970-09-05	\N
4798	Pellston. Michigan	1970-09-05	21:28:00
4800	Kishiniev. Moldavia. USSR	1970-05-15	\N
4802	Off Puntarenas. Costa Rica	1970-05-22	\N
4804	Near Tegucigalpa. Honduras	1970-05-26	\N
4806	Chamblee. Georgia	1970-05-30	09:30:00
4808	Tripoli. Libya	1970-01-06	03:12:00
4810	Roxas. Philippines	1970-02-06	\N
4812	Near Huaricanga. Peru	1970-10-06	\N
4814	McGrath. Alakska	1970-03-07	14:00:00
4816	Near Arbucias. Gerona. Spain	1970-03-07	19:05:00
4818	Toronto. Canada	1970-05-07	08:09:00
4820	North AtlantiOcean	1970-07-18	17:20:00
4822	Lincoln. New Mexico	1970-07-24	10:30:00
4824	Tokyo. Japan	1970-07-27	11:35:00
4826	Pau. France	1970-07-30	\N
4828	Near Las Vegas. Nevada	1970-03-08	\N
4830	Islamabad. Pakistan	1970-06-08	02:17:00
4832	Near Cuzco. Peru	1970-09-08	15:00:00
4834	Taipei. Taiwan	1970-12-08	03:44:00
4836	Near Tam Ky. South Vietnam	1970-08-26	\N
4838	Near Silcher. India	1970-08-29	\N
4840	Haringvreter. Netherlands	1970-08-30	\N
4842	Near Dnepropetrovsk. Ukraine. USSR	1970-02-09	\N
4844	Near Leningrad. USSR	1970-03-09	\N
4846	New York. New York	1970-08-09	16:06:00
4848	Orocovis. Puerto Rico	1970-09-09	\N
4850	Cranbrook. Canada	1970-09-22	08:25:00
4852	Near Vagar. Denmark	1970-09-26	\N
4854	Near Da Nang. Vietnam	1970-09-30	\N
4856	Mys-Kammenyj. Russia	1970-01-10	\N
4858	Mt. Trelease. near Silver Plume. Colorado	1970-02-10	12:00:00
4860	Near Taipei. Taiwan	1970-02-10	14:07:00
4862	Mahaffey. Pennsylvania	1970-04-10	15:10:00
4864	Near Germiston. South Africa	1970-06-10	\N
4866	Dayton. Ohio	1970-10-10	21:30:00
4868	New Castle. Delaware	1970-10-16	16:49:00
4870	Pointe-Ã -Pitre. Guadeloupe	1970-10-28	\N
4872	Near Huntington. West Virginia	1970-11-14	19:36:00
4874	Nar Can Tho. South Vietnam	1970-11-24	09:30:00
4876	Anchorage. Alaska	1970-11-27	17:05:00
4878	Near Nha Trang. South Vietnam	1970-11-27	13:30:00
4880	Near Cam Ranh. South Vietnam	1970-11-29	14:30:00
4882	Dhaka. Bangladesh	1970-02-12	\N
4884	Delhi. India	1970-05-12	\N
4886	Near Constanta. Romania	1970-07-12	\N
4888	Panarah. Pakistan	1970-12-19	\N
4890	St. Thomas. Virgin Islands	1970-12-28	14:42:00
4892	Near Shemshernagar.  Pakistan	1970-12-30	\N
4894	Off Algiers. Algeria	1970-12-31	\N
4896	Leningrad. Russia	1970-12-31	\N
4898	Ben Gashir. Libya	1971-02-01	\N
4900	Edison. New Jersey	1971-09-01	16:20:00
4902	Zurich. Switzerland	1971-01-18	15:49:00
4904	Near Privas. France	1971-01-21	\N
4906	Near Pacae. Peru	1971-01-21	07:35:00
4908	Surgut. USSR	1971-01-22	\N
4910	Sao Pedro da Aldeia. Brazil	1988-02-10	\N
4912	Near Sokcho. South Korea	1971-01-23	\N
4914	Merida. Venezuela	1971-01-25	\N
4916	Voroshilovgrad. Russia	1971-01-31	\N
4918	Aguadilla. Puerto Rico	1971-07-02	16:12:00
4920	Mt. Cunatineuta. Ecuador	1971-02-17	\N
4922	Gauhati. India	1971-03-26	\N
4924	Ontario. California	1971-03-31	06:33:00
4926	Vorochilovgrad. Ukraine	1971-03-31	\N
4928	Near San Jose. Philippines	1971-04-15	07:00:00
4930	Kayenta. Arizona	1971-04-20	09:45:00
4932	C. Amalie. Virgin Islands	1971-04-21	17:26:00
4934	Manchester. New Hampshire	1971-04-22	17:01:00
4936	Coolidge. Arizona	1971-06-05	13:15:00
4938	Guatemala City. Guatemala	1971-11-05	\N
4940	Anaktvk Pass. Alaska	1971-12-05	19:30:00
4942	Near Rijeka. Yugoslavia	1971-05-23	20:00:00
4944	Near Capetown. South Africa	1971-05-26	15:00:00
4946	Roanoke. Virginia	1971-05-28	11:08:00
4948	Off Copenhagen. Denmark	1971-08-28	\N
4950	Tikaka. Sudan	1971-06-12	\N
4952	Near Duarte. California	1971-06-06	17:11:00
4954	New Haven. Connecticut	1971-07-06	08:49:00
4956	North PacifiOcean	1971-06-13	13:30:00
4958	Near Arica. Chile	1971-06-17	14:30:00
4960	Garberville. California	1971-06-27	18:00:00
4962	Hokkaido. Japan	1971-03-07	18:10:00
4964	Anchorage. Alaska	1971-07-21	22:15:00
4966	Near Bamako. Mali	1971-07-24	\N
4968	Manila. Philippines	1971-07-25	\N
4970	Near Irkutsk. Russia	1971-07-25	\N
4972	Near Morioko. Japan	1971-07-30	14:00:00
4974	San Francisco. California	1971-07-30	14:29:00
4976	Near Pau. France	1971-07-30	15:00:00
4978	Irkutsk. USSR	1971-07-08	\N
4980	Valdez. Alaska	1971-12-08	14:27:00
4982	Near Pegnitz. West Germany	1971-08-18	09:40:00
4984	Augusta. Maine	1971-08-19	20:40:00
4986	Chinnamanur. India	1971-09-12	07:00:00
4988	Near Juneau. Alaska	1971-04-09	11:15:00
4990	Near Hasloh. Germany	1971-06-09	\N
4992	Jackson. Mississippi	1971-09-15	00:16:00
4994	Presevo. Russia	1971-09-16	\N
4996	Kiev. Ukraine. USSR	1971-09-16	\N
4998	Sena Madureira. Brazil	1971-09-28	\N
5000	Near Aarsele. West Vlaanderen. Belgium	1971-02-10	11:10:00
5002	Moscow. Russia	1971-10-13	\N
5004	Colorado City. Arizona	1971-10-16	09:45:00
5006	Hot Springs. Virginia	1971-10-16	13:17:00
5008	San Vicente del Caguan. Colombia	1971-10-17	\N
5010	Peoria. Illinois	1971-10-21	11:20:00
5012	Near Qui Nhon. South Vietnam	1971-10-23	\N
5014	Bath. Pennsylvania	1971-10-24	22:15:00
5016	Off Livorno. Italy	1971-09-11	05:40:00
5018	Off Padang. Philippines	1971-10-11	\N
5020	Vinnitsa. Russia	1971-12-11	\N
5022	Near Penghu Island. Taiwan	1971-11-21	\N
5024	Near Hue. South Vietnam	1971-11-28	13:30:00
5026	Saratov. Russia	1971-01-12	\N
5028	Raleigh. North Carolina	1971-04-12	13:46:00
5030	Cazombo. Angola	1991-02-22	\N
5032	Sofia. Bulgaria	1971-12-21	\N
5034	Near Puerto Inca. Huanuco. Peru	1971-12-24	12:36:00
5036	Near Chetumal. Mexico	1972-06-01	\N
5038	Sierra de Atalayasa. Spain	1972-07-01	22:00:00
5040	Chambers. Nebraska	1972-01-18	01:04:00
5042	Near Adana. Turkey	1972-01-21	\N
5044	Near Funza. Colombia	1972-01-21	\N
5046	Near Betania. Colombia	1972-01-21	10:30:00
5048	Near Hermsdorf. Czechoslovakia	1972-01-26	16:10:00
5050	Near Tegal. Indonesia	1972-01-02	\N
5052	Pha Khao. Laos	1972-04-02	\N
5054	BattleMountain. Nevada	1972-04-02	19:00:00
5056	Near Valledupar. Colombia	1972-05-02	\N
5058	Near Vientiane. Laos	1972-11-02	13:20:00
5060	Jackson. Mississippi	1972-02-16	02:55:00
5062	Little Rock. Arkansas	1972-02-19	\N
5064	Fairfield. Idaho	1972-02-20	10:32:00
5066	Molokai. Hawaii	1972-02-22	07:05:00
5068	Albany. New York	1972-03-03	20:48:00
5070	Fort Worth. Texas	1972-03-13	\N
5072	Near Al Fujayrah. United Arab Emirates	1972-03-14	22:00:00
5074	Shamsam Mountains. South Yemen	1972-03-19	\N
5076	Near Tchepone. Laos	1972-03-28	\N
5078	Near San Fernando. Venezuela	1972-06-04	\N
5080	Near Rio de Janeiro. Brazil	1972-12-04	21:26:00
5082	Near Ardinello di Amaseno	1972-04-16	22:10:00
5084	New York. New York	1972-04-17	17:18:00
5086	Addis Ababa. Ethiopia	1972-04-18	09:39:00
5088	Near Moyobamba. Peru	1972-04-20	\N
5090	Nyot Mo. Laos	1972-04-24	12:23:00
5092	Near An Loc. Vietnam	1972-04-26	\N
5094	Bratsk. USSR	1972-04-05	\N
5096	Near Carini. Sicily. Italy	1972-05-05	22:24:00
5098	Cuidad. Venezuela	1972-08-05	\N
5100	Near Gia Dinh. South Vietnam	1972-10-05	10:25:00
5102	Albuquerque. New Mexico	1972-05-19	12:29:00
5104	Lobito. Angola	1972-05-21	\N
5106	Near Helgoland. Germany	1972-05-27	\N
5108	Dulac. Louisiana	1972-05-29	06:04:00
5110	Cruzeiro do Sul Acre. Brazil	1972-05-29	\N
5112	Dallas/Ft. Worth. Texas	1972-05-30	06:24:00
5114	Valdez. Alaska	1972-01-06	11:05:00
5116	Winfield. Kansas	1972-03-06	09:30:00
5118	Near Jesbel Musa. Morocco	1972-03-06	\N
5120	Near Pleiku. Vietnam	1972-05-06	\N
5122	Santiago. Chile	1972-06-13	\N
5124	Near an Loc. South Vietnam	1972-06-13	\N
5126	Near New Delhi. India	1972-06-14	20:20:00
5128	Near Pleiku. Vietnam	1972-06-15	14:00:00
5130	Smiley. Texas	1972-06-18	01:50:00
5132	HuÃª. Vietnam	1972-06-18	23:55:00
5134	Near Kharkov. Ukraine. USSR	1972-06-18	\N
5136	London Heathrow.  Staines. Surrey. England	1972-06-18	16:11:00
5138	Ponce. Puerto Rico	1972-06-24	23:17:00
5140	Hornell. New York	1972-06-25	13:17:00
5142	Appleton. Wisconsin	1972-06-29	09:37:00
5144	Blackpool. England	1972-06-29	\N
5146	Steamboat. Nevada	1972-06-30	07:43:00
5148	San Francisco. California	1972-05-07	\N
5150	Off Las Palmas. Canary Islands. Spain	1972-06-07	\N
5152	Near Quang Tri. South Vietnam	1972-11-07	\N
5154	Near Grytoya. Norway	1972-11-07	16:00:00
5156	Corfu Island. Greece	1972-07-20	\N
5158	Villavicencio. Colombia	1972-07-29	\N
5160	Near SoTrang. South Vietnam	1972-12-08	04:00:00
5162	Near Delhi. India	1972-12-08	\N
5164	Near Konigs Wusterausen. East Germany	1972-08-14	17:00:00
5166	Near Sandoway. Myanmar	1972-08-16	\N
5168	Canaima. Venezuela	1972-08-27	\N
5170	Papua. New Guinea	1972-08-28	14:30:00
5172	Near Magnitogorsk. Russia	1972-08-31	\N
5174	Mt Siluwe. Papua. New Guinea	1972-01-09	\N
5176	Trinidad. Bolivia	1972-07-09	17:57:00
5178	Gondar. Ethiopia	1972-10-09	10:20:00
5180	Near Dhulikhel. Nepal	1972-09-13	12:00:00
5182	Sacramento. California	1972-09-24	\N
5184	Near Ben Cat. South Vietnam	1972-09-24	\N
5186	Madrid. Spain	1972-09-30	\N
5188	Kampot. Cambodia	1972-02-10	\N
5190	Near Adler. Russia	1972-02-10	18:00:00
5192	North AtlantiOcean	1972-12-10	18:12:00
5194	Near Krasnaya Polyana. USSR	1972-10-13	21:50:00
5196	Near San Fernando. Chile	1972-10-13	15:30:00
5198	Off the Alaska coast	1972-10-16	09:00:00
5200	Off Athens. Greece	1972-10-21	09:00:00
5202	Tanna. Vanuatu	1972-10-23	\N
5204	Near Noiretable. Loire. France	1972-10-27	19:20:00
5206	Poggiorsini. Italy	1972-10-30	\N
5208	Near My Tho. South Vietnam	1972-10-31	18:00:00
5210	Near Plovdiv. Bulgaria	1972-04-11	\N
5212	Elkton. Kentucky	1972-11-17	23:20:00
5214	Near Moscow. Russia	1972-11-28	19:51:00
5216	St. Paul. Minnesota	1972-11-29	20:27:00
5218	Tenerife.  Canary Islands	1972-03-12	06:45:00
5220	Beni Sueif. Egypt	1972-05-12	15:05:00
5222	Myrtle Beach. South Carolina	1972-05-12	\N
5224	Near  LaRandall. Quebe.Canada	1972-06-12	\N
5226	Near Rawalpindi. Pakistan	1972-08-12	\N
5228	Walla Walla. Washington	1973-12-02	19:15:00
5230	Chicago. Midway Airport. Illinois	1972-08-12	14:28:00
5232	Detroit. Michigan	1972-12-15	11:46:00
5234	Chicago. Illinois	1972-12-20	18:00:00
5236	Near Pakse. Laos	1972-12-21	\N
5238	Off St. Maarten off. Netherlands Antilles	1972-12-21	\N
5240	Skaugum. Norway	1972-12-23	\N
5242	Everglades National Park. Florida	1972-12-29	23:42:00
5244	San Juan. Puerto Rico	1972-12-31	19:23:00
5246	Edmonton. Alberta. Canada	1973-02-01	08:34:00
5248	Near Glasgow. England	1973-01-19	14:31:00
5250	Perm. Russia	1973-01-22	01:00:00
5252	Kano. Nigeria	1973-01-22	09:30:00
5254	Townsend. Tennessee	1973-01-27	13:00:00
5256	Near Tegucigalpa. Honduras	1973-01-27	\N
5258	Near Kyrenia. Cyprus	1973-01-29	\N
5260	Kasigluk. Alaska	1973-01-31	12:20:00
5262	Prague. Czechoslovakia	1973-02-19	10:06:00
5264	Morgan City. Louisiana	1973-02-19	09:15:00
5266	Cerro Horqueta. Panama	1973-02-21	\N
5268	Near Isma´iliya. Egypt	1973-02-21	14:10:00
5270	Londonderry. Vermont	1973-02-22	19:00:00
5272	Near Leningrad. Russia	1973-02-24	\N
5274	Semipalatinsk. Kazakhstan	1973-02-28	\N
5276	Szczecin. Poland	1973-02-28	\N
5278	Near Szczecin. Poland	1973-02-28	23:52:00
5280	Near Nabire. Indonesia	1973-02-28	\N
5282	Moscow. Russia	1973-03-03	12:45:00
5284	Off Funchal. Portugal	1973-05-03	\N
5286	Near Nantes. France	1973-05-03	13:50:00
5288	Near Ban Hong Sa. Laos	1973-07-03	\N
5290	Hyderabad. India	1973-03-15	\N
5292	Off Brunswick. Maine	1973-03-15	14:00:00
5294	Ben Me Thuot. South Vietnam	1973-03-19	\N
5296	Near Hochwald. Solothurn.  Switzerland	1973-10-04	10:13:00
5298	Sunnyvale. California	1973-12-04	15:00:00
5300	Moffett AFB. California	1973-12-04	14:50:00
5302	Bamiyan. Afghanistan	1973-04-18	\N
5304	Davenport. Iowa	1973-04-19	17:04:00
5306	Greenville. Maine	1973-11-05	18:00:00
5308	Deadhorse. Alaska	1973-05-16	10:45:00
5310	Chita. Siberia. Russia	1973-05-18	\N
5312	Svay Rieng. Cambodia	1973-05-19	\N
5314	Near Rimouski. Canada	1973-05-29	\N
5316	Near New Delhi. India	1973-05-31	21:50:00
5318	Sao Luis. Brazil	1973-01-06	\N
5320	Goussainville. France	1973-03-06	\N
5322	Rio de Janeiro. Brazil	1973-09-06	\N
5324	Near Puerto Vallarta. Mexico	1973-06-20	\N
5326	Amman. Jordan	1973-06-30	\N
5328	Paris. Orly. France	1973-11-07	14:03:00
5330	Off Papeete. Tahiti	1973-07-22	22:07:00
5332	St. Louis. Missouri	1973-07-23	16:43:00
5334	Honolulu. HI	1973-07-24	07:08:00
5336	Logan Airport. Boston. Massachusett	1973-07-31	10:08:00
5338	Ketchikan. Alaska	1973-04-08	20:00:00
5340	Near  Domodedovo. Russia	1973-10-13	20:15:00
5342	Near La  Corunda. Spain	1973-08-13	11:40:00
5344	Don Don. Haiti	1973-08-15	14:50:00
5346	Baku. Azerbaijan. USSR	1973-08-18	\N
5348	El Yopal. Colombia	1973-08-22	\N
5350	Bogota. Colombia	1973-08-27	12:45:00
5352	Near Huete. Spain	1973-08-28	21:45:00
5354	Thirty-five miles west of Los Angeles. California	1973-08-28	20:50:00
5356	Gary. Indiana	1973-04-09	22:30:00
5358	King Cove. Alaska	1973-08-09	04:42:00
5360	Paintsville. Kentucky	1973-09-09	15:18:00
5362	Moganik. Yugoslavia	1973-11-09	\N
5364	Natchitoches. Louisiana	1973-09-20	22:45:00
5366	Eagleville. California	1973-09-24	02:00:00
5368	Lincoln. Nebraska	1973-09-25	06:18:00
5370	Rich Mountain. Arkansas	1973-09-27	19:52:00
5372	Miritituba. Brazil	1973-09-30	\N
5374	Near Sverdlovsk. Russia	1973-09-30	20:40:00
5376	Magadan. Russia	1973-02-10	\N
5378	Itaituba. PA. Brazil	1973-04-10	\N
5380	Guanabara Bay. Brazil	1973-10-23	\N
5382	Sainte Lucia Island	1973-10-29	\N
5384	La Verne. California	1973-10-31	06:05:00
5386	Villavicencio. Colombia	1973-02-11	\N
5388	Near Albuquerque.  New Mexico	1973-03-11	16:40:00
5390	Boston. Massachusett	1973-03-11	09:39:00
5392	Near Quang-Ngai. Vietnam	1973-11-17	\N
5394	Moscow. Russia	1973-07-12	\N
5396	Churchill Falls. Newfoundland. Canada	1973-09-12	22:55:00
5398	Sitkin Island. Alaska	1973-11-12	\N
5400	Near Vilnius. Lithuania	1973-12-16	\N
5402	Rome. Italy	1973-12-17	13:00:00
5404	Manhattan. Kansas	1973-12-18	19:14:00
5406	Talara. Peru	1973-12-21	\N
5408	Near Siagon. South Vietnam	1973-12-21	\N
5410	Near Tetouan. Morocco	1973-12-22	22:10:00
5412	Lvov. Ukraine. USSR	1973-12-23	\N
5414	Durban. South Africa	1973-12-28	\N
5416	Near Turin. Italy	1974-01-01	12:38:00
5418	Unduavi. Bolivia	1974-06-01	\N
5420	Johnstown. Pennsylvania	1974-06-01	18:05:00
5422	Mukachevo. Russia	1974-06-01	\N
5424	Near Nevia. Colombia	1974-09-01	16:36:00
5426	La Paz. Bolivia	1974-10-01	\N
5428	Cigerdu. Colombia	1974-01-17	18:15:00
5430	Rostov. Russia	1974-01-25	\N
5432	Goldendale. Washington	1974-01-25	06:58:00
5434	Izmir. Turkey	1974-01-26	07:30:00
5436	S. Dominican Pueblo. New Mexico	1974-01-27	13:15:00
5438	Winger. Minnesota	1974-01-28	07:50:00
5440	Pago Pago. American Samoa	1974-01-30	23:41:00
5442	Near Honolulu. HI	1974-02-02	21:30:00
5444	Near Souda. Crete	1974-09-02	17:30:00
5446	AtlantiOcean	1974-10-02	19:31:00
5448	Baltimore. Maryland	1974-02-22	\N
5450	San Francisco de Moxos.  Bolivia	1974-02-23	\N
5452	Near Mehrabad. Iran	1974-02-28	\N
5454	Near Ermenonville. France	1974-03-03	11:41:00
5456	Hanoi. Vietnam	1974-08-03	\N
5458	Carson City. Nevada	1974-11-03	21:42:00
5460	Bishop. California	1974-03-13	19:28:00
5462	Tehran. Iran	1974-03-15	08:07:00
5464	Francistown. Botswana	1974-04-04	02:35:00
5466	Hilo Island. Hawaii	1974-11-04	09:41:00
5468	Grogak. Bali. Indonesia	1974-04-22	15:26:00
5470	Tashkent. Uzbekistan	1974-04-24	\N
5472	Near Leningrad. Russia	1974-04-27	\N
5474	Galveston. Texas	1974-04-30	13:47:00
5476	Banos. Ecuador	1974-02-05	19:30:00
5478	Nurnberg. Germany	1974-06-05	22:22:00
5480	Springfield. Illinois	1974-05-23	16:55:00
5482	Kiev. Ukraine. USSR	1974-05-23	\N
5484	Rankin Inlet. Canada	1974-05-31	\N
5486	Monte San Isidro.  Colombia	1974-08-06	17:30:00
5488	Battambang. Khmer Republic	1974-06-27	\N
5490	Umiat. Alaska	1974-06-30	13:00:00
5492	Bogota. Colombia	1974-07-24	09:45:00
5494	Near MoHoa. Vietnam	1974-07-27	\N
5496	Mt. Apica. Canada	1974-05-08	\N
5498	Diemas. Syria	1974-09-08	\N
5500	Near Ouagadougou. Upper Volta	1974-11-08	\N
5502	Cali. Colombia	1974-12-08	14:50:00
5504	Anaktuvuk. Alaska	1974-08-13	18:35:00
5506	Margarita Island. Venezuela	1974-08-14	\N
5508	Near La Paz. Bolivia	1974-08-18	\N
5510	Near Kisangani. Zaire	1974-08-18	\N
5512	Tandjung-karang. Indonesia	1974-07-09	\N
5514	Ionian Sea . off Kefallinia. Greece	1974-08-09	09:40:00
5516	Near Charlotte. North Carolina	1974-11-09	07:34:00
5518	Phan Rang. Vietnam	1974-09-15	11:00:00
5520	Riverside. California	1974-09-19	03:50:00
5522	Fairbanks. Alaska	1974-09-22	09:55:00
5524	Lupine. Alaska	1974-01-10	21:40:00
5526	Off Saint Thomas. U.S. Virgin Islands	1974-02-10	19:30:00
5528	Medfra. Alaska	1974-09-10	\N
5530	Cairo. Egypt	1974-10-10	\N
5532	Formosa Strait	1974-10-13	\N
5534	Kassan. Alaska	1974-10-17	08:50:00
5536	Calapan. Philippines	1974-10-19	01:15:00
5538	Fort Apache. Arizona	1974-10-22	18:25:00
5540	Blair. Oklahoma	1974-10-24	19:30:00
5542	Chicao. Illinois	1974-10-24	06:35:00
5544	Willow. Alaska	1975-09-11	\N
5546	Old Man´s Camp. Alaska	1974-10-27	23:36:00
5548	Pagosa Springs. Colorado	1974-10-28	16:45:00
5550	Rae Point. Northwest Territories. Canada	1974-10-30	02:30:00
5552	Off Sonderborg. Denmark	1974-07-11	\N
5554	Hoonah. Alaska	1974-11-15	13:00:00
5556	Manila. Philippines	1974-11-15	\N
5558	Soddu. Ethiopia	1974-11-20	\N
5560	Near Nairobi. Kenya	1974-11-20	07:50:00
5562	Barcelona. Spain	1974-11-22	\N
5564	Bear Mountain.  Thiells. New York	1974-01-12	19:26:00
5566	Near Berryville. Virginia	1974-01-12	11:10:00
5568	Near Maskeliya. Sri Lanka	1974-04-12	22:15:00
5570	Near Old Harbors. Alaska	1974-11-12	\N
5572	Near MoHoa. South Vietnam	1974-12-12	\N
5574	Bukhara. Uzbekistan	1974-12-14	\N
5576	Maturin. Venezuela	1974-12-22	12:30:00
5578	Riverton Heights. Washingon	1974-12-26	18:05:00
5580	Carpathian Mts.. near Sibiu. Romania	1974-12-29	\N
5582	Moscow. Russia	1975-03-01	\N
5584	Near Nha Trang. Vietnam	1975-03-01	\N
5586	Palmer. Washington	1975-05-01	10:07:00
5588	Sierra del Aconquija. Argentina	1975-06-01	\N
5590	Near Doncello. Colombia	1975-08-01	08:30:00
5592	Whittier. California	1975-09-01	16:07:00
5594	Juneau. Alaska	1975-01-13	17:00:00
5596	Budapest. Hunary	1975-01-15	\N
5598	Sam Neva. Laos	1975-01-16	\N
5600	Istanbul. Turkey	1975-01-30	\N
5602	Santo Domingo. Dominican Republic	1975-01-30	\N
5604	Valdez. Alaska	1975-01-02	\N
5606	Houston. Texas	1975-01-02	08:58:00
5608	Manila. Philippines	1975-03-02	23:10:00
5610	Souda. Crete	1975-09-02	\N
5612	Fairbanks. Alaska	1975-02-16	19:00:00
5614	Medellin. Colombia	1975-02-22	22:12:00
5616	Near Sao Paulo. Brazil	1975-02-27	\N
5618	Waterford. Wisconsin	1975-05-03	16:18:00
5620	Pleiku. South Vietnam	1975-12-03	18:00:00
5622	Near Barito. Argentina	1975-03-16	13:40:00
5624	Singa. Sudan	1975-03-18	\N
5626	Near Quilcene. Washington	1975-03-20	23:00:00
5628	Saigon. Vietnam	1975-04-04	16:30:00
5630	Goleta. California	1975-04-22	13:42:00
5632	Deadhorse. Alaska	1975-04-28	23:00:00
5634	Near Sardinata. Colombia	1975-03-05	\N
5636	Off Cape Paterson. Australia	1975-10-05	\N
5638	Savoonga. Alaska	1975-12-05	17:45:00
5640	Near Sakon Nakhon. Thailand	1975-05-13	21:15:00
5642	Manila. Philippines	1975-03-06	\N
5644	Pedro Alfonso. Brazil	1975-06-17	\N
5646	JFK Airport. New York. New York	1975-06-24	16:05:00
5648	Toledo. Ohio	1975-06-26	22:28:00
5650	Near Saravena. Colombia	1975-06-30	19:30:00
5652	Nantes. France	1975-02-07	\N
5654	Near Colina. Chile	1975-03-07	\N
5656	Bogota. Colombia	1975-10-07	\N
5658	Homer. Alaska	1975-10-07	\N
5660	Poway. California	1975-07-15	23:48:00
5662	Near Batumi. Georgia. USSR	1975-07-15	\N
5664	Imlay City. Michigan	1975-07-26	20:30:00
5666	Taipei. Taiwan	1975-07-31	\N
5668	Near Immouzer. Morocco	1975-03-08	04:30:00
5670	Off Amapala. Honduras	1975-03-08	19:30:00
5672	Denver. Colorado	1975-07-08	16:11:00
5674	Krasnovodsk. USSR	1975-08-15	\N
5676	Near Damascus. Syria	1975-08-20	01:15:00
5678	Minford. Ohio	1975-08-25	20:42:00
5680	Off Punta Amapala. El Salvador	1975-08-30	\N
5682	Near Gambell. Alaska	1975-08-30	13:57:00
5684	Leipzig-Halle. East Germany	1975-01-09	\N
5686	Near Bahar Dar. Ethiopia	1975-11-09	\N
5688	Near Palembang. Indonesia	1975-09-24	\N
5690	Off Beirut. Lebanon	1975-09-30	\N
5692	Klua Tan Tan. Canada	1975-09-30	\N
5694	Barranquilla. Colombia	1975-09-30	\N
5696	Cairns Airport. Queensland. Australia	1975-10-23	19:28:00
5698	Zephyr Cove. Nevada	1975-10-26	11:30:00
5700	Tomonoco. Bolivia	1975-10-27	06:45:00
5702	Near Prague. Czechoslovakia	1975-10-30	09:20:00
5704	Gulf of Mexico	1975-03-11	13:02:00
5706	State College. Pennsylvania	1975-07-11	19:25:00
5708	Caoba. Guatemala	1975-11-18	\N
5710	Kharkov. Ukraine. USSR	1975-11-20	\N
5712	Near Novgorod (Russia	1975-11-22	\N
5714	Sofia. Bulgaria	1975-11-22	\N
5716	Near Bir Lahfan. Egypt	1975-11-25	18:50:00
5718	Hertfordshire. England	1975-11-29	\N
5720	Elko. Nevada	1975-11-30	09:09:00
5722	Tacloban. Philippines	1975-12-21	\N
5724	Rollinsville. Colorado	1975-12-26	14:49:00
5726	Near Al Qaysumah. Saudi Arabia	1976-01-01	05:30:00
5728	Moscow. Russia	1976-03-01	\N
5730	Anchorage. Alaska	1976-03-01	17:58:00
5732	Grants. New Mexico	1976-06-01	20:15:00
5734	Mactan Island. Philippines	1976-08-01	\N
5736	Near Bogota. Colombia	1976-01-15	\N
5738	Orofino. Idaho	1976-01-15	14:24:00
5740	Near San Borja. Bolivia	1976-01-18	15:44:00
5742	Near Loja. Ecuador	1976-01-20	07:15:00
5744	Near Shanghai. China	1976-01-21	\N
5746	Chapeco. Brazil	1976-01-22	\N
5748	Frunze. Kyrgyzstan	1976-01-30	\N
5750	Lafayette. Louisiana	1976-03-02	05:42:00
5752	Off Santa Maria. Colombia	1976-04-02	\N
5754	Madrid. Spain	1976-06-02	\N
5756	Hawk Inlet. Alaska	1976-02-09	17:15:00
5758	Van Nuys. California	1976-08-02	10:44:00
5760	Irkutsk. Russia	1976-09-02	\N
5762	St. Croix. Virgin Islands	1976-02-21	16:33:00
5764	Sibiu. Romania	1976-01-03	\N
5766	Southeastern Bolivia	1976-02-03	\N
5768	Near Voronezh. Russia	1976-06-03	01:00:00
5770	Igiugig. Alaska	1976-07-03	11:07:00
5772	San Onofre. California	1976-07-03	02:20:00
5774	Havana. Cuba	1976-03-18	\N
5776	Near Puerto Asis. Colombia	1976-02-04	\N
5778	Ketchikan. Alaska	1976-05-04	08:19:00
5780	Friday Harbor. Washington	1976-08-04	07:25:00
5782	Aspen. Colorado	1976-08-04	14:56:00
5784	Neuquen. Argentina	1976-04-14	\N
5786	Palm Desert. California	1976-04-15	14:55:00
5788	Gulf of Mexico	1976-04-23	08:08:00
5790	Anaktuvuk. Alaska	1976-04-27	11:15:00
5792	St. Thomas. Virgin Islands	1976-04-27	15:10:00
5794	Near Monze. Zambia	1976-04-05	\N
5796	Camuigan. Philippines	1976-05-05	\N
5798	Kozani. Greece	1976-11-23	09:45:00
5800	Near Cuneca. Spain	1976-09-05	16:30:00
5802	Chernigov. Ukraine. USSR	1976-05-15	\N
5804	Petersburg. Alaska	1976-05-18	08:56:00
5806	Zamboanga. Philipines	1976-05-23	\N
5808	Nacias Nguema. Equatorial Guinea	1976-01-06	\N
5810	Agana. Guam	1976-04-06	14:48:00
5812	Off Kota Kinabalu. Malaysia	1976-06-06	\N
5814	Somerset. Colorado	1976-10-06	10:07:00
5816	Entebbe. Uganda	1976-06-27	\N
5818	Daiku. Burma	1976-05-07	\N
5820	Huntsville. Missouri	1976-07-24	09:21:00
5822	Greensburg. Kansas	1976-07-27	22:05:00
5824	Bratislava. Czechoslovakia	1976-07-28	\N
5826	Billings. Vermont	1976-01-08	15:00:00
5828	Near Tehran. Iran	1976-02-08	\N
5830		1976-09-08	\N
5832	Andes Mountains. Ecuador	1976-08-15	\N
5834	Sunnyside. Utah	1976-08-25	07:10:00
5836	Shanisu River. Peru	1976-08-28	\N
5838	Sondre Stromfjord.Greenland	1976-08-28	12:40:00
5840	Near Thorney. England	1976-08-28	12:40:00
5842	Ho Chi Minh City. Vietnam	1976-08-28	\N
5844	Lajes. Azores. Portugal	1976-03-09	21:45:00
5846	Timmins. Ontario. Canada	1976-03-09	\N
5848	Off Adler. Russia	1976-09-09	14:50:00
5850	Near Gaj. Hrvatska. Yugoslavia	1976-10-09	10:15:00
5852	Karatepe Mountains. Turkey	1976-09-19	23:15:00
5854	Near Mosher Creek. Canada	1976-09-22	\N
5856	San Bernardino. California	1976-09-22	19:56:00
5858	Near Alpena. Michigan	1976-09-26	\N
5860	Nairobi. Kenya	1976-04-10	\N
5862	Off Bridgetown. Barbados	1976-06-10	13:24:00
5864	Busick. North Carolina	1976-09-10	13:02:00
5866	Near Bombay. India	1976-10-13	01:37:00
5868	Santa Cruz. Bolivia	1976-10-13	\N
5870	Hampton. Virginia	1976-10-20	19:08:00
5872	El Yopal. Colombia	1976-10-25	07:20:00
5874	Near Petrolia. Brazil	1976-10-28	\N
5876	Banjarmasin. Indonesia	1976-04-11	\N
5878	AtlantiOcean	1976-05-11	\N
5880	Shannon. Ireland	1976-12-11	17:22:00
5882	Eastville. Kisangani. Congo	1976-11-23	\N
5884	Moscow. Russia	1976-11-28	19:00:00
5886	Grand Canyon. Arizona	1976-11-29	14:20:00
5888	Cape May. New Jersey	1976-12-12	23:26:00
5890	Kiev. USSR	1976-12-17	\N
5892	Near Bangkok. Thailand	1976-12-25	03:45:00
5894	Wisconson	1976-12-28	\N
5896	Near Trujillo. Peru	1976-12-31	\N
5898	Near Palm Springs. California	1977-06-01	17:05:00
5900	Near Alma Ata.  Kazakastan. USSR	1977-01-13	18:15:00
5902	Anchorage. Alaska	1977-01-13	06:36:00
5904	Terrace. BC. Canada	1977-01-14	\N
5906	Kalvesta. Sweden	1977-01-15	\N
5908		1977-01-20	\N
5910	San Ramon. Bolivia	1977-01-27	\N
5912	Bratislava. Slovakia	1977-11-02	\N
5914	Mineralnye Vody. Russia	1977-02-15	\N
5916	Near Saglouc. Canada	1977-02-28	\N
5918	Off Aden. Yemen	1977-01-03	\N
5920	Near Cascina. Italy	1977-03-03	15:00:00
5922	Niamey. Niger	1977-04-03	03:35:00
5924	Saint Louis. Missouri	1977-06-07	23:30:00
5926	Tezzeron Lake. British Columbia. Canada	1977-04-03	10:00:00
5928	Tenerife. Canary Islands	1977-03-27	17:07:00
5930	Bainaha Valley. Indonesia	1977-03-29	\N
5932	Near Zhadanof. Russia	1977-03-30	\N
5934	New Hope. Georgia	1977-04-04	16:19:00
5936	SW of Bogota. Colombia	1977-10-04	\N
5938	Tapa AFB. Estonia	1977-04-19	\N
5940	Guatemala City. Guatemala	1977-04-27	\N
5942	Near Jericho. Jordan	1977-10-05	20:30:00
5944	Beiruit. Lebanon	1977-05-13	08:45:00
5946	Near Lusaka. Zambia	1977-05-14	09:33:00
5948	New York. New York	1977-05-16	17:35:00
5950	Havana. Cuba	1977-05-27	\N
5952	Houma. Louisiana	1977-05-31	15:48:00
5954	Natal. Brazil	1977-03-06	\N
5956	Salto-Nueva Hesperides. Uruguay	1977-06-20	\N
5958	Off Wake Island	1977-06-21	22:30:00
5960	Off Kirovograd. Ukraine	1977-08-07	\N
5962	Near Cuangar. Angola	1977-07-14	12:30:00
5964	Jima. Ethiopia	1977-07-20	17:30:00
5966	Ruby. Alaska	1977-07-21	18:45:00
5968	Near Puerto Montt. Chile	1977-07-24	19:00:00
5970	Near Yoro. Honduras	1977-07-25	08:00:00
5972	Bernard Creek. Idaho	1977-07-25	09:27:00
5974	Encino. California	1977-01-08	12:36:00
5976	Near El Bolson. Argentina	1977-07-08	\N
5978	Engle. New Mexico	1977-11-08	\N
5980	Parkersburg. West Virginia	1977-12-08	22:28:00
5982	San Jose. Costa Rica	1977-08-20	\N
5984	Deadhorse. Alaska	1977-08-20	\N
5986	Kona. Hawaii	1977-08-25	05:40:00
5988	Off Hong Kong	1977-02-09	00:35:00
5990	Minto Lake. Alaska	1977-02-09	09:10:00
5992	Near Cuenca. Ecuador	1977-04-09	\N
5994	Mt. Iliamna. Alaska	1977-06-09	14:52:00
5996	Mt. Loi Hsam Hsao. Burma	1977-08-09	\N
5998	Yakutat. Alaska	1977-12-09	00:12:00
6000	Near Albuquerque. New Mexico	1977-09-14	23:48:00
6002	Bucharest. Romania	1977-09-22	16:59:00
6004	Salida. Colorado	1977-09-23	07:25:00
6006	Kuala Lumpur.  Malaysia	1977-09-27	\N
6008	Stevens Pass. Pennsylvania	1977-01-10	14:00:00
6010	Grand Chenier. Louisiana	1977-10-10	19:45:00
6012	Near Gillsburg. Mississippi	1977-10-20	18:52:00
6014	Mindoro. Philippines	1977-10-21	10:30:00
6016	Belgrade. Yugoslavia	1977-03-11	\N
6018	San Cristobal de las Casas. Mexico	1977-03-11	\N
6020	Near Funchal. Island of Madeira. Portugal	1977-11-19	21:48:00
6022	Rome. Italy	1977-11-19	04:12:00
6024	Near Point Hope. Alaska	1977-11-21	\N
6026	Near Bariloche. Argentina	1977-11-21	10:00:00
6028	Near Beziers. France	1977-11-26	02:30:00
6030	Pinehurst. North Carolina	1977-11-29	19:17:00
6032	Near Al Bayda. Lebanon	1977-02-12	\N
6034	Straits of Johore. near Kampung Ladang. Malaysia	1977-04-12	20:15:00
6036	Intracostal City. Louisiana	1977-08-12	12:00:00
6038	Tarko-Saley. USSR	1977-09-12	\N
6040	Hierro. Canary Islands	1977-11-12	11:00:00
6042	Evansville. Indiana	1977-12-13	19:22:00
6044	Davenport. Indiana	1977-12-14	14:15:00
6046	Off Madeira. Portugal	1977-12-18	\N
6048	Near Salt Lake City. Utah	1977-12-18	01:38:00
6050	Vieques. Puerto Rico	1977-12-19	07:48:00
6052	Nanisivik. Canada	1977-12-21	\N
6054	Giddings. Texas	1977-12-22	12:42:00
6056	Willemstad. Curacao. Netherlands Antilles	1977-12-24	\N
6058	Cuenca. Ecuador	1977-12-29	\N
6060	Off Bandra. Maharashtra. India	1978-01-01	20:15:00
6062	Marion. Illinois	1978-06-01	18:50:00
6064	Dubois. Pennsylvania	1978-01-24	20:05:00
6066	Near San Vincente. Colombia	1978-01-27	13:50:00
6068	Eirunepe. Brazil	1978-01-31	\N
6070	Near Artigas. Uruguay	1978-10-02	11:20:00
6072	Richland. Washington	1978-10-02	16:50:00
6074	Cranbrook. British Columbia. Canada	1978-11-02	12:55:00
6076	Genoa Peak. Nevada	1978-02-18	04:55:00
6078	Merrill Pass. Alaska	1978-02-27	13:25:00
6080	Solvang. California	1978-02-28	10:30:00
6082	LAX. Los Angeles. California	1978-01-03	09:25:00
6084	Agana. Guam	1978-01-03	16:10:00
6086	Kano. Nigeria	1978-02-03	12:43:00
6088	Off Caracas. Venezuela	1978-03-03	\N
6090	Laurel. Mississippi	1978-07-03	20:45:00
6092	Whitelake. Michigan	1978-03-14	04:13:00
6094	Vrastsa. Bulgaria	1978-03-16	\N
6096	Near Riverside. California	1978-03-22	20:42:00
6098	Okaraba. Burma	1978-03-25	06:55:00
6100	Volta Redonda. Rio de Janeiro. Brazil	1978-03-26	09:10:00
6102	Off Galveston. Texas	1978-04-04	23:20:00
6104	St. Thomas. Virgin Islands	1978-05-04	16:45:00
6106	Near Murmansk. Russia	1978-04-20	\N
6108	Arlington. Indiana	1978-04-23	21:47:00
6110	Upolu. West Samoa	1978-04-27	\N
6112	Bogota. Colombia	1978-04-29	\N
6114	Whittier. AK	1978-09-13	11:30:00
6116	Pensacola. Florida	1978-08-05	21:20:00
6118	Kouchi. Japan	1978-05-18	\N
6120	Pochinok. Russia	1978-05-19	\N
6122	Saint John´s. Newfoundland	1978-06-23	\N
6124	Toronto. Canada	1978-06-26	08:08:00
6126	Off Bergen. Norway	1978-06-26	\N
6128	Near Nairobi. Kenya	1978-07-24	\N
6130	Sogamoso. Bolivia	1978-08-14	\N
6132	Laboucher Bay. Alaska	1978-08-25	\N
6134	Raton. New Mexico	1978-08-25	23:37:00
6136	Papun. Burma	1978-08-26	\N
6138	Las Vegas. Nevada	1978-08-30	07:47:00
6140	AtlantiOcean	1978-02-09	10:21:00
6142	Coal Harbour. BC. Canada	1978-03-09	\N
6144	Conakry. Guinea	1978-03-09	\N
6146	Near Kariba. Rhodesia (Zimbabwe)	1978-03-09	17:30:00
6148	Savoy. Illinois	1978-09-09	18:26:00
6150	Near Mexico City. Mexico	1978-09-09	\N
6152	Wrangell. Alaska	1978-09-09	14:47:00
6154	Paranaque. Philippines	1978-09-14	14:50:00
6156	AtlantiOcean	1978-09-17	\N
6158	Monroe. Massachusetts	1978-09-25	\N
6160	San Diego. California	1978-09-25	09:02:00
6162	San Juan. Puerto Rico	1978-09-26	18:45:00
6164	Near Kuopio. Finland	1978-03-10	\N
6166	Near Mandalay. Myanmar	1978-03-10	\N
6168	Sverdlovsk. Russia	1978-07-10	\N
6170	Kenai. Alaska	1978-08-10	09:25:00
6172	Off Bellona. Solomon Islands	1978-10-22	\N
6174	Gulf of Sivash. USSR	1978-10-23	\N
6176	Torreon. New Mexico	1978-10-24	10:04:00
6178	BelÃ©m. Brazil	1978-10-31	\N
6180	Off Alexandria. Egypt	1978-05-11	\N
6182	Lubbox. Texas	1978-11-13	02:35:00
6184	Near Katunayake. Sri Lanka	1978-11-15	23:30:00
6186	Hays. Kansas	1978-11-16	03:00:00
6188	Off Marie Galante Island. West Indies	1978-11-18	\N
6190	Near Leh. India	1978-11-19	11:00:00
6192	Near Rubio. Venezuela	1978-11-21	\N
6194	Hydaburg. Alaska	1978-11-25	15:55:00
6196	Hartford. Connecticut	1978-11-28	09:03:00
6198	Near Steamboat Springs. Coloado	1978-04-12	19:45:00
6200	Selvapiana. Italy	1978-12-16	\N
6202	Hyderabad. India	1978-12-17	\N
6204	Morton. Illinois	1978-12-19	16:58:00
6206	Chevak. Alaska	1978-12-21	14:30:00
6208	Near Cinisi. Sicily. Italy	1978-12-23	00:39:00
6210	Turks & Caicos Islands. Caribbean	1978-12-26	\N
6212	Portland. Oregon	1978-12-28	18:15:00
6214	Templeton. Massachusetts	1979-11-01	11:10:00
6216	Minsk. Russia	1979-01-15	\N
6218	Near Belgorod. Russia	1979-01-18	\N
6220	Grand Rapids. Michigan	1979-01-19	19:22:00
6222	Bechar. Algeria	1979-01-24	19:40:00
6224	Rodez. France	1979-01-27	\N
6226	Trebinje. Bosnia Herzegovina	1979-05-02	\N
6228	Near Agudos. Brazil	1979-08-02	\N
6230	Clarksburg. West Virginia	1979-12-02	13:00:00
6232	Near Kariba. Rhodesia	1979-12-02	17:00:00
6234	Manakau Harbor. New Zealand	1979-02-17	14:35:00
6236	Barentu. Ethiopia	1979-02-19	\N
6238	Near Moanda. Gabon	1979-02-26	\N
6240	Greensville. Mississippi	1979-02-26	14:25:00
6242	Gulfport. Mississippi	1979-01-03	15:04:00
6244	Galesburg. Illinois	1979-02-03	10:14:00
6246	Near Probolinggo. Indonesia	1979-06-03	18:55:00
6248	Off Marina del Rey. California	1979-10-03	17:52:00
6250	Near Doha Airport. Qatar	1979-03-14	\N
6252	Bejing. China	1979-03-14	09:00:00
6254	Near Moscow. Russia	1979-03-17	19:44:00
6256	Chardzhow. Russia	1979-03-20	\N
6258	Liepaya. Latvia	1979-03-22	00:55:00
6260	Nightmute. Alaska	1979-03-22	11:13:00
6262	Luanda. Angola	1979-03-26	\N
6264	Ste. Foy. PQ. Canada	1979-03-29	\N
6266	Carrizozo. New Mexico	1979-12-04	09:45:00
6268	Off Avalon. California	1979-04-14	\N
6270	Newark. New Jersey	1979-04-18	18:23:00
6272	Near Cuenca. Ecuador	1979-04-23	\N
6274	Baykity. Russia	1979-04-25	\N
6276	Chicago O´Hare. Illinois	1979-05-25	15:04:00
6278	Shungnak. Alaska	1980-01-14	14:00:00
6280	Bullen Point. Alaska	1979-05-25	20:40:00
6282	Off Dakar. Senegal	1979-05-27	\N
6284	Rockland. Maine	1979-05-30	20:55:00
6286	Near Leh. India	1979-07-06	11:00:00
6288	Chicago. Illinois	1979-09-06	14:51:00
6290	Hyannis. Massachusetts	1979-06-17	22:48:00
6292	Near Medan Airfield. Indonesia	1979-11-07	19:00:00
6294	Anchorage. Alaska	1979-12-07	09:32:00
6296	Bua. Fiji	1979-12-07	\N
6298	Off Honolulu. Hawaii	1979-07-20	19:30:00
6300	Beirut. Lebanon	1979-07-23	\N
6302	St. Croix. Virgin Islands	1979-07-24	09:22:00
6304	Off Sumburgh. Shetlands. England	1979-07-31	\N
6306	Canton. Ohio	1979-02-08	\N
6308	Leningrad. USSR	1979-03-08	\N
6310	Near Panvel. India	1979-04-08	\N
6312	Pistol Creek. Idaho	1979-04-08	09:30:00
6314	Flushing. New York	1979-09-08	16:43:00
6316	Near Katab. Egypt	1979-11-08	\N
6318	Dneprodzerzhinsk. Ukraine. USSR	1979-11-08	13:35:00
6320	Bogota. Colombia	1979-08-22	\N
6322	Near Enisseysk. USSR	1979-08-23	\N
6324	Near Kirsanov. Russia	1979-08-29	\N
6326	Frobisher Bay. Canada	1979-08-29	23:00:00
6328	Andema. Russia	1979-03-09	\N
6330	Nice. France	1979-03-09	\N
6332	Off Taipei. Taiwan	1979-11-09	\N
6334	Near Klamath Falls. Oregon	1979-09-14	20:47:00
6336	Near Sarroch.  Italy	1979-09-14	00:47:00
6338	Blink Horn Point. Canada	1979-09-18	\N
6340	Merced. California	1979-09-19	\N
6342	Porpoise Bay. British Columbia Canada	1979-09-30	\N
6344	Juneau. Alaska	1979-03-10	12:13:00
6346	Covington. Kentucky	1979-08-10	10:08:00
6348	Athens. Greece	1979-08-10	\N
6350	Anchorage. Alaska	1979-08-10	16:07:00
6352	Bloomington. Indiana	1979-10-22	19:40:00
6354	Near San Ysidro. California	1979-10-27	23:46:00
6356	Tijuana. Mexico	1979-10-28	\N
6358	Mexico City. Mexico	1979-10-31	05:42:00
6360	Big Trout Lake. Canada	1979-01-11	\N
6362	Greenville. South Carolina	1979-02-11	11:12:00
6364	Salem. Oregon	1979-12-11	20:29:00
6366	Near Chicago. Illinois	1979-11-15	12:00:00
6368	Vologda. Russia	1979-11-16	18:40:00
6370	Granger. Utah	1979-11-18	04:56:00
6372	Takla Narrows. British Columbia. Canada	1979-11-26	\N
6374	Near At Ta´if. Jeddah. Saudi Arabia	1979-11-26	02:03:00
6376	Near Mt. Erebus. Ross Ice Shelf. Antarctica	1979-11-28	12:49:00
6378	San Andres Island. Colombia	1979-11-30	\N
6380	Nome. Alaska	1979-03-12	\N
6382	Cherskiy. Russia	1979-09-12	\N
6384	Apolo. Bolivia	1979-12-12	\N
6386	Cerro Toledo Mountain. Colombia	1979-12-19	\N
6388	Near Puerto Esperanza. Peru	1979-12-22	14:00:00
6390	Ankara. Turkey	1979-12-23	\N
6392	Menari. Papua New Guinea	1979-12-23	\N
6394	Haiti	1980-02-01	\N
6396	Over the AtlantiOcean	1980-11-01	01:23:00
6398	Elburz Mtns.. near Laskarak. Markazi. Iran	1980-01-21	19:10:00
6400	Mt. Cemonyet.  Indonesia	1980-01-23	\N
6402	Near Mandalay. Burma	1980-01-24	06:20:00
6404	Baracoa. Cuba	1980-03-02	\N
6406	Sydney. NSW. Australia	1980-02-21	\N
6408	Leeville. Louisiana	1980-02-21	08:50:00
6410	Near Agra. India	1980-02-22	\N
6412	Manila. Philippines	1980-02-27	06:00:00
6414	Near Warsaw. Poland	1980-03-14	11:00:00
6416	Near Yenice. Turkey	1980-03-14	15:00:00
6418	Houston. Texas	1980-03-21	19:49:00
6420	Off Macae. Brazil	1980-03-21	\N
6422	Deer Lake. Canada	1980-03-24	\N
6424	Cuiaba. Brazil	1980-03-30	\N
6426	Florianopolis. Brazil	1980-12-04	20:40:00
6428	Posht-i-Badam. Iran	1980-04-24	\N
6430	Tenerife. Canary Islands	1980-04-25	13:21:00
6432	Don Muang. Thailand	1980-04-27	06:55:00
6434	Campinas. Brazil	1980-05-13	\N
6436	Off Varadero. Cuba	1980-05-13	\N
6438	Near Rio Hacha. Colombia	1980-12-21	14:23:00
6440	Off Sarasota. Florida	1980-05-19	12:05:00
6442	Gran Canaria Island. Spain	1980-05-28	12:25:00
6444	Near Yachiba. Bolivia	1980-02-06	\N
6446	Near Matala. Angola	1980-08-06	15:33:00
6448	Valley. Nebraska	1980-12-06	15:46:00
6450	Near Dushanbe. Russia	1980-12-06	\N
6452	Lihue. Hawaii	1980-06-15	11:06:00
6454	Tyrrhenian Sea.  off Ustica. Italy	1980-06-27	20:59:00
6456	Near Tepic. Mexico	1980-07-07	\N
6458	Nar Alma-Ata. Kasakastan. USSR	1980-07-07	00:39:00
6460	Golovin. Alaska	1980-12-07	\N
6462	Tusayan. Arizona	1980-07-21	17:02:00
6464	Philadelphia. Pennsylvania	1980-07-25	07:13:00
6466	Cerro Lilio. Mexico	1980-01-08	\N
6468	Togiak. Alaska	1980-03-08	16:15:00
6470	Houma. Louisiana	1980-06-08	17:40:00
6472	Nouadhibou. Mauretania	1980-07-08	03:00:00
6474	Rio de Janeiro. Brazil	1980-11-08	\N
6476	Sa Cabaneta. Spain	1980-08-13	21:55:00
6478	Qatar. Qatar	1980-12-23	23:12:00
6480	Ramstein AFB. West Germany	1981-01-14	\N
6482	Near Riyadh. Saudi Arabia	1980-08-19	19:08:00
6484	Near Jakarta. Indonesia	1980-08-26	\N
6486	Near Montelimar. France	1980-05-09	\N
6488	Puerto Olaya. Colombia	1980-10-09	\N
6490	Off Freeport. Bahamas	1980-12-09	20:58:00
6492	Kindu. Zaire	1980-09-14	\N
6494	Near Medina. Saudi Arabia	1980-09-15	\N
6496	Near Kindu. Zaire	1980-09-17	\N
6498	Mount Smjorfjollum. Iceland	1980-09-22	\N
6500	Badakshan. Afghanistan	1980-09-30	\N
6502	Gainsville. Florida	1980-10-24	09:47:00
6504	Caracas. Venezuela	1980-04-11	\N
6506	Near Cairo. Egypt	1980-12-11	23:53:00
6508	Annanberg. Papua New Guinea	1980-11-17	\N
6510	Seoul. South Korea	1980-11-19	\N
6512	Near Medellin. Colombia	1980-11-24	\N
6514	Pecos City. Texas	1980-11-28	21:35:00
6516	Dar es Salaam. Tanzania	1980-05-12	\N
6518	Michigan City. IN	1980-07-12	16:47:00
6520	Cold Bay. Alaska	1980-12-12	19:51:00
6522	Tumut.. Australia	1980-12-16	\N
6524	Mt. Elena. Colombia	1981-08-27	\N
6526	Spokane. Washington	1981-01-20	11:27:00
6528	Winnemucca. Nevada	1981-01-27	22:30:00
6530	Near Leningrad. Russia	1981-07-02	\N
6532	Houma. Louisiana	1981-10-02	21:16:00
6534	White Plains. New York	1981-11-02	18:40:00
6536	Avalon. California	1981-02-22	18:20:00
6538	Belem. Brazil	1981-02-24	\N
6540	North Adams. Massachusetts	1981-02-25	17:30:00
6542	Off Tabones Island  Philippines	1981-02-26	05:25:00
6544	Fallon. Nevada	1981-02-03	08:13:00
6546	Moroni. Comoro Islands	1981-10-03	05:00:00
6548	Shemya AFB. Alaska	1981-03-15	\N
6550	Redzikowo. Poland	1981-03-26	\N
6552	Galena. Alaska	1981-03-27	16:32:00
6554	Mt. Hagen. Papua. New Guinea	1981-01-04	\N
6556	Laguna Soliz. Bolivia	1981-06-04	\N
6558	Cincinnati. Ohio	1981-07-04	11:36:00
6560	Loveland. Colorado	1981-04-17	16:01:00
6562	Pekanbaru. Indonesia	1981-04-28	07:45:00
6564	Near Fredrick. Maryland	1981-06-05	10:50:00
6566	Rio de la Plata. Argentina	1981-07-05	10:53:00
6568	Near Menongue. Angola	1981-05-16	\N
6570	Pinarete Mountain. Mexico	1981-05-21	\N
6572	Near Zumba. Ecuador	1981-05-22	\N
6574	Near Guachala. Ecuador	1981-05-24	15:00:00
6576	Avalon. California	1981-05-28	16:40:00
6578	Cairo. Egypt	1981-05-29	\N
6580	Ust-Barguzin. Russia	1981-06-13	\N
6582	Hualien. Taiwan	1981-06-13	\N
6584	Miraflores. Colombia	1981-06-17	\N
6586	Nailstone. England	1981-06-26	\N
6588	Muskegon. Michigan	1981-06-30	18:11:00
6590	Near Yerevan. Armenia	1981-07-18	15:44:00
6592	Mogadishu. Somalia	1981-07-20	\N
6594	Kansas City. Kansas	1981-07-23	12:24:00
6596	Madagascar	1981-07-24	\N
6598	Caruru. Colombia	1981-07-25	\N
6600	Chihuahua. Mexico	1981-07-27	\N
6602	Skagway. Alaska	1981-11-08	19:15:00
6604	Near Sanyi. Miao-li. Taiwan	1981-08-22	10:00:00
6606	Near Zavitinsk. Russia	1981-08-24	\N
6608	Zeya. Russia	1981-08-29	20:30:00
6610	Paipa. Colombia	1981-02-09	\N
6612	Zeleznogorsk. Russian	1981-09-18	\N
6614	Nellis AFB. Nevada	1981-09-21	\N
6616	Near Babaeski. Turkey	1981-09-22	12:00:00
6618	Tehran. Iran	1981-09-29	19:00:00
6620	Casper. Wyoming	1981-01-10	15:00:00
6622	Moerdijk. Netherlands	1981-06-10	17:12:00
6624	Kufstein. Austria	1981-10-15	\N
6626	St. Thomas. U.S. Virgin Islands	1981-10-26	18:24:00
6628	Bafoussam. Cameroon	1981-10-31	\N
6630	Sierra de Guerro. Mexico	1981-08-11	\N
6632	Mount Pocono. Pennsylvania	1981-11-15	21:12:00
6634	Norilsk. Russia	1981-11-16	19:30:00
6636	Biratnagar. Nepal	1981-11-19	\N
6638	Castries. Saint Lucia Island	1981-11-30	\N
6640	Mt. San Pietro. near Ajaccio. Corsica. France	1981-01-12	08:53:00
6642	Honolulu. Hawaii	1981-05-12	19:08:00
6644	Tyonek. Alaska	1981-10-12	16:40:00
6646	Mt. McKinley. AK	1981-12-15	13:30:00
6648	Kuala Belait. Brunei	1981-12-16	\N
6650	Near Covenas. Colombia	1981-12-18	13:06:00
6652	Cape Town. South Africa	1983-05-06	13:23:00
6654	Durango. Colorado	1981-12-31	20:00:00
6656	Near Gelendzhik. USSR	1982-07-01	\N
6658	Helena. Montana	1982-07-01	\N
6660	Washington. D.C.	1982-01-13	16:01:00
6662	Near Addis Ababa. Ethiopia	1982-01-14	\N
6664	Logan Airport.  Boston. Massachusett	1982-01-23	19:36:00
6666	Constanta. Romania	1982-01-25	\N
6668	Djibouti. Djbouti	1982-03-02	07:30:00
6670	Island of Cheju. South Korea	1982-06-02	15:00:00
6672	Near Srinagar. India	1982-07-02	\N
6674	Tokyo. Japan	1982-09-02	08:47:00
6676	Mt. Ipao. Philippines	1982-09-02	\N
6678	Cerro el Tablazo. Colombia	1982-02-19	\N
6680	Providence. Rhode Island	1982-02-21	15:33:00
6682	Mehamn. Norway	1982-11-03	13:26:00
6684	Mount Galunggung. Indonesia	1982-06-24	20:44:00
6686	Southern Belarus. USSR	1982-06-28	10:50:00
6688	Leesburg. Florida	1982-03-19	10:30:00
6690	Near Woodstock. Illinois	1982-03-19	21:10:00
6692	Branti Airport. Indonesia	1982-03-20	\N
6694	Queate. Colombia	1982-03-26	\N
6696	Near Tanana. Alaska	1982-11-04	17:35:00
6698	Near Erzurum. Turkey	1982-04-13	14:40:00
6700	Near Yangshuo. Guangxi. China	1982-04-26	16:45:00
6702	Hakalau. Hawaii	1982-04-28	21:34:00
6704	Gulf of Thailand	1982-04-30	\N
6706	Off Aden. Yemen	1982-09-05	\N
6708	Judsonia. Arkansas	1982-12-05	\N
6710	South AtlantiOcean	1982-05-19	19:15:00
6712	Brazilia. Brazil	1982-05-25	\N
6714	Off Natuma Island. Indonesia	1982-05-28	\N
6716	Near Songnam-si. South Korea	1982-01-06	14:40:00
6718	Near Pacatuba. Brazil	1982-08-06	02:25:00
6720	Tabatinga. Brazil	1982-12-06	\N
6722	Bombay. India	1982-06-22	\N
6724	Oganda. Gabon	1982-03-07	\N
6726	Near Moscow. Russia	1982-06-07	00:05:00
6728	Kenner. Louisiana	1982-09-07	16:09:00
6730	Jolo. Philippines	1982-11-07	\N
6732	Oxbow. Oregon	1982-07-14	20:49:00
6734	Castaic. California	1982-07-23	02:30:00
6736	Near Sitka. Alaska	1982-07-24	16:00:00
6738	Concord. New Hampshire	1982-04-08	04:10:00
6740	PacifiOcean	1982-11-08	\N
6742	Mindat. Myanmar	1982-12-08	\N
6744	Sukhumi. Georgia. USSR	1982-08-14	\N
6746	Near Managua. Nicaragua	1982-08-14	09:00:00
6748	Off Castries. Saint Lucia	1982-08-20	\N
6750	Knotsville. Tennessee	1982-08-31	14:30:00
6752	Near Valladolid. Ecuador	1982-01-09	\N
6754	Rio Branco. Brazil	1982-04-09	\N
6756	Near Mannheim. West Germany	1982-11-09	12:50:00
6758	Near Malaga. Spain	1982-09-13	12:00:00
6760	Near Nondalton. Alaksa	1982-09-17	09:30:00
6762	Two Bridge Lake. British Colombia. Canada	1982-09-18	\N
6764	Near Kotzbue. Alaska	1982-09-21	11:00:00
6766	Luxembourg. Luxembourg	1982-09-29	\N
6768	AtlantiOcean	1982-10-20	\N
6770	Off Taiwan	1982-11-17	\N
6772	Cullman. Alabama	1982-11-23	22:40:00
6774	Lubango. Angola	1982-11-29	\N
6776	Quetame. Colombia	1982-11-30	\N
6778	Douglassville. Pennsylvania	1982-01-12	22:05:00
6780	Near Pueblo. Colorado	1982-07-12	19:10:00
6782	Near San Andres de Boca. Nicaragua	1982-12-09	14:30:00
6784	Near Klawock. Alaksa	1982-09-12	13:10:00
6786	La Serena. Chile	1982-09-12	13:27:00
6788	Defiance. Ohio	1982-12-15	18:40:00
6790	Mesvres. France	1982-12-22	\N
6792	Rostov-on-Don. Russia	1982-12-23	\N
6794	Guangzhou. China	1982-12-24	\N
6796	Brainerd. Minnesota	1983-09-01	\N
6798	Detroit. Michigan	1983-11-01	02:50:00
6800	Near Karimui. Papua New Guinea	1983-01-14	\N
6802	Ankara. Turkey	1983-01-16	\N
6804	Fayetteville. North Carolina	1983-02-13	\N
6806	Brooksville. Florida	1983-02-23	23:17:00
6808	Off Macae. Brazil	1983-09-03	\N
6810	Near Shach Goan. Afghanistan	1983-10-03	\N
6812	Barquisimeto Venezuela	1983-11-03	07:00:00
6814	Jeffersonville. Georgia	1983-03-24	02:36:00
6816	Newark. New Jersey	1983-03-30	05:14:00
6818	Guangzhou. China	1983-03-04	\N
6820	Selawik. Alaska	1983-07-04	14:55:00
6822	Near Khartoum. Sudan	1983-04-16	\N
6824	Leninakan. Russia	1983-04-19	18:09:00
6826	Near Toba. Japan	1983-04-19	07:20:00
6828	Iwakuni AB. Japan	1983-04-26	17:37:00
6830	Guayaquil. Ecuador	1983-04-29	15:10:00
6832	Jacksonville. Florida	1983-04-30	\N
6834	Near Ban Ta Khli. Thailand	1983-05-05	10:20:00
6836	En route Miami. FL - Nassau. Bahamas	1983-05-05	09:15:00
6838	Tanjung Karang. Indonesia	1983-02-06	\N
6840	Cincinnati International Airport. Covington/Hebron. Kentucky	1983-02-06	19:20:00
6842	Off Quemoy. Taiwan	1983-06-06	12:40:00
6844	Kauai. Hawaii	1983-06-16	\N
6846	Niela. Mali	1983-06-21	\N
6848	Cortez. Colorado	1983-06-25	10:15:00
6850	Las Vegas. Nevada	1983-06-28	\N
6852	Labe. Guinea	1983-01-07	\N
6854	Near Cuenca. Azuay. Ecuador	1983-11-07	07:40:00
6856	Off Scilly Islands. UK	1983-07-16	\N
6858	Gimli. Manitoba. Canada	1983-07-23	19:30:00
6860	Near Ambone. Indonesia	1983-07-26	\N
6862	Off Bula. Indonesia	1983-05-08	\N
6864	Evart. Michigan	1983-11-08	17:45:00
6866	Grand Canyon. Arizona	1983-08-17	12:27:00
6868	Near Dundo. Angola	1983-08-27	\N
6870	Adavale. Queensland. Australia	1983-08-28	\N
6872	Near Alma-Ata. Kazakastan. USSR	1983-08-30	23:17:00
6874	Near Sakhalin Island. Russia	1983-01-09	18:26:00
6876	Smithers. British Columbia. Canada	1983-02-09	\N
6878	Guilin. China	1983-09-14	09:34:00
6880	Near Mina Jebel Ali. UAE	1983-09-23	15:30:00
6882	Flagstaff. Arizona	1983-09-23	19:30:00
6884	Off Lanyu Island. Taiwan	1983-09-28	\N
6886	Tashkent. Uzbekistan	1987-01-16	08:11:00
6888	Springfield. Missouri	1983-05-10	12:00:00
6890	Aracatuba. Brazil	1983-07-10	\N
6892	Near Lonkin. Myanmar	1983-08-10	\N
6894	Pinckneyville. Illinois	1983-11-10	20:53:00
6896	Middletown. Pennsylvania	1983-10-28	13:35:00
6898	Lubango. Huila. Angola	1983-08-11	15:20:00
6900	Landsdowne House. Canada	1983-11-23	\N
6902	Midland. Texas	1983-11-26	15:30:00
6904	Madrid-Barajas. Spain	1983-11-27	10:06:00
6906	Near Enugu. Nigeria	1983-11-28	\N
6908	Near Madrid. Spain	1983-07-12	09:40:00
6910	Put-In-Bay. Ohio	1983-09-12	21:30:00
6912	Near Medellin. Colombia	1983-12-14	15:30:00
6914	Paulatuk. Northwest Territory. Canada	1983-12-17	13:10:00
6916	Leshukonskoye. Russia	1983-12-24	\N
6918	Amman. Jordan	1984-02-01	\N
6920	Saint Louis. Missouri	1984-09-01	22:30:00
6922	Sofia. Bulgaria	1984-10-01	\N
6924	Cochabamba. Bolivia	1984-01-13	\N
6926	Near Manado. Indonesia	1984-01-24	\N
6928	Izhevsk. Russia	1984-01-28	\N
6930	Terre Haute. Indiana	1984-01-30	06:30:00
6932	Near Debre Zelt. Ethiopia	1984-02-16	\N
6934	Near San Gerardo. El Salvador	1984-02-19	\N
6936	Prosperine. Australia	1984-02-20	\N
6938	Colombia	1984-02-24	\N
6940	Off Matsuyama. Japan	1984-02-27	\N
6942	JFK Airport. New York. New York	1984-02-28	16:16:00
6944	Near Borja. Spain	1984-02-28	19:30:00
6946	Cumberland. Maryland	1984-05-03	\N
6948	Barranquilla. Colombia	1984-03-13	07:47:00
6950	San Borja. Bolivia	1984-03-16	\N
6952	Near Hunghae. South Korea	1984-03-24	04:00:00
6954	Near Rurrenabaque. Bolivia	1984-03-24	\N
6956	Off  Bimini	1984-03-31	08:30:00
6958	Florianopolis. Brazil	1984-04-04	\N
6960	Imperatriz. Brazil	1984-04-18	\N
6962	Elbet Beni Salama. Egypt	1984-08-05	\N
6964	Ushuaia. Argentina	1984-05-15	\N
6966	Chalkhill. Pennsylvania	1984-05-30	01:45:00
6968	Windsor Locks. Connecticut	1984-04-06	\N
6970	Island Beach. New Jersey	1984-06-19	02:55:00
6972	Near Sao Pedro d´ Aldeia. Brazil	1984-06-28	\N
6974	Port Hardy. British Columbia. Canada	1984-01-07	11:34:00
6976	Off Buenavista. Philippines	1984-11-07	\N
6978	Sigonella AFB. Italy	1984-12-07	\N
6980	Ouzinkie. Alaska	1984-07-21	09:20:00
6982	Tau Island. American Samoa	1984-07-21	13:40:00
6984	Anchorage. Alaska	1984-07-25	07:30:00
6986	Vieques. Puerto Rico	1984-02-08	08:05:00
6988	Dacca. Bangladesh	1984-05-08	\N
6990	Nawabshah. Pakistan	1984-05-08	\N
6992	Machakos. Kenya	1984-08-08	\N
6994	Near Memphis. Tennessee	1984-11-08	01:00:00
6996	Near Wamena. Indonesia	1984-08-15	\N
6998	Pontiac. Michigan	1984-11-12	19:32:00
7000	San Luis Obispo. California	1984-08-24	11:18:00
7002	Douala. Cameroon	1984-08-30	\N
7004	Mt. Musaka. Papua. New Guinea	1984-06-09	\N
7006	Near Naples. Florida	1984-07-09	21:10:00
7008	Near the Kwango River. Zaire	1984-11-09	\N
7010	Opole. Poland	1984-09-16	\N
7012	Quito. Ecuador	1984-09-18	11:04:00
7014	Near Sarakchar. Afghanistan	1984-09-21	\N
7016	near Orillia. Ontario. Canada	1984-09-26	11:55:00
7018	Ausin. Nevada	1984-02-10	08:15:00
7020	Fort Franklin. Canada	1984-09-10	\N
7022	Near Omsk. Russia	1984-11-10	05:40:00
7024	Goose Bay. Newfoundland. Canada	1984-11-10	17:37:00
7026	Near Kabul. Afghanistan	1984-10-27	\N
7028	Near Kabul. Afghanistan	1984-10-28	\N
7030	Off Davao. Philippines	1984-10-31	\N
7032	Inverness. England	1984-11-19	\N
7034	Loja. Peru	1984-11-20	\N
7036	Near Kostroma. USSR	1984-04-12	\N
7038	Jacksonville. Florida	1984-06-12	18:14:00
7040	Jammuin. India	1986-03-22	\N
7042	Bainbridge. New York	1984-12-17	23:00:00
7044	Near Jaen. Peru	1984-12-19	14:00:00
7046	Near Bhojpur. Nepal	1984-12-22	\N
7048	Near Kranoyarsk. Russia	1984-12-23	18:10:00
7050	Near La Paz. Bolivia	1985-01-01	20:30:00
7052	Kansas City. Kansas	1985-09-01	07:00:00
7054	Jinan. China	1985-01-18	\N
7056	Havana. Cuba	1985-01-19	08:22:00
7058	Carson. New Mexico	1985-01-20	23:15:00
7060	Reno. Nevada	1985-01-21	01:04:00
7062	Off Puerto Castilla. Honduras	1985-01-22	09:35:00
7064	Near Buga. Colombia	1985-01-23	10:35:00
7066	Cerro el Plateado. Colombia	1985-01-23	10:35:00
7068	Whitefield. New Hampshire	1985-01-02	20:25:00
7070	Minsk. Belarus. USSR	1985-01-02	\N
7072	Soldotna. Alaska	1985-04-02	19:51:00
7074	Altus. Oklahoma	1985-06-02	\N
7076	Nasosny. Russia	1989-10-18	\N
7078	Central Point. Oregon	1985-09-02	12:48:00
7080	Banjarmasin. Indonesia	1985-02-16	\N
7082	Near Durango. Vizcaya. Spain	1985-02-19	09:27:00
7084	300 nm NW of San Francisco. California	1985-02-19	10:15:00
7086	Timbuktu. Mali	1985-02-22	\N
7088	Near Valdez. Alaska	1985-02-25	\N
7090	Fort Hood. Texas	1985-12-03	\N
7092	Near Florencia. Colombia	1985-03-28	09:50:00
7094	Salta. Argentina	1985-11-04	\N
7096	Athens. Louisiana	1985-04-13	19:40:00
7098	Near Phuket. Thailand	1985-04-15	23:30:00
7100	Las Cruces. New Mexico	1985-04-16	11:37:00
7102	Tuba City. Arizona	1985-04-19	\N
7104	Kulusuk. Greenland	1985-04-20	\N
7106	Santa Rosa. Bolivia	1985-04-20	\N
7108	Near L´vov. Ukraine. USSR	1985-03-05	12:00:00
7110	Off Tanegashima. Japan	1985-06-05	12:50:00
7112	Vilanculos. Mozambique	1985-05-15	\N
7114	Golovin. Alaska	1985-05-16	13:45:00
7116	Harrison. Arkansas	1985-05-21	20:15:00
7118	Cabimas. Venezuela	1985-05-28	\N
7120	Nashville. Tennessee	1985-05-31	23:00:00
7122	Athens. Greece	1985-06-14	\N
7124	Juara. Brazil	1985-06-23	\N
7126	AtlantiOcean. 110 miles West of Ireland	1985-06-23	07:15:00
7128	Charlotte. North Carolina	1985-06-28	\N
7130	Near Uchuduk. Uzbekistan. USSR	1985-10-07	23:45:00
7132	Near Erie. Pennsylvania	1985-07-19	03:43:00
7134	Leticia. Colombia	1985-07-24	17:00:00
7136	Ft. Worth-Dallas. Texas	1985-02-08	18:06:00
7138	Mt. Osutaka. near Ueno Village. Japan	1985-12-08	18:56:00
7140	Mulia. Indonesia	1985-12-08	\N
7142	Aden. Yemen	1985-08-15	\N
7144	Gulkana. Alaska	1985-08-20	02:05:00
7146	Manchester. England	1985-08-22	06:13:00
7148	Auburn. Maine	1985-08-25	22:05:00
7150	Beale AFB. California	1985-08-27	\N
7152	Kokoda. Papua New Guinea	1985-08-30	\N
7154	Near Kandahar. Afghanistan	1985-04-09	11:00:00
7156	Milwaukee. Wisconsin	1985-06-09	15:21:00
7158	Afghanistan	1985-09-22	\N
7160	Grottoes Grove. Virginia	1985-09-23	10:20:00
7162	Near Kharkov. Ukraine	1985-09-25	\N
7164	Jenkinsburg. Georgia	1985-09-29	12:30:00
7166	Tory Canal. New Zealand	1985-04-10	\N
7168	VitÃ³ria da Conquista. Brazil	1985-09-10	19:00:00
7170	Off South Head. Australia	1985-10-10	01:00:00
7172	Near Beni. Bolivia	1985-11-10	\N
7174	Near Kutayissi. USSR	1985-11-10	10:09:00
7176	Homer City. Pennsylvania	1985-11-10	21:40:00
7178	Putao. Myanmar	1985-12-10	\N
7180	Near Juneau. Alaska	1985-10-22	20:45:00
7182	Bethel. Alaska	1985-01-11	09:50:00
7184	Dothan. Alabama	1985-11-15	\N
7186	Quinhagaki. Alaska	1985-11-16	\N
7188	Near Sibyak. Indonesia	1985-11-21	\N
7190	Luqa. Malta	1985-11-24	20:15:00
7192	Near Luassingua. Angola	1985-11-25	\N
7194	Gander. Newfoundland. Canada	1985-12-12	06:45:00
7196	Nepal	1985-12-30	\N
7198	De Kalb. Texas	1985-12-31	17:14:00
7200	Near Peten. Guatemala	1986-01-18	08:00:00
7202	Ellendale. Minnesota	1986-01-21	04:25:00
7204	Sao Paulo. Brazil	1986-01-28	07:45:00
7206	Las Lomitas. Mexico	1986-01-29	\N
7208	Kasongo. Zaire	1986-05-02	\N
7210	Off Makung. Taiwan	1986-02-16	\N
7212	Near Bugulma. Russia	1986-02-03	03:03:00
7214	Bern. Switzerland	1986-03-03	\N
7216	Alpena. Michigan	1986-03-13	22:15:00
7218	Near Naha. Indonesia	1986-03-20	\N
7220	Goose Bay. Newfoundland. Canada	1986-03-24	09:55:00
7222	Omsk. Soviet Union	1986-03-25	\N
7224	Bangui. Central African Republic	1986-03-27	\N
7226	Near Pemba. Mozambique	1986-03-30	10:15:00
7228	Maravatio. Mexico	1986-03-31	09:11:00
7230	Near Athens. Greece	1986-02-04	\N
7232	Near Magdalena. New Mexico	1986-02-04	\N
7234	Near Saravena. Colombia	1986-04-27	08:35:00
7236	San Salvador. El Salvador	1986-01-05	06:32:00
7238	Near Taipei. Taiwan	1986-03-05	\N
7240	Colombo. Sri Lanka	1986-03-05	\N
7242	Hanty-Mansijsk. Soviet Union	1986-05-17	\N
7244	AtlantiCity. New Jersey	1986-05-17	23:30:00
7246	Djibouti. Djibouti	1986-05-18	08:30:00
7248	Antananarivo. Madagascar	1986-05-24	\N
7250	Near Cairo. Egypt	1986-10-06	\N
7252	Port Ellen. Islay Island	1986-12-06	15:22:00
7254	Howard AFB. Panama	1986-06-17	\N
7256	Grand Canyon. Arizona	1986-06-18	09:33:00
7258	Penza.  Russia	1986-06-22	21:35:00
7260	Near Syktyvar. Russia	1986-02-07	10:27:00
7262	Maputo. Mozambique	1986-10-07	\N
7264	Yosemite Nation. California	1986-07-26	17:45:00
7266	Off St. Vincent. Leeward Islands	1986-04-08	00:23:00
7268	Near Wampusirpi. Honduras	1986-08-14	11:30:00
7270	Malakal. Sudan	1986-08-16	10:30:00
7272	Frenchglen. Oregon	1986-08-21	10:15:00
7274	Lander. Wyoming	1986-08-28	23:13:00
7276	Texarkana. Arkansas	1986-08-28	06:53:00
7278	Cerritos. California	1986-08-31	11:52:00
7280	Tullamarine. VIC. Australia	1986-03-09	15:45:00
7282	Karachi. Pakistan	1986-05-09	06:00:00
7284	Hopkinsville. Kentucky	1986-09-09	\N
7286	Amsterdam. Netherlands	1986-09-14	03:10:00
7288	Near Mantiqueira. Brazil	1986-09-19	14:58:00
7290	Near Manado. Indonesia	1986-03-10	\N
7292	San Antonio. Texas	1986-04-10	04:10:00
7294	Ust-Maya. USSR	1986-10-14	\N
7296	Shiraz. Iran	1986-10-15	\N
7298	Near Valparasoll. Chile	1986-10-15	\N
7300	Fishers Island. New York	1986-10-16	15:20:00
7302	Near Komatipoot. South Africa	1986-10-19	19:21:00
7304	Kuybyshev. Russia	1986-10-20	15:50:00
7306	Manhattan. New York	1986-10-22	16:45:00
7308	Near Peshawar. Pakistan	1986-10-23	20:49:00
7310	Near Managua. Nicaragua	1986-10-30	17:00:00
7312	Near Zahedan. Iran	1986-02-11	19:25:00
7314	Off Sumburgh Head. Shetlands. Scotland	1986-06-11	\N
7316	Near Sarowbi. Afghanistan	1986-11-25	\N
7318	Berlin. East Germany	1986-12-12	\N
7320	Near Lanzhou. China	1986-12-15	\N
7322	Ay. Saudi Arabia	1986-12-25	\N
7324	Near Nasaso. Fiji	1986-12-27	13:48:00
7326	Off Bata. Equatorial Guinea	1987-02-01	16:30:00
7328	Abidjan. Ivory Coast	1987-03-01	\N
7330	Toronto. Canada	1987-12-01	\N
7332	Near Asmara. Ethiopia	1987-01-13	13:30:00
7334	Salt Lake City. Utah	1987-01-15	12:52:00
7336	Cima. California	1987-01-16	06:40:00
7338	Off Monrovia. Liberia	1987-01-30	\N
7340	Near Jakiri. Cameroon	1987-05-02	\N
7342	Off Papua. New Guinea	1987-06-02	\N
7344	Near Khost. Afghanistan	1987-09-02	11:30:00
7346	Durango. Mexico	1987-02-14	\N
7348	Detroit. Michigan	1987-04-03	14:34:00
7350	Near Almaty. Kazakhstan	1987-06-03	19:10:00
7352	Spokane. Washington	1987-03-13	\N
7354	Mount San Gorgonio. California	1987-03-21	13:55:00
7356	Eagle. Colorado	1987-03-27	20:45:00
7358	Near Parachinar. Pakistan	1987-03-30	11:00:00
7360	Anchorage. Alaska	1987-01-04	21:30:00
7362	Near Skien. Norway	1987-02-04	17:30:00
7364	Medan-Polonia. Indonesia	1987-04-04	14:40:00
7366	Kansas City. Kansas	1987-04-13	21:55:00
7368	Wilmington. North Carolina	1987-04-23	19:35:00
7370	Malakal. Sudan	1987-05-05	\N
7372	Near Batagay. Russia	1988-04-10	23:00:00
7374	Mayaguez. Puerto Rico	1987-08-05	06:50:00
7376	Warsaw. Poland	1987-09-05	11:12:00
7378	Pickle Lake. Ontario. Canada	1987-11-05	18:00:00
7380	Sayre. Pennsylvania	1987-05-13	07:20:00
7382	Santa Cruz. Bolivia	1987-05-19	\N
7384	Near Ruteng. Indonesia	1987-05-23	\N
7386	Ilaga. Indonesia	1987-05-25	\N
7388	LÃ¼beck . Germany	1987-05-30	\N
7390	Bolivar State. Venezuela	1987-05-06	\N
7392	Khost. Afghanistan	1987-11-06	\N
7394	Near Montelillo. Peru	1987-06-18	10:00:00
7396	Berdiansk. USSR	1987-06-19	\N
7398	Heho. Burma	1987-06-21	\N
7400	Near Baguio. Philippines	1987-06-26	11:03:00
7402	Fort Bragg AFB. North Carolina	1987-01-07	\N
7404	Geneva. Switzerland	1987-07-24	\N
7406	Mexico City. Mexico	1987-07-30	17:03:00
7408	Guatemala City. Guatemala	1987-07-31	\N
7410	Calama. Chile	1987-04-08	\N
7412	Near Chungking. Sichuan. China	1988-01-18	22:17:00
7414	Romulus. Michigan	1987-08-16	20:46:00
7416	Near Auturn. France	1987-08-18	\N
7418	Off Ko Phuket. Thiland	1987-08-31	15:36:00
7420	Carajas. Brazil	1987-08-09	\N
7422	Kunduz. Afghanistan	1987-09-13	\N
7424	Luxor. Egypt	1987-09-21	09:05:00
7426	Hailey. Idaho	1987-09-21	21:10:00
7428	Near Pagan. Myanmar	1987-11-10	\N
7430	El Poleo. Colombia	1987-11-10	\N
7432	Mt. Crezzo. Italy	1987-10-15	18:28:00
7434	Komsomolsk-on-Amur. Russia	1987-10-19	\N
7436	Bellingham. Washington	1987-04-11	22:40:00
7438	Ulongue. Malawi	1987-06-11	08:30:00
7440	Near Ross River. Canada	1987-10-11	17:13:00
7442	Denver. Colorado	1987-11-15	14:15:00
7444	Homer. Alaska	1987-11-23	18:25:00
7446	Off Kaikoura. New Zealand	1987-11-27	\N
7448	Green Island. Taiwan	1988-01-19	\N
7450	Bayfield. Colorado	1988-01-19	19:20:00
7452	Off Mauritius. Indian Ocean	1987-11-28	04:00:00
7454	Over the Andaman Sea	1987-11-29	11:30:00
7456	Near Kishwati. Rwanda	1987-03-12	\N
7458	San Luis Obispo. California	1987-07-12	16:16:00
7460	Off Lima. Peru	1987-08-12	\N
7462	Kanabea. Papua New Guinea	1987-08-12	\N
7464	Near Iligan. Philippines	1987-12-13	\N
7466	Off Vila dos Remidos. Brazil	1987-12-14	21:30:00
7468	Bordeaux. France	1987-12-21	15:10:00
7470	Eugene Island	1987-12-21	\N
7472	Chadron. Nebraska	1987-12-22	20:57:00
7474	Kenai. Alaska	1987-12-23	06:11:00
7476	Maunaloa. Hawaii	1987-12-23	18:53:00
7478	PacifiOcean	1987-12-30	\N
7480	Izmir. Turkey	1988-02-01	19:20:00
7482	Monroe. Louisiana	1988-08-01	05:19:00
7484	Mt. Colorado. Bolivia	1988-01-18	\N
7486	Krosnovodsk. USSR	1988-01-18	04:20:00
7488	Near Nizhnevartovsk. Russia	1988-01-24	16:49:00
7490	Panama	1988-01-02	\N
7492	Helena. Montana	1988-03-02	20:00:00
7494	Near Mulheim. Germany	1988-08-02	07:58:00
7496	Cary. North Carolina	1988-02-19	21:27:00
7498	Surgut. Russia	1988-02-27	06:09:00
7500	Near Ercan. Cyprus	1988-02-27	10:25:00
7502	Near Johannesburg. South Africa	1988-01-03	17:28:00
7504	Near Fontainebleau. France	1988-04-03	06:37:00
7506	Quito. Ecuador	1988-06-03	\N
7508	Near Clarksville. Tennessee	1988-08-03	21:45:00
7510	Near Cucuta. N of  Santander. Colombia	1988-03-17	13:17:00
7512	Cairo. Egypt	1988-03-31	04:10:00
7514	Combi. Cyprus	1988-05-04	\N
7516	Near MazÃ¢r-e Charif. Afghanistan	1988-10-04	15:10:00
7518	Near Hennenman. South Africa	1988-12-04	20:09:00
7520	St. Just. France	1988-04-16	\N
7522	Bagdarin. USSR	1988-04-19	10:03:00
7524	Near Tchamulate. Angola	1988-04-27	\N
7526	Morristown. New Jersey	1988-07-26	07:40:00
7528	Linfen. China	1988-07-10	\N
7530	Maui. Hawaii	1988-04-28	13:46:00
7532	Near Broennoysund. Norway	1988-06-05	\N
7534	Swentna. Alaska	1988-05-18	09:40:00
7536	New Orleans. Louisiana	1988-05-24	12:55:00
7538	Puerto Limon. Costa Rica	1988-05-26	\N
7540	Hannover. Germany	1988-05-26	22:25:00
7542	Near Quito. Ecuador	1988-03-06	\N
7544	Greenville. Mississippi	1988-08-06	\N
7546	Posadas. Argentina	1988-12-06	09:23:00
7548	Central Mozambique	1988-06-18	\N
7550	Habsheim. France	1988-06-26	14:45:00
7552	Over the Persian Gulf. near Bandar Abbas. Iran	1988-03-07	10:55:00
7554	Barranquilla. Colombia	1988-06-07	\N
7556	Golden Meadow. Louisiana	1988-07-20	19:25:00
7558	Near Lagos. Nigeria	1988-07-21	\N
7560	Liscomb Bay. Alaska	1988-07-30	15:45:00
7562	Sofia. Bulgaria	1988-02-08	\N
7564	Reykjavik. Iceland	1988-02-08	17:42:00
7566	Northern Afghanistan	1988-08-15	\N
7568	Bahawalpur. Pakistan	1988-08-17	16:30:00
7570	Duncan Town. Bahamas	1988-08-19	\N
7572	M´Bamu Island. ZaÃ¯re	1988-08-23	\N
7574	Irkutsk. Russia	1988-08-26	23:20:00
7576	Kaiserslautern. West Germany	1988-08-28	16:00:00
7578	Kowloon Bay. Hong Kong	1988-08-31	09:19:00
7580	Cerro de la Calera. Mexico	1988-08-31	\N
7582	Merida. Mexico	1988-08-31	\N
7584	Dallas. Texas	1988-08-31	09:01:00
7586	Sitka. Alaska	1988-05-09	13:45:00
7588	Bangkok. Thailand	1988-09-09	11:38:00
7590	Lago Agrio. Ecuador	1988-12-09	14:30:00
7592	Cheney. Ontario. Canada	1988-09-15	10:15:00
7594	Bahar Dar. Ethiopia	1988-09-15	13:05:00
7596	Near Miram. Pakistan	1988-09-19	20:30:00
7598	Wurtsmith AFB. Michigan	1988-11-10	14:20:00
7600	Sedona. Arizona	1988-10-16	10:17:00
7602	Rome. Italy	1988-10-17	00:30:00
7604	Gauhati. India	1988-10-19	08:30:00
7606	Near Ahmedabad. India	1988-10-19	07:00:00
7608	Juliaca. Peru	1988-10-25	10:53:00
7610	Near Rzeszow. Poland	1988-02-11	\N
7612	Jacksonville. Florida	1988-11-13	20:53:00
7614	Ilmajoki. Finland	1988-11-14	07:14:00
7616	Toussus. France	1988-11-17	\N
7618	MontluÃ§on. France	1988-11-18	06:30:00
7620	Hamada al Hambra. Libya	1988-11-30	07:20:00
7622	Kodinsk. Russia	1988-07-12	19:33:00
7624	BÃ®r MogreÃ¯n. Mauritania	1988-08-12	\N
7626	Afghanistan	1988-10-12	20:00:00
7628	Leninakan. Armenia. USSR	1988-11-12	\N
7630	Near Luxor. Egypt	1988-12-14	21:50:00
7632	Near Leonora. WA. Australia	1988-12-17	\N
7634	Lockerbie. Scotland	1988-12-21	19:03:00
7636	West Lafayette. Indiana	1989-03-15	07:25:00
7638	Leicestershire. England	1989-08-01	20:25:00
7640	Dayton. Ohio	1989-12-01	04:45:00
7642	Near La Paz. Bolivia	1989-01-17	\N
7644	Fairbanks. Alaska	1989-01-29	\N
7646	Near Abilene. Texas	1989-01-31	12:10:00
7648	Rangoon. Myanmar	1989-03-02	07:41:00
7650	Marseille. France	1989-06-02	18:25:00
7652	Santa Maria. Azores. Portugal	1989-08-02	14:08:00
7654	Bucharest. Romania	1989-09-02	\N
7656	Near Kuala Lumpur. Malaysia	1989-02-19	06:36:00
7658	Corona. California	1989-02-19	12:10:00
7660	Honolulu. Hawaii	1989-02-24	02:09:00
7662	Tegucigalpa. Honduras	1989-02-25	\N
7664	Near QuebeCity. Quebec. Canada	1989-02-28	06:30:00
7666	Dryden. Ontario. Canada	1989-10-03	12:09:00
7668	Lima. Peru	1989-10-03	\N
7670	Carswell AFB. Texas	1989-03-18	02:15:00
7672	Pohang. South Korea	1989-03-20	07:00:00
7674	Guarulhos. Brazil	1989-03-21	11:55:00
7676	Col de Tourniol. France	1989-10-04	21:07:00
7678	Near Cucuta. Colombia	1989-04-19	\N
7680	Baranquilla. Colombia	1989-04-26	\N
7682	Near Cancun. Mexico	1989-05-05	\N
7684	Columbia. Tennessee	1989-06-05	01:45:00
7686	Oskarshamn. Sweden	1989-08-05	09:40:00
7688	Near Tainjin. China	1989-09-05	\N
7690	Near Paramaribo. Surinam	1989-07-06	04:27:00
7692	Vereda el Salitre. Colombia	1989-11-06	10:15:00
7694	Waipio Valley. Hawaii	1989-11-06	13:30:00
7696	Berlin. Germany	1989-06-17	08:28:00
7698	Zabol. Iran	1989-06-18	13:20:00
7700	Near Tarma. Peru	1989-06-22	17:40:00
7702	Kaohsiung. Taiwan	1989-06-27	\N
7704	Yaounde.  Cameroon	1989-06-28	21:19:00
7706	Near Borana. Somalia	1989-06-28	09:30:00
7708	Cartersville. Georgia	1989-06-29	00:04:00
7710	Glen Burnie. Maryland	1989-07-19	07:17:00
7712	Sioux City. Iowa	1989-07-19	16:00:00
7714	Talourow Island. USSR	1989-07-19	11:02:00
7716	Porgera. New Guinea	1989-07-21	\N
7718	Manila. Philippines	1989-07-21	15:23:00
7720	Near Jalalabad. Afghanistan	1989-07-23	\N
7722	Near Chana. Angola	1989-07-26	\N
7724	Tripoli. Libya	1989-07-27	07:00:00
7726	Off Ullung Do. South Korea	1989-07-27	\N
7728	Auckland. New Zealand	1989-07-31	22:00:00
7730	Samos. Greece	1989-03-08	13:43:00
7732	Near Gambela. Ethiopia	1989-07-08	12:10:00
7734	Near Midford Sound. New Zealand	1989-08-08	10:35:00
7736	Janice. Mississippi	1989-08-13	21:25:00
7738		1989-08-15	\N
7740	Gold Beach. Oregon	1989-08-21	12:50:00
7742	Near Gilgit. Pakistan	1989-08-25	07:45:00
7744	Lynchburg. Virginia	1989-08-28	00:45:00
7746	Near Havana. Cuba	1989-03-09	19:00:00
7748	Near Sao Jose do Xingu. Brazil	1989-03-09	20:45:00
7750	Skagerrak. Denmark	1989-08-09	16:36:00
7752	Near Bentuni. Indonesia	1989-09-15	\N
7754	Mayfield. Kentucky	1989-09-15	21:10:00
7756	Near Bilma. Niger	1989-09-19	14:00:00
7758	Fairbanks. Alaska	1989-09-20	\N
7760	La Guardia Airport. New York. New York	1989-09-20	23:21:00
7762		1989-09-21	\N
7764	Near Baghran. Afghanistan	1989-09-21	\N
7766	Ujani Dam. India	1989-09-23	20:35:00
7768	Terrace.  Canada	1989-09-26	08:28:00
7770	Nyala. Sudan	1989-09-26	\N
7772	Grand Canyon National Park Airport. Tusayan. Arizona	1989-09-27	09:53:00
7774	Semyonovka .Ukraine	1989-09-28	\N
7776	Perth. Ontario. Canada	1989-04-10	\N
7778	Uncertain. Texas	1989-06-10	22:05:00
7780	Urpay. Peru	1989-10-10	\N
7782	Lacey Township. New Jersey	1989-10-10	13:39:00
7784	Leninakan. Russia	1989-10-20	02:32:00
7786	Near Tegucigalpa. Honduras	1989-10-21	07:53:00
7788	Hualein. China	1989-10-26	18:55:00
7790	Petropavlovsk. USSR	1989-10-27	\N
7792	Halawa Point. Molokai. Hawaii	1989-10-28	18:37:00
7794	Monrovia. Liberia	1989-09-11	\N
7796	Maluti Mountains. Lesotho	1989-10-11	\N
7798	Bardufoss. Norway	1989-11-14	\N
7800	Near Tyumem. Russia	1989-11-21	17:28:00
7802	Albania	1989-11-23	\N
7804	Seoul. South Korea	1989-11-25	07:48:00
7806	Bogota. Colombia	1989-11-27	07:16:00
7808	Near Jamba. Angola	1989-11-27	\N
7810	Charallave. Venezuela	1989-11-28	20:00:00
7812	Block Island. Rhode Island	1989-11-28	18:25:00
7814	Patuxent. Maryland	1989-01-12	09:30:00
7816	Near Guayaramerin. Bolivia	1989-12-21	14:00:00
7818	Near Ibague. Colombia	1990-05-02	08:37:00
7820	Pasco. Washington	1989-12-26	22:30:00
7822	Near Visina. Romania	1989-12-28	\N
7824	Milford Sound	1989-12-30	\N
7826	Java Sea. Indonesia	1990-02-01	13:40:00
7828	Near Pervouralsk. Russia	1990-01-13	12:56:00
7830	Pico Blanco. Costa Rica	1990-01-15	08:30:00
7832	Near Leadville. Colorado	1990-01-17	07:19:00
7834	Ansonia. Ohio	1990-01-18	17:10:00
7836	Near Caracas. Venezuela	1990-01-23	07:35:00
7838	Cove Neck. New York	1990-01-25	21:34:00
7840	Mt Rijani. Lombok Island. Indonesia	1990-01-25	\N
7842	Near Kinkala. Congo	1990-01-27	17:35:00
7844	Burlington. Vermont	1990-01-29	21:00:00
7846	Plattsburg. New York	1990-01-29	20:33:00
7848	Bauru. Brazil	1990-12-02	09:29:00
7850	Near Bangalore. India	1990-02-14	13:03:00
7852	Near Ngwerere. Zambia	1990-02-17	19:30:00
7854	Denver. Colorado	1990-02-27	19:47:00
7856	Near Meerut. India	1990-01-03	\N
7858	Sukhbaata. Mongolia	1990-05-03	\N
7860	Off Miami. Florida	1990-08-03	11:15:00
7862	Off Freetown. Sierre Leone	1990-12-03	\N
7864	Las Mesitas. Honduras	1990-03-21	\N
7866	Santiago de Cuba	1990-03-23	\N
7868	Kabul. Afghanistan	1990-03-27	11:00:00
7870	Near Kuito. Angola	1990-03-27	\N
7872	Juiz De Fora. Brazil	1990-06-04	15:03:00
7874	Off Vaeroy. Norway	1990-12-04	14:44:00
7876	Off Contadora. Panama	1990-04-18	\N
7878	Near Kinshasa. Zaire	1990-04-20	\N
7880	Near Manila. Philippines	1990-04-26	06:21:00
7882	Ship Sands Island. ON. Canada	1990-04-30	21:35:00
7884	Tarbert. England	1990-04-30	\N
7886	Guatamala City . Guatemala	1990-05-05	15:00:00
7888	Tuxtla-Gutierrez. Mexico	1990-10-05	08:55:00
7890	Manila. Philippines	1990-11-05	\N
7892	Near Mt. Emerald. Qld. Australia	1990-11-05	\N
7894	Near Wurzburg . Germany	1990-11-05	\N
7896	Manila. Philippines	1990-05-18	06:25:00
7898	Thistle Lake. Northwest Territory. Canada	1990-06-06	19:00:00
7900	Near Altamira. Brazil	1990-06-06	05:29:00
7902	Oxfordshire. England	1990-10-06	07:33:00
7904	Aialak Bay. Alaska	1990-06-25	14:30:00
7906	Ashford. Washington	1990-02-07	12:55:00
7908	Near Port Morseby. New Guinea	1990-05-07	\N
7910	Off Union Island. Grenadines Islands	1990-12-07	\N
7912	Near Maymaneh. Afghanistan	1990-07-27	\N
7914	Near Huanuco. Peru	1990-07-31	\N
7916	Stepanakert. Azerbaijan. USSR	1990-01-08	11:10:00
7918	Near Shindand. Afghanistan	1990-10-08	\N
7920	Yunlin. Taiwan	1990-08-21	\N
7922	Elkhorn. Wisconsin	1990-08-27	01:00:00
7924	Lata. Georgia	1992-12-14	\N
7926	Near Kaiserslautern. Germany	1990-08-29	00:34:00
7928	Kaltag. Alaska	1990-03-09	15:20:00
7930	Off Newfoundland. Canada	1990-11-09	15:30:00
7932	Off Sondre Stromfjord. Greenland	1990-12-09	\N
7934	Koltsovo. Russia	1990-09-14	\N
7936	Off Fernando de Noronha. Brazil	1990-09-20	\N
7938	San Luis Obispo. California	1990-09-24	07:02:00
7940	Near Kuwait City. Kuwait	1990-02-10	\N
7942	Guangzhou. China	1990-02-10	09:15:00
7944	Cape Canaveral. Florida	1990-03-10	20:08:00
7946	Near Bella Vista. Bolivia	1990-10-19	15:25:00
7948	Santiago de Cuba. Cuba	1990-10-24	01:58:00
7950	Novossibirsk. Russia	1990-11-11	\N
7952	Stadelberg. Switzerland	1990-11-14	19:11:00
7954	Near Medellin. Colombia	1990-11-18	\N
7956	Near Ashkhabad. Turkmenistan. USSR	1990-11-19	\N
7958	Cleveland. Ohio	1991-02-17	00:20:00
7960	Koh Samui. Thailand	1990-11-21	11:15:00
7962	Off Ravenna. Italy	1990-11-25	\N
7964	Romulus. Michigan	1990-03-12	13:45:00
7966	Nairobi. Kenya	1990-04-12	\N
7968	Near Matak. Indonesia	1990-06-12	\N
7970	Near False Pass. Alaska	1990-12-21	12:20:00
7972	Near Paramo Mucuti. Venezuela	1991-10-01	18:00:00
7974	Near Belo Horizonte. Brazil	1991-11-01	\N
7976	Jalaludin. Indonesia	1991-01-30	13:00:00
7978	Near Ras Al Khafji. Saudi Arabia	1991-01-31	\N
7980	LAX. Los Angeles. California	1991-01-02	18:07:00
7982	Near Nea Ankhialos. Greece	1991-05-02	\N
7984	Munford. Alabama	1991-07-02	08:00:00
7986	Aspen. Colorado	1991-02-13	17:41:00
7988	Near Taisha. Ecuador	1991-02-14	\N
7990	Puerto Williams. Chile	1991-02-20	15:24:00
7992	Near Colorado Springs. Colorado	1991-03-03	09:44:00
7994	La Puerta. Venezuela	1991-05-03	16:15:00
7996	Hassfurt. Germany	1991-11-03	08:40:00
7998	San Diego. CA	1991-03-16	01:43:00
8000	Malanje. Angola	1991-03-16	\N
8002	Brasillia. Brazil	1991-03-18	\N
8004	Treasure Cay. Bahamas	1991-03-18	\N
8006	Ras-al-Mishab. Saudi Arabia	1991-03-21	\N
8008	Off San Diego. California	1991-03-21	02:15:00
8010	Navoi.  Uzbekistan	1991-03-23	11:37:00
8012	Near Bangalore. India	1991-03-25	08:15:00
8014	Off San Pedro. Belize	1991-01-04	15:00:00
8016	Lake Thutade. Canada	1991-04-04	13:40:00
8018	Marion. Pennsylvania	1991-04-04	12:10:00
8020	Brunswick. Georgia	1991-05-04	14:51:00
8022	Off Nuka Hiva. French Polynesia	1991-04-19	11:56:00
8024	Near Awell. Sudan	1991-05-05	\N
8026	Sulawesi. Indonesia	1991-09-05	\N
8028	Grand Canyon. Airzona	1991-05-13	13:19:00
8030	La Poyatta. Colombia	1991-05-15	\N
8032	Leningrad. USSR	1991-05-23	13:06:00
8034	Bakhtaran. Iran	1991-05-24	\N
8036	Elk City. Idaho	1992-11-19	15:20:00
8038	Near Ban Nong Rong. Thailand	1991-05-26	23:17:00
8040	Off Matthewtown. Great Inagua	1991-01-06	10:16:00
8042	Luanda. Angola	1991-10-06	15:40:00
8044	Near Malambo. Colombia	1991-06-20	03:45:00
8046	Gulf of Finland. Russia	1991-06-26	\N
8048	Near Sokotu. Nigeria	1991-06-26	21:00:00
8050	El Yopal. Colombia	1991-04-07	09:10:00
8052	Bellavista Airport. Peru	1991-09-07	\N
8054	Birmingham. Alabama	1991-10-07	18:12:00
8056	Jeddah. Saudi Arabia	1991-11-07	08:40:00
8058	Guadalcanal Island. Solomon Islands	1991-09-27	\N
8060	Detroit. Michigan	1991-07-22	21:15:00
8062	Salmon. Idaho	1991-07-23	09:30:00
8064	Espiritu Santos. Vanuatu	1991-07-25	\N
8066	Rarotonga. Cook Islands	1991-06-08	\N
8068	Near Uricani. Romania	1991-08-14	\N
8070	Gustavus. Alaska	1991-08-14	19:00:00
8072		1991-08-15	\N
8074	Imphal. India	1991-08-16	01:55:00
8076	Ketchikan. Alaska	1991-08-20	13:15:00
8078	Walton. Oregon	1991-08-28	23:59:00
8080	Long Seridan. Malaysia	1991-03-09	\N
8082	Sampit. Indonesia	1991-03-09	\N
8084	Near Eagle Lake. Texas	1991-11-09	10:03:00
8086	Petropavlosk. USSR	1991-09-16	\N
8088	Baranquilla. Colombia	1991-09-16	\N
8090		1991-09-17	\N
8092	Belvedere Center. Vermont	1991-09-18	21:55:00
8094	Khatanga. Russia	1991-09-23	\N
8096	Off St. Petersburg. USSR	1991-09-26	\N
8098	Near Villavicencio.  Colombia	1991-09-29	\N
8100	Condet. Indonesia	1991-05-10	15:00:00
8102	Katapang. Indonesia	1991-08-10	\N
8104	Aponguao Falls. Venezuela	1991-10-13	\N
8106	Tumbang Miri. Indonesia	1991-10-25	\N
8108	Vallejo. California	1991-10-25	21:56:00
8110	Near Point Alert. Ellesmere Island. NWT.Canada	1991-10-30	14:30:00
8112	Near Karakent. USSR	1991-01-11	\N
8114	Makhackala. Russia	1991-07-11	\N
8116	Recife. Brazil	1991-11-11	18:50:00
8118	Off Destin. Florida	1991-11-16	06:10:00
8120	Anderma. Russia	1991-11-16	\N
8122	Nagoro-Karabak. USSR	1991-11-20	\N
8124	Davis. California	1991-11-20	18:14:00
8126	Khodzhavend. Russia	1991-11-21	\N
8128	Sena. Mozambique	1991-11-25	15:00:00
8130	Near Bugulma. Russia	1991-11-26	05:02:00
8132	Guaratingueta AB. Brazil	1991-11-29	\N
8134	Near  Las Vegas. Nevada	1991-10-12	16:42:00
8136	Rome. Georgia	1991-11-12	09:41:00
8138	Heidelberg. Germany	1991-12-22	11:37:00
8140	Stockholm. Sweden	1991-12-27	08:51:00
8142	Massai Marra. Kenya	1991-12-27	\N
8144	Wanli. Taiwan	1991-12-29	15:05:00
8146	Gabriels. New York	1992-03-01	05:46:00
8148	Temple Bar. Arizona	1992-01-13	15:50:00
8150	Mt. Saint-Odile. near Strasbourg. France	1992-01-20	19:20:00
8152	Nanaimo. British Columbia. Canada	1992-01-27	\N
8154	Near Stepanakert. Azerbaijan	1992-01-28	16:20:00
8156	Caetite. Brazil	1992-03-02	11:20:00
8158	Evansville. Indiana	1992-06-02	09:48:00
8160	Near Kafountine. Senegal	1992-09-02	05:15:00
8162	Toledo. Ohio	1992-02-15	03:26:00
8164	En route from Argentina  to  California	1992-02-20	\N
8166	Beni. Bolivia	1992-02-03	16:05:00
8168	Etsouali. Congo	1992-12-03	\N
8170	Knotsville. Tennessee	1992-12-03	00:13:00
8172	La Guardia Airport. New York. New York	1992-03-22	21:35:00
8174	Near Yakutia. Russia	1992-03-22	\N
8176	Athens. Greece	1992-03-24	07:02:00
8178	Near Baykovo. Russia	1992-04-04	\N
8180	Near Sarra. Libya	1992-07-04	\N
8182	Off Orchid Island. Taiwan	1992-10-04	\N
8184	Near Goroka. Papua New Guinea	1992-04-15	\N
8186	Nairobi. Kenya	1992-04-16	\N
8188	Hamburg. Pennsylvania	1992-04-17	00:56:00
8190	Perris Valley. California	1992-04-22	11:09:00
8192	Mt. Haleakala. Hawaii	1992-04-22	15:53:00
8194	Saveh. Iran	1992-04-26	\N
8196	Blewett Falls Lake. North Carolina	1992-04-28	\N
8198	Tucuti. Panama	1992-06-06	\N
8200	Mayaguez. Puerto Rico	1992-07-06	14:34:00
8202	Anniston. Alabama	1992-08-06	08:52:00
8204	Sheboygan Falls. Wisconson	1992-12-06	12:10:00
8206	Canbera. ACT. Australia	1992-06-19	18:53:00
8208	Meadview. Arizona	1992-06-19	14:05:00
8210	Cruzeiro do Sul. Brazil	1992-06-22	06:05:00
8212	Norlisk. Russia	1992-06-22	12:45:00
8214	St. Thomas. Virgin Islands	1992-06-28	11:08:00
8216	Near Iyakochchi. Sri Lanka	1992-05-07	17:00:00
8218	Bethel. Alaska	1992-07-13	12:30:00
8220	Near Nakhichevan. Azerbaijan	1992-07-14	\N
8222	Near Bir Fadl. Yemen	1992-07-14	\N
8224	Tbilisi. Georgia	1992-07-20	\N
8226	Mt. Lalaboy.  Indonesia	1992-07-24	16:30:00
8228	Near Skopje. Macedonia	1992-07-24	\N
8230	Near Mexico City. Mexico	1992-07-27	16:15:00
8232	Iguape. Brazil	1992-07-28	\N
8234	Adjuntas. Puerto Rico	1992-07-29	08:30:00
8236	Near  Kathmandu. Nepal	1992-09-28	14:30:00
8238	JFK Airport. New York. New York	1992-07-30	17:41:00
8240	Near Kathmandu. Nepal	1992-07-31	12:45:00
8242	Nanjing. Jiangsu. China	1992-07-31	15:12:00
8244	Colorado. Bolivia	1992-08-21	\N
8246	Hot Springs. Arizona	1992-08-25	05:15:00
8248	Near Ivanovo. Russia	1992-08-27	22:44:00
8250	Gimli. Manitoba. Canada	1992-08-27	10:20:00
8252	El Salvador	1992-08-27	\N
8254	Near Iquitos. Peru	1992-08-27	\N
8256	Jamba. Angola	1992-08-31	22:32:00
8258	Hinckley. Illinois	1992-07-09	12:40:00
8260	Bellavista. Peru	1992-10-09	\N
8262	Kozyrevsk. Russia	1992-12-09	\N
8264	Hana. Hawaii	1992-09-16	11:00:00
8266	Off Curacao. Netherlands Antilles	1992-09-18	\N
8268	Bogota. Colombia	1992-09-19	\N
8270	Near Kular. Russia	1992-09-21	\N
8272	Near Lagos. Nigeria	1992-09-26	18:00:00
8274	Amsterdam. Netherlands	1992-04-10	17:35:00
8276	Berkeley Springs. West Virginia	1992-07-10	09:30:00
8278	Near Dingxi. China	1992-08-10	\N
8280	Mogadiscio. Somalia	1992-09-10	\N
8282	Near Garut. Jawa. Indonesia	1992-10-18	\N
8284	Near Usti Nem. Russia	1992-10-19	\N
8286	Near Lake Caballochoa. Peru	1992-10-21	\N
8288	Chita. Russia	1992-10-29	\N
8290	Grand Junction. Colorado	1992-10-31	08:15:00
8292	Kiana. Alaska	1992-08-11	18:20:00
8294	Near Tver. Russia	1992-11-11	\N
8296	Off Bombay. India	1992-11-11	\N
8298	Near Nha Trang. Vietnam	1992-11-14	07:10:00
8300	Near Porto Plata. Dominican Republic	1992-11-15	\N
8302	Near Liutang. Guangxi. China	1992-11-24	07:52:00
8304	Near Harlem. Montana	1992-11-30	21:20:00
8306	Uruapan. Mexico	1992-09-12	\N
8308	Goma. Congo	1992-12-13	\N
8310	Faro. Algarve. Portugal	1992-12-21	07:53:00
8312	Tripoli. Libya	1992-12-22	10:00:00
8314	Ofden. Utah	1993-03-01	15:40:00
8316	Paris. France	1993-06-01	19:20:00
8318	Surabaya. Indonesia	1993-09-01	\N
8320	Sellafield. England	1993-01-13	\N
8322	Near Bronson Creek. British Colombia. Canada	1993-01-14	08:30:00
8324	Kinshasa. DemocratiRepubliCongo	1993-01-27	\N
8326	Sumatra. Indonesia	1993-01-31	\N
8328	Near Tehran. Iran	1993-08-02	14:15:00
8330	Near Daraim. Afghanistan	1993-10-02	\N
8332	Bogota. Colombia	1993-02-20	\N
8334	Off Green Island. Taiwan	1993-02-28	\N
8336	Skopje. Macedonia	1993-05-03	11:12:00
8338	Grants. New Mexico	1993-03-14	22:34:00
8340	Dagali. Norway	1993-03-19	20:02:00
8342	Near Tangara de Serra. Brazil	1993-03-23	13:35:00
8344	Anchorage. Alaska	1993-03-31	12:25:00
8346	Blountville. Tennesee	1993-01-04	21:28:00
8348	Aspen. Colorado	1993-01-04	16:15:00
8350	Off Margarita Island. Venezuela	1993-02-04	\N
8352	950 nm S of  Shemya. Alaska	1993-06-04	01:10:00
8354	Zwingle. Iowa	1993-04-19	15:52:00
8356	Zavnah. Mongolia	1993-04-23	\N
8358	Aurangabad. India	1993-04-26	13:00:00
8360	Near Kholm. Afghanistan	1993-04-27	\N
8362	Off  Libreville. Gambia	1993-04-27	23:00:00
8364	Shelton. Nebraska	1993-04-28	23:50:00
8366	Suva. Fiji	1993-11-05	\N
8368	Near Cancun. Mexico	1993-05-15	\N
8370	Near Medellin. Colombia	1993-05-19	15:04:00
8372	El Yopal. Colombia	1993-06-06	\N
8374	Near Ariab. Sudan	1993-07-06	\N
8376	Gulgubip. Papua New Guinea	1993-09-06	\N
8378	Nabire. Indonesia	1993-06-16	\N
8380	Near Tbilisi. Georgia	1993-06-17	21:10:00
8382	Sorong. Irian Jaya. Indonesia	1993-01-07	\N
8384	Near Ochamchire. Georgia	1993-06-07	\N
8386	Las Vegas. Nevada	1993-12-07	\N
8388	Talladega. Alabama	1993-12-07	14:55:00
8390	Yinchuan. China	1993-07-23	15:40:00
8392	Haenam. South Korea	1993-07-26	15:48:00
8394	Serawak. Malaysia	1993-07-30	\N
8396	Devghat. Nepal	1993-07-31	13:00:00
8398	Augusta. Georgia	1993-07-08	15:15:00
8400	Leeward Point Airfield. Guantanamo Bay. Cuba	1993-08-18	16:56:00
8402	Near Aldan. Russia	1993-08-26	\N
8404	Khorag. Tajikistan	1993-08-28	10:45:00
8406	Warsaw. Poland	1993-09-14	15:33:00
8408	Sukhumi. Georgia	1993-09-21	\N
8410	Sukhumi. Georgia	1993-09-22	18:30:00
8412	Sukhumi.  Georgia	1993-09-23	\N
8414	Near Svanetia. Georgia	1993-04-10	\N
8416	Franz Josef Glacier. New Zealand	1993-10-25	\N
8418	Fuzhou. China	1993-10-26	13:04:00
8420	Near Namsos. Norway	1993-10-27	19:30:00
8422	Greensburg. Indiana	1993-06-11	08:51:00
8424	Sandy Lake. Canada	1993-10-11	18:05:00
8426	Urumqi. China	1993-11-13	14:55:00
8428	Near Kerman. Iran	1993-11-15	19:07:00
8430	Near Ohrid. Macedonia	1993-11-20	23:30:00
8432	Near Palencia. Guatemala	1993-11-21	\N
8434	Hibbing. Minnesota	1993-01-12	19:50:00
8436	Tuktoyaktuk. NWT. Canada	1993-03-12	\N
8438	Off Dakar. Senegal	1993-09-12	\N
8440	Phonesavanh. Laos	1993-12-13	09:20:00
8442	Near Naga. Philippines	1993-12-15	14:00:00
8444	Santa Ana. California	1993-12-15	17:33:00
8446	Gyumri. Armenia	1993-12-26	\N
8448	Near Irrupts. Siberia. Russia	1994-03-01	12:07:00
8450	Off Lord Howe Island. NWSW. Australia	1994-02-10	\N
8452	Okeechobee. Florida	1994-05-01	18:29:00
8454	Columbus. Ohio	1994-07-01	23:21:00
8456	Kinshasa. DemocratiRepubliCongo	1994-01-18	\N
8458	Nalchik. Russia	1994-02-24	11:16:00
8460	Near Carpish. Peru	1994-02-25	\N
8462	East Midlands. England	1994-02-25	19:46:00
8464	New York. New York	1994-02-03	17:59:00
8466	New Delhi. India	1994-08-03	14:54:00
8468	Near Tamworth.  Australia	1994-09-03	\N
8470	Off Malindi. Kenya	1994-03-14	\N
8472	Near Nag	1994-03-17	22:30:00
8474	Spokane. Washington	1994-03-18	01:56:00
8476	Key West. Florida	1994-03-18	11:43:00
8478	Weipa. Australia	1994-03-21	\N
8480	Near Bogota. Colombia	1994-03-23	\N
8482	Near Campbeltown. Scotland	1994-02-06	18:00:00
8484	Near Mezhdurechensk. Russia	1994-03-23	00:57:00
8486	Near Fayetteville. North Carolina	1994-03-23	14:30:00
8488	Lamoille. Nevada	1994-03-04	16:36:00
8490	Amsterdam. Netherlands	1994-04-04	14:46:00
8492	Ambato. Ecuador	1994-06-04	\N
8494	Kigali. Rwanda	1994-06-04	\N
8496	Northern Iraq	1994-04-14	09:25:00
8498	Nanga Pinoh. Indonesia	1994-04-25	\N
8500	Near Komaki. Aichi. Japan	1994-04-26	20:16:00
8502	Stratford. Connecticut	1994-04-27	22:56:00
8504	Near El Rosa. Colombia	1994-04-29	14:27:00
8506	Sao Gabriel. Brazil	1994-07-05	\N
8508	Loma Linda. Colombia	1994-05-23	10:55:00
8510	Near Villavicencio. Colombia	1994-05-28	07:38:00
8512	Kodiak. Alaska	1994-07-08	13:55:00
8514	Near Xi´an. China	1994-06-06	08:20:00
8516	Near Uruapan. Mexico	1994-06-13	18:50:00
8518	Chantilly. Virginia	1994-06-18	06:25:00
8520	Mt.  Kalora. Indonesia	1994-06-18	12:20:00
8522	Jeneau. Alaska	1994-06-22	20:15:00
8524	Abidjan. Ivory Coast	1994-06-26	19:35:00
8526	Near Logar. Afghanistan	1994-06-29	\N
8528	Toulouse-Blagnac. France	1994-06-30	17:41:00
8530	Near Tidjika. Mauritania	1994-01-07	08:30:00
8532	Charlotte. North Carolina	1994-02-07	18:43:00
8534	Portage Creek. Alaska	1994-11-07	12:40:00
8536	Hanalei. Hawaii	1994-07-14	15:36:00
8538	Near Fort de France. Martinique	1994-07-17	21:45:00
8540	Boma. DemocratiRepubliCongo	1994-07-17	\N
8542	Colon. Panama	1994-07-19	\N
8544	East Kalimantan. Indonesia	1994-07-26	\N
8546	Near Boda. Russia	1994-05-08	08:50:00
8548	Cheju. South Korea	1994-10-08	11:22:00
8550	Alsworth. Alaska	1994-11-08	17:00:00
8552	Whiting. New Jersey	1994-12-08	21:05:00
8554	Kenai. Alaska	1994-08-14	09:27:00
8556	Near Agadir. Morocco	1994-08-21	\N
8558	Near Aliquippa. Pennsylvania	1994-08-09	19:03:00
8560	Near Abuja. Nigeria	1994-09-13	12:05:00
8562	Fish Egg Inlet. Canada	1994-09-17	11:48:00
8564	Tamanrasset. Algeria	1994-09-18	08:07:00
8566	Kowloon Bay. Hong Kong	1994-09-23	19:15:00
8568	Near Vanavera. Russia	1994-09-26	17:38:00
8570	Bahia Negra. Paraguay	1994-09-28	\N
8572	Buenos Aires. Brazil	1994-09-29	\N
8574	Chaibukha. Russia	1994-09-30	11:10:00
8576	Lobito. Angola	1994-12-15	06:15:00
8578	Mitu. Colombia	1994-08-10	15:45:00
8580	Krakas Mountains. near Natanz . Iran	1994-12-10	22:50:00
8582	Near Formoso do Aragala. Brazil	1994-10-14	22:00:00
8584	Near Cuito. Angola	1994-10-26	\N
8586	Batagaj. Russia	1994-10-29	\N
8588	Near Ust´-Ilimsk. Russia	1994-10-29	21:30:00
8590	Roselawn. Indiana	1994-10-31	15:59:00
8592	Off Cozumel. Mexico	1994-01-11	\N
8594	Near Nabire. Indonesia	1994-04-11	\N
8596	Saposa. Peru	1994-05-11	\N
8598	Avenal. California	1994-11-16	02:40:00
8600	Papua New Guinea	1994-11-22	11:40:00
8602	Bridgeton. Missouri	1994-11-22	22:03:00
8604	Near Cuito. Angola	1994-11-25	\N
8606	PacifiOcean	1994-10-12	11:30:00
8608	Elim. Alaksa	1994-10-12	19:00:00
8610	Morrisville. North Carolina	1994-12-13	18:34:00
8612	Cerro Aicha. Venezuela	1994-12-17	10:30:00
8614	Papua. New Guinea	1994-12-17	13:20:00
8616	Coventry. England	1994-12-21	09:53:00
8618	Algiers Airport. Algeria	1994-12-26	17:00:00
8620	Near Van. Turkey	1994-12-29	15:30:00
8622	Isfahan. Iran	1995-05-01	20:45:00
8624	Off Flores Island. Inodnesia	1995-10-01	\N
8626	Cartagena. Colombia	1995-11-01	19:38:00
8628	Flagstaff. Arizona	1995-11-01	18:00:00
8630	Masset. British Columbia. Canada	1995-11-01	01:50:00
8632	Pleasanton. California	1995-12-01	17:47:00
8634	Blyn. Washington	1995-01-14	04:40:00
8636	Los Angeles. CA	1995-01-14	19:45:00
8638	Kathmandu. Nepal	1995-01-17	13:59:00
8640	Near Krasnoyarsk. Russia	1995-01-20	19:13:00
8642	Le Bourget. France	1995-01-20	\N
8644	Kuei Shan Hsiang. Taiwan	1995-01-30	19:43:00
8646	Near Tusayan. Arizona	1995-02-13	15:36:00
8648	Kansas City. Missouri	1995-02-16	20:30:00
8650	Ossora. Russia	1995-03-16	\N
8652	Reno. Nevada	1995-03-22	08:12:00
8654	Near Hamilton. New Zealand	1995-03-29	12:10:00
8656	Near Balotesti. Romania	1995-03-31	09:11:00
8658	Near Alexander City. Alabama	1995-04-17	18:30:00
8660	Lagos. Nigeria	1995-04-23	12:40:00
8662	Alice Springs. Australia	1995-04-27	19:57:00
8664	Near Palaly AFB. Sri Lanka	1995-04-29	\N
8666	Sioux Falls. Ontario. Canada	1995-01-05	13:28:00
8668	Quito. Ecuador	1995-03-05	00:45:00
8670	Cerro San Jeronimo. Colombia	1995-09-05	16:35:00
8672	Near Boise. Idaho	1995-05-13	\N
8674	Near Leeds. England	1995-05-24	16:51:00
8676	Miraflores. Colombia	1995-05-25	15:00:00
8678	Off Mbour. Senegal	1995-05-29	\N
8680	Atlanta. Georgia	1995-08-06	19:08:00
8682	Near Palmerston North. New Zealand	1995-09-06	09:22:00
8684	Volgograd. Russia	1995-06-14	\N
8686	Herputchi. Russia	1995-06-16	14:15:00
8688	Near Cuvela. Angola	1995-06-17	\N
8690	Lagos. Nigeria	1995-06-24	16:05:00
8692	La Romana. Dominican Republic	1995-06-27	09:50:00
8694	Kodiak. Alaska	1995-06-30	20:00:00
8696	Kiunga. Papua New Guinea	1995-01-07	\N
8698	Haines. Alaska	1995-07-07	14:56:00
8700	Gumey. Papua New Guinea	1995-12-07	08:00:00
8702	Bintuni.  Indonesia	1995-07-17	\N
8704	Near Antananivo. Madagascar	1995-07-18	\N
8706	Near Karamui. Papua New Guinea	1995-07-25	\N
8708	Johannesburg. South Africa	1995-02-08	\N
8710	Mt. Chichontepec. San Vincente. El Salvador	1995-09-08	20:14:00
8712	Near Kaimana. Indonesia	1995-09-08	\N
8714	Nevada del Huila. Colombia	1995-08-14	\N
8716	Near Carrollton. GA	1995-08-21	12:53:00
8718	Near Farewell. Alaska	1995-01-09	12:00:00
8720	Toronto. Ontario. Canada	1995-02-09	\N
8722	Beaver Dam. Arizona	1995-02-09	08:38:00
8724	Near La Macarena. Colombia	1995-09-09	07:15:00
8726	Jalalabad. Afghanistan	1995-11-09	\N
8728	Off Colombo. Sri Lanka	1995-12-09	07:20:00
8730	Marsh Harbour. Bahamas	1995-09-13	20:30:00
8732	Tawau.  Malaysia	1995-09-15	12:22:00
8734	Tamworth. Australia	1995-09-16	06:28:00
8736	Near Moron. Mongolia	1995-09-21	12:30:00
8738	Anchorage. Alaska	1995-09-22	07:45:00
8740	Sterligov Cape. Russia	1995-09-24	\N
8742	Campbell River. British Columbia. Canada	1995-09-27	19:10:00
8744	Gunung Antara. Indonesia	1995-03-10	08:00:00
8746	Barskoon. Kirghizia	1995-04-10	\N
8748	Bayfield. Colorado	1995-10-10	07:40:00
8750	Papua. New Guinea	1995-10-22	\N
8752	Near Piedras Negras. Mexico	1995-10-31	20:50:00
8754	Near Luyaba. Argentina	1995-09-11	21:00:00
8756	Kaduna. Nigeria	1995-11-13	08:55:00
8758	Off Jaffna Peninsula . Sri Lanka	1995-11-22	19:00:00
8760	Off Labuan. Malaysia	1995-11-29	10:15:00
8762	Baku. Azerbaijan	1995-11-30	19:10:00
8764	Near Douala. Cameroon	1995-03-12	22:44:00
8766	Near Nakhichevan. Azerbaijan. Russia	1995-05-12	17:55:00
8768	Near Grossevichi. Russia	1995-07-12	05:20:00
8770	Near Belle Anse. Haiti	1995-08-12	18:00:00
8772	Verona  - Villafranca. Italy	1995-12-13	19:00:00
8774	Kahengula. Angola	1995-12-18	\N
8776	Near Buga. Valle del Cauca. Colombia	1995-12-20	21:38:00
8778	Bagasin. Papua New Guinea	1995-12-22	\N
8780	Karabogazgol Bay. Turkmenistan	1996-12-03	\N
8782	Kinshasa. Zaire	1996-08-01	12:43:00
8784	Off Bridgetown. Barbados	1996-08-01	\N
8786	Near Kano. Nigeria	1996-01-18	20:20:00
8788	Off Point Pedro. Sri Lanka	1996-01-22	12:00:00
8790	Near Blenheim. New Zealand	1996-01-29	16:26:00
8792	Asuncion. Paraguay	1996-04-02	14:12:00
8794	St. Johns. Arizona	1996-05-02	09:50:00
8796	Off Puerto Plata. Domincan Republic	1996-06-02	23:47:00
8798	Near Ensenada. Mexico	1996-06-02	20:20:00
8800	Near Kandahar. Afghanistan	1996-11-02	\N
8802	Port-au-Prince. Hati	1996-12-02	12:01:00
8804	El Zapotal. Guatemala	1996-02-16	\N
8806	Salzburg. Austria	1996-02-19	\N
8808	Near Jabal Awliya. Sudan	1996-02-26	19:00:00
8810	Near Lukapa. Angola	1996-02-27	05:40:00
8812	Arequipa. Peru	1996-02-29	20:25:00
8814	Sao Paulo. Brazil	1996-02-03	\N
8816	Near Mesones Muro. Peru	1996-09-03	\N
8818	Near Punto Fijo. Venezuela	1996-03-13	\N
8820	Key West. Florida	1996-03-17	12:37:00
8822	Near Dubrovnik. Croatia	1996-03-04	14:52:00
8824	Near Petropavlovsk. Russia	1996-05-04	14:44:00
8826	Off Matsu Island. Taiwan	1996-05-04	\N
8828	Cheyenne. Wyoming	1996-11-04	08:24:00
8830	Near Haj Yousif. Sudan	1996-03-05	22:00:00
8832	Near Terrace. British Columbia. Canada	1996-09-05	\N
8834	Otaez. Mexico	1996-10-05	\N
8836	Oumba. Papua New Guinea	1996-11-05	13:15:00
8838	Everglades. Miami. Florida	1996-11-05	14:15:00
8840	Griesta. United Kingdom	1996-05-19	23:36:00
8842	Kinshasa. DemocratiRepubliCongo	1996-06-06	\N
8844	Rasht. Iran	1996-09-06	14:55:00
8846	Near Rollingstone. Queensland  Australia	1996-12-06	19:00:00
8848	Fukuoka. Japan	1996-06-13	12:07:00
8850	Shanghai. China	1996-06-21	17:04:00
8852	Pensacola. Florida	1996-06-07	15:42:00
8854	Papua. New Guinea	1996-09-07	16:30:00
8856	Near Kanda. India	1996-11-07	09:00:00
8858	Near Eindhoven. The Netherlands	1996-07-15	18:00:00
8860	Off East Moriches. New York	1996-07-17	20:31:00
8862	Near Playa del Carmen. Mexico	1996-07-17	16:35:00
8864	Russian Mission. Alaska	1996-07-20	15:15:00
8866	Near Mergui. Manmar	1996-07-24	\N
8868	Markham Bay. Canada	1996-12-08	13:47:00
8870	Near Bronson Creek. British Columbia. Canada	1996-08-14	\N
8872	Near Jackson Hole. Wyoming	1996-08-17	23:48:00
8874	Near Alliford Bay. British Columbia. Canada2	1996-08-18	19:50:00
8876	Belgrade. Yugosalvia	1996-08-19	03:16:00
8878	Spitsbergen. Norway	1996-08-29	10:22:00
8880	Joinville. Brazil	1996-09-13	\N
8882	Anchorage. Alaska	1996-09-23	17:00:00
8884	Waddenzee. Netherlands	1996-09-25	16:37:00
8886	Off Pasamayo. Peru	1996-02-10	01:16:00
8888	Kahemba. Congo	1996-03-10	\N
8890	Lukapa. Angola	1996-06-10	\N
8892	San Francesco al Campo. Italy	1996-08-10	10:50:00
8894	Ketchikan. Alaska	1996-10-13	14:55:00
8896	Eel River Crossing. New Brunswick. Canada	1996-10-20	12:12:00
8898	Manta. Ecuador	1996-10-22	22:41:00
8900	Khanty. Russia	1996-10-26	20:45:00
8902	Sao Paolo. Brazil	1996-10-31	08:27:00
8904	Near Tikal. Guatemala	1996-01-11	08:10:00
8906	Aubusson. France	1996-07-11	09:29:00
8908	Lucapa. Angola	1997-12-03	\N
8910	Lagos. Nigeria	1996-07-11	17:00:00
8912	Near Charkhidadri. India	1996-12-11	18:40:00
8914	Ngong. Kenya	1996-11-13	\N
8916	BolchaÃ¯a Pyssa. Russia	1996-11-14	\N
8918	Quincy. Illinois	1996-11-19	17:01:00
8920	Off Cape Mendocino. CA	1996-11-22	19:30:00
8922	Off Moroni. Comoros	1996-11-23	15:15:00
8924	Bethel. Arkansas	1996-11-26	11:00:00
8926	Abakan. Siberia. Russia	1996-11-27	11:54:00
8928	Medellin. Colombia	1996-11-30	10:33:00
8930	Banjarmasin. Indonesia	1996-07-12	15:23:00
8932	Boise. Idaho	1996-09-12	18:03:00
8934	Tver. Russia	1996-12-17	\N
8936	Rio Negro. Colombia	1996-12-21	22:32:00
8938	Narrows. Virginia	1996-12-22	18:10:00
8940	Near Nellore. India	1996-12-24	15:00:00
8942	Dorchester. New Hampshire	1996-12-24	10:05:00
8944	Edenton. North Carolina	1997-02-01	18:35:00
8946	Near Moamoa. Samoa	1997-07-01	11:00:00
8948	Near Monroe. Michigan	1997-09-01	15:54:00
8950	Sparrevohn. Arkansas	1997-01-29	23:10:00
8952	Yola. Nigeria	1997-01-31	\N
8954	Tambacoumba. Senegal	1997-01-02	14:38:00
8956	Near Quiangala. Angola	1997-02-02	17:30:00
8958	Northern Israel	1997-04-02	19:00:00
8960	Carajas. Brazil	1997-02-14	12:34:00
8962	Guatemala City. Guatemala	1997-02-19	03:06:00
8964	Lake Simcoe. Ontario. Canada	1997-04-03	\N
8966	Medellin. Colombia	1997-07-03	\N
8968	Near Mashhad. Iran	1997-03-13	18:06:00
8970	Cherkessk. Russia	1997-03-18	10:04:00
8972	Tegucigalpa. Honduras	1997-01-04	\N
8974	Griffin. Georgia	1997-04-04	00:16:00
8976	Near Wainwright. Alaska	1997-10-04	20:30:00
8978	Brazzaville. DemocratiRepubliCongo	1997-04-14	\N
8980	Gyandzha. Azerbaijan	1997-04-15	\N
8982	Near Sorei. Niger	1997-04-16	\N
8984	Tanjung Pandan. Indonesia	1997-04-19	07:39:00
8986	Near Konduz. Afghanistan	1997-04-23	18:00:00
8988	Huangtian. China	1997-08-05	21:28:00
8990	Near Irumu. Congo	1997-06-06	07:35:00
8992	Mandalgobi. Mongolia	1997-10-06	\N
8994	Madh Island. India	1997-03-07	03:49:00
8996	Skwentna. Alaska	1997-05-07	\N
8998	Near Saravena. Colombia	1997-06-07	\N
9000	Suzano. Brazil	1997-09-07	09:30:00
9002	Off Santiago de Cuba. Cuba	1997-11-07	21:55:00
9004	Skagway. Alaska	1997-12-07	17:30:00
9006	Bandung. Indonesia	1997-07-17	11:56:00
9008	Goroka.  New Guinea	1997-07-18	10:32:00
9010	Near Ranong. Thailand	1997-07-21	13:08:00
9012	Calabar . Nigeria	1997-07-29	\N
9014	Florence. Italy	1997-07-30	10:30:00
9016	Agana. Guam	1997-06-08	01:42:00
9018	Miami. Florida	1997-07-08	12:36:00
9020	Matsu Island. Taiwan	1997-10-08	08:15:00
9022	100 miles SW of Kuujjuaq. Quebec. Canada	1997-10-08	13:30:00
9024	Tindal. NT. Australia	1997-08-14	16:35:00
9026	CriciÃºma. Brazil	1997-08-15	19:30:00
9028	Puerto Inirida. Venezuela	1997-08-29	\N
9030	Phnom Penh. Cambodia	1997-03-09	14:00:00
9032	Near Miri. Malaysia	1997-06-09	19:44:00
9034	Near Uvira. Zaire	1997-12-09	\N
9036	Off Namibia. Africa	1997-09-13	17:10:00
9038	Buah Nabar. Indonesia	1997-09-26	13:34:00
9040	Near Montrose. Colorado	1997-08-10	07:23:00
9042	Banjul. Gambia	1997-09-10	03:00:00
9044	Nuevo Berlin. Uruguay	1997-10-10	22:23:00
9046	Taipei. Taiwan	1997-10-10	\N
9048	Monterey Bay. near PacifiGrove. California	1997-12-10	17:28:00
9050	Jalal-Abad. Afghanistan	1997-10-29	\N
9052	Near La Roche. Alberta. Canada	1997-10-30	\N
9054	Near Barrow. Alaska	1997-08-11	08:08:00
9056	Irkutsk-2. Russia	1997-05-12	14:46:00
9058	Little Grand Rapids. Canada	1997-09-12	15:26:00
9060	La Veriente. Bolivia	1997-12-13	17:05:00
9062	Sharjah. United Arab Emirates	1997-12-16	18:35:00
9064	Near Mackenzie. British Colombia. Canada	1997-12-16	13:30:00
9066	Fotina. Greece	1997-12-17	21:13:00
9068	Near Palembang. Indonesia	1997-12-19	16:13:00
9070	Tanagra. Greece	1997-12-20	\N
9072	AtlantiOcean. off Angola	1997-12-27	\N
9074	Over the PacifiOcean	1997-12-28	23:10:00
9076	Rio Sidra. Panama	1997-12-31	07:45:00
9078	Maiden. North Carolina	1998-09-01	17:04:00
9080	Tor Kach. Pakistan	1998-01-13	22:30:00
9082	Brno. Czech Republic	1998-01-13	18:30:00
9084	Yangon (Rangoon). Myanmar	1998-01-27	11:45:00
9086	Pagalungan. Philippines	1998-02-02	11:00:00
9088	Near Cavalese. Trento. Italy	1998-03-02	15:15:00
9090	Terceira. Portugal	1998-04-02	22:17:00
9092	Near Navafria. Spain	1998-05-02	12:10:00
9094	Near Nasir. Sudan	1998-12-02	08:30:00
9096	Taipei. Taiwan	1998-02-16	20:09:00
9098	Near Clarksville. Tennesee	1998-05-03	05:20:00
9100	Bismark. North Dakota	1998-07-03	08:38:00
9102	Mombasa. Kenya	1998-10-03	16:35:00
9104	Off Hsinchu. Taiwan	1998-03-18	19:31:00
9106	Near Charasyab. Afghanistan	1998-03-19	14:00:00
9108	Bacolod. Philippines	1998-03-22	19:42:00
9110	Piura. Peru	1998-03-28	09:35:00
9112	Near Mexico City. Mexico	1998-03-31	\N
9114	Near Bogota. Colombia	1998-04-20	16:47:00
9116	Andoas. Peru	1998-05-05	21:30:00
9118	Near Nema. Mauritania	1998-12-05	19:30:00
9120	Near Longtiang. Laos	1998-05-25	10:20:00
9122	Indian Trail. North Carolina	1998-05-25	00:32:00
9124	Near Erdenet. Mongolia	1998-05-26	09:30:00
9126	Montreal. Canada	1998-06-18	07:28:00
9128	Mt. Waialeale. Hawaii	1998-06-25	09:32:00
9130	Off Rasal. United Arab Emirates	1998-07-13	23:15:00
9132	CÃ³rdoba. Argentina	1998-07-16	21:41:00
9134	Asmara. Eritrea	1998-07-17	04:15:00
9136	Pico de Orizaba. Mexico	1998-07-23	\N
9138	Southhampton. England	1998-07-27	\N
9140	Barcelona. Spain	1998-07-28	\N
9142	Manacapuru River. Brazil	1998-07-29	16:00:00
9144	Kochi. India	1998-07-30	11:05:00
9146	Genoa. Italy	1999-02-25	12:30:00
9148	Near Quiberon. France	1998-07-30	15:58:00
9150	Kincolith. British Columbia. Canada	1998-04-08	17:58:00
9152	Saurimo. Angola	1998-11-08	\N
9154	Foveaux Strait. New Zealand	1998-08-19	16:40:00
9156	Near Ghorepani. Nepal	1998-08-21	11:30:00
9158	Roseau. Dominica	1998-08-23	17:40:00
9160	Pretoria. South Africa	1998-08-24	16:46:00
9162	Manibagi. Myanmar	1998-08-24	08:35:00
9164	Quito. Ecuador	1998-08-29	13:03:00
9166	Angola	1998-02-09	\N
9168	Off Peggy´s Cove. Nova Scotia. Canada	1998-02-09	21:30:00
9170	Port Alsworth. Alaska	1998-09-09	10:45:00
9172	Islamabad. Pakistan	1998-10-09	\N
9174	Luzamba. Angola	1999-01-07	\N
9176	Near Silimo. Indonesia	2001-08-01	\N
9178	Mount Cook. New Zealand	1998-09-14	11:52:00
9180	Near Nador. Morroco	1998-09-25	09:00:00
9182	Praia. Cape Verde	1998-09-28	13:30:00
9184	Off Mannar. Sri Lanka	1998-09-29	13:50:00
9186	Near Canaima. Venezuela	1998-02-10	09:45:00
9188	Near Kindu. Congo	1998-10-10	\N
9190	Yerevan. Armenia	1998-10-21	13:51:00
9192	Fortaleza. Brazil	1998-10-21	08:52:00
9194	Rwenzori mountains. Uganda	1998-10-25	\N
9196	Near Quetzaltenango. Guatemala	1998-01-11	13:14:00
9198	Near Krasnoyarsk. Russia	1998-11-11	05:20:00
9200	Koror. Nepal	1998-11-17	\N
9202	Edgewater. Maryland	1998-11-21	17:43:00
9204	Victoria. British Columbia	1998-11-23	00:30:00
9206	King Island. Tasmania	1998-11-27	\N
9208	Umpire. Arkansas	1998-02-12	12:16:00
9210	Baie-Comeau. Canada	1998-07-12	11:13:00
9212	Sittwe. Myanmar	1999-02-07	14:27:00
9214	Near Surat Thani. Thailand	1998-11-12	19:10:00
9216	Near Cuito. Angola	1998-12-14	\N
9218	Saurimo. Angola	1998-12-17	\N
9220	MedellÃ­n. Colombia	1998-12-22	00:15:00
9222	Vila Nova. Angola	1998-12-26	12:00:00
9224	Near Huambo. Angola	1999-02-01	\N
9226	Guernsey. Channel Islands. England	1999-12-01	17:00:00
9228	Geilenkirchen. Germany	1999-01-13	\N
9230	Mayne Island. British Columbia. Canada	1999-01-13	06:33:00
9232	Coconut Island. QLD. Australia	1999-01-16	14:30:00
9234	Jumla. Nepal	1999-01-17	16:30:00
9236	Bluefields. Nicaragua	1999-01-21	08:10:00
9238	Luanda. Angola	1999-02-02	05:08:00
9240	Hoskins. Papua New Guinea	1999-03-02	10:20:00
9242	Kinshasa.  DemocratiRepubliCongo	1999-08-02	\N
9244	Near Bishop. California	1999-12-02	10:30:00
9246	Rui´an. China	1999-02-24	16:34:00
9248	New Delhi. India	1999-07-03	08:23:00
9250	Near Tame. Colombia	1999-03-18	16:05:00
9252	Davis Inlet. Newfoundland. Canada	1999-03-19	09:45:00
9254	Ribeirao Preto. Brazil	1999-07-04	11:30:00
9256	Near Ceyhan. Turkey	1999-07-04	00:33:00
9258	Near Malaga. Colombia	1999-08-04	11:35:00
9260	Shanghi. China	1999-04-15	16:05:00
9262	Off Port Vila. Vanuatu	1999-08-05	19:21:00
9264	Kunching. Malaysia	1999-05-24	13:15:00
9266	Ol Kiombo. Kenya	1999-05-29	14:30:00
9268	Little Rock. Arkansas	1999-01-06	23:50:00
9270	Near Khartoum. Sudan	1999-03-06	\N
9272	Coron. Philippines	1999-09-06	\N
9274	Juneau. Alaska	1999-09-06	10:50:00
9276	Goroka. Papua New Guinea	1999-06-17	08:52:00
9278	Long Haul Lake. Manatoba. Canada	1999-06-25	13:20:00
9280	Seraing. Belgium	1999-06-30	02:42:00
9282	Villavicencio. Colombia	1999-04-07	12:05:00
9284	Near Kathmandu. Nepal	1999-07-07	19:51:00
9286	Toluca . Mexico	1999-09-07	04:30:00
9288	Off Martha´s Vineyard. Massachusetts	1999-07-16	21:41:00
9290	Near Bluefields. Nicaragua	1999-07-20	11:00:00
9292	Tokyo. Japan	1999-07-23	11:25:00
9294	Near Orito. Colombia	1999-07-23	03:30:00
9296	Nasevou Village. Fiji	1999-07-24	05:35:00
9298	Marine City. Michigan	1999-07-31	08:30:00
9300	Santo Antao. Cape Verde Islands	1999-07-08	12:00:00
9302	Sept-ÃŽles. Canada	1999-12-08	23:58:00
9304	Hong Kong. China	1999-08-22	18:45:00
9306	Hualian. Taiwan	1999-08-24	12:36:00
9308	Turtkul. Uzbekistan	1999-08-26	10:54:00
9310	Buenos Aires. Argentina	1999-08-31	20:55:00
9312	Mount Meru. Tanzania	1999-01-09	10:26:00
9314	Glasgow. Scotland	1999-03-09	12:50:00
9316	Westerly. Rhode Island	1999-05-09	11:53:00
9318	Near Kathmandu. Nepal	1999-05-09	10:30:00
9320	Bucharest. Romania	1999-09-14	\N
9322	Belelm. Brazil	1999-09-14	21:20:00
9324	Mt. Hidalgo. Mexico	1999-09-17	\N
9326	Mt. Mauna Loa. Hawaii	1999-09-25	17:25:00
9328	Dhahran. Saudi Arabia	1999-02-10	19:15:00
9330	Off Genova. Italy	1999-10-24	10:15:00
9332	San Carlos. Venezuela	1999-10-24	\N
9334	Aberdeen. South Dakota	1999-10-25	11:20:00
9336	Off Nantucket Island. Massachusetts	1999-10-31	06:52:00
9338	Charllis. Idaho	1999-10-31	09:35:00
9340	Zheng Zou AB. China	2001-04-01	\N
9342	Near Uruapan. Mexico	1999-09-11	19:03:00
9344	Near Pristina. Kosovo	1999-12-11	11:13:00
9346	Nairobi. Kenya	1999-11-26	05:26:00
9348	Moscow. Russia	1999-05-12	05:12:00
9350	Johannesburg. South Africa	1999-06-12	07:06:00
9352	Bethel. Alaska	1999-07-12	13:00:00
9354	Near Bayombang. Philippines	1999-07-12	09:25:00
9356	Near Branson. Missouri	1999-09-12	15:12:00
9358	Near Sundsvall. Sweden	1999-09-12	12:04:00
9360	Kuwait City. Kuwait	1999-10-12	\N
9362	Sao Jorge. Azores (Portugal)	1999-11-12	09:20:00
9364	Guatemala City. Guatemala	1999-12-21	09:40:00
9366	Marianna. Florida	2000-05-04	09:30:00
9368	Bukavu. DemocratiRepubliCongo	2000-04-19	\N
9370	Great Hallingbury. United Kingdom	1999-12-22	18:38:00
9372	Amritsar. India / Kandahar. Afghanistan	1999-12-24	\N
9374	Bejuma. Venezuela	1999-12-25	20:15:00
9376	Near Simara. Nepal	1999-12-25	15:02:00
9378	Near Zonguldak. Turkey	1999-12-29	\N
9380	Abuja. Nigeria	2000-05-01	\N
9382	Niederhasli. Switzerland	2000-10-01	17:54:00
9384	Off Marsa el-Brega. Libya	2000-01-13	12:38:00
9386	San Jose. Costa Rica	2000-01-15	13:10:00
9388	Near Ankara. Turkey	2000-01-25	18:09:00
9390	Off Abidjan. Ivory Coast	2000-01-30	21:08:00
9392	Pepa .Congo	2000-04-19	\N
9394	Off Cagayancillo. Philippines	2000-02-07	10:50:00
9396	Off Point Mugu. California	2000-01-31	16:21:00
9398	Tehran. Iran	2000-02-02	\N
9400	Iliamna. Alaska	2000-05-02	16:00:00
9402	Sacramento. California	2000-02-16	19:50:00
9404	Burbank. Calilfornia	2000-05-03	18:11:00
9406	Moscow. Russia	2000-09-03	08:40:00
9408	Ennadai Lake. Canada	2000-03-17	12:31:00
9410	Near Kuna Yala. Panama	2000-03-17	09:30:00
9412	Herreira. Spain	2000-03-22	\N
9414	Kadirana. Sri Lanka	2000-03-24	18:04:00
9416	Huambo. Angola	2000-03-25	\N
9418	Near Gualeguaychu. Argentina	2000-01-04	08:00:00
9420	Boca Raton. Florida	2000-06-23	11:41:00
9422	Samal Island. Philippines	2000-04-19	07:02:00
9424	Bapi. Papua New Guinea	2000-04-29	\N
9426	Lyon Satolas. France	2000-02-05	14:39:00
9428	Kurupung. Guyana	2000-03-05	\N
9430	Kaunakakai. Hawaii	2000-10-05	20:30:00
9432	Moanda. Gabon	2000-05-17	09:47:00
9434	Near Wilkes-Barre. Pennsylvania	2000-05-21	11:28:00
9436	Near Manila. Philippines	2000-05-25	\N
9438	Paris. France	2000-05-25	02:50:00
9440	Off Whyalla. Australia	2000-05-31	19:05:00
9442	Accra. Ghana	2000-05-06	11:35:00
9444	Liverpool. England	2000-06-14	09:50:00
9446	Cuiaba. Brazil	2000-06-21	07:15:00
9448	Shitai. China	2000-06-22	15:16:00
9450	Off Shimano. Japan	2000-06-27	\N
9452	Near Villahermosa. Mexico	2000-08-07	19:50:00
9454	Villavicencio. Colombia	2000-09-07	08:37:00
9456	Raleigh. North Carolina	2000-07-13	00:34:00
9458	Patna. India	2000-07-17	07:34:00
9460	Linneus. Maine	2000-07-19	00:30:00
9462	Nassau. Bahamas	2000-07-20	13:12:00
9464	Maui. Hawaii	2000-07-21	10:20:00
9466	Gonesse. France	2000-07-25	16:44:00
9468	Mafraq. Jordan	2000-07-26	\N
9470	Jodhura. Nepal	2000-07-27	10:31:00
9472	Cubatao. Brazil	2000-02-08	08:45:00
9474	Puerto Montt. Chile	2000-06-08	15:55:00
9476	Burlington Township. New Jersey	2000-09-08	08:00:00
9478	Near Tshikapa. Congo	2000-12-08	\N
9480	Teslin Lake. British Columbia. Canada	2000-08-14	23:57:00
9482	Lumber City. Georgia	2000-08-15	08:25:00
9484	Off Manama. Bahrain	2000-08-23	19:30:00
9486	Hilo Bay. Hawaii	2000-08-25	17:30:00
9488	Near La Fortuna. Costa Rica	2000-08-26	12:10:00
9490	Mount Montezuma. Colombia	2000-02-09	\N
9492	Near Burketown. Australia	2000-04-09	15:10:00
9494	Kumarapura. Sri Lanka	2000-09-16	09:25:00
9496	Nuiqsut. Alaska	2000-09-18	15:10:00
9498	Reynosa. Mexico	2000-06-10	16:55:00
9500	Near Sumacal. Beni. BO	2000-11-12	14:45:00
9502	Port Radium. Northwest Territories. Canada	2000-08-10	15:20:00
9504	Lummi Island. Washington	2000-09-10	09:50:00
9506	Wichita. Kansas	2000-10-10	14:52:00
9508	Hillsboro. Missouri	2000-10-16	17:33:00
9510	Near Sam Neua. Laos	2000-10-19	12:12:00
9512	Near Batumi. Republiof Georgia	2000-10-25	18:15:00
9514	Taipei. Taiwan	2000-10-31	23:17:00
9516	Near Monaquimbundo. Angola	2000-10-31	11:27:00
9518	Luabo. DemocratiRepubliCongo	2000-07-11	\N
9520	Fort Wayne. Indiana	2000-09-11	01:23:00
9522	Near Luanda. Angola	2000-11-15	13:05:00
9524	Miami. Florida	2000-11-20	12:22:00
9526	Cordoba. Spain	2000-11-25	06:04:00
9528	Near Lake Point. Utah	2001-01-14	17:29:00
9530	Eider Point. Alaska	2001-01-23	21:35:00
9532	Ciudad Bolivar. Venezuela	2001-01-25	18:15:00
9534	Byers. Colorado	2001-01-27	17:37:00
9536	El Yopal. Colombia	2001-01-31	16:50:00
9538	Beaver Island. Minnesota	2001-08-02	19:20:00
9540	Nurnberg. Germany	2001-08-02	15:40:00
9542	Jakobkondre. Suriname	2001-10-02	\N
9544	Near Granton Harbour. Scotland	2001-02-27	17:30:00
9546	Rio Azul Farm. Brazil	2001-02-03	\N
9548	Bangkok. Thailand	2001-03-03	14:48:00
9550	Unadilla. Georgia	2001-03-03	09:55:00
9552	Medina. Saudi Arabia	2001-03-15	\N
9554	Near Lubango. Angola	2001-03-17	10:00:00
9556	Gustavia. St. BarthÃ©lÃ©my. French West Indies	2001-03-24	16:30:00
9558	Jadura. Indonesia	2001-03-26	18:25:00
9560	Near Aspen. Colorado	2001-03-29	19:01:00
9562	Ashbaubenon. Wisconsin	2001-02-04	16:30:00
9564	Adar Yeil. Sudan	2001-04-04	\N
9566	Thanh Tranh Village. Vietnam	2001-07-04	15:30:00
9568	Near Roque Perez. Argentina	2001-04-28	05:15:00
9570	Malatya. Turkey	2001-05-16	13:15:00
9572	Mendoza. Argentina	2001-05-17	12:21:00
9574	Near Sari. Iran	2001-05-17	07:45:00
9576	Near Myakotino. Russia	2001-05-22	16:35:00
9578	Jayapura. Indonesia	2001-06-15	14:30:00
9580	Near Irkutsk. Russia	2001-04-07	02:08:00
9582	Off Chinhae. South Korea	2001-05-07	11:40:00
9584	Near Puerto Cabello. Venezuela	2001-12-07	12:05:00
9586	Near Moscow. Russia	2001-07-14	08:53:00
9588	Haines. Alaska	2001-07-30	16:00:00
9590	ReykjavÃ­k. Iceland	2001-05-08	04:43:00
9592	Near Meadview. Arizona	2001-10-08	14:35:00
9594	Mugogo. DemocratiRepubliCongo	2001-08-23	\N
9596	Terceira. Azores	2001-08-24	18:46:00
9598	Ithaca. New York	2001-08-24	05:42:00
9600	Marsh Harbour. Bahamas	2001-08-25	18:45:00
9602	Near Malaga. Spain	2001-08-29	10:15:00
9604	Shanksville. Pennsylvania	2001-11-09	10:03:00
9606	Arlington. Virginia.	2001-11-09	09:45:00
9608	New York City. New York	2001-11-09	08:47:00
9610	New York City. New York	2001-11-09	09:03:00
9612	Near Chichen Itza. Mexico	2001-12-09	16:25:00
9614	Belo Horizonte. Brazil	2001-09-15	\N
9616	Guatemala City. Guatemala	2001-09-18	07:30:00
9618	Decatur Island. Washington	2001-03-10	13:38:00
9620	110 miles SW of Sochi. Russia	2001-04-10	13:44:00
9622	Milan. Italy	2001-08-10	08:10:00
9624	Mollet Lake. Quebec. Canada	2001-08-10	17:50:00
9626	Dillingham. Alaska	2001-10-10	09:26:00
9628	Off Valencia. Spain	2001-10-10	10:42:00
9630	Shamattawa. Canada	2001-11-10	23:35:00
9632	Near Humiata. Brazil	2001-10-13	18:00:00
9634	Anchorage. Alaska	2001-10-18	15:43:00
9636	Belle Harbor. Queens. New York	2001-12-11	09:16:00
9638	Kalyazin. Russia	2001-11-19	21:19:00
9640	Pittsburgh. Pennsylvania	2001-11-22	13:05:00
9642	Palade. Estonia	2001-11-23	18:35:00
9644	Birchwil. Switzerland	2001-11-24	22:07:00
9646	Port Harcourt. Nigeria	2001-11-27	01:56:00
9648	San JerÃ³nimo de Moravia . Costa Rica	2001-11-28	11:48:00
9650	Near Novaya Inya . Russia	2001-01-12	12:54:00
9652	Bessemer. Alabama	2001-01-12	01:43:00
9654	Sierra Blanca. Texas	2001-10-12	18:21:00
9656	Geti. DemocratiRepubliCongo	2001-12-14	\N
9658	Near Medellin. Colombia	2001-12-16	10:21:00
9660	Zurich. Switzerland	2001-12-20	22:08:00
9662	Bremerhaven. Germany	2001-12-26	10:20:00
9664	Hollywood. Florida	2002-01-01	18:02:00
9666	Birmingham. England	2002-04-01	12:07:00
9668	Shamsi AFB. Pakistan	2002-09-01	\N
9670	Bilbao. Spain	2002-01-14	07:28:00
9672	Chilpancingo. Mexico	2002-01-15	08:45:00
9674	Near Solo. Indonesia	2002-01-16	16:29:00
9676	Near La Bonita. Ecuador	2002-01-17	11:00:00
9678	Near Milford Sound. New Zealand	2002-01-19	09:40:00
9680	Near Luena. Angola	2002-01-27	\N
9682	Near Ipiales. Colombia	2002-01-28	11:00:00
9684	Ellsworth AFB. South Dakota	2002-02-02	17:15:00
9686	Near Khorramabed. Iran	2002-12-02	07:50:00
9688	Monrovia. Liberia	2002-02-15	06:08:00
9690	Lakhta. Russia	2002-02-21	20:44:00
9692	Off Dumaguete. Philippines	2002-02-22	02:30:00
9694	Monte Rotondo. Italy	2002-09-03	13:40:00
9696	Near Placetas. Cuba	2002-03-14	16:30:00
9698	Alma. Wisconsin	2002-03-15	02:00:00
9700	Off Djibouti. Republiof Djibouti	2002-03-17	08:02:00
9702	Near Cairns. QLD. Australia	2002-01-04	07:25:00
9704	Palma de Mallorca. Spain	2002-12-04	04:07:00
9706	Busan. South Korea	2002-04-15	11:23:00
9708	Near Sweers Island. QLD. Australia	2002-04-18	09:30:00
9710	PopayÃ¡n. Colombia	2002-04-19	09:15:00
9712	Near Olancho. Honduras	2002-04-24	13:00:00
9714	Near Abakan. Russia	2002-04-28	06:15:00
9716	Kano. Nigeria	2002-04-05	13:30:00
9718	Near Tunis. Tunisia	2002-07-05	15:17:00
9720	Off Dalian. China	2002-07-05	21:32:00
9722	Near Calabar. Nigeria	2002-05-21	19:30:00
9724	Off Penghu Island. Taiwan	2002-05-25	15:29:00
9726	Near Nabire. Indonesia	2002-05-25	\N
9728	George. South Africa	2002-01-06	06:45:00
9730	Near Ndalatando. Angola	2002-02-06	\N
9732	Oiapoque. Amapa. Brazil	2002-04-06	\N
9734	Winnipeg. Manitoba	2002-11-06	09:20:00
9736	Near Gardez. Afghanistan	2002-12-06	21:24:00
9738	Uberlingen. Germany	2002-01-07	23:36:00
9740	San Dimas. California	2002-04-07	12:30:00
9742	Bangui. Central African Republic	2002-04-07	11:15:00
9744	Port Alsworth. Alaska	2002-12-07	11:45:00
9746	Near Long Barai. Indonesia	2002-07-16	\N
9748	Off Cromer. Norfork. England	2002-07-16	19:45:00
9750	Surkhet. Nepal	2002-07-17	14:22:00
9752	Lviv. Ukraine	2002-07-27	12:45:00
9754	Moscow. Russia	2002-07-28	15:25:00
9756	Caguas. Puerto Rico	2002-07-08	22:00:00
9758	Kadjuduwa Watta. Sri Lanka	2002-08-15	12:35:00
9760	Khankala. Chechnya	2002-08-19	\N
9762	Pokhara. Nepal	2002-08-22	09:41:00
9764	Near Ayan. Russia	2002-08-29	11:58:00
9766	Lexington. Kentucky	2002-08-30	13:08:00
9768	Rio Branco. Brazil	2002-08-30	18:30:00
9770	Near Xichang. China	2002-02-09	\N
9772	High Prarie. Alberta. Canada	2002-04-09	09:00:00
9774	Pucallpa. Peru	2002-09-13	13:41:00
9776	Paranapanema. Sao Paulo. Brazil	2002-09-14	\N
9778	Near Natashquan. Quebec. Canada	2002-09-28	11:35:00
9780	Vasco. India	2002-01-10	\N
9782	Santa Cruz do Sul. Brazil	2002-07-10	09:10:00
9784	Spanish Fort. Alabama	2002-10-23	19:45:00
9786	Eveleth. Minnesota	2002-10-25	10:22:00
9788	Near Niederanven. Luxembourg	2002-06-11	10:10:00
9790	Tarakan. Indonesia	2002-07-11	10:27:00
9792	Taos. New Mexico	2002-08-11	14:58:00
9794	Manila. Philippines	2002-11-11	06:09:00
9796	Masai Mara Game Reserve. Kenya	2002-11-28	14:15:00
9798	Mena. Arkansas	2002-09-12	11:41:00
9800	Gohu Airstrip. Papua New Guinea	2002-12-13	\N
9802	Mosul. Iraq	2003-11-15	18:30:00
9804	Rockford. Illinois	2002-12-17	22:51:00
9806	Off Pachao Tao. Taiwan	2002-12-21	01:52:00
9808	Near Isfanan. Iran	2002-12-23	19:30:00
9810	Off Manteo. North Carolina	2002-12-25	01:00:00
9812	Curitiba. Brazil	2002-12-26	11:20:00
9814	Anjouan. Comoros Islands	2002-12-27	15:00:00
9816	Diyarbakir. Turkey	2003-08-01	20:28:00
9818	Charlotte. North Carolina	2003-08-01	08:53:00
9820	Near Chachapoyas. Peru	2003-09-01	08:43:00
9822	Near NdjolÃ©. Gabon	2003-01-17	\N
9824	Busia. Kenya	2003-01-24	16:45:00
9826	Baucau. East Timor	2003-01-31	15:21:00
9828	Near Agadir. Morocco	2003-07-02	\N
9830	Tallinn. Estonia	2003-10-02	19:42:00
9832	Ferguson. Kentucky	2003-02-16	20:02:00
9834	Near Shahdad. Iran	2003-02-19	17:30:00
9836	Near Kohat. Pakistan	2003-02-20	08:52:00
9838	Near Barki. Russia	2003-01-03	14:25:00
9840	Tamanrasset. Algeria	2003-06-03	15:45:00
9842	Mulia. Indonesia	2003-03-27	12:30:00
9844	New Vienna. Iowa	2003-03-28	15:49:00
9846	Near Kinshasa. Congo	2003-08-05	\N
9848	Near Macka. Turkey	2003-05-26	04:45:00
9850	Talkeetna. Alaska	2003-05-28	13:30:00
9852	Milan. Italy	2003-01-06	15:26:00
9854	Near Oiapoque.  Brazil	2003-04-06	\N
9856	Christchurch. New Zealand	2003-06-06	19:15:00
9858	Belo Horizonte. Brazil	2003-11-06	\N
9860	Volcano. Hawaii	2003-06-15	09:35:00
9862	Near Brest. France	2003-06-22	23:55:00
9864	Near Rudshour. Iran	2003-06-25	13:00:00
9866	Anchor Point. Alaska	2003-06-25	15:50:00
9868	Near Rooisand Desert Ranch. Namibia	2003-06-26	19:30:00
9870	Blida. Algeria	2003-06-30	10:50:00
9872	Belem. Para. Brazil	2003-01-07	19:57:00
9874	MacaÃ©. Rio de Janeiro. Brazil	2003-05-07	11:30:00
9876	Port Sudan. Sudan	2003-08-07	04:00:00
9878	Off Treasure Cay. Bahamas	2003-07-13	15:30:00
9880	Near San Cristobal. Venezuela	2003-07-13	12:15:00
9882	Mount Kenya. Kenya	2003-07-19	18:00:00
9884	Waialeale.Kauai. Hawaii	2003-07-23	08:53:00
9886	Groton. Connecticut	2003-04-08	06:39:00
9888	Tocomita. Venezuela	2003-08-08	09:32:00
9890	Kamchatka Peninsula. Russia	2003-08-20	13:05:00
9892	Cap Haitien. Haiti	2003-08-24	14:00:00
9894	Off Hyannis. Massachusetts	2003-08-26	15:38:00
9896	Near Summer Beaver. Canada	2003-11-09	20:30:00
9898	Del Rio. Texas	2003-09-19	17:10:00
9900	Near La Quemada. Mexico	2003-09-19	20:00:00
9902	Near Meadview. Arizona	2003-09-20	19:55:00
9904	GaspÃ©. Quebec. Canada	2003-09-27	18:57:00
9906	Sao Gabriel de Cachoeria	2003-03-10	\N
9908	Off Waikanae. New Zealand	2003-03-10	21:25:00
9910	Uriman. Venezuela	2003-11-10	16:00:00
9912	Buenos Aires. Argentina	2003-10-26	04:31:00
9914	Tampico. Mexico	2003-10-27	08:08:00
9916	Cody. Wyoming	2003-10-29	08:51:00
9918	Near Hasi. Iraq	2003-02-11	09:00:00
9920	Near Ogle. Guyana	2003-08-11	10:59:00
9922	200 miles NE of Derby. Australia	2003-08-11	10:26:00
9924	Spokane. Washington	2003-11-29	08:01:00
9926	Boende. Congo	2003-11-29	15:20:00
9928	Jellicoe. Ontario. Canada	2003-12-16	12:00:00
9930	Mitu. Colombia	2003-12-18	22:00:00
9932	Helendale. California	2003-12-23	09:13:00
9934	Cotonou. Benin	2003-12-25	14:55:00
9936	Off Sharm el Sheikh. Egypt	2004-03-01	04:44:00
9938	Tashkent. Uzbekistan	2004-01-13	19:40:00
9940	Lake Erie. off Pelee Island. Ontario. Canada	2004-01-17	16:40:00
9942	GhardaÃ¯a. Algeria	2004-01-28	20:55:00
9944	Bitonja. Bosnia-Herzegovina	2004-06-02	08:01:00
9946	Sharjah. United Arab Emirates	2004-10-02	11:40:00
9948	Cagliari. Italy	2004-02-24	05:50:00
9950	Trefoil Island. TAS. Australia	2004-01-03	17:50:00
9952		2004-04-03	09:40:00
9954	San Diego-Miramar NAS. California	2004-10-03	20:42:00
9956	Off Beef Island. British Virgin Islands	2004-12-07	07:15:00
9958	Tonopah. Nevada	2004-03-16	04:01:00
9960	Hamilton Island. QLD. Australia	2004-03-18	17:08:00
9962	Pyote. Texas	2004-03-21	02:20:00
9964	Near Milpillas. Mexico	2004-02-05	16:00:00
9966	Chimanta mountains. Venezuela	2004-04-05	11:00:00
9968	Carepa. Colombia	2004-05-05	13:00:00
9970	Jiech. Sudan	2004-06-05	15:00:00
9972	Dalang. Sudan	2004-11-05	\N
9974	Near Manaus. Brazil	2004-05-14	18:30:00
9976	Bozoy. Kazakhstan	2004-05-18	10:40:00
9978	Urumqi. China	2004-05-18	10:50:00
9980	Mwingi. Kenya	2004-05-23	07:30:00
9982	Near Lukla. Nepal	2004-05-25	13:56:00
9984	Off Libreville. Gabon	2004-08-06	09:38:00
9986	Belo Horizonte. Brazil	2004-11-06	\N
9988	Near Yengema. Sierra Leone	2004-06-28	09:17:00
9990	Panama City. Panama	2004-02-07	13:38:00
9992	Ticonderoga. New York	2004-10-07	09:00:00
9994	Off  MacaÃ© . Rio de Janeiro . Brazil	2004-07-22	08:30:00
9996	Ononge. Papua New Guinea	2004-07-29	10:30:00
9998	Cincinnati. Ohio	2004-08-13	00:50:00
10000	Great Falls. Montana	2004-08-17	23:40:00
10002	Near Goma. DemocratiRepubliCongo	2004-08-18	11:10:00
10004	Near Maracay. Venezuela	2004-08-21	16:28:00
10006	Near Rostov-on-Don. Russia	2004-08-24	22:59:00
10008	Near Toula. Russia	2004-08-24	22:56:00
10010	Near MGrath. Alaska	2004-08-27	16:30:00
10012	Villahermosa. Mexico	2004-09-09	06:50:00
10014	Off Mount Athos. Greece	2004-11-09	11:10:00
10016	Tortuguero lagoon. Puerto Rico	2004-09-29	18:59:00
10018	Kaduqli. Sudan	2004-05-10	12:37:00
10020	Houston. Texas	2004-11-22	06:15:00
10022	Near Bagram. Afghanstan	2004-11-27	11:20:00
10024	Jefferson City. Missouri	2004-10-14	22:15:00
10026	Halifax. Nova Scotia. Canada	2004-10-14	03:56:00
10028	Near Medellin. Colombia	2004-10-15	07:46:00
10030	Coron Island. Philippines	2004-10-16	15:00:00
10032	Near Kirksville. Missouri	2004-10-19	07:45:00
10034	Martinsville. Virginia	2004-10-24	16:30:00
10036	San Diego. California	2004-10-24	00:30:00
10038	Caracas. Venezuela	2004-11-18	13:02:00
10040	Baotou. Inner Mongolia. China	2004-11-21	08:20:00
10042	Montrose. Colorado	2004-11-28	09:55:00
10044	Solo. Indonesia	2004-11-30	18:14:00
10046	Saint Louis. Missouri	2004-11-30	19:56:00
10048	Bellevue. Idaho	2004-06-12	10:23:00
10050	Near La Macarena. Colombia	2004-07-12	10:45:00
10052	El Junquito. Venezuela	2004-10-12	\N
10054	Uberaba. Brazil	2004-11-12	05:30:00
10056	Near Jeddah. Saudi Arabia	2004-11-12	\N
10058	Manguipayan. Colombia	2005-01-13	05:20:00
10060	Tura.Siberia. Russia	2005-01-13	13:20:00
10062	Keene. New Hampshire	2005-01-13	22:18:00
10064	Rutbah. Iraq	2005-01-26	01:20:00
10066	Lasi. Hungary	2005-01-27	08:10:00
10068	Near Al Taji. Iraq	2005-01-30	16:30:00
10070	Near Peshawar. Pakistan	2005-03-02	17:00:00
10072	Near Khartoum. Sudan	2005-03-02	08:07:00
10074	Lebec. California	2005-10-02	20:30:00
10076	Near Pueblo. Colorado	2005-02-16	09:13:00
10078	Bimin. Papua. New Guinea	2005-02-22	13:22:00
10080		2005-02-22	07:15:00
10082	Chrallave. Venezuela	2005-08-03	09:23:00
10084	Off Campbeltown. United Kingdom	2005-03-15	00:15:00
10086	Varandey. Russia	2005-03-16	13:57:00
10088	Off Mwanza. Tanzania	2005-03-23	23:07:00
10090	El Embrujo. Providencia Island. Colombia	2005-03-26	10:15:00
10092	Near Rovie. Albania	2005-03-31	20:00:00
10094	Enarotali. Indonesia	2005-12-04	12:10:00
10096	Tehran. Iran	2005-04-20	22:15:00
10098	Pisco. Peru	2005-04-28	11:28:00
10100	Taranaki. New Zealand	2005-02-05	22:15:00
10102	Near Kisangani. DemocratiRepubliCongo	2005-05-05	13:30:00
10104	Lockhart River. Queensland. Australia	2005-07-05	11:45:00
10106	El Portezulo. Argentina	2005-05-16	12:20:00
10108	Mongu. Zambia	2005-05-18	13:27:00
10110	Walungu. Congo	2005-05-25	\N
10112	Khartoom. Sudan	2005-02-06	11:15:00
10114	Baney. Equatorial Guinea	2005-07-16	10:00:00
10116	Toronto. Canada	2005-02-08	16:04:00
10118	Off Palermo. Italy	2005-06-08	15:40:00
10120	Off Talinn. Estonia	2005-10-08	12:43:00
10122	Near Grammatikos. Greece	2005-08-14	12:20:00
10124	Near La Cucharita. Venezuela	2005-08-16	03:30:00
10126	Near Pucallpa. Peru	2005-08-23	15:06:00
10128	Isiro. DemoctratiRepubliCongo	2005-05-09	07:30:00
10130	Medan. Indonesia	2005-05-09	09:40:00
10132	Near Brazzaville. Congo	2005-09-09	15:45:00
10134	Alto da Boa Vista. Brazil	2005-09-15	14:55:00
10136	San Juan de Manapiare. Venezuela	2005-09-16	09:00:00
10138	Haena. Hawaii	2005-09-23	14:15:00
10140	Aru. DemocratiRepubliCogo	2005-04-10	\N
10142	Winnipeg. Canada	2005-06-10	05:40:00
10144	Lisa. Nigeria	2005-10-22	20:40:00
10146	Stupino. Russia	2005-11-19	22:30:00
10148	Tehran. Iran	2005-06-12	14:15:00
10150	Chicago. Illinois	2005-08-12	19:15:00
10152	Near Port Harcourt. Nigeria	2005-10-12	14:08:00
10154	Off Miami Beach. Florida	2005-12-19	14:40:00
10156	Nardaran. Azerbaijan	2005-12-23	22:27:00
10158	Puncak Jaya. Indonesia	2006-11-17	08:07:00
10160	Truckee. California	2005-12-28	14:05:00
10162	Near Karkov	2006-02-01	11:11:00
10164	Bukalaza. Uganda	2006-08-01	13:00:00
10166	Near Orumiyeh. Iran	2006-09-01	09:30:00
10168	Near Telkibanya. Hungary	2006-01-19	19:30:00
10170	Near Port Alberni. British Columbia. Canada	2006-01-21	\N
10172	Near Watertown. Wisconson	2006-05-02	16:53:00
10174	Near Paris. Tennessee	2006-08-02	12:12:00
10176	Labiano. Spain	2006-07-03	16:20:00
10178	Near La Paz. Bolivia	2006-09-03	16:30:00
10180	Butte. Montana	2006-03-18	14:48:00
10182	Cuenca. Ecuador	2006-03-24	11:00:00
10184	Rio Bonito. Brazil	2006-03-31	17:35:00
10186	Marsabit. Kenya	2006-10-04	10:00:00
10188	KoussÃ©ri. Cameroon	2006-04-23	04:55:00
10190	Near Tersky. Russia	2006-04-23	20:50:00
10192	Lashkar Gah. Afghanistan	2006-04-24	11:45:00
10194	Peak Margarita. Uganda	2006-04-28	06:47:00
10196	Off Sochi. Russia	2006-03-05	02:15:00
10198	La Ronge. Saskatchewan	2006-05-14	12:32:00
10200	Off SÃ£o TomÃ© Island	2006-05-23	18:22:00
10202	Groton. Connecticut	2006-02-06	14:40:00
10204	Yaocun. China	2006-03-06	16:00:00
10206	Mullan. Idaho	2006-08-06	13:15:00
10208	AbÃ©chÃ©. Chad	2006-11-06	18:30:00
10210	Jumla. Napal	2006-06-21	11:30:00
10212	Vilanculos. Mozambique	2006-06-30	19:00:00
10214	Hamburg. Germany	2006-02-07	11:00:00
10216	Sake. DemocratiRepubliCongo	2006-07-07	15:35:00
10218	Irkutsk. Russia	2006-09-07	07:44:00
10220	Multan. Pakistan	2006-10-07	12:05:00
10222	Bukavu. DemocratiRepubliCongo	2006-03-08	\N
10224	Near Leticia. Colombia	2006-11-18	21:00:00
10226	Near Pownal. Vermont	2006-04-08	09:30:00
10228	Near Piacenza. Italy	2006-08-13	20:15:00
10230	Near Donetsk. Ukraine	2006-08-22	15:30:00
10232	Lexington. Kentucky	2006-08-27	06:07:00
10234	Mahad. Iran	2006-01-09	13:45:00
10236	Near Kandahar. Afghanistan	2006-02-09	16:30:00
10238	Vladikavkaz. Russia	2006-11-09	17:30:00
10240	Vandeikya. Nigeria	2006-09-17	10:15:00
10242	Near Sao Felix do Araguaia . Brazil	2006-09-29	15:59:00
10244	Stord. Norway	2006-10-10	07:35:00
10246	Tashkent. Russia	2006-10-19	07:30:00
10248	Near Abuja. Nigeria	2006-10-29	11:30:00
10250	Tehran. Iran	2006-11-27	07:20:00
10252	Cajon Pass. California	2006-10-12	02:00:00
10254	Near Port Heiden. Alaska	2006-12-14	18:32:00
10256	Mbeya. Tanzania	2006-12-16	03:54:00
10258	Off Parepare. Indonesia	2007-01-01	14:07:00
10260	Matabwe. Tanzania	2007-05-01	12:02:00
10262	Near Balad Air Base. Iraq	2007-09-01	12:00:00
10264	Zapotlanejo. Mexico	2007-10-01	23:15:00
10266	Van Nuys. California	2007-12-01	11:00:00
10268	Near Baghdad. Iraq	2007-01-20	\N
10270	Pau. France	2007-01-25	11:15:00
10272	East Bay Cay. Turks & Caicos Islands	2007-06-02	19:20:00
10274	Belgrade. Montana	2007-07-02	04:01:00
10276	Yogyakarta. Indonesia	2007-07-03	07:14:00
10278	Princeville. Hawaii	2007-08-03	15:00:00
10280	Hanea. Kauai. Hawaii	2007-11-03	23:20:00
10282	Fazenda Nossa Senhora de Lourdes. Brazil	2007-03-14	\N
10284	Samara. Russia	2007-03-17	11:40:00
10286	Mogadishu. Somalia	2007-03-23	17:00:00
10288	Near Kopinang. Guyana	2007-04-25	14:05:00
10290	Shatoi. Chechnya	2007-04-27	11:34:00
10292	Near Dizangue. Cameroon	2007-05-05	\N
10294	Near El-Thamad. Egypt	2007-06-05	09:10:00
10296	Walikale Airstrip. Congo	2007-05-17	11:00:00
10298	Near Pampa Hermosa. Peru	2007-05-24	17:45:00
10300	Freetown. Sierra Leone	2007-03-06	20:30:00
10302	Near Milwaukee. Wisconson	2007-04-06	16:04:00
10304	Selenge province. Mongolia	2007-06-13	\N
10306	Vungano Hills. Malawi	2007-06-16	\N
10308	Near Kamina. Congo	2007-06-21	\N
10310	Near Sihanoukville. Cambodia	2007-06-25	10:40:00
10312	M´Banza Congo. Angola	2007-06-28	13:40:00
10314	Culiacan. Mexico	2007-05-07	09:30:00
10316	Connemara. Ireland	2007-05-07	14:45:00
10318	Muncho Lake. British Columbia. Canada	2007-08-07	13:00:00
10320	Sao Paulo. Brazil	2007-07-17	18:52:00
10322	Near Shinile. Ethiopia	2007-07-23	13:00:00
10324	Rudyerd Bay. Alaska	2007-07-24	14:05:00
10326	Moscow. Russia	2007-07-29	04:22:00
10328	Near Ruidoso. New Mexico	2007-05-08	22:30:00
10330	Off Moorea. French Polynesia	2007-09-08	12:00:00
10332	Near Ketchikan. Alaska	2007-08-16	23:16:00
10334	Near Kirkuk. Iraq	2007-08-22	\N
10336	Near Curitiba. Brazil	2007-08-22	00:36:00
10338	Kongolo. DemocratiRepubliCongo	2007-08-26	16:00:00
10340	Goma. DemocratiRepubliCongo	2007-07-09	12:00:00
10342	Blace. Macedonia	2008-12-01	12:00:00
10344	Phuket. Thailand	2007-09-16	15:35:00
10346	Malemba Nkulu. DR Congo	2007-09-24	\N
10348	Kinshasa. DR Congo	2007-04-10	10:40:00
10350	Alamosa. Colorado	2007-04-10	22:20:00
10352	White Pass. Washington	2007-07-10	20:00:00
10354	Near Cubarral. Colombia	2007-08-10	15:30:00
10356	Sao Paulo. Brazil	2007-04-11	14:10:00
10358	Khartoum. Sudan	2007-08-11	08:00:00
10360	Near Isparta. Turkey	2007-11-30	01:36:00
10362	Off Whittier. Alaska	2007-03-12	17:18:00
10364	Columbus. Ohio	2007-05-12	06:48:00
10366	Kiev. Ukraine	2007-09-12	17:00:00
10368	Los Roques. Venezuela	2008-04-01	09:48:00
10370	Kodiak. Alaska	2008-05-01	13:43:00
10372	Off Lihu. Hawaii	2008-01-14	05:08:00
10374	London. England	2008-01-17	12:43:00
10376	Near Huambo. Angola	2008-01-19	08:00:00
10378	Miroslawiec. Poland	2008-01-23	19:00:00
10380	Near Malinau. Indonesia	2008-01-26	09:35:00
10382	Merida. Venezuela	2008-02-21	17:00:00
10384	Off Macae . Rio de Janeiro . Brazil	2008-02-26	16:16:00
10386	Near Bethani. Nepal	2008-03-03	16:00:00
10388	Nbagu. Nigeria	2008-03-15	08:15:00
10390	Lawa. Suriname	2008-03-04	11:00:00
10392	Bundeena. Australia	2008-09-04	23:27:00
10394	Chrisinau. Moldova	2008-11-04	22:15:00
10396	Goma. Congo	2008-04-15	14:30:00
10398	Off Annobon Island. Equatorial Guinea	2008-04-16	14:23:00
10400	Off Crimea. Black Sea	2008-04-28	09:38:00
10402	Near Rumbek. Sudan	2008-02-05	10:10:00
10404	Stehekin. Washington	2008-05-17	16:30:00
10406	Billings. Montana	2008-05-23	01:25:00
10408	Two Harbors. Catalina Island. California	2008-05-24	09:30:00
10410	Near Chelyabinsk. Russia	2008-05-26	18:15:00
10412	Panama City. Panama	2008-05-29	14:13:00
10414	Tegucigalpa. Honduras	2008-05-30	09:40:00
10416	Yeco. Chile	2008-07-06	14:00:00
10418	Huntsville. Texas	2008-08-06	07:45:00
10420	Khartoum. Sudan	2008-10-06	20:45:00
10422	Hyannis. Massachusetts	2008-06-18	10:03:00
10424	Bannang Sata. Thailand	2008-06-20	\N
10426	Near Salak Mountain. Indonesia	2008-06-26	15:03:00
10428	Near Malakal. Sudan	2008-06-27	07:05:00
10430	Flagstaff. Arizona	2008-06-29	15:48:00
10432	Near Khartoum. Sudan	2008-06-30	07:00:00
10434	Saltillo. Mexico	2008-06-07	02:15:00
10436	Near Bogota. Colombia	2008-07-07	03:50:00
10438	Puerto Montt. Chile	2008-10-07	10:30:00
10440	Owatonna. Minnesota	2008-07-31	09:53:00
10442	North Vancouver Island. British Colombia. Canada	2008-03-08	07:00:00
10444	Near Junction City. California	2008-05-08	19:30:00
10446	Sunat Tanon. Thailand	2008-06-08	11:40:00
10448	K-50 Airport. Somalia	2008-08-13	07:30:00
10450	Madrid. Spain	2008-08-20	14:45:00
10452	Near CabaÃ±as. Guatemala	2008-08-24	09:40:00
10454	Bishkek. Kyrgyzstan	2008-08-24	20:30:00
10456	Near Toacaso. Ecuador	2008-08-30	21:50:00
10458	Near Bukavu. Congo	2008-01-09	16:00:00
10460	Columbus. Ohio	2008-01-09	12:10:00
10462	Off Dubai. United Arab Emirates	2008-03-09	20:20:00
10464	Perm. Russia	2008-09-14	03:15:00
10466	Columbia. South Carolina	2008-09-19	23:53:00
10468	Camp Springs. Maryland	2008-09-27	03:57:00
10470	Lukla. Nepal	2008-08-10	07:31:00
10472	Aurora. Illinois	2008-10-15	23:58:00
10474	Mexico City. Mexico	2008-04-11	18:40:00
10476	Between Kibo & Mawenzi Peaks of Mt. Kilimanjaroi. Tanzania	2008-08-11	11:00:00
10478	Fallujah. Iraq	2008-11-13	11:35:00
10480	Thormanby Island. British Columbia. Canada	2008-11-16	10:32:00
10482	Off Perpignan. France	2008-11-27	17:00:00
10484	San Juan. Puerto Rico	2008-03-12	12:13:00
10486	Off Sabine Pass. Texas	2008-11-12	06:25:00
10488	Off Turks and Caicos Islands	2008-12-15	16:40:00
10490	Near Houma Louisiana	2009-04-01	15:30:00
10492	New York. New York	2009-01-15	15:06:00
10494	Manacapuru. Brazil	2009-07-02	14:00:00
10496	Trigoria. Italy	2009-07-02	06:30:00
10498	Clarence Center. New York	2009-12-02	22:17:00
10500	Chanco. Chile	2009-02-15	16:05:00
10502	Luxor. Egypt	2009-02-20	04:10:00
10504	Amsterdam. Netherlands	2009-02-25	10:31:00
10506	Lake Victoria. Uganda	2009-09-03	05:40:00
10508	Off St. Johns. Newfoundland	2009-12-03	09:48:00
10510	Butte. Montana	2009-03-22	14:28:00
10512	Tokyo. Japan	2009-03-23	06:48:00
10514	Off Crimond. Scotland	2009-01-04	14:00:00
10516	Bandung. Indonesia	2009-06-04	12:30:00
10518	Near Wamena. Indonesia	2009-09-04	07:00:00
10520	Mount Gergaji. Indonesia	2009-04-17	10:30:00
10522	Canaima National Park. Venezuela	2009-04-17	15:32:00
10524	Massamba. DemocratiRepubliof Congo	2009-04-29	06:00:00
10526	Near El Alto de Rubio. Venezuela	2009-03-05	12:00:00
10528	Near Madiun. Indonesia	2009-05-20	06:30:00
10530	Near Isiro. DemocratiRepubliCongo	2009-05-26	\N
10532	AtlantiOcean. 570 miles northeast of Natal. Brazil	2009-01-06	00:15:00
10534	Near Port Hope Simpson. Newfoundland. Canada	2009-07-06	08:30:00
10536	State of Arunachal Pradesh. India	2009-08-06	\N
\.


--
-- TOC entry 2846 (class 0 OID 41756)
-- Dependencies: 207
-- Data for Name: avion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avion (id, type, id_operador, id_vuelo) FROM stdin;
4	\N	\N	\N
12	Nord 262A-44	10092	98775
104	Lockheed L-188C Electra	10092	99900
108	Boeing B-737-270C	7584	96270
112	Bell 212	636	94890
116	Fairchild C-119G	5286	89930
124	Martin 404	12078	87260
128	Douglas C-47B	11832	96410
132	Douglas DC-3	3690	85975
144	Douglas DC-8-55F	4158	96745
148	Douglas DC-3 (C-47-A5-DL)	13506	81960
152	Kalinin K-4	10692	78905
156	Lockheed 14-H Super Electra	12840	80490
160	CASA 212 Aviocar 100	3054	100290
164	McDonnell Douglas DC-8-43	10476	92620
168	McDonnell Douglas DC-8 Super 62	12948	97190
172	Junkers F-13	11754	78705
176	Beechcraft 95	13620	92010
180	Boeing B-737-282	8976	100755
184	Douglas DC-3A	4812	88085
188	Douglas C-124C	9006	85300
192	Britten-Norman BN-2A-26 Islander	6480	100065
196	Piper PA-31-350 Navajo	6534	99580
200	de Havilland DHC-5 Buffalo	13032	98425
204	Boeing B-727-214 / Cessna 172	10230	93365
208	Tupolev TU-104A	846	94290
212	Douglas DC-6B	10986	85160
216	Curtiss C-46F-1-CU	14454	84395
220	Lockheed Hercules KC-130R	9006	102135
224	Tupolev TU-124	3630	93775
228	Transall C-160D	11958	91575
232	Ilyushin IL-18	84	88760
236	Cessna 402B	4002	93240
240	MDonnell Douglas DC-9-32	3198	90570
244	AT L98 Carvair	5364	88520
248	Douglas DC-3	9774	92760
252	Lockheed C-141A (L.300)	9006	92565
256	Curtiss C-46A	7320	85990
260	Boeing B-727-2A7	11256	90190
264	Vickers Viking 3B	6546	86605
268	Douglas DC-6B	14388	87770
272	Ilyushin IL-62	13314	90875
276	Learjet 25C	6726	97900
280	Fairchild C-123K	9006	90165
284	Let 410M	3630	93510
288	Fokker F-XII	9330	80045
292	Martin M-130 (flying boat)	1302	81410
296	Bell 407 / Bell 407	3378	104040
300	Convair C-131D (CV-340-79)	9006	86480
304	Cessna 208B Caravan I	9978	100600
312	Lockheed C-5A Galaxy	9006	92035
316	Douglas C-47A-DL	9936	86085
320	Antonov 12BP	7632	100690
324	Cessna 402B	5574	95650
328	Cessna U206	11634	93615
332	Boeing 40	3870	79220
336	Bristol 170 Freighter 21E	1032	84780
340	Tupolev TU-154B	13746	93045
344	Douglas DC-3	13482	82725
348	Lockheed R7V-1	8928	84695
352	Piper PA-31-350 Navajo	5868	98315
356	Fairchild C-110F	9006	84540
360	Antonov AN-32	10452	99860
364	Cessna 207 Skywagon	7236	102160
368	McDonnell Douglas DC-9-33RC	3168	97140
372	Tupolev TU-134A	3630	96710
376	Lockheed EC-130Q	8928	92860
380	Boeing B-737-7H4	10926	103340
384	Douglas DC-6B	10986	87905
388	Cessna Citation I	7794	97695
392	de Havilland Canada DHC-6 Twin Otter 200	9114	93820
396	Bell UH-1H / Bell UH-1H (helicopter)	852	89040
404	Vickers Viscount 782D	4044	93330
408	Boeing 747-249F	1182	97105
412	Swearingen SA26AT	9702	90480
416	Short Solent 3 (flying boat)	14250	85510
420	Douglas DC-4-1009	6174	82440
428	Convair CV-340-62	12402	86310
432	Fokker F-28 Fellowship 1000	3198	91965
436	Antonov AN-24B	12306	91160
440	Lockheed C-130H	9006	89435
444	Faucett F-19	8574	81660
448	Britten-Norman BN-2A-20 Islander	13914	96290
452	Boeing B-737-200	8736	95710
456	Lockheed L-1049H Super Constellation	1182	87725
460	Let-410UVP-E	9846	103190
464	Britten Norman BN-2A Trislander Mk.III-2	4302	93285
468	Piper PA-32-300	14322	95930
472	Douglas DC-3	11304	85450
400	Douglas DC-3	8220	88070
476	Farman F-60 Goliath	5412	78340
480	CASA 212 Aviocar 200	30	99775
484	Lockheed EC-121M	8928	89495
492	Douglas DC-3	5508	83455
496	Curtiss C-46A-55	5934	96675
500	Boeing B-707-309C	14688	93995
504	Douglas DC-8-52	12486	88260
508	Curtiss C-46A-50-CU	9198	83810
512	Douglas C-118A	9006	85145
516	Lockheed 188C  Electra	12840	86655
520	McDonnell Douglas DC-9-15	12660	94100
524	Dewoitine D-338	9264	80650
528	Nord 2501 Noratlas	2202	93035
532	Douglas C-47A	12600	82605
536	Douglas C-54A-1-DO	8574	92705
540	de Havilland DH-114 Heron	9360	93720
544	Antonov AN-26B	9402	99780
548	Douglas DC-6BF	7728	98885
552	Douglas C-47B-5-DK	11394	83075
556	Aerospatiale 350D	14616	97615
560	Avro Shackleton MR-3	9450	88865
564	Lockheed C-130A Hercules	9006	86850
568	de Havilland DH-50A	12264	79645
572	Grumman G-44A	6486	89590
576	de Havilland Canada DHC-4A Caribou	7608	100340
580	Douglas C-47A	9576	82770
588	McDonnell Douglas MD-11	3936	104245
596	Beech C18S	2766	98340
600	Douglas DC-3	2316	82550
604	Douglas DC-6BF	13086	94660
608	Vickers Viscount 745D	882	87030
612	Junkers F-13	12642	78200
616	Latecoere 631 (sea plane)	4284	83230
620	Avro 685 York I	2898	81965
624	Beechcraft King Air C90A	14334	103840
628	Lockheed L-100-30 Hercules	2514	97965
632	Beechcraft 1900C	9552	103980
636	de Havilland Dragon 1	7674	79715
640	Lockheed EC-130E Hercules	9006	94035
644	Douglas DC-7B	9012	94250
648	Boeing 727-24C	10446	92200
652	Douglas DC-4	882	82030
656	Ilyushin IL-76MD	3630	97635
660	McDonnell Douglas MD-11	924	98845
664	Douglas DC-4	12840	83840
668	Boeing B-737-4Y0	3198	99515
672	de Havilland Canada DHC-6 Twin Otter 300	11160	91060
680	Antonov AN-22	7266	95535
684	Douglas DC-2-112	11004	79740
688	Cessna 180H	3036	102630
692	Antonov An-32	7272	97400
696	Britten-Norman BN-2A-27 Islander	1050	94210
700	De Havilland DH-4	12642	78225
704	Curtiss C-46D-20-CU	4008	89310
712	Douglas C-47-DL	4602	82590
716	Fokker F-28 Fellowship 1000 / MiG-21	1608	93180
720	Antonov AN-12	1134	102165
724	HAL-748-224 Srs.2	10050	90430
728	Lockheed Vega 5	12924	79260
732	Convair CV-340-68B	2700	89135
736	Douglas C-47A-30	4794	91855
740	Antonov AN-24RV	3630	92690
744	Fokker F-27 Friendship 400M	2274	99850
748	Vickers 621 Viking 1	14610	85745
752	Cessna 208B Caravan I Super Cargomaster	7140	103875
756	Avro 685 York C1	9042	87170
760	Douglas DC-3	2670	86665
764	Douglas C-47	990	81175
768	Beech King Air 200 Catpass	2772	101800
772	Cessna T210L	8802	97730
776	Convair CV-880 / McDonnell DC-9-31	11484	91050
780	Douglas DC-3	8208	82585
784	Ilyushin II-76	2850	100800
788	Aviation Traders ATL-98 Carvair	3102	100400
792	Douglas DC-3	12006	83085
796	Beechcraft G18S	2526	95125
804	Bell 205A	14160	91785
808	Douglas DC-3	6336	82710
812	BAC One-Eleven 527FK	2562	92480
816	Avro 689 Tudor 5	1674	83220
820	Let 410UVP	1884	103735
824	de Havilland Canada DHC-6 Twin Otter 300	918	95195
828	Boeing RB-52B	9006	84985
832	IAI 1124 Westwind	10590	95890
836	Cessna U206G	1758	95720
840	de Havilland Canada DHC-5 Buffalo	8976	93935
844	Casa 212-AB10 Aviocar	534	101650
848	Bae Jetstream 3201	12408	103045
852	Consolidated 32-2 Liberator II	10026	81785
856	BAC VC-10-1101	1608	89750
860	Convair CV-340-59	11982	87210
864	Royal Airship Works ZR-2 (airship)	12690	78245
868	Grumman G-73T Turbo Mallard	10278	99155
872	Piper PA-31-350	10974	94125
876	IPTN 332C Super Puma	6048	97885
880	Cessna 206G	7224	100170
884	Fokker F-27 Friendship 400	10050	90060
888	Boeing B-707-131	12294	88810
892	Curtiss C-46D-CU	7398	83140
896	Douglas DC-3C	3486	82385
900	Lockheed C-130E Hercules	9006	90695
904	de Havilland Canada DHC-6 Twin Otter 300	1794	97195
908	Vickers Viscount 745D	11052	85630
912	Lockheed L-188AF Electra	10116	92775
916	de Havilland Canada DHC-6 Twin Otter 300	5160	97015
920	Lockheed C-130E Hercules	2760	89275
924	Iluyshin Il-86	14526	102350
928	Ilyushin IL-62MK	13314	97205
932	Lockheed AC-130A Hercules	9006	90795
936	Lockheed C-130A Hercules	4704	101275
940	Douglas DC-3	1086	91860
944	de Havilland Canada DHC-6 Twin Otter 100	2568	96430
948	de Havilland Canada DHC-6 Twin Otter 300	13794	92790
952	Douglas C-47A	12186	84380
956	Lockheed P-3A Orion	8928	90760
960	Douglas DC-3	2562	88005
964	Antonov AN-24	3630	95255
968	MD Douglas DC-9-32 / Piper PA-28-181	5802	96160
972	Piper PA-32-260	4422	99350
976	Tupolev TU-124	3630	87805
984	Junkers G-24	3210	78965
988	Douglas C-47B	9006	82495
992	Vickers Viscount 785D	30	92545
996	Douglas DC-3	5382	83065
1000	Britten-Norman BN-2A-21 Islander	4362	92270
1004	Grumman G-21A	14322	95415
1008	Ilyushin IL-18B	11502	91715
1012	Lockheed Hudson VI	10026	81055
1016	Sud-Aviation Caravelle VI-R	14790	90560
1020	Cessna U206F	12426	101310
1024	Douglas DC-3	10986	83080
1028	Short Sandringham 2 (flying boat)	14286	82745
1032	Hawker Siddeley HS-748-372	8052	102285
1036	AÃ©rospatiale SE-210 Caravelle	4410	97165
1040	Ilyushin IL-62	84	92155
1044	Lockheed 049 Constellation	12294	86620
1048	Junkers W-34	7572	79165
1052	Cessna 207	5076	92390
1056	Douglas DC-2-243	13440	84880
1060	Beechcraft E18S	14334	98440
1064	Antonov AN-24RV / Soviet Air Force TU-16	6000	94480
1068	Antonov AN-10	3630	89965
1072	Douglas C-47A	2292	93445
1076	Airbus A300-B4-200	11964	100560
1084	Britten Norman BN-2A Trislander II	13212	97170
1088	LET 410UVP	14172	101995
1100	Fokker F-27 Friendship 400M	6390	96140
1104	Tupolev TU-134	13746	93200
1108	Lockheed 749A Constellation	9264	84365
1112	Douglas C-47A	9216	86985
1116	Ford 5-AT-B Tri-Motor	12840	78880
1120	Wibault 282T-12	9264	79590
1124	Antonov AN-12BP	9402	100665
1128	Beechcraft C99	9912	98875
1132	Boeing 737-31S	5706	103270
1136	Convair CV-440-12	6720	92215
1140	Curtiss C-46	12282	90265
1144	Sikorsky  S 76 A	11322	102650
1148	Yakovlev YAK-42	5166	100630
1152	de Havilland Canada DHC-3 Otter	6954	101160
1156	Cessna 402B	14322	91230
1160	Boeing B-737-5L9	11280	98945
1164	Shorts 330-200	13548	97290
1168	Antonov 74TK-200	1728	103435
1172	Britten-Norman BN-2A-6 Islander	7188	91420
1180	Lockheed 14 Electra	7542	80500
1184	Sikorsky S 76	14040	102950
1188	Antonov AN-24	10104	100040
1196	Cessna 501 Citation I SP	2088	100985
1200	DC-2-243	5100	83785
1204	Douglas C-54A-DO (DC-4)	13488	81250
1208	Beechcraft C-45H	2082	89430
1212	Enstrom F-28F	8046	96230
1216	Beech King Air B100	3396	97350
1220	Fairchild C-119C	9006	84085
1192	Britten-Norman BN-2A Islander	\N	91845
1224	Fokker F-27 Friendship 600	13794	98030
1228	Dornier 228-201	11682	101215
1232	Short Sandringham 6 (flying boat)	6984	82795
1236	Cessna 650 Citation VI	3546	102390
1240	Curtiss JN-4H	12642	78125
1244	Douglas DC-3	12522	86495
1248	Boeing B-707-3J9C	3522	103205
1252	Curtiss C-46E	7194	82400
1260	Fokker F-28 Fellowship 1000	11964	93580
1264	Vickers 720 Viscount	10182	84700
1268	Convair B-36D	9006	83600
1272	Lockheed 18 Loadstar	9414	81455
1276	Douglas DC-7C	12498	86680
1280	McDonnell Douglas DC-8-61F	14472	100510
1284	Latecoere 28	9264	79855
1288	Douglas C-47B-5-DK	8490	81610
1292	de Havilland DH-106 Comet 4	1092	86045
1296	Convair CV-240-2	9738	85730
1300	Douglas DC-3	3678	86320
1304	Douglas C-47B	11910	89730
1308	Cessna CE185	330	96865
1312	Junkers JU-52/3m	3210	80050
1316	Cessna 402B	1458	94115
1320	Britten Norman BN Islander	7056	94025
1324	PA-23-250	11100	95570
1328	Douglas DC-3A	882	83790
1332	Saab 340B	252	99190
1336	Hawker Siddeley HS-748-234	12222	98760
1340	CASA 212 Aviocar 200	4476	97540
1344	Lockheed WV-2 Super Constellation	8928	85800
1348	Canadair CRJ200LR RegionalJet	2892	103025
1352	Consolidated PBY-2 / Consolidated PBY-2	10464	80255
1356	Douglas DC-3	14520	82970
1360	Lisunov Li-2	1392	82395
1364	Lockheed Vega	10458	79850
1368	Fokker F-28 Fellowship 4000	2736	94520
1372	Douglas EC-54U	11124	95275
1376	Sud Aviation SA 318C	14298	90315
1380	Douglas C-47A	10050	85935
1388	Beechcraft 1900D	10944	101220
1392	Douglas C-47A	9216	83825
1396	GD F-16D / Lockheed C-130E	9222	99180
1400	de Havilland Canada DHC-6-300 Twin Otter	9438	102370
1404	CASA 212 Aviocar 200	6210	96335
1408	Swearingen SA-226TC / Mooney M-20C	4884	96300
1412	Fokker F-27 Friendship 200	918	93210
1416	Sud Aviation SE-210 Caravelle III	14688	90520
1420	Grumman G-21 Goose	8898	93910
1424	Let 410MU	3630	96900
1428	Antonov 2TP	1524	102200
1432	Beechcraft A36	14622	92420
1436	McDonnell Douglas DC-9-15RC	546	97860
1440	Antonov AN-24N	3630	93505
1448	Lockheed 749-79-33 Constellation	6840	83015
1452	Boeing B-707-340C	2862	93900
1456	Douglas C-47A-10-DK	9882	99495
1460	de Havilland Canada DHC-6 Twin Otter 300	10098	98675
1464	Douglas C-47DL	10446	83250
1468	Gates Learjet 35	13170	101300
1472	Sud Aviation SE-210 Caravelle VIR	126	95040
1476	Avro 10	5688	79145
1480	Dornier Do-228-101	12162	98955
1484	Liore et Olivier 190	5052	78970
1488	Ryan M-1	3870	78520
1492	Pilatus Pc-6C	4008	89635
1496	Bell 206B JetRanger	10248	92900
1500	Douglas DC-3D	966	83620
1504	Hawker Siddeley HS-748-209 Srs. 2	2562	96465
1508	Douglas DC-3	11964	86525
1512	Douglas DC-3	8616	95265
1516	Cessna T207A	11070	93205
1520	Vickers 757 Viscount	12774	86995
1524	Ilyushin IL-18B	10566	94950
1528	Douglas DC-3	9720	84545
1532	Dewoitine D-332	9264	79550
1536	Vickers Viscount 739B	8592	86400
1540	Douglas DC-3	882	80685
1544	Cessna U206A	13458	102235
1548	Beechcraft 99	3030	101165
1552	NAMC YS-11A-202	12138	90965
1556	Fokker F-VIIA	1260	78845
1560	Embraer 110 Bandeirante	8994	100820
1564	Boeing B-737-3T0	14004	96805
1568	Britten-Norman BN-2A-21	3054	98165
1572	Robertson 414	13146	91610
19968	Nord 2501 Noratlas	2202	94635
1176	Mi-8 helicopter	9894	\N
1576	de Havilland Canada DHC-6 Twin Otter 100	5070	90850
1580	Tupolev TU-154B	11916	98990
1584	Lockheed 1049E Super Constellation	10446	86190
1588	Lockheed Orion 9	12192	79235
1592	McDonnell Douglas DC-8F-55	2940	95495
1596	McDonnell Douglas DC-9-32	6336	97950
1600	Swearingen SA227-AC	14022	96705
1604	de Havilland Canada DHC-6 Twin Otter 300	14346	93855
1608	Douglas DC-3	9258	92405
1612	Cessna 500 Citation I	11448	100380
1616	Douglas DC-3	14052	84140
1620	Boeing - EC-135N	9006	90355
1624	Antonov AN-24V	1548	95680
1628	Piper PA-31-350 Navajo Chieftain	7176	101680
1632	BAC One-Eleven 420EL	14166	93030
1640	Cessna P210N	7278	103150
1644	McDonnell Douglas DC-9 and Cessna 150F	9504	89000
1648	Lockheed C-130H Hercules	9006	100395
1652	Curtiss-Wright C-46D-CU	13488	81520
1656	Airbus A300B4-622R	12612	99335
1660	Douglas C-47A-90 DL (DC-3)	6840	82075
1664	Yakovlev YAK-42D	14532	99040
1668	Douglas C-47 Dakota	4542	81445
1672	de Havilland Canada DHC-6 Twin Otter 300	3894	97395
1676	De Havilland DH-4	12642	78380
1680	Douglas DC-3	9264	85665
1684	Cessna 120	14322	88080
1688	Ilyushin IL-18B	3630	88815
1692	Douglas C-54B / P-38	2490	83105
1696	Beechcraft 99A	10950	94280
1700	Cessna 402 / Piper PA-28	8904	89220
1704	Consolidated C-87	13488	80985
1708	Avro 685 York C-1	13614	85045
1712	Lockheed Orion 9	13236	79450
1716	Ilyushin IL-18B	3630	87630
1720	BAC One-Eleven 402AP	13992	98080
1724	Lockheed C-130H	10884	97920
1728	Consolidated 32-2 Liberator I	10026	80780
1732	Boeing B-737-291	4824	104105
1736	Fokker F-28 Fellowship 4000	14034	98390
1740	Caravelle VIR	882	87585
1744	Boeing B377-10-28 Stratocruiser	10026	84740
1748	Avro 691 Lancastrian 1	7950	81820
1752	de Havilland Dash-2 Beaver	10812	100840
1756	Douglas DC-4	11382	89185
1760	Lockheed Vega	4734	79215
1764	Douglas DC-6A	6666	88180
1768	Boeing 307 Stratoliner B-1	2634	88000
1772	Cessna 402	1200	90475
1780	Douglas DC-3	3486	81415
1784	Piper PA-34	8964	92475
1788	Douglas DC-3	4200	83355
1792	Yakovlev YAK-40	3630	95900
1796	Douglas C-124A Globemaster	9006	84125
1800	Douglas DC-4	2916	85720
1804	Aero Commander 500A	8724	93165
1808	Lockheed P-3B Orion	8928	89010
1812	Lockheed C-130H	4746	97980
1816	McDonnell Douglas DC-9-31	10146	92800
1820	Lockheed C-130E	9006	90865
1824	Boeing B-727-21	10446	97480
1828	Douglas DC-3	12552	99405
1836	Boeing B-707-321C	1302	91635
1840	Convair CV-580F	14574	102735
1844	Yakovlev YAK-40	9402	100590
1848	Embraer 110P Bandeirante	14400	95775
1852	Boeing B-707-3D3C	9828	91095
1856	Lockheed 18 Lodestar	10800	84575
1860	Douglas DC-3	3828	81740
1864	Hawker Siddeley HS-748-353 Srs.2a	3684	100350
1868	Israel Aircraft Industries 1124A	4938	99075
1872	Douglas R5D-3	2016	86385
1876	Sikorsky S-42 (flying boat)	1302	81270
1880	Antonov AN-26	12570	96445
1884	Canadair CL-44D4-1	1182	88425
1888	Learjet 24D	13920	99105
1892	Fokker F-28 Fellowship 1000	3198	91550
1896	Douglas C-124A Globemaster	9006	84105
1900	Avro 688 Tudor I	2898	82575
1904	Convair CV-240-7	2862	85565
1908	Northrop Delta	11004	79515
1912	Yakovlev YAK-40	3630	96455
1916	Lockheed 1049H Super Constellation	1182	86790
1920	de Havilland Canada DHC-6 Twin Otter 300	1794	98895
1924	Ilyushin IL-18B	3630	91645
1928	Beechcraft 1900C	1308	101850
1932	Convair CV-440	13902	92815
1936	Tupolev TU-114B	3630	88415
1940	Boeing 707-321CF	1302	89350
1944	Douglas C-47B-dK	13488	81535
1948	Boeing B-377 Stratofreighter	4242	96480
1952	Douglas DC-3 -201D/ F-6-F- 5 Hellcat	6960	83040
1956	Breguet 1150	2202	88750
1960	de Havilland Canada DHC-6 Twin Otter 300	11310	94455
1964	Piper PA-32-260	14322	96125
1968	Fokker F-27 Friendship 500	12486	93550
1976	CASA 212-CC	9318	103020
1980	Douglas DC-3 (C-53D-DO)	4170	99240
1984	Douglas DC-7CF	11202	97025
1988	Vickers 815 Viscount	2862	86030
1992	Douglas DC-4	12840	83295
1996	Fairchild R4Q-2	8928	84330
2000	de Havilland Canada DHC-6 Twin Otter 300	4452	103790
2004	Douglas DC-2-115E	6840	80060
2008	Airbus A320-211	1332	98980
2012	Curtiss C-46D	276	85670
2016	Douglas DC-4-1009	2988	83495
2020	Douglas C-47A-35-DL	8214	94245
2024	NAMC YS-11A-211	14562	91415
2028	McDonnell Douglas DC-9-32	3858	100060
2032	Volpar 18	12168	91775
2036	Focke-Wulf FW 200	3210	81380
2040	Douglas DC-3	14178	87475
2044	Douglas C-54A	6066	86100
2048	Beechcraft King Air E-90	6168	103785
2052	Piper PA-31-310	7062	103615
2056	Piper PA-32-260	9792	94910
2060	Boeing B-707-121	1302	87380
2064	Goodyear ZPG-3W (airship)	8928	86315
2068	Airbus A310-304	10890	99175
2072	Tupolev TU-154B	3630	94110
2076	CASA 212 Aviocar 200	9732	97500
2080	Agusta A109A MK II	8814	97420
2084	McDonnell Douglas DC-9-14	1434	95855
2088	Douglas DC-3	1086	85855
2092	Piper PA-28	5196	91560
2096	Short Empire Flying Boat	1146	80220
2100	Lockheed 749A-79 Constellation	10446	84635
2104	Embraer 110P1 Bandeirante	6864	96915
2108	Ilyushin IL-18	13746	90220
2112	Cessna  501 Citation	8646	93730
2116	Antonov AN-12 (freighter)	13554	101500
2120	Lockheed 14 Electra	6840	80915
2124	Antonov AN-32 Transport	10806	101085
2128	Hiller FH1100	5124	88825
2132	Avia 14	84	86490
2136	Junkers JU-52/3m	3210	81340
2140	Douglas C-47-DL	13488	81440
2144	Antonov AN-24	3630	89820
2148	Lockheed L-1011 TriStar1	3828	91070
2152	Westland Sea King HC-4 (helicopter)	10878	94740
2156	Curtiss-Wright C-46	8976	90230
2160	Kawasaki C-1A	3492	101590
2164	Embraer 110P1 Bandeirante	3942	96720
2168	de Havilland Canada DHC-4 Caribou	8490	90890
2172	Fokker F-27 Friendship 100	3198	86660
2176	Beech Baron 95-B55	13458	98475
2180	Learjet 35A	258	103410
2188	Douglas C-47	2028	92165
2192	Lockheed C-28	2598	84620
2196	McDonnell Douglas DC-10-30CF	13770	98740
2200	Handley Page Jetstream 1	9606	89880
2204	Short S-23 (flying boat)	1146	80505
2208	Cessna 206G	8646	102245
2212	Vickers 798D Viscount	10614	98535
2216	Cessnea 172	8388	88775
2220	Cessna 402C	14322	96645
2224	Douglas C-47	990	81235
2228	Piper PA-32-300	1812	96965
2232	Douglas DC-3	14064	92660
2236	Douglas C-47A-DL	9006	84685
2240	Fokker F-27 Friendship 400M	6216	99275
2244	Beechcraft G35	414	88090
2248	Lockheed C-130 Hercules	5172	104285
2252	Cessna 337G	11826	93120
2256	Beech Super King Air 200	7152	100570
2260	Boeing B-29MR	9006	83340
2264	Douglas C-47A-DL	13488	81040
2268	Piper PA-34	4278	92625
2272	Consolidated B-24J	12186	85355
2276	Sukhoi Su-27	6	102345
2284	Bandeirante EMB-110P1	8196	104200
2288	Douglas C-54-DO (DC-4)	13488	81860
2292	Convair CV-990-30A-6	4950	89875
2328	Douglas DC-4-1009	11310	88725
2296	Piper PA-32	4710	88860
2300	de Havilland DH-114 Heron	5382	85470
2304	Douglas C-47A	5310	85215
2308	Douglas C-47A-35-DL	2562	83895
2312	Lockheed 18 Lodestar	2988	81620
2316	Nord 262A-34	858	90225
2320	de Havilland Canada DHC-6 Twin Otter 300	12090	95580
2324	Beechcraft TC-45J	2550	89805
2332	Bell 205A-1 helicopter	3408	94140
2336	BAe HS-748-232 Srs 2A	10482	102925
2340	McDonnell Douglas DC-10-30CF	8220	94860
2344	Rochrbach Roland	4986	79710
2348	Cessna 185	6078	92845
2352	Sikorsky S-61N-II	11148	95105
2356	Boeing Vetrol 107 II helicopter	3792	87345
2360	Breguet 14	5682	78650
2364	Yakovlev 40	3630	92245
2368	De Havilland DH-86	9330	79995
2372	Boeing B-737-2H4	13326	101520
2376	Britten-Norman BN-2A-2 Islander	12288	96620
2380	Junkers JU-52/3m	8442	82050
2384	Boeing 707-329C	11394	89140
2388	Beechcraft 99	4680	91650
2392	McDonnell Douglas DC-8-62	4950	93835
2396	Douglas C-47A	10956	82690
2400	de Havilland Canada DHC-6 Twin Otter 300	5712	96660
2404	Boeing 95	11016	79170
2408	Douglas DC-3 / Piper PA-18A	10446	87990
2412	Lockheed L-1049H Super Constellation	1182	85765
2416	Fairchild FH-227B	7050	97155
2420	Fokker F-27 Friendship 200	2862	103515
2424	Let 410UVP-E4	11718	103130
2428	Douglas C-54A	9456	84555
2432	Lockheed 10B Electra	11118	79985
2440	Douglas C-54E-5-DO	6762	82015
2444	Fairchild Hiller FH1100	4752	91690
2448	Douglas DC-3 (C-47A-DK)	918	90880
2452	Tupolev TU-124	3630	91920
2456	de Havilland DHC-2 MK.1 Beaver	8556	103775
2460	de Havilland DH-114 Heron 1B	8106	84845
2464	Swearingen SA.227AT Merlin IVC	8412	101810
2468	Lockheed 18 Lodestar	12498	81290
2472	Douglas C-118A	11586	93245
2476	Douglas DC-7C	11394	85650
2480	Antonov AN-26	13092	94620
2484	Vickers 74 Vulcan	1146	78710
2492	Nord 262	13722	93540
2496	Boeing B-747-121	1302	90400
2500	Douglas C-47A	8520	84720
2504	Junkers G-24	10782	79105
2508	McDonnell Douglas DC-9-14	3912	88340
2512	Vickers 634 Viking 1B	750	86370
2516	Douglas C-47B-DK	13488	81605
2520	Bell 206B	10920	92925
2524	Lockheed C-130H	5286	92765
2528	Fokker F-27 Friendship 100	14778	86300
2532	Shorts SC-7 Skyvan 3-200	9558	96190
2536	Antonov 32	14358	98660
2540	Canadair CRJ-100ER	774	102620
2544	Curtiss C-46A	1314	84830
2548	Aero Commander 680	3390	87565
2552	Douglas C-46A-CU ( DC-3)	12960	84410
2556	de Havilland DH-114 Heron 1B	5808	88925
2560	Douglas DC-3	4338	80670
2572	Douglas DC-3	14634	84550
2580	de Havilland Canada DHC-6 Twin Otter 300	4002	95420
2584	NA Rockwell 112	6378	92230
2588	Douglas DC-4	10266	88335
2592	Antonov An-28	7086	103940
2596	Sikorsky S61-L	3792	93640
2600	Fokker F-27 Friendship 600	7260	100480
2604	Douglas DC-3	2796	93070
2608	OFM F-VIIb/3m	7002	79930
2612	Tupolev TU-134A	3630	98580
2616	Ford 5-AT-C Tri Motor	13026	79010
2620	Douglas DC-4	11352	87485
2628	Douglas DC-3	6852	81850
2632	Boeing B-707-321C	1302	89100
2636	Lockheed 18 Lodestar	13806	86965
2640	McDonnell Douglas DC-9-31	8406	91305
2644	Antonov An-12B	3630	90105
2648	Douglas DC-3	12876	84020
2652	Mil Mi-17 (helicopter)	3930	99475
2656	Douglas DC3-G102	3486	81110
2660	Lockheed C-130H	9006	101365
2664	Douglas C- C47A-30DK	6840	82200
2668	Douglas DC-3-A-269	12840	80885
2672	Lockheed 749A-79-32 Constellation	14670	86305
2676	Boeing B-747-SR46	13536	95810
2680	Lockheed Martin L-100-10	6648	89060
2684	Piper PA-30 / Cessna 337A	5592	91355
2688	de Havilland Canada DHC-2 Mark I Beaver	1290	103975
2692	Boeing B-707-436	10026	88165
2696	Mitsubishi MU-2J	14322	93300
2700	Antonov 12BP	11574	102535
2704	de Havilland Canada DHC-6 Twin Otter 300	13452	92450
2708	Martin 202	12840	83500
2712	Swearingen SA-226T Metro II	2250	100615
2716	Douglas DC-3	10770	84715
2720	Yakovlev YAK-40	3630	95025
2728	Douglas DC-3	1092	85150
2732	Boeing KC-135A	9006	92610
2736	Curtiss C-46A-40-CU	8058	86240
2740	Avro  685 York I	6876	82120
2744	Convair CV-880	8406	86295
2748	Douglas DC-3-194H	882	81775
2752	Casa 212 Aviocar	6948	97455
2756	Junkers JU-52/3m	9264	82345
2760	Lockheed C-130E Hercules	9006	95690
2764	McDonnell Douglas DC-8-21	3828	87455
2768	Lockheed 049-46-21 Constellation	12498	84315
2772	Curtiss C-46D	5700	84130
2776	Douglas C-47-DL	11394	81980
2780	Cessna 425 Conquest	780	96000
2784	de Havilland DH114 Heron 2E	456	92205
2788	Douglas C-47-DL	9576	83465
2792	Douglas DC-3	11154	90380
2796	Airbus A-310-324ET	9246	103510
2800	Consolidated Liberator	10026	80840
2804	Boeing B-707-121B	1302	87980
2808	Lockheed C-130H Hercules	2640	102640
2812	Britten-Norman BN-2A Islander	10578	90065
2816	Stinson SR-7 Reliant	7542	80180
2820	Rockwell CT-39A Sabreliner	14244	102995
2828	Douglas DC-3	6264	84850
2832	Pilatus PC6CH2	4008	90690
2836	Pilatus PC-6	13470	104265
2840	McDonnell Douglas DC-9-14	7872	96570
2844	Junkers JU-52	3210	79935
2848	Lockheed 10E Electra	1026	80145
2852	Fokker F-27 Friendship 200	5580	90670
2856	Grumman G-21 Goose	13248	93295
2864	de Havilland Canada DHC-6 Twin Otter 200	3792	89595
2868	Cessna 404 Titan Courier II	3204	97220
2872	Let 410UVP	3630	97020
2876	Convair CV-440-59	11982	85690
2880	Douglas DC-3	11982	83560
2884	de Havilland Canada DHC-6 Twin Otter 300	10038	102280
2888	Douglas C-47A-90-DL	2244	81305
2892	Pilatus-Britten Norman BN-2B-26 Islander	6480	103175
2896	Bell 212	10758	99445
2900	Bell UN-1N Huey	12018	103995
2904	Lockheed C-130B	9006	98355
2908	Piper PA31-310	1536	102725
2912	Boeing B-737-3T5	10926	101475
2916	de Havilland DHC-2	2268	91725
2920	Brittonorman BN-2A	5838	91910
2928	Douglas C-124A Globemaster	9006	83550
2932	de Havilland Canada DHC-8-102	13362	99670
2936	Antonov 2R	7626	99675
2940	Boeing 377 Stratocruiser 10-26	1302	84825
2944	Douglas C-54B-1-DC	228	84080
2948	Boeing B-737-2H6	13902	99740
2952	Boeing 707-123	3486	86035
2956	\N	4368	81360
2960	Lockheed 18 LodeStar	666	81375
2964	Airspeed Oxford	9330	80605
2968	UH-60 Black Hawk / UH-60 Black Hawk	9732	102470
2972	Boeing Vertol CH47A (helicopter)	9732	89535
2976	Boeing KC-135C	9006	94690
2980	Bell 47J-2	14712	98545
2984	Convair CV-240	9006	89945
2988	Martin PBM-3S  / Martin PBM-5	10464	81680
2992	Douglas C-124A Globemaster II	9006	84320
2996	Antonov AN-24B	3186	103245
3000	Junkers JU-52/3m	3210	81345
3004	Junkers JU-52/3m	3210	81165
3008	Britten-Norman BN-2A Islander	3054	95665
3012	Douglas DC-3 (C-50A-DO)	3486	82135
3016	Cessna 208B Caravan I Super Cargomaster	6678	99535
3020	de Havilland Canada U-1A Otter	9732	86170
3024	DHC-5 Buffalo	5760	97595
3028	Beechcraft King Air C90B	8376	103880
3032	Let 410UVP Turolet	3630	96770
3036	Learjet 45	876	104150
3040	Boeing B-727-251 / MD Douglas DC-9-14	9666	97875
3044	CAMS 56	5682	79270
3048	Boeing 377 Stratocruiser 10-30	12840	85090
3052	Antonov AN-12V	3630	91405
3056	de Havilland DHC-3	10932	99270
3060	Cessna 404 Titan	5964	95310
3064	Zeppelin LZ-129	6222	80135
3068	Lockheed 14 Electra	9330	80450
3072	Boeing B-737-219	4806	104100
3076	Douglas DC-3C	2280	96760
3080	Douglas DC-3C	9264	82210
3084	Fokker 28 Fellowship 1000	3876	102515
3088	Convair CV-990-30A-5	11964	89090
3092	Boeing  377 Stratocruiser	1302	85185
3096	Lockheed L-749A-79 Constellation	14592	87655
3100	Avro Shackleton M-2 / Avro Shakleton M-2	4542	84755
3104	Airbus A320-212	2232	101675
3108	Britten-Norman BN-2A-21 Islander	14382	95155
3112	Beechcraft 1900C	1458	96575
3116	Antonov AN-28	13686	102375
3124	Antonov AN-12	432	98490
3128	Gates Learjet 45	582	102595
3132	Douglas DST-A-207A	882	80320
3136	Douglas DC-3	3756	90935
3140	Cessna 207A	474	93840
3144	Vickers 634 Viking 1B	7674	87390
3148	De Havilland DH-4	12642	78365
3152	Yunshuji Y-12-II	7722	99065
3156	Cessna T210M	14310	93745
3160	CASA NC-212	5172	104030
3164	Swearingen 226TC Metro II	14478	94085
3168	Grumman G-21A Goose	7200	104070
3172	Vickers Viscount 785D	8070	91680
3176	Antonov AN-10	3630	90255
3180	Convair CV-240-0	3486	83845
3184	Curtiss C-46A	12834	87780
3188	de Havilland Canada DHC-6 Twin Otter 300	14412	98085
3192	Boeing 95	7818	79000
3196	Douglas DC-3	2790	89795
3200	Tupolev TU-104B	3630	87015
3204	Cessna 208B Grand Caravan	14112	102970
3208	Sikorksky CH-53 (helicopter)	2016	93000
3212	Cessna 208B Grand Caravan	2622	102635
3216	Canadair CRJ-200ER	4404	103545
3220	Cessna 208 Caravan I	3024	96305
3224	de Havilland RU-6A Beaver /Bell UH-1H	9252	90150
3228	Piper PA-31-350 Navajo	10308	101705
3232	Douglas DC-3 (C-47)	5508	82520
3236	Antonov AN-26B	10554	98855
3240	Embraer 110 Bandeirante	10788	103530
3244	Douglas C-54B-1-DC	10902	83415
3248	de Havilland DHC-3 Otter	8946	102990
3252	Lockheed HC-130H Hercules	9006	89435
3256	Douglas DC-3	2520	85635
3260	de Havilland Canada DHC-6 Twin Otter 300	12282	99195
3264	Lockheed 18 Lodestar	7242	82985
3268	Zeppelin Dixmunde (airship)	438	78370
3272	Tupolev TU-154A	3630	92485
3276	Lockheed L-049 Constellation	11004	81890
3280	Fairchild F-27	9576	86750
3284	Douglas DC-6A	1410	101170
3288	Breguet 14	5412	78325
3292	Britten-Norman BN-2A Islander	14088	95430
3296	Bell 205-1	13476	93390
3300	Boeing B-707-331B	12294	91350
3304	Ilyushin IL-62M	3630	94880
3308	Fairchild F-27	8502	90605
3316	Bambardier CRJ200	924	103065
3320	GAF Nomad N-22B	9642	92495
3324	Aerospatiale BAe Concorde 101	9264	101630
3328	Saro Cloud	11688	79970
3332	Cessna 501 Citation	2286	96435
3336	Douglas C-124C / Fairchild C-119C	5352	85620
3340	Dornier Wal	10782	78785
3344	Douglas DC-3 (C47-DL)	9180	82645
3348	Lockheed C-5A	9006	97780
3352	Airbus A-320-233	10152	104000
3356	CASA 212 Aviocar 200	8022	98090
3364	Piper PA-24	7380	87555
3368	Douglas C-47A	14382	98770
3372	Burgess RV-6 experimental	8646	100970
3376	Cessna 320E	768	91035
3380	Cessna T210	6270	94935
3384	Piper PA-31-350 Chieftain	6534	93310
3444	Junkers G24	\N	\N
3388	Convair CV-340-58	426	85255
3392	Consolidated Catalina PB2Y-3R	2682	81260
3396	Douglas DC-3	10446	83570
3400	Ilyushin IL-18D	6924	90335
3404	Douglas DC-6B	11850	89710
3408	Antonov AN-24B	8592	88185
3412	Cessna 310	13956	91380
3416	Douglas C-47A	10050	86160
3420	Fokker F-27 Friendship 500	918	96535
3424	Ilyushin Il-76MD	7830	102550
3432	Lockheed 749A-79-33 Constellation	10026	84530
3440	Lockheed L-100-30 Hercules	4032	96195
3448	Junkers JU-52	14790	80610
3452	Beech C-45H	9396	87835
3460	Boeing 737-2B7	96	103585
3464	Douglas C-47A	8322	96120
3468	Vickers 616 Viking 1B	12000	84235
3472	Yakovlev YAK-40	3630	94485
3476	Tupolev Tu-154	11166	91790
3480	Convair CV-440	11676	91615
3484	Beechcraft 99	8712	93685
3488	Douglas C-47A	11052	85410
3492	Curtiss C-46	8136	93290
3496	Ford 5-AT-B Tri-Motor / B-PW-9D	11706	78850
3500	Saab Scandia / Cessna 310	4428	87045
3504	Piper PA-31-350	2754	97925
3508	Ilyushin IL-76 / Mi-8 (helicopter)	10368	97035
3512	Boeing B-747-SP-09	14688	95675
3516	Lockheed 14H Super Electra	14520	80355
3520	Fokker F-27 Friendship 100	10050	90870
3524	SNCASE SE.2010 Armagnac	9264	85285
3528	de Havilland Canada DHC-6 Twin Otter 100	2094	93340
3532	Douglas DC-3C	6072	99150
3536	Tupolev 134A	11916	98995
3540	Bristol 170 Freighter 21E	11700	85940
3544	Boeing 707-321C	204	91080
3548	de Havilland Canada DHC-7-102	9732	101200
3552	Piper PA-31	10920	91975
3556	Douglas DC-3	3258	90175
3560	Tupolev 134A-3	5922	102985
3564	Convair CV-240	4854	84520
3568	MD Douglas DC-9-15 / Beechcraft Baron-55	10086	88525
3576	Douglas C-47	2598	88675
3580	Lockheed 18 Lodestar	7878	82900
3584	Ilyushin IL-14P	13242	96785
3588	Boeing 747-244B-SF	7044	103030
3592	Fokker F-28 Fellowship 4000	12612	97475
3596	Boeing 40	5304	79255
3600	Learjet 24A	10170	96355
3604	Yakovlev YAK-40	3630	97755
3608	Curtiss C-46A-60-CK	12402	86450
3612	Britten-Norman BN-2A Trislander	4866	96180
3616	Hawker Siddeley HS-121 Trident 2E	10566	96910
3620	EC-121H (Super Constellation)	9006	88600
3624	Martin 404	12294	85085
3628	Bell 206B3	2346	98750
3636	Beech King Air F90	12468	90240
3640	Ford 5-AT-C Tri Motor	11376	79350
3644	Avro Ninteen I	2466	83375
3648	Boeing B-737-8AL	13422	103695
3652	Fokker F-27 Friendship 600	6090	95435
3656	Beech Queen Air Model 80	7686	99045
3660	Douglas C-53	990	90405
3664	Antonov An-10A	3630	86925
3668	Vickers Viscount	12774	85140
3744	Sikorsky S-25	\N	\N
3672	Learjet 23	11874	98110
3676	Douglas DC-3	10050	84515
3680	Lockheed C-130E	9006	90115
3684	Convair CV-440	3642	87190
3688	Britten-Norman BN-2A Trislander	13494	94235
3692	de Havilland DHA-3 Drover II	12264	83665
3696	GAF Nomad N-24A	114	99970
3700	de Havilland DH106 Comet 1	10026	84470
3704	Bell 222	4266	104145
3708	Britten Norman BN-2A-20 Trislander	174	100055
3712	Douglas C-54A-DO	12348	83170
3716	Junkers JU-52/3m	3210	80575
3720	Mil Mi-8 (helicopter)	9234	98635
3728	Convair CV-880-22-1	12294	88820
3732	Lockheed 10C Electra	5310	81245
3736	Antonov 24	8796	103180
3740	Cessna 310H	11508	91365
3748	BAC One-Eleven 515FB	3822	90440
3752	de Havilland DH-114 Heron 1B	12048	89975
3756	Douglas C-47A-1-DK	10026	82170
3760	Lockheed C-130E Hercules	9006	98450
3764	Grumman G-21	7986	91890
3768	Douglas DC-3	10818	83970
3772	British Aerospace 748 2A	2874	93185
3776	Junkers JU-52/3m	13518	80970
3784	Boeing 247D	882	79820
3788	Fairchild C-123K	9006	88755
3792	Douglas DC-3-201E	3828	81760
3796	Junkers F-13	3210	78560
3800	Douglas DC-3	4212	94425
3804	Rohrbach Roland	14790	78675
3808	Curtiss C-46A	4008	90765
3812	Douglas C-47A	2274	89530
3816	Antonov An-24B	10476	92400
3820	Douglas C-47A	9216	84915
3824	Fairchild Hiller FH-227B	13872	102745
3828	Lockheed C-130A Hercules	9006	86785
3832	Cessna 402B	6942	99790
3836	Sud-Aviation Caravelle 3	9264	89225
3840	Lockheed 10A Electra	7242	82805
3844	Boeing 247D	7800	81580
3848	Embraer 110P1 Bandeirante	9492	96005
3852	Let 410UVP	13074	103705
3856	Antonov AN-32B	9954	99920
3860	Airbus A-320-233	10320	103765
3864	Britten-Norman BN-2A-21	3054	102440
3868	Boeing 707-336C	11166	91015
3872	Tupolev TU 154B-2	3630	96680
3876	Britten-Norman BN-2A Islander	11340	90085
3880	de Havilland Canada DHC-6 Twin Otter 300	222	100855
3884	Gates Learjet 25	9786	97970
3888	Douglas DC-3-201F	3828	82555
3892	Douglas C-54	6720	91530
3896	Fokker F-27 Friendship 600	6288	100130
3900	Armstrong Whitworth Argosy C-1	9450	89070
3904	Fairchild 51	8892	80330
3908	Douglas DC-3	8718	85055
3912	Fokker F-XXII	6840	79775
3916	Piper PA-24	10290	87850
3920	Sud-Aviation Caravelle III	9264	86645
3924	Antonov 12	4494	103860
3928	Vickers Viscount 701C	5382	85805
3936	Cessna 401	14322	95425
3944	LatÃ©coÃ¨re 28-1	9264	79840
3948	Douglas DC-3	10572	85260
3952	Dirigible ZR-1 Shenandoah (airship)	8928	78450
3956	Cessna 208 Grand Caravan	2448	104005
3960	Latecoere 25-3-R	5682	78930
3964	Cessna 310 N	13056	96555
3968	Dassault Falcon 50	11040	99200
3972	de Havilland Canada DHC-6 Twin Otter 300	12090	99560
3976	Douglas DC-2-115B	4950	80485
3980	Cessna 320B	13812	95705
3984	Cessna 337C	5064	89560
3988	Douglas DC-47	2028	92165
3992	Cessna A185F	3624	91310
3996	Douglas DC-3	11964	86510
4000	Boeing B-707-124	7872	87885
4004	Douglas DC-3 (C-47-B-1-DK)	636	82110
4008	Boeing 40	7818	79245
4016	Boeing B-737-200	7764	95210
4020	Douglas DC-3	2562	88255
4028	Douglas C-54B	828	85305
4032	Antonov AN-12	3630	90235
4036	Piper PA-30	11388	88565
4040	Tupolev TU-104A	3630	92365
4044	Convair CV-440-11	4320	94390
4048	Curtiss C-46	4614	87730
4052	Douglas DC-3	11982	82640
4056	de Havilland Canada DHC-6 Twin Otter 200	5850	92950
4060	Douglas DC-3	1086	92875
4068	Piper PA-31-350	12534	101360
4072	Britten Norman BN-2A-21 Trislander	10872	99910
4076	Breguet 280T	9264	79555
4080	de Havilland DHC-2 Beaver	14208	103500
4084	Tupolev TU-104B	3630	87270
4088	Hindustan Aeronautics 748-2	10806	100315
4092	Cessna 501 Citation	11268	97810
4096	Britten Norman BN Islander	7056	94050
4100	Douglas DC-3	13782	84370
4104	Convair CV-880	7332	92920
4108	Boeing B-747-200	7680	96750
4112	Douglas C-74	6576	87340
4116	Boeing 747-2B5F	9186	101390
4124	LeT 410UVP Turbojet / Tupolev TU-134V	7296	94825
4128	Douglas DC-4 /Beechcraft SMB-1	5430	83590
4136	Shorts 330-200	13752	101560
4140	Boeing B-737-281	14688	95990
4144	Tupolev TU-154	3630	91120
4148	Ilyushin IL-18V	3630	92335
4152	Cessna 172RG	5730	99835
4156	Douglas C-54B-5-DO	990	82865
4160	Douglas DC-7CF	12840	87220
4164	Curtiss C-46E	1506	88240
4168	Curtiss C-46	786	86290
4172	Lockheed C-130H	2658	91740
4176	Douglas C-47J	8928	88530
4180	Douglas DC-6B	10908	88150
4184	Boeing XB-29	8604	81005
4188	Britten-Norman BN-2 Islander	11412	95745
4192	Cessna 180E	5046	87745
4196	Boeing B-727-235	2988	93255
4200	Fairchild C-119G	11334	86340
4204	De Havilland DH-4	12642	78160
4208	De Havilland DH-4	12642	78375
4212	de Havilland Canada DHC-6 Twin Otter	12588	101855
4216	Beech E18S	11118	90490
4220	Vickers Viscount 745D	882	87595
4224	Douglas C-47	12528	86810
4228	Boeing B-747-244B	7122	96595
4232	Antonov 12	1656	103375
4236	Ford 4	8988	78685
4240	Lockheed 049-46-21 Constellation	1302	82340
4244	Ford 4-AT-B Tri Motor	14802	78720
4248	Junkers JU-52/3m	4986	79705
4252	Douglas DC-4-1009	9264	83290
4256	Hawker 800A	5328	102750
4260	Potez 621	9264	80225
4264	Ilyushin 18V	7902	102060
4268	Douglas C-47	11310	87275
4272	Fokker F-28 Fellowship 1000	11964	92185
4276	Douglas DC-2-221	990	80870
4280	Douglas DC-2	990	80675
4284	Lockheed HC-130P Hercules	9006	96045
4288	Bell 412	8394	103595
4292	British Aerospace BAe-146-100	4416	100915
4296	Bristol 170 Freighter 21	11538	83335
4300	BlÃ©riot Spad 46	5820	78345
4304	Embraer 110C Bandeirante	7806	95190
4308	Sikorsky S-43	8418	80160
4312	Antonov AN-124-100	7266	100605
4316	Let 410UVP	8460	103210
4320	Curtiss Condor 18	390	79425
4324	Tupolev TU-154	13002	101080
4328	Douglas C-47-DL	13488	81495
4332	Curtiss C-46-CU	7398	87570
4336	Douglas C-47-DK	9006	82510
4340	BAC One-Eleven 525FT	4440	102255
4344	Piper PA-42 Cheyenne	6060	94255
4352	Douglas DC-6B	882	83640
4356	Canadair C-4 Argonaut	9486	88650
4360	Convair CV-240	11394	84445
4364	Martin M-130 (flying boat)	1302	80990
4368	de Havilland Canada DHC-3 Otter	3534	93895
4372	Cessna 208B	6036	103320
4376	Fairchild C-123K	3000	91700
4384	Britten Norman BN-2A-21 Trislander	3054	99210
4388	Yakovlev YAK-42	3630	97800
4392	Military - Ecudorian Air Force	3834	96820
4396	LET 410MT Turbojet	3630	96200
4400	Vickers Viking 1B	5868	85370
4408	Cessna 208 Caravan I	5718	97890
4412	GAF Nomad N24A	6894	98060
4416	Handley Page Dart Herald 207	9828	87840
4420	De Havilland Dash-6	11910	93865
4424	Ilyushin IL-18V	3630	89050
4428	Bristol 170 Freighter XI	4584	82465
4432	Tupelov Tu-124	3630	87310
4436	Douglas DC-6	2988	83860
4440	Learjet 36A	5274	96670
4444	Douglas DC-3-3A	2292	92805
4448	Cessna U206	9306	92975
4452	Piper PA-18	7380	87615
4456	de Havilland DH-114 Heron 2D	570	86195
4460	Bristol 170 Freighter 21	282	85590
4464	Cessna 180K	8646	100520
4468	BAC One-Eleven 529FR	14166	94380
4472	Lockheed L-188CF Electra	2976	97625
4476	Douglas DC-6B	228	85845
4480	Swearingen SA-227AC Metro III	11208	103225
4484	Lockheed C-130E-I Hercules	9006	88680
4488	Cessna 402A	3852	98215
4492	Boeing 307B-1 Stratoliner	3756	91685
4496	Lockheed Vega	13866	79090
4500	Douglas C-47	2598	82610
4504	Junkers W-34	11844	79475
4508	Tupolev TU-154B	8874	99885
4512	Convair CV-580/De Hav. Twin Otter 100	6342	90820
4516	Douglas DC-6	1092	86285
4520	Mil Mi-26	7266	102365
4524	Lockheed Vega	10458	79190
4528	Ilyushin IL-62M	14862	95095
4532	Douglas C-47D	9006	83325
4536	Boeing B-737-275	204	93150
4540	Britten-Norman BN-2A Islander	606	96440
4544	Ilyushin IL-62M	3630	92840
4552	Douglas DC-3 (C-47A-DK)	84	84490
4556	SNCASE Languedoc	7674	83805
4560	Boeing KC-135A	9006	89230
4564	Avro York C1	9450	82270
4972	Consolidated Liberator B24 C	\N	81060
4568	Cessna 210	246	88950
4572	Douglas DC-3	2700	88660
4576	Pilatus PC-6/B2-H2 Turbo-Porter	12090	94555
4580	Cessna 310B	8262	93575
4584	Douglas C-47	13668	81565
4588	Beechcraft 1900D	12036	102700
4592	Ilyushin IL-18D	8592	89465
4596	Cessna 310J	2442	93420
4600	Antonov 12BP	5130	99990
7248	Boeing 707-327C	5310	91270
4604	Boeing B-727-86	9498	93960
4608	Boeing B-727-27C	13254	94030
4612	Cessna 402	14322	96365
4616	Beechcraft C99	11238	97670
4620	Antonov AN-12BP	6912	103240
4624	Lockheed 1339	10686	94300
4628	Dornier Merkur	3210	78585
4632	de Havilland Canada DHC-3 Otter	8064	86615
4636	Bell 205A	72	89390
4640	Cessna 550 Citation II	834	103720
4644	Piper PA-23	2484	87425
4648	Cessna 402B	10842	93700
4652	Douglas C-47A	14004	84375
4656	Lockheed L-100-20 Hercules	14706	90130
4660	Fokker F-27 Friendship 600	918	93380
4664	Sikorsky CH-53D	2016	97145
4668	Junkers JU-52/3m	3210	81330
4672	Fokker F-VII	6840	78525
4676	de Havilland Canada DHC-6 Twin Otter 100	10038	99450
4680	Boeing B-747-131	12294	100115
4684	Douglas C-47B	9450	82245
4688	Fairchild Pilgrim 100A	7836	79570
4696	Beechcraft 1900C	2934	98325
4700	Vickers 628 Viking 1B	6828	82950
4704	Swearingen SA227AT Merlin IVC	3660	102775
4708	Douglas DC-3	3828	80735
4712	Douglas DC-6B	8106	87650
4716	Let 410	1884	103830
4720	Boeing B-727-256	14790	95670
4724	McDonnell Douglas DC-8-53	13536	90780
4728	Lockheed 10 Electra	12006	80270
4732	Curtiss C-46D	14424	88065
4736	Fokker F10A Trimotor	11004	79150
4740	Fairchild C-82 Packet	14352	83655
4744	Ilyushin IL-18	14220	93325
4748	Douglas C-47-DL	6234	85815
4752	Consolidated PBY-5 Catalina	14748	84770
4756	Consolidated Liberator	8490	81430
4760	Douglas DC-3 (C-53D-DO)	882	82060
4764	Consolidated PBY-5A Catalina	14226	100810
4768	de Havilland Canada DHC-6 Twin Otter 100	3228	99370
4772	Soloy 12EJ3	7914	93345
4780	Boeing B-737-2V2	12282	95100
4784	Ford 4-AT-B Tri Motor	12702	78780
4788	Vickers 802 Viscount	5382	85480
4792	Britten-Norman BN-2 Islander	13596	89260
4796	Eurocopter AS-350-BA	7350	100785
4800	Embraer 110 P1 Bandeirante	1926	99650
4804	Fokker 100	10320	100465
4808	Ilyushin IL-76TD	3630	97425
4812	Bell 206B	3408	92990
4816	Volpar C45G	13290	91300
4820	Convair CV-580	12582	103460
4824	Embraer 721C Sertanejo	11820	102600
4828	Lockheed L-100-30 Hercules	13512	101025
4832	Boeing KC-135A	9006	97080
4840	Douglas DC-3	11982	84990
4844	Ford 5-AT-B Tri Motor	8664	78840
4852	MD DC-8-11 / Lockheed  1049 S Const	7656	86475
4856	Embraer 120ER Brasilia	4974	102900
4860	Lockheed C-130B	9006	88685
4864	Junkers F-13	3210	78690
4868	de Havilland Comet 4B	5382	86725
4872	Douglas DC-3 ( C-53D-DO)	4854	82125
4876	Douglas DC-6B	10572	85230
4880	Douglas DC-4	6030	100140
4884	Curtiss C-46F	4860	88190
4888	Lockheed L-188AF Electra	9522	92105
4892	Aero Commander 680E	8646	90330
4896	Antonov AN-24V	14520	89480
4900	Handley Page HP-42	1146	80630
4904	Cessna 310J	1764	90020
4908	Junkers F-13	3210	79675
4912	Douglas DC-3	11394	82620
4916	Embraer 120RT Brasilia	4080	96185
4920	Cams 33	10962	79470
4924	Fokker 50	5724	102435
4928	Vickers Viscount 828	13794	90510
4932	Douglas DC-3	9216	86025
4936	Douglas C-47A	10818	83235
4940	Lockheed 049 Constellation	12498	83330
4948	Douglas DC-3	11346	88955
4952	Junkers F-13	3210	79395
4956	Lockheed MC-130H Hercules	9006	102355
4960	Consolidated PBY-5A Catalina	2586	85240
4964	Boeing B-727-235	1302	94785
4968	Britten-Norman BN-2A-6 Islander	186	98150
4980	Douglas DC-3	12090	86935
4984	Lockheed 749A Constellation	12294	83350
4988	McDonnell Douglas DC-8-51	8406	88560
4992	Ilyushin II-14P	10680	92375
4996	Xian Yunshuji Y-7-100C	9174	101585
5000	de Havilland Canada C-7A Caribou	4008	90595
5004	Douglas DC-6B	12594	86640
5008	Antonov 12B	13284	100190
5012	GAF Nomad N24A	9030	101820
5016	Lockheed P-3B Orion	8928	95075
5020	Tupolev Tu-154M	1968	102015
5024	Howard 250	10212	96155
5028	Lockheed 14-H2 Super Electra	12840	80310
5032	Sikorsky S-58ET	10386	99325
5036	Cessna 207	4908	101345
5040	de Havilland DHC-6 Twim Otter 100	1854	103760
5044	Douglas C-54E	10848	92540
5048	Douglas DC-3	11964	86635
5056	Douglas DC-7	3828	87155
5060	Antonov 12BP	3630	98195
5064	Cessna 207	3084	93825
5068	Piper PA-23	14322	88450
5072	Douglas C-47A-30-DK (DC-3C)	5754	101790
5076	PT-LCN	6006	95360
5080	Swearingen SA-226T Metro II	14730	102670
5084	Potez IX	10836	78250
5092	Grumman G-21A Goose	7986	86730
5096	Learjet 55	5256	96315
5100	Douglas DC-2	990	80835
5104	Lockheed P-3C / Lockheed P-3C	9240	97985
5108	Douglas DC-4	8406	82630
5112	Antonov AN-24B	10566	95600
5116	Boeing B-737-222	2544	94615
5120	Let 410UVP	9324	100670
5124	Fairchild-Hiller FH-227B-LCD	14400	94765
5128	Cessna 402C Utililiner	11550	97415
5132	Swearingen SA.227AC Metro	2142	96590
5136	Douglas DC-3	10986	83475
5140	Aero Commander 560-A	14418	90445
5144	Lockheed 1049G-55 Super Constellation	14790	87860
5148	Latecoere 631	12714	82595
5152	Douglas DC-3A-197D	9720	88670
5156	EMB 820C Navajo	11760	102930
5160	Cessna U206G	14322	94875
5164	Lockheed 049-46-21 Constellation	12498	84870
5168	Douglas DC-6	2988	84195
5172	McDonnell Douglas DC-8-55F	13770	91885
5176	LiorÃ©-et-Olivier H-13	10488	78320
5180	Britten-Norman BN-2A-26 Trislander	11460	97300
5184	Sikorsky S-61N	6732	93280
5188	Nord 2501 Noratlas	2202	90405
5192	Britten Norman BN-2A-26	726	101045
5196	Boeing B-707-124	7872	86860
5204	Boeing B-737-3Y0	2406	98720
5208	Convair 600	3312	91390
5212	Junkers Ju-52/3m	9990	82615
5216	McDonnell Douglas 369D	13524	102615
5220	Saab Scandia 90A-1	14562	86065
5224	Douglas DC-3 / Douglas DC-3	3600	90860
5228	Douglas C-47A	2562	82195
5232	Ilyushin IL-14	10680	87660
5236	Boeing B-727-2H9A	6408	96715
5240	Boeing B-707-321B	1302	87880
5244	Transall C-160D	3012	97700
5248	Antonov AN-26	7764	94900
5252	Boeing B-727-225	3828	92080
5256	de Havilland Canada DHC-6 Twin Otter 300	12282	94395
5260	Yakovlev YAK-40	13746	96870
5264	Ilyushin II-76	3282	102845
5268	Boeing B307-1 Stratoliner	1224	87095
5272	Boeing B-737-2K9	4332	99875
5280	Curtiss-Wright C-46F-CU	13488	82105
5284	Britten-Norman BN-2A-26 Islander	13374	102465
5288	Boeing B-707-344C	7122	89045
5292	Junkers JU-52/3m	14562	81090
5296	Boeing B-707-321B	1302	91290
5300	Antonov AN-24	3630	90530
5304	de Havilland Canada C-7A Caribou	6654	99705
5308	Junkers 52/3m	426	83635
5312	Douglas DC-3	2502	83425
5316	Boeing B-757-223	3486	99905
5320	Junkers JU-52/3m	3210	80510
5588	deHavilland DH-86	12264	80845
5324	Let 410UVP	13998	102890
5328	Fokker F-27 Friendship 200	5580	90980
5332	McDonnell Douglas DC-8-52	11700	90840
5336	Lockheed Hudson	8490	80895
5340	Boeing 737-2J8C	6390	102655
5344	Lockheed C-141A (L.300)	9006	92560
5348	de Havilland Canada DHC-6 Twin Otter 200	6750	100050
5352	Boeing KC-135A	9006	96960
5356	Douglas C-47B-25-DK	9450	82005
5360	Curtiss C 46F-CU	888	83815
5364	Douglas DC-4	4434	85390
9520	Martin 404	6450	93925
5368	Harbin Yunshuji Y-12 II	10554	100445
5372	Yakovlev YAK-40	3630	92795
5376	Antonov AN-26	10098	96450
5380	Yakovlev 40D	11028	99315
5384	Boeing 40	7818	79300
5388	Handley Page HPR-7 Herald 214	6282	88465
5392	Boeing 707-336C	11880	95820
5396	Sikorsky UH-60A / Sikorsky UH-60A	9732	96735
5400	Boeing B-707-321C	9828	92135
5404	Sikorsky S-58ET (helilcopter)	11244	97620
5408	de Havilland Canada DHC-6 Twin Otter 300	4332	94535
5412	Douglas DC-8-43F	7644	94130
5416	Boeing B-737-2A8	10050	93470
5420	Embraer 110C Bandeirante	2412	95885
5424	Lockheed 1049H Super Constellation	1182	86795
5428	Douglas C-54A	2292	92305
5432	Boeing 737-286	14052	96205
5436	Britten-Norman BN-2A-21 Islander	4362	92300
5440	Antonov AN-24	3630	92240
5444	Boeing B-707-437	5508	88110
5448	Boeing B-747-237B	5508	93115
5452	Boeing B-727-223	13626	102800
5456	Dassault Falcon 20	1422	103380
5460	Lockheed L-188A Electra	2724	91340
5464	Douglas DC-3	6174	81120
5468	Breguet 14	5682	78640
5472	Antonov AN-24RV	12618	100390
5476	de Havilland Canada DHC-6 Twin Otter 300	11910	95215
5480	Embraer 110C Bandeirante	14562	92005
5484	Douglas DC-3	6336	86535
5488	Lockheed C-121C Super Constellation	9006	85265
5492	CASA 212 Aviocar 200	12270	100355
5496	Tupolev TU-134A	3630	96110
5500	Consolidated PBY-5A Catalina	3132	86135
5504	Shaanxi Y-8D	10452	98500
5508	Cessna 208B Caravan I Super Cargomaster	4644	102475
5512	Hawker Siddeley HS 748-260	12528	91525
5516	Douglas C-39-DO  (DC-2)	13488	80940
5520	Boeing B-737-204	5418	98455
5524	Boeing B-17F / Boeing B-17F	13488	81095
5528	Boeing B-707-338C	5628	96970
5532	Cessna 208B Caravan I Super Cargomaster	9096	102210
5536	Beech King Air B90	7734	97750
5540	Lockheed Orion 9E Explorer float plane	8646	79805
5544	Pilatus PC-6 Turbo Porter	9258	97160
5548	de Havilland Canada DHC-6 Twin Otter 300	444	100285
5556	de Havilland DHC-6 Twin Otter 300	8952	97445
5560	McDonnell Douglas MD-82	10668	102265
5564	Fokker F-27 Friendship 300	13404	90095
5568	Gates Learjet 35A	14406	103365
5572	British Aerospace 146-300	348	98940
5576	Douglas DC-2-112	3828	80075
5584	Aerospeciale AS-350D	1782	95390
5592	British Aerospace Jetstream BA-3100	10506	99050
5596	Tupolev TU-154B-2	3630	95790
5600	Britten Norman BN-2A Islander	2166	93490
5604	Handley Page Dart Herald 201	636	89445
5608	Douglas DC-6B	882	84965
5612	Britten-Norman BN-2A Islander	1584	96930
5616	Curtiss AT-32C Condor	4950	79625
5620	Douglas DC-3	426	83370
5624	Canadair CL-44J	5748	96850
5628	Cessna 310	4236	93845
5632	de Havilland DHC-6 Twin Otter 300	2694	102145
5636	Beechcraft B-99	11868	89580
5640	Beechcraft 1900D	7896	103935
5644	Douglas C-47A	12918	88870
5648	Sikorsky S-38 Flying Boat	3864	79575
5652	Cessna 335	8646	101735
5656	Learjet 25B	11940	98470
5660	Douglas DC-3 (C-53-DO)	12006	86395
5664	SNCASE Languedoc	11700	85835
5668	Canadair DC-4M-2 Northstar	12774	85245
5672	Curtiss C-46F-1-CU	5184	83935
5676	Beechcraft 1900-C / Beech King Air A90	11994	100260
5680	Douglas C-54P	2016	88905
5684	McDonnell Douglas DC-8-61	10734	98965
5688	Beechcraft D55	10410	93750
5692	Let L-410UVP	10032	102560
5696	Cessna 177RG	8646	97305
5700	Sikorsky CH-53D (helicopter)	2016	90845
5704	Douglas DC-3	11850	84425
5708	de Havilland Dove 1	1398	82675
5712	Douglas C-54A	13488	80980
5716	Learjet 24D	11328	101100
5720	Douglas DC-3	2562	82995
5724	Piper PA-31-350 Navajo	14046	96505
5728	Antonov AN-24RV	10566	96265
5732	de Havilland DHC-2	12210	102675
5736	Douglas C-47B-15-DK	14382	98005
5740	Lockheed Orion 9D	3486	79695
5744	Cessna 208B Grand Caravan	4476	102085
5748	Hawker Siddeley HS-748-357/2B SCD	10452	99625
5752	Tupolev TU-134A	3630	96260
5756	Avro 685 York 1	4392	84175
5760	Embraer 120 Brasilia	13800	96635
5764	Vickers Viscount 818	7122	88545
5768	Douglas DC-3C	12918	87490
5772	Cessna 208 Caravan I	6618	99940
5776	Kawasaki C-1 / Kawasaki C-1	894	95030
5780	Fokker F-27 Friendship 100	2562	87000
5784	Handley Page HPR-7 Herald 211	8064	87810
5788	Vickers Valetta C-1	9450	83660
5792	Armstrong-Whitworth F-K-8	14508	78140
5796	Piper PA-31	6570	95460
5800	Dassault Falcon 20C	8862	101940
5804	Lockheed C-130H Hercules	9726	100420
5808	Aerospatiale 330G Puma	6048	94750
5812	Grumman G-159 Gulfstream I	1416	101615
5816	Boeing 40	3870	79345
5820	Cessna TU206B	11298	90290
5824	Britten-Norman BN-2A-6 Islander	10434	98120
5828	Curtiss C-46D-20-CU	7398	82750
5832	Channel Air Bridge	4206	87090
5840	Bristol 170 Freighter I	14640	82425
5844	Learjet 35A	3456	96780
5852	Curtiss C-46A	12960	84410
5856	Curtiss C-46F	54	99640
5860	Douglas C-47-DL	510	85035
5864	Learjet 25D	1344	99260
5868	Ford Tri-Motor / Ford Tri-Motor	14484	79770
5872	Junkers JU-52/3mge	11754	80645
5876	Embraer 110P1 Bandeirante	8238	94105
5880	Douglas DC-7B	3828	87775
5884	Sikorsky S-76	14826	94015
5888	Lockheed L-749-79-33 Constellation	6840	83025
5892	Aero Commander  520	4560	85095
5896	Lockheed 18 Lodestar	12228	83915
5900	Consolidated LB-30A Liberator	9450	80765
5908	Curtis C-46A	11742	87735
5912	Antonov 12B	13284	100900
5916	Curtiss C-46E	7194	82225
5920	Short Empire Flying Boat	1146	80550
5924	Britten-Norman BN-2A-6 Islander	12828	94150
5932	Boeing B-737-2A1	14562	95975
5936	SNIAS SA330J	9480	93055
5940	Lockheed P2V-7	12216	86960
5944	Douglas C-47	30	82665
5948	Fokker F-27 Friendship 500	2274	99850
5952	de Havilland DH-114 Heron	10332	87305
5956	Douglas MC-54M	9006	84975
5960	Douglas C-47A	5382	84660
5964	Douglas DC-3 / Douglas DC-3	14196	88095
5968	Boeing B-737-200	6150	103140
5972	Douglas C-47B	9450	82255
5976	Douglas C-47 Dakota	4542	81915
5980	Cessna 402C	7518	100625
5984	Lockheed Vega	14598	78895
5988	Douglas DC-6	4818	90590
5992	Avia 14T	8520	92745
5996	Consolidated Catalina	4758	86840
6000	Fairchild F-27	3246	93625
6004	Lockheed 049-46-21 Constellation	12498	87065
6008	McDonnell Douglas DC-9-32	2748	93485
6012	Fokker F-50	11670	102830
6016	British Aerospace BAE-146-200A	14388	97940
6020	Lockheed Vega	2424	79620
6024	Fokker F-27 Friendship 200	6390	90340
6028	Douglas DC-3 (C-54A-DO)	888	83060
6032	Cessna TU206C	14322	95170
6036	Avro Shackleton MR-2	9450	84510
6040	C-47 Dakota DT-941	4638	81300
6048	Boeing 707-321CF	1302	90385
6052	Cessna 172L	6600	91545
6056	Airbus A320-211	5784	103455
6060	Douglas DC-3	882	80200
6064	Lockheed 18 Loadstar	14388	84300
6068	Boeing 707-351C	11220	96380
6072	McDonnell Douglas DC-10-30	11964	100085
6076	Fokker F-27 Friendship 600	6288	100870
6080	Douglas DC-3	9258	91940
6084	Douglas DC-3	4050	91445
6088	De Havilland DH-4	12642	78075
6092	Douglas C-54B	2844	86270
6100	Boeing B-737-244	1056	103280
6104	Eurocopter AS350D Astar	11418	103985
6108	BAC One-Eleven 203AE	96	100495
11424	NAMC YS-11A-211	14562	90665
6112	Swearingen SA.227AC Metro III	6684	97385
6116	Cessna 501 Citation I	8922	95755
6124	Douglas C-47	990	80935
6128	Curtiss R-4LM	12642	90405
6132	NAMC YS-11A-500	12138	92460
6136	Boeing B-727-224	4716	91135
6140	BeechJet 400	4344	98300
6144	de Havilland Canada DHC-6 Twin Otter 300	11748	92685
6148	Shorts SC-7 Skyvan 3-300	3516	90900
6152	Yakovlev YAK-40	10056	99115
6156	Lockheed CC-130E Hercules	3798	97075
6160	Embraer 120RT- Brasilia	4080	98015
6164	Swearingen SA-226AT Merlin IV	4848	102035
6168	Antonov AN-26	11064	103220
6172	\N	2682	80805
6180	Piper Navajo PA-31/ Piper Seminole PA-44	12378	101655
6184	Douglas C-47-DL	3468	84610
6188	Boeing B-727-21	10446	96740
6192	Beechcraft 1900D / Cessna 177	2880	100835
6196	McDonnell Douglas DC-9-32	426	90585
6200	de Havilland Canada DHC-6 Twin Otter 310	5622	96540
6204	\N	14004	81835
6212	Douglas C-47A	13158	99725
6216	Douglas DC-3	48	83320
6220	Consolidated PB4Y-1	8928	81275
6224	Lockheed C-130E Hercules	9006	90620
6228	Curtiss C-46-F-1-CU	8886	83275
6232	Douglas DC-3	10050	85395
6236	Lockheed L-100-30 Hercules	1896	99380
6240	Cessna 421	9804	102545
6244	Britten-Norman BN-2A Islander	14088	93090
6248	de Havilland Canada DHC-6 Twin Otter 300	10404	96130
6252	de Havilland Canada DHC-6 Twin Otter 300	5712	98910
6256	Boeing B-707-379C	5310	96285
6260	De Havilland DH-4	5190	78100
6264	Douglas DC-3	2664	84000
6272	CASA 212 Aviocar 300	3930	97640
6276	Boeing B-720-040B	2862	87865
6280	McDonnell Douglas DC-10-10	4854	93860
6284	Sud Aviation SE 210 Caravelle III	9264	92570
6288	Curtiss C-46, C-47, DC-3	990	82130
6292	Douglas DC-4	2226	84625
6296	Dormier Do-J-Iif Bos Wal	3210	79900
6300	Douglas DC-3	5280	84735
6304	Lockheed L-049-46-26 Constellation	11004	82470
6308	Douglas DC-3 (C-47A-DL)	12054	82885
6312	Ilyushin IL-18D	8226	98710
6316	Boeing B-727-22	882	87940
6324	Piper PA-31-350 Navajo	12816	101565
6328	Bristol Britannia 312	12864	87465
6332	Douglas C-47A	8490	81600
6336	Tupolev TU-154	6522	102180
6340	Fokker F-27 Friendship 400M	3618	96615
6348	Convair CV-340-58	426	84960
6352	Gates Learjet 35A	3060	95375
6356	Douglas DC-3	6720	85555
6360	Douglas DC-3	8928	81485
6364	Lockheed 18 Lodestar	12498	81310
6368	Douglas DC-3	10326	80820
6372	Transall C-160NG	4596	101910
6376	Cessna 402B	840	94595
6380	Stinson Model A	5688	81435
6384	CASA 235-10	13794	98665
6388	Douglas DC-6B	6840	84655
6392	Douglas DC-3	2460	87785
6396	Boeing C-97A Stratofreighter	9006	83745
6400	Boeing B-767-366ER	11166	101305
6404	Cessna 208 Caravan	2958	102030
6408	Ilyushin 76MD	8652	100070
6412	Short Stirling IV	9450	81630
6416	de Havilland DHC-6 Twin Otter 300	5082	97295
6420	Antonov AN-24B	14520	94340
6804	de Havilland DH-9	\N	78305
6716	Boeing B-737-241	5310	97335
6424	Douglas C-47	3066	90915
6428	Sikorsky S-55B	1482	90415
6432	Grumman G-159 Gulfstream I	3594	97510
6440	Douglas C-54A-10-DC	3324	85210
6444	Tupolev TU-134A	3630	95640
6448	Beechcraft 65-B80	14838	90720
6452	Lockheed 188C Electra	12840	86230
6456	Sikorsky S-70 / Sikorsky S-70	11736	100080
6460	Boeing B-737-2H6	1560	93050
6464	Antonov 28	13140	101410
6468	Cessna 402A	12366	95445
6472	Douglas C-47A-5-DK	12978	101485
6476	Embraer EMB-110 Bandeirante	762	97175
6480	Douglas C-47B-15-DK	12648	91025
6484	Boeing B-747-121	1302	96170
6488	Airspeed Ambassador A5-57	5382	85575
6492	Lockheed R-7V1	5952	84695
6496	Douglas DC-6	11424	90360
6500	Curtiss C-46F	4008	86610
6504	L-100-20	204	92670
6508	Learjet 23	7434	94360
6512	Hawker Siddeley HS-748-329 Srs. 2A	5862	95020
6516	Curtiss C-46F	7566	85830
6520	de Havilland Canada DHC-6 Twin Otter 300	13794	97345
6524	Douglas C-47A	10050	85375
6528	Piper PA-28-161	14322	94810
6532	Douglas C-47B	2040	87845
6536	Boeing B-727-92C	7398	88945
6540	Focke-Wulf A-17	3210	79535
6548	Lockheed 749-79-33 Constellation	9264	83100
6552	de Havilland  Canada  DHC-5D Buffalo	5760	98870
6556	Britten-Norman BN-2A Islander	6624	97495
6560	Sikorsky S61L	8478	92835
6564	Douglas C-47A	5382	83395
6568	Douglas C-118A	14004	96855
6572	ConvairCV-440	1254	99950
6576	Convair CV-240-7	12420	84210
6580	Douglas C-54A-1-DO Skymaster	1398	82940
6584	Fokker F-27 Friendship 400	6048	88610
6588	Lockheed 1649A Starliner	9264	86465
6592	Douglas DC-4 (C-54)	9258	93930
6596	Cessna 208B Grand Caravan I	4476	101685
6600	Douglas DC-3A	11742	84495
6604	Douglas DF-151	4566	80375
6608	Cessna 172F	14322	94795
6612	Ilyushin IL-14P	3630	85440
6616	Lockheed L-188A Electra	8142	101070
6620	Britten-Norman BN-2A-6 Islander	12792	98880
6624	Beechcraft 58	1836	94405
6628	Curtiss C-46A-55-CK	6336	89970
6632	Cessna 310I	12564	93190
6636	Douglas DC-3	12678	83575
6640	de Havilland DH-86	13128	79650
6644	Fairchild C123K	10704	98590
6648	Norman BN-2A-6	8646	91325
6652	Fairchild F-27J	11850	94075
6656	Antonov AN-24	3630	93060
6660	Cessna 185	13986	92550
6664	HBB HFB-320 Hansa Jet	10374	103080
6668	Douglas C-47	990	81475
6672	Curtiss C-46	3300	84875
6676	LatÃ©coÃ¨re 300	9264	80055
6680	Hawker Siddeley HS-748-FAA	7008	95200
6684	Piper PA-32-R301 Saratoga II HP	8646	101185
6688	Douglas DC-3	2562	83930
6692	Douglas DC-2-243	12006	81590
6696	Short Sunderland	9450	80925
6700	Antonov AN-28 PZL-MieleM-28 Sky Truck	14514	101925
6704	Piper PA-32	1992	94470
6708	Aero Commander 560-F	7752	89330
6712	Beechcraft Super King Air B200	6582	103645
6720	Douglas C-54A-DC (DC-4)	13488	81285
6724	CASA 212 Aviocar 200	7500	97895
6728	Swearingen SA-26TC Metro II	2148	96385
6732	Lockheed C-130E	4746	94200
6736	Ford 5-AT-B Tri Motor	14694	78920
6740	Yakovlev YAK-40	3630	91150
6744	Douglas DC-3 (C-47-DL)	14790	82870
6748	Douglas C-47A-25-DK	10770	89775
6752	Swearingen SA-226TC Metro II	13800	97010
6756	Tupolev TU-134A	6516	99690
6760	Cessna 208B Caravan I Super Cargomaster	8118	97580
6764	Lockheed 10 Electra	12840	80070
6768	Douglas DC-3	12420	84350
6772	de Havilland Canada DHC-6 Twin Otter 300	10038	103360
6776	Beechcraft Super King Air B200	10632	103650
6780	Douglas DC-6A	3648	91105
6784	Convair CV-440	4950	88485
6792	de Havilland Canada DHC-3 Otter	4458	89210
6796	Consolidated PBY-5A  Catalina	1158	85580
6800	Antonov AN-24V	3630	91330
6808	Fokker F-27 Friendship 100	13266	95725
6812	Britten-Norman Trislander	3420	100990
6816	Embraer EMB-110 Bandeirante	6804	100165
6820	Convair CV-240-53	11544	100745
6824	Cessna 404 Titan	1488	94525
6832	de Havilland DHC-6 Twin Otter 300	10716	102920
6836	Douglas DC-3	13404	83515
6840	Shorts SC-7 Skyvan 3-100	324	98950
6844	Beechcraft E18S	2196	92085
6848	Bell UH-1B / Sikorsky CH53A helicopters	13338	88705
6852	Avro Shackleton MR-2	9450	84430
6856	Sabca F-VII	11394	79065
6860	Beechcraft 1900D	14460	102820
6864	Airbus A310-324	9000	99605
6868	Ilyushin IL-18	3630	90895
6872	LiorÃ©-et-Olivier H-242	9264	80265
6876	Douglas C-47A-1-DK	12234	93375
6880	MD Douglas DC-9-31/Piper Cherokee PA-28	7788	89680
6884	Cessna C-207A	14322	95750
6888	Canadair C-4-1Argonaut / Harvard Mark II	10140	84565
6892	Fokker F-X	2682	78865
6896	Handley Page Hastings C-2	9450	86670
6900	LatÃ©coÃ¨re 28	9264	79565
6904	Antonov An-32	13206	103950
6908	Antonov 12V	9366	104220
6916	Douglas DC-3	7992	86945
6920	Lockheed AC-130A Hercules	9006	89920
6924	Handley Page W-10	1146	78875
6932	Lockheed 049-46-25 Constellation	6840	82800
6936	LET 410UVP-E	6312	102005
6940	Ilyushin II-76TD	1212	102530
6944	Fokker F-27 Friendship 600	918	97085
6948	Beechcraft C99	9912	98465
6952	Aero Commander 680	4560	87955
6956	de Havilland Canada DHC-6 Twin Otter 100	5568	103200
6960	Fokker F-28 Fellowship 1000	11964	93695
6964	Handley Page HP-1 Hermes	1278	85200
6968	Avia 14-40	84	89270
6972	Vickers 802 Viscount	5382	91085
6976	Douglas C-54G	9006	83305
6980	Hughes 369HS	8436	90815
6984	Vickers Viscount 749	6336	90250
6988	Douglas DC-3	14724	89525
6992	Cessna 208B Grand Caravan	3384	103755
6996	Lockheed Orion	5208	79615
7000	Douglas DC-3	300	82040
7004	Boeing B-727-30	672	100935
7008	Lockheed Orion	12006	80020
7012	Douglas DC-7B	2988	86105
7016	Beechcraft C99	3660	99460
7020	Lockheed 14-H2 Super Electra	12774	80730
7024	BAC One-Eleven 528FL	9330	97720
7028	NAMC YS-11A-227	12984	90370
7032	Lockheed 18 Loadstar	12774	82295
7036	Grumman G-21 Goose	9834	88310
7040	Antonov AN-10A	3630	90800
7044	Douglas DC-6B	4854	87395
7048	Curtiss C-46A	11946	85955
7052	Douglas C-47A-60-DL	9006	81155
7056	Antonov AN-24	3630	97465
7060	Douglas DC-3	12138	86090
7064	Junkers F-13	900	78360
7068	Douglas C-54B	3762	89235
7072	Vickers 803 Viscount	3606	88690
7084	Canadair CL-604	9534	102130
7088	Cessna 411	168	89095
7092	de Havilland Canada DHC-3 Otter	2580	96015
7096	Boeing B-727-212A	14562	94760
7100	Sud Aviation SE-210 Caravelle 6N	8982	89615
7104	Beechcraft 1900D	8856	99890
7108	Douglas DC-4 (C-54-DO)	4338	82335
7112	de Havilland DH-114 Heron 2D	11700	85505
7116	Vickers 620 Viking 1	7920	82090
7120	Learjet 24D	66	102100
7124	Britten-Norman BN-2A-8 Islander	1638	95015
7128	Fairchild-Hiller FH-227B	1350	91295
7132	Douglas DC-3	10818	83775
7136	Stinson Model A	7134	80110
7144	Curtiss C-46D-10-CU	2532	81900
7148	Mil Mi-8MTV-1	7776	99830
7152	Douglas DC-3	3486	81170
7156	Boeing B-707-123B	3486	86760
7160	Douglas C-47A	12090	86435
7164	Beechcraft C45G	3306	87675
7168	Beechcraft C99 / Rockwell 112TC	7758	95465
7172	Stinson SM-6000-B	1806	79670
7476	Douglas DC-3	14562	83460
7176	Vickers 610 Viking 1B	5382	82535
7180	Boeing B-737-2A8	10050	96980
7184	McDonnell Douglas DC-8-33	5310	88510
7188	Douglas DC-3	1830	82480
7192	McDonnell Douglas DC-10-10	3198	91600
7196	Boeing B-747-121A	1302	97050
7200	Douglas C-47A-15-DK	84	83205
7204	Ilyushin IL-18D	5532	91110
7208	BAC One-Eleven  424EU	10680	90180
7212	Lockheed L-100-30 Hercules	14664	95135
7216	Douglas DC-3	13902	92235
7224	McDonnell Douglas MD-82	7440	103825
7228	de Havilland Canada DHC-6 Twin Otter 300	174	99715
7236	Cessna 208 Caravan I	3090	101330
7240	de Havilland Canada DHC-5D Buffalo	8976	97215
7244	Ilyushin 76TD	4608	98050
7252	de Havilland Canada DHC-7-102	12900	96795
7256	Beech Queen Air 65-A80	9156	95645
7260	Curtiss C-46A	1314	86050
7264	Douglas DC-3	7578	89515
7268	Douglas DC-3	11850	85330
7272	CASA 212 Aviocar 200	7290	98460
7276	Boeing B-707-331B	1746	97095
7280	Lockheed L-100-30 Hercules	14706	91665
7284	Let 410UVP	1662	98405
7288	Lockheed 18 LodeStar	12498	80770
7292	Sikorsky S-61L helicopter	9756	89190
7296	Britten-Norman BN-2A Islander	13926	97450
7300	Yakovlev YAK-42D	13278	98565
7304	Douglas DC-6	3486	83125
7308	Military - U.S. Air Force	4056	97910
7312	Douglas DC-3	12522	87365
7316	Douglas DC-3	8574	86950
7320	McDonnell Douglas DC-8-Super 63CF	11142	93425
7324	Boeing RC-135T	9006	95685
7328	Canadair CL-600-2B16 Challenger 604	11766	101730
7332	Beech Queen Air A80	3588	93270
7336	McDonnell Douglas DC-8-62H	13536	92980
7340	Boeing B-707-138B	10986	88935
7344	Handley Page HP-16	4572	78185
7348	Douglas DC-9-15F	1362	102790
7352	Lockheed 1049G Super Constellation	1332	85870
7356	Avro Anson	11142	82625
7360	Bell 206B	5940	91125
7364	Douglas C-47	990	81325
7368	Sud Aviation Caravelle 3	9042	87515
7372	Curtiss C-46D-5-CU	2592	83010
7376	Tupolev TU-104A	3630	86885
7392	Douglas DC-6B	9564	87205
7396	Tupolev TU-154M	10080	100160
7400	Lockheed 18 Lodestar	600	88570
7404	McDonnell Douglas DC-8-63CF	5826	92770
7408	Beech E18S	3564	91225
7412	de Havilland Canada DHC-6 Twin Otter 300	13794	96425
7416	Vickers Viscount 745D	14424	94700
7420	Fokker F-27 Friendship 600	4146	101030
7424	Douglas DC-3	12840	80795
7428	De Havilland DH-4	12642	78110
7432	Boeing B-737-222	882	91040
7436	McDonnell Douglas DC-9-32	11964	96375
7440	Beechcraft E18S	14820	94220
7444	Curtiss C-46A-40-CU	12930	90905
7448	Douglas DC-6 / RAF York MW248	6828	82720
7452	Boeing - EC-135K	9006	92965
7456	Lockheed L-049 Constellation	11004	82300
7460	Douglas C-47-DL	8490	81025
7464	Lockheed 749A Constellation	5508	84840
7468	Harbin Yunshuji Y-12-II	7722	101740
7472	McDonnell Douglas DC-10-10	3486	93655
7480	Douglas DC-3	792	82740
7484	Learjet 25D	3456	94065
7488	Douglas DC-3	2382	83150
7492	Boeing C-97	6438	89715
7496	Beechcraft King Air A100	11826	102430
7500	Bristol 170 Freighter 31	13662	85030
7504	Cessna 208B Grand Caravan	14364	102685
7508	BFW M-18	3210	78580
7512	Learjet 35A	11664	100320
7516	Short 360	5346	101840
7520	Douglas DC-6A	5586	94560
7524	Douglas DC-3	8592	87215
7528	McDonnell Douglas DC-8-63F	10512	98365
7532	Lockheed L-1011	12294	98555
7536	Boeing B-737-300 / Swearingen SA-227AC	12336	97915
7540	Hawker Siddeley Trident 1C	5382	90805
7544	Antonov 12BP	3630	96395
7548	Douglas DC-3	14844	84595
7552	Vickers 628 Viking 1B	7674	85600
7556	de Havilland Canada DHC-3 Turbo Otter	8400	100150
7560	Antonov An-10A	3630	87145
7564	Douglas C-47A	4728	88205
7568	Cessna U-27A Caravan I	2220	96310
7572	Ilyushin IL-76TD	5298	103185
7576	Cessna 208B Grand Caravan	10356	103495
7580	Britten-Norman BN-2A-21 Islander	14766	95120
7584	Piper PA-28	13584	90260
7588	Boeing B-727-224	3648	97430
7592	Douglas C-47B	2862	85060
7596	Heinkel HE-2	3210	79225
7600	Douglas DC-3	8574	86745
7604	Lockheed C-130E Hercules	7692	98650
7608	Vickers Wellington bomber	10878	81825
7612	HAL-748-224	10050	91190
7616	Embraer 110P1 Bandeirante	5316	95625
7620	Lockheed P-3A	8928	87685
7624	Boeing B-747-2R7F	14688	98320
7628	Douglas C-54D	4050	91200
7632	de Havilland Canada DHC-4A Caribou	11034	93665
7636	Beechcraft 58	10314	93155
7640	Douglas DC-3	2724	83270
7644	Ford 5-AT-D	3870	79440
7652	Airbus A320-231	10050	97590
7656	Douglas DC-3	3984	85220
7660	Douglas DC-3	12000	84795
7664	Boeing B-737-266	11166	95940
7668	de Havilland Canada DHC-3 Otter	11910	92580
7672	BAe 146-200	11730	103575
7676	Douglas C-54G	13488	81675
7680	Learjet 25C	552	98540
7684	Fokker F-27 Friendship 600RF	8748	94445
7688	Airbus A300	9264	92505
7692	Piper PA-31-310 Navajo	5148	99660
7696	Douglas C-47B-DK	9006	83580
7700	Cessna 180	2928	89780
7704	Cessna 551 Citation II	11628	97460
7708	Boeing B-727-225 Adv	3828	95590
7712	Piper PA-32-300	14322	102865
7716	Cessna 172H	1068	89660
7720	Douglas DC-3	11982	84675
7724	Douglas DC-3	6840	83200
7728	Short S-23 (flying boat)	12264	81335
7732	Aerospatiale AS350 Eurocopter  helicoper	12540	101945
7736	Douglas C-47	10656	89545
7740	de Havilland DHC-2	8844	102325
7744	Antonov AN-26	14076	102780
7752	Antonov 26B	3630	99590
7756	Douglas DC-3	2556	83110
7760	Embraer 110P2 Bandeirante	13938	101155
7768	Embraer 110P1 Bandeirante	12312	101205
7772	Piper PA-32	10764	91765
7776	BAC One-Eleven 516FP	2562	97260
7780	Antonov AN-24V	14130	103385
7784	Douglas DC-3	10326	80860
7788	Douglas C-47	990	81210
7792	Boeing 707-360C	1086	93020
7796	Douglas DC-3	9258	89675
7800	de Havilland Canada DHC-7-103	9774	94730
7804	Douglas DC-3	7242	87265
7808	Douglas DC-3	7650	93130
7812	Boeing B-29A Superfortress	9006	82920
7816	Breguet 14	5682	78870
7820	Douglas DC-3	8574	83430
7824	Junkers G-23	4578	79360
7828	General Aviation GA-43	4950	79945
7832	Lockheed P-3A Orion	3768	90035
7836	Handley Page Dart Herald 202	2778	95485
7840	Cessna 402B	13932	95355
7844	Antonov An-12BP	14520	92825
7848	Lockheed 188C Electra	11928	88210
7852	Fairchild C-119G / Fairchild C-119	11886	86715
7856	Lockheed HC-130P Hercules	9006	100265
7860	Shorts SC-7 Skyvan 3-200	10872	92930
7864	Douglas DC-3	7668	87715
7868	Curtiss C-46	8058	86720
7872	Fairchild C-119C	9006	84095
7876	Handley Page HP-81 Hermes IV	10026	83995
7880	Airbus A310-304	8736	98560
7884	Piper PA-31	14124	92640
7888	McDonnell Douglas MD-81	738	94565
7892	Douglas DC-3	6132	83315
7896	Douglas DC-3	1296	91250
7900	Douglas DC-6	14796	84420
7904	Lockheed C-130H Hercules	6528	100640
7908	McDonnell Douglas DC-9-32	9276	93275
7912	Douglas DST-A-207A	882	80880
7916	Junkers JU-52	3210	80030
7920	Yakovlev YAK-40	3630	95180
7924	Boeing 40	7818	78655
7928	BAC One-Eleven 200AB	2982	87360
7932	Heinkel He-111V2	3210	80115
7936	Eurocopter AS-350BA	2214	101150
7940	Sud-Aviation Caravelle VI-N	2844	91490
7944	Boeing B-737-3Y0	2562	97690
7948	Antonov An-72	3816	100645
7952	Curtiss C-46A	276	87935
7960	Lockheed C-141A (L.300)	9006	92030
7964	Convair CV-340	9006	95925
7972	Fairchild C-119	11334	87250
7976	Aerospatiale Alenia ATR-42-312	5580	96545
7980	Let 410UVP-E	3444	98970
7984	Douglas DC-3	12660	87195
7992	Bell 205A	11364	90735
7996	Robertson C-U206F	14322	94865
8000	Lockheed C-130H Hercules	5172	95935
8004	Antonov An-12B	7272	96550
8008	Piper PA-23-250 Aztec	8646	92260
8012	Vickers Viking 1B & Soviet YAK-3 fighter	11478	82655
8016	Antonov AN-24V	10680	89840
8020	Douglas DC-6B	5088	86780
8024	Tupolev TU-154B	6924	92190
8032	Aerospatiale AS355-F1	10272	101625
8036	Douglas DC-3	10458	84650
8040	Bristol 170 Freighter 21E	11628	92055
8044	Tupolev TU-154B-2	3630	94550
8048	Douglas DC-3F	6174	82390
8052	Grummand Gulfstream III	4656	101865
8060	Douglas DC-6	882	82705
8064	Fokker F-27 Friendship 100	1110	96975
8068	Boeing B-29 Superfortress	9006	82815
8072	Embraer 110C Bandeirante	2412	92650
8076	Douglas C-54A-10-DC	11430	87505
8080	Consolidated OA-10 Catalina	2226	82735
8084	Cessna 208B Caravan I Super Cargomaster	3936	102755
8088	Piper PA-34	14322	92210
8092	Cessna 208B Grand Caravan	7110	101190
8096	Bell 206B helicopter	13632	98230
8100	Douglas DC-6AB	14544	86380
8104	Shorts SC-7 Skyvan 3-100	11250	98160
8108	Boeing B-767-3Z9ER	9690	98055
8112	Cessna T207A	8358	98715
8120	CMASA Wal	2454	78825
8124	Embraer 110P1 Bandeirante	9444	98765
8128	Boeing 737-4Q8	3198	101105
8132	Douglas C-47	10446	87815
8136	Short Sandringham 5 (flying boat)	10026	82405
8140	Douglas DC-3	11004	80810
8148	Piper PA-31-350 Navajo	3888	101575
8152	Douglas C-47A	11964	86150
8156	Consolidated LB-30-A Liberator	4542	81635
8160	Antonov AN-2	3630	99680
8164	Boulton and Paul P-71	1146	80005
8168	Tupolev TU-104-A	3630	85735
8172	Sud Aviation SE-210 Caravelle III	11904	88715
8176	Piper PA-31	1734	93500
8180	Mil Mi-8T	8178	99815
8184	Yakovlev YAK-40	6918	100215
8192	Junkers JU.52	3210	80275
8196	NAMC YS-11A-300F	9984	97055
8200	Cessna 310N	9942	93360
8204	Antonov AN-24	3630	93785
8208	Boeing 247D	6612	80065
8212	Boeing B-707-323C	5004	100210
8216	Swearingen SA26T	2190	91235
8220	Boeing 727-21	2682	88385
8224	Aerospatiale Puma	12954	94585
8228	Piper PA-32RT-300	9972	93630
8232	Lear Jet 24A	11838	92290
8236	Curtiss C-46T	1506	88635
8240	Douglas DC-3	354	83000
8244	de Havilland Canada DHC-6 Twin Otter 300	1548	95080
8256	Boeing 247B	6612	80095
8260	Embraer C-95C Bandeirante	11046	98290
8264	de Havilland Canada DHC-6 Twin Otter 300	444	94590
8268	Yakovlev YAK-40	972	100940
8272	de Havilland DH-114 Heron 1B	8244	84230
8276	Macchi C-94	6162	80400
8280	Let 410UVP	1062	99565
8284	Dornier Wal	3210	79050
8288	Learjet 35A	4770	103855
8292	de Havilland Canada DHC-6 Twin Otter 300	174	100100
8296	Fokker F-27 Friendship 500F	13794	99265
8300	Lockheed C-130B	6648	96885
8304	FIAT G-212CP	7002	82990
8308	Beechcraft 99	8532	97180
8312	de Havilland Comet 4C	8592	87285
8316	Consolidated B-24H	9006	81280
8320	Handley Page HP-57 Halifax	9450	80960
8324	de Havilland Canada DHC-6 Twin Otter 300	13794	95815
8328	Douglas DC-6B	3804	95800
8332	de Havilland Canada DHC-6 Twin Otter 200	5010	101605
8336	Douglas DC-3	1092	83480
8340	Douglas C-47A-DL	13488	81265
8344	de Havilland DH-125-400A	1446	91455
8348	McDonnell Douglas DC-8-43	2748	90705
8352	Convair CV-440 -62	14790	86820
8356	Dornier 228-212	3204	100030
8360	Curtiss C-46C	5310	89145
8368	Vickers Viscount 764D	1800	92945
8372	Vickers 837 Viscount	636	92130
8376	Lockheed 749A Constellation	9720	85680
8380	Cessna 402C	6348	102660
8384	Tupolev TU-154M / C-141 Starlifter	1380	100555
8388	Ilyushin IL-18D	7266	101745
8392	Convair CV-580	13722	89400
8396	Consolidated LB-30A Liberator	4542	81715
8400	Junkers JU-52/3m	3210	80595
8404	Douglas DC-9-31 /Cessna 206	3828	90535
8408	Cessna 185	12750	94580
8412	Beechcraft Bonanza 35	9102	85905
8416	Lockheed Vega 5C	10458	79680
8420	Lockheed C-130H Hercules	14736	101635
8424	Embraer 110P1 Bandeirante	7428	98250
8428	Lockheed C-141B	9006	95410
8432	Douglas C-47A	3198	87410
8436	NAMC YS-11A-219	14688	90050
8440	Boeing 707-331C	12294	89610
8444	Nord 2501 Noratlas	2202	86800
8448	Britten-Norman BN-2A Islander	5640	102330
8452	Lockheed L-100-20 Hercules	2730	97485
8456	Tupolev TU-104A	3630	91240
8460	Bristol 170 Freighter 21	11700	84435
8464	Tupolev TU-134A / Tupolev Tu-134A	7296	93760
8468	Douglas C-47D	9006	89285
8472	Beech D18S	8316	87415
8476	Sud Aviation SE-210 Caravelle	11700	91175
8480	Avro 685 York I	2898	82280
8484	Antonov An-10	3630	90280
8492	Douglas DC-3	3828	81595
8496	Cessna UC-35D Citation Encore	4104	102850
8500	de Havilland Canada DHC-6 Twin Otter 300	13794	99720
8504	Gates Learjet 24B	2304	92710
8508	Douglas DC-3	9576	85455
8516	Fairchild-Hiller FH-227B	12078	89745
8520	Cessna 208B Grand Caravan	9036	103420
8524	Tupolev TU-134A	3630	95145
8528	de Havilland Canada DHC-6 Twin Otter 300	4506	99365
8532	Airbus A320-214	4998	104195
8536	Boeing B-747-121 / Boeing B-747-206B	14604	92785
8540	Piper PA-23	342	88250
8544	Stinson  SM-6000B	1806	79670
8548	Lockheed 188A Electra	3372	90045
8552	Lockheed 1049C-55-81 S Constellation	6840	84670
8560	Britten-Norman BN-2A Islander	13104	95845
8564	Lockheed 18-56 LodeStar	5202	84240
8568	Douglas C-47B-DK	13488	81530
8572	Lockheed C-130E Hercules	9006	87795
8576	Douglas DC-3	7122	83740
8580	Boeing B-707-321B	10446	97560
8584	Douglas DC-3	11982	84910
8588	Boeing B-707-3B5C	12612	96600
8592	Beechcraft C99	3660	101075
8596	Douglas C-54D-1-DC	4050	90925
8600	Douglas DC-3A-178	5856	95980
8604	Cessna T310R	984	93875
8608	Embraer 110P Bandeirante	14826	94310
8612	Cessna 402	9120	89865
8616	PA-34-220T Seneca III	4272	102395
8620	Fairchild C-123K	4008	91925
8624	Airbus A300B2-203	14052	96845
8628	Douglas DC-3	9150	82215
8632	McDonnell Douglas DC-9-14	7116	91905
8636	Douglas DC-2-112	10458	80540
8640	Boeing B-747-209BSF	4764	104055
8644	Fokker F-27 Friendship 600	7764	100410
8648	Douglas DC-3	6774	86630
8652	Vickers Viscount 781D	6108	100440
8656	Junkers JU-52/3m	3210	81195
8660	Douglas DC-3	3990	84925
8664	Latecoere 32	5682	78760
8668	Douglas DC-6B	2988	86165
8672	IAI 1124A Westwind	11796	102445
8676	Douglas C-47B-40-DK	9072	97830
8680	Britten Norman BN-2A-26 Trislander	9744	98415
8684	Yakovlev YAK-40	6696	98975
8688	Douglas DC-3A	5118	98305
8692	Douglas C54E-DO (DC-4)	9006	83470
8696	Lockheed Super Constellation	9264	85365
8700	Britten-Norman BN-2A-3 Islander	7962	100950
8704	Boeing B-747-237B	5508	95780
8708	Douglas C-47B	9450	81770
8716	Breguet 14	5550	78425
8720	Boeing B-727-81	828	92410
8728	Convair CV-440-62	14790	87830
8736	Consolidated PBY-5A Catalina	12498	85100
8740	Britten-Norman BN-2A-8 Islander	14328	97740
8744	Douglas C-118A / Lockheed P2V-5F	2376	85570
8748	Antonov AN-24B	144	99895
8752	Beechcraft C-45H	8910	91005
11808	Piper PA-31-350	14322	101670
8756	Bristol 170 Freighter 21E	4050	84645
8760	Bell 47G2A1 / Cessna 150H	10350	89460
8764	Vickers Valetta Mk1 / Avero Lancaster	4542	84165
8768	CASA 212-MP Aviocar 200	10062	100905
8772	Britten-Norman BN-2A-21 Trislander	7356	99160
8776	Aerospatiale Corvette	6810	93790
8780	Grumman G-21 Goose	10326	80825
8784	Boeing B-737-2F9	1608	99855
8788	Douglas DC-6BF	5478	91995
8792	Junkers JU-52	11394	80515
8796	Hawker Siddeley HS-748 2A	9762	99745
8800	de Havilland DH-34	9582	78355
8804	Antonov AN-32	2904	103810
8808	AirbusA310-304	13422	101440
8812	Beechcraft 99	9192	93145
8816	De Havilland DH-60	13128	79950
8820	Canadair CL-44	3906	92555
8828	Boeing B-247-D	882	79835
8832	Yakovlev YAK-42	3630	94680
8836	de Havilland DHC-6 Twin Otter 300	2100	102955
8840	Cessna 208B Caravan I	9978	100405
8844	Douglas C-47B	14154	93710
8848	Douglas DC-3	9456	84640
8852	Douglas DC-3	10446	91335
8856	Beechcraft G18S	9900	93430
8860	BAC One Eleven 204AF	12078	88700
8864	De Havilland DH-80	4386	79375
8868	Cessna 208 Caravan I	12030	101050
8872	Boeing B-727-2F2	3198	94970
8876	de Havilland 104-7X	5994	90305
8880	Martin 202	12840	83410
8888	McDonnell Douglas DC-8-63AF	1182	90025
8892	Tupolev TU-134A	3630	96225
8896	Douglas C-54	12012	84970
8900	Learjet 35A	10470	103470
8904	Fokker FG II	3210	78910
8908	Vickers Viscount 763	14004	85930
8912	Cessna TU206G	3720	103090
8916	Vickers 708 Viscount	9264	85250
8920	Douglas DC-3	12024	80865
8928	Douglas DC-4	6120	91625
8932	Beechcraft Bonanza F35	8646	94685
8936	Latecoere 28-1	660	79480
8940	Nord 262A-44	8982	93520
8944	Douglas DC-3	2562	84145
8948	Hawker Siddeley HS-125-403B	2598	96515
8952	Douglas DC-8	13536	92720
8956	Boeing KC-135A	9006	85700
8960	Douglas DC-3	10050	85065
8964	Douglas DC-4	10476	84120
8968	Vickers 785D Viscount	8748	89950
8972	Fairchild F-27 / Cessna 310	3810	86265
8976	Short Sandringham (flying boat)	6984	82410
8984	Let 420UVP-E	12972	102695
8988	Hawker Siddeley HS-748-215-2	6336	89200
8992	Curtiss C-46F-1-CU	12372	83035
8996	Airbus A300B4-203	2862	98550
9000	Short Calcutta	1146	79875
9004	Lockheed Hudson	8490	80815
9008	Antonov AN-12BP	13266	99435
9012	Curtiss C-46A	9390	83530
9016	Airspeed AS.57 Ambassador 2	5988	89125
9020	Embraer 110P1 Bandeirante	5316	99750
9028	Martin 202	888	83765
9032	Airbus A-330-243	14082	101955
9036	Lockheed C-130H Hercules	9006	94975
9040	Douglas DC-3	5292	82820
9044	Short S-23 (flying boat)	12264	80830
9052	Curtiss C-46	4962	85195
9056	Beech 65-A80 Queenaire	4092	103230
9064	Douglas DC-4	10446	82235
9072	De Havilland DH-4	12642	78130
9076	Mil Mi-8T	2256	103965
9084	Learjet 35	10044	93755
9088	Antonov An-12BP	14214	100845
9092	de Havilland DHC-5 Buffalo	2658	94205
9096	Mitsubishi MU-2B	2688	92275
9100	McDonnell Douglas DC-8-43	10986	88155
9104	Douglas M-4	12642	78545
9108	Fokker F-27 Friendship 500	4914	104085
9112	Curtiss-Wright C-46D-CU	9006	84070
9116	Boeing B-727-64	12558	94040
9120	Douglas DC-2-112	5688	80430
9124	Douglas DC-3	1092	84580
9128	de Havilland Canada DHC-6 Twin Otter 200	4698	91935
9132	Boeing 221	13908	79755
15204	Gates Learjet 24B	3540	102795
9136	Ilyushin IL-76MD	7266	100280
9140	Boeing 727-286	14052	100075
9144	Britten-Norman BN-2A Islander	960	99730
9148	Vickers Viscount 832	8154	88330
9152	Hawker Siddeley HS-748-501 Super 2B	12030	101260
9156	McDonnell Douglas DC-9-32	5580	93805
9160	Fokker F-27 Friendship 500	1080	93525
9164	Fairchild C-82	756	92740
9168	Boeing B-707-131B / L1049C Constellation	12894	88060
9172	De Havilland DH-4	12642	78220
9176	Curtiss C-46	5832	86235
9184	de Havilland Canada DHC-6 Twin Otter 300	918	94820
9188	Martin 404	3576	88390
9192	Boeing 737-8F2	4668	104225
9196	Antonov AN-28	13302	102540
9200	Douglas C-47B	4950	85405
9204	Antonov AN-32	8976	100740
9208	Liore-et-Olivier 213	9264	79595
9212	Learjet 35A	6798	101815
9216	Vickers 639 Viking 1	6510	83605
9220	Ilyushin IL-76	6318	101930
9224	Junkers JU-52/3m	10782	80495
9228	Cessna 208B Caravan I	7314	102490
9232	Piper PA-18	9312	91825
9236	Douglas DC-3	8736	88875
9240	Convair CV-240-0	3486	84895
9244	Antonov AN-26	4776	101770
9252	Convair CV-990-30A-5	8220	89785
9256	Douglas DC-3	3258	90270
9264	Cessna 525 Citation	3882	101355
9268	LTVF-8J	11640	89765
9272	Consolidated B24H	13488	81350
9276	Tupolev TU-154M / Boeing B-757-23APF	360	102310
9280	Douglas C-47A	13764	85525
9284	Douglas C-47	7374	94185
9288	Boeing B-727-224	7872	92145
9292	Let 410UVP	2106	101350
9296	Beech E18S	180	97240
9300	Vickers 615 Viking 1B	7920	85275
9304	Curtiss C-46	13218	84160
9308	Vickers 828 Viscount	10992	87025
9312	Boeing B-727-231	12294	91880
9316	Douglas DC-7C	2748	86210
9320	Boeing B-737-204C	6780	101240
9324	Douglas C-47 Skytrain	12396	85325
9328	Antonov AN-12B	8304	103505
9332	Savoia-Marchetti SM73	12732	80155
9336	Lockheed C-130H Hercules	13788	100580
9340	Douglas DC-3	7974	83720
9344	Douglas DC-4	882	84955
9348	British Aerospace BAe-125-700A	198	103370
9352	Messerschmitt M-20B	3210	79080
9356	Embraer 120-RT Brasilia	4080	99755
9360	Curtiss C-46E	7194	82685
9364	Transportes AÃ©reos Orientales	7620	87970
9368	Antonov AN-24B	462	103250
9372	Boeing 727-243F	2076	101175
9380	McDonnell Douglas DC-8 Super 61	13062	98100
9384	Douglas DC-3	14562	83610
9388	Cessna 500 Citation I	6300	95505
9392	Boeing RC-135E	9006	89565
9396	Douglas C-47	6720	86355
9404	De Havilland DH-4	12642	78350
9416	Beechcraft SKA 200	6888	101695
9420	de Havilland Canada DHC-6 Twin Otter 100	6360	92600
9424	Boeing B-727-22	882	88040
9428	Boeing B-767-200ER	384	102230
9432	Douglas DC-3	9144	83650
9436	Douglas R5D-3	8928	83365
9440	de Havilland Canada DHC-6 Twin Otter 100	11292	89850
9444	Douglas DC-3	3360	87510
9448	Fairchild F-27A	2520	86440
9452	Douglas C54A	8574	84950
9456	Cessna 185	13272	93660
9460	Boeing KC-135A	9006	86975
9464	Fiat G.212CP	7002	82715
9472	Piper PA-31-350	13698	101340
9476	Rutan Long EZ (experimental aircraft)	8646	100585
9480	Cessna 182B	8676	91100
9484	Boeing B-707-321B	1302	91470
9488	Piper PA-31-350	4446	95635
9492	Beechcraft C-45H	4008	87690
9496	Bristol 170 Freighter	11700	85380
9500	Boeing 707-336C	7098	100720
9504	Douglas DC-3	10656	84920
9508	Avro 685 York I	6462	82365
9512	Ilyushin II-76TD	14700	102910
9516	Fokker F-28 Fellowship 1000	5910	99415
9524	Gates Learjet 25D	2508	100000
9528	Avro 685 York	10026	82360
9532	Aerostar 601	4038	95795
9536	Ilyushin Il-14	3630	94415
9544	Boeing 707-321C	1272	98400
9548	Douglas DC-3	14562	83985
9552	Airbus A320-232	6180	104170
9556	Cessna 560 Citation V	12042	103155
9560	Douglas DC-3	10050	85610
9564	Boeing B-737-3Q8	6294	102805
9568	Curtiss C-46F	9348	89475
9572	Cessna 208B Super Cargomaster	318	100375
9576	Douglas C-47-DL	2814	88630
9580	Breguet 14	5682	78190
9584	Boeing B-727-264	12006	96035
9588	Tupolev TU-104B	3630	93600
9592	de Havilland Canada DHC-6 Twin Otter 300	6474	100550
9596	Antonov AN-24 / Yakovlev Yak-40	7296	92585
9600	de Havilland Canada DHC-6 Twin Otter 200	11616	95250
9604	Douglas C-47 Dakota	4542	81755
9608	Douglas DC-3	11982	86245
9612	de Havilland DH-114 Heron 2D	9360	89450
9616	Boeing 707-324C	14688	93795
9620	Cessna 210	13458	100525
9624	de Havilland Canada DHC-6 Twin Otter 200	5268	100185
9628	McDonnell Douglas DC-8-71F	5178	101470
9632	Cessna 208B Grand Caravan	4902	103450
9636	Boeing B-707-31	1218	92635
9640	SNCASE Languedoc	9264	83890
9644	Lockheed Vega 5B	7554	80300
9648	Yakovlev YAK-40	3630	93385
9652	Douglas DC-3	1632	80665
9656	Ilyushin 76MD	3510	100790
9660	Learjet 31	11784	100490
9664	Embraer C-95 Bandeirante	2598	92850
9668	Avro 683 Lancaster	9060	81395
9672	Swearingen SA.226TC Metro II	7860	103400
9676	Lockheed Hercules MC-130H	9006	103195
9680	Boeing B-727-200 / DC9-32	8772	95235
9684	Douglas DC-3	8592	86845
9688	Ilyushin IL-76T	13878	100155
9692	Bell 206-L4 Jet Ranger III	9996	104180
9696	Vickers Viscount 755D	10476	85810
9700	Cessna 402B	4140	97955
9704	Douglas DC-8-54F	9276	88640
9708	Short S-23 (flying boat)	10026	80850
9712	Handley Page W-8	1146	79095
9716	Cessna TU206G	3744	103480
9720	Bell 412	8472	97185
9728	Douglas DC-3	8574	82955
9732	Piper PA-31-350 Chieftain	6534	95130
9736	Douglas DC-3	10818	83880
9740	Boeing 377 Stratocruiser 10-34	882	83715
9744	Boeing B-747-230B	12612	95150
9748	Douglas DC-3	14634	84460
9752	Fairchild FC-2W	8418	79445
9756	de Havilland Canada DHC-6 Twin Otter 300	12504	101095
9760	Fokker F-27 Friendship 200	12090	89815
9764	Boeing 737-230	8382	103290
9768	Douglas C-47A	6336	84725
9772	Ilyushin IL-18B	9822	88400
9776	Waco, model YLC	11814	79800
9780	Short S23 â€˜Câ€™ Class flying boat	12264	80830
9784	Ilyushin P-14	14520	85400
9796	Douglas C-47A-25	11982	89280
9800	Curtiss C-46A	4326	87765
9804	Curtiss C-46A	11742	88235
9808	Convair CV-990-30A-5 Coronado	8220	91010
9812	Boeing B-727-281 / Air Force F86F	4224	90395
9820	de Havilland Canada DHC-6 Twin Otter 300	10434	101120
9824	Convair CV-340/440	13722	87010
9828	Boeing B-737-497	11964	103655
9832	McDonnell DC-9-32	648	103345
9836	de Havilland Canada DHC-6 Twin Otter 200	13578	98435
9840	Boeing B-737-247 / Boeing B-757-21B	13560	97820
9844	Ilyushin IL-14	10680	88280
9848	Douglas DC-3	6720	85820
9852	Heinkel 116	3210	80325
9860	Fairchild F-27	3912	88535
9864	Junkers F-13	11754	78605
9868	McDonnell Douglas MD-82	7872	99125
9872	Curtiss C-46	3174	86260
9876	Curtiss C-46A	4410	95335
9880	Lockheed C-130B Hercules	9006	89075
9884	Caudron C-61	4842	78480
9888	Mitsubishi MU-2L Marquise	11514	96765
9892	General 102-E	13122	79780
9896	Douglas C-124C Globemaster	9006	85750
9900	Cessna 210	14322	94610
9904	Douglas C-47A	11394	84600
9908	Piper PA-32	2400	94545
9912	Douglas DC-4	8574	89800
9916	Douglas DC-3	10398	83050
9920	Douglas DC-8-51	9720	88285
9924	Bell 206B	9210	102675
9928	Convair CV-580	13722	89340
9932	Douglas DC-4	10446	86010
9936	Tupolev TU-154M	8088	99085
9940	Douglas C-124C Globemaster	9006	86255
9944	Lockheed 14 Electra	12774	80450
9948	Antonov AN-24V	3630	89910
9952	Cessna 185	3234	87520
9956	Piper PA-23	11172	90565
9960	Airbus A-310-204	8736	101000
9964	Yakovlev YAK-40	3630	91670
9968	Douglas DC-3	10992	85715
9972	Douglas C-47A-DL	9006	84525
9976	Boeing B-737-2T4	8982	102565
9980	McDonnell Douglas DC-9-31 / F4-B	8328	90345
9984	Avro Lancaster	4542	81995
9988	Boeing B-747-300	12612	100505
9992	Douglas C-47A	13842	82895
9996	Dornier DO-228-212	3204	100515
10000	Curtiss C-46F-1-CU	1938	86430
10004	Lockheed C-130E Hercules	9006	96825
10008	Arava 201	2028	94830
10012	Antonov AN-24	10566	92325
10016	Douglas C-124A-DL	9006	86470
10020	Douglas DC-3	14562	83710
10024	Embraer EMB-110 Bandeirante	4098	103100
10028	Shorts SC-7 Skyvan 3M Variant 100	7824	102765
10032	Lockheed 749 Constellation	5508	83405
10036	Boeing B-707-331	12294	87590
10040	Tupolev TU-154B-1	3630	98045
10048	Douglas DC-3C	210	103035
10052	de Havilland DH-89A Dragon Rapide	13410	82830
10056	Vickers Viscount 812	12222	94175
10060	Beechcraft H50	14754	88265
10064	Lockheed C-130H Hercules	4962	94410
10068	de Havilland Canada DHC-4T Caribou	14190	98585
10072	de Havilland Comet 4	1092	86695
10076	British Aerospace 3101 Jetstream 31	9696	97515
10080	Curtiss C-46D	13434	89150
10084	Boeing KC-135A	9006	97405
10088	Swearingen SA-226TC Metroliner II	7740	100780
10092	Lockheed L-382B Hercules	7248	98065
10096	Douglas DC-6-54B	10446	88100
10100	de Havilland Canada DHC-2 Beaver	2160	103795
10104	PA- 31-350 Chieftain	6996	102300
10108	Antonov AN-24B	11454	97990
10112	Cessna 560 Citation V	14328	102115
10116	Douglas DC-3	1152	82880
10124	Beech A36	4980	102575
10128	de Havilland Canada DHC-6 Twin Otter	12624	90730
10136	Hawker Siddeley HS-748	9258	93765
10140	Learjet 35A	14142	101530
10144	Swearingen SA.227AC Metro III	5652	99800
10148	Stinson Model A	8406	79795
10152	Avro 685 York I	11232	82980
10156	Douglas DC-6	1092	86590
10160	Fokker F-III	8760	78855
10164	Tupolev TU-124	3630	89830
10168	AÃ©rospatiale/Aeritalia ATR-72-202	13704	102480
10172	Convair CV-440	10128	95730
10176	Lockheed C-141A	9006	94230
10180	Piper PA-28-180	14292	94010
10184	Dornier Do-228-212	13980	98020
10188	Fokker F-27 Friendship 200	2862	90040
10192	Vickers Viscount 745D / T-33A	5238	85655
10196	Bell 204B helicopter	9480	88350
10200	Fokker F-VIIB	10962	79175
10204	de Havilland DHC-2 Mk 1 Beaver	14262	102025
10208	Antonov AN-12	9294	102895
10212	Swearingen SA.227AC Metro III	2886	96700
10216	Cessna 402C	10794	95480
10220	Douglas C-54 Skymaster	1152	82905
10224	Dornier 228-201	3204	98800
10228	Cessna 205	11520	88625
10232	Boeing 377 Stratocruiser	1302	84015
10668	Vickers Viking	8076	78280
10236	Douglas C-47A-25-DK	5694	87625
10240	Curtiss C-46	8166	86005
10244	Douglas DC-3	3828	82175
10248	Cessna 208B Grand Caravan	9090	102705
10252	Cessna Citation 500	5034	102835
10256	Sikorsky S-76	13356	101645
10260	Douglas C-47A	10446	84810
10264	Dassault Falcon 900B	618	101265
10268	Lockheed C-130H	12396	99070
10272	Boeing B-707-320F	8682	97880
10276	Antonov AN-26	9402	95850
10280	Cessna 402	11058	97490
10284	Douglas DC-3	12684	88735
10288	Britten Norman BN-2A Trislander	6672	100655
10292	Aerospatiale ATR-42-512	13800	100500
10296	Beechcraft 18H	8646	88850
10300	Gulfstream AC-680F	1668	95660
10304	de Havilland Canada DHC-6 Twin Otter 300	2952	98105
10308	Douglas DC-3	1086	93555
10312	Avro 688 Super Trader	10284	85965
10316	Avro Anson	14658	82935
10320	Douglas DC-3 ( C-47-DO)	10446	81985
10324	Antonov 12	14502	101010
10328	Hawker Siddeley HS-748-246	12282	92320
10332	Douglas C-47A	2202	88015
10336	Douglas DC-3 (C-47DL) /Vultee BT-13	8406	82285
10340	Boeing 40	3870	79110
10344	Embraer 110P2 Bandeirante	12288	96320
10348	Short SC7- Skyvan	3066	95955
10352	Breguet 14	5550	78440
10356	Antonov AN-12BP	13572	103815
10360	Harbin Yunshuji Y-12 II	10554	100775
10364	Douglas DC-6B	4050	89770
10368	de Havilland Canada DHC-6 Twin Otter 300	6480	96095
10372	Antonov AN-2TP	6552	102740
10376	De Havilland DH-4	12642	78405
10380	Sikorsky CH-53D	2016	95345
10384	Douglas DC-6	2652	96055
10388	Vickers Viscount 745D	11052	85985
10392	Short Sunderland (flying boat)	9450	80925
10396	Grumman G-21A seaplane	1320	92370
10400	Avro 685 York 1	4542	82020
10404	Douglas C-47A	7212	83625
10408	Douglas DC-3	5688	82790
10412	de Havilland Can. DHC-6 -300/ Bell 206B	1872	96105
10416	Antonov AN-26	3750	99080
10420	Yakovlev YAK-40	1980	101480
10424	Lockheed 1049C Super Constellation	6840	85425
10428	Douglas C-47B	498	95540
10432	De Havilland DH-60	7542	79415
10436	Learjet 55	3294	101515
10440	Grummand EA-6B	2016	100685
10444	Helicopter, Hughes 369HS	8646	98935
10448	Yakovlev YAK-40	10476	97835
10452	Ilyushin IL-62	14520	94000
10456	Embraer 110EJ Band./Embraer 110P Band.	12258	95365
10460	De Havilland DH-4	12642	78300
10464	Douglas DC-4	4050	92015
10468	Beechcraft 95-B55	1716	91835
10472	Douglas C-47A-30-DK Dakota III	5508	83725
10476	Latecoere 25	5682	79015
10480	Lockheed C-69 Constellation	1146	86685
10484	Ilyushin 76TD	3840	103145
10488	Douglas C-47	9264	85025
10492	Cessna 208B Cargomaster I	3114	102425
10496	Antonov AN-32B	4470	99410
10500	Douglas DC-3 (C-47A-70-DL)	10008	94655
10504	Boeing B-52 / Boeing B-52	7404	85760
10508	CASA 212 Aviocar 200	6048	97530
10516	Boeing 247	882	79510
10520	Lockheed C-130A	9876	97505
10524	Douglas DC-3	12402	84800
10528	Wibault 283-T12	9264	80230
10532	Lockheed C-130H Hercules	9006	100145
10536	Bellanca 17-30	8970	92310
10540	Beechcraft 65-B80	13398	90625
10544	Douglas DC-2-120	3486	79880
10548	Lockheed Hudson	9450	80900
10552	Piper PA-32-301	10428	99300
10560	CASA 212 Aviocar 200	7290	96400
10564	Douglas C-47B	13968	90710
10568	Junkers JU-5/-3m	9264	84245
10572	Learjet 60	1476	102420
10576	Tupolev TU-104B	3630	92675
10580	Sud Aviation Caravelle 10R	14790	88800
10584	Cessna 208B Caravan I	13068	100565
10588	Douglas C-47A-DL	13488	81365
10592	de Havilland Canada DHC-6 Twin Otter 300	12282	95550
10596	Bristol 170 Freighter 31E	480	88665
11204	Rockwell 500S Shrike Commander	\N	103670
11168	Douglas DC-3D	9264	82530
10600	Learjet 23A	12846	95385
10604	Piper PA-23	14742	89265
10608	Heinkel He-70	3210	80140
10612	Douglas C-47A	6354	82115
10616	Antonov AN-8	13098	99400
10624	Curtiss C-46A	5310	84605
10628	Hawker Siddeley HS-748 1	1092	89835
10632	Douglas DC-4-1009	11394	82670
10636	Douglas C-53D-DO	3438	94460
10640	Beech BE-55	4896	101830
10644	Antonov AN-26	3630	93920
10648	Cessna 185	13188	102590
10652	Convair CV-580	2784	102960
10660	Bombardier DHC-8-402 Q400	11568	104210
10664	Yakovlev YAK-40	1440	93975
10672	Cessna 404 Titan	14766	95115
10676	V6 (airship)	6978	80260
10680	Boeing B-707-328C	9264	88965
10684	Fokker F-VII	13656	78575
10688	Boeing 40	5304	79340
10692	Boeing B-727-230	9264	100750
10700	Hawker Siddeley  Avro 748-215	10362	97065
10704	Cessna 207 Skywagon	3636	100965
10708	Dornier 328-110	13848	100830
10712	Douglas C-54A-DC	12840	86425
10716	Antonov 2PF	10644	93530
10720	Cessna 206	7380	87700
10728	Fokker F-27 Friendship 600	6288	100675
10732	Shorts SC-7 Skyvan 3-100	10164	98780
10736	Cessna 177B Cardinal	3078	100910
10740	Cessna 401A	12300	91425
10744	Lockheed 049 Constellation	14556	87470
10748	Boeing 737-2D6C	7446	99505
10752	de Havilland Comet 4C	8592	90210
10756	Boeing B-727-64	12006	89705
10760	Beechcraft 99	11598	95835
10764	Martin 202	12840	82780
10768	Boeing B-737-566	11166	102260
10772	Lockheed C-130B Hercules	6648	100895
10776	Cessna 208B Caravan I Super Cargomaster	10518	98255
10780	Yakovlev YAK-40 / Mil Mi-8	6444	94495
10784	Tupolev TU-104B	3630	91315
10788	Boeing KC-135E	2022	101035
10792	Douglas DC-3	2574	90365
10796	Douglas C-47	2916	82855
10800	Cessna 402C	6384	99485
10804	Boeing 40	5304	79125
10808	Douglas DC-3	14184	88840
10812	Piper PA-32	7662	98135
10820	Vickers Valetta C-Mk.1	4542	85360
10828	Fokker FG III	3210	78505
10832	de Havilland Canada DHC-6 Twin Otter 100	8118	104020
10836	Bell 206L	708	102050
10840	McDonnell Douglas DC-9-14	11190	99530
10844	Douglas DC-6B	4854	102630
10848	Douglas C-47A	13488	81225
10852	Lockheed C-141A	9006	91345
10856	Cessna 208B Caravan I Super Cargomaster	1530	99545
10860	McDonnell Douglas DC-10-30	12486	93905
10864	Douglas DC-3	42	92755
10868	CASA 212 Aviocar 200	12786	96875
10872	Beech Super King Air 200	132	95010
10876	BAe 3101 Jetstream 31	13590	103060
10880	Curtiss C-46D-10-CU	5310	83045
10884	Antonov AN-12BP	10806	88940
10888	Boeing B-737-2P6	2232	95165
10892	Hughes 369HS	3018	92355
10896	Latecoere 631	6330	84930
10900	de Havilland Canada CV-2B Caribou	9732	88345
10904	McDonnell Douglas DC-8-21	9720	86500
10916	Douglas C-47-DL	10446	91720
10920	Beechcraft E18S	14028	90755
10924	Embraer 110 Bandeirante	2430	101270
10928	Boeing B-737-300	10302	100635
10932	McDonnell Douglas DC-10-30	6828	95320
10936	Douglas DC-3-201C /  Army A-26	1170	81570
10940	Britten Norman BN-2A Trislander	4374	99465
10944	Embraer 110C Bandeirante	13254	92330
10948	Douglas DC-3	6246	83735
10952	Lockheed C-130H	11886	100110
10956	Martin 202	13722	86120
10960	Lockheed Vega 5	6792	79055
10964	Piper PA-28	7380	87600
10968	Douglas C-47	10050	87225
10972	Cessna 206	4878	104155
10976	Bell 212	3408	93220
10980	Antonov AN-12	3630	93770
10984	Grumman C-2A	8928	89720
10988	Douglas DC-3C (C47A-DL)	12060	101795
10992	Latecoere 26	9264	79630
11452	Ford Tri-motor	\N	\N
10996	Short S-26 (flying boat)	10026	80975
11000	Douglas DC-3C (C-47A-DK)	13332	101090
11004	Lockheed C-130H Hercules	9006	94500
11008	Bell 47J-2A	1194	88855
11012	Ilyushin IL-18B	13746	90545
11016	McDonnell Douglas MD-11	14688	101225
11020	Antonov AN-12	10476	88480
11024	DHC-6 Twin Otter 300 / NAMC YS-11	8688	99060
11028	Convair CV-580	14574	97285
11032	Embraer 110P1 Bandeirante	10794	95560
11036	Canadair CL-44D4-2	4254	92935
11040	Fokker F-27 Friendship 400M	7920	101895
11044	Lockheed C-141B / Lockheed C141B	396	98725
11048	Convair CV-580	2154	97340
11052	Fokker F-27 Friendship 200	12990	100450
11056	Fokker F-28 Fellowship 3000RC	11964	95060
11064	Cessna 172M	306	92395
11068	Piper PA-32	10206	100475
11072	Douglas C-47B	8490	81645
11076	Fairchild F-27B	4356	89320
11080	de Havilland DHC-6 Twin Otter 300	2568	103160
11084	Douglas C-47A-90-DL	9006	81470
11088	Piper PA-31-350 Navajo Chieftain	10002	102945
11092	Boeing B-747-200	2562	99480
11096	Curtiss C-46A-50-CU	9168	86000
11100	Vickers Viscount 827 / Fokker AT-6	14562	86145
11104	Lockheed 188PF Electra	4650	91840
11112	De Havilland DH-4	12642	78145
11116	Cessna 500 Citation I	8544	103170
11120	de Havilland DHC-2	7164	99340
11124	Avro Shackleton AEW-2	9450	97675
11128	Ilyushin IL-62	3630	90950
11132	Douglas DC-3 (C-47B-DK)	7770	82570
11136	Tupolev TU-134A	12726	96220
11140	Embraer 110P Bandeirante	14400	93135
11144	Boeing B-737-2P5	8736	96510
11148	Piper PA-31-350 Navajo Chieftain	7176	101280
11152	Sikorsky S-38BB	990	79585
11156	Lockheed 749C-79-12 Constellation	3828	85005
11160	Armstrong Whitworth Argosy II	1146	79455
11164	Lockheed C-130H	9006	94005
11172	Embraer 110 Bandeirante	12252	99230
11176	Lockheed C-130E Hercules	9006	91020
11180	Fokker F-27 Friendship 100	2562	89955
11184	Cessna 402B	13974	101965
11188	Canadair C-4 Argonaut	10026	85130
11192	de Havilland DH106 Comet 1	10026	84270
11196	de Havilland DH-9C	12264	78535
11200	Beechcraft U206C	7956	90830
11208	Lockheed Hercules C.1	9450	103135
11212	Cessna 441 Conquest II	2394	97795
11216	Tupolev Tu-154M	6522	103550
11220	Boeing B-727-2F2	3198	92595
11224	Boeing B-727-193	828	90435
11228	Douglas C-47	8154	85010
11232	Farman F-63	5052	79030
11236	Antonov An-12	7158	104160
11240	Douglas DC-3	6276	86040
11244	Swearingen SA.226TC Metro I	8694	102040
11248	Lockheed 10 Electra	12924	80080
11256	Douglas DC-3	3264	90000
11260	Let 410UVP	4554	102500
11264	Piper PA-31-350 Navajo Chieftain	7314	100205
11268	Canadair CP-107 MK-2	8808	87820
11276	Antonov AN-12B	2064	100235
11280	McDonnell Douglas DC-9-15	6336	98840
11284	Douglas DC-118	8928	91460
11288	Sikorsky S43 (flying boat)	1302	80580
11292	Canadair CL-44	5436	92000
11296	Beechcraft D35	11436	88140
11300	LET 410UVP	9798	102270
11304	Ford 5	11004	79405
11308	Douglas DC-3	882	83595
11312	Douglas DC-3	9648	89440
11316	Lockheed 188A Electra	3372	90550
11320	Cessna 208B Caravan I	13182	100275
11324	PZL-MieleAN-2R	8484	102905
11328	Douglas DC-3-DST	4050	90100
11332	Cessna 441 Conquest	11196	97005
11336	Cams 53	5682	78860
11340	Embraer EMB-110 Bandeirante	13080	98820
11344	Learjet 35A	8220	94155
11348	Douglas DC-3C	9882	100930
11352	Cessna 401	5562	94435
11356	Cessna 310C	8646	90960
11360	Handley Page W-10	1146	78510
11852	Douglas C-47A	810	95455
11364	Fokker F-27 Friendship 200	918	96460
11368	Piper PA-23	7380	87495
11372	Fokker 100	10320	100220
11376	Lockheed EC-121P	8928	89890
11380	CASA 212-A3 Aviocar 100	14736	95260
11388	Britten-Norman BN-2A-20 Islander	12288	95475
11392	Aerospatiale AS-350BA	9354	103310
11396	Lockheed WV-2	8928	85585
11404	Beechcraft S35	6468	90600
11408	Douglas C-54B-15-DO	3828	82320
11412	Beechcraft B99	3126	90500
11416	Boeing B-747	1302	91570
11420	de Havilland Canada DHC-6 Twin Otter 100	13794	91165
11428	Avro 685 York C-1	14808	84340
11432	Rockwell Sabreliner 65	4686	101540
11436	de Havilland DHC-2	2310	91850
11440	Bell 412 (helicopter)	9642	99865
11444	Beechcraft 99	10950	89570
11448	Piper PA-34	1494	92520
11456	Fokker F-28 Fellowship 1000	3198	93940
11460	Convair CV-580	9576	95760
11464	de Havilland Canada DHC-6 Twin Otter 200	4398	92905
11472	Douglas C-118A	930	98625
11476	Fairchild F-27	7170	97685
11480	de Havilland DH-104	1920	89255
11484	Fairchild SA227-TT	8646	98830
11488	Douglas C-54D-DC (DC-4)	13488	81870
11492	Stearman 4	7836	79435
11496	Grumman Gulfstream G3	7308	103015
11500	Lockheed 14-WF62 Super Electra	6840	80475
11504	Ilyushin IL-18B	3630	90205
11508	B17G Flying Fortress	9006	81505
11512	Ford model 4-AT-E	8868	79745
11516	Cessna 208B Grand Caravan	13674	104270
11520	Fokker F-27 Friendship 200	12396	93350
11524	Bristol 170 Freighter	6648	84030
11528	Douglas DC-6B	882	83705
11532	Antonov 12MGA	7266	101905
11536	Douglas C188-B	8928	85180
11540	McDonnell Douglas DC-8-53	6840	86555
11544	Boeing 247-D	882	80090
11548	Fairchild FH-227H	12126	93970
11552	Douglas DC-3	14850	82350
11556	\N	12780	103440
11560	Britten-Norman BN-2A-26 Trislander	9744	96585
11564	De Havilland DH-4	12642	78235
11568	Curtiss C-46F	1878	89540
11572	Consolidated LB-30A Liberator	4542	80760
11576	Fairchild C-123C	9006	88075
11580	Douglas DC-3	6870	83135
11584	Douglas C-47B-DK	5136	98280
11588	Bell 205 A-1 helicopter	9480	92435
11592	Convair CV-240-0	3486	84815
11596	Boeing 377 Stratocruiser 10-26	1302	85675
11600	de Havilland Canada DHC-4A	3582	101125
11604	Boeing B-727	12294	96040
11608	Douglas C-47A	13488	81230
11612	Boeing B-737-2C3	5310	100365
11616	Douglas DC-6	11394	84785
11620	Learjet C-21A	9006	99610
11624	Britten-Norman BN-2A Trislander	12324	94270
11628	Douglas C-53D-DO	13488	81100
11632	Yakovlev YAK-42D	10476	101400
11636	McDonnell Douglas DC-8-33	3672	86940
11640	Shorts SC-7 Skyvan	6930	99760
11644	British Aerospace Jetstream 3201	7290	99490
11648	de Havilland DH-84 Dragon	2046	80535
11652	Let 410A	14328	102105
11656	Learjet 24F	5796	103625
11660	Convair CV-440	6720	91480
11664	Lockheed L-100-20 Hercules	7764	94385
11668	Convair CV-580	1698	89360
11672	Antonov AN-26V	3156	103770
11676	Cessna  208B Grand Caravan	12	101885
11680	Piper PA-23-250	9792	98430
11692	Fokker F-27 Friendship 100	2562	89990
11696	McDonnell Douglas DC-8-12	882	86580
11700	Douglas DC-3	2112	83385
11704	Piper PA-28-181	2838	96215
11708	Antonov 28	6456	101950
11712	Lisunov Li-2	6564	82475
11716	Silver City Airways	102	86675
11720	Ford 5-AT-C Tri-Motor	11376	79605
11724	Curtiss C-46F	234	87120
11728	Sud Aviation SE-210 Caravelle	10050	88320
11732	Antonov AN-10	3630	86110
11736	de Havilland Canada DHC-5 Buffalo	9618	91710
11740	Bell 212	10224	94985
11744	McDonnell Douglas DC-8-63CF	11052	90155
11748	Antonov An-12PL	3630	89655
11752	Gates Learjet 25B	5874	94850
11756	Douglas C-53	13488	81105
11760	McDonnell Douglas DC-9-31	5556	101710
11764	Douglas C-54D	9006	83245
11768	Fokker F-28 Fellowship 3000	13794	98920
11772	Avro Anson	7674	81945
11776	de Havilland DH-114 Heron 2D	11700	85640
11780	McDonnell Douglas DC-8-63F	60	100310
11784	Tupolev TU-144	3630	91265
11788	Lockheed 14 Super Electra	10326	80625
11792	Casa 212-M Aviocar 100	1518	96210
11796	Ilyushin IL-18E	3630	91640
11800	Piaggio PD-808	10530	89105
11804	Boeing B-17G	13488	81690
11812	Piper PA-34	9918	94095
11820	Lockheed 188A Electra	4812	92490
11824	de Havilland Canada DHC-6 Twin Otter 300	9816	99975
11828	Beechcraft 1900C	13788	97765
11832	Antonov 12BP	8562	102185
11836	Boeing B-707-366C	11166	92695
11840	Fairchild C-123 Provider	9006	85780
11844	Swear. SA-227CC Metro 23/Piper Navajo	10626	99630
11856	Antonov AN-24RV	10554	99805
11860	Douglas C-47	2916	83545
11864	Vultee V-1	3486	79895
11868	Britten-Norman BN-2A-9 Islander	7824	101535
11872	Lockheed C-130 Hercules	12390	103485
11876	Beechcraft 1900C-1	5400	101545
11880	Cessna 208	11952	95920
11884	Cessna 421C Golden Eagle	5646	99770
11888	ATR-72-212	7290	99440
11892	Lockheed C-130A	9006	95620
11896	Piper PA-31-350 Navajo	10710	96655
11900	PZL-MieleM28	12966	103095
11904	BAC Super VC-10 1154	6264	90680
11908	Piper PA-31-350 Navajo	6534	98295
11912	Lockheed Vega	5304	80010
11916	Sikorsky S-76B helicopter	4836	101920
11920	Douglas DC-7 / Lockheed S Constellation	7656	85135
11928	Lockheed C-130E Hercules	9006	89365
11932	Beechcraft E18S	10998	88890
11936	de Havilland 106A	6372	87915
11940	Boeing 247-D	882	79500
11944	De Havilland DH.4	12642	81405
11948	Beech Baron	1020	101580
11952	de Havilland DHC-6	4356	89370
11960	Fairchild-Hiller FH-227B	3576	89180
11964	Fairchild R4Q / Dougas AD-6 skyraider	13338	85595
11968	McDonnell Douglas MD-90-30	8292	101230
11980	Antonov An-24B	3630	91090
11984	Beechcraft E18S	4464	89325
11988	Douglas DC-2-115H	3210	80530
11992	Lockheed 049 Constellation	4068	90740
11996	Cesna 208 Caravan	2034	103085
12000	Boeing B-727-2D3	9828	93590
12004	Vickers Viscount 785D	2748	87500
12008	Douglas DC-3	3246	85015
12012	Lockheed C-130H	11622	92575
12016	Douglas DC-3	10050	84775
12020	Lockheed C-130K Hercules	9450	90505
12024	Cessna 404 Titan	402	96605
12028	Tupolev TU-124	3630	91495
12032	Antonov An-12TB	3630	89740
12036	Cessna 210-5A	2472	88470
12040	Boeing B-757-200	3906	100180
12044	Boeing B-747-283B	10446	95225
12048	Learjet 23	3276	88050
12052	Ilyushin IL-14P	13746	90990
12056	de Havilland Canada DHC-6 Twin Otter 300	7716	100135
12060	Cessna 404 Titan Ambassador	6558	101250
12064	Beechcraft C35	1242	90300
12068	Britten-Norman 2B-21 Islander	13104	97735
12072	Convair CV-380	1188	88515
12076	Ford 5-AT-C Tri Motor	84	79060
12080	Cessna 404 Titan II	8286	101245
12084	Beechcraft H18	14334	97200
12088	Boeing 707-373C	732	95245
12092	Douglas DC-4	9456	84185
12096	de Havilland Canada DHC-6 Twin Otter 300	996	95630
12100	Antonov AN-12	13092	95295
12104	de Havilland Canada DHC-6 Twin Otter 300	11088	96420
12108	Douglas DC-3	10320	84705
12112	Canadair CL-44J	12174	90170
12116	Cessna 421C Golden Eagle	14238	100230
12120	Yakovlev YAK-40	3630	98245
12128	Lockheed L-1011-200	2700	94160
12132	Convair RB-36H	9006	84220
12136	Hawker Siddeley HS-748-230 Srs. 2A	7710	90555
12140	Savoia-Marchetti SM83	10572	80620
12144	Avro Lancaster	4542	81525
12148	Douglas DC-4	6666	86900
12152	Vickers Viscount 759D	13404	87200
12156	Bell 206B	558	98270
12160	Douglas DC-3(C-47A-DL)	3138	97070
12164	Douglas DC-3	3210	81200
12168	Piper PA-31	4404	93830
12172	Royal Airship Works R-101	11892	79075
12176	Cessna 501 Citation I/SP	8766	101870
12180	de Havilland Canada DHC-6 Twin Otter 300	4536	98380
12184	Cessna 207A	2298	97725
12188	Piper PA-31-350 Navajo	5106	97325
12192	de Havilland DHC-3 Otter	6846	102785
12196	Bleriot 155	5052	78495
12200	Douglas DC-3	1086	87965
12204	de havilland Canada Twin Otter 200	1098	93320
12212	de Havilland DH106 Comet 1A	10986	84200
12216	Cessna 402	9930	84155
12220	Antonov AN-28	10134	98670
12224	Curtiss C-46F-1-CU	6054	98630
12228	Handley Page Hastings C Mark 1	4542	87895
12232	Antonov AN-12	1368	101060
12236	Tupolev TU-104A	84	89985
12240	Antonov 26B-100	6084	103620
12244	Piper PA-31	1038	93870
12248	Douglas DC-3	5310	87255
12260	Tupolev TU-134A	3630	91280
12264	Embraer 120RT Brasilia	11976	100945
12268	de Hav Can. DHC-6 Tw Otter 100/ Cessna	12744	91945
12272	Ilyushin IL-12B	84	85225
12276	Beech BE-1900D	14340	102510
12280	Boeing B-737-2A8	10050	98145
12284	de Havilland Canada DHC-3 Otter	2562	87545
12288	Bristol 28 Tourer	4086	78255
12292	Douglas DC-3	2562	87160
12296	Shorts SC-7 Skyvan 3-100	4704	100805
12300	Douglas DC-8-54F	882	93085
12304	Cessna 182	630	88985
12308	Piper PA-32	1044	89915
12312	Fokker F-27 Friendship 500F	13794	101860
12316	Curtiss C-46A	11946	84995
12320	McDonnell Douglas DC-9-31	1344	101320
12324	Cessna 402C	9084	98930
12328	Douglas DC-4	9282	85560
12336	Convair CV-240-2	5604	85890
12340	De Havilland Dove	3666	89825
12344	Cessna Citation 525	720	103630
12348	Douglas DC-6A	9738	85295
12352	Vickers 634 Viking	7674	84680
12356	Lockheed L-100 Hercules	1722	91830
12360	Yakovlev YAK-40	3630	90700
12364	Douglas DC-3	7080	84180
12368	Douglas C-47A	11658	83435
12372	Aerospatiale Alenia ATR-42	9024	101325
12376	Bleriot Spad 56	5052	78755
12380	Beechcraft C-90	1740	98960
12384	Cessna 404 Titan II	13068	94120
12388	de Havilland DHC-6	14160	93915
12392	Douglas DC-3	14634	84390
12400	Let 410UVP-E	3156	102215
12404	McDonnell Douglas DC-9-51	3336	103955
12408	Antonov AN-72	3630	98175
12412	de Havilland Canada DHC-6 Twin Otter	822	101405
12416	Boeing 707-123	3486	86520
12420	Douglas DC-3	12402	85350
12424	Martin M-130 (flying boat)	1302	80370
12428	Douglas DC-3	1632	80750
12432	Ilyushin IL-18D	3630	92385
12436	Douglas DC-3-3	11004	80725
12440	Brantly 305	8202	88990
12444	Curtiss C-46A	13860	85920
12448	de Havilland Canada DHC-6 Twin Otter 300	1794	101110
12452	de Havilland Canada DHC-6 Twin Otter 100	11316	88540
12456	Lasco Lascowl	4692	79195
12460	Douglas DC-3	14688	88790
12464	Airbus A300B2-101	10050	101395
12468	Douglas DC-4 / USAF F-4E	4050	89700
12472	Vickers Viscount 720	8154	86705
12476	Douglas DC-3	12402	84065
12484	Boeing B-727-247	8574	97790
12488	Learjet 25B	5796	102710
12492	Consolidated LB-30A Liberator	4542	81710
12496	Curtiss C-46D	9300	95895
12500	Beechcraft B99	11178	95865
12504	de Havilland C-7B / Boeing Vertol CH-47A	4626	89250
12508	Pilatus Britten-Norman BN-2A-21 Islander	9768	103040
12512	Beechcraft 1900C	12384	103970
12516	Douglas C-54	11856	83520
12520	Fokker 50	1560	99795
12524	Lockheed P-3B Orion	8928	88930
12528	Lockheed L-1049H Super Constellation	12294	86115
12532	Bell 74G	7380	87100
12536	de Havilland Canada DHC-3 Otter	4500	100045
12540	Douglas DC-6	3486	82455
12544	Shaanxi Yunshuji Y-8/Yunshuji Y-8	14496	101315
12548	Convair 580-11A	10194	94955
12552	Fokker F-27 Friendship 200	10050	88135
12556	Lockheed CC-130E	8808	98235
12560	Vickers Viking 1B	1224	87325
12564	Cessna 210L	12606	93475
12572	Lockheed WV-2	8928	85540
12576	Fokker F-27 Friendship 600	6288	100995
12580	Antonov An-12	9708	103990
12584	de Havilland Canada DHC-6 Twin Otter 300	12900	94670
12588	Beechcraft  C-45H	150	92340
12592	NAMC-YS-11-111	10992	88380
12596	Antonov AN-24B	3630	93400
12600	Douglas DC-7B	3828	87605
12604	De Havilland DH-84	13566	80410
12608	Douglas DC-3	7512	91500
12612	Douglas R4D-6	8928	81450
12616	Douglas C-47	2358	91655
12620	Hawker Siddeley HS-748-2A	10386	97565
12624	Harbin Yunshuji Y-12-II	7032	100090
12628	McDonnell Douglas DC-8-55F	3786	99945
12632	Mitsubishi MU-2B-60	8646	98850
12636	Stinson SM6000B Tri-motor	11772	79760
12640	Curtiss C-46A-CU	9144	85755
12644	Cessna 182	6702	89025
12648	Antonov AN-12BP	5454	103780
12652	Tupolev TU-104A	3630	86955
12656	Curtiss-Wright C-46A-CK	13488	81665
12660	Sikorsky UH-60 / Sikorsky UH-60	2820	99205
12664	Learjet 25B	3294	102065
12668	Douglas DC-3A	5946	87960
12672	Douglas DC-3	12090	89585
12676	Savoia-Marchetti SM-95	2340	82230
12680	Airbus A320-111	13854	98335
12684	Antonov AN-140-100	2328	103355
12688	Lockheed L-18-56 Lodestar	12264	81145
12692	Douglas C-47-DL	13662	83905
12696	Beechcraft C99	3660	103415
12700	McDonnell Douglas DC-9-32	9576	94995
12704	Douglas DC-3	5508	84280
12708	Beech Super King Air 200	12996	98815
12712	Beechcraft 95-55B	13146	88885
12716	Boeing B-737-230	1086	96950
12720	de Havilland DH106 Comet 1	10026	84560
12724	Avro Shackleton MR-2	9450	89035
12728	Grumman G-21A Goose	3228	104165
12732	Antonov AN-26	10476	97630
12736	Curtiss C-46F	8670	85875
12740	BAe Avro RJ-100	3198	102505
12744	Martin 404	1650	90110
12748	Fokker F27 Friendship 100	4122	102450
12752	Cessna 404 Titan	5094	98900
12756	Douglas C-47D	9600	99390
12760	de Havilland DHC -6-100	11292	94665
12764	Douglas C-118A	9006	86515
12768	UC-64A Noorduyn Norseman	13488	81400
12772	Douglas DC-3	7038	83585
12776	de Havilland DHC-2	1452	89505
12780	Lockheed L-749A Constellation	5520	86690
12784	Douglas DC-3	10656	85155
12788	Douglas DC-4	1302	83950
12792	Lockheed Hercules C-130	13152	94195
12796	Cessna U206G	2706	100015
12800	Douglas DC-3	1086	90910
12804	Douglas DC-3	1770	85415
12808	Pilgrim 100B	1302	81190
12812	Lockheed AC-130A Hercules	9006	91055
12816	Douglas C-47A	9678	86980
12820	Boeing 247	12852	79560
12824	Britten-Norman BN-2A Islander	8172	91780
12832	McDonnell Douglas DC-9-31	3828	97825
12836	Convair CV-300	7230	92995
12840	Douglas C-47-DL	14562	87550
12844	Consolidated  32 Liberator II	11112	83875
12848	Boeing 707-323C	2328	99870
12852	Avro Shackleton MR3	13668	87290
12860	Junkers JU-52/3m	10782	80390
12864	Douglas DC-4A	1302	82435
12868	Handley Page Dart Herald 400	10494	98180
12872	Hawker Siddeley HS-748 2	6756	92425
12876	Boeing B-727-232 Adv	8406	96925
12880	Britten Norman BN-7A lslander	3228	93810
12884	Vickers Viscount 708	13854	87295
12888	Convair CV-240	9462	96920
12892	Douglas DC-6B	5022	86650
12896	Pilatus-Britten Norman BN-2A-27 Islander	6972	103005
12900	Douglas DC-3 (C-47-DL)	12402	83130
12904	Swearingen SA.227AC Metro III	1860	102225
12908	Britten Norman BN Islander	2166	93950
12912	Tupolev TU-134A	6306	96935
12916	LET 410 M	3630	95555
12920	Beechcraft B-100	14322	95220
12924	Douglas DC-3	9738	85460
12928	Lockheed C-130E	9006	95325
12932	Beechcraft 99	10662	102965
12936	Tupolev TU-124	3630	91465
12944	Let L410UVP-E20	11592	103425
12952	Bristol Britannia 102	13110	88315
12956	Martin 202	13536	83940
12960	Douglas C-47A-80-DL	10446	88430
12964	Lockheed L-649 Constellation	3828	82580
12968	Hawker Siddeley HS-748-2	8736	94045
12972	BAC One-Eleven 402AP	2562	89685
12976	Douglas C-47-DL	13488	81125
12980	Avro 685 York C-1	13614	85535
12984	Douglas DC-3	8352	87720
12988	Farman F-306	5526	79495
12992	Lockheed L-188AF Electra	90	95380
12996	Consolidated PBY-5A Catalina	10986	84285
13000	Farman F-224	9264	80700
13004	Embraer 120RT Brasilia	3354	98170
13008	Fokker F-27 Friendship 400M	5172	104255
13012	Cessna 500 Citation I	4260	91870
13016	Douglas DC-2	828	84630
13020	Douglas C-54A-1-DO	6462	83090
13024	CASA 212 Aviocar 200	9258	97850
13028	Dornier 228	8082	103565
13032	Cessna A185F	14322	94805
13036	Vickers Viscount 701	5382	85320
13040	Douglas DC-3	14388	84570
13044	Tupolev TU-134B-3	1164	99880
13048	Aerospatiale Caravelle 10R	6636	93080
13052	Junkers Ju-52/3m	9264	81880
13056	Rockwell Gulfstream Jetprop 840	14568	102875
13060	Douglas DC-3-313A	11052	83155
13064	Avro 691 Lancastrian	5370	82760
13068	Antonov AN-2	9234	99430
13072	de Havilland Canada DHC-6 Twin Otter 300	444	96050
13076	Lockheed 18 Lodestar	7122	80745
13080	Hawker Siddeley HS-748	8082	99930
13084	BAe-748	10362	96945
13088	Douglas DC-6A	888	84325
13092	Vickers 614 Viking 1	6510	83870
13096	de Havilland Canada DHC-6 Twin Otter 300	11160	93435
13100	Cessna 402	4314	93410
13104	Douglas C-47A-DK	13488	81255
13108	Piper PA-31	11694	90425
13112	Grumman G-159 Gulfstream I	9654	95765
13116	Evangel 4500	516	93160
13120	Fokker 100	5154	98805
13124	Piper PA-32	5358	88745
13128	Tupolev 154B-2	1968	102980
13132	Boeing B-727-228	9402	100730
13136	Antonov AN-24	10476	100470
13140	de Havilland Canada DHC-6 Twin Otter 300	2790	100330
13144	Douglas C-47A-10-DK	13644	101620
13148	Sikorsky S-62A	9342	94305
13152	Curtiss C-46F	8628	90660
13156	Boeing 777-236ER	9330	103900
13160	Cessna 402C	5262	97975
13164	de Havilland Canada DHC-6 Twin Otter	5880	102570
13168	Aerospatiale Nord 262A-33	14646	93585
13172	VEB 14P	10680	87235
13176	Antonov AN-12V	7560	99110
13180	Boeing B-747	9330	94675
13184	Douglas C-47A-1	5502	86815
13188	Lockheed L-188A Electra	6396	96940
13192	Piper PA-23	8118	87620
13200	Mil Mi-8 (helicopter)	1662	98615
13208	Douglas DC-3	8406	84290
13212	Curtiss C-46D	1218	88270
13216	de Havilland DH-114 Heron 2	12660	86410
13220	Cessna 206	2388	101715
13224	Vickers Viscount 838	9780	92730
13228	BAC One-Eleven 515FB	12708	99375
13232	Douglas C-47A-30-DK	108	84585
13236	Douglas DC-4 (C-54G-1-DO)	12840	82635
13240	Cessna 500 Citation	9204	99960
13244	Antonov An-24RV	10680	94630
13248	Douglas DC-3-455	8190	82680
13252	Boeing KC-135A	9006	92350
13256	Lockheed C-130H	7476	98640
13260	de Havilland Dash-2 float plane	372	100890
13264	Saab Scandia	14562	85850
13268	Yakovlev 40	2328	100415
13272	Convair CV-440	6072	99695
13276	Cessna 310R	12204	94315
13284	Fairchild F-27M	11850	95340
13288	Consolidated B-24 Liberator	3048	80855
13292	Fairchild-Hiller FH227C	9738	89290
13296	Convair CV-580	11184	98190
13300	British Aerospace BAe-146-200A	11136	96610
13304	Fokker F-27 Friendship 500	11166	96090
13308	Piper PA-31-250	10896	102125
13312	Douglas DC-3	6840	80195
13316	de Havilland Canada DHC-6 Twin Otter 300	12570	94990
13320	Beechcraft D50A	10920	89240
13324	Aerospatiale 330J Puma	11646	97870
13328	Vickers Viscount 768D	10050	87330
13332	Douglas DC-3	11394	83850
13336	Dornier 228-201	3096	100825
13340	Junkers JU-52/3m	9264	83830
13344	Let 410UVP-E	2610	101130
13348	Nord 262C-66	14076	97570
13352	Bristol Britannia 175	13008	88595
13356	De Havilland DH-4	12642	78335
13360	Piper Aero Commander 560E	7380	87430
13364	Ilyushin IL-14	3630	87355
13368	Airbus A-310-324	6390	104015
13372	Cessna 182H	336	89160
13376	Kaiser-Fraser C-119G	11886	87250
13380	Beech AT-11	9660	87105
13384	Boeing B-737-236	408	95830
13388	Ilyushin Il-76T	9366	104230
13392	de Havilland DHC-2	5778	93450
13396	Pilatus Britten Norman BN-2A-27 Islander	9126	103685
13400	Lockheed L-188A Electra	14274	95615
13404	Curtiss AT-32C Condor	5976	79830
13408	Britten-Norman BN-2B-27 Islander	9672	98730
13412	Douglas R5D2	2016	85040
13416	Rockwell 1121B Jet Commander	12936	99395
13420	Douglas C-54	5244	95350
13424	Rockwell Sabreliner 60	12114	100795
13428	Bell 212	12414	104120
13432	Tupolev 134A	3630	93610
13436	Douglas DC-3 (C-47-DL)	10740	89855
13440	Douglas DC-6B	2814	92885
13444	Cessna 207A	13224	94575
13448	Cessna 206	8742	98115
13452	Douglas DC-3	8268	84305
13456	Avro Shackleton MR-1	9450	84010
13460	Douglas DC-7B	3828	87055
13464	Boeing B-707-320	11394	86530
13468	Lockheed 18 Lodestar	14004	82265
13472	DC-3-65TP	7614	100865
13476	Cessna T210N	8298	94325
13480	Mil Mi-8 (helicopter)	2028	94920
13484	BAE Avro RJ100	10236	102075
13488	Ilyushin IL-62M	14520	96405
13492	Lockheed P-3A	9468	88915
13496	Vickers 785D Viscount	2748	86140
13504	Grumman Gulfstream II	4290	99635
13508	Douglas C-47DL	2598	86540
13512	Fokker F-27 Friendship 100	14766	92655
13516	ATR-42-300	11286	103920
13520	Convair RB-36H	9006	84665
13528	de Havilland Canada DHC-6 Twin Otter 300	13386	93095
13532	Fokker 27 Friendship 200	10320	97585
13536	Aero Commander 681	8280	94285
13540	Antonov 26B	4524	103285
13544	de Havilland DHC-6-200	11694	93675
13552	Hawker Siddeley Trident 2E /  II-28	10566	95160
13556	Britten-Norman BN-2A-6 Islander	240	90970
13564	BlÃ©riot Spad 66	2646	78810
13568	Learjet 35	3612	99540
13572	Vickers Viking 610-1B	5382	84150
13576	Beechcraft 95-B55	14322	94895
13580	Desoutter II	4152	79130
13588	Avro 685 York 1	2898	82890
13596	Hawker Siddeley HS-748-235 Srs. 2A	5310	92075
13600	Boeing B-707-328	9264	86865
13604	de Havilland DH-114 Heron 2B	7452	96275
13608	Beechcraft C35	7380	87450
13612	Cessna 208B Caravan I Super Cargomaster	13542	99595
13616	Antonov An-24B	12306	91160
13620	Antonov AN-24	3630	88355
13624	McDonnell Douglas DC-9-32	14166	100575
13628	Antonov An-32B	11466	103960
13632	Lockheed C-130E Hercules	9006	94165
13636	Embraer 110C Bandeirante	10602	92855
13640	Douglas DC-3	13650	98600
13644	MD Douglas DC-9-32/Convair CV-990A	594	91180
13648	Swearingen SA.226TC Metro II	10380	101765
13652	Boeing B-707-321B	1302	89335
14128	\N	2646	\N
13660	Britten Norman BN-2A Trislander7	4530	99055
13664	Convair CV-440	1962	98795
13668	Hadley Page 137Jetstream I / Cessna 206	8124	94365
13672	Britten-Norman  BN-2A-20 Trislander	4374	98905
13680	GAF Nomad N-22C	12396	101450
13684	Lockheed 18 Lodestar	4182	81510
13688	Antonov AN-24	9162	98285
13692	Douglas C-47B	7242	82765
13696	Savoia Marchetti S-66	12732	80350
13700	Cessna 421A	4176	96695
13704	Douglas DC-3	6966	91705
13708	Douglas C-54D	5388	87930
13712	Convair CV-240-0	14718	87460
13716	Mitsubishi MC-20	6714	80755
13720	Douglas DC-3	14004	83925
13724	Beechcraft King Air B90	4968	99095
13728	Curtiss C-46A-60-CS	7128	101600
13732	GAF Nomad N-22	10674	99005
13736	Consolidated 32-3 Liberator II	10026	81000
13740	Douglas DC-3	3210	80680
13744	Heinkel He-111	3210	80205
13748	Learjet 25	5796	101960
13752	Lockheed C-130E	2598	99420
13756	Boeing C-135B	9006	87540
13760	Douglas DC-3	11964	83980
13764	de Havilland Canada DHC-8-301	4662	98755
13768	Tupolev TU-104B	3630	91450
13772	Lockheed C-141B	9006	94840
13776	de Havilland Canada DHC-6 Twin Otter 300	10362	93780
13780	Vickers Viscount 745D	14424	94275
13784	Ilyushin IL-18B	3630	86185
13788	Tupolev Tu-104B	3630	86870
13792	Tupolev ANT-20 / I-5	11082	79750
13800	Fokker F-28 Fellowship 3000	9258	95695
13804	Curtiss C-46F-1CU	1284	83955
13812	Antonov AN-24B	14520	96990
13816	Beechcraft 58	12882	93040
13820	Aerospatiale ATR-72	13704	99575
13824	Boeing B-737-209	14688	97435
13828	Piper PA-28-181	2496	96995
13832	Douglas DC-3	8646	95960
13836	Douglas C-47	138	101690
13840	Consolidated B-24 / Consolidated B-24	13710	81160
13844	Boeing KC-135A	9006	96100
13848	Learjet 23A	642	96485
13852	de Havilland Canada DHC-6 Twin Otter 100	714	95525
13856	Douglas C-47B	9450	81730
13860	Cessna 208 Caravan I	13836	99225
13864	Sikorsky CH-53C (helicopter)	9006	92065
13868	Douglas C-47B	11658	83645
13872	Douglas DC-4 (C-54A-DO)	636	82165
13876	Douglas DC-3 (C-53D-DO)	9264	81950
13880	Beech 200 Super King Air	11472	103050
13884	Antonov An-124	3630	100195
13888	de Havilland Canada DHC-6 Twin Otter 300	12900	99015
13892	de Havilland DH-86	4788	80440
13900	Boeing B-707-349C	13254	97150
13904	Vickers Viscount 720	10584	89375
13912	de Havilland Canada DHC-6 Twin Otter 300	822	102340
13916	Sikorsky CH-53A (helicopter)	2016	88900
13920	Piper PA-31-350 Navajo	10698	103890
13924	de Havilland DHC-2	6042	91950
13928	Sud Aviation SE-210 Caravelle VIN	10050	88145
13932	Douglas DC 3-A-SB-3-G-14	882	80465
13936	Lockheed C-130E Hercules	14070	91595
13940	Antonov AN-24V	8592	89195
13944	Eurocopter Deutschland BK117C1	14448	103870
13948	Douglas DC-3	8454	88105
13952	Antonov AN-26	3630	93650
13956	Beech A90 King Air	9228	101785
13960	Cessna 550 Citation	4956	99980
13964	Mil Mi-8T (helicopter)	9288	99915
13972	de Havilland Canada C-7B Caribou	9006	89245
13976	Curtiss C-46A	9282	83685
13980	Lockheed 10 Electra	9330	80585
13984	Convair CV-240	4854	85430
13988	Boeing 707-373	12612	92535
13992	Piper PA-28	11022	92160
13996	McDonnell Douglas MD-82	924	99010
14000	Antonov AN-24	3630	98200
14004	Boeing 737-2M2	7764	103745
14008	de Havilland Canada DHC-6 Twin Otter 100	12570	91220
14012	Embraer 110P1 Bandeirante	8148	100610
14016	Douglas DC-3	10050	85190
14020	Martin 202	12840	83390
14024	De Havilland DH-61	13824	79655
14028	Douglas C-47A	1572	84250
14032	Antonov AN-22	3630	90185
14040	Boeing KC-135	9006	96345
14044	McDonnell Douglas DC-9-31	3828	91755
14048	Mil Mi-17 (helicopter)	2028	96240
14052	Aerospatiale SA-330J	7206	96640
14056	Douglas DC-3	3348	82875
14060	Short Empire Flying Boat	1146	80460
14064	Douglas DC-4	8982	88585
14072	Yakovlev YAK-40	13416	101900
14076	Britten Norman BN-2A-20 Trislander	12288	94965
14080	Douglas C-47B	9450	81655
14084	Antonov AN-12V	7266	98510
14088	Douglas DC-3	14790	85970
14092	Douglas DC-3 (C-47-DL)	13260	84255
14096	Douglas C-54A	14016	84865
14100	British Aerospace  BAe Jetstream 32EP	9462	101595
14104	de Havilland Canada DHC-6 Twin Otter 300	6186	98595
14108	Lockheed 1049H Super Constellation	7194	87140
14112	Sikorsky S-92A	5598	104235
14116	Piper PA-32-301	14322	94980
14120	Douglas DC-6A	1686	100125
14124	Lockheed L-100-30 Hercules	1086	98185
14132	Ilyushin IL-18D	3630	88960
14136	Dewoitine D-338	9264	80555
14140	Piper PA-24-250 Comanche	8646	87165
14144	Beechcraft B-35	14322	87790
14148	Lockheed C-130H Hercules	9006	95090
14152	Douglas DC-3	14388	86460
14160	Tupolev TU-104B	3630	86575
14164	de Havilland DH-86	13128	79815
14172	Dewoitine D-338	9264	80185
14180	Yakovlev 40	3630	91900
14184	Grumman G-159 Gulfstream I	2184	102525
14188	Harbin Yunshuji Y-12-II	8424	103430
14192	Yakovlev YAK-40	3630	93885
14196	Beechcraft 65-B80	13884	89725
14200	Sikorsky S-76C	9528	103265
14204	Bleriot Spad 27	8778	78290
14208	Cessna 208B Grand Caravan	12492	102095
14212	Douglas C-54A	6666	87385
14216	Vickers Viscount 794D	3198	85915
14220	Curtiss Condor T-32	7836	79600
14224	Lockheed C-130A Hercules	9006	96175
14228	Douglas DC6B	2202	88980
14232	Eurocopter  AS332L2 Super Puma	12888	103925
14236	Fairchild F-27B	1614	92170
14240	Tupolev TU-154M / Sukhoi Su-24	8610	98785
14244	GAF Nomad 22B	13104	93945
14248	Shorts SC.7 Skyvan 3-100	5460	101720
14252	de Havilland DHC-2	4026	92985
14256	Junkers JU-90	3210	80690
14260	Douglas DC-3	690	87400
14268	Beechcraft Super King Air 200	9840	93980
14272	Douglas DC-7B / U.S. Air Force F-89J	11226	85290
14276	Douglas DC-4	3486	82415
14280	Yakovlev YAK-40	6630	102810
14284	Douglas DC-3	5688	82825
14288	Bernard 192	5682	78985
14292	Junkers JU-52/3m	3210	80040
14296	Douglas C-47A-20-DL	8232	83020
14300	Boeing B-707-321C	1302	91440
14304	Douglas C-47	5394	83760
14308	Curtiss C-46	13044	82840
14312	Curtiss C-46D-CU	7398	83145
14316	Boeing B-727-231	7746	100240
14320	Beech Super King Air 200	8850	95140
14324	Vickers Viscount 816	8382	98525
14328	Cessna 185	13296	89315
14332	Lockheed 14 Super Electra	12840	80345
14336	Douglas DC-3	3150	87480
14340	Britten-Norman BN-2A-8 Islander	1638	93025
14344	Junkers JU-52/3m	3210	80950
14348	Learjet 24	588	94515
14352	Farman F-300	9264	79725
14356	Antonov AN-32A	5904	102240
14360	Britten-Norman BN-2B-26 Islander	8274	99310
14364	Martin 202	12840	83210
14368	Douglas DC-3	2226	82965
14372	Boeing B-737-4D7	8736	101835
14376	Douglas C-47B	2598	83005
14380	Douglas DC-3C	3162	101040
14384	Boeing B-720B-023B	9042	92280
14388	Douglas DC-3 (Douglas C-47A-10-DK)	11394	82785
14392	Gates Learjet 23	3978	89960
14396	Douglas C-47A	2868	83670
14400	Avro 691 Lancastrian 3	2898	82375
14404	Douglas C-47A Dakota	8808	81975
14408	Dornier Merkur	3210	79185
14412	Piper PA-31-325 Navajo	12102	97785
15380	Junkers JU-53/3m	\N	81490
15116	Bell 407	10260	104010
14416	Douglas DC-3	1218	87420
14420	Vickers Valetta T-3	9450	84275
14424	Cessna 208A Caravan I Cargomaster	9594	97600
14428	Embraer 820C Navajo	5958	102930
14432	Hawker Siddeley HS-748	12558	94430
14436	Ilyushin 114T	10752	101335
14440	Martin 404	12294	84790
14444	Boeing B-747-2B5B	12612	94240
14448	Let 410 UVP-E10A	14256	103850
14452	Douglas C-54A	12840	82810
14456	Lockheed 749A Constellation	2916	88215
14460	Cessna 185	8112	91770
14464	Douglas C-133A	9006	87335
14468	Ford 5-AT-B Tri Motor	11004	79490
14472	De Havilland DH-4	12642	81210
14476	Beechcraft 1900C	14466	102860
14484	Antonov AN-124	14376	99035
14488	Tupolev TU-154B	3630	95520
14492	Douglas C-47A	10050	85705
14496	Douglas DC-3-313	10296	91970
14500	Douglas DC-3	11658	85445
14504	Douglas DC-3	12006	83160
14508	Douglas DC-2	6840	79785
14512	Consolidated Fleetster	11004	79700
14516	Sabca S-73	11394	80100
14520	Lockheed 1049H Super Constellation	6840	85725
14524	Junkers JU-52/3m	3210	80420
14528	Boeing KC-135A	9006	90640
14532	Douglas C-54A	4932	83450
14536	McDonnell Douglas DC-10-30	12612	97275
14540	Tupolev TU-154B-2	3630	95585
14544	Vickers Viscount 710C	14562	87635
14548	Shrike Commander 500S	14322	102220
14552	Piper PA-42	8706	98685
14556	McDonnell Douglas DC-8-63	9276	90010
14560	British Aerospace ATP	13794	100425
14564	Antonov An-32B	4470	100305
14568	Douglas C-47	2862	87825
14572	Douglas C124-DL Globemaster II	9924	84980
14576	Antonov AN-2	12906	103115
14580	Boeing B-707-321B	1302	91565
14584	Cessna 208 Caravan I	14586	95875
14588	Mil Mi-8T	3630	97855
14592	Aerostar 601	12720	93515
14596	Douglas DC-3	10050	85950
14604	Douglas DC-3A	12498	83885
14608	Curtiss C-46F-1-CU	3300	85960
14616	Piper PA-31-350 Chieftain	5634	94940
14620	Douglas DC-3	1092	85995
14624	British Aerospace Nimrod MR-2	9450	103555
14628	Douglas DC-4	7374	91695
14632	F-86 Sabrejet	8646	90920
14636	Fokker F-27 Friendship 100	2562	88505
14640	Vickers Vanguard 952	10068	91205
14644	Lockheed Vega	1248	78915
14648	Savoia-Marchetti SM73	11394	79865
14652	Latecoere 32	5682	79140
14660	Lockheed C-60 Lodestar	4704	82180
14664	Boeing B-707-321C	12756	97040
14668	Douglas DC-3	10656	87230
14672	Douglas C-54A	1182	84945
14680	Antonov AN-10	3630	86215
14684	Cessna TU206D	2262	91930
14688	Douglas C-54D	11856	87035
14692	CASA 212	5640	99825
14696	Boeing B-767-233ER	9276	95110
14700	Lockheed MC-130E-Y	9006	94320
14704	Douglas DC-3	11394	83680
14708	Fokker FG III	3210	78550
14712	Antonov AN-8	3630	98680
14716	Fairchild C-123K	9006	88970
14720	Douglas C-47A	3240	94355
14724	Douglas DC-4	990	82160
14728	Junkers F-13	3210	78490
14732	De Havilland DH-104 Dove	2478	89605
14736	Bell 214ST helicopter	14280	101285
14740	Douglas DC-3	1092	83565
14744	Junkers F-13	4890	78390
14748	Bell 206L-4	8364	99345
14752	Lockheed P-3A Orion	8928	88615
14756	Cessna 441 Conquest	564	96150
14760	Lockheed C121J	8928	86855
14764	Piper PA-32-300	14322	101935
14768	Convair CV-340-32	10458	84885
14772	Douglas DC-3	426	83755
14776	Tupolev TU-154B-1	10680	94145
14780	Rockwell Sabreliner 40	4992	96820
14784	Douglas DC-3	7122	86770
14788	Douglas C-47	9258	90580
14792	de Havilland DH-86	12264	79665
14796	de Havilland Canada DHC-6 Twin Otter 300	12954	99615
14800	Douglas DC-3A	882	80105
14804	Piper PA-31	3702	91815
14808	Antonov An-26	3630	96340
14812	Douglas DC-3	10572	84170
14816	Grumman G-21A	9432	93315
14820	Douglas DC-6A	828	86595
14824	Fokker F-27 Friendship 600	2862	96235
14828	Piper PA-28R	6366	90135
15208	Cessna 180H	6042	89735
14832	Britten-Norman BN-2A-7 Islander	11526	91410
14836	Cessna 182R	3552	95185
14840	Douglas C-47B	9450	83345
14844	Lockheed 14H Super Electra	12840	80240
14848	Antonov An-2T	5424	95490
14852	Douglas DC-3	2562	86445
14856	Douglas DC-3	9264	85345
14860	Lockheed 188A Electra	10458	86080
14864	Curtiss C-46A-45-CU	3714	85165
14868	Bristol 170 Freighter 21	2910	83215
14872	McDonnell Douglas DC-9-32	9276	95065
14876	Douglas DC-3	13482	84310
14880	Lockheed L-188C Electra	11964	88495
14884	Yakovlev Yak-40	3630	96070
14888	Embraer 110C Bandeirante	7806	93535
14892	Douglas DC-3	2562	86485
14896	McDonnell Douglas DC-10-30	1440	101375
14900	Yunshuji Y-8D	10452	102360
14904	Douglas C-47-DL	5742	81940
14908	HS-125-700B	5538	95700
14912	Learjet 35A	4194	103055
14916	Douglas DC-3	12402	83700
14920	Learjet 35A	4800	101380
14924	Hawker Siddeley HS-748-435 Srs. 2	4332	97225
14928	BAC One-Eleven 203AE	10458	88275
14932	Tupolev TU-134A	11916	98985
14936	Douglas DC-2-112	11004	80280
14940	De Havilland DH-4	12642	78285
14944	Bell BHT-206-B Helicopter	4230	97770
14948	Douglas DC-3	11052	85685
14952	Hindustan Aeronautics 748 2-224	10050	93740
14956	McDonnell Douglas DC-8F-54F	12774	87370
14960	Short  S-23 (flying boat)	1146	80120
14964	Aerospatiale Caravelle 3	2808	89905
14972	Learjet 35A	5892	101290
14976	Antonov AN-24	3630	90515
14980	Douglas DC-3	8718	84450
14984	Antonov An-24RV	3630	95285
14988	Douglas C-47A	6336	82275
14992	Beechcraft H18S	10722	91630
14996	Convair CV-880-22M-3	2226	88805
15000	Martin 404	13392	89980
15004	Aerospatiale SA365N-1 Dauphin II	13200	104135
15012	Antonov AN-32	7866	101505
15016	Douglas C-47A-10-DK	5382	81920
15024	Short Calcutta	1146	78945
15028	Fokker F-27 Friendship 200	2862	90195
15032	de Havilland DH-34B	1146	78410
15036	Dassault-Breguet Atlantique	14550	94330
15040	Embraer 110P1A Bandeirante	5664	101415
15044	Fokker F-28 Fellowship 2000	1608	95230
15048	Douglas DC-3 (C-47DL)	5688	81800
15052	Aero Commander 680-E	7602	89295
15056	Boeing B-17G / Boeing B-17G	14856	81910
15060	Airbus A.330-301	2562	101555
15064	Lockheed C-130E Hercules	9006	94735
15068	de Havilland DHC-2	8880	99245
15072	Bristol 170 Freighter 31	204	84935
15076	Douglas DC-7C	12858	86070
15080	Douglas DC-2-115B	5496	84035
15084	Junkers JU-52/3m	8004	80315
15088	Cessna 207	8112	92440
15092	Junkers JU-52/3m	3210	81180
15096	Learjet 60	6192	104130
15104	Boeing B-757-222	882	101975
15108	Lockheed L-049-46 Constellation	1302	82660
15112	Douglas DC-7 / F-100F	9810	85645
15120	Britten-Norman BN-2A Islander	5040	94835
15124	Douglas DC-3	9474	82545
15128	Lockheed C-130H	9006	94710
15132	North American B-25D bomber	13488	81575
15140	McDonnell Douglas DC-9-31	10146	90145
15144	Lockheed P-3A Orion	8928	88200
15148	Curtiss C-46A-45-CU	5310	85340
15152	McDonnell Douglas MD-88	8406	100095
15156	de Havilland DH-114 Heron 2B	9360	90810
15160	Cessna 650 Citation III	8838	104205
15164	Douglas C-47A	8070	90485
15168	Douglas C-47	9006	84505
15172	Douglas C-54	2274	87530
15176	Junkers Ju-52/3m	4074	82460
15180	Let 410	3558	100105
15184	Cessna U206	9870	92910
15188	Ford 4-AT-E Tri-motor	10476	79685
15196	Curtiss C-46A	7212	86125
15200	Douglas DC-3	2058	82305
15212	McDonnell Douglas DC-10-30	8106	97355
15216	Tupolev TU-154M	10476	100875
15228	Douglas C-47	990	81420
15232	Douglas C-47B	9966	85070
15236	Fokker F-28 Fellowship 4000	3708	99290
15240	Junkers JU-52	3210	80215
15244	Mil Mi-17	10422	100005
15248	Douglas DC-3	8508	82155
15252	Douglas C-47A	10050	86905
15256	Yakovlev YAK-40	3630	92150
15260	Cessna 208B Caravan I Super Cargomaster	11610	100715
15264	Cessna 182N	13734	90790
15268	Boeing B-737-291	882	97945
15272	Ilyushin IL-18	3630	91145
15276	Aerospatiale AS350D	13014	99305
15280	Douglas DC-2	3828	80170
15284	Douglas C-47	12396	87925
15288	AAC-1 Toucan	13680	82055
15292	Curtis C-46A-20-CU	11742	87375
15296	de Havilland Comet 4B	5382	88780
15300	Douglas DC-3	4050	87020
15304	Douglas DC-4-1009	9636	86280
15308	Curtiss C-46F	7194	84205
15312	Aerospatiale Caravelle 10B3	6810	91620
15316	Savoia Marchetti SM-95	2748	83505
15320	Beechcraft J-35	3732	91555
15324	British Aerospace BAe-146-300	10122	104260
15328	Douglas DC-3	12942	89470
15332	De Havilland DH-4	12642	94830
15336	Boeing B-707-323 / Cessna 150	3330	90215
15340	Farman F-60 Goliath	5052	78460
15344	Lockheed 1049E Super Constellation	6336	85785
15348	Aerospatiale Caravelle Super 10B	6810	90645
15352	Fairchild C-123	14772	94755
15360	Boeing B-737-2A8	10050	98860
15364	IAI 1124 Westwind	9420	102940
15368	Lockheed 1049G Super Constellation	9264	86375
15372	Douglas DC-3	576	85865
15376	McDonnell Douglas DC-9-32	9906	89860
15384	Lockheed WV-2 Super Constellation	8928	86505
15388	Consolidated PBY-5A Catalina	9180	86220
15392	Hughes 369D	14322	94705
15396	Antonov AN-26	6198	100880
15400	Yakovlev YAK-40	9108	100765
15404	Cessna T210L	14322	96530
15408	Douglas C-47A-DL	13368	93140
15412	Douglas DC-3	11850	86155
15416	Boeing KC-97G Stratofreighter	9006	84075
15420	Cessna 402	3366	96165
15424	Beechcraft D18S	12636	88435
15428	Bell 206L-3	11724	100770
15432	Antonov AN-26A	1374	103295
15436	de Havilland Canada DHC-6 Twin Otter 300	13794	99525
15440	Cessna 402C	468	100850
15444	Boeing B-737-222	636	94475
15448	Sud Aviation SE-210 Caravelle VIN	11982	91260
15452	Douglas DC-6B	14676	85050
15456	Douglas C-47	3288	87985
15460	de Havilland Canada DHC-3 Otter	14382	94870
15464	Lockheed Vega 2	6498	79180
15468	Lockheed Vega 5	3474	78960
15472	Avro 10	1146	79545
15480	Douglas DC-3	3360	88395
15484	Douglas DC-7-C	10458	85615
15488	Heinkel He-70	3210	79870
15492	CASA C-295M	12306	103910
15496	Fairchild C-123K	13344	95050
15500	Vickers Vanguard 951	5382	88010
15508	Cessna 411	10176	93355
15512	Curtiss-Wright C-46F-CU	13488	81640
15516	Boeing B-707-323B	8310	96330
15520	Junkers JU-52/3m	11394	80210
15524	Boeing B-707-345C	5310	91285
15532	Curtiss C-46F	14394	91510
15536	Lockheed 1011-200 TriStar	2700	94170
15540	Douglas DC-3	3846	82835
15544	Boeing B-747-466	13536	98825
15548	de Havilland Comet 4C	8586	87180
15556	Boeing B-737-4Y0	9486	97060
16304	Grumman G-21A	\N	88175
15560	\N	8490	78215
15564	Douglas DC-3	10446	85315
15568	Douglas C-54B	882	82315
15572	Aerospatiale AS350BA	2070	102720
15576	Tupolev TU-134A	3630	96115
15580	Curtiss C-46D	9516	90140
15584	Martin Mariner	6642	85825
15588	Embraer EMB-110P1 Bandeirant	5616	103805
15596	Ilyushin IL-18D	13002	96495
15600	Douglas C-54D-DC (DC-4)	9006	83195
15604	Curtiss C-46E-1-CS	8622	83030
15608	Sud-Aviation Caravelle III	4950	87320
15612	de Havilland DH-125-1A	6096	87005
15616	Douglas C-47A	5178	100295
15620	Douglas DC-3	6234	90450
15624	Antonov AN-24	3630	88880
15628	Boeing CH47A (helicopter)	9732	88220
15632	Avro 685 York C-1	906	85660
15636	Beechcraft D 18S	2418	90615
15640	Fokker F-27 Friendship 600	12198	96815
15644	MDonnell Douglas MD-81	6828	98310
15648	Junkers JU-53/3m	3210	80790
15652	Douglas DC-3	13482	83310
15656	Antonov AN-24RV	8640	100925
15660	Douglas DC-6	13266	96810
15664	BAC One-Eleven 524FF	2562	92070
15668	Douglas DC-6B	12138	89755
15672	Douglas C-47A-DL	13488	81220
15676	Bell 206B3	11076	99185
15680	Douglas C-47	990	81385
15684	McDonnell Douglas DC-9-32	3426	100680
15688	CASA 212-100	10824	96280
15692	Boeing KC-135A	9006	87750
15696	Boeing B-737-230A	1974	96665
15700	McDonnell Douglas DC-9-33CF	12630	89940
15708	Ilyushin IL-18V	3630	89845
15712	Boeing B-727-227	3486	95715
15716	McDonnell Douglas MD-82	9426	96500
15720	Beechcraft B90	3144	94260
15724	MD-87 / Cessna 525A Citation II	936	102020
15728	Lockheed Vega	5304	79735
15732	CASA 212-S1 Aviocar 100	10848	100695
15736	Consolidated PBY-5A Catalina	8928	82380
15740	McDonnell Douglas DC-9-32	2748	97845
15744	Douglas C-54B	10200	86075
15748	Sikorsky S-42B (flying boat)	1302	80785
15752	Ilyushin IL-76MD	7266	95655
15756	Vickers Viscount 803	3606	88995
15760	Cessna 421B Golden Eagle	2352	99020
15764	Piper PA-31	2928	94345
15768	Tupolev TU-134A	13746	95270
15776	Cessna 421 Golden Eagle	1710	93465
15780	Piper PA-31	10110	94600
15784	Convair CV- 640	12516	98360
15792	Douglas DC-3	10026	81035
15796	Koolhoven FK.43	6840	80565
15800	Fairchild C-123B	9006	88115
15804	Antonov 12BK	13446	98530
15808	Latecoere 631 (flying boat)	9264	82755
15812	Piper PA-31	14322	93235
15816	De Havilland DH-4	12642	78175
15820	MBB HFB-320 Hansa Jet	12456	90825
15824	Douglas C-47B	54	98040
15836	Fokker F-12	6840	79730
15844	Douglas DC-3	3486	81465
15848	Cessna 402	1596	94020
15852	Douglas C-47	12126	86830
15856	Boeing B-29	9006	84050
15860	Beechcraft C-45H	5334	98605
15864	Douglas DC-6BF	14136	97680
15868	Avia 14	84	86970
15872	Swearingen SA-227AC Metro III	7908	98575
15876	Boeing KC-135A	9006	88230
15880	Cessna 207 / Cessna 207	7236	97525
15884	EMB 721C Sertanejo	1512	102600
15888	Handley Page HP-81 Hermes 4A	8340	84025
15892	Yakovlev YAK-40	13830	99455
15896	Beechcraft Super King Air 200	2370	102825
15900	Lockheed 749A Constellation	3828	84415
15904	British Aerospace APT	6636	101370
15908	Arava 201	3774	101295
15912	Lockheed C-130H	12120	94510
15916	Antonov AN-26	6696	98915
15920	Sud Aviation SE-210 Caravelle 10R	7302	101805
15924	Curtiss-Wright R5C-1	2016	82100
15928	Douglas DC-4	1140	83540
15932	Douglas DC-3	2856	87800
15940	Douglas DC-3	14580	95450
15944	Piper PA-23-250	2238	92700
15948	Beechcraft E18S	14322	94720
15952	Short Sunderland 3 (flying boat)	10026	81065
15956	Douglas DC-3C	13608	100175
15960	McDonnell Douglas DC-9-32	5556	94465
15964	Boeing EC-135N	9006	94375
15968	Cessna 207	684	95240
15972	Ilyushin IL-18	624	89215
15976	Airbus A300-600R	3486	101775
15980	Curtiss C-46A	9282	83990
15984	de Havilland DH-18 / Farman F-60 Goliath	13728	78270
15988	Lockheed 049 Constellation	14058	84890
15992	de Havilland Canada DHC-6 Twin Otter 200	11406	97655
15996	de Havilland DHC-2	12084	100200
16000	Antonov 74T-200	1422	103590
16004	Douglas C-47	990	81405
16008	Douglas DC-3C	8256	99655
16012	CASA 212 Aviocar 100	13794	96010
16016	Bell 206A	4518	89055
16020	Lockheed L-188AF Electra	4830	95985
16024	Junkers JU-52	12732	80295
16028	Tupolev TU-124	3630	88035
16032	Beech G18S	13230	90995
16036	Beechcraft 95-55	11010	88555
16040	Lockheed 1049H-82 Super Constellation	1182	86990
16044	Convair CV-440-62	12402	85465
16048	Douglas C-47A	10446	87645
16052	CASA 212 Aviocar 200	6048	95280
16056	Lockheed C-130B Hercules	9006	88655
16060	CAMS 53	5682	79420
16064	Ilysushin Il-76TD	3498	104045
16068	Douglas DC-4	2124	96895
16072	de Havilland DH-104 / Piper PA-28	3402	88620
16076	Piper PA-32-300	7932	92680
16080	Douglas DC-3	14052	83440
16084	Beechcraft B95A	1956	88120
16088	Fairchild F-27A	528	87680
16092	Beechcraft C-45H	10020	88045
16096	Stinson Model A	3486	79915
16100	Lockheed MC-130H Hercules	9006	102305
16104	Bell 206	6492	90375
16108	Sikorsky S-76C	14316	104190
16112	Douglas DC-3	4350	87575
16116	Fokker F-VII	11394	79940
16120	Aerospatiale 350B1	378	98155
16124	Consolidated LB-30A Liberator	4542	81560
16128	Partenavia P-68C	6690	96890
16132	Boeing KC-135A	9006	93815
16136	Douglas C-47A-50-DL	12870	83185
16140	Boeing B-737-3B7	14034	99360
16144	Learjet 25	8580	95005
16148	Ilyushin IL-18D	6924	87040
16152	Vickers Viscount 739A	12864	89175
16156	IAI Arava 201	6720	92380
16160	Douglas DC-3	13050	89380
16164	Boeing 307 Stratoliner	12852	80525
16168	Boeing B-737-505	3630	104125
16172	Junkers JU-52/3m	84	81795
16176	Douglas DC-3	9258	92050
16180	Curtiss C-46A	11496	86570
16184	Curtiss C-46A-45-CU	11424	91590
16188	Piper PA-23	6018	89080
16192	Douglas C-47A	9138	86825
16196	Cessna 208B Caravan I Super Cargomaster	13602	100975
16200	Douglas DC-3	2562	83190
16204	Cessna 172M	10524	91810
16208	Douglas DC-3 (C-47A-90-DL)	2118	82085
16212	Vickers Viscount 837	6744	90575
16216	Lockheed C-69 Constellation	11052	85980
16220	Ilyushin IL-62M	3630	94780
16224	Lockheed C-141A	9006	91735
16228	Vickers Viscount 745D	11052	86175
16236	Tupolev TU-134A / Antonov An-26	13500	95735
16240	Britten-Norman BN-2A-20 Islander	156	101525
16244	Shorts 360	11622	102975
16248	Antonov AN-32	10452	99785
16252	Piper PA-32-300	14322	96415
16256	Douglas C-53	990	81085
16260	Fairchild F-27	4812	88975
16264	Beech Super King Air 200/DHC6-Twin Otter	10968	94400
16268	Boeing B-737-T43	9006	100020
16272	Cessna 310C	12132	88295
16276	Farman F-60 Goliath	5052	78665
16280	Douglas DC-3	84	85020
16284	British Aerospace BAe-125-800A	10500	104065
16288	Dornier Wal	10782	79230
16292	Lockheed C-130H Hercules	9006	99140
16296	Dornier 228-212	12444	100545
16300	Douglas DC-6B	11850	87175
16308	Learjet C-21A	9006	102175
17156	Beech 200	\N	93850
17024	Learjet 23	11106	91045
16312	Douglas C-47DL	8070	88025
16316	Sikorsky S-61L helicopter	9756	89085
16320	Avro Shackleton MR-1	9450	84060
16324	Curtiss C-46F	7566	86415
16328	Antonov AN-140	5214	102485
16332	Antonov 32B	4470	101015
16336	Antonov AN-8	6660	97840
16340	Pilatus Britten-Norman BN-2B-27 Islander	8832	99235
16344	Douglas DC-7CF	10830	91075
16348	Shorts SC-7 Skyvan 3A-200	7488	98505
20532	Douglas C-47-DL	11712	82250
16356	Fairchild F-27J	7524	94930
16360	Douglas DC-3	11304	85860
16364	ATR 42-300	1008	102405
16368	Mil Mi-17 (helicopter)	10452	99935
16372	Tupolev TU-104B	3630	91400
16376	Hawker Siddeley Trident 2E	10566	93595
16380	Douglas C-47D	8352	90685
16384	Douglas DC-2-115L	6840	80150
16388	Learjet 23	1932	97550
16392	Yakovlev YAK-40	3630	92120
16396	Lockheed C-130H Hercules	870	94225
16400	Douglas C-54A	1230	88455
16404	Bristol 170 Freighter 31E	9624	91675
16408	McDonnell Douglas MD-11	9186	101115
16412	EC-121H (Super Constellation)	9006	87910
16416	Curtiss C-46A-45-CU	1554	85475
16420	Douglas DC-3	6138	89870
16424	Junkers Ju-52/3m	12144	82035
16428	McDonnell Douglas DC-10-10	882	97245
16432	Douglas C-47A	2814	87240
16436	Cessna 310L	1494	91475
16440	Embraer 110P1 Bandeirante	12288	98420
16444	Lockheed Vega 5C	11970	80015
16448	Antonov AN-26	3630	97250
16452	de Havilland Canada DHC-4A Caribou	10854	94845
16456	Lockheed C-130B	14070	88590
16460	Douglas DC-3	7074	88245
16464	Douglas C-47B	7620	89640
16468	Douglas C-54A	828	82500
16472	CASA 212-200 Aviocar	3930	99685
16476	Douglas C-47 / Douglas DC-3	2172	82190
16480	Douglas C-47	990	81540
16484	Tupolev 154B	10680	97100
16488	Convair CV-340	3768	95045
16492	McDonnell Douglas DC-9-32	5556	94540
16500	Boeing B-747-122	882	100650
16504	Lockheed L-749 / Cessna 140	1302	82930
16508	Savoia-Marchetti SM-75	3450	80710
16512	Piper PA-32	3894	89900
16516	Piper PA-32	13038	88170
16520	Douglas DC-3	1086	86625
16524	Latecoere 28	5682	79085
16528	Douglas DC-4	9264	83120
16532	Boeing 707-321C	13176	92830
16536	Aerospatiale Caravelle 6N	426	91370
16540	Douglas C-47A	9450	81840
16544	Boeing 95	11016	79330
16548	Mil Mi-8MTV (helicopter)	3930	99425
16556	Shorts 330-200	10074	95205
16560	Boeing B-727-113C	9402	89395
16564	Saab 340B	10236	101420
16568	Grumman G-21 Goose	7968	93635
16572	McDonnell Douglas DC-9-15	5556	91275
16576	Breguet 14	5052	78475
16580	Avro 685 York C-1	13614	85105
16584	Arado V1	3210	78990
16588	Shorts 360-100	6480	101825
16592	Swearingen SA.226TC Metro II	1704	95290
16596	Douglas DC-3	1356	88740
16600	Ilyushin IL-76M	12804	95530
16604	Tupolev TU-154	6696	100620
16608	Cessna 177B	8646	100035
16612	de Havilland Canada DHC-6 Twin Otter 200	8700	92195
16616	Boeing B-727-121C	4050	91760
16620	AEGK	3210	78695
16624	Piper PA-32	12510	94265
16628	Stinson Reliant	14106	80250
16632	Lockheed 18 Lodestar	9264	81735
16640	Douglas DC-3-227B	3486	81790
16644	Cessna 205A	1848	88370
16648	Curtiss C-46D-15-CU	5406	83730
16652	Curtiss C-46A	7128	98205
16656	Cessna 500 Citation I	12246	95305
16660	\N	4008	89415
16664	Cessna 207 Skywagon	11604	103305
16668	McDonnell Douglas MD-83	7494	103865
16672	Antonov An-2R	2052	99735
16676	Lockheed L-100 Hercules	162	89345
16680	Antonov AN-24	3630	92470
17680	Douglas C-47	\N	82845
16684	Cessna 208A Caravan I Cargomaster	9594	97545
16688	Yakovlev YAK-40	612	94080
16692	Embraer 110P1 Bandeirante	1626	97000
16696	Junkers JU-52/3m	12096	81855
16700	Cessna 650 Citation VI	2616	99165
16704	Lockheed C-130A-II Hercules	9006	85740
16708	Fairchild C-82A	8940	85490
16716	de Havilland Canada DHC-6 Twin Otter 300	12288	97255
16720	Hughes 269B	7380	87665
16728	Tupolev Tu-104A	3630	86420
16732	de Havilland Canada DHC-3 Otter	13428	102410
16736	Cessna 208 Caravan I	3432	96580
16740	Lockheed C-130B Hercules	6648	83555
16744	de Havilland DH-66 Hercules	1146	78925
16748	Douglas C-54B-10-DO	1182	83865
16752	Bell 212	9480	92225
16756	Lockheed 14 Electra	14520	80395
16760	Boeing B-727-231	12294	95770
16764	Yakovlev YAK-40	3630	90075
16768	Douglas DC-3	2112	83445
16772	Ilyushin IL-18D	13314	93620
16776	Douglas C-47A	798	82140
16780	De Havilland D-84	14784	80590
16784	Curtiss C-46F-1-CU	13782	83265
16788	Douglas DC-3A	6738	80995
16792	Tupolev Tu-154M	8346	103540
16796	BAe Jetstream 3101-31	1590	101550
16800	Convair CV-880-22M-21	2226	90785
16804	de Havilland DHC-2	912	94925
16808	Breguet 14	5682	78240
16812	Boeing B-737-4Q8	12354	103610
16816	Fokker F-27 Friendship 600	5580	89550
16820	Cessna 182B	5544	87740
16824	Swearingen SA.227AC Metro III	2718	100815
16828	Curtiss C-46D	9006	83260
16832	Douglas DC-3	6924	86600
16836	Learjet35A	8016	97930
16840	Lockheed C-130A Hercules	9006	92125
16844	Antonov AN-24	3630	92865
16848	Douglas DC-3	1176	93415
16852	Douglas DC-3	6840	80600
16856	Boeing B-747-258F	14058	98645
16860	Goodyear-Zeppelin U.S.S. Akron (airship)	8928	79465
16868	Douglas C-47 Dakota-DK	8490	81705
16872	Cessna 404 Titan II	294	98025
16876	de Havilland DH-114 Heron 2B	13896	85205
16880	de Havilland Canada DHC-6 Twin Otter 300	492	103465
16884	Swearingen SA227AC Metro III	10338	102885
16888	Douglas C-47B	8220	90930
16892	Beech D18AS	13758	93370
16896	Xian Yunshuji Y-7-100C	7884	100760
16900	Douglas DC-3	7242	84590
16904	Curtiss C-46T	5466	98375
16908	Douglas DC-3	5028	82540
16912	Dassault Breguet Atlantique	14550	103910
16916	Douglas DC-6BF	4410	98070
16920	Lockheed L-188CF Electra	14664	93890
16924	Lockheed C-130E Hercules	9006	99645
16928	de Havilland DH-89A Dragon Rapide	10728	82700
16932	Junkers JU-52/3m	1692	80715
16936	Tupolev TU-104A	3630	92715
16940	Short Empire Flying Boat	1146	80190
16944	Boeing B-737-222	14010	99995
16948	Bristol 170 Freighter 31M	11130	92735
16952	Douglas DC-2	990	80405
16956	Douglas C-47B	9450	82045
16960	Piper PA-31T	8784	92665
16964	Douglas C-47-DL	6336	84855
16968	Douglas DC9-15F	1386	104050
16972	Yakovlev YAK-40	8370	99385
16976	Beechcraft D 18S	11862	90630
16980	Illyushin 76	11556	102580
16984	Let 410UVP-E	14004	101430
16988	Antonov AN-26	7890	96775
16992	Learjet 24XR	10638	95915
17000	Bell 47G-2	4782	89630
17004	Lockheed 18 Lodestar	5676	82975
17008	Britten-Norman BN-2A-6 Islander	14202	98125
17012	Fairchild F-27A	9936	87525
17016	Boeing B-707-321B	12612	93230
17020	Lockheed C-130A Hercules	4704	102715
17028	Fokker Super Universal	7362	78735
17032	Farman F-301	9264	79505
17036	Piper PA-31-350 Navajo	12696	99220
17040	Vickers Viscount 748D	4044	93545
17044	Sud-Aviation  Caravelle VI-N	7686	95965
17048	Beechcraft 1900C-1	5898	97705
17472	Mi-8	7998	\N
17800	Douglas DC-4	9264	83525
17052	De Havilland DH-85	4920	80335
17056	Britten-Norman BN2A-III-2 Trislander	14766	98225
17060	Antonov AN-26	3630	98200
17064	Breguet 14	5412	78530
17068	Hawker-Siddeley DH-125-1A/522	13164	97960
17072	Lockheed L-188AF Electra	288	95595
17076	Curtiss C-46F	954	88440
17080	Fairchild C-82A	11982	85550
17084	Douglas DC-2-112	11004	80125
17092	Boeing B-727-282	6594	93015
17096	Fokker F-27 Friendship 400	2862	91030
17100	Bell 47J-2	10392	90675
17104	Cessna 208 Caravan	13116	103845
17112	Cessna U206G	9858	101465
17116	Lockheed 049 Constellation	1302	83630
17120	Douglas DC-3 / Cessna 170B	7872	85170
17128	Antonov AN-12	2826	103010
17132	McDonnell Douglas DC-8-54F37	882	94960
17136	Ilyushin IL-18V	13746	91170
17140	Douglas C-47	2916	82775
17144	Lockheed P-3B Orion	8928	91195
17148	Nord 2501 Noratlas	228	85945
17152	de Havilland Comet 4C	8592	86915
17160	Boeing B-767-200ER	1086	100270
17164	Beech C-45H	24	88575
17168	North American F-100D-25NA	9006	86020
17172	Ilyushin IL-18	84	86545
17176	Boeing B-314 (flying boat)	1302	81010
17180	Short Stirling	4542	81695
17188	Douglas C-54D-DC (DC-4)	9006	82505
17192	Lockheed 1049H Super Constellation	1182	87070
17196	Britten-Norman BN-2A-8 Islander	9744	94420
17200	Lockheed C130B	9006	88770
17204	Douglas DC-6	882	84835
17208	Boeing B-737-2A8 Advanced	6240	101610
17212	Boeing B-707-441	5310	87050
17216	de Havilland Canada DHC-6 Twin Otter 310	996	94905
17220	Piper PA-23	13464	92295
17224	Fokker F-27 Friendship 600	11964	91745
17228	\N	990	81810
17232	Beechcraft S35	8496	92530
17236	Boeing B-737-297	5232	96790
17240	Fokker F-27 Friendship 600	918	95910
17244	Ford 5-AT-B Tri-Motor	14004	81370
17252	Douglas C-53D-DO (DC-3)	4854	82065
17256	Douglas DC-3	11964	83420
17260	Douglas DC-3	14562	89690
17264	Sikorsky S-61N	7410	104075
17268	Convair CV-580	5670	104115
17272	Boeing Vertol CH-47C (helicopter)	9732	94855
17276	Hawker Siddeley HS-125	2436	101180
17280	Lockheed Orion	12006	79980
17284	Boeing B-727-81	10992	88130
17288	Canadair C-4	10026	84940
17292	Douglas DC-3	12654	89030
17296	Airbus A300-622R	14688	100705
17300	Ilyushin IL-38 / Ilyushin IL-38	1566	102415
17304	Vickers Viscount 764 D	4590	93110
17308	Armstrong-Withworth Atlanta	1146	80365
17312	Douglas C-47A	12396	90285
17316	Shorts 360-300	10596	101425
17320	CASA 212 Aviocar 200	13794	97905
17324	Douglas C-47B	4308	84405
17328	Beech C-45H	1578	88765
17332	Convair CV-240-4	4950	84615
17336	Messerschmitt M-20	3210	79155
17340	Douglas DC-3	14790	85485
17348	Tupolev TU-154M	348	99250
17352	Bell 206 L-1	14322	95610
17356	Ilyushin IL-14	10476	94055
17360	Douglas C-47B	1866	82445
17364	Lockheed L-1049H Super Constellation	5220	89625
17368	Douglas C-47A	9216	83945
17372	Douglas DC-7BF	216	92960
17376	Sikorsky S-43 (flying boat)	1302	81585
17384	Boeing B-720-051B	12840	87150
17388	Embraer 110P1A Bandeirante	5664	100345
17392	Hawker Siddeley HS-748-209	2562	89925
17396	Fairchild FH-227E	9948	102155
17400	Antonov AN-12	3444	100960
17404	Lockheed P-3C Orion /Convair CV-990	8928	91215
17408	Douglas C-47-DL	6324	90885
17412	Cessna 337D	9270	91820
17416	Douglas DC-3 / USN R-6D-1	1644	86205
17420	Curtiss C-46D	3414	86735
17424	Pipper PA-23-250 Aztec	8646	92780
17432	Convair CV-440-0	1332	88125
18188	Douglas DC-4	14058	83780
17436	Handley Page Hastings C-2	9450	86550
17440	Avro 691 Lancastrian IV	2274	86455
17444	Embraer 110P1 Bandeirante	1074	99320
17448	de Havilland Canada DHC-6 Twin Otter	2202	103700
17452	Ilyushin IL-18B	3630	90940
17456	Antonov AN-28	14538	102070
17460	Junkers W-34	8550	79540
17464	De Havilland DH-4	12642	78210
17468	Boeing TB-29A Super Fortress	9006	81320
17476	Convair CV-340	882	84765
17480	Antonov AN-24V	4482	103740
17484	Sikorsky CH53D / Sikorsky CH53D	7698	100360
17488	Aerospatiale SA316B	702	98835
17492	Grumman G-21	1320	93225
17496	Yakovlev YAK-40	6630	101235
17500	McDonnell Douglas DC-10-30CF	14544	94625
17504	McDonnell Douglas DC-8-62	13536	91000
17508	Beech C-18S	5658	88290
17512	Boeing 40	3870	79160
17516	Cessna T337B	11778	90090
17520	Douglas C-124C	9006	89155
17524	Piper PA-23	7380	87405
17528	Embraer 110P1 Bandeirante	8634	97805
17532	de Havilland Dove 1	2280	83485
17536	Boeing B-707-328B	9264	89650
17540	Consolidated Canso (amphibian)	8808	83070
17544	Douglas DC-2-115A	6840	79690
17548	Douglas DC-4	1092	85520
17552	De Havilland Dash-3	13740	99820
17556	Cessna 310Q	8514	92040
17560	Boeing B-747-122	882	97115
17564	Hawker Siddeley HS-748-1	12558	93725
17568	Nord 262E	7386	90200
17572	Antonov An-26	1656	104290
17576	Boeing Vertol CH47C (helicopter)	9732	89485
17580	LET 410M turbojet	3630	93735
17584	Cessna 421C Golden Eagle III	7026	103405
17588	Fairchild FH-227B	14400	97715
17592	Chance Vought F-8E	2016	88300
17596	Boeing B-737-3Q8	11964	102150
17600	Piper PA-31	14322	95330
17604	Douglas DC-3	2700	88710
17608	Douglas DC-4	6138	87695
17612	Fokker F-27 Friendship 500	10056	98610
17616	McDonnell Douglas DC-9-31 / Trident 3B	11400	92590
17620	Aero Commander 680E	10650	90945
17624	Douglas R6D-1 (C-118B)	8928	84820
17628	McDonnell Douglas DC-10-10	7872	93170
17632	Bristol 170 Freighter 31	2208	85515
17636	Aerospatiale SN-601 Corvette	6024	101780
17640	Boeing 720-030B	1332	86710
17644	Boeing 767-223ER	3486	101985
17648	Latecoere 28	5682	79305
17652	Douglas C-47A	8958	85075
17656	Boeing B-707-123B	10440	102320
17660	Lockheed 1649A Starliner	12294	86015
17664	Piper PA-32-301 Cherokee	2958	103600
17668	Cessna 208B Grand Caravan	11370	100325
17672	Boeing Vertol CH47B (helicopter)	9732	90055
17676	Cessna 402B	9054	98000
17684	Douglas C-54E-DO (DC-4)	13488	81515
17688	Antonov AN-12BP	14760	101005
17692	Beechcraft 58	504	92915
17696	British Aerospace Jetstream 4101	8034	99100
17700	Ilyushin IL-14	10476	86805
17704	Boeing-Vertol Chinook	3948	96250
17708	Military - U.S. Air Force	5610	97360
17712	Boeing B-757-225	9372	99955
17716	Boeing B-747-131F	14070	92465
17720	Douglas DC-3	2862	85420
17724	Douglas C-47 (DC-3)	9390	83240
17728	Lockheed Martin L-100-30 Hercules	2514	101020
17732	Douglas DC-3 (C-47A-90-DL)	9264	82260
17736	Beech D18S	11922	88365
17744	Lockheed L- 749A Constellation	9264	84345
17748	de Havilland Canada C-7A Caribou	9006	88835
17752	Douglas C-54	2274	88020
17756	Douglas DC-3 (C-47A-30-DK)	6426	97665
17760	Tupolev TU-134	6924	92970
17764	Britten-Norman BN-2A-26 Trislander	9744	95175
17768	McDonnell Douglas MD-82	3486	101135
17772	Lockheed P-3B Orion	8928	93065
17776	Antonov An-24B	3630	91540
17780	Douglas C-47B	9450	81875
17784	Sikorsky S-55B	7548	92605
17788	Bell UH-1D / Bell UH1D (helicopters)	852	87870
17792	Lockheed L-1011-1 TriStar	8406	95805
17796	Convair CV-240-4	6840	84295
17804	Douglas C-47A	5676	84535
17808	Douglas DC-3	10446	84475
17812	Douglas DC-3	14442	82600
17820	Vickers Viscount 804	14520	87075
17824	Antonov An-12	7272	95870
17828	Cessna 180H	9132	88895
17832	de Havilland Canada DHC-6 Twin Otter 300	12900	97650
17836	Beech King Air 65-A90	8646	101210
17840	Douglas C-47A	10050	85695
17844	Mitsubishi MU 2B 35	5016	102645
17848	de Havilland Canada DHC-6 Twin Otter 300	10098	103710
17852	Tupolev TU-134A	6924	90455
17856	de Havilland Canada DHC-6 Twin Otter 100	14778	89935
17860	Junkers G-31	3210	78795
17864	McDonnell Douglas MD-82	10668	99030
17868	McDonnell Douglas DC-8-61	882	93495
17872	Junkers JU-52/3m	3696	85625
17880	Piper PA-28R	1002	92515
17888	Curtiss C-46D	13902	83960
17892	Boeing KC-135A	9006	95840
17896	Boeing B-727-95	3486	92445
17900	Bell 206B	10344	92115
17904	Airbus A.320-214	2562	100735
17908	Sud-Aviation Caravelle VI-N	10050	92630
17912	Antonov AN-26	14436	102345
17916	Avro 685 York I	9042	85775
17920	CASA 212 Aviocar 100	6048	93965
17924	Antonov AN-26	3630	94945
17932	Douglas DC-4-1009	8154	83300
17936	Douglas C-47A-DK	13488	81670
17940	Britten-Norman BN-2A-21 Islander	4362	92455
17944	Douglas DC-3A	5970	91395
17948	Lockheed 1329 Jetstar 8	12120	99520
17952	de Havilland Canada DHC-6 Twin Otter 300	13944	97710
17956	McDonnell Douglas DC-9-32	3858	99665
17960	De Havilland DH-4	12642	78080
17964	McDonnell Douglas DC-8-63F	10512	99585
17968	Short  S-29 Stirling V	5298	82515
17972	McDonnell Douglas DC-9-32	18	92220
17976	Breguet 14	5550	78590
17980	Beechcraft King Air C90	1824	96370
17984	Douglas DC-3	1086	86335
17988	Bell 407	2970	102870
17992	Curtiss Wright C-46F	13260	83800
17996	Learjet 25C	11988	102380
18000	Douglas DC-4-1009	9264	83285
18004	Consolidated PBY-5A Catalina	10446	82945
18008	Cessna 208 Caravan I	8448	101665
18012	Antonov AN-22	7854	98695
18016	Avro 691 Lancastrian 1	10026	81935
18020	LiorÃ©-et-Olivier H-13	5412	78435
18024	Ilyushin IL-18V	10680	98130
18028	Lockheed C-130A Hercules	9006	85770
18032	Lockheed EC121R	9006	89520
18040	CASA 212-DE Aviocar 200	2712	101495
18044	Vickers Viscount 749	6336	91730
18048	Douglas DC-3	2562	87440
18052	Douglas DC-3	12492	83490
18060	Embraer-110 C-95B Bandeirante	2598	102495
18064	Boeing B-747-209B	14688	102275
18068	Hawker Siddeley HS-748-234 Srs. 2A	11832	99025
18072	Aerostar 601P	4020	93125
18076	Let 410UVP	10548	102915
18080	Cessna 182	7848	88490
18084	Airbus A300B2-1C	9264	99510
18088	McDonnell Douglas DC-9-30	14034	99295
18092	Boeing 707-328C	696	96860
18100	Farman 190	10962	79005
18104	de Havilland Canada DHC-6 Twin Otter 300	11406	101490
18108	Yunshuji Y-12	1620	103235
18112	Cessna T207A	14322	96145
18120	Cessna 402	8526	100010
18124	Douglas DC-3	10050	84440
18128	Cessna U206C	8826	90750
18132	De Havilland DH-4	12642	78195
18136	Embraer EMB-110 Bandeirante	10788	103120
18140	Sikorsky S-76A	12954	102335
18144	Britten Norman BN-2A Trislander	2952	93395
18148	Convair CV-240-0	11982	86835
18156	Learjet 24D	2604	95825
18160	Antonov AN-8	7596	101445
18164	Boeing B-727-64	2628	89555
18168	Fokker FG III	3210	78740
18172	Avro 688 Tudor 4B	2898	82915
18176	Sikorsky S-42A	2682	79925
18180	Curtiss-Wright C-46	4962	84190
18184	Airbus A320-111	9264	96840
18192	Liore-et-Olivier 213	5052	79370
18196	de Havilland Canada DHC-6 Twin Otter 300	8976	95575
18200	Beech E18S	6606	90295
18204	de Havilland Canada DHC-8-103	3738	97865
18208	Antonov An-12AP	4248	96020
18212	Boeing B-707-331B	12294	91750
18216	Learjet 25C	12108	97645
18224	Let 410UVP-E20	5868	102455
18228	Douglas DC-3	4548	83225
18232	Aero Commander 560	744	88795
18236	Avro 688	10284	85895
18240	Avro Lancaster	6462	82330
18244	Douglas DC-3	9264	81955
18248	Boeing B-727-22QC	882	89420
18252	Blackburn B-2	12066	80025
18256	Convair CV-240-4	7470	86350
18260	Curtiss C-46D	13434	90770
18264	Junkers JU-52/3m	3318	79965
18268	Douglas DC-7	4062	93800
18272	Douglas DC-3C	11898	100955
18280	Fairchild FH-227B	10536	96725
18284	Bell UH-1B Huey Helicopter	12072	94800
18292	de Havilland Canada DHC-6 Twin Otter 300	10968	97935
18296	Vickers 604 Viking 1B	6132	82650
18300	Douglas C-47 Dakota	4542	81865
18304	Airbus A-300-605R	3486	102055
18308	Canadair CL-44D4-6	9540	94440
18312	de Havilland Canada DHC-6 Twin Otter 300	6102	92725
18316	Ford 5-AT-C Tri-Motor	6738	79580
18320	Cessna U206G	5928	102400
18324	Boeing B-747-130	1332	91865
18328	Ilyushin IL-18B	84	86585
18332	Tupolev TU-104A	3630	85795
18340	Antonov AN-24B	3630	95995
18344	McDonnell Douglas DC-8-63F	14544	91360
18348	Douglas DC-6B	8430	93560
18352	Douglas C-47	990	81140
18356	Douglas DC-3	14106	85900
18360	Douglas DC-3	9576	84135
18364	Tupolev TU-104B	3630	90390
18368	Antonov AN-26	4632	103835
18372	Douglas DC-6B	10572	84730
18376	Bristol Britannia 314	10986	86920
18384	Cessna 310	8646	102315
18388	Antonov AN-12BP	3630	95440
18392	Piper PA-32R	10938	92895
18396	Lockheed C130D	5766	96135
18400	Vickers Viscount 837	9750	86390
18404	Yakovlev YAK-40	3630	93605
18408	Beechcraft 35-B33 Debonair	8646	87610
18412	Boeing B-727-22 / Cessna 310	3810	88730
18416	Douglas DC-3-178	2502	83280
18420	Boeing B-737-8EH /EMB-135JB	5322	103570
18424	Antonov AN-12V	7854	94215
18428	Douglas C-47	990	81240
18432	de Havilland Canada DHC-6 Twin Otter 200	2568	99500
18436	De Havilland DH-4	12642	86800
18440	Boeing B-767-222	882	101990
18444	Cessna 208B Caravan I	60	97575
18448	Beechcraft N35	8754	88785
18452	LET  410M Turbojet	3630	94605
18456	Tupolev TU-154B	14430	98520
18464	Aerospatiale Caravelle 6R	12432	94060
18468	Vickers Viscount 785D	30	93645
18472	Douglas DC-4	11346	90610
18476	Fairchild-Hiller FH-227B	5490	89885
18480	Savbia-Marchetti  S-73P	11394	80425
18484	Beechcraft 99	6822	92095
18488	McDonnell Douglas DC-9-82 / Cessna 441	10086	99470
18492	Fokker F-28 Fellowship 1000	12660	91505
18496	Junkers Ju-52	9264	82325
18500	Bell 206	14298	92045
18504	Douglas DC-3A	882	80705
18508	Yakovlev YAK-40	12672	98705
18512	Fokker 100	10320	102000
18520	Douglas C-47A	2700	87560
18524	Douglas C-53	990	81135
18528	Douglas DC-6	882	82430
18532	Fokker F-27 Friendship 100	2562	88720
18536	Cessna 207A	11358	98035
18540	Boeing 737-2R4C	1104	99130
18544	Bell 214 ST	7416	98220
18548	Boeing C-97C	9006	85335
18552	Brittonnorman BN-2A6	4116	91780
18556	Lockheed L-1049H Super Constellation	9006	88695
18560	Boeing B-747-121	1302	94815
18564	Sikorsky S-76	366	94725
18568	Fokker F-28 Fellowship 1000	11964	94695
18572	North American CT-39A Sabreline	14244	103750
19468	Cessna 206 Seneca	\N	100595
18576	Lockheed L-100-30 Hercules	8982	103535
18580	Let 410 UVP-E3	6204	103885
18588	Cessna 310R	816	94295
18592	Swearingen SA227AC Metro III	8340	103215
18596	Dassault Falcon 20	6402	97235
18600	Fokker F-28 Fellowship 1000	3180	97130
18604	Cessna 550 Citation II	6768	100530
18608	de Havilland Canada DHC-6 Twin Otter 300	7506	93690
18612	de Havilland Canada DHC-6 Twin Otter 300	6432	100920
18616	Vickers 610 Viking-1B	5382	83400
18620	Lockheed 10 Electra	7464	80305
18632	Lockheed C-130E Hercules	9006	96470
18636	Douglas DC-4	11850	86200
18640	Beech BE-70	6936	93570
18644	De Havilland DH-4	12642	78115
18648	Douglas C-54D-DC (DC-4)	13488	82310
18656	Junkers JL-6	12642	78150
18660	Fokker F-27 Friendship 400M	4398	89995
18664	Boeing B-707-328	9264	86875
18668	Douglas DC-3 / Boeing B-34	12180	80955
18672	Antonov AN-24RV	13890	98410
18676	Douglas C-47	9876	83180
18680	Douglas DC-4-1009	11394	81990
18684	Douglas C-53-DO (DC-3A)	14490	88055
18688	Boeing 247	6612	79810
18692	Beechcraft 1900C	9510	102460
18700	Vickers Vanguard 951	5382	90465
18704	Bristol 170 Freighter 21	3924	83055
18708	Douglas DC-3A	9378	91535
18712	Ford Tri-Motor 5	942	79045
18716	Bloch 220	9264	80775
18720	Dassault Falcon 20E	4722	99570
18724	Douglas DC-3	9738	84710
18728	Convair CV-580 / Cessna 150	6504	89170
18732	Piper PA-18	2334	92110
18740	Boeing B-720-047B	4854	90275
18744	Tupolev TU-134A	14118	90320
18748	Boeing B-737-2A1	14388	96490
18752	Convair CV-240-0	11982	87110
18756	Pel Air	10746	99620
18760	McDonnell Douglas DC-9-32	9630	89455
18768	Antonov 12BK	4494	104035
18772	Cessna 208B Grand Caravan	11442	102815
18776	Shorts 360-300	2562	96625
18780	Boeing B-727-2L5 / MiG23UB	11802	98745
18784	Hawker Siddeley HS-748 2	2562	91985
18788	Douglas C-54	7920	87535
18792	Swearingen SA227AC Metroliner III	9612	103945
18796	Beech C-45H	4296	94570
18800	De Havilland DH-4	12642	78395
18804	Antonov An-2	10158	103580
18808	Fokker F-VIIb-3M	6840	79265
18812	Handley Page O/10	4572	78260
18816	Canadair CL-601-2A12 Challenger	4512	103070
18824	de Havilland Canada DHC-6 Twin Otter 300	10716	103490
18828	Douglas DC-6A	4674	91660
18832	Fairchild C-123	4008	91185
18836	EMB 721C Sertanejo	6228	102730
18840	Lockheed  188A Electra	3486	85910
18844	Consolidated PBY-5A Catalina	1770	83750
18852	Lockheed KC-130F	2016	87950
18856	Ilyushin IL- 76TD	678	102090
18860	Tupolev TU-134	12672	100540
18864	Yakovlev 42D	8130	102585
18868	Gates Learjet 35A	10014	102680
18872	Hawker Siddeley Trident 2E	10566	94715
18876	Douglas DC-3	8058	85280
18880	Piper PA-34	864	93075
18884	Pilatus PC-12/45	13962	104240
18888	Cessna 441 Conquest	13170	93955
18892	Grumman G73T Turbo Mallard	1470	103350
18896	de Havilland Canada DHC-6 Twin Otter 300	1752	100485
18900	McDonnell-Douglas MD-82	8934	103075
18904	CASA 212-200 Aviocar	7500	97555
18908	Douglas DC-6	2562	84485
18912	Lockheed P-3C / Convair CV-990-30A-5	11652	91210
18916	Sikorsky S-58C helicopter	14304	86345
18920	McDonnell Douglas MD-11	4950	100885
18924	Rockwell Turbo Commander 690B	9048	99090
18928	Curtiss C-46F-1-CU	12546	98690
18932	Douglas DC-3	13482	84260
18936	Cessna 404 Titan II	5094	96390
18940	Douglas DC-3	5376	94190
18944	McDonnell Douglas MD-82	9846	103275
18948	Britten Norman BN-2A Trislander	2832	97135
18952	Ilyushin IL-18L	84	92525
18956	Vickers 804 Viscount	14520	87945
18960	Stearman 4	7836	79430
18964	de Havilland Canada DHC-6 Twin Otter 300	918	92955
18968	McDonnell Douglas MD-81	14166	96830
18972	Fokker F-28 Fellowship 1000	13896	91065
18976	Robertson R44 helicopter	2802	102770
18980	Douglas DC-3	13320	91805
18984	Mitsubishi MU-2B-60	14322	95000
18988	CASA  CN-235-200	7326	101970
18992	Douglas DC-6	11304	88500
19004	Douglas DC-3	10992	86225
19008	Sud Aviation Caravelle 1	6828	86180
19012	Tupelov 134AK	12330	103675
19016	Junkers JU86 Z-2	4950	80570
19020	de Havilland Canada DHC-4A Caribou	13386	96565
19024	de Havilland Canada DHC-6 Twin Otter 300	13692	93460
19028	Junkers F-13	3210	79720
19032	Antonov 24B	7368	102520
19036	Douglas C-47-DL	9006	81080
19040	Douglas DC-3D	9264	83695
19044	McDonnell Douglas DC-10-10	2988	91435
19048	Vickers Viscount 724	13854	90975
19052	McDonnell Douglas DC-8-62	13536	89300
19056	Boeing B-707 (E-3B)	9006	99810
19060	Piper PA-23-250	270	98495
19064	Douglas DC-3	3606	83835
19068	British Aerospace Nimrod MR-2P	9450	99765
19072	Douglas C-47A	3288	92100
19076	Fairchild C-123K	9006	90160
19080	Douglas DC-3	4338	81480
19084	Douglas DC-2-112	11004	79920
19088	Cessna 337F	10722	93175
19092	Douglas DC-3	8592	88910
19096	Cessna 402	12288	94350
19100	Tupolev TU-104B	3630	90470
19104	Cessna 310J	14322	91140
19108	Junkers JU-52/3m	3210	80130
19116	de Havilland Canada DHC-6 Twin Otter 100	4944	95515
19120	Vickers Viscount 754D	9336	87135
19124	Airbus A300B4-622R	14688	99215
19128	Junkers F-13	4890	79990
19132	de Havilland DH.50J	12264	78730
19136	Cessna 402	8160	92265
19144	Sikorsky CH-53D (helicopter)	5772	92820
19148	Boeing 377-10-26 Stratocruiser	1302	83965
19152	Curtiss C-46A-55-CK	13902	90310
19156	Douglas C-47-DL	1086	92180
19160	PBY-5A Catalina	8004	88410
19164	de Havilland Canada DHC-6 Twin Otter 200	13776	95905
19168	Fairchild F-27	3912	87115
19172	Piper PA-32-301	6258	99700
19176	Convair CV-240-12	11394	84400
19180	Let 410UVP-E	978	102110
19184	Douglas DC-4	13380	92090
19188	Fairchild-Hiller FH-227D/LCD	9864	90955
19192	Beechcraft 99A	4740	91515
19196	Lockheed 14 Super Electra	10026	80635
19200	Boeing C-135A	9006	87875
19204	Short S-23	12264	81030
19208	Mil Mi-18 Helicopter	3900	101880
19212	Antonov AN-22A	7266	98695
19216	Douglas DC-7C	12840	86330
19220	Convair CV-640	204	89695
19224	Fairchild F-27	3198	86775
19228	de Havilland DHC-2	14322	100455
19232	Antonov An-24RV	10680	97520
19236	Junkers JU-52/3m	3210	80740
19244	Airbus A-340	9264	103255
19248	Sikorsky S-38B	990	79790
19252	Britten Norman BN-2A Trislander Mk3	5982	104185
19256	Curtiss C-46A	1914	81460
19260	Cessna 172	1842	89205
19264	Douglas DC-3	12006	84805
19268	Dornier Merkur	3210	79610
19272	Ford 5-AT-B Tri Motor	7392	79910
19276	Fokker F-VII	11394	79120
19280	Beech C-45H	4164	88830
19284	Douglas C-47	7992	87060
19288	Curtiss C-46A-50-CU	14166	85880
19292	Latecoere 28	5682	79040
19296	Salmson 2-A-2	12714	78165
19300	Cessna 208B Caravan I	13776	100660
19304	Boeing B-727-134	12282	102170
19308	Boeing B-747-168B / Ilyushin IL-76TD	9960	100245
19312	Britten-Norman BN-2A-8 Trislander	9546	93010
19316	Douglas C-47A	6720	85790
19320	Douglas DC-3	3918	82910
19324	Douglas C-47A	666	81930
19328	Douglas DC-2	8418	80175
19332	Curtiss C-46F	4008	87280
19336	Handley Page Halifax C-8	14682	82695
19340	Cessna 180	3216	88225
19344	Convair CV-440	9684	102855
19348	Aero Commander 500-B	8646	90120
19352	Piper PA-31-350 Navajo Chieftain	8598	102605
19356	Boeing Vertol CH-47A (helicopter)	9732	90420
19360	Lockheed L-1011	3828	95055
19368	Lockheed C-130	12342	94070
19372	Antonov AN-30	3630	98395
19376	Boeing - 377-10-29 Stratocruiser	1302	85500
19380	Cessna 208B Caravan I Super Cargomaster	6678	101725
19384	Douglas DC-7CF	5250	92615
19388	Boeing B-737-401	14034	97365
19392	McDonnell Douglas DC-8-61	13536	94650
19396	McDonnell Douglas DC-9-32	11166	90650
19400	Antonov AN-32B	3120	103445
19404	Lockheed L-749A Constellation	5736	94530
19408	McDonnell Douglas MD-83	828	101455
19412	Boeing 40	7818	79410
19416	Douglas DC-4  (C-54-10-DO)	888	84225
19420	Douglas DC-6	3996	97120
19424	Lockheed 18 Lodestar	8646	85605
19428	de Havilland DHC-3	516	94135
19432	Shorts 360-100 /Shorts 360-300	7254	103395
19436	Fairchild C119G / Fairchild C119G	396	84905
19444	Beechcraft 58	1788	98810
19448	Boeing B-737-2L9	7344	103325
19452	Beechcraft 65-80	7284	93405
19456	Beech 58	7182	93565
19460	Douglas C-47A	2724	82730
19464	Douglas DC-3A-228D	12498	82010
19472	Britten Norman BN-2A Trislander	13938	101065
19476	McDonnell Douglas DC-8-63CF	6012	90080
19480	Antonov 12V	3966	103315
19484	Cessna 208B Caravan I	5058	101385
19488	de Havilland Canada DHC-6 Twin Otter 300	12090	101640
19492	Douglas C-47D	9006	83820
19496	Britten-Norman BN-2A-6 Islander	654	92880
19500	Junkers F-13	3210	79460
19504	Boeing 727-23F	4410	103525
19508	Lockheed 1049E-55 Super Constellation	6336	85125
19512	Beechcraft 99A	7590	104060
19520	Lockheed 12A	7380	87580
19524	Let 410UVP-E	2178	102665
19528	Vickers Valetta	4542	84465
19532	Junkers JU90V2	3210	80455
19536	Handley Page HPR-7 Herald 101	10740	91430
19540	Lockheed AC-130A Hercules	9006	90655
19544	Beechcraft 58TC	14322	94450
19548	Douglas DC-3	10050	85110
19552	Douglas C-47	990	81150
19556	Antonov AN-26	9402	97210
19560	Boeing 747-246F	7044	102080
19564	Lockheed 049 Consellation	11004	82145
19568	Boeing Vertol Chinook HC-2 (helicopter)	9450	99170
19572	Fokker F-27 Friendship 600RF	8748	97230
19576	Douglas DC-4	9402	85925
19580	Cessna 404 Titan II	294	97390
19584	Douglas DC-3	12462	88460
19588	Fokker F-28 Fellowship 1000	3108	96985
19592	Antonov AN-24B	13746	92250
19596	Lockheed 14 Electra	2946	80875
19604	de Havilland Canada DHC-6 Twin Otter 300	8568	100120
19608	Piper PA-32-260	9888	96800
19612	Swearingen SA.227AC Metro III	12366	94915
19616	Cessna 207	1908	93480
19620	Junkers F-13	11754	79825
19624	Avia 14M-40	9174	98655
19628	Douglas C-124C	9006	87760
19632	Douglas DC-3	9678	87705
19636	Cessna T210L	7338	98330
19640	Piper PA-23-250	486	92060
19648	Beechcraft E18S	1068	91375
19656	Douglas C-54B-1-DC	1326	86565
19660	Douglas C-54A	10986	83675
19664	Boeing RC-135S	9006	94335
19668	Ford 5-AT-C Tri Motor	7836	79210
19672	Cessna 525 CitationJet I	6906	103300
19676	Douglas DC-3	6840	80445
19680	ATR-72-202	11094	103260
19684	Fokker F-27 Friendship 200	6648	102555
19688	Transall C-160	7782	91990
19692	Sirkorsky 44A (flying boat)	13950	80945
19696	Cessna 172G	13458	102840
19700	Cessna 172N	5844	102010
19704	Lockheed 188A Electra	3828	86405
19708	Douglas C-47B	9450	82565
19712	Beechcraft King Air B200	7812	103905
8	Piper Aerostar 601 / Bell 412SP	8646	98010
16	Airbus A330-321	2136	99285
20	Cessna 208 Grand Caravan I	10242	102880
24	Lockheed L-1649A Starliner	10980	88420
28	Junkers F-13	3006	78415
32	Douglas DC-3 / Avro Anson	10254	82960
36	Boeing B17G	13488	81885
40	Lockheed L-1011-100	1500	96065
44	Pilatus PC-6 Turbo Porter / Cessna 206	9258	100535
48	Bell 47G3B1	11808	92500
52	Vickers Viscount 812	7872	87125
60	Cessna 402C	14370	100860
72	Fairchild-Hiller FH-227-B	12078	90635
76	Hawker Siddeley HS-748-209 Srs. 2	2562	94790
80	Liore et Olivier H-246 Air Boat	9264	80905
84	Potez 621	9264	80285
88	MDonnell Douglas 369FF Rotocraft	2364	103665
92	Beechcraft D18S	9570	88550
96	Douglas C-47B	13488	81815
100	Fokker (KLM) F.III	6840	78715
19716	Caudron C.635 Simoun	9264	80545
19720	Junkers Ju-52/3m	5448	82355
19724	Blackburn Beverley C Mark 1	4542	85310
19732	Mi-8MTV-1	12276	102935
19736	Cessna 402B	804	95880
19740	Sikorsky S-62A	2538	93985
19744	Douglas DC-3	14052	83360
19748	Fokker F-27 Friendship 100	10050	89510
19752	Antonov AN-10A	3630	86880
19756	Beech Queen Air B80	6126	99600
19760	Douglas DC-7C	3570	86765
19764	Vickers Viscount 748D	12000	85710
19768	de Havilland 110	10860	84040
19772	Douglas DC-3	3486	80800
19776	Piper PA-31-350 Navajo	7608	96650
19780	de Havilland 104-6A	4926	88160
19784	Lockheed L188A Electra	10458	89065
19788	Focke-Wulf FW 200	3210	81500
19792	Cessna 208B Caravan I Super Cargomaster	10518	100710
19796	Dewoitine D-338	9264	80655
19800	Aerospatiale ATR-42-300	2808	99355
19804	Convair CV-240-2	5310	87085
19808	Douglas C-47D	9006	88405
19812	Boeing B-747-412	11784	101750
19816	Fokker F-XXII	4578	79955
19820	Boeing B-737-2A8	10050	91255
19824	Douglas DC-3	9264	86930
19828	Short Sunderland 9 (flying boat)	4542	83510
19832	Vickers 813 Viscount	10620	99120
19836	Helo 295	6786	92940
19840	Douglas DC-3 (C-47-DL)	3960	89120
19844	Boeing 247	11016	79530
19848	McDonnell Douglas DC-8-43	2748	86895
19856	Boeing KC-135A	9006	88920
19860	Douglas DC-6	8184	92360
19864	Convair CV-240-2	9078	89810
19868	Short Kent	1146	80000
19872	Antonov AN-10A	3630	86740
19876	Antonov AN-24RV	10680	91915
19880	Douglas DC-2-172	1950	82525
19884	Antonov AN-24RV	924	97310
19888	Bell 296B	14322	95970
19892	de Havilland DH-84	12264	83795
19896	Fokker F-10	7836	79365
19900	Douglas C-54B-15-DO	12480	82220
19904	Boeing B-707-437	5508	94770
19908	Douglas DC-3	540	91130
19916	Fairchild C-119C	9006	84090
19920	Ilyushin IL-62M	10476	97330
56	Pitcairn PA-6 Mailwing	942	\N
64	Ilyushin IL-12	3630	\N
68	Sud-Aviation SE210 Caravelle	2922	\N
120	S2F-1 / HSS-2	12216	\N
136	Douglas M-3	11016	\N
140	Stearman M-2 Speedmail	5304	\N
308	Fokker F-27 Friendship 400M	3522	\N
424	Antonov An-12	1428	\N
488	Boeing B-29 / Boeing B-29	7404	\N
584	Douglas C-54G (DC-4)	9006	\N
592	KJ-2000	12798	\N
676	Mil Mi-17	10452	\N
708	Douglas C-47	990	\N
800	Boeing Vertol CH-47 (helilcopter)	1404	\N
980	Boeing B-727	3486	\N
1080	Fairchild C-119G	10806	\N
1092	Antonov An-24	7854	\N
1096	Northrop Alpha	11004	\N
1256	SPCA Meteore 63	5052	\N
1384	Lockheed Hudson A16-97	8490	\N
1444	Douglas C-54 Skymaster	420	\N
1636	Antonov AN-12	7854	\N
1776	Boeing B-34	9006	\N
1832	Bell UH-1N	4488	\N
1972	Ilyushin IL-18	3630	\N
2184	Mil Mi-17 ( helicopter)	3726	\N
2280	Pitcairn PA-6 Mailwing	7638	\N
2436	Fairchild C-123	1404	\N
2488	Bell UH-1H	5514	\N
2564	Latecoere 25	5682	\N
2568	\N	3630	\N
2576	McDonnell Douglas MD-82	6900	\N
2624	Rockwell International 690B	312	\N
2724	Mil Mi-8 / Mil Mi-8	3726	\N
2824	Fairchild C-119	10806	\N
2860	Breguet 14	5412	\N
2924	Douglas C-47	1404	\N
3120	Douglas M-4	11016	\N
3312	Stinson SM-6000B	522	\N
3360	Hamilton H-47	1338	\N
3428	McDonnell Douglas DC-10-30	9564	\N
3436	Black Hawk helicopter	12738	\N
3456	Loening C-2C	13194	\N
3572	Latecoere 26	5682	\N
3632	Lisunov Li-2	4110	\N
3724	Mil Mi-17 (helicopter)	6858	\N
3780	Antonov AN-12	13092	\N
3932	Lockheed C-130B Hercules	5916	\N
3940	Douglas C-47	8028	\N
4012	Antonov AN-32	3726	\N
4024	de Havilland Canada DHC-3 Otter	2562	\N
4064	Travel Air 4000	1122	\N
4120	MDonnell Dougals DC-9	8406	\N
4132	Antonov AN-12V	3630	\N
4348	Junkers F-13	12822	\N
4380	MiG-15 UTI	7266	\N
4404	Douglas DC-3	10188	\N
4548	Piper PA-31-350 Navajo	3270	\N
4692	Mil Mi-8 (helicopter)	9852	\N
4776	Ford Tri-motor 5	8334	\N
4836	Boeing B-737-200	12150	\N
4848	Sikorsky UH-60L Black Hawk	12576	\N
4944	Douglas DC-3	990	\N
4976	Fairchild C-82	9006	\N
5052	CH-53D	2016	\N
5088	Airship	2004	\N
5200	Mi-35	3774	\N
5276	Boeing B-747	1092	\N
5552	Mil Mi-8	7536	\N
5580	Zeppelin L-34 (airship)	9588	\N
5836	Fokker Universal F-14	6990	\N
5848	Fairchild 71	14832	\N
5904	Latecoere 28	5682	\N
5928	Zeppelin L-53 (airship)	9588	\N
6044	Bell UH-1H	12396	\N
6096	Consolidated B-24	8808	\N
6120	Douglas C-47	3252	\N
6176	Ilyushin 14	3630	\N
6208	Antonov 32	2322	\N
6268	Zeppelin L-43 (airship)	9588	\N
6320	Fairchild Pilgrim 100A	7836	\N
6344	Cessna 208B Grand Caravan	2964	\N
6436	Douglas DC-3	9066	\N
6544	Beechcraft 18	12450	\N
6788	Dirigible Roma (airship)	6834	\N
6828	Antonov AN-26	3930	\N
6912	Stinson SM-2A	12240	\N
6928	Douglas DC-3	4188	\N
7076	Zeppelin L-44 (airship)	9588	\N
7080	Mil Mi-8	3726	\N
7140	Douglas DC-3	9402	\N
7220	LatÃ©coÃ¨re 23	12714	\N
7232	Dornier DO.18	3210	\N
7380	\N	12798	\N
7384	Antonov An-24	10560	\N
7388	Douglas DC-3	4218	\N
7648	Dirigible	8928	\N
7748	Travel Air 6000	7938	\N
7764	Consolidated B-24 Liberator	9732	\N
7956	Antonov AN-26	3726	\N
7968	Nakajima DC-2	6708	\N
7988	Boeing Vertol CH-47 (helicopter)	1404	\N
8028	Bell UH-1H / Bell UH-1H / Bell UH-1H	9732	\N
8056	Boeing Vertol CH47A (helicopter)	9732	\N
8116	Ford Tri-Motor	14004	\N
8144	Antonov AN-26	7980	\N
8188	Antonov AN-26	3630	\N
8248	Douglas DC-3	7020	\N
8252	CF-100 Mark V	8808	\N
8364	Ford 5-AT-D Tri-Motor	990	\N
8488	Zeppelin L-70 (airship)	9588	\N
8512	\N	5304	\N
8556	Zeppelin L-22 (airship)	9588	\N
8712	Ilyushin IL-14	10806	\N
8724	Stearman C-3MB	14664	\N
8732	H-21B	1602	\N
8824	Douglas C-47A	13344	\N
8884	Britten-Norman BN-2A-27 Islander	948	\N
8924	Piper PA-31	14322	\N
8980	CASA 212 Aviocar	6588	\N
9024	Boeing 737-200	11136	\N
9048	Ilyushin IL-18	7854	\N
9060	Consolidated B-24	13488	\N
9068	Fokker Universal	942	\N
9080	Super Zeppelin (airship)	2004	\N
9180	Zeppelin L-31 (airship)	9588	\N
9248	Lockheed C-130H	12912	\N
9260	Antonov AN-26	7926	\N
9376	Farman F-121 Jabiru	2646	\N
9400	Loening C-W Air Yaht	990	\N
9408	Yakovlev YAK-40	1164	\N
9412	Mi-17 Helicopter	14628	\N
9468	Mi-8 helicopter	8646	\N
9540	Curtiss-Wright C-14 Osprey	4992	\N
9724	Fokker F-VIII	6840	\N
9788	Antonov AN-32	2322	\N
9792	\N	4014	\N
9816	Fairchild FC-2	942	\N
9856	Curtiss-Wright C-46	14772	\N
10044	Pitcairns PA-6	390	\N
10120	Consolidated LB-40-A Liberator	4542	\N
10132	Antonov AN-24	7674	\N
10512	Mil Mi-8 (helicopter)	3726	\N
10556	Antonov An-12	10806	\N
10620	Antonov AN-22	3726	\N
10656	Zeppelin L-59 (airship)	9588	\N
10696	Bristol 175 Britannia 312	666	\N
10724	Curtiss-Wright Hawk	6858	\N
10816	Antonov AN-24	2322	\N
10824	Douglas C-54	9732	\N
10908	Boeing Vertol CH-47 (helicopter)	9732	\N
10912	Zeppelin L-1 (airship)	9588	\N
11060	Northrop F-5A	2760	\N
11108	MiG-23	10806	\N
11252	Britten-Norman BN-2A Trislander	1266	\N
11272	Boeing B-747	10992	\N
11384	Mi-8	10866	\N
11400	Zeppelin L-23 (airship)	9588	\N
11468	Zeppelin L-32 (airship)	9588	\N
11684	Sinson	990	\N
11688	CASA NC-212-200	5472	\N
11816	Stearman C-38	5304	\N
11848	Bell UH-1H / Bell UH-1H (helicopters)	13788	\N
11924	Fairchild 71	1464	\N
11956	Antonov AN-12	3726	\N
11972	Antonov AN-12	7266	\N
11976	Bell UH-1H / Bell UH-1H	1128	\N
12124	Fairchild FC-2	13134	\N
12208	Junkers W-33	3210	\N
12252	Douglas C-47	4368	\N
12256	Zeppelin L-2 (airship)	9588	\N
12332	De Havilland DH.80	8550	\N
12396	Junkers JU-52/3m	13638	\N
12480	Antonov AN-26	7854	\N
12568	Lisunov Li-2	3630	\N
12828	Curtiss Carrier Pigeon	12642	\N
12856	F-88 Sabre Jet	9006	\N
12940	Lockheed 18-56 Lodestar	7146	\N
12948	Mil Mi-8 (helicopter)	10806	\N
13196	Consolidated Liberator	9450	\N
13204	PS-1	12216	\N
13280	CH-47 Chinook	9732	\N
15592	Mi 8	5790	\N
13500	Five Grumman TBM Avengers	8928	\N
13524	Wibault 280	9264	\N
13548	Fairchild FC-2	8664	\N
13560	Piper PA-31-350 Navajo	3342	\N
13584	Schutte-Lanz S-L-10 (airship)	2004	\N
13592	Schutte-Lanz S-L-9 (airship)	9588	\N
13656	Fairchild	11262	\N
13676	Lockheed P2V-7	12216	\N
13796	Lockheed C-130	12120	\N
13808	Siebel Si-204	3210	\N
13896	Potez IX	2646	\N
13908	Lockheed Hercules C-130	12120	\N
13968	Douglas DC-3	12006	\N
14036	Antonov An-32	10806	\N
14068	Douglas C-47	9732	\N
14156	Douglas C-47	13488	\N
14168	Curtiss seaplane	8646	\N
14176	\N	990	\N
14264	Zeppelin L-8 (airship)	9588	\N
14480	Tupolev TU-104	3630	\N
14600	PS-1 amphibious ASW	12216	\N
14612	Mil Mi-8 (helicopter)	14436	\N
14656	Douglas C-47	5886	\N
14676	Cessna 310R	1014	\N
14968	Breguet 14	5682	\N
15008	Sikorsky S-38B	990	\N
15020	Mil Mi-8 (helicopter)	7854	\N
15100	Antonov AN-26	10554	\N
15136	Sepecat Jaguar A	2202	\N
15192	Stearman C-38	8658	\N
15220	Farman F-190	10962	\N
15224	Lockheed C-130 Hercules	5916	\N
15356	Antonov An-12 - Ilyshin IL-14	3462	\N
15476	Mil Mi 8T (helicopter)	7266	\N
15504	Boeing B-29	9006	\N
15528	Lockheed P-3A Orion	8928	\N
15552	Eurocopter AS 332L2 Super Puma 2	7842	\N
15704	Ilyushin IL-76	7584	\N
15772	KB-50	9006	\N
15788	Mil Mi-8 (helicopter)	7536	\N
15828	Zeppelin L-10 (airship)	9588	\N
15832	Junkers JU-52	11850	\N
15840	Curtiss C-46	4620	\N
15936	Douglas DC-3	14814	\N
16232	Kalinin K-7	10218	\N
16352	Sikorsky S-43	990	\N
16496	Douglas DC-3 Dakota	5142	\N
16552	Stinson	990	\N
16636	Stinson SM-6000B	12762	\N
16712	Douglas C-47	1236	\N
16724	Douglas C-47	13344	\N
16864	Fokker F-VII	2646	\N
16996	Fokker F-10A	7836	\N
17088	Nord 2501 Noratlas	8250	\N
17108	\N	6990	\N
17124	Ilushin Il-76TD	12666	\N
17184	Fokker 100	1206	\N
17248	Mi-17	8040	\N
17344	Hindustan Aeronautics 748-2	10806	\N
17380	Hawker Siddeley HS 125-400B (3)	13668	\N
17428	Fairchild C-199G	13788	\N
17740	Curtiss C-46	1998	\N
17816	Boeing 40	7818	\N
17884	Boeing B-747	14058	\N
17928	Travel Air 4000	8658	\N
18036	F-4C Phantom jet fighter	3222	\N
18056	PBY4-2 Privateer / PB4Y-2 Privateer	10608	\N
18096	Antonov AN-32	36	\N
18116	Aermacchi MB-339PAN (3 aircraft)	5286	\N
18152	Travel Air B6000	14694	\N
18220	CASA CN-235M-10	2760	\N
17876	Douglas DC-3	13482	84215
18276	Lockheed C-130HF	12120	\N
18288	CH-47D Chinook	2676	\N
18380	Boeing B-50	9006	\N
18460	De Havilland DH-4	12642	\N
18516	Ilyushin IL-18	3726	\N
18584	Stearman C-3MB	5340	\N
18624	Wright Flyer III	9732	\N
18336	Boeing 737-2A1C	14562	98485
18628	de Havilland Canada DHC-6 Twin Otter 300	10716	\N
18652	Beechcraft 1900C-1	7458	\N
18696	Antonov AN-12	3630	\N
18736	Pitcairn PA-6 Mailwing	7836	\N
18764	Ford 5-AT Tri-Motor	990	\N
18820	Mil Mi-4 / Mil Mi-4	6540	\N
18848	Fairchild C-119C-23-FA Flying Boxcar	9006	\N
18996	Curtiss C-46	990	\N
19112	\N	10806	\N
19140	Bell Huey UH-1H	13344	\N
19240	CH53E Sea Stallion	6252	\N
19364	\N	1866	\N
19000	Cessna 172D	14094	88195
19440	McDonnel F-4E Phantom II	4962	\N
19516	Mi-17	11274	\N
19600	Fairchild C-123	14772	\N
19644	Junkers JU-86	3210	\N
19652	UH-60 Blackhawk helilcopter	9732	\N
19728	Bleriot Spad 56	2646	\N
19852	Sikorsky S-58T	1338	\N
19912	Travel Air A6000A	11532	\N
19944	Beechcraft King Air C90	10416	\N
20036	Douglas C-47A	2742	\N
20044	B-17C Flying Fortress	13488	\N
20068	Douglas DC-4	13344	\N
20080	Mi-8 helicopter	14268	\N
20088	Curtiss C-46	3072	\N
20164	Cessna 206	9408	\N
20168	Douglas C-47	1902	\N
20264	Antonov AN-26B	13350	\N
20272	Ilyushin IL-14	3630	\N
20528	Douglas C-47	12798	\N
20580	Curtiss C-46	13044	\N
20692	De Havilland DH-4	5190	\N
19924	Douglas DC-6A	11586	92345
19928	Lockheed EC-121H	9006	88375
19932	Avro Lancaster 1	14550	86365
19936	Douglas C-47A	192	83975
19940	Douglas DC-3	14790	88325
19948	Britten Norman BN-2A Trislander	13530	93705
19952	Ilyushin IL-76TD	9714	100025
19956	Douglas C-49E	13488	80890
19960	Curtiss C-46F-1-CU	7104	88305
19964	Fokker (KLM)  F.III	6840	78430
20544	Yakovlev YAK-40	3630	96685
19972	Douglas DC-4	13662	85435
19976	Britten-Norman BN-2A-21 Islander	8916	101145
19980	Curtiss C-46D	1914	81615
19984	Boeing B-707-465	10026	89015
19988	Cessna 414A	3654	96075
19992	Lockheed WC-130H Hercules	9006	91795
19996	Cessna 404 Titan	3972	94775
20000	Bristol Britannia 175	6144	85495
20004	Fokker F-4	6840	78485
20008	Boeing B-737-2H7C	4332	95470
20012	Ilyushin II-76TD	8010	103105
20016	Douglas DC-3	10446	88605
20020	Douglas DC-3	4050	87975
20024	Fokker F-27 Friendship 200	48	90725
20028	Vickers 757 Viscount	9276	89490
20032	Fokker F-27 Friendship 200	2862	97320
20040	Dewoitine D-342	9264	80930
20048	Tupolev TU-154B	3630	93265
20052	Antonov AN-26	6420	101755
20056	Aerospatiale AS-350B	1116	98620
20060	Antonov AN-24V	3630	91520
20064	Airbus A.300B4-203	11166	96525
20072	de Havilland Canada DHC-6 Twin Otter 200	1680	89305
20076	Lockheed C-130H-30	5172	98210
20084	Britten-Norman BN-2A-27 Islander	6114	99925
20092	Cessna 180H	8730	91115
20096	Latecoere 26	5682	78680
20100	Embraer 110C Bandeirante	7806	95395
20104	Douglas DC-6A	1314	87855
20108	Douglas DC-3	11004	81355
20112	Fokker F-27 Friendship 500	12612	90245
20116	Piper PA-32-260	450	101255
20120	\N	5412	78400
20124	Piper PA-32R-300	7014	99710
20128	Douglas DC-3	6336	86275
20132	McDonnell Douglas DC-8 Super 63PF	2130	95950
20136	De Havilland DH-60	5688	80290
20140	Douglas C54A	4872	88645
20144	Ilyushin IL-18	3630	86360
20148	Douglas C-47A	9216	84055
20152	Consolidated LB-30A Liberator	4542	81550
20156	McDonnell Douglas DC-8	3954	89165
20160	Embraer 110C Bandeirante	2412	98350
20172	Bell 47G3B1	8100	89620
20176	Douglas DC-3	3486	81070
20180	Douglas DC-3D	14688	89385
20184	Lockheed Hudson VI	10026	81050
20188	Boeing B-727-23	3486	88030
20192	Curtiss C-46E-1-CS	7194	83095
20196	Antonov AN-28	4128	103520
20200	Piper PA-32	12360	88360
20204	Cessna 208 Caravan	7530	101510
20208	Douglas C-53	990	81015
20212	Cessna 402C	12156	98690
20216	Boeing B-727-251	12840	91875
20220	Sikorsky S-43B (flying boat)	12498	82150
20224	Cessna 208B Grand Caravan	3504	103390
20228	Boeing B-737-31B	2406	100435
20232	Tupolev 154M	9018	101845
20236	Tupolev TU-124	3630	92285
20240	MH-47 Chinook helicopter	9732	102195
20244	Boeing B-727-46	4620	98890
20248	Yakovlev YAK-40	3630	94090
20252	Douglas DC-3	3576	86095
20256	Embraer 120ER Brasilia	4134	102385
20260	Boeing B-737-200	14562	94745
20268	Beechcraft 1900C-1	12318	104110
20276	Airbus A330-203	9264	104295
20280	Fokker F-27 Friendship 400M	13920	98735
20284	Gates Lear 25	7482	91385
20288	Britten Norman BN-2B Trislander	8790	102120
20292	Piper PA-28R	11826	93100
20296	de Havilland Comet 4	12558	90005
20300	Focke-Wulf FW 200	3210	81315
20304	Douglas C-47A	10266	86755
20308	Ilyushin IL-18V	3630	92750
20312	Antonov AN-2	1944	102205
20316	CASA 212 Aviocar 200	14100	96690
20320	Antonov AN-2	264	100255
20324	Douglas DC-3	426	82485
20328	Cessna U206	13020	95085
20332	Lockheed 749-79-34 Constellation	6336	85235
20336	Avro 685 York C-1	14808	84860
20340	Antonov 32B	5268	101760
20344	Douglas DC-2	990	80085
20348	Beech B60	10314	92430
20352	Douglas C-47B-DK	9006	86325
20356	Lockheed C-130 Hercules	10542	92255
20360	Douglas C-47A	5442	83115
20364	Junkers JU-52/3m	3210	80235
20368	Vickers 952F Vanguard	11790	97090
20372	Douglas DC-3	13902	85120
20376	Douglas C-47	12438	92315
20380	Curtiss R-4LM	12642	80405
20384	Caudron C-630 Simoun	11580	79860
20388	Douglas DC-C-54A	8574	88845
20392	de Havilland DHC-2	9384	91800
20396	CAMS 53	10962	79355
20400	Cessna 402B	12474	97110
20404	Junkers JU-160	3210	79960
20408	Stinson AT-19	828	85175
20412	Convair CV-240-0	3486	84385
20416	Swearingen SA.226AT Merlin IV	10776	99135
20420	Boeing B-757-223	3486	101980
20424	Short Sunderland	1092	85545
20428	Boeing 707-327C	6666	93715
20432	McDonnell Douglas DC-8-62	6828	89410
20436	Douglas DC-4	1302	86060
20440	Embraer 110P1 Bandeirante	1818	100225
20444	Sud-Aviation Caravelle 10-R	11700	91320
20448	Swearingen SA.226TC Metro II	3192	99255
20452	Breguet 14	5682	78620
20456	Dornier Do-288-201	1110	97380
20460	Bell 206B	11562	99555
20464	Savoia-Marchetti SM73	3480	80385
20468	Embraer 110P1 Bandeirante	8820	95545
20472	Convair CV-240-0	3486	85270
20476	\N	14778	83690
20480	IAI 1124 Westwind	6156	100370
20484	Embraer EMB-120 Brasilia	11490	102140
20488	Curtiss C-46D-15-CU	7944	85885
20492	BAe 3101 Jetstream 31	5484	98385
20496	de Havilland Canada DHC-5D Buffalo	7884	93670
20500	Douglas DC-3	14232	90125
20504	Saab340B	3204	100725
20508	Piper PA-23	14148	89130
20512	Douglas C-47A-5-DK	810	94370
20516	Piper Cherokee Arrow  PA-28	4380	93215
20520	Douglas DC-6	6840	83910
20524	de Havilland Canada DHC-6 Twin Otter 300	918	93305
20536	de Havilland Canada DHC-6 Twin Otter 100	6390	92025
20540	Lockheed C-130H	2598	96630
20548	Ilyushin IL-18V	6924	91955
20552	Junkers F-13	12642	78155
20556	Douglas C-47A	3756	91245
20560	Piper PA-42	14322	95785
20564	Douglas C-47A-DL	13488	81685
20568	McDonnell Douglas DC-9-14	8406	90745
20572	Breguet 14	12714	78170
20576	Antonov AN-26	7218	102190
20584	Beechcraft C90	14322	97315
20588	Lockheed L-100-20 Hercules	7704	94180
20592	Piper PA-23	6414	89760
20596	Cessna 208B Grand Caravan I	1890	103330
20600	Convair CV-440-80	2994	98570
20604	Tupolev TU-134A	3630	97535
20608	Cessna 172N	7422	99550
20612	Junkers JU52/3m	3210	81295
20616	\N	12642	78230
20620	Martin 202A / DC-3	13818	84760
20624	Breguet 14	5682	78205
20628	Aerospatiale AS350BA Rotocraft	11934	103660
20632	Ilyushin IL-18D	10476	95605
20636	Douglas C-54D-DC (DC-4)	9006	83380
20640	Douglas DC-3A	4854	80965
20644	Mitsubish MU-2 uise	13308	97045
20648	Beechcraft D18	8094	93195
20652	Beechcraft C-45H	8466	89895
20656	Piper PA-31	14322	93335
20660	Douglas C-47A	9216	87995
20664	Tupolev TU-124	3630	90070
20668	Cessna 320	3780	89600
20672	EMB 810C Seneca	13716	102045
20676	Douglas DC-3	7092	82070
20680	Douglas C-47A-60-DL	11394	83165
20684	Douglas DC-3C	828	82925
20688	Lockheed EC121R	9006	89670
20696	Shorts SC-7 Skyvan 3-100	8538	96560
20700	Douglas C-47	5766	92890
20704	Cessna 207	12810	92415
20708	Douglas DC-3	2010	89020
20712	Douglas DC-3C	12768	91980
20716	Domier Delphin III	120	78885
20720	Douglas DC-2	8418	80340
20724	Hindustan Aeronautics 748-2M	10806	93680
20728	Vickers 615 Viking 1B	5112	85385
20732	Lockheed L-188C Electra	6840	86560
20736	CAMS 53	9264	79890
20740	Cessna 208B Caravan	3528	99845
20744	Sikorsky S-42 (flying boat)	1302	80245
20748	Beechcraft BE-99-C99	1542	98095
20752	Douglas C-47	9216	86910
20756	Cessna 208 Caravan I	1776	97410
20760	Lockheed 14 Super Electra	1146	80615
20764	Embraer 110P1 Bandeirante	2292	94490
20768	Fairey Firefly MK1	11214	82025
20772	Fokker F.III	6840	78385
20776	Cessna R182	1986	95510
20780	Boeing KC-135A / Boeing KC-135A	5226	87315
20784	Embraer 120RT Brasilia	4404	100335
20788	Douglas C-47DL	2292	92645
20792	Curtiss-Wright C46D-CU	9006	84500
20796	Douglas DC-3	14634	83770
20800	Cessna 402C	5646	98480
20804	Fokker F-27 Friendship 600	7068	101570
20808	Douglas DC-3	11982	90460
20812	de Havilland DH-86A	5814	81545
20816	Boeing Vertol CH-47C	9732	90525
20820	Antonov AN-9	4986	80035
20824	Convair CV-580	13722	90350
20828	Tupolev TU-134	13314	92175
20832	Fokker F-27 Friendship 200	2862	87890
20836	Douglas DC-3	84	82860
20840	Douglas DC-3	4338	81745
20844	Tupolev TU-154M	6816	101915
20848	Fokker F-27 Friendship 100	10914	98140
20852	Aerostar 601P	6882	93455
20856	Lockheed C-130H	2658	97660
20860	Douglas DC-3	14652	83535
20864	Douglas DC-3	11004	81390
20868	Douglas C-47A	3042	97125
\.


--
-- TOC entry 2848 (class 0 OID 41772)
-- Dependencies: 209
-- Data for Name: baja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.baja (id, fatalities, ground) FROM stdin;
3	1	0
6	5	0
9	1	0
12	14	0
15	30	0
18	21	0
21	19	0
24	20	0
27	22	0
30	19	0
33	27	0
36	20	0
39	20	0
42	23	0
45	21	0
48	24	0
51	18	0
54	18	0
57	23	0
60	22	0
63	19	0
66	1	0
69	1	0
72	1	0
75	1	0
78	1	0
81	\N	\N
84	1	0
87	1	0
90	1	0
93	1	0
96	1	0
99	1	0
102	1	0
105	1	0
108	1	0
111	2	0
114	2	0
117	1	0
120	2	0
123	2	0
126	1	0
129	1	0
132	4	0
135	1	0
138	1	0
141	3	0
144	2	0
147	1	0
150	1	0
153	1	0
156	1	0
159	1	0
162	1	0
165	2	0
168	46	1
171	5	0
174	3	0
177	5	5
180	34	0
183	7	0
186	17	0
189	3	0
192	1	0
195	3	0
198	3	0
201	1	0
204	4	0
207	2	0
210	1	0
213	3	0
216	1	0
219	1	0
222	1	0
225	6	0
228	2	0
231	1	0
234	6	0
237	2	0
240	1	0
243	52	0
246	1	0
249	1	0
252	3	0
255	3	0
258	1	0
261	1	0
264	1	0
267	8	0
270	5	0
273	4	0
276	2	0
279	4	0
282	2	0
285	1	0
288	1	0
291	14	0
294	3	0
297	2	0
300	1	0
303	1	0
306	1	0
309	7	0
312	2	0
315	4	0
318	4	0
321	2	0
324	4	0
327	0	0
330	3	0
333	1	0
336	2	0
339	1	0
342	3	0
345	1	0
348	1	0
351	2	0
354	1	0
357	5	0
360	1	0
363	1	0
366	7	0
369	2	0
372	6	0
375	2	0
378	4	0
381	1	0
384	6	0
387	1	0
390	2	0
393	1	0
396	4	0
399	3	0
402	2	0
405	2	0
408	1	0
411	1	0
414	1	0
417	10	0
420	2	0
423	1	0
426	9	0
429	1	0
432	2	0
435	3	0
438	5	0
441	1	0
444	6	0
447	4	0
450	1	0
453	7	0
456	3	0
459	1	0
462	7	0
465	3	0
468	3	0
471	1	0
474	1	0
477	1	0
480	3	0
483	1	0
486	3	0
489	5	0
492	14	0
495	6	0
498	3	0
501	1	0
504	4	0
507	2	0
510	1	0
513	1	0
516	2	0
519	1	0
522	2	0
525	14	0
528	4	0
531	6	0
534	2	0
537	4	0
540	2	0
543	1	0
546	7	0
549	1	0
552	5	0
555	1	0
558	4	0
561	1	0
564	1	0
567	4	0
570	1	0
573	8	0
576	3	0
579	5	0
582	1	0
585	1	0
588	7	0
591	1	0
594	2	0
597	4	0
600	7	0
603	3	0
606	1	0
609	1	0
612	3	0
615	2	0
618	5	0
621	1	0
624	3	0
627	16	0
630	2	0
633	5	0
636	1	0
639	2	0
642	4	0
645	3	0
648	1	0
651	5	0
654	5	0
657	10	0
660	2	0
663	3	0
666	48	0
669	8	0
672	4	0
675	3	0
678	3	0
681	1	0
684	1	0
687	3	\N
690	4	0
693	2	0
696	1	0
699	1	0
702	2	0
705	1	0
708	8	0
711	8	0
714	2	0
717	2	0
720	1	0
723	1	0
726	4	0
729	2	0
732	4	0
735	2	0
738	2	0
741	1	0
744	7	0
747	6	0
750	1	0
753	4	0
756	3	0
759	3	0
762	5	0
765	3	0
768	1	0
771	3	0
774	1	0
777	2	0
780	5	0
783	2	0
786	4	0
789	1	0
792	8	0
795	5	0
798	1	0
801	1	0
804	3	0
807	2	0
810	7	0
813	1	0
816	3	0
819	1	0
822	1	0
825	2	0
828	3	0
831	9	0
834	1	0
837	2	0
840	3	0
843	1	0
846	3	0
849	1	0
852	2	0
855	2	0
858	5	0
861	2	0
864	2	0
867	1	0
870	2	0
873	1	0
876	2	0
879	1	0
882	1	0
885	1	0
888	2	0
891	3	11
894	15	0
897	1	0
900	73	0
903	6	0
906	4	0
909	6	0
912	1	0
915	5	0
918	8	0
921	10	0
924	2	0
927	4	\N
930	1	0
933	8	\N
936	14	0
939	2	0
942	7	0
945	4	0
948	10	0
951	14	0
954	2	0
957	8	0
960	1	0
963	4	0
966	5	0
969	3	0
972	3	0
975	6	0
978	2	0
981	7	0
984	5	0
987	1	0
990	1	0
993	3	0
996	12	0
999	2	0
1002	\N	\N
1005	5	0
1008	3	0
1011	11	0
1014	2	0
1017	4	0
1020	4	0
1023	2	0
1026	3	0
1029	1	0
1032	4	0
1035	7	0
1038	1	0
1041	1	0
1044	11	0
1047	3	0
1050	3	0
1053	5	0
1056	1	0
1059	7	0
1062	1	0
1065	5	0
1068	3	0
1071	50	2
1074	1	0
1077	2	0
1080	6	0
1083	17	0
1086	6	0
1089	2	0
1092	13	0
1095	\N	\N
1098	4	0
1101	3	0
1104	2	0
1107	3	0
1110	5	0
1113	12	0
1116	6	0
1119	1	0
1122	4	0
1125	4	0
1128	14	0
1131	1	0
1134	3	0
1137	1	0
1140	11	0
1143	3	0
1146	12	0
1149	17	0
1152	13	0
1155	6	0
1158	1	0
1161	4	0
1164	0	0
1167	14	0
1170	2	0
1173	13	0
1176	3	0
1179	7	0
1182	3	0
1185	2	0
1188	2	0
1191	2	0
1194	1	0
1197	1	0
1200	7	0
1203	7	0
1206	3	0
1209	1	0
1212	8	0
1215	2	0
1218	2	0
1221	2	0
1224	2	0
1227	3	0
1230	4	0
1233	1	0
1236	1	0
1239	11	0
1242	9	0
1245	4	0
1248	2	0
1251	6	0
1254	5	0
1257	15	0
1260	7	0
1263	2	0
1266	14	0
1269	6	0
1272	\N	\N
1275	12	0
1278	5	0
1281	12	0
1284	11	0
1287	5	0
1290	4	0
1293	5	0
1296	13	0
1299	2	0
1302	35	1
1305	4	0
1308	2	0
1311	15	0
1314	9	0
1317	14	0
1320	3	0
1323	4	0
1326	3	0
1329	1	0
1332	8	0
1335	2	0
1338	4	0
1341	19	0
1344	10	0
1347	11	0
1350	3	0
1353	2	0
1356	2	0
1359	3	0
1362	6	0
1365	10	0
1368	7	0
1371	1	0
1374	11	0
1377	13	0
1380	8	0
1383	2	0
1386	3	0
1389	9	0
1392	7	0
1395	1	0
1398	19	0
1401	1	0
1404	2	0
1407	9	0
1410	2	0
1413	10	0
1416	3	0
1419	1	0
1422	3	0
1425	4	0
1428	10	0
1431	20	0
1434	14	0
1437	1	52
1440	4	0
1443	15	0
1446	6	0
1449	12	0
1452	16	0
1455	9	0
1458	7	0
1461	13	0
1464	14	0
1467	5	0
1470	4	0
1473	13	0
1476	20	0
1479	18	0
1482	2	0
1485	14	1
1488	6	0
1491	2	0
1494	11	0
1497	4	0
1500	7	0
1503	10	0
1506	4	0
1509	13	0
1512	5	0
1515	4	0
1518	9	0
1521	4	0
1524	3	0
1527	10	0
1530	3	0
1533	8	0
1536	10	0
1539	2	0
1542	6	0
1545	8	0
1548	9	0
1551	2	0
1554	9	0
1557	1	22
1560	3	0
1563	6	0
1566	7	0
1569	14	0
1572	5	0
1575	2	0
1578	7	0
1581	1	0
1584	2	\N
1587	10	0
1590	5	0
1593	7	0
1596	8	0
1599	8	0
1602	3	0
1605	5	0
1608	9	0
1611	1	0
1614	\N	\N
1617	10	0
1620	14	0
1623	25	0
1626	9	0
1629	2	0
1632	10	0
1635	29	0
1638	18	0
1641	6	0
1644	10	0
1647	10	0
1650	12	0
1653	5	0
1656	2	0
1659	12	0
1662	9	0
1665	3	0
1668	10	0
1671	15	0
1674	18	0
1677	22	0
1680	22	0
1683	8	0
1686	13	0
1689	10	0
1692	2	0
1695	13	0
1698	14	0
1701	20	0
1704	3	0
1707	22	0
1710	11	0
1713	\N	\N
1716	\N	\N
1719	13	0
1722	\N	\N
1725	9	0
1728	9	0
1731	20	0
1734	19	0
1737	8	0
1740	7	0
1743	13	0
1746	12	0
1749	17	0
1752	3	0
1755	21	0
1758	10	0
1761	13	0
1764	4	0
1767	4	0
1770	13	0
1773	13	0
1776	13	0
1779	25	0
1782	\N	\N
1785	22	0
1788	11	0
1791	17	0
1794	12	0
1797	10	0
1800	17	0
1803	2	0
1806	13	0
1809	35	0
1812	26	0
1815	19	0
1818	14	0
1821	19	0
1824	10	20
1827	25	0
1830	3	0
1833	3	0
1836	24	0
1839	13	0
1842	17	0
1845	20	0
1848	40	0
1851	17	0
1854	16	0
1857	12	0
1860	12	0
1863	20	0
1866	10	63
1869	27	0
1872	3	0
1875	18	0
1878	22	0
1881	25	0
1884	20	0
1887	15	0
1890	24	0
1893	13	0
1896	20	0
1899	1	37
1902	2	0
1905	3	0
1908	15	0
1911	3	0
1914	31	0
1917	25	0
1920	5	0
1923	24	0
1926	2	0
1929	16	0
1932	21	\N
1935	6	0
1938	5	0
1941	9	0
1944	16	0
1947	12	0
1950	14	0
1953	22	0
1956	22	0
1959	22	0
1962	6	0
1965	2	0
1968	10	0
1971	26	0
1974	22	0
1977	22	0
1980	28	0
1983	17	0
1986	2	0
1989	3	58
1992	20	5
1995	16	0
1998	5	0
2001	20	0
2004	19	0
2007	17	0
2010	9	0
2013	12	0
2016	3	0
2019	7	0
2022	1	0
2025	15	0
2028	1	0
2031	24	0
2034	24	0
2037	\N	\N
2040	25	0
2043	16	0
2046	15	0
2049	10	0
2052	3	0
2055	9	0
2058	5	0
2061	3	0
2064	4	0
2067	23	0
2070	24	0
2073	4	0
2076	3	0
2079	11	0
2082	10	0
2085	23	0
2088	23	0
2091	24	0
2094	11	0
2097	13	0
2100	17	0
2103	24	0
2106	3	0
2109	20	0
2112	13	0
2115	18	0
2118	25	0
2121	21	0
2124	31	0
2127	6	0
2130	21	0
2133	30	1
2136	31	0
2139	20	0
2142	21	0
2145	3	0
2148	2	0
2151	27	0
2154	2	36
2157	15	0
2160	28	0
2163	3	0
2166	3	11
2169	12	0
2172	4	0
2175	16	0
2178	22	0
2181	11	0
2184	23	0
2187	29	0
2190	20	0
2193	2	0
2196	23	0
2199	26	0
2202	31	0
2205	59	0
2208	25	0
2211	31	0
2214	14	0
2217	5	0
2220	45	0
2223	26	0
2226	44	0
2229	22	0
2232	24	0
2235	20	0
2238	29	0
2241	44	0
2244	28	0
2247	27	0
2250	28	0
2253	14	0
2256	17	0
2259	15	0
2262	8	0
2265	1	0
2268	3	0
2271	18	0
2274	23	0
2277	17	0
2280	7	0
2283	11	0
2286	21	0
2289	20	0
2292	1	0
2295	27	0
2298	10	0
2301	25	0
2304	20	0
2307	\N	\N
2310	26	0
2313	10	0
2316	4	16
2319	14	0
2322	19	0
2325	12	0
2328	28	0
2331	27	0
2334	13	0
2337	30	0
2340	18	0
2343	23	0
2346	18	0
2349	2	0
2352	25	0
2355	5	0
2358	13	0
2361	30	0
2364	13	0
2367	20	0
2370	22	0
2373	3	0
2376	4	0
2379	1	0
2382	8	0
2385	2	0
2388	6	0
2391	22	0
2394	20	1
2397	21	0
2400	24	0
2403	4	0
2406	21	0
2409	1	0
2412	17	0
2415	27	0
2418	25	0
2421	31	0
2424	19	0
2427	25	0
2430	39	0
2433	21	0
2436	1	22
2439	2	0
2442	16	0
2445	13	0
2448	11	0
2451	1	0
2454	23	0
2457	2	0
2460	11	0
2463	15	0
2466	26	0
2469	23	0
2472	22	0
2475	5	0
2478	24	0
2481	32	0
2484	24	0
2487	12	0
2490	7	0
2493	21	0
2496	12	0
2499	87	4
2502	2	0
2505	2	0
2508	13	0
2511	11	0
2514	3	0
2517	38	0
2520	7	0
2523	8	0
2526	18	0
2529	21	0
2532	19	0
2535	12	0
2538	4	0
2541	22	0
2544	25	0
2547	15	0
2550	1	0
2553	12	0
2556	2	0
2559	16	0
2562	53	0
2565	21	0
2568	12	0
2571	9	0
2574	13	0
2577	23	0
2580	8	0
2583	11	0
2586	27	0
2589	6	0
2592	10	0
2595	22	0
2598	15	0
2601	4	0
2604	25	0
2607	40	0
2610	43	0
2613	53	0
2616	2	0
2619	5	0
2622	50	0
2625	14	0
2628	13	0
2631	14	0
2634	1	0
2637	6	0
2640	2	2
2643	26	0
2646	11	0
2649	20	0
2652	3	0
2655	1	0
2658	3	0
2661	3	0
2664	10	0
2667	35	0
2670	0	0
2673	3	0
2676	41	0
2679	53	0
2682	18	0
2685	44	0
2688	25	0
2691	5	0
2694	0	0
2697	2	0
2700	20	0
2703	5	0
2706	13	0
2709	13	0
2712	22	0
2715	2	0
2718	20	0
2721	8	1
2724	23	0
2727	20	0
2730	25	0
2733	23	0
2736	5	3
2739	16	0
2742	1	0
2745	18	0
2748	9	0
2751	31	0
2754	5	0
2757	3	0
2760	12	0
2763	32	0
2766	31	0
2769	1	0
2772	12	0
2775	7	0
2778	14	0
2781	12	0
2784	2	0
2787	23	0
2790	4	0
2793	20	0
2796	5	0
2799	12	0
2802	30	0
2805	6	0
2808	14	0
2811	19	0
2814	15	0
2817	30	0
2820	32	0
2823	31	0
2826	10	0
2829	13	0
2832	2	0
2835	3	0
2838	4	1
2841	6	0
2844	43	0
2847	1	0
2850	8	0
2853	32	0
2856	16	0
2859	5	0
2862	25	0
2865	26	0
2868	18	0
2871	19	0
2874	52	0
2877	4	0
2880	2	0
2883	3	0
2886	25	0
2889	37	0
2892	13	0
2895	13	0
2898	19	0
2901	40	0
2904	13	0
2907	2	0
2910	13	0
2913	17	0
2916	3	0
2919	8	0
2922	21	0
2925	9	0
2928	7	0
2931	2	0
2934	30	0
2937	23	0
2940	33	0
2943	27	0
2946	32	0
2949	12	0
2952	14	0
2955	3	0
2958	2	0
2961	12	0
2964	30	0
2967	13	0
2970	20	0
2973	20	0
2976	5	0
2979	2	0
2982	6	0
2985	1	0
2988	3	0
2991	27	0
2994	16	0
2997	14	0
3000	23	0
3003	16	0
3006	16	0
3009	3	0
3012	15	0
3015	31	0
3018	13	0
3021	22	0
3024	27	0
3027	53	0
3030	33	0
3033	18	0
3036	45	0
3039	35	0
3042	2	4
3045	16	0
3048	5	0
3051	5	0
3054	34	0
3057	8	0
3060	24	0
3063	21	0
3066	5	0
3069	23	0
3072	24	0
3075	5	0
3078	4	0
3081	48	0
3084	55	0
3087	3	0
3090	34	0
3093	5	0
3096	28	0
3099	20	0
3102	9	0
3105	38	0
3108	17	0
3111	26	0
3114	6	0
3117	17	0
3120	8	0
3123	7	0
3126	16	0
3129	32	0
3132	14	0
3135	4	0
3138	44	0
3141	7	0
3144	5	0
3147	13	2
3150	4	0
3153	80	0
3156	15	0
3159	12	0
3162	3	0
3165	25	0
3168	35	0
3171	15	0
3174	16	0
3177	39	0
3180	1	0
3183	13	0
3186	28	0
3189	15	0
3192	46	0
3195	40	0
3198	58	0
3201	29	0
3204	23	0
3207	22	0
3210	22	0
3213	9	0
3216	25	0
3219	50	0
3222	26	0
3225	12	7
3228	12	0
3231	55	0
3234	16	0
3237	8	0
3240	26	0
3243	10	0
3246	10	0
3249	23	0
3252	4	0
3255	6	0
3258	28	0
3261	28	0
3264	48	0
3267	21	0
3270	52	0
3273	2	0
3276	21	0
3279	9	0
3282	3	0
3285	8	0
3288	5	0
3291	46	0
3294	21	0
3297	9	3
3300	31	0
3303	38	0
3306	2	0
3309	17	0
3312	12	0
3315	10	0
3318	7	0
3321	10	0
3324	14	0
3327	16	0
3330	20	0
3333	14	0
3336	29	0
3339	2	0
3342	16	0
3345	24	0
3348	27	0
3351	53	0
3354	10	0
3357	3	0
3360	11	2
3363	26	0
3366	22	0
3369	21	0
3372	16	0
3375	43	0
3378	11	0
3381	23	0
3384	2	0
3387	6	0
3390	10	0
3393	2	0
3396	3	0
3399	40	0
3402	14	0
3405	50	0
3408	3	0
3411	33	0
3414	36	0
3417	10	0
3420	7	0
3423	3	0
3426	37	0
3429	3	0
3432	7	0
3435	2	0
3438	5	0
3441	10	0
3444	50	0
3447	13	3
3450	3	0
3453	39	0
3456	22	0
3459	27	0
3462	8	0
3465	17	0
3468	12	0
3471	23	0
3474	12	0
3477	25	0
3480	1	0
3483	5	0
3486	16	0
3489	6	0
3492	13	0
3495	3	0
3498	3	0
3501	56	1
3504	22	0
3507	26	0
3510	4	0
3513	28	0
3516	3	0
3519	6	0
3522	23	0
3525	36	0
3528	23	7
3531	15	0
3534	17	\N
3537	29	4
3540	7	0
3543	31	0
3546	9	0
3549	3	0
3552	8	0
3555	38	0
3558	3	0
3561	15	\N
3564	4	0
3567	44	0
3570	17	0
3573	70	0
3576	12	0
3579	10	0
3582	2	3
3585	37	0
3588	4	0
3591	52	0
3594	29	0
3597	2	0
3600	50	0
3603	9	0
3606	11	0
3609	17	0
3612	5	0
3615	6	0
3618	1	0
3621	8	0
3624	11	0
3627	11	0
3630	1	0
3633	24	0
3636	7	0
3639	18	0
3642	2	0
3645	1	52
3648	46	0
3651	11	8
3654	3	0
3657	14	0
3660	14	0
3663	25	0
3666	16	0
3669	5	0
3672	19	0
3675	44	0
3678	20	0
3681	9	0
3684	52	0
3687	37	0
3690	18	0
3693	37	0
3696	87	0
3699	3	0
3702	3	0
3705	27	0
3708	2	0
3711	27	0
3714	10	0
3717	40	0
3720	26	0
3723	19	0
3726	39	0
3729	18	0
3732	5	0
3735	30	0
3738	46	0
3741	11	0
3744	2	0
3747	16	0
3750	8	0
3753	23	0
3756	35	0
3759	14	0
3762	13	0
3765	13	0
3768	4	0
3771	3	0
3774	7	0
3777	30	0
3780	8	0
3783	43	0
3786	10	0
3789	18	0
3792	2	0
3795	19	0
3798	0	2
3801	7	0
3804	11	0
3807	34	0
3810	17	0
3813	129	0
3816	58	0
3819	44	0
3822	21	0
3825	1	0
3828	4	0
3831	1	0
3834	14	0
3837	2	0
3840	42	0
3843	21	0
3846	3	0
3849	1	0
3852	28	0
3855	5	0
3858	25	0
3861	44	0
3864	2	0
3867	21	0
3870	2	0
3873	19	0
3876	28	0
3879	10	0
3882	23	0
3885	13	0
3888	1	0
3891	9	0
3894	21	0
3897	4	0
3900	16	0
3903	35	0
3906	21	0
3909	1	6
3912	16	0
3915	15	0
3918	3	0
3921	35	0
3924	10	0
3927	10	0
3930	3	0
3933	9	0
3936	20	0
3939	33	0
3942	2	0
3945	18	0
3948	18	0
3951	25	0
3954	4	0
3957	21	0
3960	36	1
3963	16	0
3966	16	0
3969	25	0
3972	5	0
3975	3	0
3978	19	0
3981	1	0
3984	3	0
3987	4	0
3990	3	0
3993	20	0
3996	10	0
3999	2	0
4002	30	0
4005	3	0
4008	47	0
4011	12	0
4014	21	0
4017	3	0
4020	26	0
4023	28	0
4026	6	0
4029	3	0
4032	21	0
4035	42	0
4038	42	0
4041	3	0
4044	24	0
4047	2	0
4050	28	0
4053	4	0
4056	2	0
4059	26	0
4062	10	0
4065	28	0
4068	45	0
4071	17	0
4074	18	0
4077	15	0
4080	0	0
4083	5	0
4086	10	0
4089	13	0
4092	29	0
4095	16	0
4098	1	0
4101	5	0
4104	26	0
4107	8	0
4110	13	0
4113	66	0
4116	4	0
4119	2	0
4122	3	0
4125	19	0
4128	12	0
4131	20	0
4134	4	0
4137	2	0
4140	3	0
4143	16	0
4146	18	0
4149	22	0
4152	22	0
4155	58	0
4158	30	0
4161	25	0
4164	66	0
4167	13	0
4170	2	0
4173	9	0
4176	3	0
4179	16	0
4182	2	0
4185	15	0
4188	3	0
4191	19	0
4194	66	0
4197	7	0
4200	44	0
4203	28	0
4206	14	0
4209	10	0
4212	10	0
4215	6	0
4218	2	0
4221	26	0
4224	17	0
4227	1	0
4230	4	0
4233	22	0
4236	3	0
4239	2	0
4242	2	0
4245	40	0
4248	50	0
4251	52	0
4254	19	0
4257	3	0
4260	2	0
4263	1	0
4266	3	0
4269	18	0
4272	22	0
4275	5	0
4278	6	0
4281	3	0
4284	2	0
4287	14	1
4290	2	13
4293	30	0
4296	74	0
4299	32	0
4302	128	0
4305	1	0
4308	46	0
4311	18	0
4314	12	0
4317	15	0
4320	1	0
4323	0	0
4326	5	0
4329	59	0
4332	0	0
4335	3	0
4338	23	0
4341	5	0
4344	2	0
4347	25	0
4350	2	0
4353	36	0
4356	23	0
4359	34	8
4362	25	0
4365	14	0
4368	62	0
4371	5	0
4374	3	0
4377	21	0
4380	11	0
4383	1	0
4386	17	1
4389	16	0
4392	2	0
4395	5	3
4398	21	0
4401	22	0
4404	5	0
4407	18	2
4410	15	0
4413	20	2
4416	24	0
4419	19	0
4422	67	0
4425	40	0
4428	34	0
4431	26	0
4434	3	1
4437	24	0
4440	1	0
4443	34	0
4446	1	0
4449	37	0
4452	16	0
4455	2	0
4458	2	3
4461	9	0
4464	9	0
4467	3	0
4470	14	0
4473	24	0
4476	58	0
4479	1	0
4482	79	0
4485	23	0
4488	8	0
4491	12	0
4494	8	0
4497	12	0
4500	1	0
4503	3	0
4506	27	0
4509	7	0
4512	21	0
4515	3	0
4518	15	0
4521	44	0
4524	4	0
4527	43	0
4530	4	0
4533	61	0
4536	3	0
4539	2	0
4542	4	0
4545	19	0
4548	9	0
4551	3	0
4554	11	0
4557	5	0
4560	21	2
4563	47	1
4566	23	0
4569	15	0
4572	22	0
4575	35	0
4578	26	0
4581	8	0
4584	4	0
4587	20	0
4590	9	0
4593	18	0
4596	3	0
4599	47	0
4602	32	0
4605	16	0
4608	49	0
4611	61	0
4614	11	0
4617	4	0
4620	15	0
4623	4	0
4626	1	0
4629	45	0
4632	1	0
4635	19	0
4638	7	0
4641	15	0
4644	3	0
4647	36	0
4650	33	0
4653	10	0
4656	99	0
4659	24	0
4662	64	0
4665	17	0
4668	3	4
4671	19	0
4674	13	0
4677	13	0
4680	8	0
4683	15	0
4686	5	0
4689	19	0
4692	23	0
4695	20	0
4698	80	0
4701	11	0
4704	31	0
4707	17	0
4710	8	0
4713	3	0
4716	36	0
4719	2	0
4722	21	0
4725	9	0
4728	3	0
4731	21	0
4734	5	1
4737	5	0
4740	10	0
4743	36	0
4746	2	0
4749	51	0
4752	4	0
4755	10	0
4758	2	0
4761	3	0
4764	4	0
4767	65	0
4770	14	0
4773	5	0
4776	24	0
4779	15	0
4782	5	0
4785	1	0
4788	9	0
4791	24	0
4794	2	0
4797	26	0
4800	12	0
4803	28	0
4806	5	0
4809	2	0
4812	31	0
4815	12	0
4818	10	0
4821	8	0
4824	60	0
4827	14	0
4830	68	0
4833	0	17
4836	6	0
4839	2	0
4842	5	0
4845	32	0
4848	2	0
4851	2	0
4854	1	0
4857	3	0
4860	20	0
4863	53	0
4866	16	0
4869	34	0
4872	1	1
4875	18	0
4878	26	0
4881	5	0
4884	42	0
4887	40	0
4890	3	8
4893	25	0
4896	45	0
4899	29	0
4902	3	0
4905	2	0
4908	33	10
4911	1	0
4914	11	0
4917	9	0
4920	34	0
4923	10	0
4926	50	0
4929	42	0
4932	61	0
4935	37	0
4938	9	0
4941	59	0
4944	61	0
4947	34	0
4950	32	0
4953	6	0
4956	3	0
4959	63	0
4962	25	0
4965	2	0
4968	10	0
4971	18	0
4974	9	0
4977	37	0
4980	4	0
4983	35	0
4986	13	0
4989	12	0
4992	31	0
4995	10	0
4998	4	0
5001	29	0
5004	14	0
5007	54	0
5010	18	0
5013	16	0
5016	18	0
5019	1	0
5022	1	0
5025	37	0
5028	13	0
5031	1	0
5034	6	0
5037	35	0
5040	20	0
5043	3	0
5046	63	0
5049	80	0
5052	29	0
5055	31	0
5058	8	0
5061	21	0
5064	62	0
5067	11	0
5070	2	0
5073	3	0
5076	12	0
5079	22	0
5082	4	0
5085	37	0
5088	33	0
5091	15	0
5094	31	0
5097	24	0
5100	78	0
5103	22	0
5106	128	6
5109	20	31
5112	28	0
5115	10	0
5118	25	0
5121	4	0
5124	6	3
5127	21	0
5130	23	0
5133	6	0
5136	26	0
5139	72	1
5142	12	0
5145	23	0
5148	52	0
5151	13	0
5154	61	0
5157	20	0
5160	1	0
5163	24	0
5166	1	0
5169	17	1
5172	72	0
5175	67	0
5178	6	0
5181	27	3
5184	39	0
5187	6	0
5190	1	0
5193	78	0
5196	5	0
5199	2	0
5202	14	0
5205	83	0
5208	77	0
5211	16	0
5214	37	0
5217	28	0
5220	34	0
5223	17	0
5226	2	0
5229	45	0
5232	77	0
5235	3	0
5238	52	0
5241	21	0
5244	15	0
5247	3	0
5250	13	8
5253	2	0
5256	27	0
5259	1	0
5262	6	0
5265	13	0
5268	18	0
5271	23	0
5274	2	0
5277	95	0
5280	111	0
5283	2	0
5286	11	0
5289	5	0
5292	15	0
5295	1	0
5298	107	0
5301	11	0
5304	22	0
5307	31	0
5310	40	0
5313	18	0
5316	12	0
5319	32	0
5322	23	0
5325	15	0
5328	3	0
5331	13	0
5334	26	0
5337	45	0
5340	130	0
5343	5	0
5346	112	0
5349	81	0
5352	84	0
5355	14	0
5358	94	0
5361	6	0
5364	1	0
5367	9	0
5370	26	0
5373	27	0
5376	81	0
5379	4	0
5382	10	0
5385	15	0
5388	20	0
5391	9	0
5394	86	0
5397	12	1
5400	13	0
5403	11	0
5406	44	0
5409	4	0
5412	8	0
5415	28	0
5418	2	0
5421	3	0
5424	8	0
5427	1	0
5430	10	0
5433	27	0
5436	4	0
5439	18	0
5442	23	0
5445	21	0
5448	26	0
5451	97	0
5454	25	0
5457	24	0
5460	50	0
5463	5	3
5466	33	0
5469	12	\N
5472	1	0
5475	1	0
5478	25	0
5481	2	0
5484	5	0
5487	13	7
5490	3	0
5493	1	0
5496	8	0
5499	14	0
5502	17	87
5505	3	0
5508	7	0
5511	43	0
5514	0	1
5517	27	0
5520	4	0
5523	4	0
5526	41	0
5529	18	0
5532	10	0
5535	31	0
5538	11	0
5541	12	0
5544	55	0
5547	37	0
5550	34	0
5553	101	0
5556	29	0
5559	20	0
5562	31	0
5565	19	0
5568	38	0
5571	38	0
5574	15	0
5577	7	0
5580	23	0
5583	35	0
5586	6	0
5589	6	0
5592	63	0
5595	13	0
5598	20	1
5601	1	0
5604	19	0
5607	0	0
5610	16	0
5613	80	0
5616	40	0
5619	18	0
5622	10	0
5625	6	0
5628	6	0
5631	31	0
5634	5	0
5637	7	0
5640	22	0
5643	118	0
5646	3	0
5649	81	0
5652	3	0
5655	6	0
5658	0	0
5661	28	0
5664	2	0
5667	3	0
5670	10	0
5673	2	0
5676	4	0
5679	4	0
5682	13	0
5685	31	0
5688	22	0
5691	2	0
5694	58	0
5697	20	0
5700	83	0
5703	85	0
5706	28	0
5709	1	0
5712	3	0
5715	5	0
5718	3	0
5721	45	0
5724	9	0
5727	15	0
5730	49	0
5733	2	0
5736	44	0
5739	10	0
5742	46	0
5745	79	0
5748	11	0
5751	3	0
5754	3	0
5757	2	0
5760	2	0
5763	57	0
5766	1	0
5769	5	0
5772	1	0
5775	50	0
5778	39	0
5781	3	0
5784	0	0
5787	2	0
5790	3	0
5793	2	0
5796	4	0
5799	87	0
5802	39	0
5805	28	0
5808	2	0
5811	80	0
5814	1	0
5817	32	0
5820	2	0
5823	33	0
5826	5	0
5829	29	0
5832	10	0
5835	3	0
5838	6	0
5841	4	0
5844	17	0
5847	38	0
5850	1	0
5853	1	0
5856	3	0
5859	5	0
5862	4	0
5865	3	0
5868	2	0
5871	17	22
5874	10	0
5877	10	0
5880	4	0
5883	87	0
5886	84	0
5889	2	0
5892	2	0
5895	2	0
5898	7	0
5901	10	0
5904	25	0
5907	8	0
5910	28	0
5913	16	0
5916	22	0
5919	50	0
5922	2	0
5925	54	0
5928	26	0
5931	2	0
5934	5	0
5937	30	0
5940	119	0
5943	18	0
5946	85	0
5949	0	0
5952	0	0
5955	4	0
5958	41	0
5961	30	0
5964	52	0
5967	16	0
5970	8	0
5973	11	0
5976	37	0
5979	7	0
5982	13	0
5985	30	0
5988	4	0
5991	59	0
5994	4	0
5997	11	0
6000	17	0
6003	9	0
6006	38	0
6009	30	0
6012	10	0
6015	19	0
6018	8	0
6021	13	0
6024	1	0
6027	36	0
6030	30	0
6033	68	0
6036	30	0
6039	58	0
6042	32	0
6045	43	0
6048	2	0
6051	8	0
6054	13	0
6057	4	0
6060	8	0
6063	32	0
6066	85	0
6069	2	0
6072	2	0
6075	3	0
6078	34	0
6081	56	0
6084	30	0
6087	117	0
6090	46	0
6093	3	0
6096	46	0
6099	133	0
6102	37	0
6105	2	0
6108	2	0
6111	4	0
6114	64	0
6117	3	0
6120	124	0
6123	6	0
6126	6	0
6129	5	0
6132	30	0
6135	2	0
6138	2	0
6141	11	0
6144	2	0
6147	83	0
6150	49	0
6153	20	0
6156	2	0
6159	11	1
6162	3	0
6165	2	0
6168	2	0
6171	4	0
6174	24	0
6177	2	0
6180	4	0
6183	3	0
6186	42	0
6189	24	0
6192	6	0
6195	4	0
6198	6	0
6201	0	33
6204	1	0
6207	9	0
6210	98	0
6213	4	0
6216	1	0
6219	24	0
6222	2	0
6225	18	0
6228	14	0
6231	11	0
6234	38	0
6237	6	0
6240	2	0
6243	3	0
6246	19	0
6249	50	0
6252	3	0
6255	3	0
6258	30	0
6261	82	0
6264	25	0
6267	9	0
6270	21	0
6273	17	0
6276	4	107
6279	29	0
6282	9	0
6285	3	0
6288	10	0
6291	3	0
6294	2	0
6297	1	0
6300	21	0
6303	2	0
6306	30	0
6309	10	0
6312	4	0
6315	2	0
6318	22	0
6321	4	0
6324	12	0
6327	51	5
6330	38	0
6333	4	7
6336	26	0
6339	25	0
6342	4	0
6345	4	0
6348	25	0
6351	2	0
6354	2	0
6357	6	13
6360	2	0
6363	5	0
6366	9	0
6369	15	44
6372	35	0
6375	23	0
6378	126	0
6381	14	0
6384	17	0
6387	19	0
6390	12	0
6393	3	0
6396	4	0
6399	16	0
6402	4	0
6405	3	0
6408	88	0
6411	72	0
6414	10	0
6417	17	0
6420	2	0
6423	3	2
6426	20	0
6429	11	0
6432	35	0
6435	3	0
6438	7	0
6441	34	0
6444	22	0
6447	16	0
6450	24	0
6453	21	0
6456	42	0
6459	82	0
6462	16	0
6465	18	0
6468	7	0
6471	11	0
6474	11	0
6477	37	0
6480	3	0
6483	23	0
6486	2	0
6489	66	0
6492	4	0
6495	16	0
6498	2	0
6501	37	0
6504	1	0
6507	1	0
6510	130	0
6513	70	0
6516	5	0
6519	3	0
6522	26	0
6525	10	0
6528	72	0
6531	7	0
6534	2	0
6537	2	0
6540	13	0
6543	2	0
6546	4	0
6549	44	0
6552	6	0
6555	3	0
6558	2	0
6561	42	0
6564	19	0
6567	4	0
6570	12	0
6573	13	0
6576	15	0
6579	12	0
6582	1	1
6585	98	0
6588	21	1
6591	3	0
6594	37	0
6597	82	0
6600	63	0
6603	49	0
6606	14	0
6609	19	0
6612	2	0
6615	3	0
6618	61	0
6621	2	0
6624	2	0
6627	12	0
6630	5	0
6633	36	0
6636	4	0
6639	18	0
6642	11	0
6645	26	0
6648	123	0
6651	5	0
6654	5	0
6657	22	0
6660	85	0
6663	11	0
6666	155	0
6669	4	0
6672	23	0
6675	29	1
6678	3	0
6681	6	0
6684	6	0
6687	120	0
6690	29	0
6693	1	0
6696	6	0
6699	4	0
6702	11	0
6705	7	0
6708	3	0
6711	5	0
6714	10	0
6717	3	0
6720	13	0
6723	3	0
6726	48	0
6729	35	0
6732	3	0
6735	21	0
6738	40	0
6741	4	0
6744	0	0
6747	5	0
6750	47	0
6753	2	0
6756	95	0
6759	11	0
6762	57	1
6765	3	0
6768	13	11
6771	25	0
6774	4	0
6777	10	0
6780	2	0
6783	11	0
6786	10	0
6789	19	0
6792	23	0
6795	32	0
6798	7	0
6801	0	0
6804	9	0
6807	26	0
6810	2	0
6813	39	0
6816	3	0
6819	3	0
6822	51	0
6825	20	0
6828	2	0
6831	3	0
6834	12	0
6837	27	1
6840	12	0
6843	1	0
6846	26	0
6849	26	0
6852	24	0
6855	2	0
6858	50	2
6861	11	0
6864	24	0
6867	15	0
6870	12	0
6873	38	0
6876	13	0
6879	10	0
6882	13	0
6885	35	0
6888	36	0
6891	19	0
6894	84	70
6897	3	0
6900	100	0
6903	16	0
6906	2	0
6909	53	0
6912	24	0
6915	1	0
6918	31	0
6921	45	0
6924	9	0
6927	44	0
6930	1	0
6933	18	0
6936	11	0
6939	11	0
6942	30	0
6945	2	0
6948	6	0
6951	1	0
6954	79	0
6957	3	0
6960	19	0
6963	2	0
6966	14	0
6969	14	0
6972	35	0
6975	2	0
6978	3	0
6981	4	0
6984	1	0
6987	5	0
6990	33	0
6993	3	0
6996	4	0
6999	3	0
7002	13	0
7005	1	0
7008	16	0
7011	62	0
7014	8	0
7017	3	0
7020	35	0
7023	4	4
7026	28	0
7029	83	0
7032	45	0
7035	20	0
7038	4	0
7041	74	2
7044	27	0
7047	74	0
7050	5	0
7053	26	0
7056	5	0
7059	2	0
7062	2	0
7065	9	0
7068	14	0
7071	87	0
7074	90	0
7077	3	0
7080	0	14
7083	10	24
7086	15	0
7089	2	0
7092	5	0
7095	23	0
7098	32	0
7101	28	0
7104	2	0
7107	19	0
7110	1	0
7113	34	0
7116	9	0
7119	11	0
7122	37	0
7125	21	0
7128	92	0
7131	5	0
7134	12	2
7137	102	0
7140	4	0
7143	17	0
7146	47	0
7149	11	0
7152	38	0
7155	23	0
7158	3	0
7161	6	0
7164	61	0
7167	45	0
7170	3	0
7173	10	0
7176	36	0
7179	19	0
7182	8	0
7185	23	0
7188	13	0
7191	5	0
7194	1	0
7197	6	0
7200	11	0
7203	6	0
7206	6	0
7209	1	5
7212	13	0
7215	1	0
7218	5	0
7221	5	0
7224	112	0
7227	109	0
7230	23	0
7233	7	0
7236	4	0
7239	37	0
7242	10	0
7245	30	0
7248	99	2
7251	14	0
7254	30	0
7257	39	0
7260	3	0
7263	37	0
7266	22	0
7269	11	0
7272	1	0
7275	4	0
7278	8	0
7281	38	0
7284	8	0
7287	30	0
7290	43	0
7293	2	0
7296	3	0
7299	3	0
7302	2	0
7305	2	0
7308	75	0
7311	18	0
7314	47	0
7317	79	0
7320	42	0
7323	4	0
7326	5	0
7329	18	0
7332	25	0
7335	2	0
7338	7	0
7341	31	0
7344	93	0
7347	16	0
7350	2	0
7353	45	0
7356	21	0
7359	35	0
7362	13	0
7365	8	0
7368	2	0
7371	18	0
7374	7	0
7377	3	0
7380	12	0
7383	15	0
7386	5	0
7389	64	0
7392	39	0
7395	2	0
7398	8	0
7401	4	0
7404	12	0
7407	5	0
7410	2	0
7413	78	0
7416	11	0
7419	6	0
7422	32	0
7425	10	0
7428	50	0
7431	28	0
7434	24	0
7437	6	0
7440	17	0
7443	68	0
7446	3	0
7449	6	0
7452	4	0
7455	97	0
7458	163	0
7461	0	0
7464	37	0
7467	100	0
7470	2	0
7473	37	0
7476	3	0
7479	21	0
7482	111	0
7485	22	0
7488	5	0
7491	5	0
7494	49	0
7497	32	0
7500	63	0
7503	20	0
7506	10	0
7509	6	0
7512	20	0
7515	16	0
7518	31	0
7521	4	0
7524	52	0
7527	69	0
7530	47	0
7533	25	0
7536	34	0
7539	57	0
7542	2	0
7545	47	0
7548	28	0
7551	91	0
7554	23	0
7557	104	0
7560	3	0
7563	1	0
7566	20	0
7569	39	0
7572	27	0
7575	6	0
7578	1	0
7581	2	0
7584	19	0
7587	23	0
7590	2	0
7593	5	0
7596	4	0
7599	8	0
7602	16	1
7605	5	0
7608	112	0
7611	22	0
7614	14	0
7617	2	0
7620	25	0
7623	18	0
7626	3	0
7629	43	0
7632	6	0
7635	4	0
7638	6	0
7641	18	0
7644	115	0
7647	7	0
7650	34	0
7653	9	0
7656	22	0
7659	8	0
7662	11	0
7665	9	0
7668	4	0
7671	2	0
7674	2	0
7677	14	0
7680	32	0
7683	3	0
7686	47	0
7689	82	4
7692	81	0
7695	5	0
7698	12	0
7701	122	0
7704	118	0
7707	5	0
7710	3	0
7713	13	0
7716	7	0
7719	2	0
7722	3	0
7725	10	0
7728	52	0
7731	19	0
7734	1	0
7737	38	0
7740	30	0
7743	18	0
7746	156	0
7749	26	0
7752	34	0
7755	25	0
7758	101	0
7761	4	0
7764	1	0
7767	11	0
7770	31	0
7773	0	22
7776	10	0
7779	1	0
7782	9	0
7785	109	0
7788	2	0
7791	174	0
7794	29	0
7797	4	0
7800	37	0
7803	1	0
7806	60	0
7809	27	0
7812	22	0
7815	35	0
7818	11	0
7821	62	0
7824	2	0
7827	155	0
7830	6	0
7833	12	0
7836	3	0
7839	26	0
7842	4	0
7845	43	2
7848	2	1
7851	10	0
7854	14	0
7857	13	0
7860	40	0
7863	103	0
7866	5	0
7869	5	0
7872	4	0
7875	44	0
7878	176	0
7881	3	0
7884	3	0
7887	37	0
7890	2	0
7893	66	0
7896	5	0
7899	22	0
7902	110	0
7905	2	0
7908	79	0
7911	32	0
7914	15	0
7917	18	0
7920	13	0
7923	25	0
7926	3	0
7929	68	0
7932	4	0
7935	3	0
7938	5	0
7941	62	0
7944	108	0
7947	16	0
7950	15	0
7953	4	0
7956	6	0
7959	4	0
7962	2	0
7965	100	0
7968	11	0
7971	4	0
7974	48	0
7977	23	0
7980	6	8
7983	2	0
7986	27	0
7989	5	3
7992	123	0
7995	78	0
7998	38	0
8001	5	0
8004	89	0
8007	5	0
8010	119	0
8013	85	5
8016	10	0
8019	56	0
8022	16	0
8025	42	0
8028	24	0
8031	1	0
8034	4	0
8037	6	0
8040	4	0
8043	41	0
8046	6	0
8049	2	0
8052	3	0
8055	11	0
8058	9	0
8061	108	0
8064	10	0
8067	8	0
8070	8	0
8073	4	0
8076	2	0
8079	6	0
8082	1	0
8085	3	0
8088	27	0
8091	13	0
8094	8	0
8097	10	0
8100	51	0
8103	30	0
8106	2	0
8109	6	0
8112	20	0
8115	106	0
8118	17	0
8121	1	0
8124	38	0
8127	4	0
8130	12	0
8133	24	0
8136	31	0
8139	24	0
8142	14	0
8145	4	0
8148	2	0
8151	66	0
8154	3	0
8157	4	0
8160	96	0
8163	1	0
8166	35	0
8169	2	0
8172	1	0
8175	7	0
8178	10	0
8181	346	0
8184	18	0
8187	4	0
8190	36	0
8193	15	0
8196	78	0
8199	11	0
8202	107	0
8205	1	0
8208	118	0
8211	6	0
8214	22	0
8217	3	0
8220	3	0
8223	29	0
8226	2	0
8229	44	0
8232	19	0
8235	5	0
8238	3	0
8241	5	0
8244	5	0
8247	9	0
8250	47	0
8253	27	0
8256	4	0
8259	48	0
8262	7	0
8265	31	0
8268	35	0
8271	88	0
8274	70	0
8277	75	0
8280	5	0
8283	2	0
8286	6	0
8289	2	0
8292	3	0
8295	6	0
8298	6	0
8301	5	0
8304	1	0
8307	2	0
8310	2	0
8313	2	0
8316	3	0
8319	4	0
8322	2	0
8325	32	0
8328	3	0
8331	4	0
8334	1	0
8337	2	0
8340	59	0
8343	4	0
8346	3	0
8349	92	0
8352	191	0
8355	5	0
8358	54	0
8361	7	0
8364	77	0
8367	4	0
8370	33	0
8373	61	0
8376	9	0
8379	3	0
8382	12	0
8385	21	0
8388	14	0
8391	5	0
8394	9	0
8397	16	0
8400	42	0
8403	1	0
8406	2	0
8409	5	0
8412	32	0
8415	40	0
8418	3	0
8421	5	0
8424	15	0
8427	2	0
8430	26	0
8433	55	0
8436	5	0
8439	16	0
8442	155	0
8445	3	0
8448	2	0
8451	3	0
8454	2	0
8457	6	0
8460	23	0
8463	1	0
8466	1	3
8469	113	0
8472	2	0
8475	3	0
8478	8	0
8481	10	0
8484	2	0
8487	2	0
8490	4	0
8493	41	0
8496	6	0
8499	28	0
8502	188	0
8505	20	0
8508	0	0
8511	28	0
8514	126	0
8517	2	0
8520	20	0
8523	10	0
8526	26	0
8529	1	0
8532	25	1
8535	60	0
8538	7	0
8541	4	0
8544	11	0
8547	2	0
8550	67	0
8553	75	0
8556	9	0
8559	4	0
8562	15	0
8565	19	0
8568	6	5
8571	3	0
8574	20	0
8577	6	0
8580	2	0
8583	9	0
8586	9	0
8589	82	0
8592	61	0
8595	6	0
8598	4	0
8601	7	0
8604	13	0
8607	3	0
8610	7	0
8613	34	0
8616	40	0
8619	9	0
8622	6	0
8625	2	0
8628	3	0
8631	7	0
8634	3	0
8637	3	0
8640	24	0
8643	5	0
8646	6	0
8649	19	0
8652	120	7
8655	4	0
8658	2	0
8661	5	0
8664	5	0
8667	1	0
8670	7	0
8673	2	0
8676	34	0
8679	6	0
8682	12	0
8685	5	0
8688	37	0
8691	11	0
8694	4	0
8697	50	0
8700	17	0
8703	52	0
8706	6	0
8709	14	3
8712	46	0
8715	45	1
8718	12	0
8721	2	0
8724	7	0
8727	17	0
8730	5	0
8733	2	0
8736	76	0
8739	3	0
8742	5	0
8745	11	0
8748	59	0
8751	3	0
8754	6	0
8757	23	0
8760	18	0
8763	1	0
8766	68	0
8769	10	0
8772	90	0
8775	176	0
8778	154	0
8781	1	0
8784	4	0
8787	15	0
8790	4	0
8793	73	0
8796	4	0
8799	95	0
8802	3	113
8805	4	0
8808	32	0
8811	2	0
8814	29	0
8817	2	0
8820	5	0
8823	6	0
8826	72	0
8829	2	0
8832	3	0
8835	48	0
8838	53	19
8841	6	0
8844	19	0
8847	4	0
8850	96	0
8853	5	0
8856	12	0
8859	22	0
8862	1	0
8865	6	0
8868	5	0
8871	77	0
8874	4	0
8877	20	0
8880	44	0
8883	2	0
8886	3	0
8889	5	0
8892	583	0
8895	15	0
8898	8	0
8901	62	8
8904	35	0
8907	21	0
8910	28	0
8913	54	0
8916	9	0
8919	6	0
8922	4	1
8925	68	1
8928	3	0
8931	18	0
8934	5	0
8937	16	0
8940	6	0
8943	30	0
8946	5	0
8949	1	0
8952	38	0
8955	25	0
8958	5	0
8961	2	0
8964	6	0
8967	4	0
8970	4	0
8973	3	0
8976	3	0
8979	2	0
8982	4	0
8985	3	0
8988	33	0
8991	13	0
8994	19	0
8997	4	0
9000	20	0
9003	29	0
9006	6	0
9009	34	0
9012	7	0
9015	2	0
9018	6	0
9021	24	0
9024	1	0
9027	13	0
9030	131	0
9033	5	0
9036	2	0
9039	46	0
9042	34	0
9045	2	0
9048	59	0
9051	100	0
9054	17	0
9057	17	0
9060	13	0
9063	29	0
9066	2	0
9069	36	0
9072	3	0
9075	5	0
9078	8	0
9081	2	0
9084	10	0
9087	24	0
9090	213	0
9093	2	0
9096	2	0
9099	14	0
9102	2	0
9105	44	0
9108	17	0
9111	42	0
9114	4	0
9117	3	0
9120	7	0
9123	2	0
9126	2	0
9129	18	0
9132	47	0
9135	2	0
9138	2	0
9141	73	0
9144	6	0
9147	48	0
9150	4	0
9153	3	0
9156	2	0
9159	2	0
9162	9	0
9165	10	0
9168	8	0
9171	6	0
9174	3	0
9177	13	0
9180	4	0
9183	10	0
9186	2	0
9189	18	0
9192	5	0
9195	18	0
9198	12	0
9201	6	0
9204	14	0
9207	10	0
9210	4	0
9213	11	0
9216	15	0
9219	38	0
9222	6	0
9225	18	0
9228	3	0
9231	21	12
9234	3	0
9237	3	0
9240	137	7
9243	6	0
9246	15	0
9249	2	0
9252	38	0
9255	2	0
9258	11	0
9261	26	0
9264	4	0
9267	9	0
9270	18	0
9273	2	0
9276	183	0
9279	2	0
9282	15	0
9285	77	1
9288	27	0
9291	5	0
9294	3	0
9297	2	0
9300	10	0
9303	1	3
9306	2	0
9309	2	0
9312	108	0
9315	10	0
9318	10	0
9321	5	0
9324	13	0
9327	3	0
9330	4	0
9333	14	0
9336	5	0
9339	3	0
9342	18	0
9345	2	0
9348	59	0
9351	2	0
9354	5	0
9357	3	0
9360	3	0
9363	8	0
9366	4	0
9369	4	0
9372	3	0
9375	45	0
9378	12	32
9381	86	0
9384	29	0
9387	4	0
9390	2	0
9393	10	0
9396	17	0
9399	3	0
9402	1	0
9405	3	0
9408	57	0
9411	4	0
9414	271	2
9417	7	0
9420	3	0
9423	12	0
9426	17	0
9429	27	0
9432	2	0
9435	1	0
9438	61	0
9441	7	0
9444	9	0
9447	3	0
9450	6	0
9453	8	0
9456	17	0
9459	1	0
9462	14	0
9465	45	0
9468	6	0
9471	3	0
9474	5	0
9477	178	0
9480	1	3
9483	11	0
9486	63	0
9489	9	0
9492	40	0
9495	10	0
9498	6	0
9501	12	0
9504	31	0
9507	4	0
9510	5	0
9513	2	0
9516	3	0
9519	8	0
9522	14	0
9525	4	0
9528	2	0
9531	10	0
9534	10	0
9537	72	1
9540	3	0
9543	5	0
9546	3	0
9549	0	0
9552	3	0
9555	3	0
9558	3	0
9561	156	0
9564	257	0
9567	9	0
9570	4	0
9573	7	0
9576	10	0
9579	19	0
9582	29	0
9585	41	0
9588	15	0
9591	9	0
9594	2	0
9597	128	0
9600	13	0
9603	43	0
9606	1	0
9609	13	0
9612	6	0
9615	46	1
9618	2	0
9621	87	0
9624	18	0
9627	7	0
9630	14	0
9633	6	0
9636	9	0
9639	55	0
9642	5	0
9645	146	0
9648	44	0
9651	7	0
9654	3	0
9657	70	0
9660	2	0
9663	11	0
9666	13	0
9669	29	0
9672	13	0
9675	29	0
9678	2	0
9681	81	0
9684	13	0
9687	166	0
9690	8	0
9693	8	0
9696	3	0
9699	3	0
9702	2	0
9705	13	0
9708	1	0
9711	3	0
9714	4	0
9717	2	0
9720	11	0
9723	301	0
9726	37	0
9729	8	0
9732	3	0
9735	34	0
9738	36	0
9741	89	0
9744	36	0
9747	3	0
9750	45	0
9753	3	0
9756	11	0
9759	13	0
9762	4	0
9765	15	0
9768	20	0
9771	2	0
9774	10	0
9777	4	0
9780	4	0
9783	2	0
9786	50	0
9789	7	0
9792	2	0
9795	52	0
9798	4	0
9801	8	0
9804	2	0
9807	11	0
9810	2	0
9813	23	0
9816	2	0
9819	18	0
9822	6	0
9825	1	0
9828	4	0
9831	8	0
9834	7	0
9837	1	0
9840	15	0
9843	15	0
9846	21	0
9849	31	0
9852	4	0
9855	20	0
9858	18	0
9861	27	0
9864	2	0
9867	17	0
9870	52	0
9873	2	0
9876	2	0
9879	3	0
9882	5	0
9885	4	0
9888	50	0
9891	4	0
9894	19	0
9897	4	0
9900	30	0
9903	6	0
9906	110	0
9909	31	0
9912	3	0
9915	21	0
9918	33	0
9921	7	0
9924	0	40
9927	60	20
9930	3	0
9933	17	0
9936	9	0
9939	5	0
9942	1	0
9945	18	0
9948	4	0
9951	99	0
9954	10	0
9957	3	0
9960	180	0
9963	11	0
9966	4	0
9969	2	0
9972	12	0
9975	13	0
9978	7	0
9981	4	0
9984	18	0
9987	2	0
9990	74	4
9993	73	0
9996	2	0
9999	7	0
10002	35	0
10005	53	0
10008	23	0
10011	24	0
10014	3	0
10017	4	0
10020	1	0
10023	15	0
10026	0	0
10029	132	0
10032	3	0
10035	27	0
10038	27	0
10041	21	0
10044	3	0
10047	27	0
10050	112	0
10053	2	0
10056	13	0
10059	47	0
10062	7	0
10065	21	0
10068	2	0
10071	10	0
10074	53	0
10077	137	0
10080	44	0
10083	17	0
10086	12	0
10089	90	0
10092	145	8
10095	4	0
10098	4	0
10101	0	3
10104	4	0
10107	2	0
10110	1	0
10113	8	0
10116	11	0
10119	20	0
10122	10	0
10125	9	0
10128	44	0
10131	10	0
10134	46	0
10137	50	0
10140	4	0
10143	5	0
10146	4	0
10149	7	0
10152	8	0
10155	15	0
10158	2	0
10161	15	0
10164	22	0
10167	3	0
10170	2	0
10173	84	0
10176	8	0
10179	46	0
10182	2	0
10185	10	0
10188	16	0
10191	25	0
10194	1	0
10197	3	0
10200	10	0
10203	47	0
10206	6	0
10209	2	0
10212	11	0
10215	19	0
10218	23	0
10221	4	0
10224	2	0
10227	8	0
10230	2	0
10233	8	9
10236	21	0
10239	14	0
10242	11	0
10245	8	0
10248	14	0
10251	30	0
10254	0	0
10257	3	0
10260	23	0
10263	47	0
10266	14	0
10269	7	0
10272	2	0
10275	6	0
10278	23	0
10281	119	0
10284	20	0
10287	0	0
10290	7	0
10293	2	0
10296	2	0
10299	10	0
10302	7	0
10305	12	0
10308	90	0
10311	269	0
10314	9	0
10317	11	0
10320	112	0
10323	2	0
10326	10	0
10329	9	0
10332	4	0
10335	7	0
10338	9	0
10341	10	0
10344	1	0
10347	130	0
10350	4	0
10353	8	0
10356	181	0
10359	53	0
10362	93	0
10365	4	0
10368	3	22
10371	2	0
10374	44	0
10377	13	0
10380	1	0
10383	50	0
10386	1	0
10389	6	0
10392	4	0
10395	3	0
10398	26	0
10401	28	0
10404	2	0
10407	7	0
10410	12	0
10413	0	0
10416	18	0
10419	3	0
10422	4	0
10425	23	0
10428	29	0
10431	5	0
10434	6	0
10437	4	0
10440	19	0
10443	2	19
10446	12	0
10449	4	0
10452	3	0
10455	3	0
10458	18	0
10461	9	0
10464	30	0
10467	9	0
10470	4	0
10473	1	0
10476	5	0
10479	9	0
10482	49	0
10485	24	0
10488	9	0
10491	3	0
10494	2	0
10497	2	0
10500	17	0
10503	2	0
10506	9	0
10509	1	0
10512	30	0
10515	11	0
10518	4	49
10521	50	0
10524	2	0
10527	3	0
10530	7	0
10533	174	4
10536	4	0
10539	20	0
10542	240	0
10545	4	0
10548	1	0
10551	14	0
10554	10	0
10557	13	0
10560	19	0
10563	4	0
10566	21	0
10569	15	0
10572	110	0
10575	29	0
10578	3	0
10581	38	0
10584	38	0
10587	3	0
10590	70	0
10593	21	0
10596	17	0
10599	23	0
10602	4	0
10605	58	0
10608	9	0
10611	2	0
10614	57	0
10617	4	0
10620	9	0
10623	148	0
10626	0	0
10629	50	0
10632	3	0
10635	6	0
10638	46	0
10641	7	0
10644	4	0
10647	11	0
10650	0	0
10653	6	0
10656	2	0
10659	4	0
10662	76	0
10665	17	0
10668	5	0
10671	2	0
10674	2	0
10677	2	0
10680	2	0
10683	1	0
10686	17	0
10689	329	0
10692	2	0
10695	200	0
10698	2	0
10701	80	0
10704	134	1
10707	520	0
10710	8	0
10713	3	0
10716	3	0
10719	55	0
10722	8	0
10725	7	0
10728	3	0
10731	52	0
10734	31	0
10737	26	0
10740	14	0
10743	9	0
10746	17	0
10749	8	0
10752	2	0
10755	2	0
10758	2	0
10761	14	0
10764	1	0
10767	4	0
10770	4	0
10773	2	0
10776	4	0
10779	4	0
10782	11	0
10785	60	0
10788	22	0
10791	256	0
10794	25	0
10797	7	0
10800	87	0
10803	3	0
10806	1	0
10809	21	0
10812	2	0
10815	13	0
10818	38	0
10821	8	0
10824	3	0
10827	2	0
10830	4	0
10833	9	0
10836	0	35
10839	49	0
10842	167	0
10845	4	0
10848	11	0
10851	13	0
10854	37	0
10857	22	0
10860	22	0
10863	5	0
10866	2	0
10869	19	0
10872	13	0
10875	23	0
10878	1	0
10881	4	0
10884	25	0
10887	1	0
10890	54	0
10893	17	0
10896	3	0
10899	13	0
10902	59	0
10905	60	0
10908	6	0
10911	7	0
10914	2	0
10917	67	15
10920	6	0
10923	16	1
10926	3	0
10929	1	0
10932	5	0
10935	13	0
10938	3	0
10941	14	0
10944	3	0
10947	11	0
10950	2	0
10953	34	0
10956	70	0
10959	2	0
10962	13	0
10965	21	0
10968	103	0
10971	45	0
10974	40	0
10977	70	0
10980	6	0
10983	63	0
10986	11	0
10989	22	0
10992	50	0
10995	1	0
10998	54	0
11001	10	0
11004	1	0
11007	16	0
11010	11	0
11013	14	0
11016	36	0
11019	1	0
11022	9	0
11025	9	0
11028	6	1
11031	2	0
11034	3	0
11037	40	0
11040	2	0
11043	10	0
11046	27	0
11049	4	0
11052	2	0
11055	13	0
11058	6	0
11061	2	0
11064	183	0
11067	2	0
11070	2	0
11073	14	0
11076	8	0
11079	6	0
11082	2	0
11085	10	0
11088	53	0
11091	46	0
11094	8	0
11097	45	0
11100	50	0
11103	4	1
11106	1	0
11109	5	54
11112	2	0
11115	2	0
11118	108	0
11121	154	2
11124	4	0
11127	83	0
11130	9	0
11133	15	0
11136	5	0
11139	3	0
11142	49	0
11145	2	0
11148	37	0
11151	9	0
11154	4	0
11157	10	0
11160	2	0
11163	28	0
11166	18	0
11169	2	0
11172	10	0
11175	9	0
11178	159	0
11181	115	0
11184	14	0
11187	43	0
11190	42	0
11193	1	0
11196	15	0
11199	29	0
11202	16	0
11205	15	0
11208	2	0
11211	6	0
11214	8	0
11217	17	0
11220	16	0
11223	2	0
11226	9	0
11229	11	0
11232	27	0
11235	16	0
11238	3	0
11241	21	0
11244	12	0
11247	20	0
11250	15	0
11253	17	0
11256	23	0
11259	11	0
11262	17	0
11265	143	0
11268	4	0
11271	2	0
11274	29	0
11277	24	0
11280	6	0
11283	17	0
11286	29	0
11289	1	0
11292	42	0
11295	1	0
11298	36	0
11301	3	0
11304	0	0
11307	6	0
11310	2	0
11313	11	0
11316	6	0
11319	22	0
11322	21	0
11325	3	0
11328	290	0
11331	8	0
11334	3	0
11337	6	0
11340	3	0
11343	28	0
11346	3	0
11349	39	0
11352	30	0
11355	6	0
11358	5	0
11361	4	0
11364	3	70
11367	7	0
11370	20	0
11373	1	0
11376	14	0
11379	1	0
11382	76	0
11385	7	0
11388	2	0
11391	35	0
11394	34	0
11397	6	0
11400	5	0
11403	33	0
11406	34	0
11409	124	0
11412	12	0
11415	1	0
11418	4	0
11421	6	0
11424	7	0
11427	4	0
11430	14	0
11433	6	0
11436	5	0
11439	25	0
11442	77	0
11445	8	5
11448	10	0
11451	259	11
11454	2	0
11457	47	0
11460	2	0
11463	5	0
11466	11	0
11469	19	0
11472	26	0
11475	3	0
11478	144	0
11481	5	0
11484	4	0
11487	10	0
11490	9	0
11493	10	0
11496	2	0
11499	24	0
11502	10	0
11505	2	0
11508	19	0
11511	3	18
11514	22	0
11517	11	0
11520	5	0
11523	6	0
11526	1	0
11529	16	0
11532	10	0
11535	176	0
11538	6	0
11541	11	0
11544	20	1
11547	6	0
11550	62	0
11553	12	0
11556	3	0
11559	30	0
11562	2	0
11565	2	0
11568	112	0
11571	10	0
11574	3	0
11577	1	8
11580	30	0
11583	42	0
11586	75	4
11589	13	0
11592	3	0
11595	34	0
11598	16	0
11601	10	0
11604	2	0
11607	34	0
11610	3	0
11613	54	0
11616	5	0
11619	126	45
11622	13	0
11625	55	0
11628	22	0
11631	6	0
11634	171	0
11637	2	0
11640	2	0
11643	26	0
11646	24	0
11649	11	0
11652	7	0
11655	6	0
11658	10	0
11661	9	0
11664	4	0
11667	5	0
11670	12	0
11673	5	0
11676	25	0
11679	127	0
11682	54	0
11685	36	0
11688	20	0
11691	2	0
11694	18	0
11697	4	0
11700	34	0
11703	24	0
11706	1	0
11709	107	3
11712	5	0
11715	3	0
11718	8	0
11721	5	0
11724	24	0
11727	15	0
11730	6	0
11733	7	0
11736	5	0
11739	9	0
11742	27	0
11745	23	0
11748	1	0
11751	2	0
11754	25	0
11757	73	0
11760	19	0
11763	28	0
11766	2	0
11769	1	0
11772	2	2
11775	92	0
11778	29	0
11781	1	0
11784	0	50
11787	30	0
11790	2	0
11793	11	0
11796	3	0
11799	4	0
11802	11	0
11805	25	0
11808	2	0
11811	5	0
11814	20	0
11817	20	0
11820	7	0
11823	1	0
11826	10	0
11829	3	24
11832	20	0
11835	8	0
11838	11	0
11841	10	0
11844	21	4
11847	2	0
11850	23	0
11853	0	0
11856	5	0
11859	5	0
11862	8	0
11865	2	0
11868	30	0
11871	9	0
11874	47	0
11877	83	0
11880	18	0
11883	5	0
11886	61	0
11889	13	0
11892	3	0
11895	18	0
11898	8	0
11901	4	0
11904	12	0
11907	4	0
11910	130	0
11913	128	0
11916	1	0
11919	4	0
11922	11	0
11925	9	0
11928	46	0
11931	16	0
11934	15	0
11937	2	0
11940	38	0
11943	13	0
11946	8	0
11949	10	0
11952	10	0
11955	1	0
11958	21	0
11961	5	0
11964	1	0
11967	13	0
11970	34	0
11973	63	0
11976	4	0
11979	3	0
11982	22	0
11985	20	0
11988	25	0
11991	45	0
11994	6	0
11997	10	0
12000	9	0
12003	7	0
12006	5	0
12009	98	0
12012	27	0
12015	34	0
12018	28	0
12021	8	0
12024	6	0
12027	5	2
12030	23	0
12033	11	0
12036	8	0
12039	13	0
12042	7	0
12045	13	0
12048	13	0
12051	4	0
12054	223	0
12057	2	0
12060	7	0
12063	2	0
12066	10	0
12069	4	0
12072	3	0
12075	15	0
12078	13	0
12081	261	0
12084	15	0
12087	3	0
12090	5	0
12093	9	0
12096	6	0
12099	9	0
12102	6	0
12105	3	0
12108	69	0
12111	4	0
12114	3	0
12117	14	0
12120	3	0
12123	14	0
12126	13	0
12129	7	0
12132	4	0
12135	2	0
12138	1	0
12141	10	0
12144	1	0
12147	134	1
12150	1	0
12153	12	0
12156	17	0
12159	3	0
12162	5	0
12165	40	0
12168	51	0
12171	15	2
12174	1	0
12177	20	0
12180	23	0
12183	3	0
12186	20	0
12189	1	0
12192	41	0
12195	20	0
12198	5	0
12201	9	0
12204	27	0
12207	0	0
12210	5	0
12213	5	0
12216	2	0
12219	2	0
12222	87	0
12225	7	0
12228	47	0
12231	12	0
12234	5	11
12237	30	0
12240	3	0
12243	1	0
12246	5	0
12249	3	0
12252	2	0
12255	27	0
12258	10	0
12261	7	0
12264	1	0
12267	3	0
12270	7	0
12273	11	0
12276	46	6
12279	4	0
12282	16	0
12285	9	0
12288	39	0
12291	9	0
12294	47	0
12297	5	0
12300	3	0
12303	2	0
12306	6	0
12309	10	0
12312	3	0
12315	10	0
12318	4	0
12321	19	0
12324	1	0
12327	29	0
12330	57	0
12333	24	4
12336	70	0
12339	8	0
12342	4	0
12345	6	0
12348	4	0
12351	167	0
12354	0	0
12357	113	0
12360	108	0
12363	10	0
12366	3	0
12369	84	0
12372	3	0
12375	12	0
12378	8	0
12381	3	0
12384	12	0
12387	1	1
12390	10	0
12393	7	0
12396	3	0
12399	11	0
12402	10	0
12405	158	0
12408	4	47
12411	6	0
12414	14	0
12417	1	0
12420	31	0
12423	15	0
12426	8	0
12429	13	0
12432	3	0
12435	3	0
12438	33	0
12441	20	0
12444	30	0
12447	34	0
12450	3	0
12453	141	0
12456	13	0
12459	9	0
12462	37	0
12465	56	0
12468	157	0
12471	4	0
12474	4	0
12477	17	0
12480	2	0
12483	2	0
12486	3	0
12489	16	0
12492	133	0
12495	30	0
12498	2	0
12501	6	0
12504	83	0
12507	4	0
12510	3	0
12513	6	0
12516	0	0
12519	4	0
12522	3	0
12525	11	0
12528	2	0
12531	8	0
12534	40	0
12537	56	0
12540	76	0
12543	30	0
12546	2	0
12549	2	0
12552	3	0
12555	132	0
12558	2	0
12561	11	0
12564	9	0
12567	1	0
12570	40	0
12573	41	0
12576	23	0
12579	3	0
12582	1	0
12585	55	0
12588	68	0
12591	1	0
12594	19	0
12597	4	0
12600	0	0
12603	24	0
12606	82	0
12609	2	0
12612	27	0
12615	106	0
12618	1	0
12621	60	0
12624	9	0
12627	2	0
12630	7	0
12633	5	0
12636	7	0
12639	12	0
12642	17	0
12645	116	0
12648	13	0
12651	18	0
12654	7	0
12657	3	0
12660	18	0
12663	29	0
12666	5	0
12669	36	0
12672	124	1
12675	9	0
12678	10	0
12681	5	0
12684	2	0
12687	13	0
12690	31	0
12693	1	0
12696	0	0
12699	4	0
12702	1	0
12705	8	0
12708	32	0
12711	2	0
12714	2	0
12717	6	0
12720	4	0
12723	29	0
12726	75	0
12729	0	23
12732	5	0
12735	3	0
12738	17	0
12741	12	0
12744	26	0
12747	11	0
12750	264	0
12753	8	0
12756	8	0
12759	8	0
12762	4	0
12765	7	0
12768	6	0
12771	160	0
12774	9	0
12777	12	0
12780	12	0
12783	9	0
12786	17	0
12789	50	0
12792	7	0
12795	80	0
12798	37	0
12801	3	0
12804	3	0
12807	6	0
12810	5	0
12813	21	0
12816	18	0
12819	47	0
12822	0	0
12825	3	0
12828	3	0
12831	3	0
12834	44	0
12837	132	0
12840	3	0
12843	3	0
12846	5	0
12849	6	0
12852	28	0
12855	1	0
12858	8	0
12861	8	0
12864	2	0
12867	10	0
12870	66	0
12873	21	0
12876	22	0
12879	7	0
12882	23	0
12885	68	0
12888	14	0
12891	4	0
12894	6	0
12897	1	0
12900	7	0
12903	2	0
12906	22	0
12909	1	0
12912	5	0
12915	15	0
12918	7	0
12921	28	0
12924	5	0
12927	3	0
12930	57	0
12933	12	0
12936	14	0
12939	51	0
12942	1	0
12945	5	0
12948	1	0
12951	3	0
12954	2	0
12957	2	0
12960	3	0
12963	10	0
12966	4	0
12969	8	0
12972	3	0
12975	9	0
12978	1	0
12981	6	0
12984	60	0
12987	8	0
12990	1	0
12993	3	0
12996	52	0
12999	8	0
13002	7	0
13005	9	0
13008	6	0
13011	12	0
13014	2	0
13017	6	0
13020	0	0
13023	5	0
13026	12	0
13029	13	0
13032	48	0
13035	16	0
13038	2	0
13041	4	0
13044	3	0
13047	6	0
13050	15	0
13053	1	0
13056	34	0
13059	2	0
13062	3	0
13065	65	0
13068	10	0
13071	10	0
13074	10	0
13077	1	0
13080	7	0
13083	8	0
13086	21	0
13089	3	0
13092	81	0
13095	5	0
13098	34	0
13101	2	0
13104	42	0
13107	24	0
13110	15	0
13113	8	0
13116	1	0
13119	15	0
13122	3	0
13125	13	0
13128	9	0
13131	53	0
13134	9	0
13137	63	0
13140	10	0
13143	2	0
13146	72	0
13149	54	0
13152	98	0
13155	20	0
13158	49	0
13161	141	0
13164	160	0
13167	2	0
13170	12	0
13173	2	225
13176	1	0
13179	14	0
13182	39	0
13185	5	0
13188	4	24
13191	4	0
13194	189	0
13197	8	0
13200	20	0
13203	11	0
13206	2	0
13209	10	0
13212	91	0
13215	8	0
13218	123	0
13221	9	0
13224	23	0
13227	8	0
13230	5	0
13233	35	0
13236	20	0
13239	6	0
13242	3	0
13245	53	0
13248	2	0
13251	16	0
13254	1	0
13257	110	0
13260	3	0
13263	10	0
13266	7	0
13269	18	0
13272	3	0
13275	2	0
13278	2	0
13281	20	0
13284	9	0
13287	34	0
13290	230	0
13293	1	0
13296	4	0
13299	8	0
13302	2	0
13305	1	0
13308	9	0
13311	3	0
13314	12	0
13317	141	0
13320	2	0
13323	3	0
13326	32	0
13329	70	0
13332	6	0
13335	6	0
13338	2	0
13341	3	0
13344	8	0
13347	4	30
13350	5	0
13353	95	3
13356	16	0
13359	8	0
13362	16	0
13365	143	0
13368	349	0
13371	8	0
13374	14	0
13377	14	0
13380	10	0
13383	127	0
13386	1	0
13389	23	0
13392	14	0
13395	16	2
13398	2	0
13401	18	0
13404	4	0
13407	6	0
13410	22	0
13413	2	0
13416	2	0
13419	3	0
13422	29	0
13425	1	0
13428	5	0
13431	25	0
13434	37	0
13437	73	0
13440	1	0
13443	5	0
13446	1	0
13449	4	0
13452	88	0
13455	50	0
13458	3	0
13461	2	0
13464	5	0
13467	3	0
13470	6	0
13473	14	0
13476	15	0
13479	36	0
13482	35	0
13485	27	0
13488	7	0
13491	2	0
13494	4	0
13497	25	0
13500	1	0
13503	44	0
13506	4	0
13509	30	0
13512	2	0
13515	2	0
13518	1	0
13521	1	0
13524	229	0
13527	4	0
13530	16	0
13533	2	0
13536	5	0
13539	2	0
13542	12	0
13545	65	0
13548	10	0
13551	22	0
13554	33	0
13557	234	0
13560	9	0
13563	8	0
13566	74	0
13569	5	0
13572	1	0
13575	2	0
13578	3	0
13581	8	0
13584	23	44
13587	4	0
13590	10	0
13593	85	0
13596	3	0
13599	70	0
13602	104	0
13605	5	0
13608	5	0
13611	1	0
13614	10	0
13617	1	0
13620	51	0
13623	2	0
13626	16	0
13629	104	0
13632	0	20
13635	7	0
13638	5	0
13641	27	0
13644	196	7
13647	1	0
13650	1	0
13653	6	0
13656	13	0
13659	45	0
13662	0	3
13665	22	1
13668	2	0
13671	53	0
13674	75	0
13677	39	0
13680	26	0
13683	5	0
13686	28	0
13689	11	0
13692	6	0
13695	8	0
13698	3	0
13701	10	0
13704	4	0
13707	4	0
13710	2	0
13713	5	0
13716	6	2
13719	4	0
13722	15	0
13725	5	0
13728	1	0
13731	5	0
13734	18	0
13737	11	0
13740	1	0
13743	44	0
13746	70	10
13749	24	0
13752	229	0
13755	5	0
13758	5	0
13761	1	0
13764	9	0
13767	3	0
13770	38	0
13773	1	0
13776	55	0
13779	1	0
13782	41	0
13785	0	4
13788	3	1
13791	4	0
13794	11	0
13797	13	0
13800	9	0
13803	1	0
13806	2	0
13809	4	0
13812	1	0
13815	7	0
13818	8	0
13821	102	0
13824	11	0
13827	1	0
13830	5	0
13833	14	0
13836	9	0
13839	2	0
13842	4	0
13845	2	0
13848	3	0
13851	4	0
13854	28	0
13857	14	13
13860	11	0
13863	7	0
13866	1	0
13869	61	0
13872	19	3
13875	8	8
13878	1	0
13881	5	0
13884	6	0
13887	5	0
13890	3	0
13893	7	0
13896	5	0
13899	2	0
13902	11	0
13905	50	0
13908	1	0
13911	7	0
13914	17	0
13917	1	0
13920	2	0
13923	5	0
13926	5	0
13929	4	0
13932	3	0
13935	16	0
13938	1	0
13941	7	0
13944	17	0
13947	10	0
13950	18	0
13953	1	0
13956	3	0
13959	1	0
13962	2	0
13965	64	10
13968	12	0
13971	8	0
13974	3	0
13977	15	0
13980	7	0
13983	2	0
13986	5	0
13989	10	0
13992	12	0
13995	3	0
13998	6	0
14001	6	0
14004	217	0
14007	4	0
14010	16	6
14013	18	0
14016	24	0
14019	4	0
14022	5	0
14025	9	0
14028	6	0
14031	17	0
14034	6	0
14037	8	0
14040	3	0
14043	35	0
14046	16	2
14049	3	0
14052	2	0
14055	4	0
14058	1	0
14061	22	0
14064	10	0
14067	6	0
14070	1	1
14073	10	0
14076	22	0
14079	5	0
14082	4	0
14085	169	0
14088	24	0
14091	14	0
14094	88	0
14097	8	0
14100	6	0
14103	3	0
14106	0	0
14109	9	0
14112	2	0
14115	10	0
14118	\N	\N
14121	6	2
14124	3	0
14127	1	0
14130	3	\N
14133	131	0
14136	4	0
14139	2	0
14142	1	0
14145	6	0
14148	3	0
14151	19	0
14154	1	0
14157	1	0
14160	8	0
14163	7	0
14166	5	0
14169	4	0
14172	44	7
14175	5	0
14178	19	0
14181	13	0
14184	1	0
14187	55	5
14190	2	0
14193	2	0
14196	7	0
14199	109	4
14202	13	0
14205	25	0
14208	6	0
14211	14	0
14214	11	0
14217	27	0
14220	2	0
14223	3	0
14226	143	0
14229	1	0
14232	10	0
14235	7	0
14238	8	0
14241	14	0
14244	5	0
14247	0	4
14250	6	0
14253	3	0
14256	1	0
14259	2	0
14262	3	0
14265	8	0
14268	86	0
14271	83	0
14274	44	0
14277	2	0
14280	1	0
14283	57	0
14286	1	0
14289	1	0
14292	9	0
14295	2	0
14298	24	0
14301	10	0
14304	3	0
14307	2	0
14310	3	0
14313	10	0
14316	2	0
14319	6	0
14322	1	0
14325	21	0
14328	3	0
14331	16	0
14334	19	1
14337	3	0
14340	18	0
14343	1	0
14346	14	0
14349	16	0
14352	10	0
14355	34	0
14358	5	0
14361	30	0
14364	7	0
14367	1	0
14370	145	0
14373	8	0
14376	13	0
14379	10	0
14382	6	0
14385	3	0
14388	6	0
14391	4	0
14394	0	0
14397	2	0
14400	9	0
14403	4	0
14406	44	0
14409	64	125
14412	92	2750
14415	65	2750
14418	19	0
14421	1	0
14424	9	0
14427	3	0
14430	78	0
14433	114	4
14436	3	0
14439	10	0
14442	10	0
14445	2	0
14448	3	0
14451	3	0
14454	260	5
14457	27	0
14460	2	0
14463	2	0
14466	24	0
14469	1	0
14472	3	0
14475	18	0
14478	2	0
14481	2	0
14484	6	0
14487	16	0
14490	2	0
14493	8	0
14496	5	0
14499	5	0
14502	7	0
14505	3	0
14508	5	0
14511	1	0
14514	26	0
14517	6	0
14520	5	0
14523	92	0
14526	2	0
14529	117	0
14532	1	0
14535	17	0
14538	10	0
14541	3	0
14544	17	0
14547	1	0
14550	4	0
14553	4	0
14556	2	0
14559	128	0
14562	6	0
14565	3	0
14568	6	0
14571	8	0
14574	74	75
14577	14	0
14580	112	0
14583	5	0
14586	225	0
14589	6	0
14592	3	0
14595	20	0
14598	5	0
14601	1	0
14604	3	0
14607	71	0
14610	2	2
14613	25	0
14616	4	0
14619	10	0
14622	11	0
14625	4	0
14628	0	85
14631	14	0
14634	10	0
14637	5	0
14640	121	0
14643	18	0
14646	16	0
14649	1	0
14652	23	0
14655	3	0
14658	2	0
14661	6	0
14664	2	0
14667	3	0
14670	12	5
14673	1	0
14676	1	0
14679	8	0
14682	20	0
14685	7	0
14688	2	0
14691	19	0
14694	1	0
14697	3	0
14700	8	0
14703	17	0
14706	1	0
14709	2	0
14712	44	0
14715	1	0
14718	3	0
14721	1	0
14724	75	0
14727	21	0
14730	46	0
14733	7	0
14736	3	0
14739	6	0
14742	8	0
14745	2	0
14748	3	0
14751	275	0
14754	17	0
14757	11	0
14760	102	0
14763	4	0
14766	3	0
14769	129	0
14772	75	0
14775	4	0
14778	2	0
14781	5	0
14784	8	0
14787	4	0
14790	4	0
14793	1	0
14796	7	0
14799	3	0
14802	4	0
14805	4	11
14808	4	0
14811	5	0
14814	116	0
14817	2	0
14820	4	0
14823	14	0
14826	5	0
14829	2	0
14832	1	0
14835	20	0
14838	21	0
14841	2	0
14844	8	0
14847	1	0
14850	6	0
14853	7	0
14856	3	0
14859	4	0
14862	2	0
14865	1	0
14868	5	0
14871	3	0
14874	1	0
14877	15	0
14880	2	0
14883	4	0
14886	1	0
14889	20	13
14892	2	0
14895	3	0
14898	2	0
14901	140	0
14904	148	0
14907	37	0
14910	10	0
14913	1	0
14916	9	0
14919	43	0
14922	6	0
14925	4	0
14928	3	0
14931	4	0
14934	1	0
14937	5	0
14940	6	0
14943	4	0
14946	7	0
14949	7	0
14952	3	0
14955	6	0
14958	7	0
14961	33	0
14964	1	0
14967	7	0
14970	2	0
14973	3	0
14976	19	0
14979	4	0
14982	24	0
14985	6	1
14988	2	0
14991	6	0
14994	2	0
14997	1	0
15000	2	0
15003	3	0
15006	25	0
15009	46	0
15012	41	0
15015	1	0
15018	2	0
15021	17	0
15024	1	0
15027	4	0
15030	3	0
15033	6	0
15036	2	0
15039	7	0
15042	3	0
15045	2	0
15048	13	0
15051	10	0
15054	5	0
15057	3	0
15060	53	0
15063	3	0
15066	26	0
15069	2	0
15072	2	0
15075	6	0
15078	16	0
15081	2	1
15084	1	0
15087	20	0
15090	9	0
15093	1	0
15096	31	0
15099	2	0
15102	10	0
15105	104	0
15108	7	0
15111	2	0
15114	8	0
15117	2	0
15120	15	0
15123	2	0
15126	2	0
15129	28	0
15132	8	0
15135	8	0
15138	9	0
15141	18	0
15144	3	0
15147	13	0
15150	2	0
15153	10	0
15156	15	0
15159	10	0
15162	13	0
15165	27	0
15168	7	0
15171	60	0
15174	0	0
15177	16	0
15180	14	0
15183	121	0
15186	160	0
15189	40	0
15192	11	0
15195	99	44
15198	14	0
15201	2	0
15204	4	0
15207	4	0
15210	2	0
15213	1	0
15216	117	0
15219	8	0
15222	94	14
15225	0	1
15228	108	0
15231	20	0
15234	23	0
15237	12	0
15240	2	0
15243	3	0
15246	6	0
15249	11	0
15252	42	0
15255	3	0
15258	3	0
15261	1	0
15264	6	0
15267	6	0
15270	2	0
15273	5	0
15276	19	0
15279	14	0
15282	6	0
15285	4	0
15288	2	3
15291	3	0
15294	113	0
15297	1	0
15300	4	0
15303	2	0
15306	40	0
15309	2	0
15312	5	0
15315	9	0
15318	1	0
15321	5	1
15324	5	0
15327	128	0
15330	45	0
15333	17	0
15336	5	0
15339	1	0
15342	3	0
15345	170	0
15348	49	0
15351	29	0
15354	14	0
15357	12	0
15360	13	0
15363	154	0
15366	4	0
15369	15	0
15372	96	0
15375	38	0
15378	3	0
15381	2	0
15384	3	0
15387	102	0
15390	1	0
15393	34	0
15396	2	0
15399	2	0
15402	12	0
15405	0	1
15408	1	0
15411	3	0
15414	22	0
15417	4	0
15420	1	0
15423	4	0
15426	6	0
15429	11	0
15432	3	0
15435	18	0
15438	114	0
15441	9	0
15444	3	0
15447	13	0
15450	21	0
15453	6	0
15456	15	0
15459	6	0
15462	1	0
15465	22	0
15468	5	0
15471	3	6
15474	2	0
15477	1	0
15480	187	12
15483	1	0
15486	5	0
15489	9	0
15492	5	0
15495	20	0
15498	6	0
15501	14	0
15504	2	0
15507	14	0
15510	8	0
15513	11	0
15516	90	0
15519	1	0
15522	21	30
15525	3	0
15528	10	0
15531	18	0
15534	2	6
15537	0	2
15540	57	0
15543	4	0
15546	2	0
15549	5	0
15552	18	0
15555	6	0
15558	1	0
15561	0	0
15564	13	0
15567	20	0
15570	3	0
15573	46	0
15576	5	0
15579	10	0
15582	3	0
15585	19	0
15588	1	0
15591	8	0
15594	0	47
15597	13	0
15600	20	0
15603	24	0
15606	2	0
15609	1	0
15612	4	0
15615	9	0
15618	11	0
15621	3	2
15624	10	0
15627	4	0
15630	32	0
15633	1	0
15636	10	0
15639	18	0
15642	7	0
15645	6	0
15648	4	0
15651	1	0
15654	0	3
15657	9	0
15660	8	0
15663	5	0
15666	9	0
15669	10	0
15672	3	0
15675	154	0
15678	11	0
15681	68	0
15684	3	0
15687	17	0
15690	3	0
15693	7	0
15696	88	0
15699	4	0
15702	4	0
15705	18	0
15708	4	0
15711	8	8
15714	4	0
15717	7	0
15720	7	0
15723	7	0
15726	3	0
15729	3	0
15732	12	0
15735	8	0
15738	0	0
15741	24	0
15744	2	0
15747	49	1
15750	13	0
15753	5	0
15756	9	0
15759	11	0
15762	17	0
15765	14	0
15768	2	0
15771	16	0
15774	24	0
15777	6	0
15780	11	0
15783	1	0
15786	7	0
15789	18	0
15792	98	2
15795	4	\N
15798	228	0
15801	1	0
15804	13	0
\.


--
-- TOC entry 2842 (class 0 OID 41645)
-- Dependencies: 203
-- Data for Name: operador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.operador (id, operador) FROM stdin;
6	Military - Ukraine Air Force
12	Private - Techint  group
18	Inex Adria Aviopromet
24	Lexington Air Taxi
30	SAETA
36	Military - Dostum-Galboddin Militia
42	Survair
48	DTA Angola Airlines
54	ADES Colombia
60	Airborne Express
66	Air Cargo Express
72	ERA Helicopter
78	\N
84	Ceskoslovenske Aerolinie
90	Zantop International Airlines
96	ADC Airlines
102	Bristol 170 Freighter 31M
108	Darbhanga Aviation
114	Hati Express
120	Aero Lloyd
126	SAN Ecuador
132	Total
138	Military - Fuerza AÃ©rea Colombiana
144	Romanian Banat Air
150	Falcon Airways - Air Taxi
156	North Coast Aviation
162	Interior Airways
168	Houston-Beech - Air Taxi
174	Milne Bay Air
180	Air Taxi - Centre Airlines Inc.
186	Temsco Airlines
192	Fred Olsen Flyveselskap
198	Evolga
204	PacifiWestern Airlines
210	Aerovanguardia
216	Safe Air Cargo
222	Lumbini Airways
228	Union Aeromaritime de Transport
234	Skyvan Airways
240	Air Melanesie
246	Havasu City Air - Air Taxi
252	KLM Cityhopper
258	Military - Fuerza AÃ©rea Argentina
264	Komi Avia
270	Caribbean Air Carrier - Air Taxi
276	Paraense Transportes AÃ©reos
282	Silver City Airways
288	TPI International Airways
294	Nile Safaris Aviation
300	National Air Transport Services
306	Sky Haven - Air Taxi
312	Webstas Aviation Services Inc.
318	Air Georgian
324	Hornbill Airways
330	Air Taxi - Temesco Helicopters Inc.
336	Mid Island Air - Air Taxi
342	Lackey Aero Company - Taxi
348	China Northwest Airlines
354	Tech - Aeronautical Explotiation
360	Bashkirian Airlines / DHL Worldwide Express
366	Okanagan Helicopters
372	Rusts Flying Service Inc.
378	Air Taxi - Bohemia Inc.
384	Air China
390	Eastern Air Transport
396	Military - U.S. Air Force / Military - U.S. Air Force
402	Cooper Skybird Air Charters
408	British Airtours
414	Ray A. Gardner - Taxi
420	Military - ForÃ§a AÃ©rea Portuguesa
426	JAT Yugoslav Airlines
432	Krasnoyarskavia
438	Military - French Navy
444	ACES Colombia
450	Air Taxi - New England Airlines
456	Connair
462	Ecuatair
468	Vincent Aviation
474	Spernak Airway - Air Taxi
480	Aer Turas
486	Foster Aviation
492	Air SÃ£o TomÃ©
498	Village Airways
504	Rambar Aviation - Air Taxi
510	Spartan Air Services
516	Yute Air Alaska - Air Taxi
522	Century PacifiLines
528	Bonanza Airlines
534	Military - Fuerza AÃ©rea de Chile
540	Aerovias Urraca
546	Ryan International Airlines
552	Crasa - Air Taxi
558	Air Taxi - Airis Helicopters Inc.
564	Denver Air Center
570	Transportes AÃ©reos de Timor
576	Southeast Airlines
582	Eurojet Italila
588	Sky Train Air
594	Lineas Aereas de Espana/Spantax SA Transportes
600	Caribbean Airlines
606	Rutaca
612	Lineas Aereas de Angola
618	Greek Government
624	Bulair TABSO
630	Viking Airways - Air Taxi
636	Far Eastern Air Transport
642	DHL
648	Sosoliso Airlines
654	Harold's Air Service
660	Aeropostale - La Tecoere Company
666	BOAC
672	Congo Airline
678	Military - Russian. cargo
684	Air Taxi - Island Airlines
690	Aerolineas Litoral Argentina
696	Angola Air Charter
702	Air Taxi - Sea PacifiInc.
708	ERA Aviation - Air Taxi
714	Labradore Airways
720	SunQuest Executive Air Charter
726	Uzu Air
732	TAMPA Colombia
738	Inex Adria Aviopromet (Yugoslavia)
744	Crest Airlines - Air Taxi
750	Don Everall Aviation
756	Transportes AÃ©reos Itenez
762	Southern Express
768	Red Carpet Flying Service - Air Taxi
774	Brit Air
780	Taxair
786	Transamerican Air Transport
792	Rimouski Airlines
798	Kansas City Southern Skyways
804	Air Albatross
810	Airfast Indonesia
816	Walker - Watts Aviation - Air Taxi
822	Skyline Airways
828	Alaska Airlines
834	University of Michigan Health System
840	Linair Express
846	Military - Soviet Navy
852	Military - U.S. Army / Military - U.S. Army
858	L'ArmÃ©e de L'Air
864	Straley Flying Service - Air Taxi
870	Fuerza AÃ©rea Venezolana
876	Mexican Government
882	United Air Lines
888	Transocean Air Lines
894	Japan Air Self-Defence Force
900	CCCP
906	Dan-Air Services
912	Air Taxi - Tyee Airlines Inc.
918	Burma Airways
924	China Eastern Airlines
930	Aero Ejecutivos
936	Scandinavian Airlines (SAS) / Private
942	Colonial Air Transport
948	Strait Air
954	Channel Air Lift
960	Transniugini Airways
966	Lineas AÃ©reas Trans. Brasileira
972	Ararat Avia
978	Heliandes
984	McKenzie Flying Service - Air Taxi
990	China National Aviation Corporation
996	Aerolineas Centrales de Colombia
1002	Reed Aviation - Air Taxi
1008	Total  Air Lines
1014	Air Charter - Tanzanian Air Services
1020	Air taxi - Jao Air Taxi
1026	Private - Purdue Reasearch Foundation
1032	West African Airways
1038	Bankair Inc. - Air Taxi
1044	East Coast Air - Air Taxi
1050	Flugfelag Austurlands
1056	TANS Peru
1062	Abakan Airlines
1068	Private Charter
1074	Alas Chiricanas
1080	Air Rouergue
1086	Ethiopian Airlines
1092	Aerolineas Argentinas
1098	AirWest Airlines
1104	Sahara
1110	Vayudoot
1116	Air Taxi - Hawaii Helicopters Inc.
1122	Skyline Transportation Company
1128	Military - Salvadoran Air Force
1134	Military - Angolan  Air Force
1140	PacifiOverseas Airways
1146	Imperial Airways
1152	Pan African Air Charter
1158	RÃ©seau AÃ©rien Interinsulaire
1164	Azerbaijani Airlines
1170	Eastern Air Lines / Military - U.S. Army Air Corps
1176	Nile Delta Air Services
1182	Flying Tiger Line
1188	Lake Central Airlines
1194	Kauai Helicopter - Air Taxi
1200	SceniAir Lines
1206	Regional Compagnie Aerienne Europeenne
1212	Euro Asia Aviation
1218	Lloyd AÃ©reo Boliviano
1224	Air Nautic
1230	Air Ferry
1236	Military - ArmÃ©e de l'Air Malgache
1242	New England Aviaiton
1248	Associated Aviators
1254	Business Air Connection
1260	New Standard Airlines
1266	Islands Nationair
1272	Golden Star Air Cargo
1278	Britavia
1284	North Continental Airlines (Robin Airlines)
1290	Chelan Air Service
1296	Air GaspÃ©
1302	Pan American World Airways
1308	Sociedade de Aviacao Ligeira Charter
1314	Aaxico Airlines
1320	Antilles Air
1326	Continentale Deutsche Luftreederei
1332	Lufthansa
1338	Universal Airlines
1344	TAESA
1350	Ozark Air Lines
1356	Taiwan Aviation
1362	LÃ­neas AÃ©reas Suramericanas
1368	Savannair
1374	Air Kasai
1380	Military - Luftwaffe / Military - USAF
1386	USA Jet Airlines
1392	Transporturile Aeriene Romano-Sovietice
1398	Skyways of London
1404	Military - Vietnamese Air Force
1410	LANC Colombia
1416	Airwave Transport
1422	Military - Iranian Revolutionary Guard Corps Air Force
1428	Military - Unified Yemen Air Force
1434	Midwest Express
1440	Cubana de Aviacon
1446	Churchill Falls Co.
1452	Simpson Air Service - Air Taxi
1458	Ryan Air Services
1464	Canadian Colonial Airways
1470	Chalk's Ocean Airways
1476	American Virginia
1482	Trans Alaska Helicopter - Air Taxi
1488	Oefag Flugdienst
1494	Capitol Air Service - Air Taxi
1500	Air Lanka
1506	Nordair
1512	Air Taxi - Marco Zero Air Taxi
1518	Military - Chilian Navy
1524	Svedijos PrekÃ©s
1530	West Air
1536	Les Ailes de GaspÃ© Inc.
1542	L'Express Airlines
1548	Air Mali
1554	Lebanese International Airways
1560	Malaysia Airlines
1566	Military - Indian Navy
1572	Airways
1578	Lester C. Bush - Air Taxi
1584	Wrangell Air Service
1590	Executive Airlines
1596	Tomahawk Airways
1602	Military - Japan Air Self Defense Force
1608	Nigeria Airways
1614	Wien Air Alaska
1620	Military - Zambia Air Force
1626	Wasa Wings
1632	LARES
1638	Munz Northern Airlines
1644	REAL / Military - U.S. Navy
1650	Charter. Golden Eagle Aviation Inc.
1656	Service Air
1662	Kamchatavia
1668	Air Taxi - Mercy Flights Inc.
1674	Fairflight Ltd.
1680	Cable Commuter
1686	Northern Air Cargo
1692	Malert Airlines
1698	North Central Airlines
1704	Britt Airways
1710	Air 70
1716	Hlavka Aviation - Air Taxi
1722	Alaska International Air
1728	Military - Lybian Arab Air Force
1734	Nash and Tampo - Air Taxi
1740	Air Taxi - Air Medical Leasing
1746	Independent Air Inc.
1752	Goroka Air Services
1758	Air Taxi - Monument Valley Air Service
1764	Del Rio Flying Service - Air Taxi
1770	Queen Charlotte Airlines
1776	Winchester Air
1782	Air Taxi - Raco Helicopters Corp.
1788	Air Taxi - Guinn Flying Service
1794	Aerotaca
1800	Servicios Aereos Nacionales Airways
1806	Rapid Air Transport
1812	Air Taxi - Northern Arizona Aircraft Inc.
1818	Transported Areos Profesionales - TAPSA
1824	Scanex Air
1830	Columbia Air Cargo
1836	Shanair Inc. - Air Taxi
1842	Island Sky Ferry - Air Taxi
1848	Chester Airport
1854	Liard Air
1860	Tadair
1866	Military - Royal Indian Air Force
1872	Grand Canyon Airlines / Helitech
1878	Flying W Airways
1884	Karibu Airways
1890	Ivolga Avia
1896	Heavylift Cargo Airlines
1902	Military - Royal Lao Air Force
1908	Chugiak Aviation - Air Taxi
1914	Military - United States Army Air Force
1920	Catalina - Vega - Air Taxi
1926	Knight Air
1932	Aeroflite Services
1938	ArctiPacific
1944	Charter - Aerotaxi
1950	Servicio AÃ©reo Panini
1956	Devener Flying Service - Taxi
1962	Cargo Three Panama
1968	Sibir Airlines
1974	Condor Flugdienst
1980	Vologodskiye Airlines
1986	Air Taxi - Desert Flying Service
1992	Skagway Air Service - Air Taxi
1998	Aerovias del Norte
2004	Military - German Army
2010	Ladeco
2016	Military - U.S. Marine Corps
2022	Military - German Air National Guard
2028	Military - Nicaraguan Air Force
2034	Salmon Air - Air Taxi
2040	British United Airways
2046	Great Western and Southern Air Lines
2052	Aero Air
2058	Flugefelag
2064	ALADA
2070	Sundance Helicopters
2076	Lufthansa Cargo Airlines
2082	Pudget Sound Air - Air Taxi
2088	Yates Aviation
2094	Lineas Areas del Centro
2100	Airlines of PNG
2106	Asian Spirit
2112	Air Atlas
2118	Lineas AÃ©reas Costarricenses  LACSA
2124	Kinair Cargo
2130	Arrow Airways
2136	Airbus Industrie
2142	Trans Colorado AL / Continental Express
2148	Air-Lift Commuter
2154	Partnair
2160	SeaWind Aviation
2166	HaÃ¯ti Air Inter
2172	Spencer Airways / Ceskoslovenske Aerolinie
2178	Ruiban & Duran Compania AÃ©rea
2184	African Commuter Services
2190	Winship Air Service - Air Taxi
2196	Hamilton Aviation
2202	Military - French Air Force
2208	Straits Air Freight Express
2214	Air Taxi - Coastal Helicopters Inc.
2220	Air Reconnaissance Unit of Liberia
2226	Cathay PacifiAirways
2232	Gulf Air
2238	Valley Air Service - Air Taxi
2244	U. S. Air Force
2250	STAP
2256	Naftogaz
2262	Richland Flying Service - Air Taxii
2268	MerriAviation - Air Taxi
2274	Military - Argentine Air Force
2280	United Airways
2286	Travel Air Flug
2292	Taxi Aereo el Venado
2298	Air Taxi - Trail Lake Flying Service Inc.
2304	Jet Avia Charter
2310	Southeast Sky - Air Taxi
2316	Dominicana
2322	Military - Sudan Air Force
2328	Azerbaijan Airlines
2334	Homer Air Service - Air Taxi
2340	Military - Corrieri Aerei Militari
2346	Air Taxi - South Coast Helicopters Inc.
2352	Roadrunner Airlines
2358	Aero Taxis Equatorianos
2364	Inter-Island
2370	Military - Government of Macedonia
2376	Military - U.S.  Air Force / Military - U.S. Navy
2382	Pakair
2388	Servicio Aereo Manchupo
2394	Nuna Air
2400	Moyer Aviation - Air Taxi
2406	China Southern Airlines
2412	Nordeste Linhas AÃ©reas
2418	Hankins Airways - Air Taxi
2424	United Air Services
2430	Norte Jet TÃ¡xi AÃ©reo
2436	Aero Jet Express
2442	Astrd Wing Aviaiton - Air Taxi
2448	Patagonia Airlines
2454	Aeroespresso
2460	Zen Nippon
2466	Svenska Aero
2472	Avanti Aviation -Air Taxi
2478	Trans Isle Air
2484	Private air taxi
2490	Eastern Air Lines / Military - Bolivian Air Force
2496	Air Taxi - TAJ FBO Co.
2502	New Tribes Mission
2508	Madrid Taxi AÃ©reo - Charter
2514	Transafrik
2520	AREA
2526	Air Taxi - Northern Air Services Inc.
2532	ANDESA
2538	Rotor Airs In- Air Taxi
2544	Air Florida
2550	Buckeye Air Service - Air Taxi
2556	Harrington's Inc
2562	Philippine Air Lines
2568	Missionary Aviation Fellowship
2574	Shelter Cove Sea Park
2580	Goose Bay Air Services
2586	AIDA
2592	Strato Freight
2598	Military - Brazilian Air Force
2604	Air Taxi - Jet Alaska
2610	Malindi Air Services
2616	Orion - Air Taxi
2622	ComvaAviation
2628	Compania Mexicana de Aviacion
2634	International Control Commision
2640	Military - Algerian Air Force
2646	CIDNA
2652	Military - El Salvador Air Force
2658	Military - Zairean Air Force
2664	Swedish Air Force
2670	Derby Aviation
2676	Military - Greek Army
2682	Pan American Airways
2688	Star Aviation
2694	ProcuradurÃ­a General de la RepÃºblica
2700	Saudi Arabian Airlines
2706	Key West Sea Plane Service - Air Taxi
2712	Military - EjÃ©rcito del Aire
2718	Swifair
2724	Aerovias Brasil
2730	Tepper Aviation
2736	NLM (Nederlandse Luchtvaart Maatschappij)
2742	Mt. McKinley Airfreight
2748	Alitalia
2754	Macon Horizons - Air Taxi
2760	Military - Turkish Air Force
2766	Air Rainbow
2772	North Bay Charter
2778	MMM Aero Services
2784	Air Taroma
2790	Polynesian Airlines
2796	National Jet Services Inc..  (Air Indiana)
2802	Heliwork WA Pty Ltd. - Air Taxi
2808	Royal Air Maroc
2814	Military - Chilean Air Force
2820	Military - U.S. Army / Military U.S. Army
2826	Sarit Airlines
2832	Aero Condor
2838	Air Taxi - New London Flying Services Inc.
2844	Sobelair SA (Belgium)
2850	Ukraine Aviation Transport Company
2856	Fairways
2862	Pakistan International Airlines
2868	Air Outre-Mer
2874	LAV - Linea Aeropostal Venezolana
2880	Proteus Air / Private
2886	NFD - Nurnberger Flugdienst
2892	Pinnacle Airlines/Northwest Airlink
2898	British South American Airways
2904	Great Lakes Business Complany
2910	Societe Indochinoise de Transport Aeriens
2916	LANSA
2922	Charter
2928	Galena Air Service - Air Taxi
2934	Commutair
2940	AECA Cargo
2946	Guinea Airways Limited
2952	Solomon Islands Airlines
2958	PenAir
2964	AÃ©reo Ruta Maya
2970	Air Ambulance - Med-Trans Corp.
2976	TAN Honduras
2982	British Aircraft Corporation
2988	National Airlines
2994	Servicios Aereos Santa Ana
3000	Air Amercia
3006	Zakavia
3012	Military - Luftwaffe
3018	Temsco Helicopter - Air Taxi
3024	California Air Charter
3030	Nightexpress
3036	Hallo Bay Air - Air Taxi
3042	Transfair
3048	Military - U.S. Army Air Force
3054	Dirgantara Air Services
3060	Tierra del Fuego Province
3066	Military - Royal Nepalese Air Force
3072	Wigmo
3078	Air taxi - Air Safaris Inc.
3084	Southeast Skyways - Air Taxi
3090	DHL Aviation Africa
3096	Alliance Airlines
3102	Custom Air Service
3108	Aero Peru
3114	Mid-AtlantiFreight
3120	U.S. Government (leased)
3126	Monmouth Airways
3132	California Aircraft
3138	Aerolineas La Paz
3144	Queen Airmotive - Air Taxi
3150	Snow Valley Ski Lines
3156	Djibouti Airlines
3162	Kelowna Flightcraft Air Charter
3168	Evergreen International Airlines
3174	Lloyd Aereo Colombiano
3180	Air Ontario
3186	Marsland Aviation
3192	Aerolineas Cuahonte
3198	Turkish Airlines (THY)
3204	Formosa Airlines
3210	Deutsche Lufthansa
3216	Kurtzer Flying Service - Taxi
3222	California Air National Guard
3228	PacifiCoastal Airlines
3234	Wein Alaska Airlines Inc.
3240	Urcupina
3246	Quebecair
3252	Military - Royal HelleniAir Force
3258	Jamair
3264	Reeder Flying Service
3270	Kismayo Airlines
3276	Paul Kelly Flying Service Inc.
3282	Azov Avia Airlines
3288	Military - Chilian Air Force
3294	Universal Jet Aviation
3300	Tigres Voladores
3306	Mustang Aviati
3312	Texas International Airlines
3318	Den Norske Luftfartskole
3324	Aerovias Guest
3330	American Airlines / Private
3336	Hewa Bora Airways
3342	Valley Air Service
3348	Airborne Transport
3354	Continental Express
3360	Aden Airways
3366	Peninsula Air Services
3372	Lineas Aereas Nacionales SA (Peru)
3378	Air Methods / ClassiHelicopters
3384	Charter - Private
3390	Private - Air Taxi
3396	Wehite Cap Aviation
3402	Greylock Airways / Private
3408	Air Logistics
3414	Corporacion Boliviano de Fomento
3420	Air Satellite
3426	Cebu PacifiAir
3432	Flynn's Ferry Service
3438	Transamazonica
3444	Sakha Airlines
3450	LATI
3456	Northeast Jet
3462	Military Soviet  Air Force - Aeroflot
3468	Soc. de Tr. AÃ©riens d'ExtrÃªme Orient
3474	Corp. Aeronautica de Transportes
3480	CSA Czech Airlines
3486	American Airlines
3492	Military - Japanese Air Self-Defence Force
3498	Ababeel Aviaition
3504	SoniBlue Airways
3510	ATI Aircompany
3516	Ansett Airlines of Papua New Guinea
3522	Saha Airline Services
3528	TACSA
3534	Smithers Air Service
3540	Pavair
3546	CAAC Air TraffiManagement Bureau
3552	Air Taxi - Ozark Skyways Inc.
3558	Archana Airlines
3564	Air Iowa
3570	Caledonian Airways
3576	Piedmont Airlines
3582	Military - Malaysian Air Force
3588	Gander Aviation
3594	Helicopteros Nacionales de Colombia
3600	AVIANCA / AVIANCA
3606	Aer Lingus
3612	Canada Jet Charters
3618	Military - Peruvian Naval Aviation
3624	Revilla Flying Service - Air Taxi
3630	Aeroflot
3636	Paradise Air
3642	Linjefyg
3648	TAN
3654	Air Taxi - Islip Airco Inc.
3660	Ameriflight
3666	TAG Airlines
3672	Panair do Brazil
3678	Gulf Aviation (Kalinga Airways)
3684	Air Senegal
3690	Austria-Flugdienst
3696	Transportes Aereos Orientales
3702	AltusFlying Service - Air Taxi
3708	Air Mauritanie
3714	Jordan International Airlines
3720	SAVIARE S.A. - Air Taxi
3726	Military - Afghan Republican Air Force
3732	Taos Airways - Air Taxi
3738	Bangkok Airways
3744	Air Taxi - MajestiAlliance
3750	Kuban Airlines
3756	Cambodia Air
3762	Pan African Airlines
3768	Military - United States Navy
3774	Military - Venezuelan Army
3780	Safeway Airways
3786	Lineas Aereas del Caribe
3792	New York Airways
3798	Military - Canadian Army
3804	Fuerza AÃ©rea Colombiana
3810	Piedmont Airlines / Private
3816	Renan Airways
3822	Pan International
3828	Eastern Air Lines
3834	North American Sabreliner 40
3840	Air West
3846	Pakistan Airways
3852	Deraya Air Taxi
3858	ValuJet
3864	Pan American Airways (Scadta)
3870	PacifiAir Transport
3876	TANS Airlines
3882	College of the Ozarks
3888	ANT Air Taxi
3894	Grand Canyon Airlines
3900	SFC Vietnam - Charter - Full Account
3906	Aeroperu
3912	West Coast Airlines
3918	Dalmia Jain Airways
3924	Shell Co of Ecuador
3930	Military - Angolan Air Force
3936	FedEx
3942	Commercial Airways (Comair)
3948	British International Helicopters
3954	Aitalia
3960	Purdue Airlines Inc.
3966	Wimbi Dira Airways
3972	Air Affaires Gabon
3978	Executive Jet Sales Inc.
3984	Empresa Aviacion del Pacifico
3990	Currey Air Transport
3996	Albancion Circulo
4002	South PacifiIsland Airways
4008	Air America
4014	Military - Taliban Militia
4020	Henry Webber Air - Air Taxi
4026	Kenmore Air  - Air Taxi
4032	Southern Air Transport
4038	Air Ohio - Air Taxi
4044	Air Rhodesia
4050	Air Vietnam (South Vietnam)
4056	Lockheed AC-130H Hercules
4062	Butler Aviation Inc.
4068	Amazonese Importacao e Exportacao
4074	SociÃ©tÃ© Auxiliare de Navigation AÃ©rienne
4080	AtlantiSoutheast Airlines
4086	West Australian Airways
4092	Transportes Aereos Don Carlos - Charter
4098	NHR TÃ¡xi-AÃ©reo
4104	Military - United States Marine Corps
4110	TABSO
4116	North Cay Air - Air Taxi
4122	Laoag International Airlines
4128	Tracep
4134	Rico Taxi AÃ©reo
4140	Luft-Taxi Emsland
4146	Channel Express
4152	Dominion Air Lines
4158	Arax Airlines
4164	Priority Air - Air Taxi
4170	Transoriente Colombia
4176	Air Taxi - Minuteman Aviation Inc.
4182	Page Airways
4188	Philippine Air Express
4194	Med Flight Air Ambulance - Private
4200	Robinson Airlines
4206	Carvair ATL-98
4212	Taxi AÃ©reo el Venado
4218	Douglas Aircraft Company
4224	All Nippon Airways /  Japanese Air Force
4230	Private - Omniflight Helicopters
4236	Rhoadgs Aviation - Air Taxi
4242	Belize Air International Ltd.
4248	Ministerstvo Obshchestvo Mashinostroyeniya
4254	Transmeridian Air Cargo
4260	Alpa Servicios AÃ©reos
4266	Air Angles Inc.
4272	Airco Charters - Air Taxi
4278	Aero National - Air Taxi
4284	SEMAF
4290	American Jet
4296	Private - Parajump air show
4302	Amphibians
4308	Compagnie Sila
4314	Taxi AÃ©reo Kovacs
4320	Lineas Aereas
4326	Air Cameroon
4332	Cameroon Airlines
4338	Pennsylvania Central Airlines
4344	Bruno Air
4350	TASSA
4356	Wien Consolidated Airlines
4362	Philippine Aerotransport
4368	Military - U.S. Army Air Corps
4374	Southwest Air
4380	Aero Clube de Volta Redonda
4386	New England Airways
4392	Lancashire Aircraft Corporation (Skyways)
4398	LADE
4404	Comair
4410	Aerosucre Colombia
4416	Paukn Air
4422	Air Taxi - Lake Clark Air Inc.
4428	VASP / Private
4434	U.S. Overseas Airways
4440	EAS Airlines (Executive Airline Services)
4446	Air Taxi - Air Trends Inc.
4452	Air Moorea
4458	Westwing
4464	Conquest Airways - Air Taxi
4470	SELVA
4476	SANSA
4482	PMT Air
4488	Military - Thai Army
4494	Juba Air Cargo
4500	Buffalo Narrows Airways
4506	Aerocontroctors - Charter
4512	Glow Air/Air Castle - Charter
4518	Utility Helocopter - Air Taxi
4524	Kavatshi Airlines
4530	ArctiWings & Rotors
4536	Lina Congo
4542	Military -Royal Air Force
4548	Devlet Hava Yollairi
4554	Ocean Airlines
4560	Cordova Airlines
4566	Dai Nippon
4572	Handley Page Transport
4578	A B Aerotransport
4584	Trafik-Turist-Transportflyg
4590	Servicios Aereos Nacionales
4596	Manunggal Air
4602	SocietÃ  Aerea Teseo
4608	Metro Cargo
4614	Lineas AÃ©reas Sud Americana
4620	SAM Colombia
4626	Military - U.S. Air Force / Military -  U.S. Army
4632	Africa One Congo
4638	Military - Royal Netherlands East Indies Air Force
4644	Planemasters
4650	Pan ArctiOil
4656	Jetwingsco Inc. - Private Charter
4662	Lufthansa Cityline
4668	Turkish Airlines
4674	Fragtflug
4680	Houston Metro Airlines
4686	Price Aircraft Company
4692	Australian Aerial Services
4698	Military - Argentine Navy
4704	Military - Mexican Air Force
4710	Tulakes Aviaiton - Air Taxi
4716	Libya Arab Airlines
4722	Leadair - Charter
4728	Continental Air Services
4734	Chicago-Detroit Airways
4740	Air East
4746	Military - Royal Saudi Air Force
4752	Alaska Helicopter - Air Taxi
4758	East Provincial Airways
4764	Centurian Air Cargo
4770	Reali Taxi Aereo
4776	Asa Pesada
4782	Prior Aviatoin - Air Taxi
4788	Jersey Airways
4794	Orient Air System and Integrated Services
4800	Bankair
4806	Itek Air
4812	Air Manila
4818	PENAS
4824	Conviasa
4830	GLM Aviation
4836	Private  - Daewoo Shipbuilding
4842	Compagnie Internationale de Navigation AÃ©rienne
4848	Flightline
4854	Western Airlines
4860	Servicios Americanos
4866	Kondair
4872	Air Ferry Ltd
4878	East African Air Charters
4884	Skywest Airlines / Private.
4890	SCADTA
4896	Air taxi - Cuiaba Air Taxi
4902	King Air Charter
4908	Air Taxi - Grant Aviation Inc.
4914	Fly 540
4920	Wilson Airways
4926	Alamo Airways
4932	T.A. Intercontinentaux
4938	Air Taxi - Martin Aviation LP
4944	Nahanni Air Services
4950	Swissair
4956	Private Wings
4962	Military - Egyptian Air Force
4968	Kimura International
4974	Rico Linhas Aereas
4980	Morris Hancock Flying Club - Charter
4986	Deruluft
4992	Military - Ecuadorian Air Force
4998	US Airways
5004	Million Air
5010	Win Win Aviation
5016	Heringer Air Taxi
5022	United Nations Organization
5028	Coastal Air Lines
5034	City-Jet
5040	Inter Island Air Services
5046	Fairbanks Air Service - Taxi
5052	Air Union
5058	Kivu Air Services
5064	Eureka Aero Inc. - Air Taxi
5070	Military - Royal Norwegian Air Force
5076	Kodiak Western Alaska Airlines
5082	RRC Air Service
5088	Societa Aerea Mediterranea
5094	Sasco Air Lines
5100	Lineas Aereas Unidas
5106	Bay Land Aviation
5112	Lineas Aereas del Estado
5118	ClassiWings
5124	Livingston Helicopter - Air Taxi
5130	Aero Tropical
5136	STASA
5142	Mililtary - Royal Canadian Air Force
5148	Senegalair
5154	Palair Macedonian
5160	Aero Club Libya
5166	Aerosweet Airlines (LVOV)
5172	Military - Indonesian Air Force
5178	Emery Worldwide
5184	US Airlines
5190	Aircraft Transport and Travel
5196	Theif River Aviation - Air Taxi
5202	Caribbean International Airways
5208	Aerevias Centrales Air Service
5214	Aeromist-Kharkiv
5220	Canairelief Air
5226	Military - U.S. Air Force / Military -  U.S. Air Force
5232	Aloha Airlines
5238	Capital Airlines / Military - Air National Guard
5244	Frigorifico Reyes
5250	Emirates Air Transport
5256	Aero France
5262	Broward Aviation Services - Air Taxi
5268	Malu Aviation
5274	Phoenix Air
5280	Johnson Flying Service
5286	Military - Italian Air Force
5292	PacifiAlaska Air Freight
5298	Air Transport
5304	Varney Air Lines
5310	Varig
5316	AIRES Colombia
5322	Gol Airlines / Private
5328	Aeroextra
5334	EXA Inc.
5340	Transamerican Airlines
5346	Military - Florida Army National Guard
5352	Military - U.S. Air Force/Military - U.S. Air Force
5358	Hudgin Air Service
5364	Compagnie Air Transport
5370	Onzeair
5376	Florida Commuter Airlines
5382	British European Airways
5388	Rutas Internacionales Peruanes
5394	Military - Guatemalan Air Force
5400	Avirex
5406	Frigorifico Cooperativo Los Andes
5412	Grands Express Aeriens
5418	COPA (Panama)
5424	APRL
5430	Cubana de Aviacion / Military -  US Navy
5436	Aerocondor
5442	Aero Holland
5448	Aero Cargo
5454	Atran
5460	Summit Air Charters
5466	Frigorifico Santa Rita
5472	Dirgantara Air Service
5478	PacifiAlaska Airlines
5484	CC Air
5490	Paraense Transportes Aereos
5496	Phoenix Airlines
5502	AVISPA
5508	Air India
5514	Flight Service
5520	Air Haiti International
5526	Aeroput
5532	Air Sinai
5538	YPF
5544	Alva Aircraft Service - Taxi
5550	Lignes Aeriennes Latecoere
5556	Aeromexico
5562	G & W Aviation
5568	GT Air
5574	Air Taxi - Oklahoma Airways Inc.
5580	Aero Transporti Italiani
5586	Guyana Airways
5592	Aegler Stuart Flying Service  / Private
5598	Cougar Helicopters
5604	Air Jordan
5610	Boeing KC-135E
5616	Two Taxi Aero
5622	Aeroejecutivos Colombia
5628	Uganda Airlines
5634	Rijnmond Air Services
5640	Sabang Merauke Raya Air Charter
5646	Adventure Airlines
5652	Tamair
5658	NC Simpson - Taxi
5664	Skypower Express Airways
5670	Air Tahoma
5676	Queensland Airlines
5682	Aeropostale
5688	Australian National Airways
5694	Servicios AÃ©reos Cochabamba
5700	Rutas AÃ©reas Nacionales SA
5706	Helios Airways
5712	Merpati Nasantara Airlines
5718	MarkAir Commuter
5724	Luxair
5730	Air Taxi - Durango Air Service
5736	Aerolineas Argo
5742	Trans Luxury Airlines
5748	Lineas AÃ©reas Suramericanas
5754	MajestiAir Cargo
5760	Military - Zambian Air Force
5766	Military - Honduran Air Force
5772	Military - Israel Air Force
5778	Tyee Airlines - Air Taxi
5784	Armavia
5790	Military - Russian
5796	Ameristar Jet Charter
5802	Aeromexico / Private
5808	Air Comores
5814	MaRobertson Miller Airlines
5820	Campagnie France Roumaine
5826	Overseas National Airways
5832	SAMSA
5838	Harbor Airlines - Air Taxi
5844	Aeronautical Services - Air Taxi
5850	Alaska Aeronautical Industries
5856	Aerocalifornia
5862	Air Liberia
5868	Eagle Aviation
5874	Cia Brasiliera de Tratores
5880	PT Air Regional
5886	TAM (Peru)
5892	Avioriprese Jet Executive
5898	Aerolift Philippines
5904	SELVA Colombia
5910	Iran Asseman Airlines
5916	Military - IslamiRepubliof Iran Air Force
5922	Volga-Avia Express
5928	Aero Pantanal - Air Taxi
5934	ETA - Empresa Transportes AÃ©reos
5940	Petrolium Helo Inc.
5946	Filipinas Orient Airways
5952	Military - U. S. Navy
5958	Astro Air Taxi
5964	Taxi AÃ©reo del Guaviare
5970	Aeronorte
5976	Chamberlin Flying Service
5982	Alantis Aviation
5988	BKS Air Transport
5994	Apache Airlines - Air Taxi
6000	Aeroflot / Military - Russian Air Force
6006	LÃ­der TÃ¡xi AÃ©reo
6012	Trans International Airlines
6018	Phillips Flying Service - Air Taxi
6024	Mayoral Executive Jet
6030	Air North
6036	Morningstar Air Express
6042	Channel Flying Service - Air Taxi
6048	Pelita Air Service
6054	Avesca Colombia
6060	Tanzania Aviation
6066	Wheeler Airlines
6072	Salair
6078	Intracostals - Air Taxi
6084	Moldovan Aeriantur-M Air Cargo
6090	Bangladesh Biman
6096	Avionas  Banamex
6102	Northern Thunderbird Air Ltd.
6108	Bazair
6114	Mustique Airways
6120	Wenela Air Services
6126	Kiwi West Aviation
6132	Indian National Airlines
6138	Air Congo
6144	Bristol Aeroplane Co.
6150	Kam Air
6156	Transpolar
6162	Macchi
6168	Southwest Medivac
6174	AB Aerotransport
6180	XL Airways leased from Air New Zealand
6186	Military - Peruvian Air Force - TANS
6192	Global Executive Aviation
6198	Permaviatrans
6204	Transaven
6210	Northwest Airlink
6216	Air Ivorie
6222	Deutsche Zeppelin Reederei
6228	Air taxi - Rumo Notre Air Taxi
6234	Yemen Airlines
6240	Indian Airlines/Alliance Airlines
6246	Aero Transportes
6252	Military - U.S. Marines
6258	Air Taxi - Island Air Service
6264	East African Airways
6270	Air Taxi - Custom Air Transport Inc.
6276	Transair
6282	Sadia
6288	Myanmar Airways
6294	Flash Air
6300	Air Niagara
6306	Hang Khong (Vietnam)
6312	AtlantiAirlines
6318	Russ Air Transport Company
6324	Lineas Areas Venezolanas
6330	Societe France Hydro
6336	Linea Aeropostal Venezolana
6342	North Central Airlines / Air Wisconsin
6348	Air Sunshine
6354	Winged Cargo Inc.
6360	Air West Airlines Ltd.
6366	Delaware Aviation - Air Taxi
6372	Virgin Islands Airways
6378	Quakertown Aviation - Air Taxi
6384	Air Taxi - Ryan Air Service
6390	Sudan Airways
6396	TAME Ecuador
6402	Calair
6408	Talia Airways
6414	Aroostook Air - Air Taxi
6420	Aca-Ancargo
6426	MATS - Manila Aero Transport System
6432	Cabo Verde Airlines
6438	Nordchurchaid
6444	Aeroflot /Military - Russian
6450	CAMBA
6456	Victoria Airlines
6462	Flota AÃ©rea Mercante Argentina
6468	Clarkes Thunder - Air Taxi
6474	TMK Air Commuter
6480	Loganair
6486	Interior Airways - Air Taxi
6492	Anchorage Helicopter - Air Taxi
6498	Rubner Flying Service
6504	North Central Airlines / Private
6510	Hunting Air Travel
6516	Harka Air Services
6522	Iran Air Tours
6528	Military - Greek Air Force
6534	Las Vegas Airlines
6540	Military - People's Army/ Military - Peoples Air Force
6546	Cunard Eagle Airways
6552	Transmandu
6558	Edinburgh Air Charter
6564	TARS
6570	Air Taxi - Richards Aviation Inc.
6576	Aeronaves de Panama
6582	Air Turks & Caicos
6588	Indonesian National Police
6594	TAP (Air Portugal)
6600	Inland Aviation - Air Taxi
6606	Costal Airway
6612	Western Air Express
6618	Soundsair
6624	New England Airlines
6630	Uzbekistan Airways
6636	SATA
6642	ARTOP Aerotopografica LDA
6648	Military - Pakistan Air Force
6654	Garamut Aviation
6660	MAP - Ministerstvo Aviatsionnoi Promyshlennosti
6666	Trans Mediterranean Airways
6672	Parsa
6678	Empire Airlines
6684	Skylink Airlines
6690	MD Air Services
6696	Tajikistan Airlines
6702	Canair Corp. - Air Taxi
6708	Japan Aviation Corporation
6714	Manchurian Air Lines
6720	TAM (Bolivia)
6726	Belair - Air Taxi
6732	Helikopter Service
6738	Pan American Grace Airlines
6744	Lineas AÃ©reas la Urraca
6750	Aeroservicios Empresariales de Durango
6756	Yacimientos Petroliferos Fiscales
6762	American Overseas Airlines
6768	Air taxi - TAM
6774	Lineas AÃ©reas Costarricenses
6780	LAPA. Lineas Aereas Privadas Argentinas
6786	Wright Air Service - Air Taxi
6792	Cross Airways
6798	E.A.S. Aeroservizi
6804	Helisul Taxi AÃ©reo
6810	Sterling Airways
6816	Vladivostokavia
6822	Touraine Air Transport
6828	Scandinavian Airlines (SAS)
6834	Military - U.S. Army Air Service
6840	KLM Royal Dutch Airlines
6846	Huron Air
6852	Viking Air Transport
6858	Military - Colombian Army
6864	Transporte Aereo Federal
6870	Arrow Airlines
6876	FAMA (Argentina)
6882	Corporate Air - Air Taxi
6888	Charter - Central Air
6894	Agape Flight Inc.
6900	Spanair
6906	ViaÃ§ao Cometa
6912	Charter - Maniema Union (owner Victoria Air)
6918	Tyumen Aviatrans
6924	Malev Hungarian Airlines
6930	North Star Air Cargo
6936	Universal Airways
6942	Bimini Air Charter Inc.
6948	Military - Royal Lesotho Defence Force
6954	Blue Water Aviation Services
6960	Eastern Air Lines / Military - USN
6966	Laurentian Air Services
6972	Air Flamence
6978	TsAGI
6984	Norwegian Airlines
6990	Western Canada Airways
6996	Keystone Air Services Ltd. - Air Taxi
7002	Avio Linee Italiane
7008	Air Illinois
7014	Air Taxi - Lab Flying Service Inc.
7020	China Air Lines
7026	Aerovalles
7032	China Flying Dragon Aviation (Feilong Airlines)
7038	Siamese Airways
7044	MK Airlines
7050	Europe Aero Service EAS
7056	VoteTaxi AÃ©reo
7062	DJB Air Charter
7068	Ghana Airlink
7074	McCoy Flying Service - Taxi
7080	Air Outremer
7086	Blue Wing Airlines
7092	Empressa Commun. AÃ©reas de Veracruz
7098	Air Memphis
7104	Aerovias Halcon
7110	La Costena
7116	Aerovias Venezolanas SA (Venezuela)
7122	South African Airways
7128	CORAL Colombia
7134	Airlines of Australia
7140	Castle Aviation
7146	AtlantiCentral Airlines
7152	Naysa Aerotaxis
7158	Falcon Aviation Group
7164	Air Taxi - Talon Air Services Inc.
7170	Avicsa
7176	Big Island Airlines
7182	Air Service - Air Taxi
7188	CATA
7194	Slick Airways
7200	PacifiCoast Airlines
7206	Air Taxi - Petroleum Helicopters Inc.
7212	Sociedad Aeronautica Medellin
7218	Military - Russian Navy
7224	Air Taxi - Stearns Air Alaska
7230	L & J Company
7236	Air Fiordland
7242	New Zealand National Airways
7248	Carib Air Transport
7254	Air Cargo Carriers
7260	Sempati Air
7266	Military - Russian Air Force
7272	MAP
7278	Action Air Express Inc. - Air Taxi
7284	Don Zimmerman - Air Taxi
7290	American Eagle
7296	Aeroflot / Aeroflot
7302	Lineas Aereas Suramericanas
7308	Business Jet Services
7314	Telford Aviation
7320	Transportes Aereos Peruanas
7326	Binter MediterrÃ¡neo
7332	Monarch Aviation
7338	Air Taxi - Air Vegas Inc.
7344	Bellview Airlines
7350	Air Taxi - Ohana Helicopter Tours
7356	Aurukun Air Services
7362	National Parks Airways
7368	Aerocom
7374	Aeronorte Colombia
7380	Commercial Air Taxi
7386	Rousseau Aviaiton
7392	Compania de Mexico
7398	Civil Air Transport
7404	Military - U.S. Air Force / U.S. Air Force
7410	Junction City Fire Department
7416	EDELCA
7422	Air Taxi - Coastal Airways Inc.
7428	Nordeste Linhas Aereas
7434	Freedom International
7440	One-Two-Go Airlines
7446	Phoenix Aviation
7452	Sunflower Airlines
7458	Apline Aviation
7464	United Airways of New Zealand
7470	Deutsche Flugdienst
7476	Military - Federal Nigerian Air Force
7482	Lisa Jet Inc. - Air Taxi
7488	ArctiCircle Air Service
7494	Atlasjet Airlines
7500	Military - Venezuelan Navy
7506	Air New England
7512	Executive Funds
7518	Terry Air Inc.
7524	Aeronor Chile
7530	Taxval
7536	Military - Georgian Air Force
7542	Guinea Airways
7548	Loma Linda University - Air Taxi
7554	Lineas AÃ©reas Mineras
7560	North Western Air Transport
7566	Capitol Airways
7572	Guiena Airways
7578	Ghana Airways
7584	Iraqi Airways
7590	Aerocord
7596	Military - Centrafricain Airlines
7602	Barrow Air Service - Air Taxi
7608	Southcentral Air
7614	Speed Service Couriers
7620	TAO
7626	Volga Air
7632	Air Luxor
7638	Embry Riddle Company
7644	Aeronaves del Peru
7650	SADELCA
7656	United Air Lines / Trans World Airlines
7662	Air Taxi - Haines Airways Inc.
7668	Fleming Airways System Transport
7674	Misrair
7680	Kuwait Airways
7686	Aerovias de Guatemala SA
7692	Miltiary - U.S. Airforce
7698	Military - Israel Air Force /Military -  Israel Air Force
7704	Military - Kuwait Air Force
7710	SAESA
7716	First Air
7722	Lao Aviation
7728	Carga del Caribe
7734	Servicio Expresso Nacional
7740	Propair
7746	Aviation Development Corporation
7752	Northwest Moon - Air Taxi
7758	Wings West Airlines / Private
7764	TAAG Angola Airlines
7770	Airline Transport Carriers
7776	Kirghizia Aba Zaoldoru
7782	Military - Deutsche Luftwaffe
7788	Allegheny Airlines / Forth Corporation
7794	Air North Queensland
7800	Lineas Aereas Mineras
7806	TAM Lineas AÃ©reas Regional
7812	Gira Globo Charter
7818	Boeing Air Transport
7824	Trans Guyana Airways
7830	Military - IslamiRevolution's Guards Corps
7836	American Airways
7842	Bond Offshore Helicopters
7848	Vercoa Air Service - Air Taxi
7854	Military - Soviet Air Force
7860	TriCoastal Air
7866	Uralex
7872	Continental Airlines
7878	Viacao Aerea Gaucha S.A.
7884	Military - Mauritanian Air Force
7890	Military - Cuban Air Force
7896	Trade Wings Aviation Ltd.
7902	Charter - IRS Aero
7908	Lone Star Airlines
7914	Temesco Helicopter - Air Taxi
7920	Fuerza AÃ©rea Argentina
7926	Fuerza AÃ©rea Nicaragua
7932	Grand Canyon Air - Air Taxi
7938	Hunter Airways
7944	Linea Expresa Bolivar
7950	British Overseas Airways /Qantas
7956	Casino Air - Air Taxi
7962	TanaMana Aviation
7968	Catalina Airlines
7974	Societe Alpes Provence
7980	Fuerza Area Angolaise
7986	Kodiak Airways
7992	Taxader Airlines
7998	Mongolian Defense Ministry
8004	Cruzeiro do Sul
8010	Airline Transport
8016	Air Taxi - Richmor Aviation
8022	Aerochasqui
8028	Military - Burma Air Force
8034	AtlantiCoast Airlines (United Express)
8040	United Nations Mission
8046	Private - WNBC
8052	Airquarius Aviation - Charter
8058	Lanica
8064	Eastern Provincial Airways
8070	Aerolineas TAO
8076	Vickers
8082	Military - Nigerian Air Force
8088	Baikal Air
8094	Wyman Pilot Service - Air Taxi
8100	Halvorson - Air Taxi
8106	Union des Transportes Aeriens
8112	Frontier Flying Service - Air Taxi
8118	Wiggins Airways
8124	Air US / Private
8130	Ukranian-Mediterranean Airlines
8136	Aeropeca
8142	Air Karibu
8148	Sowind Air
8154	Ansett ANA
8160	SceniAirline - Air Taxi
8166	Aerolineas Nacionales
8172	North Cay Airways
8178	Norilsk Flight Company
8184	Mercer Airlines
8190	Mercury Aviation
8196	Aerotaxi Manaus
8202	Fortaire Aviation - Air Taxi
8208	Det Danske Luftfartselskab
8214	F.R. de la Direccion General de Ados
8220	Spantax
8226	Aerocaribbean - Charter
8232	MaRoberston-Miller Airlines
8238	IMSS
8244	Transportes AÃ©reos Salvador
8250	Military - Forces Militaires FranÃ§aises
8256	LACOL
8262	Agee Flying Service - Air Taxi
8268	LACSA
8274	Air Martinique
8280	Orcon Inc. - Air Taxi
8286	Northern Air (Tanzania)
8292	Uni Air
8298	Air Chaparral - Air Taxi
8304	Mango Airlines
8310	Skyworld Airlines (Ports of Call Inc.)
8316	South Central Airlines
8322	Military - Zimbabwe Air Force
8328	Hughes Airwest  / Military - US Marine Air Corps
8334	Lloyd Aero Boliviano
8340	Airwork
8346	Pulkovo Airlines
8352	SATCO
8358	Air Taxi - Wilderness Aviation Inc.
8364	Air Taxi - National Helicopters
8370	Cheremshanka Airlines
8376	Fun Air
8382	Mandala Airlines
8388	Inter Island Air - Air Taxi
8394	Air ambulance - Mercy Air Services
8400	Harbour Air
8406	Delta Air Lines
8412	Northern Illinois Flight Center
8418	Pan American Grace Airways
8424	Military - Kenya Air Force
8430	Air Gabon
8436	Seventy Airways - Air Taxi
8442	Socotra
8448	RCMP-GRC Air Services
8454	COHATA
8460	Military - Fuerza Del Peru
8466	Commuter Airline - Air Taxi
8472	Aero Asahi
8478	New  York Helicopter
8484	Aray-Avia
8490	Military - Royal Australian Air Force
8496	Mamer - Shreck  - Air Taxi
8502	TAC Colombia
8508	Nationwide Air Transport
8514	Skips Air Service - Air Taxi
8520	CeskoslovenskÃ© Aerolinie
8526	Avia Air Aruba
8532	Holmstoem Air
8538	Air Malawi
8544	Air Global
8550	Union Airways
8556	Taquan Air Service
8562	Tiramavia
8568	Aerolatino (Aerocaribe)
8574	Faucett
8580	Central Airlines
8586	Saudi Arabian Royal Flight
8592	United Arab Airlines
8598	Charter - Air Adventures New Zealand Ltd
8604	Private - Boeing Aircraft Company
8610	Iran Air Tours  /  Military - Iranian Air Force
8616	Skycraft Air Transport
8622	Standard Airlines
8628	AVENSA
8634	SUDENE
8640	Lionair
8646	Private
8652	Hoseba
8658	Continental Air Lines
8664	Colonial Western Airlines
8670	California Air Freight
8676	Air Transit - Air Taxi
8682	Sudania Air Cargo
8688	Air Senegal / Gambia Airways
8694	Perimeter Airlines
8700	Northern Thunderbird Air
8706	Air Taxi - Alpine Aviation
8712	Skystream Airlines
8718	Syrian Airways
8724	Security Air
8730	Harry Faulkner - Air Taxi
8736	Thai Airways
8742	Air Taxi -Wilderness Aviation Inc.
8748	Somali Airlines
8754	Bruns Air Service - Air Taxi
8760	MALERT
8766	Jet Wings
8772	Iberia Airlines / Aviaco
8778	Cie des Messageries Aeriennes
8784	Aeroleasing - Air Taxi
8790	BAL Bremerhaven Airline
8796	Regional Airlines
8802	Air Taxi - Aero West Aviation Inc.
8808	Military - Royal Canadian Air Force
8814	Air Taxi - Paramount Aviation Corp.
8820	Euroair
8826	Fairbanks Air - Air Taxi
8832	Arall
8838	Air One Executive
8844	Air Taxi - Bigfoot Air of Alaska. LLC
8850	Moore's Air Charter
8856	Air St. Martin
8862	Naske Air
8868	Knowles Flying Service of Detroit
8874	Far East Aviation
8880	Air Taxi - Uyak Air Services Inc.
8886	Westair Transport
8892	Ginger Coote Airways
8898	Aerolineas La Gaviola
8904	Far Aviation - Air Taxi / Speeds Flying - Air Taxi
8910	Luthi Aviation - Air Taxi
8916	PacifiAirways
8922	Acme Air
8928	Military - U.S. Navy
8934	Lion Air
8940	Transportes Aereos Mexicanos
8946	Mavrik Aire Transport
8952	Aloha Island Air
8958	National Air Operators
8964	Lab Flying Service - Air Taxi
8970	Green Acres - Air Taxi
8976	Fuerza AÃ©rea del Peru
8982	Air Algerie
8988	Ford Air Freight Inc.
8994	Selva Taxi Aero
9000	Transporturile Aeriene Romane (TAROM)
9006	Military - U.S. Air Force
9012	Central Air Services
9018	Vnukovo Airlines
9024	Si Fly - U.N. charter
9030	Gum Air Charter
9036	ATESA
9042	Middle East Airlines
9048	Seaview Aviation
9054	TropiAir - Air Taxi
9060	Trans-Canada Air Lines
9066	Exportada De Sal S.A.
9072	BAFIN
9078	Charter -Federal Electricity Commission
9084	Hyannis Air Service - Air Taxi
9090	Wasaya Airways
9096	Priorty Air Charter
9102	Dwyer Flying Service - Private Charter
9108	Military - Lao People's Liberation Army Air Force
9114	West Coast Air
9120	Suburban Airlines - Air Taxi
9126	Air Services
9132	Tanana Air Taxi
9138	East Anglian Flying Services
9144	Loide Aereo Nacional
9150	International Air Freight
9156	North PacifiAirlines
9162	Tartarstan Airlines
9168	Lineas AÃ©reas Interpolar
9174	Wuhan Airlines
9180	Agencia Interamericana de Aviada
9186	Korean Air
9192	Columbia PacifiAirlines
9198	Continental Charters
9204	AÃ©rotaxi Cachanilla
9210	Jack Harter Helicopters
9216	Kalinga Airlines
9222	Military - U.S. Air Force / Military U.S. Air Force
9228	Skydive Salt Lake - Charter
9234	Yakutavia
9240	Military - U.S. Navy / Military -  U.S. Navy
9246	Sibir (S7)
9252	Military - Vietnamese Air Force / Military - U.S. Army
9258	SATENA
9264	Air France
9270	Henry Nichols - Air Taxi
9276	Air Canada
9282	Loide AÃ©reo Nacional
9288	Akhal Air
9294	El Magal Aviation
9300	Sabeni
9306	Salida Flying Service - Air Taxi
9312	Willow Air Service - Air Taxi
9318	Presidental Airways Inc. - Air Taxi
9324	Aeroservice International
9330	British Airways
9336	Middle East Airlines / Military - Turkish Air ForceC-47
9342	Helicopter - Air Taxi
9348	Islands of the Bahamas Inc
9354	Heli-USA Airways. In- Air Taxi
9360	Prinair
9366	Aerolift
9372	Alas Nacionales. leased from Birgen Air
9378	Cessnyca
9384	Webber Airlines -Air Taxi
9390	Lineas AÃ©reas Nacionales
9396	Ortner Air Service - Taxi
9402	Ariana Afghan Airlines
9408	Nyika Safaris
9414	Navegacao Aerea Brasileira
9420	Air Trek
9426	Northwest Airlines
9432	Antillies Air - Air Taxi
9438	Shangri La Air
9444	Titan Airways
9450	Military - Royal Air Force
9456	Autrex
9462	Aerocaribe
9468	Mililtary - U.S. Navy
9474	Transport Comp. Algerienne de T.A.
9480	Petroleum Helicopter
9486	British Midland Airways
9492	Simmons Airlines
9498	Iran National Airlines
9504	Ozark Air Lines / Private
9510	Raytheon Aircraft
9516	Aerocosta Colombia
9522	Aerovias Condor
9528	Copterline
9534	Agco Corp
9540	TAR
9546	Servicios Aereos Martinez Leon
9552	Alpine AviationÂ 
9558	East Indonesia Air Taxi
9564	Air Afrique
9570	Harvey's Flying Service - Air Taxi
9576	Avensa
9582	Daimler Airways
9588	Military - German Navy
9594	Federal Express
9600	TAM Paraguay
9606	Bavaria Flug
9612	Avtex Air Services
9618	Military - Canadian Air Force
9624	Lambair
9630	Venezolana Internacional de Aviacion
9636	Balair
9642	Sabah Air
9648	Mineral County Airlines
9654	General Aviation Inc.
9660	Wien Alaska Airlines
9666	Northwest Airlines/ Northwest Airlines
9672	Aero Sudpacifico
9678	Aerolineas Abaroa
9684	Dodita Air Cargo
9690	Lauda Air
9696	United Express
9702	Alpena Flying Service - Air Taxi
9708	Moskovia Airlines
9714	Krasnoyarskie Avialinii
9720	Aeronaves de Mexico
9726	Military - Niger Air Force
9732	Military - U.S. Army
9738	Northeast Airlines
9744	Taiwan Airlines
9750	Austrian Airlines
9756	Los Angeles Airways
9762	Bourag Indonesia Airlines
9768	PacifiAir
9774	Alyemda
9780	Skyline Sweden
9786	Conesul Taxi AÃ©reo
9792	Air Taxi - Basco Flying Service Inc.
9798	Sky Executive Air Services
9804	Air Taxi - Great Northern Aircraft Co.
9810	United Air Lines / Military - U.S. Air Force
9816	AVCOM
9822	Transportno Aviatsionno Bulgaro-Soviet Obshchestvo
9828	Alia Royal Jordanian Airlines
9834	Alaska Coastal Airlines
9840	Advance Airlines
9846	West Caribbean Airways
9852	Military - Azerbaijan Air Force
9858	Air Taxi - Iliamna. Air Taxi Inc.
9864	Uruguayan Air Force - TAMU
9870	Southwest Aviation - Air Taxi
9876	Military - Bolivian Air Force
9882	Servivensa
9888	Jay Hawk Air - Air Taxi
9894	Military - Russian Army
9900	Festus Flying Service - Air Taxi
9906	Compania Dominicana de Aviacion
9912	GP Express Airlines
9918	Aero PaLease - Air Taxi
9924	Military - US Air Force
9930	Avia-Taxi
9936	PacifiAir Lines
9942	Business Aircraft - Air Taxi
9948	PetroproducciÃ³n
9954	African Air
9960	Saudi Arabian Airlines / Kazastan Airlines
9966	Starways
9972	SW Air Rangers - Air Taxi
9978	Hageland Aviation Services
9984	Mid PacifiAir
9990	SociÃ©tÃ© de Transports AÃ©riens
9996	Rotorcraft Leasing Co
10002	Capital Airlines Inc.
10008	Trans Air Services
10014	Jet Pro
10020	Skyway Air  - Taxi
10026	British Overseas Airways
10032	Private - Kabanov - skydiving
10038	Trigana Air Service
10044	Bahri Aviation
10050	Indian Airlines
10056	Expresso AÃ©reo
10062	Military - Tentara Nasional Indonesia Navy
10068	Invicta International Airlines (UK)
10074	Pennsylvania Airlines
10080	Vnokovo Airlines
10086	Trans World Airlines / Private
10092	Trans Service Airlift
10098	Military - Peruvian Air Force
10104	Federal Airlines
10110	Sun West Airline - Air Taxi
10116	Fleming International Airways
10122	Aviastar Mandiri
10128	Carga Aereo Transportada
10134	Syktyvkar Avia
10140	Trans Canada Air Lines / RCAF
10146	Southern Airways
10152	TACA International Airlines
10158	Military - Russian Air Force/Uzbekistan Airways
10164	Pan Malaysian Air Transport
10170	Connie Kalitta Services
10176	Viking Air Service - Air Taxi
10182	TAA
10188	Stratofreight
10194	RepubliAirlines
10200	Reeve Aleutian Airlines
10206	Haines Airways - Air Taxi
10212	Southwest Airlift
10218	Kalinin
10224	Aeroleo Taxi Aereo
10230	PacifiSouthwest Airlines / Private
10236	Crossair
10242	Venezuelian Government
10248	Private KNBC Los Angeles
10254	British European Airways / Military - British
10260	PHI Air Medical
10266	Avianca
10272	Blue Hawaiian Helicopters
10278	Chalk's International Airlines
10284	Air Charter
10290	Baker Aero Inc. - Taxi
10296	Linea AÃ©rea Nacional
10302	SilkAir
10308	Cape Smythe Air Service
10314	Chartair - Air Taxi
10320	TAM (Brazil)
10326	KNILM
10332	Fujita Koku Kabushki Kai
10338	Aerotransportes Petroleros
10344	Oceanaire Helicopter - Air Taxi
10350	Leamon Flying Service
10356	Naturelink
10362	Bradley Air Services
10368	Military - Russian Air Force / Military - Russian Air Force
10374	Grand Aire
10380	Superior Aviation
10386	Airfast Services
10392	Helaire Helicopter
10398	Lineas AÃ©reas Brasil
10404	Leeward Islands Air Transport
10410	Southern Jersey Air - Air Taxi
10416	Top Air - Air Taxi
10422	Military - Peruvian Army Aviation
10428	Air Taxi - Peninsula Airways
10434	Vanair
10440	Prestige Airlines (Cargo) Charter
10446	AVIANCA
10452	Military - Sri Lanka Air Force
10458	Braniff Airlines
10464	Military - U.S. Navy / Military - U.S. Navy
10470	International Jet Charter
10476	Cubana de Aviacion
10482	Gabon Express
10488	Amee de l'Air
10494	Lineas AÃ©reas Colombianas
10500	East Coast Jets
10506	Express Airlines - Northwest Airlink
10512	ATI
10518	Baron Aviation
10524	Deming Flying Service - Air Taxi
10530	Rinaldo Piaggio
10536	Transport Arien Transregional
10542	Military - Israel  Air Force
10548	Blue Bird Aviation
10554	MIAT - Mongolian Airlines
10560	Pathet Lao Airlines
10566	CAAC
10572	Linee Aeree Italiane
10578	Dutch Continental Airways
10584	MaRobertson-Miller Airlines
10590	Pel Air
10596	Avisto
10602	Fuerza AÃ©rea Uruguaya
10608	Military U.S. Navy / Military - U.S. Navy
10614	Aero Eslava
10620	British World Airways
10626	Bearskin Airlines / Air Sandy
10632	Metro Aviation
10638	Jet Alaska
10644	Aeropol
10650	Flamingo Airlines - Air Taxi
10656	Union of Burma Airways
10662	Alpine Air Express
10668	China Northern Airlines
10674	Hibiscus Air
10680	Tarom
10686	Private - Corporate
10692	Ukvozduchput
10698	Servant Air
10704	Military - Salvadorian Air Force
10710	Panorama Air Tour
10716	Yeti Airlines
10722	Island Air
10728	Hargreaves Airways
10734	American International Airways
10740	Lineas AÃ©reas La Urraca
10746	IAI 1124 Westwind
10752	Tashkent Aircraft Production Corporation
10758	Transportes Aereos Pegaso
10764	Riverside Air
10770	Air Laos
10776	Jetcraft
10782	Syndicato Condor
10788	AirNow
10794	Provincetown - Boston Airlines
10800	Societe Indochinoise de Raviteillement
10806	Military - Indian Air Force
10812	Harbour Air Seaplanes Ltd.
10818	Deccan Airways
10824	Military - Spanish Air Force.
10830	American Express Leasing
10836	Franco-Roumaine
10842	Soldotna Air Services
10848	Military - Spanish Air Force
10854	Aerolineas Condor
10860	Private - de Havilland Aircraft
10866	Paramount Airlilnes
10872	Island Airways
10878	Military - Royal British Navy
10884	Military - HelleniAir Force
10890	Aeroflot Russian International Airways
10896	Air Taxi - Air Taxi Inc.
10902	Curtiss-Reid Flying Services Ltd. (Canada)
10908	Belgian International Air Services
10914	Transports AÃ©riens de la Guinee-Bissau
10920	Kenai Air Service - Air Taxi
10926	Southwest Airlines
10932	Air Taxi - Sun Western Flyers Inc.
10938	Gaige Aviation - Air Taxi
10944	Regionnair
10950	Cascade Airways
10956	Air Transport Charter
10962	Air Orient
10968	Military - Ecuadorean Air Force
10974	Air Pennsylvania - Air Taxi
10980	Aerocondor de Colombia
10986	Canadian PacifiAir Lines
10992	All Nippon Airways
10998	Imperial Comm - Air Taxi
11004	Trans Continental and Western Air
11010	Harold E. Bell - Air Taxi
11016	National Air Transport
11022	Portsmouth Aviation - Air Taxi
11028	Sankuru Air Service
11034	Sea Airmotive
11040	Rwanda Government
11046	Military - ForÃ§a AÃ©rea Brasileira
11052	Capital Airlines
11058	Lineas AÃ©reas Cave
11064	Kisangani Airlift
11070	Lake Havasu Air
11076	Air Taxi - El Aero Services Inc.
11082	Gor'ky Eskadril'ya
11088	YPFB Transportes Aereos
11094	Tuninter
11100	Air Taxi - Delaware Aviation LLC
11106	Zantop Airways
11112	STAAP
11118	Chicago Southern Airlines
11124	North East Bolivian Airways
11130	North Canada Air
11136	PacifiSouthwest Airlines
11142	Loftleidir IcelandiAirlines
11148	British Airways Helicopters
11154	Air Ivoire
11160	Air Guadeloupe
11166	EgyptAir
11172	Kime Flying Service - Air Taxi
11178	Air Taxi - Henson Airlines
11184	Canair Cargo
11190	Intercontinental de Aviacion
11196	JC Air
11202	T & G Aviation
11208	Aero-Tropics
11214	Military - Royal Netherlands Naval Air Service
11220	Burlington Air Express
11226	Douglas Aircraft
11232	Skyways
11238	Frontier Air
11244	Helicsa
11250	Airtech Rajawaldi Udara
11256	Trans Caribbean Airways
11262	Bimini Airways
11268	HiTech Helicopters
11274	Military - Angolan Armed Forces
11280	Asiana Airlines
11286	Santa Barbara Airlines
11292	Pilgrim Airlines
11298	Monument Valle - Air Taxi
11304	Sahsa Airlines
11310	Air Madagascar
11316	Aeralpi
11322	BHS - Brazilian Helicopter Services
11328	ManacÃ¡ TÃ¡xi AÃ©reo
11334	Military - Royal Belgian Air Force
11340	San Juan Air
11346	Royal Air Lao
11352	Slick Airways - Cargo
11358	Air Taxi - Air Grand Canyon Inc.
11364	Petrolium Helicopter
11370	Tar Heel Aviation
11376	Panagra
11382	Continental Air Transport
11388	Ace Flying Service
11394	Sabena
11400	Inex Adria Aviopromet / British Airways
11406	Aeroperlas
11412	Empresa Nacional de Transp.  Trabalho Aereo
11418	Island Express Helicopter Service
11424	SAVCO
11430	Private - Facilities Management Co.
11436	Beatty Flying Service - Taxi
11442	Georgia Express
11448	Air Pereira
11454	Uzbek Civil Aviation Administration
11460	Aspring Air
11466	Military - Government of Equatorial Guinea
11472	Private - Hendrick Motorsports Inc.
11478	British European Airways / Military - Soviet Air Force
11484	Delta Air Lines/ North Central Airlines
11490	Ibertrans AÃ©rea
11496	Transcontinental
11502	Air  Mali
11508	Wicks Flying Service - Air Taxi
11514	Chaillotine Air Service
11520	Greenbriar Airways
11526	Taxi AÃ©reo Cesar Aguiar
11532	Central  Airlines
11538	Cie Air Transport
11544	Linea AÃ©rea Mexicana de Carga
11550	TAUSA
11556	Ukrainian Cargo Airlines -  Congolese Army Charter
11562	Air Taxi - Wolfe Air Aviation Ltd.
11568	Continental Connection/Colgan Air
11574	Volare Aviation Enterprise
11580	Air Bleu
11586	LAC Colombia
11592	Team Air
11598	Bar Harbor Airlines
11604	Wayumi Air Taxi
11610	Corporate Air
11616	Inuvik Coastal Airways
11622	Military - Venezuelan Air Force
11628	Air Express
11634	Village Aviation - Air Taxi
11640	Military U.S. Navy
11646	Eitos
11652	Military - U.S. Navy / NASA
11658	Indamer
11664	Aircraft Charter Group Inc
11670	Kish Airlines
11676	Sierra PacifiAirlines
11682	TACV-Cabo Verde Airlines
11688	Guernsey Airways
11694	Downeast Airlines
11700	Aviaco
11706	Maddux Airlines / Military - U.S.Army Air Force
11712	VIARCO
11718	Farnair Hungary
11724	Air Taxi - US Helicopters Inc.
11730	AtlantiAirways
11736	Military - Australian Army Aviation
11742	Zantop Air Transport
11748	AtlantiCity Airlines
11754	Aero O-Y
11760	Air taxi - Aero Air Taxi
11766	Bombardier Aerospace
11772	Chicago and Southern Airlines
11778	Eagle Flight - Air Taxi
11784	Singapore Airlines
11790	RAM
11796	Richmor Aviation
11802	Libya Arab Airlines / Military -  Libya Air Force
11808	Sky Chopper  - Air Taxi
11814	Aero Mayflower Transit Co
11820	Marco Zero Air Taxi
11826	Aviation Charter - Air Taxi
11832	Air Manitoba
11838	Winship Air
11844	Eurasia
11850	Lloyd Aereo Boliviano
11856	Military - Portuguese Air Force
11862	Alii Air Hawaii - Air Taxi
11868	Air South
11874	Jetstream Inc.
11880	Alyemda Airlines
11886	Military - Belgian Air Force
11892	Military - British Air Ministry
11898	Living Water Teaching Ministries Charter
11904	Thai International
11910	Austin Airways
11916	Transair Georgia Airlines
11922	Gastonia Aviation - Taxi
11928	American Flyers Airline
11934	Heli-USA Airways
11940	Jet Charter Group
11946	Riddle Airlines
11952	Air Taxi- Hermans Air Inc.
11958	Military - West German Air Force
11964	Garuda Indonesia Airlines
11970	Blue Bird Air Service
11976	Capital Taxi Aereo
11982	Cruzeiro
11988	Care Flight International
11994	United Express  / Private
12000	Central African Airways
12006	Mexicana
12012	Peninsular
12018	Military - Servicio Aereo Nacional
12024	Aktiebolaget Aerotransport
12030	Necon Air
12036	US Airways Express
12042	Circuit City Stores - Charter
12048	Aeroservice S de RL
12054	Seattle Air Charter
12060	Rutaca Airlines
12066	North Sea Aerial and General Transport
12072	Western Helicopter
12078	Mohawk Airlines
12084	Air Taxi - Seaside Air Service
12090	Royal Nepal Airlines
12096	DNL
12102	Frontier Flying Service
12108	Air Taxi - Transamerica
12114	Alas del Sur
12120	Military - Iranian Air Force
12126	Military - Union of Burma Air Force
12132	Richland Aviation  - Taxi
12138	OlympiAirways
12144	Air Ocean
12150	Bako Air
12156	Air Taxi - Baker Aviation Inc.
12162	Everest Air
12168	Winship Air Service
12174	Cargolux
12180	American Airlines / Military - USAF
12186	Transportes AÃ©reos Mexicanos
12192	NY. Phil. Washington AW
12198	Starair
12204	Berkshire Aviation - Air Taxi
12210	Alaska Travel
12216	Military - Japan Maritime Self Defense Force
12222	Bouraq Indonesia Airlines
12228	SociÃ©tÃ© AÃ©rienne de Tr. Tropicaux
12234	Military - Finish Air Force
12240	Northwest Airways
12246	Flight Safety Australia
12252	Rico Taxi Aero
12258	VOTEC / VOTEC
12264	Qantas
12270	Force Area Populaire de Angola
12276	United Nations -  UTair Charter
12282	TAME
12288	Talair
12294	Trans World Airlines
12300	Jack N. Boswick - Air Taxi
12306	Military - Polish Air Force
12312	Air Fiji
12318	Air Serv Internatiional/CemAir
12324	Eagle Airways
12330	UTAir Airlines
12336	USAir / Skywest Airlilnes
12342	Spanish Air Force
12348	Bharat Airways
12354	Adam Air
12360	Warsaw Aviation - Taxi
12366	Pioneer Airlines
12372	Air Transport Associates
12378	Patuxent Airways / Private
12384	Southern Sudan Air Connection
12390	Military - Chadian Air Force
12396	Military - Philippine Air Force
12402	REAL
12408	Corporate Airlines (American Connection)
12414	Aerogulf
12420	Orient Airways
12426	Air Taxi - Stanley Air Taxi
12432	Transportes Aereos del Caribe
12438	Frigorifico Maniqui
12444	Borneo Airways
12450	Coval Air
12456	Inter City Flug
12462	Syrian Arab Airlines
12468	Aramar
12474	Air Taxi - Las Vegas Flyers Inc.
12480	Aerovias Cuba International
12486	Air New Zealand
12492	Air Carriers
12498	Panair do Brasil
12504	Provincial Airlines
12510	Penninsula Airways - Air Taxi
12516	Gambcrest
12522	Finnair
12528	Military - Colombian Air Force
12534	Charter - Twin Air HB
12540	Papillon Grand Canyon Helicopters of Las Vegas
12546	American Air  Export & Import Co.
12552	SL Aviation Services
12558	Dan Air Services
12564	Hesler Noble - Air Taxi
12570	Bakhtar Afghan Airlines
12576	Military - US Army
12582	Saskatchewan Government Northern Air Operations
12588	Air Caraibes
12594	President Airlines
12600	Bruning Aviation
12606	Galesburg Aviation - Air Taxi
12612	Korean Airlines
12618	Stavropol Airlines
12624	General Air
12630	Antillian Airlines
12636	Red Bank Air Taxi
12642	US Aerial Mail Service
12648	Superior Airways
12654	Aerovias Rojas
12660	Itavia
12666	Transaviaexport Airlines
12672	Vietnam Airlines
12678	Southwest Airways
12684	Vehu Akat
12690	Military - Royal Airship Works
12696	Action Airlines
12702	Sunbeam Air Transport Co.
12708	Oriental Airlines
12714	Latecoere Airlines
12720	L.J. Simmons - Air Taxi
12726	Government of Mozambique
12732	Ala Littoria
12738	Military - Colombian government
12744	Golden West Airlines / Private
12750	Hudson Air Service - Air Taxi
12756	GAS Air
12762	Century Air Lines
12768	Horizon Properties
12774	Trans Canada Air Lines
12780	Yug Avia
12786	Geoterrex
12792	Fiji Air
12798	Military - Chinese Air Force
12804	Mililtary - Soviet Air Force
12810	North Sound Aviation
12816	Whyalla Airlines
12822	Deutche Lufthansa
12828	Prospec
12834	Aerolineas El Salvador
12840	Northwest Orient Airlines
12846	Air Continental
12852	Boeing Aircraft Company
12858	T.A. Intercontinentaux (France)
12864	British Eagle International Airlines
12870	Societe Transatlantique Aerienne
12876	Transportes Areos Nacionales
12882	Resort Air Service - Air Taxi
12888	BHS - Brazilian Helicopter Service Air Taxi
12894	Trans World Airlines / Eastern Air Lines
12900	Wideroe's Flyveselksap
12906	Tura Air Enterprise
12912	Military - Sudanese Air Force
12918	Frontier Airlines
12924	Braniff Airways
12930	Servicios Aereas Virgen de Copacabana
12936	Radeair
12942	Avion Airways
12948	Surinam Airways
12954	Bristow Helicopters
12960	Aerovias Contreras
12966	Guardia Nacional de Venezuela
12972	Tropical Airways
12978	Points North Air Services
12984	Toa DomestiAirline (Japan)
12990	Elbee Airlines
12996	West Aviation
13002	China Southwest Airlines
13008	Globe Air
13014	Air Taxi - Papillion Helicopters Ltd.
13020	Air Taxi - Four Corners Aviation Inc.
13026	Maddux Airlines
13032	Military - Kenyan Air Force
13038	Bassett Complany - Taxi
13044	Central Air Transport
13050	Servicios AÃ©reos Especiales
13056	Air Taxi - Flying School of the Cascades Inc.
13062	Nationair (chartered by Nigeria Airways)
13068	SceniAirlines
13074	Safe Air Complany
13080	Oeste Linhas Aereas
13086	LAC Columbia
13092	Military - Ethiopian Air Force
13098	Arsenyev Aviation Production Association
13104	Douglas Airways
13110	Britannia Airways
13116	Kapowsin Air Sports
13122	Wedell-Williams Air Service Corporation
13128	Holyman Airways
13134	Interstate Airlines
13140	Ecuato Guineana de Aviacion
13146	Executive Air - Air Taxi
13152	Military - Force AÃ©rienne ZaÃ¯roise
13158	Military - Madagascar Air Force
13164	Duncan Aircraft Sales
13170	Private charter
13176	IAS Cargo
13182	ArctiTransportation Services
13188	McKinley Air Service - Air Taxi
13194	Bremerton-Seattle Air Taxi / Gorst Air Lines
13200	Maryland State Police
13206	Kata Transportation
13212	Aero Cozumel
13218	Associated Air Transport
13224	Spernak Airways - Air Taxi
13230	Metro Air Systems
13236	Varney Airlines
13242	Shanxi Airlines
13248	Webber Air - Air Taxi
13254	Transbrasil
13260	Miami Airlines
13266	Aeronica
13272	Ambler Air Service
13278	China General Aviation Corporation
13284	Savanair
13290	Air Hawaii
13296	Stikine Air Service - Air Taxi
13302	Enimex
13308	Broughton Air Servces
13314	Interflug
13320	Mabuhay Airways
13326	Air Philippines
13332	ALIANSA Colombia
13338	Military - U.S. Marine Corps/Military - U.S. Marine Corps
13344	Military - Royal Thai Air Force
13350	Staer Air
13356	Air taxi - Lider Air Taxi
13362	Ansett New Zealand
13368	Military - Uruguayan Air Force
13374	Island Airways Ltd.
13380	Taxi Aereo El Venado
13386	Kenn Borek Air
13392	Lehigh Acres Development Inc.
13398	Sun Valley Airways - Air Taxi
13404	Icelandair
13410	Mannin Airways
13416	Faraz Qeshm Airlines
13422	Kenya Airways
13428	Deraps Aviation
13434	Aerolineas Flecha Austral
13440	Lineas Areas Unidas
13446	Volga-Dnepr Airlines
13452	de Havilland Aircraft
13458	Air taxi
13464	Orlando Airways - Air Taxi
13470	Mimika Air
13476	Era Helicopter - Air Taxi
13482	Aigle Azur
13488	Military - U.S. Army Air Forces
13494	Provincial Air Services
13500	Aeroflot / Soviet Air Force
13506	Trans-Luxury Airlines
13512	Transafrik - United Nations Charter
13518	DLL
13524	Paradise Tour Helicopters
13530	Fiji Air Services
13536	Japan Air Lines
13542	Union Flights
13548	OlympiAviation
13554	Sky Cabs
13560	China Southwest Airlines / Xiamen Airlines
13566	North Queensland Airways
13572	Galaxy Kavatsi Airlines
13578	Perris Valley Aviation
13584	Jamie Ramirez - Air Taxi
13590	Venezolana
13596	Aerovias del Valle
13602	Regency Express Air
13608	Dutch Dakota Association
13614	Scottish Airlines
13620	Burlington Air - Air Taxi
13626	Union des Transports Aeriens de Guinee
13632	Corporate Mobility Inc. - Private
13638	Ejercito del Aire
13644	Allied Air Freight
13650	Professional Aviation Services
13656	Reynolds Airways
13662	Maritime Central Airways
13668	Military - South African Air Force
13674	Aerotuy airline
13680	CTA LanguedoRoussillon
13686	Vostok Aviakompania
13692	Rocky Mountain Airways
13698	Charter - Flightline Charter Services
13704	Transasia Airways
13710	Military - U.S. Army Air Forces / Military - U.S. Army Air Forces
13716	Air Taxi - Continental Air Taxi
13722	Allegheny Airlines
13728	Daimler Airways / Grands Express Aeriens
13734	Air Central
13740	Western Straits Air
13746	Balkan Bulgarian Airlines
13752	Streamline
13758	Francisco Cruz
13764	Northern Wings
13770	Martinair Holland NV
13776	Mountain Air Cargo
13782	Regina Cargo Airlines
13788	Military - Republiof China Air Force
13794	Merpati Nusantara Airlines
13800	Air Littoral
13806	Private - Ashland Oil Company
13812	Air Taxi - Eidoarie Inc.
13818	Trans World Airlines / Castleton Inc.
13824	Holdens Air Transport Service
13830	SA Amazonica
13836	Lineas Aereas de los Libertadores
13842	Coastal Cargo
13848	Minerva Airlines
13854	Air Inter
13860	Southern Cross Airways
13866	Alaska-Washington Airways
13872	CATA Linea Aerea
13878	Spair Air Transport
13884	Metro Commuter - Air Taxi
13890	Air Bissau
13896	Braathens
13902	Aviateca
13908	Wyoming Air Service
13914	Trillium Air
13920	Scibe Airlift Cargo Zaire
13926	Weasua Airtransport
13932	State Airlines
13938	Airlink
13944	Ptarmigan Airways
13950	American Export Airlines
13956	Dunlap Aviation - Air Taxi
13962	Eagle Cap Leasing
13968	Aerotechnia
13974	Blackhawk Int. Airways  - Private charter
13980	Air Tahiti
13986	Green River Aviation - Air Taxi
13992	Okada Air
13998	Charter - Air Cush
14004	TACA
14010	Compania de Aviacion Faucett SA (Peru)
14016	Union AÃ©romaritime de Transport
14022	AV Air / American Eagle
14028	Smyer Aircraft - Air Taxi
14034	USAir
14040	BHS - Brazilian Helicopter Service  Air Taxi
14046	Oxaero Ltd.
14052	Iran Air
14058	El Al
14064	Inair Panama
14070	Military - Imperial Iranian Air Force
14076	Military - Congolese Air Force
14082	Canadian Air Transat
14088	Vieques Air Link
14094	Layman Weikle - Taxi
14100	Fuerza AÃ©rea Panamena
14106	General Airways
14112	Transworld Safaris
14118	Aviogenex (Yugoslavia)
14124	Skyline Aviation - Air Taxi
14130	Military - Slovak Air Force
14136	Aerial Transit Company
14142	Northern Executive Aviation
14148	Red Aircraft Service - Air Taxi
14154	Trans National Airlines
14160	Evergreen Helicopter - Air Taxi
14166	Austral Lineas Aeras (Argentina)
14172	Aero Ferinco Charter
14178	Taxi Aereo de Santander
14184	Lao Cathay Airlines
14190	NewCal Aviation
14196	Garuda  Indonesia Airlines / Garuda Indonesia Airlines
14202	Avalki Air
14208	Himmelsschreiber
14214	Alada
14220	Air Guinee
14226	Plane Sailing
14232	National Airways
14238	Jetcom S.A.
14244	Jett Paqueteria SA
14250	Aquilla Airways
14256	Nacional de Aviacion
14262	Air Saint Maurice Inc.
14268	Khalatyrka
14274	Galaxy Airlines
14280	Aramco Associated Company
14286	ALFA
14292	Eagle Commuter
14298	Gay Airways - Air Taxi
14304	Chicago Helicopter Airways
14310	Boise Air Service
14316	Petroleum Helicopters Inc
14322	Air Taxi
14328	Eagle Air
14334	SceniAir Tours
14340	US Air Express/Air Midwest
14346	Procurator Generale de la Republica
14352	Military - U. S. Air Force
14358	Kiev Production Association
14364	Servicios Aeronauticos Sucre (SASCA)
14370	Air Anguilla
14376	Magistralnye Avialinii
14382	Central Mountain Air Services
14388	LAN
14394	Servicios AÃ©reos Boliviano
14400	TABA
14406	Skyward Aviation
14412	Helicol Colombia
14418	C and C Aviaiton - Air Taxi
14424	Aeropesca Colombia
14430	Georgian Air
14436	Military - Mozambique Air Force
14442	Commercial Airways
14448	Evergreen Alaska Helicopters. Inc.
14454	Resort Airlines
14460	Tassili Airlines
14466	Military - United States Air Force
14472	Fine Air
14478	Air Wisconsin
14484	Servicio Aereo Columbiano / SCADTA
14490	Edde Airlines
14496	Military - People's Liberation Army
14502	Zanex
14508	By Air
14514	Private - OverteCompany
14520	LOT Polish Airlines
14526	Pulkovo Aviation Enterprise
14532	Aviaimpex (Macedonia)
14538	ELK Aviation Co. (leased from Eminex)
14544	World Airways
14550	Military - French Naval Aviation
14556	Paradise Airlines
14562	VASP
14568	Procuradoria General de la Republica
14574	Air Freight New Zealand
14580	Aviation Enterprises
14586	Air Carriers Express Services Inc
14592	Interocean
14598	Middle States Airlines
14604	Pan American World Airways / KLM
14610	Independent Air Travel
14616	Sinquanon Management - Air Taxi
14622	Royal American - Air Taxi
14628	Military - Macedonian Air Force
14634	Devlet Hava Yollari
14640	Societe Aerienne du Littoral
14646	Swift Aire Lines Inc.
14652	Mid Continent Airlines
14658	Saint Lawrence Airways
14664	Transamerica Airlines
14670	PacifiNorthern Airlines
14676	Transport Aerien Intercontinentaux (France)
14682	Alpha Airways
14688	China Airlines (Taiwan)
14694	Trans Continental Air Transport
14700	AZAL Cargo Company
14706	Saturn Airways
14712	Air Taxi - Western Helicopter Inc.
14718	Fuji Airlines
14724	Argentina CAA
14730	Ryan Blake Air Charter
14736	Military - Royal Jordanian Air Force
14742	Augusta Aviaiton - Air Taxi
14748	Interamericana de Aviacion
14754	Private - Mainline Aviation
14760	Khors Aircompany
14766	Bali International Air Service
14772	Military - Republiof South Korea Air Force
14778	Trans Australia Airlines
14784	Indian National Airways
14790	Iberia Airlines
14796	British Commonwealth PacifiAirlines
14802	British Columbia Airways
14808	Associated Airways
14814	Cruzeiro Do Sud
14820	Tampa Air Center - Air Taxi
14826	VOTEC
14832	Pickwick Airways
14838	Ross Aviation - Air Taxi
14844	Transportes Aereos Nacionales
14850	Burke Air Transport
14856	Military -  (2) U.S. Army Air Forces
14862	CAAK
\.


--
-- TOC entry 2851 (class 0 OID 41802)
-- Dependencies: 212
-- Data for Name: siniestro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.siniestro (index, "cn/ln", id_baja, id_accidente, id_avion) FROM stdin;
0	1	\N	\N	\N
1	\N	3	2	4
2	\N	6	4	8
3	\N	9	6	12
4	\N	12	8	16
5	\N	15	10	20
6	\N	18	12	24
7	\N	21	14	28
8	\N	24	16	32
9	\N	27	18	36
10	\N	30	20	40
11	\N	33	22	44
12	\N	36	24	48
13	\N	39	26	52
14	\N	42	28	56
15	\N	45	30	60
16	\N	48	32	64
17	\N	51	34	68
18	\N	54	36	72
19	\N	57	38	76
20	\N	60	40	80
21	\N	63	42	84
22	\N	66	44	88
23	\N	69	46	92
24	\N	72	48	96
25	\N	75	50	100
26	\N	78	52	104
27	\N	81	54	108
28	\N	84	56	112
29	\N	87	58	116
30	\N	90	60	120
31	\N	93	62	124
32	\N	96	64	128
33	\N	99	66	132
34	\N	102	68	136
35	\N	105	70	140
36	\N	108	72	144
37	\N	111	74	148
38	\N	114	76	152
39	31	117	78	156
40	20	120	80	160
41	\N	123	82	164
42	178	126	84	168
43	HP-25	129	86	172
44	\N	132	88	176
45	\N	135	90	180
46	\N	138	92	184
47	\N	141	94	188
48	\N	144	96	192
49	\N	147	98	196
50	\N	150	100	200
51	\N	153	102	204
52	\N	156	104	208
53	\N	159	106	212
54	\N	162	108	216
55	R-38	165	110	220
56	160	168	112	224
57	6116	171	114	228
58	HP-43	174	116	232
59	\N	177	118	236
60	4	180	120	240
61	\N	183	122	244
62	\N	186	124	248
63	\N	189	126	252
64	1254	192	128	256
65	\N	195	130	260
66	\N	198	132	264
67	\N	201	134	268
68	\N	204	136	272
69	\N	207	138	276
70	\N	210	140	280
71	\N	213	142	284
72	\N	216	144	288
73	\N	219	146	292
74	\N	222	148	296
75	\N	225	150	300
76	\N	228	152	304
77	29	231	154	308
78	\N	234	156	312
79	\N	237	158	316
80	\N	240	160	320
81	\N	243	162	324
82	\N	246	164	328
83	1535	249	166	332
84	\N	252	168	336
85	\N	255	170	340
86	\N	258	172	344
87	\N	261	174	348
88	36	264	176	352
89	590	267	178	356
90	\N	270	180	360
91	\N	273	182	364
92	KLM-2	276	184	368
93	\N	279	186	372
94	\N	282	188	376
95	\N	285	190	380
96	\N	288	192	384
97	\N	291	194	388
98	\N	294	196	392
99	\N	297	198	396
100	\N	300	200	400
101	\N	303	202	404
102	5307	306	204	408
103	4759	309	206	412
104	660	312	208	416
105	2	315	210	420
106	\N	318	212	424
107	1554	321	214	428
108	W10/3	324	216	432
109	\N	327	218	436
110	\N	330	220	440
111	\N	333	222	444
112	\N	336	224	448
113	86	339	226	452
114	\N	342	228	456
115	\N	345	230	460
116	1567	348	232	464
117	\N	351	234	468
118	591	354	236	472
119	4993	357	238	476
120	\N	360	240	480
121	4840	363	242	484
122	30	366	244	488
123	\N	369	246	492
124	\N	372	248	496
125	\N	375	250	500
126	\N	378	252	504
127	798	381	254	508
128	\N	384	256	512
129	\N	387	258	516
130	\N	390	260	520
131	\N	393	262	524
132	39	396	264	528
133	\N	399	266	532
134	\N	402	268	536
135	\N	405	270	540
136	\N	408	272	544
137	\N	411	274	548
138	\N	414	276	552
139	\N	417	278	556
140	\N	420	280	560
141	\N	423	282	564
142	\N	426	284	568
143	\N	429	286	572
144	742	432	288	576
145	439	435	290	580
146	\N	438	292	584
147	760	441	294	588
148	9	444	296	592
149	1533 (KLM-1)	447	298	596
150	4-AT-26	450	300	600
151	\N	453	302	604
152	\N	456	304	608
153	809	459	306	612
154	1531	462	308	616
155	\N	465	310	620
156	\N	468	312	624
157	\N	471	314	628
158	\N	474	316	632
159	46	477	318	636
160	\N	480	320	640
161	\N	483	322	644
162	4-AT-47	486	324	648
163	63	489	326	652
164	\N	492	328	656
165	3005	495	330	660
166	\N	498	332	664
167	\N	501	334	668
168	40	504	336	672
169	\N	507	338	676
170	\N	510	340	680
171	53	513	342	684
172	\N	516	344	688
173	\N	519	346	692
174	4-AT-41	522	348	696
175	617	525	350	700
176	4-AT-010	528	352	704
177	\N	531	354	708
178	\N	534	356	712
179	\N	537	358	716
180	\N	540	360	720
181	W10/4	543	362	724
182	5-AT-002	546	364	728
183	151	549	366	732
184	\N	552	368	736
185	\N	555	370	740
186	\N	558	372	744
187	\N	561	374	748
188	1571	564	376	752
189	\N	567	378	756
190	5-AT-002	570	380	760
191	239	573	382	764
192	704	576	384	768
193	\N	579	386	772
194	\N	582	388	776
195	5748	585	390	780
196	\N	588	392	784
197	\N	591	394	788
198	97	594	396	792
199	911	597	398	796
200	1	600	400	800
201	\N	603	402	804
202	\N	606	404	808
203	\N	609	406	812
204	\N	612	408	816
205	\N	615	410	820
206	\N	618	412	824
207	\N	621	414	828
208	5-AT-046	624	416	832
209	\N	627	418	836
210	963	630	420	840
211	\N	633	422	844
212	\N	636	424	848
213	634	639	426	852
214	\N	642	428	856
215	5-AT-033	645	430	860
216	44	648	432	864
217	87	651	434	868
218	5-AT-050	654	436	872
219	\N	657	438	876
220	\N	660	440	880
221	R-101	663	442	884
222	443	666	444	888
223	\N	669	446	892
224	120	672	448	896
225	W8-7	675	450	900
226	\N	678	452	904
227	921	681	454	908
228	\N	684	456	912
229	\N	687	458	916
230	\N	690	460	920
231	\N	693	462	924
232	\N	696	464	928
233	\N	699	466	932
234	\N	702	468	936
235	241	705	470	940
236	1063	708	472	944
237	442	711	474	948
238	\N	714	476	952
239	\N	717	478	956
240	\N	720	480	960
241	5096	723	482	964
242	64	726	484	968
243	177	729	486	972
244	\N	732	488	976
245	\N	735	490	980
246	\N	738	492	984
247	\N	741	494	988
248	5AT-029	744	496	992
249	\N	747	498	996
250	\N	750	500	1000
251	334	753	502	1004
252	107	756	504	1008
253	178	759	506	1012
254	\N	762	508	1016
255	\N	765	510	1020
256	\N	768	512	1024
257	\N	771	514	1028
258	49	774	516	1032
259	5226	777	518	1036
260	\N	780	520	1040
261	\N	783	522	1044
262	\N	786	524	1048
263	5034	789	526	1052
264	\N	792	528	1056
265	\N	795	530	1060
266	\N	798	532	1064
267	\N	801	534	1068
268	\N	804	536	1072
269	1027	807	538	1076
270	\N	810	540	1080
271	\N	813	542	1084
272	\N	816	544	1088
273	\N	819	546	1092
274	\N	822	548	1096
275	\N	825	550	1100
276	5-AT-062	828	552	1104
277	\N	831	554	1108
278	\N	834	556	1112
279	\N	837	558	1116
280	\N	840	560	1120
281	\N	843	562	1124
282	\N	846	564	1128
283	\N	849	566	1132
284	\N	852	568	1136
285	696	855	570	1140
286	\N	858	572	1144
287	\N	861	574	1148
288	\N	864	576	1152
289	\N	867	578	1156
290	\N	870	580	1160
291	\N	873	582	1164
292	\N	876	584	1168
293	\N	879	586	1172
294	5-AT-098	882	588	1176
295	\N	885	590	1180
296	184	888	592	1184
297	AW-363	891	594	1188
298	\N	894	596	1192
299	\N	897	598	1196
300	29	900	600	1200
301	2737	903	602	1204
302	1701	906	604	1208
303	\N	909	606	1212
304	5-AT-005	912	608	1216
305	\N	915	610	1220
306	1685	918	612	1224
307	\N	921	614	1228
308	\N	924	616	1232
309	\N	927	618	1236
310	\N	930	620	1240
311	\N	933	622	1244
312	\N	936	624	1248
313	47	939	626	1252
314	2735	942	628	1256
315	528	945	630	1260
316	1	948	632	1264
317	\N	951	634	1268
318	1739	954	636	1272
319	925	957	638	1276
320	6606	960	640	1280
321	\N	963	642	1284
322	5-AT-066	966	644	1288
323	\N	969	646	1292
324	8	972	648	1296
325	\N	975	650	1300
326	22	978	652	1304
327	5-AT-055	981	654	1308
328	176	984	656	1312
329	\N	987	658	1316
330	\N	990	660	1320
331	53	993	662	1324
332	\N	996	664	1328
333	\N	999	666	1332
334	5004	1002	668	1336
335	\N	1005	670	1340
336	2301	1008	672	1344
337	\N	1011	674	1348
338	2311	1014	676	1352
339	2311	1017	678	1356
340	\N	1020	680	1360
341	2008	1023	682	1364
342	\N	1026	684	1368
343	4-AT-63	1029	686	1372
344	1317	1032	688	1376
345	\N	1035	690	1380
346	\N	1038	692	1384
347	4051	1041	694	1388
348	45	1044	696	1392
349	6031	1047	698	1396
350	\N	1050	700	1400
351	\N	1053	702	1404
352	5242	1056	704	1408
353	\N	1059	706	1412
354	1295	1062	708	1416
355	4-AT-49	1065	710	1420
356	\N	1068	712	1424
357	\N	1071	714	1428
358	\N	1074	716	1432
359	\N	1077	718	1436
360	5-AT-112/5-AT-006	1080	720	1440
361	5358	1083	722	1444
362	\N	1086	724	1448
363	1335	1089	726	1452
364	\N	1092	728	1456
365	9103	1095	730	1460
366	\N	1098	732	1464
367	195	1101	734	1468
368	\N	1104	736	1472
369	2312	1107	738	1476
370	1698	1110	740	1480
371	2033	1113	742	1484
372	\N	1116	744	1488
373	1704	1119	746	1492
374	906	1122	748	1496
375	\N	1125	750	1500
376	\N	1128	752	1504
377	\N	1131	754	1508
378	\N	1134	756	1512
379	30002	1137	758	1516
380	915	1140	760	1520
381	S-752	1143	762	1524
382	1307	1146	764	1528
383	4018	1149	766	1532
384	19	1152	768	1536
385	5	1155	770	1540
386	229	1158	772	1544
387	\N	1161	774	1548
388	5-AT-115	1164	776	1552
389	\N	1167	778	1556
390	1247	1170	780	1560
391	\N	1173	782	1564
392	359	1176	784	1568
393	\N	1179	786	1572
394	\N	1182	788	1576
395	\N	1185	790	1580
396	\N	1188	792	1584
397	\N	1191	794	1588
398	4211	1194	796	1592
399	4077	1197	798	1596
400	A-19/4	1200	800	1600
401	\N	1203	802	1604
402	\N	1206	804	1608
403	\N	1209	806	1612
404	\N	1212	808	1616
405	\N	1215	810	1620
406	\N	1218	812	1624
407	\N	1221	814	1628
408	\N	1224	816	1632
409	170	1227	818	1636
410	\N	1230	820	1640
411	\N	1233	822	1644
412	5506	1236	824	1648
413	\N	1239	826	1652
414	5498	1242	828	1656
415	\N	1245	830	1660
416	5078	1248	832	1664
417	1	1251	834	1668
418	1358	1254	836	1672
419	1957	1257	838	1676
420	\N	1260	840	1680
421	1258	1263	842	1684
422	1018	1266	844	1688
423	\N	1269	846	1692
424	1737	1272	848	1696
425	1696	1275	850	1700
426	\N	1278	852	1704
427	1913	1281	854	1708
428	1926	1284	856	1712
429	715	1287	858	1716
430	S-818	1290	860	1720
431	1256	1293	862	1724
432	4207	1296	864	1728
433	D-LZ129	1299	866	1732
434	916	1302	868	1736
435	1055	1305	870	1740
436	1585	1308	872	1744
437	30014	1311	874	1748
438	4305	1314	876	1752
439	\N	1317	878	1756
440	1289	1320	880	1760
441	\N	1323	882	1764
442	\N	1326	884	1768
443	2	1329	886	1772
444	\N	1332	888	1776
445	\N	1335	890	1780
446	1914	1338	892	1784
447	1830	1341	894	1788
448	5827	1344	896	1792
449	\N	1347	898	1796
450	\N	1350	900	1800
451	4213	1353	902	1804
452	11	1356	904	1808
453	5777	1359	906	1812
454	1407	1362	908	1816
455	4207	1365	910	1820
456	\N	1368	912	1824
457	\N	1371	914	1828
458	\N	1374	916	1832
459	5	1377	918	1836
460	\N	1380	920	1840
461	\N	1383	922	1844
462	1299	1386	924	1848
463	4031/12	1389	926	1852
464	\N	1392	928	1856
465	4063	1395	930	1860
466	124	1398	932	1864
467	\N	1401	934	1868
468	1439	1404	936	1872
469	5453	1407	938	1876
470	1956	1410	940	1880
471	\N	1413	942	1884
472	\N	1416	944	1888
473	\N	1419	946	1892
474	\N	1422	948	1896
475	\N	1425	950	1900
476	15013	1428	952	1904
477	1432	1431	954	1908
478	\N	1434	956	1912
479	AW-785	1437	958	1916
480	556	1440	960	1920
481	\N	1443	962	1924
482	\N	1446	964	1928
483	\N	1449	966	1932
484	4024	1452	968	1936
485	1424	1455	970	1940
486	94001	1458	972	1944
487	1369	1461	974	1948
488	\N	1464	976	1952
489	\N	1467	978	1956
490	5928	1470	980	1960
491	\N	1473	982	1964
492	1566	1476	984	1968
493	\N	1479	986	1972
494	2316	1482	988	1976
495	2021	1485	990	1980
496	\N	1488	992	1984
497	4914	1491	994	1988
498	\N	1494	996	1992
499	1907	1497	998	1996
500	\N	1500	1000	2000
501	1413	1503	1002	2004
502	\N	1506	1004	2008
503	1329	1509	1006	2012
504	1408	1512	1008	2016
505	4042	1515	1010	2020
506	\N	1518	1012	2024
507	S-812	1521	1014	2028
508	\N	1524	1016	2032
509	\N	1527	1018	2036
510	\N	1530	1020	2040
511	1994	1533	1022	2044
512	1366	1536	1024	2048
513	6076	1539	1026	2052
514	1253	1542	1028	2056
515	7372	1545	1030	2060
516	\N	1548	1032	2064
517	25	1551	1034	2068
518	\N	1554	1036	2072
519	\N	1557	1038	2076
520	086/0951	1560	1040	2080
521	5942	1563	1042	2084
522	\N	1566	1044	2088
523	\N	1569	1046	2092
524	\N	1572	1048	2096
525	5800	1575	1050	2100
526	2142	1578	1052	2104
527	\N	1581	1054	2108
528	5854	1584	1056	2112
529	1444	1587	1058	2116
530	34017	1590	1060	2120
531	1415	1593	1062	2124
532	HP42/1	1596	1064	2128
533	1484	1599	1066	2132
534	\N	1602	1068	2136
535	5494	1605	1070	2140
536	22	1608	1072	2144
537	1	1611	1074	2148
538	\N	1614	1076	2152
539	1986	1617	1078	2156
540	2188	1620	1080	2160
541	1369	1623	1082	2164
542	1973	1626	1084	2168
543	1925	1629	1086	2172
544	10	1632	1088	2176
545	\N	1635	1090	2180
546	2	1638	1092	2184
547	2175	1641	1094	2188
548	32013	1644	1096	2192
549	5523	1647	1098	2196
550	\N	1650	1100	2200
551	1930	1653	1102	2204
552	1501	1656	1104	2208
553	3204	1659	1106	2212
554	5751	1662	1108	2216
555	2034	1665	1110	2220
556	1985	1668	1112	2224
557	\N	1671	1114	2228
558	\N	1674	1116	2232
559	\N	1677	1118	2236
560	2083	1680	1120	2240
561	12	1683	1122	2244
562	\N	1686	1124	2248
563	4206	1689	1126	2252
564	7172	1692	1128	2256
565	2124	1695	1130	2260
566	2207	1698	1132	2264
567	\N	1701	1134	2268
568	3295	1704	1136	2272
569	\N	1707	1138	2276
570	1982	1710	1140	2280
571	1081	1713	1142	2284
572	S-850	1716	1144	2288
573	\N	1719	1146	2292
574	9	1722	1148	2296
575	2309	1725	1150	2300
576	S-842	1728	1152	2304
577	\N	1731	1154	2308
578	1965	1734	1156	2312
579	2133	1737	1158	2316
580	1567	1740	1160	2320
581	\N	1743	1162	2324
582	1978	1746	1164	2328
583	2129	1749	1166	2332
584	1976	1752	1168	2336
585	\N	1755	1170	2340
586	\N	1758	1172	2344
587	403	1761	1174	2348
588	\N	1764	1176	2352
589	\N	1767	1178	2356
590	\N	1770	1180	2360
591	\N	1773	1182	2364
592	1	1776	1184	2368
593	\N	1779	1186	2372
594	2081	1782	1188	2376
595	4401	1785	1190	2380
596	7208	1788	1192	2384
597	1555	1791	1194	2388
598	\N	1794	1196	2392
599	1900	1797	1198	2396
600	5610	1800	1200	2400
601	S-873	1803	1202	2404
602	\N	1806	1204	2408
603	\N	1809	1206	2412
604	557	1812	1208	2416
605	4124	1815	1210	2420
606	\N	1818	1212	2424
607	\N	1821	1214	2428
608	1990	1824	1216	2432
609	\N	1827	1218	2436
610	\N	1830	1220	2440
611	6149	1833	1222	2444
612	S-844	1836	1224	2448
613	1590	1839	1226	2452
614	9374	1842	1228	2456
615	\N	1845	1230	2460
616	\N	1848	1232	2464
617	\N	1851	1234	2468
618	\N	1854	1236	2472
619	\N	1857	1238	2476
620	1552	1860	1240	2480
621	\N	1863	1242	2484
622	4212	1866	1244	2488
623	\N	1869	1246	2492
624	5459	1872	1248	2496
625	\N	1875	1250	2500
626	11656	1878	1252	2504
627	4923	1881	1254	2508
628	1588	1884	1256	2512
629	\N	1887	1258	2516
630	2132	1890	1260	2520
631	7371	1893	1262	2524
632	\N	1896	1264	2528
633	\N	1899	1266	2532
634	\N	1902	1268	2536
635	\N	1905	1270	2540
636	\N	1908	1272	2544
637	13893	1911	1274	2548
638	\N	1914	1276	2552
639	640610	1917	1278	2556
640	2166	1920	1280	2560
641	\N	1923	1282	2564
642	6561	1926	1284	2568
643	\N	1929	1286	2572
644	\N	1932	1288	2576
645	640996	1935	1290	2580
646	2095	1938	1292	2584
647	\N	1941	1294	2588
648	\N	1944	1296	2592
649	\N	1947	1298	2596
650	19498	1950	1300	2600
651	19368	1953	1302	2604
652	112969	1956	1304	2608
653	\N	1959	1306	2612
654	\N	1962	1308	2616
655	1008	1965	1310	2620
656	7489	1968	1312	2624
657	12905	1971	1314	2628
658	\N	1974	1316	2632
659	9514	1977	1318	2636
660	4201	1980	1320	2640
661	\N	1983	1322	2644
662	\N	1986	1324	2648
663	10276	1989	1326	2652
664	2114	1992	1328	2656
665	641039	1995	1330	2660
666	\N	1998	1332	2664
667	20204	2001	1334	2668
668	2113	2004	1336	2672
669	20	2007	1338	2676
670	\N	2010	1340	2680
671	\N	2013	1342	2684
672	641382	2016	1344	2688
673	S-877	2019	1346	2692
674	640608	2022	1348	2696
675	640601	2025	1350	2700
676	\N	2028	1352	2704
677	2251	2031	1354	2708
678	\N	2034	1356	2712
679	19512	2037	1358	2716
680	\N	2040	1360	2720
681	\N	2043	1362	2724
682	2994	2046	1364	2728
683	\N	2049	1366	2732
684	1965	2052	1368	2736
685	\N	2055	1370	2740
686	550	2058	1372	2744
687	\N	2061	1374	2748
688	558	2064	1376	2752
689	2215	2067	1378	2756
690	\N	2070	1380	2760
691	\N	2073	1382	2764
692	\N	2076	1384	2768
693	\N	2079	1386	2772
694	4728	2082	1388	2776
695	13390	2085	1390	2780
696	\N	2088	1392	2784
697	2149	2091	1394	2788
698	27064	2094	1396	2792
699	2138	2097	1398	2796
700	20477	2100	1400	2800
701	\N	2103	1402	2804
702	2262	2106	1404	2808
703	\N	2109	1406	2812
704	\N	2112	1408	2816
705	4513	2115	1410	2820
706	\N	2118	1412	2824
707	\N	2121	1414	2828
708	2221	2124	1416	2832
709	27269	2127	1418	2836
710	33235	2130	1420	2840
711	\N	2133	1422	2844
712	27049	2136	1424	2848
713	32738	2139	1426	2852
714	\N	2142	1428	2856
715	2310	2145	1430	2860
716	\N	2148	1432	2864
717	\N	2151	1434	2868
718	\N	2154	1436	2872
719	\N	2157	1438	2876
720	2235	2160	1440	2880
721	\N	2163	1442	2884
722	1723	2166	1444	2888
723	4306	2169	1446	2892
724	2075	2172	1448	2896
725	4137	2175	1450	2900
726	25365	2178	1452	2904
727	34277	2181	1454	2908
728	14554/25999	2184	1456	2912
729	30638	2187	1458	2916
730	2265	2190	1460	2920
731	\N	2193	1462	2924
732	\N	2196	1464	2928
733	\N	2199	1466	2932
734	22414	2202	1468	2936
735	16127/32875	2205	1470	2940
736	\N	2208	1472	2944
737	14804/26249	2211	1474	2948
738	24	2214	1476	2952
739	299	2217	1478	2956
740	12909	2220	1480	2960
741	\N	2223	1482	2964
742	\N	2226	1484	2968
743	10225	2229	1486	2972
744	\N	2232	1488	2976
745	\N	2235	1490	2980
746	\N	2238	1492	2984
747	26640	2241	1494	2988
748	\N	2244	1496	2992
749	\N	2247	1498	2996
750	\N	2250	1500	3000
751	\N	2253	1502	3004
752	16090/32838	2256	1504	3008
753	2380	2259	1506	3012
754	1999	2262	1508	3016
755	4131	2265	1510	3020
756	\N	2268	1512	3024
757	33171	2271	1514	3028
758	3254	2274	1516	3032
759	\N	2277	1518	3036
760	16277/33025	2280	1520	3040
761	2147	2283	1522	3044
762	\N	2286	1524	3048
763	26	2289	1526	3052
764	2203	2292	1528	3056
765	\N	2295	1530	3060
766	6013	2298	1532	3064
767	\N	2301	1534	3068
768	\N	2304	1536	3072
769	\N	2307	1538	3076
770	1178	2310	1540	3080
771	\N	2313	1542	3084
772	\N	2316	1544	3088
773	\N	2319	1546	3092
774	12094	2322	1548	3096
775	\N	2325	1550	3100
776	19626	2328	1552	3104
777	6048	2331	1554	3108
778	27304	2334	1556	3112
779	25291	2337	1558	3116
780	22181	2340	1560	3120
781	14641/26086	2343	1562	3124
782	AAC020	2346	1564	3128
783	\N	2349	1566	3132
784	2040	2352	1568	3136
785	\N	2355	1570	3140
786	32982	2358	1572	3144
787	\N	2361	1574	3148
788	\N	2364	1576	3152
789	33219	2367	1578	3156
790	12348	2370	1580	3160
791	\N	2373	1582	3164
792	10103	2376	1584	3168
793	1186	2379	1586	3172
794	4542	2382	1588	3176
795	1272	2385	1590	3180
796	11714	2388	1592	3184
797	42975	2391	1594	3188
798	9214	2394	1596	3192
799	1300	2397	1598	3196
800	\N	2400	1600	3200
801	12544	2403	1602	3204
802	4549	2406	1604	3208
803	4829	2409	1606	3212
804	42986	2412	1608	3216
805	\N	2415	1610	3220
806	\N	2418	1612	3224
807	16091/32839	2421	1614	3228
808	4087	2424	1616	3232
809	27290	2427	1618	3236
810	\N	2430	1620	3240
811	\N	2433	1622	3244
812	10471	2436	1624	3248
813	AAC281	2439	1626	3252
814	12971	2442	1628	3256
815	15659/27104	2445	1630	3260
816	AAC311	2448	1632	3264
817	284	2451	1634	3268
818	4873	2454	1636	3272
819	11662	2457	1638	3276
820	\N	2460	1640	3280
821	20122	2463	1642	3284
822	\N	2466	1644	3288
823	20590	2469	1646	3292
824	113	2472	1648	3296
825	\N	2475	1650	3300
826	\N	2478	1652	3304
827	22427	2481	1654	3308
828	25436/13991	2484	1656	3312
829	9249	2487	1658	3316
830	1365	2490	1660	3320
831	42-68715	2493	1662	3324
832	\N	2496	1664	3328
833	4805	2499	1666	3332
834	9378	2502	1668	3336
835	2026	2505	1670	3340
836	4315	2508	1672	3344
837	34373	2511	1674	3348
838	\N	2514	1676	3352
839	3106	2517	1678	3356
840	12014	2520	1680	3360
841	3274	2523	1682	3364
842	\N	2526	1684	3368
843	\N	2529	1686	3372
844	19979 / 9503	2532	1688	3376
845	13508	2535	1690	3380
846	25479	2538	1692	3384
847	\N	2541	1694	3388
848	25251	2544	1696	3392
849	13873/25318	2547	1698	3396
850	18386	2550	1700	3400
851	2944	2553	1702	3404
852	41003	2556	1704	3408
853	10439	2559	1706	3412
854	\N	2562	1708	3416
855	15129/26574	2565	1710	3420
856	4792	2568	1712	3424
857	15131/26576	2571	1714	3428
858	20488	2574	1716	3432
859	2450	2577	1718	3436
860	\N	2580	1720	3440
861	\N	2583	1722	3444
862	1303	2586	1724	3448
863	9066	2589	1726	3452
864	\N	2592	1728	3456
865	18-2248	2595	1730	3460
866	2029	2598	1732	3464
867	13389	2601	1734	3468
868	10658	2604	1736	3472
869	18324	2607	1738	3476
870	18380	2610	1740	3480
871	AAC136	2613	1742	3484
872	\N	2616	1744	3488
873	3112	2619	1746	3492
874	2045	2622	1748	3496
875	91	2625	1750	3500
876	9887	2628	1752	3504
877	AAC323	2631	1754	3508
878	1219	2634	1756	3512
879	1366	2637	1758	3516
880	\N	2640	1760	3520
881	1280	2643	1762	3524
882	\N	2646	1764	3528
883	19639	2649	1766	3532
884	19559	2652	1768	3536
885	18423801	2655	1770	3540
886	2935	2658	1772	3544
887	SH-38C	2661	1774	3548
888	SH-48C	2664	1776	3552
889	10314/DC45	2667	1778	3556
890	\N	2670	1780	3560
891	12788	2673	1782	3564
892	42875/17	2676	1784	3568
893	10317	2679	1786	3572
894	42930/45	2682	1788	3576
895	\N	2685	1790	3580
896	\N	2688	1792	3584
897	43046/92	2691	1794	3588
898	AAC401	2694	1796	3592
899	12792	2697	1798	3596
900	2028	2700	1800	3600
901	18423509	2703	1802	3604
902	6065	2706	1804	3608
903	\N	2709	1806	3612
904	\N	2712	1808	3616
905	\N	2715	1810	3620
906	7453	2718	1812	3624
907	10677	2721	1814	3628
908	32698	2724	1816	3632
909	\N	2727	1818	3636
910	4175	2730	1820	3640
911	1408	2733	1822	3644
912	42972	2736	1824	3648
913	148	2739	1826	3652
914	12968	2742	1828	3656
915	275	2745	1830	3660
916	4735	2748	1832	3664
917	4092	2751	1834	3668
918	\N	2754	1836	3672
919	15901/32649	2757	1838	3676
920	16850/33598	2760	1840	3680
921	1349	2763	1842	3684
922	2533	2766	1844	3688
923	7330	2769	1846	3692
924	4312	2772	1848	3696
925	7	2775	1850	3700
926	\N	2778	1852	3704
927	12527	2781	1854	3708
928	\N	2784	1856	3712
929	AAC223	2787	1858	3716
930	43154	2790	1860	3720
931	4185	2793	1862	3724
932	18390	2796	1864	3728
933	35966/DO360	2799	1866	3732
934	11658	2802	1868	3736
935	6252	2805	1870	3740
936	166	2808	1872	3744
937	229	2811	1874	3748
938	2058	2814	1876	3752
939	\N	2817	1878	3756
940	42932	2820	1880	3760
941	4058	2823	1882	3764
942	6341	2826	1884	3768
943	2938	2829	1886	3772
944	14003/25448	2832	1888	3776
945	1303	2835	1890	3780
946	6675	2838	1892	3784
947	42871/12	2841	1894	3788
948	16992/34254	2844	1896	3792
949	4	2847	1898	3796
950	43119/111	2850	1900	3800
951	9158	2853	1902	3804
952	19113	2856	1904	3808
953	\N	2859	1906	3812
954	6246	2862	1908	3816
955	SH-02C	2865	1910	3820
956	22355	2868	1912	3824
957	6	2871	1914	3828
958	\N	2874	1916	3832
959	16383/33131	2877	1918	3836
960	19985	2880	1920	3840
961	10194	2883	1922	3844
962	9165	2886	1924	3848
963	12420	2889	1926	3852
964	9999	2892	1928	3856
965	SH-52C	2895	1930	3860
966	2083	2898	1932	3864
967	1128	2901	1934	3868
968	10406	2904	1936	3872
969	\N	2907	1938	3876
970	11800	2910	1940	3880
971	2003	2913	1942	3884
972	6538	2916	1944	3888
973	12775	2919	1946	3892
974	\N	2922	1948	3896
975	4396	2925	1950	3900
976	\N	2928	1952	3904
977	13807	2931	1954	3908
978	12894	2934	1956	3912
979	18348	2937	1958	3916
980	4256	2940	1960	3920
981	1496	2943	1962	3924
982	12587	2946	1964	3928
983	10181	2949	1966	3932
984	1301	2952	1968	3936
985	13777	2955	1970	3940
986	\N	2958	1972	3944
987	19584	2961	1974	3948
988	14145/25590	2964	1976	3952
989	1253	2967	1978	3956
990	\N	2970	1980	3960
991	20208	2973	1982	3964
992	2528 /	2976	1984	3968
993	3708	2979	1986	3972
994	7464	2982	1988	3976
995	\N	2985	1990	3980
996	199	2988	1992	3984
997	15374/26819	2991	1994	3988
998	13308	2994	1996	3992
999	20576	2997	1998	3996
1000	1965	3000	2000	4000
1001	2194	3003	2002	4004
1002	1316	3006	2004	4008
1003	2382	3009	2006	4012
1004	5	3012	2008	4016
1005	16743/33491	3015	2010	4020
1006	12162	3018	2012	4024
1007	\N	3021	2014	4028
1008	30506	3024	2016	4032
1009	2541	3027	2018	4036
1010	9350	3030	2020	4040
1011	2558	3033	2022	4044
1012	2936	3036	2024	4048
1013	22463	3039	2026	4052
1014	2260 /	3042	2028	4056
1015	33100	3045	2030	4060
1016	9971	3048	2032	4064
1017	12739	3051	2034	4068
1018	3076	3054	2036	4072
1019	12355	3057	2038	4076
1020	\N	3060	2040	4080
1021	14600/26045	3063	2042	4084
1022	4518	3066	2044	4088
1023	11725	3069	2046	4092
1024	7445	3072	2048	4096
1025	2939	3075	2050	4100
1026	2546	3078	2052	4104
1027	18365 /	3081	2054	4108
1028	4304	3084	2056	4112
1029	13462	3087	2058	4116
1030	10391	3090	2060	4120
1031	42895/58	3093	2062	4124
1032	4241	3096	2064	4128
1033	9201	3099	2066	4132
1034	22354	3102	2068	4136
1035	22347	3105	2070	4140
1036	4841	3108	2072	4144
1037	2556	3111	2074	4148
1038	11721	3114	2076	4152
1039	10241	3117	2078	4156
1040	3089	3120	2080	4160
1041	\N	3123	2082	4164
1042	\N	3126	2084	4168
1043	10046	3129	2086	4172
1044	\N	3132	2088	4176
1045	10574	3135	2090	4180
1046	13396	3138	2092	4184
1047	12725	3141	2094	4188
1048	9134	3144	2096	4192
1049	12782	3147	2098	4196
1050	1417	3150	2100	4200
1051	19423	3153	2102	4204
1052	3	3156	2104	4208
1053	12826	3159	2106	4212
1054	\N	3162	2108	4216
1055	\N	3165	2110	4220
1056	4314	3168	2112	4224
1057	\N	3171	2114	4228
1058	32973	3174	2116	4232
1059	22582	3177	2118	4236
1060	9156	3180	2120	4240
1061	22496	3183	2122	4244
1062	1546	3186	2124	4248
1063	42937	3189	2126	4252
1064	42990	3192	2128	4256
1065	10270	3195	2130	4260
1066	42910	3198	2132	4264
1067	35971	3201	2134	4268
1068	13824	3204	2136	4272
1069	20359	3207	2138	4276
1070	13769	3210	2140	4280
1071	\N	3213	2142	4284
1072	2962	3216	2144	4288
1073	12738	3219	2146	4292
1074	\N	3222	2148	4296
1075	16538/33286	3225	2150	4300
1076	2636	3228	2152	4304
1077	2011	3231	2154	4308
1078	9813	3234	2156	4312
1079	10624	3237	2158	4316
1080	13311	3240	2160	4320
1081	1321	3243	2162	4324
1082	10562	3246	2164	4328
1083	20245	3249	2166	4332
1084	9158	3252	2168	4336
1085	12186	3255	2170	4340
1086	155	3258	2172	4344
1087	2506	3261	2174	4348
1088	9161	3264	2176	4352
1089	10518	3267	2178	4356
1090	19005	3270	2180	4360
1091	19711	3273	2182	4364
1092	15992/32740	3276	2184	4368
1093	14037/25482	3279	2186	4372
1094	13572	3282	2188	4376
1095	16100/32848	3285	2190	4380
1096	3084	3288	2192	4384
1097	14604/2604	3291	2194	4388
1098	20543	3294	2196	4392
1099	4432	3297	2198	4396
1100	27322	3300	2200	4400
1101	12855	3303	2202	4404
1102	13027	3306	2204	4408
1103	4017	3309	2206	4412
1104	15782/32530	3312	2208	4416
1105	43102	3315	2210	4420
1106	9144	3318	2212	4424
1107	10	3321	2214	4428
1108	\N	3324	2216	4432
1109	12482	3327	2218	4436
1110	\N	3330	2220	4440
1111	42992	3333	2222	4444
1112	\N	3336	2224	4448
1113	7400	3339	2226	4452
1114	10396	3342	2228	4456
1115	9073	3345	2230	4460
1116	43173	3348	2232	4464
1117	3768	3351	2234	4468
1118	7341	3354	2236	4472
1119	12291	3357	2238	4476
1120	1957	3360	2240	4480
1121	20229	3363	2242	4484
1122	25559	3366	2244	4488
1123	\N	3369	2246	4492
1124	10368	3372	2248	4496
1125	1927	3375	2250	4500
1126	\N	3378	2252	4504
1127	134	3381	2254	4508
1128	17011/34274	3384	2256	4512
1129	\N	3387	2258	4516
1130	42979	3390	2260	4520
1131	10062	3393	2262	4524
1132	2046	3396	2264	4528
1133	316	3399	2266	4532
1134	43144/155	3402	2268	4536
1135	20662	3405	2270	4540
1136	14822/26267	3408	2272	4544
1137	10171	3411	2274	4548
1138	\N	3414	2276	4552
1139	5003	3417	2278	4556
1140	19634	3420	2280	4560
1141	10327	3423	2282	4564
1142	6327	3426	2284	4568
1143	26488	3429	2286	4572
1144	13083	3432	2288	4576
1145	42971	3435	2290	4580
1146	9154	3438	2292	4584
1147	43260/180	3441	2294	4588
1148	1559/27036	3444	2296	4592
1149	15970	3447	2298	4596
1150	15985/32733	3450	2300	4600
1151	13853/25298	3453	2302	4604
1152	33346	3456	2304	4608
1153	14007/25452	3459	2306	4612
1154	6891	3462	2308	4616
1155	16224	3465	2310	4620
1156	400	3468	2312	4624
1157	13014	3471	2314	4628
1158	\N	3474	2316	4632
1159	9160	3477	2318	4636
1160	7352	3480	2320	4640
1161	13265	3483	2322	4644
1162	10512	3486	2324	4648
1163	2077	3489	2326	4652
1164	4999	3492	2328	4656
1165	\N	3495	2330	4660
1166	22572	3498	2332	4664
1167	41	3501	2334	4668
1168	30466	3504	2336	4672
1169	22485	3507	2338	4676
1170	\N	3510	2340	4680
1171	13859/25304	3513	2342	4684
1172	106	3516	2344	4688
1173	16699/33447	3519	2346	4692
1174	27279	3522	2348	4696
1175	54	3525	2350	4700
1176	13450	3528	2352	4704
1177	\N	3531	2354	4708
1178	43055/37	3534	2356	4712
1179	18350	3537	2358	4716
1180	142	3540	2360	4720
1181	12	3543	2362	4724
1182	19160	3546	2364	4728
1183	3284	3549	2366	4732
1184	43	3552	2368	4736
1185	9754	3555	2370	4740
1186	\N	3558	2372	4744
1187	4695	3561	2374	4748
1188	43111/102	3564	2376	4752
1189	2005	3567	2378	4756
1190	\N	3570	2380	4760
1191	\N	3573	2382	4764
1192	13808	3576	2384	4768
1193	22464	3579	2386	4772
1194	9164	3582	2388	4776
1195	13628	3585	2390	4780
1196	10503	3588	2392	4784
1197	22466	3591	2394	4788
1198	33589	3594	2396	4792
1199	15939/12	3597	2398	4796
1200	13405	3600	2400	4800
1201	12148	3603	2402	4804
1202	42954	3606	2404	4808
1203	16894/34151	3609	2406	4812
1204	446	3612	2408	4816
1205	HP-81/15	3615	2410	4820
1206	9001	3618	2412	4824
1207	\N	3621	2414	4828
1208	\N	3624	2416	4832
1209	15939	3627	2418	4836
1210	20187	3630	2420	4840
1211	HP-81/7	3633	2422	4844
1212	\N	3636	2424	4848
1213	1322	3639	2426	4852
1214	\N	3642	2428	4856
1215	\N	3645	2430	4860
1216	\N	3648	2432	4864
1217	9945	3651	2434	4868
1218	\N	3654	2436	4872
1219	6177	3657	2438	4876
1220	32934	3660	2440	4880
1221	16733	3663	2442	4884
1222	10498	3666	2444	4888
1223	10518	3669	2446	4892
1224	\N	3672	2448	4896
1225	10528	3675	2450	4900
1226	\N	3678	2452	4904
1227	464096	3681	2454	4908
1228	\N	3684	2456	4912
1229	\N	3687	2458	4916
1230	10319	3690	2460	4920
1231	43238	3693	2462	4924
1232	33486	3696	2464	4928
1233	7391	3699	2466	4932
1234	9692	3702	2468	4936
1235	\N	3705	2470	4940
1236	262	3708	2472	4944
1237	402-0100	3711	2474	4948
1238	22395	3714	2476	4952
1239	\N	3717	2478	4956
1240	4308	3720	2480	4960
1241	1304	3723	2482	4964
1242	15283/26728	3726	2484	4968
1243	10290	3729	2486	4972
1244	\N	3732	2488	4976
1245	43057/73	3735	2490	4980
1246	6014	3738	2492	4984
1247	22400	3741	2494	4988
1248	82	3744	2496	4992
1249	19105	3747	2498	4996
1250	\N	3750	2500	5000
1251	36076	3753	2502	5004
1252	14004	3756	2504	5008
1253	168	3759	2506	5012
1254	2568	3762	2508	5016
1255	90	3765	2510	5020
1256	19149	3768	2512	5024
1257	20432	3771	2514	5028
1258	19498	3774	2516	5032
1259	43823	3777	2518	5036
1260	6008	3780	2520	5040
1261	\N	3783	2522	5044
1262	13716	3786	2524	5048
1263	21984	3789	2526	5052
1264	2224	3792	2528	5056
1265	125	3795	2530	5060
1266	2617	3798	2532	5064
1267	14633/26078	3801	2534	5068
1268	19100	3804	2536	5072
1269	2066	3807	2538	5076
1270	43471	3810	2540	5080
1271	42901/153	3813	2542	5084
1272	\N	3816	2544	5088
1273	\N	3819	2546	5092
1274	\N	3822	2548	5096
1275	2628	3825	2550	5100
1276	9143	3828	2552	5104
1277	\N	3831	2554	5108
1278	26403	3834	2556	5112
1279	2674	3837	2558	5116
1280	6333	3840	2560	5120
1281	13817/25262	3843	2562	5124
1282	13113	3846	2564	5128
1283	116	3849	2566	5132
1284	9694	3852	2568	5136
1285	22384	3855	2570	5140
1286	154	3858	2572	5144
1287	14146/25591	3861	2574	5148
1288	26403	3864	2576	5152
1289	2616	3867	2578	5156
1290	43125	3870	2580	5160
1291	2181	3873	2582	5164
1292	\N	3876	2584	5168
1293	12797	3879	2586	5172
1294	11810	3882	2588	5176
1295	128	3885	2590	5180
1296	\N	3888	2592	5184
1297	\N	3891	2594	5188
1298	19616	3894	2596	5192
1299	599	3897	2598	5196
1300	6003	3900	2600	5200
1301	19540	3903	2602	5204
1302	\N	3906	2604	5208
1303	42903/150	3909	2606	5212
1304	11854	3912	2608	5216
1305	4940	3915	2610	5220
1306	33423	3918	2612	5224
1307	\N	3921	2614	5228
1308	\N	3924	2616	5232
1309	20358	3927	2618	5236
1310	37	3930	2620	5240
1311	9958	3933	2622	5244
1312	2554	3936	2624	5248
1313	12360	3939	2626	5252
1314	10732	3942	2628	5256
1315	7358	3945	2630	5260
1316	19509	3948	2632	5264
1317	10341	3951	2634	5268
1318	6011	3954	2636	5272
1319	150	3957	2638	5276
1320	\N	3960	2640	5280
1321	2603	3963	2642	5284
1322	12387	3966	2644	5288
1323	13792	3969	2646	5292
1324	15948/32696	3972	2648	5296
1325	19830	3975	2650	5300
1326	11982	3978	2652	5304
1327	30400	3981	2654	5308
1328	4464	3984	2656	5312
1329	61	3987	2658	5316
1330	\N	3990	2660	5320
1331	10310	3993	2662	5324
1332	13977/25422	3996	2664	5328
1333	2664	3999	2666	5332
1334	\N	4002	2668	5336
1335	12809	4005	2670	5340
1336	4630	4008	2672	5344
1337	43556/257	4011	2674	5348
1338	9408	4014	2676	5352
1339	\N	4017	2678	5356
1340	4509	4020	2680	5360
1341	19278	4023	2682	5364
1342	212	4026	2684	5368
1343	20510	4029	2686	5372
1344	4108	4032	2688	5376
1345	\N	4035	2690	5380
1346	44	4038	2692	5384
1347	\N	4041	2694	5388
1348	11745	4044	2696	5392
1349	19211	4047	2698	5396
1350	12549	4050	2700	5400
1351	19292	4053	2702	5404
1352	44418/487	4056	2704	5408
1353	20197	4059	2706	5412
1354	15943	4062	2708	5416
1355	\N	4065	2710	5420
1356	\N	4068	2712	5424
1357	\N	4071	2714	5428
1358	14081 / 4255	4074	2716	5432
1359	180	4077	2718	5436
1360	\N	4080	2720	5440
1361	13037	4083	2722	5444
1362	12779	4086	2724	5448
1363	43063/60	4089	2726	5452
1364	14120	4092	2728	5456
1365	15109/26554	4095	2730	5460
1366	11699	4098	2732	5464
1367	3992	4101	2734	5468
1368	20224	4104	2736	5472
1369	66	4107	2738	5476
1370	43715	4110	2740	5480
1371	15932	4113	2742	5484
1372	30430	4116	2744	5488
1373	43001/32	4119	2746	5492
1374	2666	4122	2748	5496
1375	14010	4125	2750	5500
1376	16820/33568	4128	2752	5504
1377	4791	4131	2754	5508
1378	\N	4134	2756	5512
1379	10292	4137	2758	5516
1380	2032	4140	2760	5520
1381	\N	4143	2762	5524
1382	2088	4146	2764	5528
1383	71	4149	2766	5532
1384	1968	4152	2768	5536
1385	40	4155	2770	5540
1386	\N	4158	2772	5544
1387	\N	4161	2774	5548
1388	11692	4164	2776	5552
1389	13285	4167	2778	5556
1390	12579	4170	2780	5560
1391	6257	4173	2782	5564
1392	8	4176	2784	5568
1393	12831	4179	2786	5572
1394	158	4182	2788	5576
1395	10410	4185	2790	5580
1396	10277	4188	2792	5584
1397	18389	4191	2794	5588
1398	178	4194	2796	5592
1399	43538	4197	2798	5596
1400	3123	4200	2800	5600
1401	27294	4203	2802	5604
1402	43483	4206	2804	5608
1403	\N	4209	2806	5612
1404	15845/32593	4212	2808	5616
1405	30262	4215	2810	5620
1406	\N	4218	2812	5624
1407	2533	4221	2814	5628
1408	4651	4224	2816	5632
1409	15552/26997	4227	2818	5636
1410	9385	4230	2820	5640
1411	4509	4233	2822	5644
1412	\N	4236	2824	5648
1413	6079	4239	2826	5652
1414	\N	4242	2828	5656
1415	\N	4245	2830	5660
1416	43835/380	4248	2832	5664
1417	14918/2636	4251	2834	5668
1418	16813/33561	4254	2836	5672
1419	12989	4257	2838	5676
1420	16670/33418	4260	2840	5680
1421	10230	4263	2842	5684
1422	\N	4266	2844	5688
1423	14103	4269	2846	5692
1424	15954	4272	2848	5696
1425	520-7	4275	2850	5700
1426	\N	4278	2852	5704
1427	\N	4281	2854	5708
1428	13165	4284	2856	5712
1429	\N	4287	2858	5716
1430	6052	4290	2860	5720
1431	4561	4293	2862	5724
1432	151	4296	2864	5728
1433	44288 / 4016	4299	2866	5732
1434	55	4302	2868	5736
1435	\N	4305	2870	5740
1436	13328	4308	2872	5744
1437	14348/2579	4311	2874	5748
1438	43843/324	4314	2876	5752
1439	27069	4317	2878	5756
1440	4978 / 20995	4320	2880	5760
1441	FK-975	4323	2882	5764
1442	43691	4326	2884	5768
1443	15959	4329	2886	5772
1444	\N	4332	2888	5776
1445	\N	4335	2890	5780
1446	HP-81/11	4338	2892	5784
1447	14093	4341	2894	5788
1448	10324	4344	2896	5792
1449	19757	4347	2898	5796
1450	1971	4350	2900	5800
1451	93013517	4353	2902	5804
1452	45075	4356	2904	5808
1453	2560	4359	2906	5812
1454	\N	4362	2908	5816
1455	128	4365	2910	5820
1456	8	4368	2912	5824
1457	162	4371	2914	5828
1458	9101	4374	2916	5832
1459	54-0165	4377	2918	5836
1460	104	4380	2920	5840
1461	188	4383	2922	5844
1462	12312	4386	2924	5848
1463	6	4389	2926	5852
1464	45192 / 4447	4392	2928	5856
1465	44678/543	4395	2930	5860
1466	43475	4398	2932	5864
1467	27239	4401	2934	5868
1468	\N	4404	2936	5872
1469	4338	4407	2938	5876
1470	4	4410	2940	5880
1471	\N	4413	2942	5884
1472	4867	4416	2944	5888
1473	16246	4419	2946	5892
1474	30283	4422	2948	5896
1475	14411/25856	4425	2950	5900
1476	13048	4428	2952	5904
1477	\N	4431	2954	5908
1478	\N	4434	2956	5912
1479	4514	4437	2958	5916
1480	241	4440	2960	5920
1481	20318	4443	2962	5924
1482	12757	4446	2964	5928
1483	151	4449	2966	5932
1484	7449	4452	2968	5936
1485	13626	4455	2970	5940
1486	6341407	4458	2972	5944
1487	20737	4461	2974	5948
1488	19448	4464	2976	5952
1489	7408	4467	2978	5956
1490	12501	4470	2980	5960
1491	4504	4473	2982	5964
1492	22	4476	2984	5968
1493	18374	4479	2986	5972
1494	146000607	4482	2988	5976
1495	4851	4485	2990	5980
1496	17139/3440	4488	2992	5984
1497	4754	4491	2994	5988
1498	7337	4494	2996	5992
1499	456	4497	2998	5996
1500	14099	4500	3000	6000
1501	30249	4503	3002	6004
1502	150	4506	3004	6008
1503	19332	4509	3006	6012
1504	\N	4512	3008	6016
1505	12917	4515	3010	6020
1506	15960/40	4518	3012	6024
1507	14117	4521	3014	6028
1508	S-1299	4524	3016	6032
1509	12828	4527	3018	6036
1510	27227	4530	3020	6040
1511	13837/25282	4533	3022	6044
1512	\N	4536	3024	6048
1513	\N	4539	3026	6052
1514	\N	4542	3028	6056
1515	\N	4545	3030	6060
1516	10200	4548	3032	6064
1517	\N	4551	3034	6068
1518	18336	4554	3036	6072
1519	52	4557	3038	6076
1520	44622/	4560	3040	6080
1521	5217	4563	3042	6084
1522	\N	4566	3044	6088
1523	\N	4569	3046	6092
1524	12762	4572	3048	6096
1525	\N	4575	3050	6100
1526	196	4578	3052	6104
1527	2312	4581	3054	6108
1528	19988	4584	3056	6112
1529	45072/793	4587	3058	6116
1530	\N	4590	3060	6120
1531	J5109	4593	3062	6124
1532	135	4596	3064	6128
1533	19779	4599	3066	6132
1534	14113	4602	3068	6136
1535	45142 /243-31	4605	3070	6140
1536	45157/737	4608	3072	6144
1537	108	4611	3074	6148
1538	\N	4614	3076	6152
1539	20001	4617	3078	6156
1540	33304	4620	3080	6160
1541	15923	4623	3082	6164
1542	2665	4626	3084	6168
1543	4820	4629	3086	6172
1544	493	4632	3088	6176
1545	10051	4635	3090	6180
1546	17348	4638	3092	6184
1547	19317	4641	3094	6188
1548	102	4644	3096	6192
1549	7336	4647	3098	6196
1550	10544	4650	3100	6200
1551	4841	4653	3102	6204
1552	90	4656	3104	6208
1553	\N	4659	3106	6212
1554	3136	4662	3108	6216
1555	127	4665	3110	6220
1556	\N	4668	3112	6224
1557	30288	4671	3114	6228
1558	\N	4674	3116	6232
1559	4822	4677	3118	6236
1560	3134	4680	3120	6240
1561	1307	4683	3122	6244
1562	\N	4686	3124	6248
1563	4575	4689	3126	6252
1564	13839	4692	3128	6256
1565	\N	4695	3130	6260
1566	\N	4698	3132	6264
1567	63	4701	3134	6268
1568	91	4704	3136	6272
1569	4345	4707	3138	6276
1570	\N	4710	3140	6280
1571	59144	4713	3142	6284
1572	22480	4716	3144	6288
1573	28	4719	3146	6292
1574	\N	4722	3148	6296
1575	43827/337	4725	3150	6300
1576	103	4728	3152	6304
1577	10053	4731	3154	6308
1578	19667	4734	3156	6312
1579	2007	4737	3158	6316
1580	4602	4740	3160	6320
1581	22404	4743	3162	6324
1582	30514	4746	3164	6328
1583	33411	4749	3166	6332
1584	55	4752	3168	6336
1585	1255	4755	3170	6340
1586	1924	4758	3172	6344
1587	D- 1019	4761	3174	6348
1588	1015	4764	3176	6352
1589	429	4767	3178	6356
1590	26818	4770	3180	6360
1591	18367	4773	3182	6364
1592	82	4776	3184	6368
1593	12493	4779	3186	6372
1594	12776	4782	3188	6376
1595	2	4785	3190	6380
1596	20176	4788	3192	6384
1597	30242	4791	3194	6388
1598	22586	4794	3196	6392
1599	1256	4797	3198	6396
1600	19334	4800	3200	6400
1601	12210	4803	3202	6404
1602	1978	4806	3204	6408
1603	287	4809	3206	6412
1604	26829	4812	3208	6416
1605	19790	4815	3210	6420
1606	30482	4818	3212	6424
1607	\N	4821	3214	6428
1608	10418	4824	3216	6432
1609	1015	4827	3218	6436
1610	\N	4830	3220	6440
1611	9549	4833	3222	6444
1612	337	4836	3224	6448
1613	17641/36	4839	3226	6452
1614	16112/3286	4842	3228	6456
1615	6411	4845	3230	6460
1616	26809	4848	3232	6464
1617	\N	4851	3234	6468
1618	10504	4854	3236	6472
1619	106	4857	3238	6476
1620	45366/892	4860	3240	6480
1621	10486	4863	3242	6484
1622	1090	4866	3244	6488
1623	19656	4869	3246	6492
1624	9491	4872	3248	6496
1625	20447	4875	3250	6500
1626	10360	4878	3252	6504
1627	45355	4881	3254	6508
1628	9401402	4884	3256	6512
1629	4824	4887	3258	6516
1630	9159	4890	3260	6520
1631	26941	4893	3262	6524
1632	\N	4896	3264	6528
1633	\N	4899	3266	6532
1634	378	4902	3268	6536
1635	401	4905	3270	6540
1636	13535	4908	3272	6544
1637	19226	4911	3274	6548
1638	12821	4914	3276	6552
1639	43742/300	4917	3278	6556
1640	47	4920	3280	6560
1641	217	4923	3282	6564
1642	014/14	4926	3284	6568
1643	189001202	4929	3286	6572
1644	4556	4932	3288	6576
1645	14132	4935	3290	6580
1646	10510	4938	3292	6584
1647	13326 / 43685-307	4941	3294	6588
1648	45231/945	4944	3296	6592
1649	\N	4947	3298	6596
1650	\N	4950	3300	6600
1651	6006	4953	3302	6604
1652	1057	4956	3304	6608
1653	2927/384	4959	3306	6612
1654	26945	4962	3308	6616
1655	4823	4965	3310	6620
1656	\N	4968	3312	6624
1657	43971	4971	3314	6628
1658	32954	4974	3316	6632
1659	17	4977	3318	6636
1660	3099	4980	3320	6640
1661	15353/26798	4983	3322	6644
1662	43072	4986	3324	6648
1663	43031/127	4989	3326	6652
1664	22554	4992	3328	6656
1665	22-00-16	4995	3330	6660
1666	10112	4998	3332	6664
1667	2555	5001	3334	6668
1668	191	5004	3336	6672
1669	\N	5007	3338	6676
1670	4273	5010	3340	6680
1671	34379	5013	3342	6684
1672	45462/925	5016	3344	6688
1673	12926	5019	3346	6692
1674	\N	5022	3348	6696
1675	58420	5025	3350	6700
1676	78	5028	3352	6704
1677	9030	5031	3354	6708
1678	189001702	5034	3356	6712
1679	\N	5037	3358	6716
1680	210	5040	3360	6720
1681	4622	5043	3362	6724
1682	44914/646	5046	3364	6728
1683	\N	5049	3366	6732
1684	437	5052	3368	6736
1685	7388	5055	3370	6740
1686	427	5058	3372	6744
1687	1062	5061	3374	6748
1688	14090	5064	3376	6752
1689	22481	5067	3378	6756
1690	96601701	5070	3380	6760
1691	10320	5073	3382	6764
1692	22458	5076	3384	6768
1693	19792	5079	3386	6772
1694	0001A	5082	3388	6776
1695	\N	5085	3390	6780
1696	295	5088	3392	6784
1697	\N	5091	3394	6788
1698	9716	5094	3396	6792
1699	1027	5097	3398	6796
1700	43508	5100	3400	6800
1701	45290 /4021	5103	3402	6804
1702	212	5106	3404	6808
1703	20593	5109	3406	6812
1704	105807110	5112	3408	6816
1705	14066/25511	5115	3410	6820
1706	45432/105	5118	3412	6824
1707	4467	5121	3414	6828
1708	19672	5124	3416	6832
1709	43670	5127	3418	6836
1710	17629/8	5130	3420	6840
1711	13052	5133	3422	6844
1712	17624/92	5136	3424	6848
1713	19986	5139	3426	6852
1714	4473	5142	3428	6856
1715	180002102	5145	3430	6860
1716	\N	5148	3432	6864
1717	45615	5151	3434	6868
1718	2019	5154	3436	6872
1719	10530	5157	3438	6876
1720	193	5160	3440	6880
1721	\N	5163	3442	6884
1722	45307	5166	3444	6888
1723	181002904	5169	3446	6892
1724	43136	5172	3448	6896
1725	45243/919	5175	3450	6900
1726	20492	5178	3452	6904
1727	152	5181	3454	6908
1728	22465	5184	3456	6912
1729	\N	5187	3458	6916
1730	2035	5190	3460	6920
1731	13305	5193	3462	6924
1732	4960	5196	3464	6928
1733	12514	5199	3466	6932
1734	44058/365	5202	3468	6936
1735	68	5205	3470	6940
1736	43559	5208	3472	6944
1737	1142	5211	3474	6948
1738	10182	5214	3476	6952
1739	16171/32919	5217	3478	6956
1740	\N	5220	3480	6960
1741	13260	5223	3482	6964
1742	44872	5226	3484	6968
1743	1976	5229	3486	6972
1744	2615	5232	3488	6976
1745	6430	5235	3490	6980
1746	\N	5238	3492	6984
1747	46	5241	3494	6988
1748	18058/202	5244	3496	6992
1749	10951/ 11082	5247	3498	6996
1750	\N	5250	3500	7000
1751	6456	5253	3502	7004
1752	1020	5256	3504	7008
1753	33579	5259	3506	7012
1754	\N	5262	3508	7016
1755	7331	5265	3510	7020
1756	12	5268	3512	7024
1757	19653	5271	3514	7028
1758	17633/12	5274	3516	7032
1759	45160/754	5277	3518	7036
1760	16189/32937	5280	3520	7040
1761	83	5283	3522	7044
1762	44254/456	5286	3524	7048
1763	3047	5289	3526	7052
1764	4804	5292	3528	7056
1765	4817	5295	3530	7060
1766	\N	5298	3532	7064
1767	\N	5301	3534	7068
1768	\N	5304	3536	7072
1769	12075	5307	3538	7076
1770	443	5310	3540	7080
1771	12180	5313	3542	7084
1772	\N	5316	3544	7088
1773	25	5319	3546	7092
1774	\N	5322	3548	7096
1775	\N	5325	3550	7100
1776	3154	5328	3552	7104
1777	4310	5331	3554	7108
1778	17611/49	5334	3556	7112
1779	17920/159	5337	3558	7116
1780	21604	5340	3560	7120
1781	18247/274	5343	3562	7124
1782	\N	5346	3564	7128
1783	86601301	5349	3566	7132
1784	\N	5352	3568	7136
1785	45631/160	5355	3570	7140
1786	42918	5358	3572	7144
1787	20289	5361	3574	7148
1788	4647	5364	3576	7152
1789	6464	5367	3578	7156
1790	13394	5370	3580	7160
1791	402003	5373	3582	7164
1792	11769	5376	3584	7168
1793	6216	5379	3586	7172
1794	45273/121	5382	3588	7176
1795	4551	5385	3590	7180
1796	25839	5388	3592	7184
1797	86601103	5391	3594	7188
1798	\N	5394	3596	7192
1799	2463	5397	3598	7196
1800	90807103	5400	3600	7200
1801	18127	5403	3602	7204
1802	20230	5406	3604	7208
1803	12142	5409	3606	7212
1804	4827	5412	3608	7216
1805	218	5415	3610	7220
1806	10191	5418	3612	7224
1807	25086	5421	3614	7228
1808	125	5424	3616	7232
1809	21703	5427	3618	7236
1810	16074/3282	5430	3620	7240
1811	444	5433	3622	7244
1812	128	5436	3624	7248
1813	10773	5439	3626	7252
1814	180002002	5442	3628	7256
1815	107	5445	3630	7260
1816	17906/129	5448	3632	7264
1817	45084/711	5451	3634	7268
1818	4697	5454	3636	7272
1819	2047	5457	3638	7276
1820	4810	5460	3640	7280
1821	395	5463	3642	7284
1822	\N	5466	3644	7288
1823	103	5469	3646	7292
1824	18339	5472	3648	7296
1825	2001	5475	3650	7300
1826	\N	5478	3652	7304
1827	\N	5481	3654	7308
1828	6	5484	3656	7312
1829	6	5487	3658	7316
1830	22380	5490	3660	7320
1831	356	5493	3662	7324
1832	\N	5496	3664	7328
1833	244	5499	3666	7332
1834	4851	5502	3668	7336
1835	402104	5505	3670	7340
1836	18354/224	5508	3672	7344
1837	454448/944	5511	3674	7348
1838	16115/32863	5514	3676	7352
1839	24-2144	5517	3678	7356
1840	1218	5520	3680	7360
1841	43547/204	5523	3682	7364
1842	6461	5526	3684	7368
1843	\N	5529	3686	7372
1844	195	5532	3688	7376
1845	16477/33225	5535	3690	7380
1846	149	5538	3692	7384
1847	45479/996	5541	3694	7388
1848	159	5544	3696	7392
1849	\N	5547	3698	7396
1850	45209/861	5550	3700	7400
1851	20265	5553	3702	7404
1852	9877	5556	3704	7408
1853	14803072	5559	3706	7412
1854	19461	5562	3708	7416
1855	\N	5565	3710	7420
1856	246	5568	3712	7424
1857	15444/26889	5571	3714	7428
1858	14140	5574	3716	7432
1859	15204/26889	5577	3718	7436
1860	21605	5580	3720	7440
1861	12813	5583	3722	7444
1862	22510	5586	3724	7448
1863	6441	5589	3726	7452
1864	1528	5592	3728	7456
1865	39	5595	3730	7460
1866	22391	5598	3732	7464
1867	14026	5601	3734	7468
1868	2350701	5604	3736	7472
1869	18226/18229	5607	3738	7476
1870	147	5610	3740	7480
1871	216	5613	3742	7484
1872	192	5616	3744	7488
1873	45167	5619	3746	7492
1874	13915	5622	3748	7496
1875	3	5625	3750	7500
1876	\N	5628	3752	7504
1877	6341301	5631	3754	7508
1878	4	5634	3756	7512
1879	9799	5637	3758	7516
1880	45654/179	5640	3760	7520
1881	26571	5643	3762	7524
1882	17588/3	5646	3764	7528
1883	10424	5649	3766	7532
1884	213	5652	3768	7536
1885	45536	5655	3770	7540
1886	14713/26158	5658	3772	7544
1887	\N	5661	3774	7548
1888	12319	5664	3776	7552
1889	A-811	5667	3778	7556
1890	19024	5670	3780	7560
1891	\N	5673	3782	7564
1892	\N	5676	3784	7568
1893	\N	5679	3786	7572
1894	14944/2638	5682	3788	7576
1895	\N	5685	3790	7580
1896	\N	5688	3792	7584
1897	45428/61	5691	3794	7588
1898	53	5694	3796	7592
1899	13423	5697	3798	7596
1900	2025	5700	3800	7600
1901	12374	5703	3802	7604
1902	4970	5706	3804	7608
1903	18379	5709	3806	7612
1904	9642	5712	3808	7616
1905	\N	5715	3810	7620
1906	328	5718	3812	7624
1907	10315	5721	3814	7628
1908	15530/26975	5724	3816	7632
1909	023/21	5727	3818	7636
1910	\N	5730	3820	7640
1911	36	5733	3822	7644
1912	\N	5736	3824	7648
1913	\N	5739	3826	7652
1914	\N	5742	3828	7656
1915	68	5745	3830	7660
1916	4649	5748	3832	7664
1917	\N	5751	3834	7668
1918	12899	5754	3836	7672
1919	\N	5757	3838	7676
1920	\N	5760	3840	7680
1921	20072	5763	3842	7684
1922	\N	5766	3844	7688
1923	92	5769	3846	7692
1924	17685/123	5772	3848	7696
1925	103	5775	3850	7700
1926	\N	5778	3852	7704
1927	44860/616	5781	3854	7708
1928	\N	5784	3856	7712
1929	\N	5787	3858	7716
1930	\N	5790	3860	7720
1931	13371	5793	3862	7724
1932	180002402	5796	3864	7728
1933	66	5799	3866	7732
1934	\N	5802	3868	7736
1935	19680	5805	3870	7740
1936	44062/384	5808	3872	7744
1937	2562	5811	3874	7748
1938	146000926	5814	3876	7752
1939	\N	5817	3878	7756
1940	\N	5820	3880	7760
1941	\N	5823	3882	7764
1942	29	5826	3884	7768
1943	185-5075	5829	3886	7772
1944	\N	5832	3888	7776
1945	18384	5835	3890	7780
1946	\N	5838	3892	7784
1947	7375	5841	3894	7788
1948	\N	5844	3896	7792
1949	20396	5847	3898	7796
1950	14541/25986	5850	3900	7800
1951	4812	5853	3902	7804
1952	\N	5856	3904	7808
1953	30328	5859	3906	7812
1954	\N	5862	3908	7816
1955	\N	5865	3910	7820
1956	17513	5868	3912	7824
1957	\N	5871	3914	7828
1958	43967	5874	3916	7832
1959	26810	5877	3918	7836
1960	45513/1004	5880	3920	7840
1961	45455/981	5883	3922	7844
1962	127	5886	3924	7848
1963	4436	5889	3926	7852
1964	\N	5892	3928	7856
1965	3808	5895	3930	7860
1966	4892	5898	3932	7864
1967	2350803	5901	3934	7868
1968	160	5904	3936	7872
1969	4753	5907	3938	7876
1970	18	5910	3940	7880
1971	12089	5913	3942	7884
1972	388	5916	3944	7888
1973	\N	5919	3946	7892
1974	170	5922	3948	7896
1975	15762/27207	5925	3950	7900
1976	\N	5928	3952	7904
1977	45369/984	5931	3954	7908
1978	4550	5934	3956	7912
1979	18379	5937	3958	7916
1980	\N	5940	3960	7920
1981	18148	5943	3962	7924
1982	18336	5946	3964	7928
1983	17609/25	5949	3966	7932
1984	10279	5952	3968	7936
1985	\N	5955	3970	7940
1986	\N	5958	3972	7944
1987	43844/334	5961	3974	7948
1988	4409	5964	3976	7952
1989	\N	5967	3978	7956
1990	\N	5970	3980	7960
1991	\N	5973	3982	7964
1992	10826	5976	3984	7968
1993	30571	5979	3986	7972
1994	18328/146	5982	3988	7976
1995	249	5985	3990	7980
1996	3693	5988	3992	7984
1997	\N	5991	3994	7988
1998	1926	5994	3996	7992
1999	12000	5997	3998	7996
2000	17009/34272	6000	4000	8000
2001	20301	6003	4002	8004
2002	17586/1	6006	4004	8008
2003	\N	6009	4006	8012
2004	6182	6012	4008	8016
2005	19431	6015	4010	8020
2006	1996	6018	4012	8024
2007	13403	6021	4014	8028
2008	708	6024	4016	8032
2009	20876	6027	4018	8036
2010	\N	6030	4020	8040
2011	4402	6033	4022	8044
2012	18901/153	6036	4024	8048
2013	5351801	6039	4026	8052
2014	18322/130	6042	4028	8056
2015	\N	6045	4030	8060
2016	23-063	6048	4032	8064
2017	4848	6051	4034	8068
2018	18387/286  / 4526	6054	4036	8072
2019	33215	6057	4038	8076
2020	13474	6060	4040	8080
2021	20260	6063	4042	8084
2022	\N	6066	4044	8088
2023	18	6069	4046	8092
2024	\N	6072	4048	8096
2025	13463 / 19719	6075	4050	8100
2026	18325	6078	4052	8104
2027	\N	6081	4054	8108
2028	18055/200	6084	4056	8112
2029	20151	6087	4058	8116
2030	\N	6090	4060	8120
2031	464	6093	4062	8124
2032	18822/126	6096	4064	8128
2033	10271	6099	4066	8132
2034	\N	6102	4068	8136
2035	130	6105	4070	8140
2036	43829/351	6108	4072	8144
2037	45761/237	6111	4074	8148
2038	\N	6114	4076	8152
2039	17706/113	6117	4078	8156
2040	\N	6120	4080	8160
2041	B-32	6123	4082	8164
2042	45504/1009	6126	4084	8168
2043	57302009	6129	4086	8172
2044	22473	6132	4088	8176
2045	\N	6135	4090	8180
2046	185-5141	6138	4092	8184
2047	20156	6141	4094	8188
2048	1136	6144	4096	8192
2049	2521	6147	4098	8196
2050	\N	6150	4100	8200
2051	\N	6153	4102	8204
2052	17515/124	6156	4104	8208
2053	\N	6159	4106	8212
2054	2941	6162	4108	8216
2055	1962	6165	4110	8220
2056	\N	6168	4112	8224
2057	20573	6171	4114	8228
2058	45751/231	6174	4116	8232
2059	\N	6177	4118	8236
2060	33457	6180	4120	8240
2061	70	6183	4122	8244
2062	18428005	6186	4124	8248
2063	45652/176	6189	4126	8252
2064	\N	6192	4128	8256
2065	\N	6195	4130	8260
2066	\N	6198	4132	8264
2067	22534	6201	4134	8268
2068	1114	6204	4136	8272
2069	12903	6207	4138	8276
2070	134	6210	4140	8280
2071	19410	6213	4142	8284
2072	416	6216	4144	8288
2073	42929	6219	4146	8292
2074	45794/52	6222	4148	8296
2075	209	6225	4150	8300
2076	2041	6228	4152	8304
2077	27307905	6231	4154	8308
2078	\N	6234	4156	8312
2079	\N	6237	4158	8316
2080	\N	6240	4160	8320
2081	4413	6243	4162	8324
2082	2023	6246	4164	8328
2083	18995/221	6249	4166	8332
2084	14170	6252	4168	8336
2085	4284	6255	4170	8340
2086	184007101/356	6258	4172	8344
2087	\N	6261	4174	8348
2088	CV429	6264	4176	8352
2089	1270805	6267	4178	8356
2090	1002	6270	4180	8360
2091	31	6273	4182	8364
2092	19630	6276	4184	8368
2093	\N	6279	4186	8372
2094	22417	6282	4188	8376
2095	\N	6285	4190	8380
2096	\N	6288	4192	8384
2097	10359	6291	4194	8388
2098	33559	6294	4196	8392
2099	190	6297	4198	8396
2100	\N	6300	4200	8400
2101	\N	6303	4202	8404
2102	401504	6306	4204	8408
2103	355	6309	4206	8412
2104	\N	6312	4208	8416
2105	2021	6315	4210	8420
2106	42894/56	6318	4212	8424
2107	10147	6321	4214	8428
2108	45253/5	6324	4216	8432
2109	23	6327	4218	8436
2110	4	6330	4220	8440
2111	45777/80 / 	6333	4222	8444
2112	33262	6336	4224	8448
2113	73	6339	4226	8452
2114	30	6342	4228	8456
2115	317	6345	4230	8460
2116	\N	6348	4232	8464
2117	\N	6351	4234	8468
2118	45409/19	6354	4236	8472
2119	\N	6357	4238	8476
2120	\N	6360	4240	8480
2121	\N	6363	4242	8484
2122	\N	6366	4244	8488
2123	3065	6369	4246	8492
2124	4118	6372	4248	8496
2125	13232	6375	4250	8500
2126	4364	6378	4252	8504
2127	4631	6381	4254	8508
2128	10306	6384	4256	8512
2129	185-5078	6387	4258	8516
2130	\N	6390	4260	8520
2131	\N	6393	4262	8524
2132	4470	6396	4264	8528
2133	30200	6399	4266	8532
2134	45653/178	6402	4268	8536
2135	10279	6405	4270	8540
2136	153	6408	4272	8544
2137	3534	6411	4274	8548
2138	15235/26680	6414	4276	8552
2139	13076	6417	4278	8556
2140	3260	6420	4280	8560
2141	\N	6423	4282	8564
2142	4040	6426	4284	8568
2143	3591	6429	4286	8572
2144	176	6432	4288	8576
2145	4849	6435	4290	8580
2146	98	6438	4292	8584
2147	\N	6441	4294	8588
2148	\N	6444	4296	8592
2149	025/24	6447	4298	8596
2150	10285	6450	4300	8600
2151	42991	6453	4302	8604
2152	18295/4 / 	6456	4304	8608
2153	\N	6459	4306	8612
2154	\N	6462	4308	8616
2155	\N	6465	4310	8620
2156	\N	6468	4312	8624
2157	20070	6471	4314	8628
2158	187009705	6474	4316	8632
2159	\N	6477	4318	8636
2160	3692	6480	4320	8640
2161	\N	6483	4322	8644
2162	6449	6486	4324	8648
2163	\N	6489	4326	8652
2164	\N	6492	4328	8656
2165	\N	6495	4330	8660
2166	202/204	6498	4332	8664
2167	22-00-37	6501	4334	8668
2168	17669/43	6504	4336	8672
2169	184007002	6507	4338	8676
2170	22-00-27	6510	4340	8680
2171	\N	6513	4342	8684
2172	\N	6516	4344	8688
2173	\N	6519	4346	8692
2174	\N	6522	4348	8696
2175	10284	6525	4350	8700
2176	BA-623	6528	4352	8704
2177	\N	6531	4354	8708
2178	\N	6534	4356	8712
2179	\N	6537	4358	8716
2180	19202	6540	4360	8720
2181	9189	6543	4362	8724
2182	67302909	6546	4364	8728
2183	\N	6549	4366	8732
2184	\N	6552	4368	8736
2185	\N	6555	4370	8740
2186	\N	6558	4372	8744
2187	10427	6561	4374	8748
2188	\N	6564	4376	8752
2189	185-5114	6567	4378	8756
2190	17771/241	6570	4380	8760
2191	14040	6573	4382	8764
2192	185-5237	6576	4384	8768
2193	17698/44	6579	4386	8772
2194	24003	6582	4388	8776
2195	19175/339	6585	4390	8780
2196	\N	6588	4392	8784
2197	26696	6591	4394	8788
2198	187010601	6594	4396	8792
2199	19724	6597	4398	8796
2200	20039	6600	4400	8800
2201	19	6603	4402	8804
2202	43748/314	6606	4404	8808
2203	\N	6609	4406	8812
2204	\N	6612	4408	8816
2205	178	6615	4410	8820
2206	45772/30	6618	4412	8824
2207	\N	6621	4414	8828
2208	185-5241	6624	4416	8832
2209	18373	6627	4418	8836
2210	6330	6630	4420	8840
2211	\N	6633	4422	8844
2212	7339	6636	4424	8848
2213	\N	6639	4426	8852
2214	\N	6642	4428	8856
2215	19705	6645	4430	8860
2216	183006804	6648	4432	8864
2217	\N	6651	4434	8868
2218	\N	6654	4436	8872
2219	1099	6657	4438	8876
2220	6788	6660	4440	8880
2221	3600	6663	4442	8884
2222	\N	6666	4444	8888
2223	\N	6669	4446	8892
2224	30/10/2003	6672	4448	8896
2225	\N	6675	4450	8900
2226	18790/394	6678	4452	8904
2227	503	6681	4454	8908
2228	\N	6684	4456	8912
2229	\N	6687	4458	8916
2230	20082	6690	4460	8920
2231	5211	6693	4462	8924
2232	\N	6696	4464	8928
2233	219	6699	4466	8932
2234	19211/518	6702	4468	8936
2235	33481	6705	4470	8940
2236	33445	6708	4472	8944
2237	43588	6711	4474	8948
2238	\N	6714	4476	8952
2239	45630	6717	4478	8956
2240	176 / 	6720	4480	8960
2241	394	6723	4482	8964
2242	557	6726	4484	8968
2243	10356	6729	4486	8972
2244	\N	6732	4488	8976
2245	67302806	6735	4490	8980
2246	1580	6738	4492	8984
2247	\N	6741	4494	8988
2248	199	6744	4496	8992
2249	187009101	6747	4498	8996
2250	\N	6750	4500	9000
2251	244	6753	4502	9004
2252	17249/16	6756	4504	9008
2253	10445	6759	4506	9012
2254	\N	6762	4508	9016
2255	213	6765	4510	9020
2256	\N	6768	4512	9024
2257	\N	6771	4514	9028
2258	14	6774	4516	9032
2259	\N	6777	4518	9036
2260	805120	6780	4520	9040
2261	4100	6783	4522	9044
2262	13764	6786	4524	9048
2263	\N	6789	4526	9052
2264	517	6792	4528	9056
2265	\N	6795	4530	9060
2266	45954	6798	4532	9064
2267	148	6801	4534	9068
2268	22265	6804	4536	9072
2269	\N	6807	4538	9076
2270	49	6810	4540	9080
2271	\N	6813	4542	9084
2272	\N	6816	4544	9088
2273	19696/688	6819	4546	9092
2274	410	6822	4548	9096
2275	4229	6825	4550	9100
2276	\N	6828	4552	9104
2277	\N	6831	4554	9108
2278	369	6834	4556	9112
2279	4035	6837	4558	9116
2280	3	6840	4560	9120
2281	45	6843	4562	9124
2282	20554	6846	4564	9128
2283	12541	6849	4566	9132
2284	\N	6852	4568	9136
2285	19690/540	6855	4570	9140
2286	386	6858	4572	9144
2287	\N	6861	4574	9148
2288	45822	6864	4576	9152
2289	20415	6867	4578	9156
2290	19891/631	6870	4580	9160
2291	4151	6873	4582	9164
2292	\N	6876	4584	9168
2293	4151	6879	4586	9172
2294	6320	6882	4588	9176
2295	157	6885	4590	9180
2296	14125	6888	4592	9184
2297	47243/448	6891	4594	9188
2298	\N	6894	4596	9192
2299	188011301	6897	4598	9196
2300	1946	6900	4600	9200
2301	22445	6903	4602	9204
2302	67302406	6906	4604	9208
2303	\N	6909	4606	9212
2304	271	6912	4608	9216
2305	4318	6915	4610	9220
2306	\N	6918	4612	9224
2307	\N	6921	4614	9228
2308	10214	6924	4616	9232
2309	9407	6927	4618	9236
2310	4489	6930	4620	9240
2311	4280	6933	4622	9244
2312	13783/25228	6936	4624	9248
2313	\N	6939	4626	9252
2314	22456	6942	4628	9256
2315	9629	6945	4630	9260
2316	10363	6948	4632	9264
2317	19256/355	6951	4634	9268
2318	\N	6954	4636	9272
2319	18477	6957	4638	9276
2320	U-106	6960	4640	9280
2321	\N	6963	4642	9284
2322	U16	6966	4644	9288
2323	42956	6969	4646	9292
2324	\N	6972	4648	9296
2325	175	6975	4650	9300
2326	\N	6978	4652	9304
2327	826	6981	4654	9308
2328	18712/373	6984	4656	9312
2329	073/73	6987	4658	9316
2330	\N	6990	4660	9320
2331	4828	6993	4662	9324
2332	\N	6996	4664	9328
2333	596	6999	4666	9332
2334	15777/27222	7002	4668	9336
2335	\N	7005	4670	9340
2336	18459/335	7008	4672	9344
2337	402807	7011	4674	9348
2338	55299	7014	4676	9352
2339	\N	7017	4678	9356
2340	4491	7020	4680	9360
2341	\N	7023	4682	9364
2342	47211/357 / 	7026	4684	9368
2343	92	7029	4686	9372
2344	15618/27063	7032	4688	9376
2345	440	7035	4690	9380
2346	10860	7038	4692	9384
2347	19255/331	7041	4694	9388
2348	43273	7044	4696	9392
2349	\N	7047	4698	9396
2350	\N	7050	4700	9400
2351	\N	7053	4702	9404
2352	15383/26828	7056	4704	9408
2353	\N	7059	4706	9412
2354	402406	7062	4708	9416
2355	531	7065	4710	9420
2356	804	7068	4712	9424
2357	45540/1016	7071	4714	9428
2358	\N	7074	4716	9432
2359	\N	7077	4718	9436
2360	44694	7080	4720	9440
2361	13529	7083	4722	9444
2362	\N	7086	4724	9448
2363	30/10/1932	7089	4726	9452
2364	\N	7092	4728	9456
2365	16964	7095	4730	9460
2366	10591	7098	4732	9464
2367	\N	7101	4734	9468
2368	71	7104	4736	9472
2369	1965	7107	4738	9476
2370	59900202	7110	4740	9480
2371	\N	7113	4742	9484
2372	5351706	7116	4744	9488
2373	1539	7119	4746	9492
2374	77303310	7122	4748	9496
2375	182004303	7125	4750	9500
2376	41	7128	4752	9504
2377	4544	7131	4754	9508
2378	47500/546	7134	4756	9512
2379	\N	7137	4758	9516
2380	9780	7140	4760	9520
2381	301015	7143	4762	9524
2382	205	7146	4764	9528
2383	556	7149	4766	9532
2384	5508	7152	4768	9536
2385	\N	7155	4770	9540
2386	\N	7158	4772	9544
2387	032/33	7161	4774	9548
2388	79901204	7164	4776	9552
2389	\N	7167	4778	9556
2390	3012	7170	4780	9560
2391	1643	7173	4782	9564
2392	10948	7176	4784	9568
2393	6	7179	4786	9572
2394	47407/457	7182	4788	9576
2395	5221	7185	4790	9580
2396	379	7188	4792	9584
2397	10311	7191	4794	9588
2398	23-046	7194	4796	9592
2399	\N	7197	4798	9596
2400	254	7200	4800	9600
2401	14009	7203	4802	9604
2402	14116	7206	4804	9608
2403	96601803	7209	4806	9612
2404	10246	7212	4808	9616
2405	10411	7215	4810	9620
2406	6156	7218	4812	9624
2407	6415	7221	4814	9628
2408	46114/526	7224	4816	9632
2409	9340207	7227	4818	9636
2410	\N	7230	4820	9640
2411	46005/412	7233	4822	9644
2412	\N	7236	4824	9648
2413	185-5129	7239	4826	9652
2414	10163	7242	4828	9656
2415	1106	7245	4830	9660
2416	2110	7248	4832	9664
2417	\N	7251	4834	9668
2418	10336	7254	4836	9672
2419	111	7257	4838	9676
2420	1350502	7260	4840	9680
2421	9910503	7263	4842	9684
2422	45951/414	7266	4844	9688
2423	87	7269	4846	9692
2424	\N	7272	4848	9696
2425	10356	7275	4850	9700
2426	3251	7278	4852	9704
2427	7345003	7281	4854	9708
2428	14151	7284	4856	9712
2429	4025	7287	4858	9716
2430	\N	7290	4860	9720
2431	16660/33408	7293	4862	9724
2432	4221	7296	4864	9728
2433	\N	7299	4866	9732
2434	33060	7302	4868	9736
2435	47245/510	7305	4870	9740
2436	\N	7308	4872	9744
2437	46060/472	7311	4874	9748
2438	20236	7314	4876	9752
2439	\N	7317	4878	9756
2440	36	7320	4880	9760
2441	12103	7323	4882	9764
2442	130	7326	4884	9768
2443	9340205	7329	4886	9772
2444	20240	7332	4888	9776
2445	10330	7335	4890	9780
2446	2	7338	4892	9784
2447	181003603	7341	4894	9788
2448	6439	7344	4896	9792
2449	19345 / 	7347	4898	9796
2450	186009002	7350	4900	9800
2451	44	7353	4902	9804
2452	\N	7356	4904	9808
2453	5343610	7359	4906	9812
2454	LA-093	7362	4908	9816
2455	10428	7365	4910	9820
2456	94	7368	4912	9824
2457	347403	7371	4914	9828
2458	\N	7374	4916	9832
2459	26683	7377	4918	9836
2460	20363	7380	4920	9840
2461	19439	7383	4922	9844
2462	8400701	7386	4924	9848
2463	13136	7389	4926	9852
2464	\N	7392	4928	9856
2465	\N	7395	4930	9860
2466	\N	7398	4932	9864
2467	4285	7401	4934	9868
2468	121	7404	4936	9872
2469	\N	7407	4938	9876
2470	1351205	7410	4940	9880
2471	25177/25181/25182	7413	4942	9884
2472	491-161	7416	4944	9888
2473	181992903	7419	4946	9892
2474	10238	7422	4948	9896
2475	47441/503 / 	7425	4950	9900
2476	384	7428	4952	9904
2477	18238	7431	4954	9908
2478	43043/83	7434	4956	9912
2479	4642	7437	4958	9916
2480	2134	7440	4960	9920
2481	\N	7443	4962	9924
2482	20505	7446	4964	9928
2483	\N	7449	4966	9932
2484	820202	7452	4968	9936
2485	20436/788	7455	4970	9940
2486	19639/2	7458	4972	9944
2487	\N	7461	4974	9948
2488	\N	7464	4976	9952
2489	\N	7467	4978	9956
2490	\N	7470	4980	9960
2491	31-422	7473	4982	9964
2492	512	7476	4984	9968
2493	19304/287	7479	4986	9972
2494	207	7482	4988	9976
2495	\N	7485	4990	9980
2496	9334	7488	4992	9984
2497	9350801	7491	4994	9988
2498	4977	7494	4996	9992
2499	706	7497	4998	9996
2500	21603	7500	5000	10000
2501	\N	7503	5002	10004
2502	\N	7506	5004	10008
2503	19348	7509	5006	10012
2504	BA-211	7512	5008	10016
2505	\N	7515	5010	10020
2506	U-44	7518	5012	10024
2507	4243	7521	5014	10028
2508	448	7524	5016	10032
2509	67302306	7527	5018	10036
2510	122	7530	5020	10040
2511	\N	7533	5022	10044
2512	57301801	7536	5024	10048
2513	47166/265 / 	7539	5026	10052
2514	\N	7542	5028	10056
2515	185008104	7545	5030	10060
2516	1086	7548	5032	10064
2517	1598	7551	5034	10068
2518	163	7554	5036	10072
2519	\N	7557	5038	10076
2520	47213/358	7560	5040	10080
2521	442	7563	5042	10084
2522	\N	7566	5044	10088
2523	47482/592	7569	5046	10092
2524	43126/132	7572	5048	10096
2525	51	7575	5050	10100
2526	\N	7578	5052	10104
2527	75	7581	5054	10108
2528	43126	7584	5056	10112
2529	\N	7587	5058	10116
2530	3775	7590	5060	10120
2531	\N	7593	5062	10124
2532	\N	7596	5064	10128
2533	541	7599	5066	10132
2534	17793/263	7602	5068	10136
2535	267	7605	5070	10140
2536	47503/587	7608	5072	10144
2537	3071	7611	5074	10148
2538	22577	7614	5076	10152
2539	2059	7617	5078	10156
2540	10251	7620	5080	10160
2541	\N	7623	5082	10164
2542	881	7626	5084	10168
2543	17102/34369	7629	5086	10172
2544	\N	7632	5088	10176
2545	3992	7635	5090	10180
2546	9040314	7638	5092	10184
2547	45625/150	7641	5094	10188
2548	26613	7644	5096	10192
2549	\N	7647	5098	10196
2550	\N	7650	5100	10200
2551	10439	7653	5102	10204
2552	31	7656	5104	10208
2553	\N	7659	5106	10212
2554	2037	7662	5108	10216
2555	45700	7665	5110	10220
2556	\N	7668	5112	10224
2557	\N	7671	5114	10228
2558	185-5152	7674	5116	10232
2559	30460	7677	5118	10236
2560	33369	7680	5120	10240
2561	\N	7683	5122	10244
2562	45860/213	7686	5124	10248
2563	22-7-1-53	7689	5126	10252
2564	\N	7692	5128	10256
2565	3070	7695	5130	10260
2566	\N	7698	5132	10264
2567	2109	7701	5134	10268
2568	14085	7704	5136	10272
2569	\N	7707	5138	10276
2570	083 / 013	7710	5140	10280
2571	1029	7713	5142	10284
2572	\N	7716	5144	10288
2573	\N	7719	5146	10292
2574	45617/136	7722	5148	10296
2575	\N	7725	5150	10300
2576	56	7728	5152	10304
2577	\N	7731	5154	10308
2578	11716 / 11723	7734	5156	10312
2579	3817	7737	5158	10316
2580	10175	7740	5160	10320
2581	702	7743	5162	10324
2582	26979	7746	5164	10328
2583	4705	7749	5166	10332
2584	\N	7752	5168	10336
2585	182004505	7755	5170	10340
2586	SH-1840	7758	5172	10344
2587	26903	7761	5174	10348
2588	4325	7764	5176	10352
2589	9950	7767	5178	10356
2590	\N	7770	5180	10360
2591	10588	7773	5182	10364
2592	14196/25641	7776	5184	10368
2593	13729	7779	5186	10372
2594	183006405	7782	5188	10376
2595	\N	7785	5190	10380
2596	70301	7788	5192	10384
2597	572	7791	5194	10388
2598	35912	7794	5196	10392
2599	2155	7797	5198	10396
2600	221	7800	5200	10400
2601	50	7803	5202	10404
2602	10301	7806	5204	10408
2603	\N	7809	5206	10412
2604	146001046	7812	5208	10416
2605	\N	7815	5210	10420
2606	46057/474	7818	5212	10424
2607	\N	7821	5214	10428
2608	30/10/2025	7824	5216	10432
2609	19845/809	7827	5218	10436
2610	4059	7830	5220	10440
2611	15281/26726	7833	5222	10444
2612	10314	7836	5224	10448
2613	\N	7839	5226	10452
2614	19069/75	7842	5228	10456
2615	23-094	7845	5230	10460
2616	22-00-29 / 47159/231	7848	5232	10464
2617	3098	7851	5234	10468
2618	258	7854	5236	10472
2619	11011	7857	5238	10476
2620	1011	7860	5240	10480
2621	45130/823	7863	5242	10484
2622	18826/389	7866	5244	10488
2623	158	7869	5246	10492
2624	77303609	7872	5248	10496
2625	20494/850	7875	5250	10500
2626	\N	7878	5252	10504
2627	45476/977	7881	5254	10508
2628	188011101	7884	5256	10512
2629	\N	7887	5258	10516
2630	23	7890	5260	10520
2631	\N	7893	5262	10524
2632	19242	7896	5264	10528
2633	20244/650	7899	5266	10532
2634	\N	7902	5268	10536
2635	189001804	7905	5270	10540
2636	9120118	7908	5272	10544
2637	97305702	7911	5274	10548
2638	\N	7914	5276	10552
2639	70	7917	5278	10556
2640	182005602	7920	5280	10560
2641	228	7923	5282	10564
2642	47077/148 /30-10-22	7926	5284	10568
2643	20185	7929	5286	10572
2644	541	7932	5288	10576
2645	185-5189	7935	5290	10580
2646	22174	7938	5292	10584
2647	745	7941	5294	10588
2648	5547 / 1	7944	5296	10592
2649	 / 185-5547	7947	5298	10596
2650	111	7950	5300	10600
2651	\N	7953	5302	10604
2652	\N	7956	5304	10608
2653	\N	7959	5306	10612
2654	820303	7962	5308	10616
2655	10078	7965	5310	10620
2656	10081	7968	5312	10624
2657	20486/279	7971	5314	10628
2658	126/127	7974	5316	10632
2659	44593	7977	5318	10636
2660	19106/502	7980	5320	10640
2661	47100/153	7983	5322	10644
2662	1351306	7986	5324	10648
2663	19106/683	7989	5326	10652
2664	18959	7992	5328	10656
2665	513	7995	5330	10660
2666	\N	7998	5332	10664
2667	47075/166	8001	5334	10668
2668	\N	8004	5336	10672
2669	21504	8007	5338	10676
2670	225/224	8010	5340	10680
2671	211	8013	5342	10684
2672	87304305	8016	5344	10688
2673	4105	8019	5346	10692
2674	1115	8022	5348	10696
2675	6008	8025	5350	10700
2676	18916/455	8028	5352	10704
2677	\N	8031	5354	10708
2678	46146	8034	5356	10712
2679	\N	8037	5358	10716
2680	151/149	8040	5360	10720
2681	BA-176	8043	5362	10724
2682	\N	8046	5364	10728
2683	\N	8049	5366	10732
2684	56	8052	5368	10736
2685	20182	8055	5370	10740
2686	21904	8058	5372	10744
2687	9346502	8061	5374	10748
2688	259	8064	5376	10752
2689	2068	8067	5378	10756
2690	210	8070	5380	10760
2691	\N	8073	5382	10764
2692	150	8076	5384	10768
2693	46700/14	8079	5386	10772
2694	19368/640	8082	5388	10776
2695	14910/26355	8085	5390	10780
2696	21901	8088	5392	10784
2697	NA741/25213	8091	5394	10788
2698	43718/371	8094	5396	10792
2699	3351406	8097	5398	10796
2700	18838	8100	5400	10800
2701	\N	8103	5402	10804
2702	444	8106	5404	10808
2703	\N	8109	5406	10812
2704	069/84	8112	5408	10816
2705	350202	8115	5410	10820
2706	1498	8118	5412	10824
2707	11015	8121	5414	10828
2708	22490	8124	5416	10832
2709	U-125	8127	5418	10836
2710	77303405	8130	5420	10840
2711	1704	8133	5422	10844
2712	\N	8136	5424	10848
2713	1905	8139	5426	10852
2714	77303610	8142	5428	10856
2715	\N	8145	5430	10860
2716	11057	8148	5432	10864
2717	\N	8151	5434	10868
2718	\N	8154	5436	10872
2719	19376/661	8157	5438	10876
2720	19638/3	8160	5440	10880
2721	\N	8163	5442	10884
2722	\N	8166	5444	10888
2723	\N	8169	5446	10892
2724	30195	8172	5448	10896
2725	4393	8175	5450	10900
2726	46704/29	8178	5452	10904
2727	\N	8181	5454	10908
2728	\N	8184	5456	10912
2729	138	8187	5458	10916
2730	266	8190	5460	10920
2731	27242	8193	5462	10924
2732	\N	8196	5464	10928
2733	19268/544	8199	5466	10932
2734	186009005	8202	5468	10936
2735	184007703	8205	5470	10940
2736	U-41	8208	5472	10944
2737	\N	8211	5474	10948
2738	44069/396	8214	5476	10952
2739	4225	8217	5478	10956
2740	9221122	8220	5480	10960
2741	13078	8223	5482	10964
2742	380	8226	5484	10968
2743	1999	8229	5486	10972
2744	\N	8232	5488	10976
2745	10507	8235	5490	10980
2746	20304	8238	5492	10984
2747	11850	8241	5494	10988
2748	\N	8244	5496	10992
2749	181003304	8247	5498	10996
2750	4527	8250	5500	11000
2751	\N	8253	5502	11004
2752	95	8256	5504	11008
2753	300-6126	8259	5506	11012
2754	4422	8262	5508	11016
2755	10422	8265	5510	11020
2756	20063/789	8268	5512	11024
2757	47400/443	8271	5514	11028
2758	19819	8274	5516	11032
2759	\N	8277	5518	11036
2760	\N	8280	5520	11040
2761	\N	8283	5522	11044
2762	175	8286	5524	11048
2763	\N	8289	5526	11052
2764	73A-048	8292	5528	11056
2765	4106	8295	5530	11060
2766	\N	8298	5532	11064
2767	15551/26996	8301	5534	11068
2768	\N	8304	5536	11072
2769	\N	8307	5538	11076
2770	\N	8310	5540	11080
2771	\N	8313	5542	11084
2772	4234	8316	5544	11088
2773	\N	8319	5546	11092
2774	1141	8322	5548	11096
2775	154	8325	5550	11100
2776	\N	8328	5552	11104
2777	25452/14007	8331	5554	11108
2778	9465	8334	5556	11112
2779	19747/29	8337	5558	11116
2780	500-0108	8340	5560	11120
2781	20296	8343	5562	11124
2782	20306/791	8346	5564	11128
2783	45818/242	8349	5566	11132
2784	1125	8352	5568	11136
2785	\N	8355	5570	11140
2786	9131119	8358	5572	11144
2787	47056/89	8361	5574	11148
2788	\N	8364	5576	11152
2789	27307606	8367	5578	11156
2790	351002	8370	5580	11160
2791	20074	8373	5582	11164
2792	\N	8376	5584	11168
2793	140	8379	5586	11172
2794	\N	8382	5588	11176
2795	83	8385	5590	11180
2796	\N	8388	5592	11184
2797	184007104	8391	5594	11188
2798	\N	8394	5596	11192
2799	11058	8397	5598	11196
2800	2189	8400	5600	11200
2801	\N	8403	5602	11204
2802	43080	8406	5604	11208
2803	1590	8409	5606	11212
2804	D-85	8412	5608	11216
2805	43520/222	8415	5610	11220
2806	\N	8418	5612	11224
2807	110021	8421	5614	11228
2808	\N	8424	5616	11232
2809	10701	8427	5618	11236
2810	10404	8430	5620	11240
2811	85	8433	5622	11244
2812	6054	8436	5624	11248
2813	21	8439	5626	11252
2814	\N	8442	5628	11256
2815	\N	8445	5630	11260
2816	\N	8448	5632	11264
2817	12807	8451	5634	11268
2818	27-2081	8454	5636	11272
2819	\N	8457	5638	11276
2820	190	8460	5640	11280
2821	1625	8463	5642	11284
2822	20443/837	8466	5644	11288
2823	\N	8469	5646	11292
2824	10403	8472	5648	11296
2825	U- 61	8475	5650	11300
2826	19730	8478	5652	11304
2827	1087	8481	5654	11308
2828	\N	8484	5656	11312
2829	\N	8487	5658	11316
2830	9442037	8490	5660	11320
2831	3161	8493	5662	11324
2832	439	8496	5664	11328
2833	18767/376	8499	5666	11332
2834	\N	8502	5668	11336
2835	19798/608	8505	5670	11340
2836	9330230	8508	5672	11344
2837	31502	8511	5674	11348
2838	\N	8514	5676	11352
2839	\N	8517	5678	11356
2840	21	8520	5680	11360
2841	9350702	8523	5682	11364
2842	4292	8526	5684	11368
2843	11039	8529	5686	11372
2844	53	8532	5688	11376
2845	142	8535	5690	11380
2846	19525/439	8538	5692	11384
2847	14067	8541	5694	11388
2848	\N	8544	5696	11392
2849	328	8547	5698	11396
2850	47457/620	8550	5700	11400
2851	\N	8553	5702	11404
2852	\N	8556	5704	11408
2853	6142	8559	5706	11412
2854	97305708	8562	5708	11416
2855	9431736	8565	5710	11420
2856	67302707	8568	5712	11424
2857	\N	8571	5714	11428
2858	27-3960	8574	5716	11432
2859	\N	8577	5718	11436
2860	440	8580	5720	11440
2861	\N	8583	5722	11444
2862	18020/165	8586	5724	11448
2863	3351001	8589	5726	11452
2864	125	8592	5728	11456
2865	\N	8595	5730	11460
2866	439	8598	5732	11464
2867	10280	8601	5734	11468
2868	\N	8604	5736	11472
2869	4682	8607	5738	11476
2870	1683	8610	5740	11480
2871	\N	8613	5742	11484
2872	110011	8616	5744	11488
2873	184007505	8619	5746	11492
2874	\N	8622	5748	11496
2875	43519/221	8625	5750	11500
2876	18143/482	8628	5752	11504
2877	\N	8631	5754	11508
2878	36326	8634	5756	11512
2879	66600201	8637	5758	11516
2880	B131	8640	5760	11520
2881	14803061	8643	5762	11524
2882	24	8646	5764	11528
2883	186009201	8649	5766	11532
2884	20700089	8652	5768	11536
2885	\N	8655	5770	11540
2886	67302501	8658	5772	11544
2887	\N	8661	5774	11548
2888	18821	8664	5776	11552
2889	\N	8667	5778	11556
2890	\N	8670	5780	11560
2891	1540	8673	5782	11564
2892	\N	8676	5784	11568
2893	30090	8679	5786	11572
2894	\N	8682	5788	11576
2895	19837/499	8685	5790	11580
2896	428	8688	5792	11584
2897	450	8691	5794	11588
2898	2156	8694	5796	11592
2899	19677/73	8697	5798	11596
2900	57310108	8700	5800	11600
2901	\N	8703	5802	11604
2902	213	8706	5804	11608
2903	102	8709	5806	11612
2904	1007	8712	5808	11616
2905	14	8715	5810	11620
2906	\N	8718	5812	11624
2907	19	8721	5814	11628
2908	\N	8724	5816	11632
2909	\N	8727	5818	11636
2910	\N	8730	5820	11640
2911	189001605	8733	5822	11644
2912	\N	8736	5824	11648
2913	19715/642	8739	5826	11652
2914	27344	8742	5828	11656
2915	377	8745	5830	11660
2916	\N	8748	5832	11664
2917	\N	8751	5834	11668
2918	6259	8754	5836	11672
2919	6257	8757	5838	11676
2920	83	8760	5840	11680
2921	4408	8763	5842	11684
2922	\N	8766	5844	11688
2923	37308504 / 9030713	8769	5846	11692
2924	47649741 / 2320	8772	5848	11696
2925	20982/1087	8775	5850	11700
2926	67	8778	5852	11704
2927	\N	8781	5854	11708
2928	18203/518	8784	5856	11712
2929	45467/970	8787	5858	11716
2930	45611/48	8790	5860	11720
2931	\N	8793	5862	11724
2932	231	8796	5864	11728
2933	17671/48	8799	5866	11732
2934	\N	8802	5868	11736
2935	4593	8805	5870	11740
2936	110004	8808	5872	11744
2937	10142	8811	5874	11748
2938	\N	8814	5876	11752
2939	\N	8817	5878	11756
2940	4361	8820	5880	11760
2941	21204	8823	5882	11764
2942	\N	8826	5884	11768
2943	262	8829	5886	11772
2944	47309604	8832	5888	11776
2945	20763	8835	5890	11780
2946	27-82	8838	5892	11784
2947	7462	8841	5894	11788
2948	24B-192	8844	5896	11792
2949	86601203	8847	5898	11796
2950	46148/553	8850	5900	11800
2951	463	8853	5902	11804
2952	372	8856	5904	11808
2953	13253	8859	5906	11812
2954	10147	8862	5908	11816
2955	190013167	8865	5910	11820
2956	183006703	8868	5912	11824
2957	13154	8871	5914	11828
2958	13475	8874	5916	11832
2959	4491	8877	5918	11836
2960	46050/430	8880	5920	11840
2961	1076	8883	5922	11844
2962	\N	8886	5924	11848
2963	19643/11 / 20400/157	8889	5926	11852
2964	486	8892	5928	11856
2965	9010310	8895	5930	11860
2966	47393/608	8898	5932	11864
2967	4958	8901	5934	11868
2968	\N	8904	5936	11872
2969	143	8907	5938	11876
2970	\N	8910	5940	11880
2971	6344307	8913	5942	11884
2972	18579/332	8916	5944	11888
2973	61427	8919	5946	11892
2974	51903	8922	5948	11896
2975	\N	8925	5950	11900
2976	110057	8928	5952	11904
2977	110083	8931	5954	11908
2978	4280	8934	5956	11912
2979	27307505	8937	5958	11916
2980	\N	8940	5960	11920
2981	6069	8943	5962	11924
2982	264	8946	5964	11928
2983	45534	8949	5966	11932
2984	6096	8952	5968	11936
2985	\N	8955	5970	11940
2986	\N	8958	5972	11944
2987	230	8961	5974	11948
2988	\N	8964	5976	11952
2989	\N	8967	5978	11956
2990	\N	8970	5980	11960
2991	\N	8973	5982	11964
2992	SH-1850	8976	5984	11968
2993	21	8979	5986	11972
2994	1441	8982	5988	11976
2995	185	8985	5990	11980
2996	196	8988	5992	11984
2997	540	8991	5994	11988
2998	45359/868	8994	5996	11992
2999	\N	8997	5998	11996
3000	8350605	9000	6000	12000
3001	\N	9003	6002	12004
3002	46152/550	9006	6004	12008
3003	\N	9009	6006	12012
3004	\N	9012	6008	12016
3005	3	9015	6010	12020
3006	\N	9018	6012	12024
3007	\N	9021	6014	12028
3008	388	9024	6016	12032
3009	20972/1096	9027	6018	12036
3010	19736/696	9030	6020	12040
3011	546	9033	6022	12044
3012	155	9036	6024	12048
3013	\N	9039	6026	12052
3014	\N	9042	6028	12056
3015	54	9045	6030	12060
3016	20585/306	9048	6032	12064
3017	\N	9051	6034	12068
3018	27307602	9054	6036	12072
3019	185-5225	9057	6038	12076
3020	4837	9060	6040	12080
3021	\N	9063	6042	12084
3022	200	9066	6044	12088
3023	45880/275	9069	6046	12092
3024	184	9072	6048	12096
3025	278	9075	6050	12100
3026	\N	9078	6052	12104
3027	\N	9081	6054	12108
3028	183	9084	6056	12112
3029	19959/124	9087	6058	12116
3030	\N	9090	6060	12120
3031	61P0245041	9093	6062	12124
3032	42958	9096	6064	12128
3033	110128	9099	6066	12132
3034	19301	9102	6068	12136
3035	U037	9105	6070	12140
3036	20142/253	9108	6072	12144
3037	\N	9111	6074	12148
3038	\N	9114	6076	12152
3039	\N	9117	6078	12156
3040	46904	9120	6080	12160
3041	\N	9123	6082	12164
3042	11993	9126	6084	12168
3043	1744	9129	6086	12172
3044	\N	9132	6088	12176
3045	\N	9135	6090	12180
3046	8350501	9138	6092	12184
3047	\N	9141	6094	12188
3048	10235	9144	6096	12192
3049	\N	9147	6098	12196
3050	\N	9150	6100	12200
3051	\N	9153	6102	12204
3052	19363/623	9156	6104	12208
3053	\N	9159	6106	12212
3054	402B0930	9162	6108	12216
3055	43565/243	9165	6110	12220
3056	\N	9168	6112	12224
3057	19464	9171	6114	12228
3058	\N	9174	6116	12232
3059	76A-169	9177	6118	12236
3060	\N	9180	6120	12240
3061	47197	9183	6122	12244
3062	\N	9186	6124	12248
3063	1032	9189	6126	12252
3064	22557	9192	6128	12256
3065	1195	9195	6130	12260
3066	\N	9198	6132	12264
3067	541	9201	6134	12268
3068	\N	9204	6136	12272
3069	\N	9207	6138	12276
3070	215	9210	6140	12280
3071	187009803	9213	6142	12284
3072	297	9216	6144	12288
3073	\N	9219	6146	12292
3074	18	9222	6148	12296
3075	\N	9225	6150	12300
3076	10328	9228	6152	12304
3077	\N	9231	6154	12308
3078	\N	9234	6156	12312
3079	19688/589 / 	9237	6158	12316
3080	A415	9240	6160	12320
3081	12050	9243	6162	12324
3082	10572	9246	6164	12328
3083	9431335	9249	6166	12332
3084	\N	9252	6168	12336
3085	613	9255	6170	12340
3086	97305504	9258	6172	12344
3087	\N	9261	6174	12348
3088	\N	9264	6176	12352
3089	\N	9267	6178	12356
3090	\N	9270	6180	12360
3091	46020/415	9273	6182	12364
3092	\N	9276	6184	12368
3093	469	9279	6186	12372
3094	\N	9282	6188	12376
3095	19053	9285	6190	12380
3096	\N	9288	6192	12384
3097	61P-0501-206	9291	6194	12388
3098	387	9294	6196	12392
3099	\N	9297	6198	12396
3100	20485/277	9300	6200	12400
3101	21059538	9303	6202	12404
3102	\N	9306	6204	12408
3103	47227/334	9309	6206	12412
3104	442	9312	6208	12416
3105	45972/357	9315	6210	12420
3106	\N	9318	6212	12424
3107	67302207	9321	6214	12428
3108	760513	9324	6216	12432
3109	61-0008	9327	6218	12436
3110	19	9330	6220	12440
3111	10570	9333	6222	12444
3112	1G159-02	9336	6224	12448
3113	100-010	9339	6226	12452
3114	48	9342	6228	12456
3115	101	9345	6230	12460
3116	10456	9348	6232	12464
3117	16681/33429	9351	6234	12468
3118	45108/770	9354	6236	12472
3119	\N	9357	6238	12476
3120	\N	9360	6240	12480
3121	\N	9363	6242	12484
3122	11094	9366	6244	12488
3123	41	9369	6246	12492
3124	20886/1061	9372	6248	12496
3125	2172	9375	6250	12500
3126	921001	9378	6252	12504
3127	9410233	9381	6254	12508
3128	48530	9384	6256	12512
3129	U20604755	9387	6258	12516
3130	186009402	9390	6260	12520
3131	47	9393	6262	12524
3132	32R-7885024	9396	6264	12528
3133	1166	9399	6266	12532
3134	61426	9402	6268	12536
3135	329	9405	6270	12540
3136	3809	9408	6272	12544
3137	46510/22	9411	6274	12548
3138	\N	9414	6276	12552
3139	253	9417	6278	12556
3140	88	9420	6280	12560
3141	229	9423	6282	12564
3142	572	9426	6284	12568
3143	U- 54	9429	6286	12572
3144	245	9432	6288	12576
3145	11055	9435	6290	12580
3146	402B1034	9438	6292	12584
3147	195	9441	6294	12588
3148	17062	9444	6296	12592
3149	19107/507	9447	6298	12596
3150	14125	9450	6300	12600
3151	1542	9453	6302	12604
3152	110	9456	6304	12608
3153	760509	9459	6306	12612
3154	515	9462	6308	12616
3155	\N	9465	6310	12620
3156	\N	9468	6312	12624
3157	35-029	9471	6314	12628
3158	2351516 / 05040	9474	6316	12632
3159	1702	9477	6318	12636
3160	9346407	9480	6320	12640
3161	3351003	9483	6322	12644
3162	415	9486	6324	12648
3163	77303602	9489	6326	12652
3164	21	9492	6328	12656
3165	18887/431	9495	6330	12660
3166	44287	9498	6332	12664
3167	47667/776	9501	6334	12668
3168	238	9504	6336	12672
3169	17872/342	9507	6338	12676
3170	122	9510	6340	12680
3171	20700326	9513	6342	12684
3172	\N	9516	6344	12688
3173	45919/312	9519	6346	12692
3174	\N	9522	6348	12696
3175	\N	9525	6350	12700
3176	\N	9528	6352	12704
3177	519	9531	6354	12708
3178	46929/107	9534	6356	12712
3179	630	9537	6358	12716
3180	\N	9540	6360	12720
3181	310R0005	9543	6362	12724
3182	\N	9546	6364	12728
3183	9431136	9549	6366	12732
3184	2016	9552	6368	12736
3185	\N	9555	6370	12740
3186	20275/844	9558	6372	12744
3187	46910/182	9561	6374	12748
3188	\N	9564	6376	12752
3189	294	9567	6378	12756
3190	2810	9570	6380	12760
3191	14114	9573	6382	12764
3192	10853	9576	6384	12768
3193	55	9579	6386	12772
3194	11071	9582	6388	12776
3195	39	9585	6390	12780
3196	474	9588	6392	12784
3197	\N	9591	6394	12788
3198	19817/537	9594	6396	12792
3199	45/3N	9597	6398	12796
3200	545	9600	6400	12800
3201	9840959	9603	6402	12804
3202	BB-0245	9606	6404	12808
3203	\N	9609	6406	12812
3204	\N	9612	6408	12816
3205	20262/830	9615	6410	12820
3206	11004	9618	6412	12824
3207	4659	9621	6414	12828
3208	28-7305503	9624	6416	12832
3209	760008	9627	6418	12836
3210	\N	9630	6420	12840
3211	695	9633	6422	12844
3212	19111/297	9636	6424	12848
3213	3770	9639	6426	12852
3214	19279/288	9642	6428	12856
3215	1568	9645	6430	12860
3216	208	9648	6432	12864
3217	147001642	9651	6434	12868
3218	165	9654	6436	12872
3219	25-271	9657	6438	12876
3220	4520	9660	6440	12880
3221	118	9663	6442	12884
3222	9721753	9666	6444	12888
3223	TC-228	9669	6446	12892
3224	9910403	9672	6448	12896
3225	\N	9675	6450	12900
3226	45724/22	9678	6452	12904
3227	110-242	9681	6454	12908
3228	355	9684	6456	12912
3229	402B0817	9687	6458	12916
3230	\N	9690	6460	12920
3231	317405138	9693	6462	12924
3232	45598/57	9696	6464	12928
3233	\N	9699	6466	12932
3234	30203	9702	6468	12936
3235	277	9705	6470	12940
3236	644	9708	6472	12944
3237	35-196	9711	6474	12948
3238	1161	9714	6476	12952
3239	4357	9717	6478	12956
3240	1169	9720	6480	12960
3241	353	9723	6482	12964
3242	4350	9726	6484	12968
3243	4404	9729	6486	12972
3244	4861	9732	6488	12976
3245	4569	9735	6490	12980
3246	4128	9738	6492	12984
3247	\N	9741	6494	12988
3248	142	9744	6496	12992
3249	1347710	9747	6498	12996
3250	\N	9750	6500	13000
3251	4406	9753	6502	13004
3252	6281	9756	6504	13008
3253	279	9759	6506	13012
3254	21773/366	9762	6508	13016
3255	9703	9765	6510	13020
3256	45085/714	9768	6512	13024
3257	\N	9771	6514	13028
3258	LW-181	9774	6516	13032
3259	\N	9777	6518	13036
3260	1030	9780	6520	13040
3261	112	9783	6522	13044
3262	U-101	9786	6524	13048
3263	\N	9789	6526	13052
3264	7660402	9792	6528	13056
3265	310R0007	9795	6530	13060
3266	\N	9798	6532	13064
3267	62012	9801	6534	13068
3268	110-144	9804	6536	13072
3269	\N	9807	6538	13076
3270	4074	9810	6540	13080
3271	\N	9813	6542	13084
3272	\N	9816	6544	13088
3273	18340	9819	6546	13092
3274	7306007	9822	6548	13096
3275	\N	9825	6550	13100
3276	\N	9828	6552	13104
3277	19395	9831	6554	13108
3278	23-068	9834	6556	13112
3279	238	9837	6558	13116
3280	12209	9840	6560	13120
3281	18235	9843	6562	13124
3282	212	9846	6564	13128
3283	4830	9849	6566	13132
3284	327	9852	6568	13136
3285	457	9855	6570	13140
3286	\N	9858	6572	13144
3287	\N	9861	6574	13148
3288	4792	9864	6576	13152
3289	147001141	9867	6578	13156
3290	701	9870	6580	13160
3291	9884	9873	6582	13164
3292	1560	9876	6584	13168
3293	\N	9879	6586	13172
3294	34	9882	6588	13176
3295	10557	9885	6590	13180
3296	\N	9888	6592	13184
3297	327	9891	6594	13188
3298	11743	9894	6596	13192
3299	47621/729	9897	6598	13196
3300	\N	9900	6600	13200
3301	19939/151	9903	6602	13204
3302	47309204	9906	6604	13208
3303	9511539	9909	6606	13212
3304	110206	9912	6608	13216
3305	9431236	9915	6610	13220
3306	4623	9918	6612	13224
3307	\N	9921	6614	13228
3308	4594	9924	6616	13232
3309	24-146	9927	6618	13236
3310	11141	9930	6620	13240
3311	404-0680	9933	6622	13244
3312	2607	9936	6624	13248
3313	416	9939	6626	13252
3314	47622/753	9942	6628	13256
3315	\N	9945	6630	13260
3316	81A-480	9948	6632	13264
3317	746	9951	6634	13268
3318	43683/305	9954	6636	13272
3319	48047/998	9957	6638	13276
3320	AF-381	9960	6640	13280
3321	\N	9963	6642	13284
3322	\N	9966	6644	13288
3323	1481	9969	6646	13292
3324	609	9972	6648	13296
3325	\N	9975	6650	13300
3326	\N	9978	6652	13304
3327	781101	9981	6654	13308
3328	\N	9984	6656	13312
3329	19556/130	9987	6658	13316
3330	\N	9990	6660	13320
3331	47821/320	9993	6662	13324
3332	57310202	9996	6664	13328
3333	140	9999	6666	13332
3334	\N	10002	6668	13336
3335	\N	10005	6670	13340
3336	45889/291	10008	6672	13344
3337	19251	10011	6674	13348
3338	44168/431	10014	6676	13352
3339	105	10017	6678	13356
3340	568	10020	6680	13360
3341	21635/365	10023	6682	13364
3342	8040104	10026	6684	13368
3343	D-4114	10029	6686	13372
3344	17776	10032	6688	13376
3345	11078	10035	6690	13380
3346	212	10038	6692	13384
3347	\N	10041	6694	13388
3348	4645	10044	6696	13392
3349	2170	10047	6698	13396
3350	\N	10050	6700	13400
3351	760038	10053	6702	13404
3352	15	10056	6704	13408
3353	4033	10059	6706	13412
3354	\N	10062	6708	13416
3355	20907	10065	6710	13420
3356	1258	10068	6712	13424
3357	\N	10071	6714	13428
3358	21347/1282	10074	6716	13432
3359	536	10077	6718	13436
3360	17723/100	10080	6720	13440
3361	404--425	10083	6722	13444
3362	4037536	10086	6724	13448
3363	19457/518	10089	6726	13452
3364	1636	10092	6728	13456
3365	\N	10095	6730	13460
3366	6414038	10098	6732	13464
3367	\N	10101	6734	13468
3368	\N	10104	6736	13472
3369	19658/47	10107	6738	13476
3370	501	10110	6740	13480
3371	781120 / 17113	10113	6742	13484
3372	\N	10116	6744	13488
3373	160	10119	6746	13492
3374	300-6065	10122	6748	13496
3375	249	10125	6750	13500
3376	25B-119	10128	6752	13504
3377	\N	10131	6754	13508
3378	46962/238	10134	6756	13512
3379	\N	10137	6758	13516
3380	459	10140	6760	13520
3381	\N	10143	6762	13524
3382	72503	10146	6764	13528
3383	\N	10149	6766	13532
3384	30575	10152	6768	13536
3385	\N	10155	6770	13540
3386	4607	10158	6772	13544
3387	713	10161	6774	13548
3388	32-7500008	10164	6776	13552
3389	AC-449	10167	6778	13556
3390	\N	10170	6780	13560
3391	\N	10173	6782	13564
3392	63	10176	6784	13568
3393	\N	10179	6786	13572
3394	31-7852161	10182	6788	13576
3395	5208	10185	6790	13580
3396	189001401	10188	6792	13584
3397	327A	10191	6794	13588
3398	46010/406	10194	6796	13592
3399	757	10197	6798	13596
3400	21603/1389	10200	6800	13600
3401	4693	10203	6802	13604
3402	\N	10206	6804	13608
3403	30761	10209	6806	13612
3404	395	10212	6808	13616
3405	47025/106	10215	6810	13620
3406	\N	10218	6812	13624
3407	25-030	10221	6814	13628
3408	BB-0038	10224	6816	13632
3409	558	10227	6818	13636
3410	1755	10230	6820	13640
3411	9320628	10233	6822	13644
3412	\N	10236	6824	13648
3413	\N	10239	6826	13652
3414	125	10242	6828	13656
3415	293	10245	6830	13660
3416	20227	10248	6832	13664
3417	1141	10251	6834	13668
3418	11132	10254	6836	13672
3419	47196/278	10257	6838	13676
3420	\N	10260	6840	13680
3421	185-5160	10263	6842	13684
3422	394	10266	6844	13688
3423	\N	10269	6846	13692
3424	4694	10272	6848	13696
3425	\N	10275	6850	13700
3426	22607/775	10278	6852	13704
3427	61-770	10281	6854	13708
3428	22520/47	10284	6856	13712
3429	404-0006	10287	6858	13716
3430	745	10290	6860	13720
3431	\N	10293	6862	13724
3432	31-7752118	10296	6864	13728
3433	4333	10299	6866	13732
3434	BB-0320	10302	6868	13736
3435	60630	10305	6870	13740
3436	20559/186	10308	6872	13744
3437	274	10311	6874	13748
3438	2169 / 	10314	6876	13752
3439	21734/566	10317	6878	13756
3440	\N	10320	6880	13760
3441	518	10323	6882	13764
3442	9131918	10326	6884	13768
3443	\N	10329	6886	13772
3444	110026	10332	6888	13776
3445	512	10335	6890	13780
3446	1716	10338	6892	13784
3447	SH3074	10341	6894	13788
3448	22775	10344	6896	13792
3449	632	10347	6898	13796
3450	\N	10350	6900	13800
3451	21381	10353	6902	13804
3452	11090	10356	6904	13808
3453	20820 / 47645	10359	6906	13812
3454	\N	10362	6908	13816
3455	18707/349	10365	6910	13820
3456	213	10368	6912	13824
3457	37308704	10371	6914	13828
3458	55	10374	6916	13832
3459	15745/27190	10377	6918	13836
3460	4352308	10380	6920	13840
3461	36036	10383	6922	13844
3462	218/58N	10386	6924	13848
3463	67310607	10389	6926	13852
3464	TC-240	10392	6928	13856
3465	4342002	10395	6930	13860
3466	\N	10398	6932	13864
3467	500-0237	10401	6934	13868
3468	404-0685	10404	6936	13872
3469	\N	10407	6938	13876
3470	46871	10410	6940	13880
3471	4324	10413	6942	13884
3472	\N	10416	6944	13888
3473	444	10419	6946	13892
3474	BL-52	10422	6948	13896
3475	\N	10425	6950	13900
3476	10559	10428	6952	13904
3477	402B-0852	10431	6954	13908
3478	24-287	10434	6956	13912
3479	110088 / 110170	10437	6958	13916
3480	\N	10440	6960	13920
3481	22636	10443	6962	13924
3482	1034	10446	6964	13928
3483	23-085	10449	6966	13932
3484	\N	10452	6968	13936
3485	110-013	10455	6970	13940
3486	\N	10458	6972	13944
3487	\N	10461	6974	13948
3488	300-6037	10464	6976	13952
3489	\N	10467	6978	13956
3490	669	10470	6980	13960
3491	\N	10473	6982	13964
3492	38	10476	6984	13968
3493	10453	10479	6986	13972
3494	\N	10482	6988	13976
3495	402A-0038	10485	6990	13980
3496	12938	10488	6992	13984
3497	12485	10491	6994	13988
3498	\N	10494	6996	13992
3499	U187 /	10497	6998	13996
3500	21295/484	10500	7000	14000
3501	756	10503	7002	14004
3502	402C-06550	10506	7004	14008
3503	303	10509	7006	14012
3504	1G168-04	10512	7008	14016
3505	45754/224	10515	7010	14020
3506	\N	10518	7012	14024
3507	500-0032	10521	7014	14028
3508	\N	10524	7016	14032
3509	115	10527	7018	14036
3510	243	10530	7020	14040
3511	34	10533	7022	14044
3512	83412354	10536	7024	14048
3513	7340106	10539	7026	14052
3514	20811	10542	7028	14056
3515	110294	10545	7030	14060
3516	446	10548	7032	14064
3517	770706	10551	7034	14068
3518	110-365	10554	7036	14072
3519	\N	10557	7038	14076
3520	\N	10560	7040	14080
3521	317	10563	7042	14084
3522	376	10566	7044	14088
3523	338	10569	7046	14092
3524	22556/1793	10572	7048	14096
3525	1044	10575	7050	14100
3526	27308110	10578	7052	14104
3527	188011102	10581	7054	14108
3528	\N	10584	7056	14112
3529	1121	10587	7058	14116
3530	3109	10590	7060	14120
3531	110341	10593	7062	14124
3532	497	10596	7064	14128
3533	\N	10599	7066	14132
3534	63971	10602	7068	14136
3535	LD-231	10605	7070	14140
3536	\N	10608	7072	14144
3537	33448421	10611	7074	14148
3538	\N	10614	7076	14152
3539	693	10617	7078	14156
3540	21777/1487	10620	7080	14160
3541	22805/564	10623	7082	14164
3542	87304104	10626	7084	14168
3543	17237/4	10629	7086	14172
3544	4044	10632	7088	14176
3545	11165	10635	7090	14180
3546	257133	10638	7092	14184
3547	\N	10641	7094	14188
3548	21810/604	10644	7096	14192
3549	20611/894	10647	7098	14196
3550	\N	10650	7100	14200
3551	10118	10653	7102	14204
3552	319	10656	7104	14208
3553	23253 /	10659	7106	14212
3554	\N	10662	7108	14216
3555	219	10665	7110	14220
3556	\N	10668	7112	14224
3557	501-0022	10671	7114	14228
3558	157	10674	7116	14232
3559	181	10677	7118	14236
3560	20844/1065	10680	7120	14240
3561	110-063	10683	7122	14244
3562	21473/330	10686	7124	14248
3563	\N	10689	7126	14252
3564	311	10692	7128	14256
3565	\N	10695	7130	14260
3566	45067/709	10698	7132	14264
3567	1163	10701	7134	14268
3568	20783/230	10704	7136	14272
3569	346	10707	7138	14276
3570	20374/838	10710	7140	14280
3571	\N	10713	7142	14284
3572	22033/743	10716	7144	14288
3573	U-22	10719	7146	14292
3574	17931	10722	7148	14296
3575	67	10725	7150	14300
3576	57314106	10728	7152	14304
3577	47309/393	10731	7154	14308
3578	\N	10734	7156	14312
3579	U156	10737	7158	14316
3580	1901708	10740	7160	14320
3581	208-00017	10743	7162	14324
3582	402B-0304	10746	7164	14328
3583	110090	10749	7166	14332
3584	371	10752	7168	14336
3585	32936	10755	7170	14340
3586	9230923	10758	7172	14344
3587	192	10761	7174	14348
3588	10501	10764	7176	14352
3589	24-265	10767	7178	14356
3590	208-00006	10770	7180	14360
3591	221	10773	7182	14364
3592	\N	10776	7184	14368
3593	4898	10779	7186	14372
3594	21191/450	10782	7188	14376
3595	\N	10785	7190	14380
3596	46058/433	10788	7192	14384
3597	SH-1978	10791	7194	14388
3598	13658	10794	7196	14392
3599	40	10797	7198	14396
3600	425	10800	7200	14400
3601	20096/190	10803	7202	14404
3602	1547	10806	7204	14408
3603	1045	10809	7206	14412
3604	20226/168	10812	7208	14416
3605	7304108	10815	7210	14420
3606	\N	10818	7212	14424
3607	110370	10821	7214	14428
3608	108/15N	10824	7216	14432
3609	400	10827	7218	14436
3610	1400103	10830	7220	14440
3611	\N	10833	7222	14444
3612	\N	10836	7224	14448
3613	22414/1748	10839	7226	14452
3614	20845/1066	10842	7228	14456
3615	4161	10845	7230	14460
3616	780	10848	7232	14464
3617	45078	10851	7234	14468
3618	\N	10854	7236	14472
3619	1061	10857	7238	14476
3620	9321728	10860	7240	14480
3621	414A0242	10863	7242	14484
3622	19	10866	7244	14488
3623	\N	10869	7246	14492
3624	10659	10872	7248	14496
3625	635	10875	7250	14500
3626	18600/639	10878	7252	14504
3627	248 /	10881	7254	14508
3628	60955	10884	7256	14512
3629	60482	10887	7258	14516
3630	9492	10890	7260	14520
3631	32186	10893	7262	14524
3632	785	10896	7264	14528
3633	3194	10899	7266	14532
3634	10277	10902	7268	14536
3635	20700603	10905	7270	14540
3636	4410201	10908	7272	14544
3637	2596	10911	7274	14548
3638	47356/470 /	10914	7276	14552
3639	402-0130	10917	7278	14556
3640	20351/127	10920	7280	14560
3641	3076	10923	7282	14564
3642	1028	10926	7284	14568
3643	120019	10929	7286	14572
3644	SH-1851	10932	7288	14576
3645	4391	10935	7290	14580
3646	780905	10938	7292	14584
3647	20499/284	10941	7294	14588
3648	141	10944	7296	14592
3649	28-7890344	10947	7298	14596
3650	63457	10950	7300	14600
3651	62327	10953	7302	14604
3652	700	10956	7304	14608
3653	10335	10959	7306	14612
3654	\N	10962	7308	14616
3655	\N	10965	7310	14620
3656	MJ004	10968	7312	14624
3657	\N	10971	7314	14628
3658	63145	10974	7316	14632
3659	37308907	10977	7318	14636
3660	21183	10980	7320	14640
3661	14056	10983	7322	14644
3662	65	10986	7324	14648
3663	19822/726	10989	7326	14652
3664	404	10992	7328	14656
3665	\N	10995	7330	14660
3666	TC-327 /	10998	7332	14664
3667	208-00106	11001	7334	14668
3668	208-00044	11004	7336	14672
3669	55-070	11007	7338	14676
3670	110-262	11010	7340	14680
3671	\N	11013	7342	14684
3672	\N	11016	7344	14688
3673	160	11019	7346	14692
3674	9901	11022	7348	14696
3675	18136/475	11025	7350	14700
3676	\N	11028	7352	14704
3677	24-118	11031	7354	14708
3678	\N	11034	7356	14712
3679	4020067	11037	7358	14716
3680	LJ-0793	11040	7360	14720
3681	47741/836	11043	7362	14724
3682	19209/510	11046	7364	14728
3683	TC-202	11049	7366	14732
3684	404-0612	11052	7368	14736
3685	401712	11055	7370	14740
3686	271	11058	7372	14744
3687	3344942	11061	7374	14748
3688	26324	11064	7376	14752
3689	327540064	11067	7378	14756
3690	363	11070	7380	14760
3691	474	11073	7382	14764
3692	76	11076	7384	14768
3693	501-0203	11079	7386	14772
3694	19	11082	7388	14776
3695	14105	11085	7390	14780
3696	5805	11088	7392	14784
3697	9241824	11091	7394	14788
3698	10357	11094	7396	14792
3699	1637	11097	7398	14796
3700	4325	11100	7400	14800
3701	\N	11103	7402	14804
3702	16687	11106	7404	14808
3703	23-013	11109	7406	14812
3704	22602	11112	7408	14816
3705	187009901	11115	7410	14820
3706	48090/1040	11118	7412	14824
3707	31-7405489	11121	7414	14828
3708	22267/685	11124	7416	14832
3709	25290	11127	7418	14836
3710	\N	11130	7420	14840
3711	115	11133	7422	14844
3712	21061324	11136	7424	14848
3713	10689	11139	7426	14852
3714	419	11142	7428	14856
3715	46	11145	7430	14860
3716	9346702	11148	7432	14864
3717	310N0078	11151	7434	14868
3718	SH-1971	11154	7436	14872
3719	292	11157	7438	14876
3720	45726/36	11160	7440	14880
3721	UB-58	11163	7442	14884
3722	208-00059	11166	7444	14888
3723	2029	11169	7446	14892
3724	AC-457	11172	7448	14896
3725	22171/488	11175	7450	14900
3726	20522/855	11178	7452	14904
3727	\N	11181	7454	14908
3728	E-2027	11184	7456	14912
3729	10548	11187	7458	14916
3730	217	11190	7460	14920
3731	SH-3719	11193	7462	14924
3732	\N	11196	7464	14928
3733	120-033	11199	7466	14932
3734	1588	11202	7468	14936
3735	402C0642	11205	7470	14940
3736	31-7752077	11208	7472	14944
3737	31-7652151	11211	7474	14948
3738	459	11214	7476	14952
3739	22635/774	11217	7478	14956
3740	36-041	11220	7480	14960
3741	246	11223	7482	14964
3742	77A254	11226	7484	14968
3743	9531442	11229	7486	14972
3744	237	11232	7488	14976
3745	421A0002	11235	7490	14980
3746	AC-500	11238	7492	14984
3747	AC-622	11241	7494	14988
3748	1351501	11244	7496	14992
3749	20930/1044	11247	7498	14996
3750	110-402	11250	7500	15000
3751	546	11253	7502	15004
3752	282-68	11256	7504	15008
3753	\N	11259	7506	15012
3754	18999/240	11262	7508	15016
3755	45859/253	11265	7510	15020
3756	21541	11268	7512	15024
3757	\N	11271	7514	15028
3758	6154	11274	7516	15032
3759	701SA	11277	7518	15036
3760	851422	11280	7520	15040
3761	7007	11283	7522	15044
3762	35-442	11286	7524	15048
3763	6341406	11289	7526	15052
3764	20209	11292	7528	15056
3765	28	11295	7530	15060
3766	32-301	11298	7532	15064
3767	23838	11301	7534	15068
3768	\N	11304	7536	15072
3769	10443	11307	7538	15076
3770	282-68	11310	7540	15080
3771	3720	11313	7542	15084
3772	48050/989	11316	7544	15088
3773	\N	11319	7546	15092
3774	9	11322	7548	15096
3775	186	11325	7550	15100
3776	39	11328	7552	15104
3777	44615/541	11331	7554	15108
3778	18881/436	11334	7556	15112
3779	18502033	11337	7558	15116
3780	9620247	11340	7560	15120
3781	245	11343	7562	15124
3782	\N	11346	7564	15128
3783	3708	11349	7566	15132
3784	283	11352	7568	15136
3785	10452	11355	7570	15140
3786	770801	11358	7572	15144
3787	\N	11361	7574	15148
3788	2159	11364	7576	15152
3789	110-192	11367	7578	15156
3790	229	11370	7580	15160
3791	20750/992	11373	7582	15164
3792	215	11376	7584	15168
3793	60925	11379	7586	15172
3794	1052	11382	7588	15176
3795	1789	11385	7590	15180
3796	23914/1456	11388	7592	15184
3797	\N	11391	7594	15188
3798	18092/431	11394	7596	15192
3799	32-40432	11397	7598	15196
3800	19630/746	11400	7600	15200
3801	10173	11403	7602	15204
3802	20481/271	11406	7604	15208
3803	11059	11409	7606	15212
3804	67302209	11412	7608	15216
3805	288190170	11415	7610	15220
3806	110226	11418	7612	15224
3807	\N	11421	7614	15228
3808	TC-334E	11424	7616	15232
3809	670	11427	7618	15236
3810	790323	11430	7620	15240
3811	45203/776	11433	7622	15244
3812	\N	11436	7624	15248
3813	83413388	11439	7626	15252
3814	19168/508	11442	7628	15256
3815	782SA	11445	7630	15260
3816	19646/15	11448	7632	15264
3817	2139	11451	7634	15268
3818	23867/1603	11454	7636	15272
3819	1582	11457	7638	15276
3820	19344	11460	7640	15280
3821	4124	11463	7642	15284
3822	18607	11466	7644	15288
3823	10325	11469	7646	15292
3824	730	11472	7648	15296
3825	19572/687	11475	7650	15300
3826	80A-408	11478	7652	15304
3827	21828/408	11481	7654	15308
3828	402B0527	11484	7656	15312
3829	19875/89	11487	7658	15316
3830	44642/586	11490	7660	15320
3831	25290	11493	7662	15324
3832	11060	11496	7664	15328
3833	604	11499	7666	15332
3834	47192/287	11502	7668	15336
3835	\N	11505	7670	15340
3836	19354/503	11508	7672	15344
3837	532	11511	7674	15348
3838	819	11514	7676	15352
3839	215	11517	7678	15356
3840	1051	11520	7680	15360
3841	110330	11523	7682	15364
3842	U048	11526	7684	15368
3843	33070	11529	7686	15372
3844	46107/498	11532	7688	15376
3845	676	11535	7690	15380
3846	BA-746	11538	7692	15384
3847	2850324	11541	7694	15388
3848	14104	11544	7696	15392
3849	329	11547	7698	15396
3850	404-0418	11550	7700	15400
3851	1804	11553	7702	15404
3852	10559	11556	7704	15408
3853	208	11559	7706	15412
3854	\N	11562	7708	15416
3855	46618	11565	7710	15420
3856	8805	11568	7712	15424
3857	366	11571	7714	15428
3858	231	11574	7716	15432
3859	\N	11577	7718	15436
3860	\N	11580	7720	15440
3861	47887/125	11583	7722	15444
3862	\N	11586	7724	15448
3863	180	11589	7726	15452
3864	SH-3083	11592	7728	15456
3865	699	11595	7730	15460
3866	583	11598	7732	15464
3867	177RG-0376	11601	7734	15468
3868	37309006	11604	7736	15472
3869	LJ507	11607	7738	15476
3870	10207	11610	7740	15480
3871	317952021	11613	7742	15484
3872	3850453	11616	7744	15488
3873	21006	11619	7746	15492
3874	56	11622	7748	15496
3875	345	11625	7750	15500
3876	B-049	11628	7752	15504
3877	46852/125	11631	7754	15508
3878	17552/161	11634	7756	15512
3879	23884/1643	11637	7758	15516
3880	\N	11640	7760	15520
3881	\N	11643	7762	15524
3882	8052	11646	7764	15528
3883	AC-481	11649	7766	15532
3884	\N	11652	7768	15536
3885	439	11655	7770	15540
3886	1705	11658	7772	15544
3887	17341/31	11661	7774	15548
3888	208-00115	11664	7776	15552
3889	402C-0638	11667	7778	15556
3890	7309	11670	7780	15560
3891	23440153	11673	7782	15564
3892	19514/597	11676	7784	15568
3893	23795/1319	11679	7786	15572
3894	\N	11682	7788	15576
3895	400	11685	7790	15580
3896	767	11688	7792	15584
3897	389	11691	7794	15588
3898	551-0245	11694	7796	15592
3899	97305602	11697	7798	15596
3900	\N	11700	7800	15600
3901	11223	11703	7802	15604
3902	19035/272	11706	7804	15608
3903	4129	11709	7806	15612
3904	\N	11712	7808	15616
3905	69	11715	7810	15620
3906	296	11718	7812	15624
3907	3187	11721	7814	15628
3908	24	11724	7816	15632
3909	776	11727	7818	15636
3910	77310801	11730	7820	15640
3911	\N	11733	7822	15644
3912	217/57N	11736	7824	15648
3913	2351703	11739	7826	15652
3914	163	11742	7828	15656
3915	208-00091	11745	7830	15660
3916	23-067	11748	7832	15664
3917	268	11751	7834	15668
3918	19276/592	11754	7836	15672
3919	1567	11757	7838	15676
3920	103	11760	7840	15680
3921	208B-0169	11763	7842	15684
3922	208B-0172	11766	7844	15688
3923	10206	11769	7846	15692
3924	79	11772	7848	15696
3925	66	11775	7850	15700
3926	208-00043	11778	7852	15704
3927	\N	11781	7854	15708
3928	\N	11784	7856	15712
3929	1394	11787	7858	15716
3930	58-1617	11790	7860	15720
3931	1134	11793	7862	15724
3932	7406	11796	7864	15728
3933	83489670	11799	7866	15732
3934	384	11802	7868	15736
3935	25-108	11805	7870	15740
3936	536	11808	7872	15744
3937	131	11811	7874	15748
3938	4589	11814	7876	15752
3939	25325	11817	7878	15756
3940	U197	11820	7880	15760
3941	\N	11823	7882	15764
3942	43739/279	11826	7884	15768
3943	101	11829	7886	15772
3944	24466	11832	7888	15776
3945	500-0283	11835	7890	15780
3946	D61	11838	7892	15784
3947	UC-46	11841	7894	15788
3948	349	11844	7896	15792
3949	570	11847	7898	15796
3950	BAC 234	11850	7900	15800
3951	20700775	11853	7902	15804
3952	21060195	11856	7904	15808
3953	857	11859	7906	15812
3954	6	11862	7908	15816
3955	\N	11865	7910	15820
3956	LJ-0448	11868	7912	15824
3957	9431036	11871	7914	15828
3958	\N	11874	7916	15832
3959	UC- 5	11877	7918	15836
3960	23338	11880	7920	15840
3961	\N	11883	7922	15844
3962	31	11886	7924	15848
3963	317612024	11889	7926	15852
3964	20266/760	11892	7928	15856
3965	229	11895	7930	15860
3966	1811379	11898	7932	15864
3967	110368	11901	7934	15868
3968	500-0254	11904	7936	15872
3969	\N	11907	7938	15876
3970	24758 / 23189	11910	7940	15880
3971	45838/104	11913	7942	15884
3972	15805/33553	11916	7944	15888
3973	9631449	11919	7946	15892
3974	0B-3420	11922	7948	15896
3975	47641/746	11925	7950	15900
3976	303	11928	7952	15904
3977	\N	11931	7954	15908
3978	47240/346	11934	7956	15912
3979	T210-63675	11937	7958	15916
3980	1133	11940	7960	15920
3981	21157 / 45708/77	11943	7962	15924
3982	19377/666	11946	7964	15928
3983	NSP4/2022	11949	7966	15932
3984	208-00104	11952	7968	15936
3985	264	11955	7970	15940
3986	25-172	11958	7972	15944
3987	258/78N	11961	7974	15948
3988	4341	11964	7976	15952
3989	23310/1145 / AC-683	11967	7978	15956
3990	4724	11970	7980	15960
3991	31-7952001	11973	7982	15964
3992	291	11976	7984	15968
3993	832	11979	7986	15972
3994	E-2061	11982	7988	15976
3995	22742/875	11985	7990	15980
3996	47720/846	11988	7992	15984
3997	402B-0859	11991	7994	15988
3998	25095	11994	7996	15992
3999	4833	11997	7998	15996
4000	25D-258	12000	8000	16000
4001	402C0043	12003	8002	16004
4002	4754	12006	8004	16008
4003	\N	12009	8006	16012
4004	27307910	12012	8008	16016
4005	\N	12015	8010	16020
4006	402B0827	12018	8012	16024
4007	26643	12021	8014	16028
4008	6108448162153/0151	12024	8016	16032
4009	120-218	12027	8018	16036
4010	8196	12030	8020	16040
4011	404-0657	12033	8022	16044
4012	10399	12036	8024	16048
4013	20700463	12039	8026	16052
4014	26775	12042	8028	16056
4015	97	12045	8030	16060
4016	93494835	12048	8032	16064
4017	24628/283	12051	8034	16068
4018	44	12054	8036	16072
4019	3099	12057	8038	16076
4020	45132/801	12060	8040	16080
4021	7300304	12063	8042	16084
4022	94	12066	8044	16088
4023	606	12069	8046	16092
4024	232	12072	8048	16096
4025	U226	12075	8050	16100
4026	45982/345	12078	8052	16104
4027	271	12081	8054	16108
4028	23-045	12084	8056	16112
4029	2060183	12087	8058	16116
4030	220	12090	8060	16120
4031	676	12093	8062	16124
4032	185008301	12096	8064	16128
4033	3240115	12099	8066	16132
4034	10119	12102	8068	16136
4035	21497	12105	8070	16140
4036	2009	12108	8072	16144
4037	\N	12111	8074	16148
4038	SH-1975	12114	8076	16152
4039	752	12117	8078	16156
4040	120-077	12120	8080	16160
4041	SU002	12123	8082	16164
4042	178	12126	8084	16168
4043	5029	12129	8086	16172
4044	98	12132	8088	16176
4045	7345407	12135	8090	16180
4046	AN24021	12138	8092	16184
4047	30268	12141	8094	16188
4048	4927	12144	8096	16192
4049	402-0002	12147	8098	16196
4050	28181	12150	8100	16200
4051	1017	12153	8102	16204
4052	1391	12156	8104	16208
4053	4192	12159	8106	16212
4054	\N	12162	8108	16216
4055	9520841	12165	8110	16220
4056	110-314	12168	8112	16224
4057	208B-0058	12171	8114	16228
4058	\N	12174	8116	16232
4059	\N	12177	8118	16236
4060	2580	12180	8120	16240
4061	\N	12183	8122	16244
4062	25471	12186	8124	16248
4063	17307204	12189	8126	16252
4064	110473	12192	8128	16256
4065	31-7652100	12195	8130	16260
4066	RJ-57	12198	8132	16264
4067	7353	12201	8134	16268
4068	53003	12204	8136	16272
4069	31-7300902	12207	8138	16276
4070	22390	12210	8140	16280
4071	UC-135	12213	8142	16284
4072	21059763	12216	8144	16288
4073	15	12219	8146	16292
4074	43-35632	12222	8148	16296
4075	\N	12225	8150	16300
4076	110-005	12228	8152	16304
4077	3527	12231	8154	16308
4078	9	12234	8156	16312
4079	45923/383	12237	8158	16316
4080	\N	12240	8160	16320
4081	22570	12243	8162	16324
4082	452	12246	8164	16328
4083	683	12249	8166	16332
4084	11235	12252	8168	16336
4085	1403	12255	8170	16340
4086	18715/364	12258	8172	16344
4087	800326	12261	8174	16348
4088	77310810	12264	8176	16352
4089	2007	12267	8178	16356
4090	110- 355	12270	8180	16360
4091	125	12273	8182	16364
4092	\N	12276	8184	16368
4093	141	12279	8186	16372
4094	BA-308	12282	8188	16376
4095	10499	12285	8190	16380
4096	3985	12288	8192	16384
4097	22059/631	12291	8194	16388
4098	234	12294	8196	16392
4099	U-185	12297	8198	16396
4100	25-191	12300	8200	16400
4101	TC-1382	12303	8202	16404
4102	402-0215	12306	8204	16408
4103	21188/444	12309	8206	16412
4104	AN12145	12312	8208	16416
4105	27-7405249	12315	8210	16420
4106	60804	12318	8212	16424
4107	SH-1918	12321	8214	16428
4108	1347903	12324	8216	16432
4109	\N	12327	8218	16436
4110	77A-222	12330	8220	16440
4111	434	12333	8222	16444
4112	347607	12336	8224	16448
4113	392	12339	8226	16452
4114	25-099	12342	8228	16456
4115	1837	12345	8230	16460
4116	25	12348	8232	16464
4117	1014	12351	8234	16468
4118	438	12354	8236	16472
4119	2116644	12357	8238	16476
4120	405	12360	8240	16480
4121	AC-545	12363	8242	16484
4122	49868	12366	8244	16488
4123	240	12369	8246	16492
4124	20191	12372	8248	16496
4125	316	12375	8250	16500
4126	15908/32656	12378	8252	16504
4127	AF-461	12381	8254	16508
4128	10533	12384	8256	16512
4129	\N	12387	8258	16516
4130	1488	12390	8260	16520
4131	44656/619	12393	8262	16524
4132	22436	12396	8264	16528
4133	\N	12399	8266	16532
4134	4624	12402	8268	16536
4135	21737/362	12405	8270	16540
4136	3952	12408	8272	16544
4137	108807113	12411	8274	16548
4138	2905	12414	8276	16552
4139	N-013	12417	8278	16556
4140	IAJ005-18	12420	8280	16560
4141	379	12423	8282	16564
4142	OD-3430	12426	8284	16568
4143	42-8001024	12429	8286	16572
4144	402C0633	12432	8288	16576
4145	53483299	12435	8290	16580
4146	\N	12438	8292	16584
4147	9631848	12441	8294	16588
4148	187010301	12444	8296	16592
4149	20700453	12447	8298	16596
4150	24913	12450	8300	16600
4151	6106 / 6168	12453	8302	16604
4152	864	12456	8304	16608
4153	10649	12459	8306	16612
4154	46924	12462	8308	16616
4155	21050/1108	12465	8310	16620
4156	2923	12468	8312	16624
4157	210	12471	8314	16628
4158	1620	12474	8316	16632
4159	110391	12477	8318	16636
4160	9862	12480	8320	16640
4161	11	12483	8322	16644
4162	SH-1961	12486	8324	16648
4163	903	12489	8326	16652
4164	\N	12492	8328	16656
4165	413	12495	8330	16660
4166	111	12498	8332	16664
4167	11393	12501	8334	16668
4168	TH468	12504	8336	16672
4169	BB-0308	12507	8338	16676
4170	110-037	12510	8340	16680
4171	26348	12513	8342	16684
4172	TT-527	12516	8344	16688
4173	1484	12519	8346	16692
4174	4700/83	12522	8348	16696
4175	48495/461	12525	8350	16700
4176	765SA	12528	8352	16704
4177	14102	12531	8354	16708
4178	20961/375	12534	8356	16712
4179	\N	12537	8358	16716
4180	69	12540	8360	16720
4181	U-228	12543	8362	16724
4182	9	12546	8364	16728
4183	43825/315	12549	8366	16732
4184	18876/217	12552	8368	16736
4185	771	12555	8370	16740
4186	404-0456	12558	8372	16744
4187	805	12561	8374	16748
4188	391	12564	8376	16752
4189	SU035	12567	8378	16756
4190	11131	12570	8380	16760
4191	\N	12573	8382	16764
4192	402C0501	12576	8384	16768
4193	720396S	12579	8386	16772
4194	E-3215	12582	8388	16776
4195	24805/1878	12585	8390	16780
4196	SH-1967	12588	8392	16784
4197	7029	12591	8394	16788
4198	LJ718	12594	8396	16792
4199	46127	12597	8398	16796
4200	902509	12600	8400	16800
4201	9541944	12603	8402	16804
4202	105	12606	8404	16808
4203	5340120	12609	8406	16812
4204	76A-163	12612	8408	16816
4205	42235	12615	8410	16820
4206	\N	12618	8412	16824
4207	4	12621	8414	16828
4208	49355	12624	8416	16832
4209	408	12627	8418	16836
4210	421B-0569	12630	8420	16840
4211	1617	12633	8422	16844
4212	49849/1772	12636	8424	16848
4213	\N	12639	8426	16852
4214	4016557	12642	8428	16856
4215	\N	12645	8430	16860
4216	706	12648	8432	16864
4217	398	12651	8434	16868
4218	393 / 2030	12654	8436	16872
4219	42	12657	8438	16876
4220	4761	12660	8440	16880
4221	350	12663	8442	16884
4222	12903	12666	8444	16888
4223	89A801	12669	8446	16892
4224	11380	12672	8448	16896
4225	LJ-0445	12675	8450	16900
4226	41016	12678	8452	16904
4227	24-248	12681	8454	16908
4228	13480002	12684	8456	16912
4229	9640950	12687	8458	16916
4230	349	12690	8460	16920
4231	49439	12693	8462	16924
4232	21763/571	12696	8464	16928
4233	AT-033	12699	8466	16932
4234	4351	12702	8468	16936
4235	4432	12705	8470	16940
4236	43089	12708	8472	16944
4237	J-51	12711	8474	16948
4238	632	12714	8476	16952
4239	650-0200	12717	8478	16956
4240	MA036	12720	8480	16960
4241	596	12723	8482	16964
4242	1D-25 / 4322	12726	8484	16968
4243	2773	12729	8486	16972
4244	195	12732	8488	16976
4245	436	12735	8490	16980
4246	6	12738	8492	16984
4247	\N	12741	8494	16988
4248	730	12744	8496	16992
4249	580	12747	8498	16996
4250	31-7405417	12750	8500	17000
4251	143	12753	8502	17004
4252	110-072	12756	8504	17008
4253	2111	12759	8506	17012
4254	11752	12762	8508	17016
4255	\N	12765	8510	17020
4256	86A-740	12768	8512	17024
4257	TC-401	12771	8514	17028
4258	25D223	12774	8516	17032
4259	10597	12777	8518	17036
4260	317652170	12780	8520	17040
4261	10577	12783	8522	17044
4262	\N	12786	8524	17048
4263	42	12789	8526	17052
4264	11092	12792	8528	17056
4265	47590	12795	8530	17060
4266	328006077	12798	8532	17064
4267	\N	12801	8534	17068
4268	2152	12804	8536	17072
4269	9311326	12807	8538	17076
4270	110-375	12810	8540	17080
4271	58-1098	12813	8542	17084
4272	\N	12816	8544	17088
4273	583	12819	8546	17092
4274	495	12822	8548	17096
4275	52089	12825	8550	17100
4276	321268	12828	8552	17104
4277	127	12831	8554	17108
4278	23699/1452	12834	8556	17112
4279	538	12837	8558	17116
4280	36	12840	8560	17120
4281	229	12843	8562	17124
4282	4826	12846	8564	17128
4283	9..1337	12849	8566	17132
4284	34346	12852	8568	17136
4285	126	12855	8570	17140
4286	OA-3460	12858	8572	17144
4287	13321	12861	8574	17148
4288	3301	12864	8576	17152
4289	11070	12867	8578	17156
4290	4293	12870	8580	17160
4291	\N	12873	8582	17164
4292	1G217-55	12876	8584	17168
4293	1340302	12879	8586	17172
4294	401	12882	8588	17176
4295	30824	12885	8590	17180
4296	55	12888	8592	17184
4297	9140220	12891	8594	17188
4298	U-178	12894	8596	17192
4299	835	12897	8598	17196
4300	49426 / 0196	12900	8600	17200
4301	\N	12903	8602	17204
4302	21575	12906	8604	17208
4303	402C-1019	12909	8606	17212
4304	918	12912	8608	17216
4305	12476	12915	8610	17220
4306	187	12918	8612	17224
4307	20758/322	12921	8614	17228
4308	104	12924	8616	17232
4309	26074/2376	12927	8618	17236
4310	5203	12930	8620	17240
4311	390	12933	8622	17244
4312	45742/26	12936	8624	17248
4313	208B-0236	12939	8626	17252
4314	35-058	12942	8628	17256
4315	208B-0249	12945	8630	17260
4316	17271039	12948	8632	17264
4317	3520	12951	8634	17268
4318	392	12954	8636	17272
4319	790316	12957	8638	17276
4320	225	12960	8640	17280
4321	435	12963	8642	17284
4322	31-77552121	12966	8644	17288
4323	45929/367	12969	8646	17292
4324	11806	12972	8648	17296
4325	208B-0065	12975	8650	17300
4326	LD-249	12978	8652	17304
4327	450/395	12981	8654	17308
4328	35-583	12984	8656	17312
4329	607	12987	8658	17316
4330	221	12990	8660	17320
4331	1768	12993	8662	17324
4332	CC-827B /	12996	8664	17328
4333	83	12999	8666	17332
4334	22538	13002	8668	17336
4335	3801	13005	8670	17340
4336	110-256	13008	8672	17344
4337	25659	13011	8674	17348
4338	31-205	13014	8676	17352
4339	47321	13017	8678	17356
4340	55	13020	8680	17360
4341	1G195-47	13023	8682	17364
4342	1G259-18	13026	8684	17368
4343	A53-2-326	13029	8686	17372
4344	4308068	13032	8688	17376
4345	432	13035	8690	17380
4346	328106063	13038	8692	17384
4347	13	13041	8694	17388
4348	32R7680348	13044	8696	17392
4349	275	13047	8698	17396
4350	473	13050	8700	17400
4351	19525	13053	8702	17404
4352	393	13056	8704	17408
4353	1G153-21	13059	8706	17412
4354	23849	13062	8708	17416
4355	1735	13065	8710	17420
4356	110310	13068	8712	17424
4357	120-122	13071	8714	17428
4358	SH-1839	13074	8716	17432
4359	8014	13077	8718	17436
4360	421C-0265	13080	8720	17440
4361	306	13083	8722	17444
4362	14305	13086	8724	17448
4363	3502	13089	8726	17452
4364	402B-0423	13092	8728	17456
4365	20174	13095	8730	17460
4366	AC-629B	13098	8732	17464
4367	573101103	13101	8734	17468
4368	21554/933	13104	8736	17472
4369	98522942	13107	8738	17476
4370	38	13110	8740	17480
4371	158/28N	13113	8742	17484
4372	95489	13116	8744	17488
4373	172RG0395	13119	8746	17492
4374	\N	13122	8748	17496
4375	208B-0214	13125	8750	17500
4376	10619	13128	8752	17504
4377	22985	13131	8754	17508
4378	3503	13134	8756	17512
4379	33171	13137	8758	17516
4380	19584/663	13140	8760	17520
4381	23386/1143	13143	8762	17524
4382	63383	13146	8764	17528
4383	76A-0164	13149	8766	17532
4384	UE-119	13152	8768	17536
4385	77303309	13155	8770	17540
4386	1080	13158	8772	17544
4387	24609	13161	8774	17548
4388	207	13164	8776	17552
4389	8142	13167	8778	17556
4390	2301	13170	8780	17560
4391	436	13173	8782	17564
4392	257196	13176	8784	17568
4393	\N	13179	8786	17572
4394	20800051	13182	8788	17576
4395	45882/282	13185	8790	17580
4396	338	13188	8792	17584
4397	22206/31	13191	8794	17588
4398	500-0111	13194	8796	17592
4399	\N	13197	8798	17596
4400	62	13200	8800	17600
4401	714	13203	8802	17604
4402	550-0564	13206	8804	17608
4403	\N	13209	8806	17612
4404	402812	13212	8808	17616
4405	19072/86	13215	8810	17620
4406	25D-243	13218	8812	17624
4407	\N	13221	8814	17628
4408	402B-1201	13224	8816	17632
4409	U20606794	13227	8818	17636
4410	20696/347	13230	8820	17640
4411	93498967	13233	8822	17644
4412	8223	13236	8824	17648
4413	17702266	13239	8826	17652
4414	STFA001	13242	8828	17656
4415	194	13245	8830	17660
4416	126	13248	8832	17664
4417	582	13251	8834	17668
4418	47377/496	13254	8836	17672
4419	544	13257	8838	17676
4420	33442234	13260	8840	17680
4421	21079/1131	13263	8842	17684
4422	70-1186 / 70-1346	13266	8844	17688
4423	46685/284	13269	8846	17692
4424	1	13272	8848	17696
4425	49714/1524	13275	8850	17700
4426	290	13278	8852	17704
4427	942703	13281	8854	17708
4428	4473	13284	8856	17712
4429	20083/153	13287	8858	17716
4430	734	13290	8860	17720
4431	44663/630	13293	8862	17724
4432	10433	13296	8864	17728
4433	427	13299	8866	17732
4434	10389/120	13302	8868	17736
4435	4597	13305	8870	17740
4436	32	13308	8872	17744
4437	83414451	13311	8874	17748
4438	86A-742	13314	8876	17752
4439	110048	13317	8878	17756
4440	U20603872	13320	8880	17760
4441	19109	13323	8882	17764
4442	25489/505	13326	8884	17768
4443	74	13329	8886	17772
4444	1347703	13332	8888	17776
4445	9773050000000	13335	8890	17780
4446	1025	13338	8892	17784
4447	31-7952246	13341	8894	17788
4448	19582/639	13344	8896	17792
4449	9711252	13347	8898	17796
4450	11440	13350	8900	17800
4451	110313	13353	8902	17804
4452	421C02172	13356	8904	17808
4453	6344506	13359	8906	17812
4454	20054/718	13362	8908	17816
4455	22748/555/1023413428	13365	8910	17820
4456	\N	13368	8912	17824
4457	1G221-39	13371	8914	17828
4458	UC-87 /	13374	8916	17832
4459	4072	13377	8918	17836
4460	23916/187	13380	8920	17840
4461	208B-0199	13383	8922	17844
4462	93492278	13386	8924	17848
4463	746	13389	8926	17852
4464	152/26N	13392	8928	17856
4465	9173	13395	8930	17860
4466	\N	13398	8932	17864
4467	3402	13401	8934	17868
4468	45901/293	13404	8936	17872
4469	528	13407	8938	17876
4470	35-388	13410	8940	17880
4471	208B-0179	13413	8942	17884
4472	678	13416	8944	17888
4473	120257	13419	8946	17892
4474	126	13422	8948	17896
4475	110458	13425	8950	17900
4476	1769	13428	8952	17904
4477	325	13431	8954	17908
4478	\N	13434	8956	17912
4479	21013/393	13437	8958	17916
4480	211	13440	8960	17920
4481	208B-0089	13443	8962	17924
4482	500-0135	13446	8964	17928
4483	\N	13449	8966	17932
4484	37308502	13452	8968	17936
4485	5161	13455	8970	17940
4486	10365	13458	8972	17944
4487	208B-0455	13461	8974	17948
4488	10424	13464	8976	17952
4489	9510640	13467	8978	17956
4490	4829	13470	8980	17960
4491	2048	13473	8982	17964
4492	\N	13476	8984	17968
4493	27288/2577	13479	8986	17972
4494	280	13482	8988	17976
4495	6	13485	8990	17980
4496	10670	13488	8992	17984
4497	506	13491	8994	17988
4498	\N	13494	8996	17992
4499	11440	13497	8998	17996
4500	27307610	13500	9000	18000
4501	32-7340021	13503	9002	18004
4502	10415	13506	9004	18008
4503	250	13509	9006	18012
4504	31-033B	13512	9008	18016
4505	41	13515	9010	18020
4506	492	13518	9012	18024
4507	22487/605	13521	9014	18028
4508	45942/349	13524	9016	18032
4509	8220	13527	9018	18036
4510	18053048	13530	9020	18040
4511	21062072	13533	9022	18044
4512	550-0013	13536	9024	18048
4513	820	13539	9026	18052
4514	66360	13542	9028	18056
4515	8217	13545	9030	18060
4516	735	13548	9032	18064
4517	89A-813	13551	9034	18068
4518	214	13554	9036	18072
4519	208B-0432	13557	9038	18076
4520	BB-218	13560	9040	18080
4521	47446/561	13563	9042	18084
4522	5067	13566	9044	18088
4523	54	13569	9046	18092
4524	9441037	13572	9048	18096
4525	\N	13575	9050	18100
4526	208B-0504	13578	9052	18104
4527	4516003	13581	9054	18108
4528	110285	13584	9056	18112
4529	TC-359	13587	9058	18116
4530	78A-281	13590	9060	18120
4531	402C0515	13593	9062	18124
4532	4520422606	13596	9064	18128
4533	28556/2851	13599	9066	18132
4534	4729	13602	9068	18136
4535	36572094888	13605	9070	18140
4536	19882/175	13608	9072	18144
4537	178	13611	9074	18148
4538	208B-0013	13614	9076	18152
4539	5342801	13617	9078	18156
4540	871919	13620	9080	18160
4541	10576	13623	9082	18164
4542	47069/175	13626	9084	18168
4543	P-130	13629	9086	18172
4544	3341605	13632	9088	18176
4545	297	13635	9090	18180
4546	AN32052	13638	9092	18184
4547	578	13641	9094	18188
4548	208B-0142	13644	9096	18192
4549	208B-0193	13647	9098	18196
4550	19843/735	13650	9100	18200
4551	340B-377	13653	9102	18204
4552	22288/1712	13656	9104	18208
4553	708	13659	9106	18212
4554	1203	13662	9108	18216
4555	53-13	13665	9110	18220
4556	21622/1431	13668	9112	18224
4557	23041/962	13671	9114	18228
4558	007H03	13674	9116	18232
4559	9431835	13677	9118	18236
4560	\N	13680	9120	18240
4561	\N	13683	9122	18244
4562	TC-233	13686	9124	18248
4563	2735	13689	9126	18252
4564	63470096	13692	9128	18256
4565	306-3	13695	9130	18260
4566	83481440	13698	9132	18264
4567	SH1946	13701	9134	18268
4568	1997	13704	9136	18272
4569	AC-651B	13707	9138	18276
4570	110343	13710	9140	18280
4571	8075/2017	13713	9142	18284
4572	3054	13716	9144	18288
4573	UE-238	13719	9146	18292
4574	39	13722	9148	18296
4575	\N	13725	9150	18300
4576	402C0512	13728	9152	18304
4577	710	13731	9154	18308
4578	402C0244	13734	9156	18312
4579	13143	13737	9158	18316
4580	10476	13740	9160	18320
4581	720	13743	9162	18324
4582	10408	13746	9164	18328
4583	48448/465	13749	9166	18332
4584	595	13752	9168	18336
4585	3781	13755	9170	18340
4586	8345502	13758	9172	18344
4587	223/63N	13761	9174	18348
4588	\N	13764	9176	18352
4589	E1007	13767	9178	18356
4590	550	13770	9180	18360
4591	27307901	13773	9182	18364
4592	1977	13776	9184	18368
4593	18369/125	13779	9186	18372
4594	9721053	13782	9188	18376
4595	120076	13785	9190	18380
4596	284	13788	9192	18384
4597	20562	13791	9194	18388
4598	8345506	13794	9196	18392
4599	207-00105	13797	9198	18396
4600	21119	13800	9200	18400
4601	208B-0061	13803	9202	18404
4602	\N	13806	9204	18408
4603	501-0058	13809	9206	18412
4604	2028	13812	9208	18416
4605	10594	13815	9210	18420
4606	415	13818	9212	18424
4607	4342510	13821	9214	18428
4608	\N	13824	9216	18432
4609	3309	13827	9218	18436
4610	4561	13830	9220	18440
4611	4839	13833	9222	18444
4612	10508	13836	9224	18448
4613	17940/355	13839	9226	18452
4614	32963	13842	9228	18456
4615	763	13845	9230	18460
4616	20800235	13848	9232	18464
4617	\N	13851	9234	18468
4618	3340909	13854	9236	18472
4619	761	13857	9238	18476
4620	1037	13860	9240	18480
4621	U-205	13863	9242	18484
4622	90A-846	13866	9244	18488
4623	108	13869	9246	18492
4624	11831	13872	9248	18496
4625	724	13875	9250	18500
4626	24-270	13878	9252	18504
4627	25378/2732	13881	9254	18508
4628	777	13884	9256	18512
4629	48409/490	13887	9258	18516
4630	694	13890	9260	18520
4631	270	13893	9262	18524
4632	912620	13896	9264	18528
4633	49163/1111	13899	9266	18532
4634	\N	13902	9268	18536
4635	473	13905	9270	18540
4636	2810	13908	9272	18544
4637	110210	13911	9274	18548
4638	73	13914	9276	18552
4639	U- 45	13917	9278	18556
4640	45499/1011	13920	9280	18560
4641	22168/1770	13923	9282	18564
4642	25064	13926	9284	18568
4643	3213100	13929	9286	18572
4644	208B-0341	13932	9288	18576
4645	\N	13935	9290	18580
4646	95	13938	9292	18584
4647	110416	13941	9294	18588
4648	LJ-251	13944	9296	18592
4649	8091	13947	9298	18596
4650	UE-347	13950	9300	18600
4651	48468/518	13953	9302	18604
4652	53536/2160	13956	9304	18608
4653	9331730	13959	9306	18612
4654	20389/251	13962	9308	18616
4655	805	13965	9310	18620
4656	404-0690	13968	9312	18624
4657	32-1261	13971	9314	18628
4658	1806	13974	9316	18632
4659	26	13977	9318	18636
4660	110002	13980	9320	18640
4661	3217	13983	9322	18644
4662	31-8352039	13986	9324	18648
4663	28108	13989	9326	18652
4664	35-189	13992	9328	18656
4665	62	13995	9330	18660
4666	60	13998	9332	18664
4667	24542/282	14001	9334	18668
4668	U20602610	14004	9336	18672
4669	\N	14007	9338	18676
4670	47418/570	14010	9340	18680
4671	12	14013	9342	18684
4672	208-00037	14016	9344	18688
4673	1083800305	14019	9346	18692
4674	31-7405210	14022	9348	18696
4675	20700347	14025	9350	18700
4676	851429	14028	9352	18704
4677	525-0136	14031	9354	18708
4678	31-7300948	14034	9356	18712
4679	3924	14037	9358	18716
4680	2030	14040	9360	18720
4681	46890/77	14043	9362	18724
4682	35-194	14046	9364	18728
4683	208B-0220	14049	9366	18732
4684	22480/448	14052	9368	18736
4685	36	14055	9370	18740
4686	4520420000000	14058	9372	18744
4687	796	14061	9374	18748
4688	\N	14064	9376	18752
4689	110-455	14067	9378	18756
4690	213	14070	9380	18760
4691	SH-3763	14073	9382	18764
4692	861620	14076	9384	18768
4693	\N	14079	9386	18772
4694	426	14082	9388	18776
4695	9340706	14085	9390	18780
4696	86	14088	9392	18784
4697	53077/1995	14091	9394	18788
4698	\N	14094	9396	18792
4699	U20604099	14097	9398	18796
4700	45947/341	14100	9400	18800
4701	23060/1069	14103	9402	18804
4702	9620847	14106	9404	18808
4703	12344	14109	9406	18812
4704	624	14112	9408	18816
4705	314	14115	9410	18820
4706	8346004	14118	9412	18824
4707	ZZX3201	14121	9414	18828
4708	208-00311	14124	9416	18832
4709	55-050	14127	9418	18836
4710	21447/508	14130	9420	18840
4711	703	14133	9422	18844
4712	35-646	14136	9424	18848
4713	694	14139	9426	18852
4714	465-5	14142	9428	18856
4715	UC-133	14145	9430	18860
4716	834	14148	9432	18864
4717	\N	14151	9434	18868
4718	SH-3064	14154	9436	18872
4719	31-8152180	14157	9438	18876
4720	10535	14160	9440	18880
4721	31-7652172	14163	9442	18884
4722	\N	14166	9444	18888
4723	6708	14169	9446	18892
4724	8027	14172	9448	18896
4725	912	14175	9450	18900
4726	383	14178	9452	18904
4727	163	14181	9454	18908
4728	22280/671	14184	9456	18912
4729	154	14187	9458	18916
4730	12475	14190	9460	18920
4731	5168	14193	9462	18924
4732	203	14196	9464	18928
4733	4073	14199	9466	18932
4734	654	14202	9468	18936
4735	\N	14205	9470	18940
4736	AB10-454	14208	9472	18944
4737	7952056/79951271	14211	9474	18948
4738	\N	14214	9476	18952
4739	208-00082	14217	9478	18956
4740	31-8152136	14220	9480	18960
4741	481	14223	9482	18964
4742	31-8252024	14226	9484	18968
4743	208B-0709	14229	9486	18972
4744	32984	14232	9488	18976
4745	BB-47	14235	9490	18980
4746	\N	14238	9492	18984
4747	8275013	14241	9494	18988
4748	47501/571	14244	9496	18992
4749	\N	14247	9498	18996
4750	SH-1953	14250	9500	19000
4751	208B-0192	14253	9502	19004
4752	5991	14256	9504	19008
4753	335-0064	14259	9506	19012
4754	86	14262	9508	19016
4755	187010602	14265	9510	19020
4756	28023/1099	14268	9512	19024
4757	27312009	14271	9514	19028
4758	3406	14274	9516	19032
4759	TC-255	14277	9518	19036
4760	PESA001	14280	9520	19040
4761	463	14283	9522	19044
4762	27	14286	9524	19048
4763	LJ-165	14289	9526	19052
4764	13863	14292	9528	19056
4765	19055	14295	9530	19060
4766	BB-158	14298	9532	19064
4767	201	14301	9534	19068
4768	AT-469	14304	9536	19072
4769	35-445	14307	9538	19076
4770	N24A-73	14310	9540	19080
4771	SH3723	14313	9542	19084
4772	\N	14316	9544	19088
4773	25321/2113	14319	9546	19092
4774	3684/3420	14322	9548	19096
4775	86A-738	14325	9550	19100
4776	UC-142	14328	9552	19104
4777	254	14331	9554	19108
4778	10609	14334	9556	19112
4779	303	14337	9558	19116
4780	501-0150	14340	9560	19120
4781	\N	14343	9562	19124
4782	96168	14346	9564	19128
4783	208B-0580	14349	9566	19132
4784	C-006	14352	9568	19136
4785	10412	14355	9570	19140
4786	9740856	14358	9572	19144
4787	347002	14361	9574	19148
4788	233	14364	9576	19152
4789	86A-735	14367	9578	19156
4790	760341	14370	9580	19160
4791	AJE 001-10	14373	9582	19164
4792	43451530	14376	9584	19168
4793	32-7840168	14379	9586	19172
4794	63	14382	9588	19176
4795	2477	14385	9590	19180
4796	1AJ005-22	14388	9592	19184
4797	271	14391	9594	19188
4798	25-053	14394	9596	19192
4799	402B1014	14397	9598	19196
4800	C033	14400	9600	19200
4801	28142/718	14403	9602	19204
4802	24602/365	14406	9604	19208
4803	22332/169	14409	9606	19212
4804	21873/41	14412	9608	19216
4805	892401	14415	9610	19220
4806	11443	14418	9612	19224
4807	861705	14421	9614	19228
4808	17268521	14424	9616	19232
4809	90A-866	14427	9618	19236
4810	53009/ 525A-0036	14430	9620	19240
4811	810	14433	9622	19244
4812	20800088	14436	9624	19248
4813	AT-043	14439	9626	19252
4814	TC-250	14442	9628	19256
4815	\N	14445	9630	19260
4816	45108	14448	9632	19264
4817	420	14451	9634	19268
4818	182005301	14454	9636	19272
4819	25-088	14457	9638	19276
4820	1AJ003-03	14460	9640	19280
4821	E-3291	14463	9642	19284
4822	22063/432	14466	9644	19288
4823	208B0788	14469	9646	19292
4824	1023411375	14472	9648	19296
4825	208B-0689	14475	9650	19300
4826	24-247	14478	9652	19304
4827	730208	14481	9654	19308
4828	861618	14484	9656	19312
4829	560-0077	14487	9658	19316
4830	2167	14490	9660	19320
4831	31-7952127	14493	9662	19324
4832	5414	14496	9664	19328
4833	4702	14499	9666	19332
4834	120-024	14502	9668	19336
4835	752	14505	9670	19340
4836	24403/1706	14508	9672	19344
4837	511	14511	9674	19348
4838	20700204	14514	9676	19352
4839	A12244	14517	9678	19356
4840	19692/498	14520	9680	19360
4841	35-543	14523	9682	19364
4842	91A-871	14526	9684	19368
4843	4342610	14529	9686	19372
4844	ZR726001	14532	9688	19376
4845	M-3719	14535	9690	19380
4846	1G137-53	14538	9692	19384
4847	\N	14541	9694	19388
4848	208B-0049	14544	9696	19392
4849	912537	14547	9698	19396
4850	3152	14550	9700	19400
4851	AC-620	14553	9702	19404
4852	23308/127	14556	9704	19408
4853	U2060610	14559	9706	19412
4854	2508	14562	9708	19416
4855	T20603622	14565	9710	19420
4856	\N	14568	9712	19424
4857	266	14571	9714	19428
4858	25307/2135	14574	9716	19432
4859	49522/17023	14577	9718	19436
4860	851402	14580	9720	19440
4861	21843/386	14583	9722	19444
4862	458	14586	9724	19448
4863	1782	14589	9726	19452
4864	\N	14592	9728	19456
4865	\N	14595	9730	19460
4866	31-7305093	14598	9732	19464
4867	5041	14601	9734	19468
4868	1006 / 24635/258	14604	9736	19472
4869	310I0145	14607	9738	19476
4870	19335	14610	9740	19480
4871	903	14613	9742	19484
4872	860	14616	9744	19488
4873	760100	14619	9746	19492
4874	828	14622	9748	19496
4875	\N	14625	9750	19500
4876	51483203027	14628	9752	19504
4877	5265	14631	9754	19508
4878	70802	14634	9756	19512
4879	\N	14637	9758	19516
4880	726	14640	9760	19520
4881	1A-J008-19	14643	9762	19524
4882	25-073	14646	9764	19528
4883	120043	14649	9766	19532
4884	650-0221	14652	9768	19536
4885	34-8233048	14655	9770	19540
4886	CU20606136	14658	9772	19544
4887	26	14661	9774	19548
4888	279	14664	9776	19552
4889	IL38002/IL38004	14667	9778	19556
4890	60-242	14670	9780	19560
4891	208B-0775	14673	9782	19564
4892	B-245	14676	9784	19568
4893	20221	14679	9786	19572
4894	697	14682	9788	19576
4895	384	14685	9790	19580
4896	10571	14688	9792	19584
4897	871812	14691	9794	19588
4898	1990	14694	9796	19592
4899	140	14697	9798	19596
4900	\N	14700	9800	19600
4901	208B-0143	14703	9802	19604
4902	322	14706	9804	19608
4903	204	14709	9806	19612
4904	208B-0392	14712	9808	19616
4905	174	14715	9810	19620
4906	810636	14718	9812	19624
4907	E-3241	14721	9814	19628
4908	UE-233	14724	9816	19632
4909	11100	14727	9818	19636
4910	89901508	14730	9820	19640
4911	158	14733	9822	19644
4912	53465941	14736	9824	19648
4913	9346405	14739	9826	19652
4914	1AJ006-04	14742	9828	19656
4915	421-0051	14745	9830	19660
4916	63471155	14748	9832	19664
4917	10254	14751	9834	19668
4918	831109	14754	9836	19672
4919	22700/885	14757	9838	19676
4920	261	14760	9840	19680
4921	E-348	14763	9842	19684
4922	63467003	14766	9844	19688
4923	2042181195	14769	9846	19692
4924	18502037	14772	9848	19696
4925	45-093	14775	9850	19700
4926	\N	14778	9852	19704
4927	31-7405203	14781	9854	19708
4928	\N	14784	9856	19712
4929	570137D	14787	9858	19716
4930	7377	14790	9860	19720
4931	\N	14793	9862	19724
4932	18052039	14796	9864	19728
4933	208B-0549	14799	9866	19732
4934	4926	14802	9868	19736
4935	\N	14805	9870	19740
4936	\N	14808	9872	19744
4937	21169/429	14811	9874	19748
4938	402C0413	14814	9876	19752
4939	902505	14817	9878	19756
4940	TC-349	14820	9880	19760
4941	1695	14823	9882	19764
4942	35A-509	14826	9884	19768
4943	208B-0713	14829	9886	19772
4944	\N	14832	9888	19776
4945	861702	14835	9890	19780
4946	24637	14838	9892	19784
4947	208B-0305	14841	9894	19788
4948	25-116	14844	9896	19792
4949	3025	14847	9898	19796
4950	1864	14850	9900	19800
4951	31306	14853	9902	19804
4952	\N	14856	9904	19808
4953	17	14859	9906	19812
4954	1G238-12	14862	9908	19816
4955	567	14865	9910	19820
4956	258036	14868	9912	19824
4957	208-0289	14871	9914	19828
4958	\N	14874	9916	19832
4959	SH-1959	14877	9918	19836
4960	170	14880	9920	19840
4961	AT-439B	14883	9922	19844
4962	\N	14886	9924	19848
4963	65	14889	9926	19852
4964	47062	14892	9928	19856
4965	24B-190	14895	9930	19860
4966	21090	14898	9932	19864
4967	26283	14901	9934	19868
4968	9540844	14904	9936	19872
4969	208B-0658	14907	9938	19876
4970	UE-365	14910	9940	19880
4971	BB-652	14913	9942	19884
4972	20273	14916	9944	19888
4973	500-0289	14919	9946	19892
4974	1725351	14922	9948	19896
4975	63468036	14925	9950	19900
4976	560-0567	14928	9952	19904
4977	391	14931	9954	19908
4978	UB-37	14934	9956	19912
4979	32-40920	14937	9958	19916
4980	53549	14940	9960	19920
4981	11678	14943	9962	19924
4982	208B-0926	14946	9964	19928
4983	AC-676	14949	9966	19932
4984	\N	14952	9968	19936
4985	1400101	14955	9970	19940
4986	120070	14958	9972	19944
4987	1G139-35	14961	9974	19948
4988	53460827	14964	9976	19952
4989	872009	14967	9978	19956
4990	651	14970	9980	19960
4991	1611/82	14973	9982	19964
4992	\N	14976	9984	19968
4993	\N	14979	9986	19972
4994	247	14982	9988	19976
4995	31-8052199	14985	9990	19980
4996	\N	14988	9992	19984
4997	353	14991	9994	19988
4998	68	14994	9996	19992
4999	U-15	14997	9998	19996
5000	208B-0784	15000	10000	20000
5001	SH3123	15003	10002	20004
5002	82A-556	15006	10004	20008
5003	60065	15009	10006	20012
5004	197	15012	10008	20016
5005	265-10	15015	10010	20020
5006	\N	15018	10012	20024
5007	905	15021	10014	20028
5008	347606	15024	10016	20032
5009	449	15027	10018	20036
5010	231	15030	10020	20040
5011	10161	15033	10022	20044
5012	22170	15036	10024	20048
5013	34331	15039	10026	20052
5014	593	15042	10028	20056
5015	875	15045	10030	20060
5016	BB-805	15048	10032	20064
5017	35A-345	15051	10034	20068
5018	762	15054	10036	20072
5019	7697	15057	10038	20076
5020	3009	15060	10040	20080
5021	49189/1173	15063	10042	20084
5022	1037	15066	10044	20088
5023	0208B-0866	15069	10046	20092
5024	\N	15072	10048	20096
5025	AJE001-15	15075	10050	20100
5026	110071	15078	10052	20104
5027	33448390	15081	10054	20108
5028	\N	15084	10056	20112
5029	1G177-44	15087	10058	20116
5030	110301	15090	10060	20120
5031	\N	15093	10062	20124
5032	871923	15096	10064	20128
5033	4195	15099	10066	20132
5034	22075/630	15102	10068	20136
5035	23438122	15105	10070	20140
5036	P21000098	15108	10072	20144
5037	560-0146	15111	10074	20148
5038	174	15114	10076	20152
5039	\N	15117	10078	20156
5040	500-0115	15120	10080	20160
5041	2205	15123	10082	20164
5042	27308107	15126	10084	20168
5043	43454623	15129	10086	20172
5044	902426	15132	10088	20176
5045	5118	15135	10090	20180
5046	23	15138	10092	20184
5047	21127/915	15141	10094	20188
5048	790304	15144	10096	20192
5049	AC-551B	15147	10098	20196
5050	17311107	15150	10100	20200
5051	DC-818B	15153	10102	20204
5052	LD-220	15156	10104	20208
5053	89	15159	10106	20212
5054	4342404	15162	10108	20216
5055	6991004	15165	10110	20220
5056	79901104	15168	10112	20224
5057	289	15171	10114	20228
5058	258	15174	10116	20232
5059	760508	15177	10118	20236
5060	29099/2982	15180	10120	20240
5061	49484/1315	15183	10122	20244
5062	22580/87	15186	10124	20248
5063	9005	15189	10126	20252
5064	22136/738	15192	10128	20256
5065	37312901	15195	10130	20260
5066	525-0176	15198	10132	20264
5067	207-0508	15201	10134	20268
5068	2053	15204	10136	20272
5069	2400901	15207	10138	20276
5070	208B-0542	15210	10140	20280
5071	22734/818	15213	10142	20284
5072	208B-1052	15216	10144	20288
5073	4386	15219	10146	20292
5074	32471/1535	15222	10148	20296
5075	47562/685	15225	10150	20300
5076	J-27	15228	10152	20304
5077	36525307036	15231	10154	20308
5078	535	15234	10156	20312
5079	35-218	15237	10158	20316
5080	257153	15240	10160	20320
5081	4341803	15243	10162	20324
5082	318	15246	10164	20328
5083	97305605	15249	10166	20332
5084	208B0469	15252	10168	20336
5085	SH-3735/SH-3720	15255	10170	20340
5086	TC-396	15258	10172	20344
5087	421C0337	15261	10174	20348
5088	35-115	15264	10176	20352
5089	U-218	15267	10178	20356
5090	208B-0591	15270	10180	20360
5091	912532	15273	10182	20364
5092	\N	15276	10184	20368
5093	36547097933	15279	10186	20372
5094	\N	15282	10188	20376
5095	3003	15285	10190	20380
5096	208B-0381	15288	10192	20384
5097	547	15291	10194	20388
5098	202	15294	10196	20392
5099	648	15297	10198	20396
5100	35A-293	15300	10200	20400
5101	\N	15303	10202	20404
5102	U20605582	15306	10204	20408
5103	5141	15309	10206	20412
5104	708	15312	10208	20416
5105	208B-0396	15315	10210	20420
5106	1512	15318	10212	20424
5107	3341506	15321	10214	20428
5108	442	15324	10216	20432
5109	10243	15327	10218	20436
5110	1AJ008-21	15330	10220	20440
5111	19430/366	15333	10222	20444
5112	110-396	15336	10224	20448
5113	4880	15339	10226	20452
5114	894	15342	10228	20456
5115	7472	15345	10230	20460
5116	88A788	15348	10232	20464
5117	8005	15351	10234	20468
5118	\N	15354	10236	20472
5119	8229	15357	10238	20476
5120	34653/2039 /14500965	15360	10240	20480
5121	2075/75	15363	10242	20484
5122	1G137-26 	15366	10244	20488
5123	22891/998	15369	10246	20492
5124	470991045/2010	15372	10248	20496
5125	33125	15375	10250	20500
5126	32-8106055	15378	10252	20504
5127	310R-1333	15381	10254	20508
5128	24070	15384	10256	20512
5129	31-627	15387	10258	20516
5130	11308	15390	10260	20520
5131	348	15393	10262	20524
5132	525-0149	15396	10264	20528
5133	\N	15399	10266	20532
5134	11362	15402	10268	20536
5135	BL-131	15405	10270	20540
5136	BB-234	15408	10272	20544
5137	25664/2393	15411	10274	20548
5138	1168	15414	10276	20552
5139	0049FF	15417	10278	20556
5140	\N	15420	10280	20560
5141	48390	15423	10282	20564
5142	1013405192	15426	10284	20568
5143	484	15429	10286	20572
5144	\N	15432	10288	20576
5145	35071/2079	15435	10290	20580
5146	742	15438	10292	20584
5147	851335	15441	10294	20588
5148	483	15444	10296	20592
5149	\N	15447	10298	20596
5150	550-0246	15450	10300	20600
5151	\N	15453	10302	20604
5152	\N	15456	10304	20608
5153	841217	15459	10306	20612
5154	99901908	15462	10308	20616
5155	23220/1084	15465	10310	20620
5156	265-48	15468	10312	20624
5157	208B-1153	15471	10314	20628
5158	108	15474	10316	20632
5159	789	15477	10318	20636
5160	7306103	15480	10320	20640
5161	1100	15483	10322	20644
5162	4341709	15486	10324	20648
5163	LW-182	15489	10326	20652
5164	608	15492	10328	20656
5165	1306	15495	10330	20660
5166	\N	15498	10332	20664
5167	110323	15501	10334	20668
5168	44756	15504	10336	20672
5169	3341108	15507	10338	20676
5170	\N	15510	10340	20680
5171	49183/1129	15513	10342	20684
5172	\N	15516	10344	20688
5173	47302001	15519	10346	20692
5174	LJ-1594	15522	10348	20696
5175	208B0415	15525	10350	20700
5176	902521	15528	10352	20704
5177	35A-339	15531	10354	20708
5178	3341110	15534	10356	20712
5179	53185/2090	15537	10358	20716
5180	\N	15540	10360	20720
5181	208B-0732	15543	10362	20724
5182	LJ-1307	15546	10364	20728
5183	872051	15549	10366	20732
5184	31-7952162	15552	10368	20736
5185	UC-70	15555	10370	20740
5186	30314/342	15558	10372	20744
5187	BB-1026	15561	10374	20748
5188	S-043	15564	10376	20752
5189	92N/412	15567	10378	20756
5190	28	15570	10380	20760
5191	2570	15573	10382	20764
5192	\N	15576	10384	20768
5193	UE-322	15579	10386	20772
5194	1AJ007-17	15582	10388	20776
5195	AC-600	15585	10390	20780
5196	3009	15588	10392	20784
5197	47731	15591	10394	20788
5198	1609	15594	10396	20792
5199	98734295	15597	10398	20796
5200	UC-65	15600	10400	20800
5201	1151	15603	10402	20804
5202	U-65	15606	10404	20808
5203	1604	15609	10406	20812
5204	8345508	15612	10408	20816
5205	\N	15615	10410	20820
5206	1374	15618	10412	20824
5207	208B-1137	15621	10414	20828
5208	53276	15624	10416	20832
5209	548	15627	10418	20836
5210	47	15630	10420	20840
5211	\N	15633	10422	20844
5212	228/N68	15636	10424	20848
5213	8346010	15639	10426	20852
5214	53104 / 53079	15642	10428	20856
5215	1003499994	15645	10430	20860
5216	47153/185	15648	10432	20864
5217	22446/519	15651	10434	20868
5218	U-145	15654	10436	\N
5219	258186	15657	10438	\N
5220	B-76	15660	10440	\N
5221	61297	15663	10442	\N
5222	\N	15666	10444	\N
5223	10627	15669	10446	\N
5224	53148/2072	15672	10448	\N
5225	208-00327	15675	10450	\N
5226	22088	15678	10452	\N
5227	21545/525	15681	10454	\N
5228	UC-137	15684	10456	\N
5229	361	15687	10458	\N
5230	\N	15690	10460	\N
5231	25792/2353	15693	10462	\N
5232	314	15696	10464	\N
5233	6311	15699	10466	\N
5234	720	15702	10468	\N
5235	47062	15705	10470	\N
5236	45-028	15708	10472	\N
5237	206-01710	15711	10474	\N
5238	346908	15714	10476	\N
5239	1187	15717	10478	\N
5240	2500	15720	10480	\N
5241	11444	15723	10482	\N
5242	52104	15726	10484	\N
5243	1029	15729	10486	\N
5244	760629	15732	10488	\N
5245	1044	15735	10490	\N
5246	110352	15738	10492	\N
5247	650-0105	15741	10494	\N
5248	4200	15744	10496	\N
5249	\N	15747	10498	\N
5250	6344310	15750	10500	\N
5251	29789/1065	15753	10502	\N
5252	73410301	15756	10504	\N
5253	920048	15759	10506	\N
5254	403	15762	10508	\N
5255	48600/560	15765	10510	\N
5256	\N	15768	10512	\N
5257	10538	15771	10514	\N
5258	E3189	15774	10516	\N
5259	959	15777	10518	\N
5260	208B-0695	15780	10520	\N
5261	22264/753	15783	10522	\N
5262	\N	15786	10524	\N
5263	1982	15789	10526	\N
5264	5005	15792	10528	\N
5265	660	15795	10530	\N
5266	424	15798	10532	\N
5267	\N	15801	10534	\N
\.


--
-- TOC entry 2845 (class 0 OID 41739)
-- Dependencies: 206
-- Data for Name: vuelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vuelo (id, registration, route, aboard) FROM stdin;
77970	\N	Demonstration	2
77975	\N	Test flight	5
77980	\N	\N	1
77985	\N	\N	20
77990	\N	\N	30
77995	\N	\N	41
78000	\N	\N	19
78005	\N	\N	20
78010	\N	\N	22
78015	\N	\N	19
78020	\N	\N	28
78025	\N	\N	20
78030	\N	\N	20
78035	\N	\N	23
78040	\N	\N	21
78045	\N	\N	24
78050	\N	\N	18
78055	\N	\N	18
78060	\N	\N	23
78065	\N	\N	22
78070	\N	\N	19
78075	97	\N	1
78080	61	\N	1
78085	82	\N	1
78090	\N	\N	1
78095	32	\N	1
78100	G-EAHG	\N	\N
78105	77	\N	1
78110	65	\N	1
78115	72	\N	1
78120	49	\N	2
78125	44	\N	2
78130	79	\N	2
78135	204	\N	1
78140	G-EALW	\N	1
78145	317	\N	1
78150	305	\N	2
78155	308	\N	2
78160	316	\N	1
78165	F-ALAI	\N	2
78170	F-ALTA	\N	2
78175	76	\N	1
78180	\N	\N	1
78185	G-EAMA	\N	8
78190	F-ALBO	\N	1
78195	130	\N	1
78200	301	\N	3
78205	F-ALBA	\N	2
78210	67	\N	1
78215	H3021	\N	2
78220	160	\N	1
78225	196	\N	1
78230	176	\N	1
78235	222	\N	1
78240	F-ALBI	\N	2
78245	R-38	\N	46
78250	F-ADCD	Varsovie - Strasbourg - Paris	5
78255	G-AUDI	\N	3
78260	G-EATN	\N	5
78265	\N	\N	45
78270	G-EAOW/FGEAD	\N	7
78275	\N	\N	17
78280	G-EBBZ	\N	3
78285	385	\N	1
78290	F-CMAY	\N	3
78295	\N	\N	3
78300	227	\N	1
78305	G-EAYT	\N	4
78310	\N	\N	2
78315	\N	\N	1
78320	F-AEIB	\N	4
78325	F-ALJU	\N	1
78330	223	\N	1
78335	291	\N	1
78340	F-AEBY	\N	6
78345	F-AEGN	\N	2
78350	283	\N	1
78355	G-EBBS	\N	6
78360	D-257	\N	4
78365	318	\N	1
78370	L-72	Toulon - Algiers	52
78375	315	\N	1
78380	327	\N	1
78385	H-NABS	Lympne. England - Rotterdam. The Netherlands	3
78390	A16	\N	3
78395	297	\N	1
78400	F-AFBD	\N	1
78405	311	\N	1
78410	G-EBBX	\N	8
78415	R-RECA	\N	5
78420	\N	\N	4
78425	F-AFBB	\N	2
78430	H-NABM	\N	4
78435	F-AHBH	\N	2
78440	F-AFBI	\N	1
78445	\N	\N	1
78450	ZR-1	Lakehurst. NJ - S.t Louis. MO	43
78455	\N	\N	3
78460	F-AMFY	\N	2
78465	\N	\N	1
78470	\N	\N	1
78475	F-ADAI	\N	1
78480	F-AFBT	Paris - Prague	7
78485	H-NACC	\N	2
78490	D-272	\N	4
78495	F-AIEB	\N	4
78500	\N	New York - Paris	5
78505	D-468	\N	4
78510	G-EBMS	\N	12
78515	\N	\N	3
78520	2	\N	1
78525	H-NADH	\N	2
78530	F-ALRA	\N	1
78535	G-AUED	\N	3
78540	\N	\N	1
78545	626	\N	1
78550	D-729	\N	2
78555	\N	\N	3
78560	D-206	\N	5
78565	\N	Croydon - Schiphol	11
78570	\N	\N	1
78575	NC776	Sightseeing	12
78580	D-1177	\N	4
78585	D-585	Berlin - Munich	6
78590	F-AGBN	\N	2
78595	\N	\N	4
78600	\N	\N	1
78605	K-SALD	\N	6
78610	\N	\N	1
78615	\N	\N	2
78620	F-AFGS	\N	1
78625	\N	\N	4
78630	\N	Minola - Albany - Buffalo	3
78635	\N	\N	2
78640	F-AHEQ	\N	2
78645	\N	\N	2
78650	F-AEEH	\N	1
78655	NC280	\N	2
78660	\N	\N	10
78665	F-AEFC	\N	2
78670	\N	\N	2
78675	M-CCCC	\N	9
78680	F-AIMQ	\N	1
78685	NC1492	\N	2
78690	D-583	\N	5
78695	D-74	\N	5
78700	\N	Chicago - Dallas	1
78705	K-SALB	\N	6
78710	G-EBLB	Testing	4
78715	H-NABR	\N	1
78720	G-CATX	Victoria - Seattle	7
78725	\N	\N	3
78730	G-AUHI	\N	2
78735	NC7242	\N	7
78740	D-180	\N	3
78745	\N	\N	3
78750	\N	\N	1
78755	F-AIMN	\N	2
78760	F-AISN	\N	2
78765	\N	Cleveland - Chicago	3
78770	\N	\N	1
78775	\N	Cleveland - Louisville	3
78780	NC7862	San Antonio - Amarillo - Tulsa - Denver	5
78785	P-BACA	\N	14
78790	\N	\N	6
78795	D-1473	\N	4
78800	\N	Cleveland - Chicago	1
78805	\N	\N	4
78810	F-AEHX	\N	3
78815	\N	\N	1
78820	\N	\N	1
78825	I-AZDA	\N	9
78830	\N	\N	1
78835	\N	\N	2
78840	NC7683	Sightseeing	15
78845	NC7888	Los Angeles - Phoenix - El Paso	4
78850	NC9636 / 28-037	San Diego - Phoenix	6
78855	H-MABC	\N	2
78860	F-AISX	\N	5
78865	NC9700	Santiago de Cuba - Havana	5
78870	F-AFEJ	\N	2
78875	G-EBMT	\N	13
78880	NC7416	St. Paul - Minneapolis	8
78885	D-1620	\N	5
78890	\N	\N	1
78895	NC870E	\N	4
78900	\N	\N	1
78905	CCCP-217	\N	1
78910	D-757	\N	5
78915	NR859E	\N	2
78920	NC9649	Albuquerque - Los Angeles	8
78925	G-EBMZ	London. England - India	5
78930	F-AIUJ	\N	5
78935	\N	Tijuana - Nogales	2
78940	\N	\N	1
78945	G-AADN	\N	7
78950	\N	Cleveland - Louisville	1
78955	\N	Bremerton	2
78960	NC46M	Mexico City - Juarez	4
78965	D-903	Amsterdam - Croyden	8
78970	F-AIGB	\N	3
78975	\N	\N	1
78980	\N	\N	1
78985	F-AJDA	\N	3
78990	D-1594	\N	3
78995	\N	\N	5
79000	NC184E	\N	1
79005	F-AJJK	\N	3
79010	NC9689	Aqua Caliente. Mexico - Los Angeles	16
79015	F-AJCL	\N	2
79020	\N	Wichita - Kansas City. KS	5
79025	\N	Newark. NJ - Hartford. CT	1
79030	F-FHMY	\N	2
79035	\N	Albany. NY - Jersey City. NJ	4
79040	F-AJPD	\N	4
79045	NC9675	\N	15
79050	D-864	Stettin - Norway	8
79055	NC-394H	\N	5
79060	OK-FOR	Prague - Brun -  Pressburg	11
79065	OO-AIN	\N	2
79070	\N	Calgary - Moosejaw	3
79075	G-FAAW	Cardington. England - Karachi. Pakistan	54
79080	D-1930	Berlin - Vienna	8
79085	F-AJUU	Casablanca - Bahat - Toulouse	4
79090	NC103W	\N	3
79095	G-EBIX	Paris. France - London. England	6
79100	\N	\N	1
79105	P-BAHA	\N	9
79110	NC5340	Burbank. CA - Oakland. CA	3
79115	\N	Shanghai - Hankow	6
79120	OO-AIL	\N	2
79125	NC741K	Portland - Pasco	1
79130	ZK-ACA	\N	1
79135	\N	Winnigeg - Moosejaw	3
79140	F-AITX	\N	3
79145	VH-UMF	\N	8
79150	NC-999	Kansas City - Wichita -  Los Angeles	8
79155	D-1928	\N	10
79160	NC5390	San Diego - Los Angeles	2
79165	VH-UNR	\N	1
79170	NC397E	\N	1
79175	PH-AEO	Saigon - Karachi	4
79180	NC857E	\N	3
79185	D-1455	Cologne - Saarbrucken	4
79190	NC8497	Chicago - Detroit	2
79195	VH-UGF	\N	2
79200	\N	\N	1
79205	\N	Constantinople - Budapest	7
79210	NC9662	\N	6
79215	NC606	\N	1
79220	NC10347	Oakland. CA - Seattle. WA	4
79225	D-1717	\N	3
79230	P-BALSA	\N	3
79235	NC12221	Newark. NJ  - Camden. NJ - Washington DC	5
79240	\N	\N	3
79245	NC7465	\N	1
79250	\N	Nanking - Peiking	3
79255	NC10338	Portland.  WA - Pasco. WA	1
79260	NC433E	Kansas City - Chicago	6
79265	PH-AFO	\N	7
79270	F-AIOX	\N	2
79275	\N	Port Colombus. OH - Louisville. KY	5
79280	\N	Rockford - Chicago. IL - Madison. WI	1
79285	\N	San Francisco - Bakersfield - Los Angeles. CA	8
79290	\N	Miami - Bimini	5
79295	\N	Chicago - Kalamazoo	1
79300	NC7470	\N	2
79305	F-AJOX	\N	3
79310	\N	Training	5
79315	\N	Phoenix. AZ - Los Angeles. CA	7
79320	\N	Columbus - McKeesport	1
79325	\N	\N	3
79330	NC191E	\N	1
79335	\N	\N	1
79340	NC830M	\N	2
79345	NC5589	San Diego - Burbank - Oakland	3
79350	NC403H	Santiago. Chile - Mendosa. Argentina	9
79355	F-AIQY	\N	7
79360	SE-AAE	\N	2
79365	NC9716	El Paso - Dallas	4
79370	F-AIFE	\N	2
79375	VH-UPM	\N	3
79380	\N	\N	1
79385	\N	\N	2
79390	\N	\N	2
79395	D-724	Nuremberg - Frankfort	5
79400	\N	Little Rock. AR - Memphis. TN	2
79405	NC9650	\N	2
79410	NC842M	\N	1
79415	VH-UMJ	\N	2
79420	F-AISV	\N	1
79425	NC185H	Test flight	2
79430	N490W	\N	1
79435	NC11721	Big Springs - San Antonio	1
79440	NC431H	\N	3
79445	NC9723	Mendoza. Argentina - Santiago. Chili	2
79450	NC12226	Burbank - San Francisco	3
79455	G-AACI	Cologne. Germany - Croydon. England	15
79460	D-534	\N	2
79465	ZRS-4	\N	76
79470	F-ALCE	\N	6
79475	D-4	\N	4
79480	F-AJIX	Paris - Morroco	6
79485	\N	\N	1
79490	NC9607	\N	5
79495	YU-SAH	\N	8
79500	NC13304	Cleveland - Chicago	10
79505	F-AJMI	\N	2
79510	NC13345	Seattle. WA - Dallas. TX	9
79515	NC12292	\N	1
79520	\N	Canton - Shanghi	8
79525	\N	Test flight	20
79530	NC13324	\N	2
79535	D-1403	Berlin - Hamburg	8
79540	ZS-AEB	\N	6
79545	G-ABLU	Brussels. Belgium - Croydon. England	10
79550	F-AMMY	Saigon - Paris	14
79555	F-AJKX	\N	2
79560	NC13357	Salt Lake City - Cheyenne	8
79565	F-AJPA	\N	6
79570	NC710Y	St. Louis. MO - Chicago. IL	4
79575	NC-9107	Quiddo - Cartago	6
79580	NC407H	\N	15
79585	NV17V	\N	3
79590	F-AMPH	Dieppe. France - New Haven. England	6
79595	F-AIVG	Croydon. England - Paris. France	2
79600	NC12354	New York - Chicago	7
79605	NC8417	Buenos Aires - Santiago	10
79610	D-1445	\N	7
79615	XA-BEJ	Mexico - Burbank	1
79620	NC32E	San Bernardion - Los Angeles	4
79625	CH-170	\N	12
79630	F-AILK	\N	2
79635	\N	\N	\N
79640	NC10809	Omaha - St. Joseph	5
79645	VH-UHE	\N	3
79650	VH-URN	Launceston - Melbourne	11
79655	VH-UHW	\N	4
79660	VH-USG	\N	4
79665	VH-USG	\N	4
79670	NC10809	Omaha. NB - Kansas City. MO	2
79675	D-OMAS	\N	3
79680	NC106W	Kansas City. MO - Chicago. IL	1
79685	NM-7	Santiago - Havana	8
79690	PH-AJU	Amsterdam - Batavia. Java	7
79695	NC12286	Louisville. KY - Nashville. TN	1
79700	NC13212	Newark. NJ - Columbus. OH	1
79705	D-AREN	Koenigberg - Berlin	11
79710	D-AJYP	\N	\N
79715	SU-ABI	Jerusalem - Cairo	6
79720	D-OHIL	\N	5
79725	F-ALHQ	\N	3
79730	PH-AFL	Praha. Czechoslovakia - Amsterdam. Netherlands	7
79735	NC891E	\N	1
79740	NC13785	Los Angeles - Albuquerque - Kanasas City -  Washington	14
79745	WC-7864	Sightseeing	12
79750	CCCP-I20	Demonstration	50
79755	NC725W	\N	1
79760	NC10894	Chicago - St. Louis	2
79765	\N	\N	9
79770	C-31 / F-31	\N	20
79775	PH-AQJ	Amsterdam - Sweden	20
79780	NC-492K	New Orleans. LA - Mobile. AL	2
79785	PH-AKG	Milan. Italy - Amsterdam	13
79790	NV40V	\N	\N
79795	NC14599	Dallas -  Atlanta	4
79800	NC14140	Helena - Denver	3
79805	NR12283	\N	2
79810	NC13314	Burbank. CA - Salt Lake City. UT	3
79815	VH-URT	\N	5
79820	NC13317	Salt Lake City - Cheyenne	12
79825	OH-ALI	\N	6
79830	NC725K	\N	6
79835	NC13323	Test flight	4
79840	F-AJIQ	Bahia - Aracaju	4
79845	\N	\N	14
79850	NC980Y	Dallas - Waco	1
79855	F-AJPB	\N	3
79860	F-ANRK	\N	2
79865	OO-AGN	Brussels. Belgium - Croydon. England	11
79870	D-UVOR	\N	3
79875	G-AASJ	Mirabella - Alexandria	13
79880	NC14274	Newark. NJ - Fort Worth. TX	17
79885	\N	Cochabamba - La Paz	13
79890	F-AJIR	Marseille - Tunis	6
79895	NC13767	Chicago. IL - Oklahoma City. OK	6
79900	D-ADYS	Natal. Brazil - Bathhurst. Gambia	4
79905	\N	\N	6
79910	X-ABCO	Mexico - Guatemala	14
79915	NC15152	Newwark. N.J. - Buffalo. NY	2
79920	NC13721	Newark - Los Angeles	15
79925	NC1537	Miami - Rio de Janeiro	25
79930	I-AAXZ	Turin - Milan	7
79935	D-ASOR	\N	5
79940	OO-AIF	\N	2
79945	HB-ITU	\N	2
79950	VH-UII	\N	2
79955	SE-ABA	Malmo - Amsterdam	15
79960	D-UPYM	\N	6
79965	LN-DAE	Bergen - Trondheim	7
79970	G-ABXW	Guernsey - Jersey	7
79975	\N	\N	3
79980	XA-BAY	\N	1
79985	NC16022	New Orleans - Chicago	8
79990	C-40	\N	2
79995	G-ADEB	\N	2
80000	G-ABFA	\N	11
80005	G-ACOX	\N	2
80010	NC176W	El Paso. TX - Pueblo. CO	3
80015	NC959Y	\N	4
80020	XA-BDH	\N	1
80025	G-ABWI	\N	1
80030	D-APOO	Frankfurt - Erfurt	15
80035	CCCP-D311	\N	9
80040	D-ASUI	\N	16
80045	G-AEOT	\N	4
80050	D-ASIH	\N	6
80055	F-AKGF	\N	5
80060	PH-AKL	Croydon - Amsterdam	17
80065	NC13370	Burbank - Las Vegas - Salt Lake City	7
80070	NC14935	\N	2
80075	NC13732	Miami. FL - Charleston. SC - Newark. NJ	14
80080	NC14905	Test flight	6
80085	NC14269	\N	\N
80090	NC13355	Oakland - San Francisco - Los Angeles	12
80095	NC13315	Salt Lake City - Burbank	13
80100	OO-AGR	Belgian Congo - Brussels	12
80105	NC16073	Los Angeles - San Francisco - Oakland	11
80110	VH-UHH	Brisbane - Sidney	7
80115	D-ALIX	Las Palmas. Canary Islands - Bathhurst. Gambia	4
80120	G-ADVA	Southhampton. England - Alexandria. Egypt	6
80125	NC13730	Newark - Camden - Pittsburg	13
80130	D-UPOZ	\N	6
80135	D-LZ-129	Frankfurt - Lakehurst N.J.	97
80140	D-UXUV	\N	4
80145	NR16020	Lae - Howland Island	2
80150	PH-ALF	Amsterdam - Paris	15
80155	I-SUSA	Rome. Italy - Kartoum	9
80160	NC15065	Santiago. Chili - Cristobal. Panama	14
80165	\N	Canton - Shanghi	11
80170	NC-13739	Chicago - Daytona	9
80175	NC14298	Mendosa - Cordoba	3
80180	VH-URC	\N	2
80185	F-AQBB	\N	8
80190	G-ADVC	Alexandria. Egypt  - Athens. Greece	14
80195	PH-ALS	\N	5
80200	NC16074	Cheyenne - Salt Lake City	19
80205	D-AXAV	Berlin - Mannheim	12
80210	OO-AUB	Cologne - Brussels - London	11
80215	D-AGAV	\N	3
80220	G-ADUZ	India - London	19
80225	F-AOTZ	\N	7
80230	F-AMYD	Bucharest - Vienna - Prague - Paris	3
80235	D-ABUR	Milan. Italy - Frankfurt. Germany	6
80240	NC-17388	Seattle - Billings - Chicago	10
80245	NC16734	Honolulu - Pago Pago - Auckland	7
80250	CF-BEI	Sioux Lookout - Hudson	1
80255	04062 / 0463	\N	14
80260	CCCP-V6	Moscow - Murmansk	19
80265	F-ANPB	Marseille. France - Ajaccio. Corsica	12
80270	XA-BAS	Test flight	2
80275	D-APAR	Berlin. Germany - Paris. France	3
80280	NC13789	San Francisco - Burbank	9
80285	F-ANQR	Hanoi. Vietnam - Paris. France	7
80290	VH-UNU	\N	1
80295	I-BAUS	\N	19
80300	XA-BFR	Mexico City - Juarez	6
80305	ZK-AFC	\N	2
80310	NC17394	Burbank.- St. Paul	9
80315	PP-CBC	\N	17
80320	NC18108	Newark - Cleveland - Chicago	10
80325	D-ATIO	\N	3
80330	CF-AUX	\N	1
80335	VP-KBE	\N	3
80340	NC14272	\N	4
80345	NC17383	Seattle - Chicago	10
80350	I-VOLO	Cagliari - Rome	20
80355	SP-BNG	Warsaw. Poland - Bucharest. Romania	14
80360	\N	\N	1
80365	G-ABTG	Kisumu - Alexandria	4
80370	NC14714	Alameda - Manila	15
80375	J-ANES	\N	6
80380	\N	\N	12
80385	OK-BAG	Prague - Paris. France	17
80390	PP-CAT	Guanabara - Victoria	9
80395	SP-BNJ	\N	7
80400	I-NILO	Sightseeing	13
80405	32	Hong Kong - Chungking	17
80410	VH-UXK	\N	9
80415	\N	\N	4
80420	D-AVFB	\N	13
80425	OO-AGT	Brussells - Berlin	20
80430	VH-UYC	Adelaide - Melbourne	18
80435	CF-TCL	\N	2
80440	G-ACZN	Channel Islands - Southhampton	14
80445	PH-ARY	Berlin-Amsterdam	19
80450	CF-TCL	Winnipeg - Regina - Vancouver	2
80455	D-AIVI	\N	15
80460	G-AETW	\N	6
80465	NC16066	Medford - Oakland	7
80470	\N	\N	12
80475	PH-APE	Instructional Flight	4
80480	G-AEUH	\N	13
80485	HB-ITA	Zurich - Geneva - Paris	9
80490	NC17389	Chicago - Seattle	4
80495	PP-CAY	\N	9
80500	VH-ABI	Katherine - Adelaide	4
80505	G-ADUU	New York City - Bermuda	13
80510	D-ALUS	\N	10
80515	OO-AUA	\N	3
80520	\N	\N	8
80525	NX19901	Test flight	10
80530	D-AIAV	\N	13
80535	G-ACPY	\N	6
80540	NC13727	Chicago - Dallas	12
80545	F-AOOT	\N	9
80550	G-ADVD	\N	6
80555	F-ARIC	Casablanca. Morocco - Dakar. Senegal	9
80560	\N	\N	1
80565	PH-AJK	\N	3
80570	HB-IXA	Vienna. Austria - Zurich. Switzerland	6
80575	D-AUJG	Toulouse. France - Casablanca. Morocco	7
80580	NC16933	Miami - Rio de Janerio	16
80585	G-ASEY	London - Hamburg - Copenhagen	6
80590	VT-AEL	\N	2
80595	D-AFOP	Berlin - Hanover - Cologne - London	7
80600	PH-ASM	Stockholm - Amsterdam	\N
80605	G-AFFM	\N	2
80610	M-CABA	Alcante - Morocco	10
80615	G-AFYU	Egypt - England	11
80620	I-ARPA	Rome - Rio de Janerio	7
80625	PK-AFO	\N	9
80630	G-AAGX	Jask to Sharjah	8
80635	G-AFKD	Perth. Scotland - London. England	3
80640	\N	Test flight	5
80645	OH-ALL	Tallinn. Estonia - Helsinki. Finland	9
80650	F-ARTD	\N	1
80655	F-AQBA	\N	\N
80660	\N	Melbourne - Canberra	10
80665	YR-PAF	\N	18
80670	NC21789	Washington D.C. - Detroit	25
80675	NC14297	Chungking - Kunming	14
80680	D-AAIH	\N	15
80685	NC16086	Oakland - Salt Lake City	10
80690	D-AVMF	\N	29
80695	\N	Rio de Janeiro - Sao Paulo	18
80700	F-AROA	\N	6
80705	NC25678	New York City - Chicago	16
80710	I-BAYR	\N	10
80715	HA-JUA	\N	12
80720	\N	\N	6
80725	NC17315	Kansas City. MO - New York	13
80730	CF-TCP	\N	12
80735	NC28394	New York City -  Washington D.C. - Atlanta - Brownsville	16
80740	D-AQUB	\N	12
80745	ZS-AST	\N	10
80750	YR-PIF	Bucharest . Romania- Sofia. Bulgaria	15
80755	M-604	\N	18
80760	AM261	\N	22
80765	AM260	\N	22
80770	PP-PBD	Porto Alegre - Rio de Janera	12
80775	F-AQNL	\N	17
80780	AM-915	\N	10
80785	NC15376	Miami - Buenos Aires	15
80790	D-AUXZ	\N	13
80795	NC21712	Minneapolis - Fargo	15
80800	NC25663	New York - Buffalo - Chicago - Detroit	20
80805	NC21V	\N	3
80810	NC1946	Las Vegas - Los Angeles	22
80815	A16-79	\N	11
80820	PK-AFW	\N	\N
80825	PK-AFS	\N	\N
80830	G-AEUH	\N	18
80835	45	\N	\N
80840	G-AGDR	\N	9
80845	VH-USE	\N	9
80850	G-AETZ	\N	20
80855	40-2370	\N	33
80860	PK-AFV	\N	12
80865	SE-BAF	\N	7
80870	31	\N	17
80875	VH-ADY	Brisbane - Bachelor Field	12
80880	NC18146	San Francisco - New York City	17
80885	NC 21714	Chicago - Seattle	14
80890	42-56093	Battle Creek - Florence. SC	21
80895	A16-198	\N	10
80900	N7253	\N	13
80905	F-AREJ	\N	\N
80910	\N	\N	4
80915	PH-AIP	\N	13
80920	W4026	\N	14
80925	W4026	\N	14
80930	F-ARIZ	\N	25
80935	69	\N	\N
80940	38-524	Caomo - San Juan	22
80945	NC41880	New York - Botwood - Foynes. Ireland	37
80950	D-AYGX	\N	17
80955	NC16017	Palm Springs - New York City	13
80960	W7773	\N	10
80965	NC16060	Salt Lake - Las Vegas - Burbank	19
80970	OY-DAL	\N	16
80975	G-AFCK	\N	13
80980	42-32939	\N	35
80985	41-1708	Accra. Ghana - Natal. Brazil	26
80990	NC14715	Hawaii - San Francisco	19
80995	NC33645	Santiago. Chili - Arequipa. Peru - Lima. Peru	15
81000	AL-591	\N	21
81005	41-3	Test flight	10
81010	NC18603	New York City - Lisbon	39
81015	53	Kunming - Assam	3
81020	49	Kunming - Dinjan	3
81025	A65-2	\N	24
81030	VH-ADU	\N	13
81035	G-AGBB	Lisbon - London	17
81040	42-23512	Pope Field - Maxton	20
81045	\N	\N	41
81050	FK-459	\N	17
81055	FK-618	\N	16
81060	A-L-523	\N	13
81065	G-AGES	Lisbon - Foynes - Poole	25
81070	NC16014	Cleveland - Memphis	22
81075	\N	Bombing run	10
81080	41-7733	Townsville - Brisbane	27
81085	48	\N	3
81090	PP-SPD	\N	21
81095	42-4621/42-6031	\N	22
81100	42-68729	\N	25
81105	42-6471	\N	20
81110	NC16088	Nashville - Memphis	15
81115	\N	\N	24
81120	SE-BAG	\N	15
81125	42-5677	\N	20
81130	\N	\N	1
81135	59	\N	3
81140	63	\N	3
81145	VH-CAB	\N	15
81150	83	\N	3
81155	43-30742	\N	31
81160	42-7183/42-7408	Wendover Field - Pocatello AAB	25
81165	D-ADQW	\N	5
81170	NC21767	Little Rock - Memphis	24
81175	75	\N	2
81180	D-ABAS	\N	16
81185	\N	Port Moreaby - Nadzab	21
81190	NC742N	Nome - Fairbanks	6
81195	D-AOCA	\N	7
81200	D-AAIG	\N	20
81205	\N	Montreal. Canada - European air base	16
81210	82	Calcutta - Dinjan	12
81215	\N	\N	14
81220	42-101035	\N	22
81225	42-100905	\N	22
81230	42-93095	\N	22
81235	85	Dijan - Kunming	6
81240	71	Kunming - Chungking.	4
81245	PP-VAG	\N	10
81250	42-107470	England - Long Island. N.Y.	26
81255	42-93038	Bristol - Preswick	22
81260	7233	\N	24
81265	42-23652	Bruning. NB - Pierre. SD	28
81270	NC823M	Antilla - Miami	31
81275	32271	\N	2
81280	42-50291	\N	3
81285	42-72171	\N	20
81290	PP-PBI	\N	16
81295	D-AUAW	\N	5
81300	VH-RDK	Merauke -- Cairns	20
81305	43-15738	Elmindorf AFB. Anchorage - Ladd Field. Fairbanks	19
81310	PP-PBH	\N	17
81315	D-AMHL	Stuttgart - Barcelona	9
81320	44-69943	\N	12
81325	101	Dinjan - Suifu	3
81330	D-AUSS	\N	7
81335	VH-ABB	\N	30
81340	D-ADQV	\N	15
81345	D-ASHE	\N	9
81350	42-50347	Liverpool - New York	24
81355	NC28310	San Francisco - New York City	24
81360	42-52196	\N	\N
81365	43-15046	\N	30
81370	XH-TAN	\N	16
81375	G-AGBW	\N	15
81380	D-ARHW	\N	10
81385	56	\N	3
81390	NC17322	San Francisco - Burbank - New York City	17
81395	CF-CMU	\N	5
81400	44-70286	Twinwood. England - Villacoublay. France	3
81405	77	Kunming - Tengchung	4
81410	NC14716	Miami - Leopoldville	30
81415	NC25684	New York City - Juarez. Mexico - Burbank	24
81420	70	\N	6
81425	\N	Chongqing - Kunming	3
81430	A72-70	\N	11
81435	VH-UYY	\N	10
81440	41-18603	\N	26
81445	KG630	\N	23
81450	50765	\N	24
81455	PP-NAE	\N	11
81460	42-107377	\N	30
81465	N18142	New York City - Los Angeles	22
81470	43-16011	\N	24
81475	88	Kunming - Sichang	3
81480	NC25692	Pittsburgh - Morgantown	20
81485	39067	\N	13
81490	D-ANAJ	\N	18
81495	41-18451	Midland. TX - Nashville. TN	25
81500	D-ASHH	\N	21
81505	43-38856	Ridgewell - Nutts Corner	31
81510	NC33328	Washington. D.C. - New York. Ny	13
81515	44-9043	\N	21
81520	44-77839	\N	30
81525	RF230	England - Brussels	31
81530	43-49788	\N	23
81535	44-76406	Accra. Ghana - Monrovia. Liberia	21
81540	81	\N	3
81545	VH-USF	\N	11
81550	JT985	\N	27
81555	\N	\N	2
81560	JT982	Montreal. Canada - England	15
81565	6812	\N	28
81570	NC25647	Boston - NY - Washington DC - Jacksonville - Miami	10
81575	43-0577	\N	3
81580	XA-DUY	\N	12
81585	NC15066	Port of Spain - Fort de France	14
81590	XA-DOT	\N	16
81595	NC33631	Miami - New York City	22
81600	A6556	Milne Bay - Dobodura	11
81605	45-1011	\N	24
81610	A65-61	\N	29
81615	42-101183	\N	20
81620	NC18199	Miami - Jacksonville	15
81625	\N	England - Prague	23
81630	LJ668	London - Cairo	26
81635	KL595	Belgium - India	31
81640	44-78591	Hankou - Peking	59
81645	A65-83	Ambon. Indonesia - Darwin. Australia	25
81650	\N	Shanghai - Canton	31
81655	KJ957	\N	14
81660	OB-PAG-139	\N	5
81665	43-47228	\N	50
81670	42-93041	\N	30
81675	45528A	Chabua - Karachi	44
81680	01710 / 69113	\N	27
81685	42-24363	Athens - Naples	24
81690	43-9197	France - Athens	20
81695	PJ950	\N	29
81700	\N	Chabau. India - Karachi. Pakistan	44
81705	A6554	\N	28
81710	KH126	\N	27
81715	KH125	India - Cambridge. England	28
81720	\N	\N	14
81725	\N	Newark. N.J. - Seattle. WA	21
81730	KN413	\N	17
81735	F-BALV	\N	8
81740	NC18l23	Philadelphia - New York City	12
81745	N21786	New York City - Birmingham. AL	11
81750	\N	\N	18
81755	KN557	\N	25
81760	NC19970	New York - Boston	17
81765	\N	Comox. BC - Greenwood.NS	7
81770	KN500	\N	11
81775	NC25675	Boise - Denver	21
81780	\N	Iloilo - Cebu	20
81785	G-AGEM	\N	14
81790	NC21799	Dallas - Tucon - San Diego	27
81795	OK-	Paris - Prauge	14
81800	VH-AET	Hobart - Melbourne	25
81805	\N	Shanghai - Nanking	20
81810	139	Chunking - Shanghai	\N
81815	45-1085	Stockton. CA - Ogden. UT	26
81820	G-AGLX	Karachi - Australia	10
81825	HE-274	\N	4
81830	\N	Shensi - Yenan	14
81835	AN-ACC	\N	21
81840	FZ559	\N	12
81845	\N	\N	28
81850	NC53218	Richmond - Atlanta	27
81855	LN-LAB	Oslo - Stockholm	13
81860	44-9078	Cairo - Rome	38
81865	KG747	Kano - Ikeja	18
81870	43-17231	\N	23
81875	KJ918	\N	18
81880	F-BAJS	\N	3
81885	43-39136	\N	25
81890	NC86513	Training flight	6
81895	\N	\N	49
81900	HC-SCA	Guayaquil - Cuenca	30
81905	\N	Topeka - Denver	13
81910	4485624/4485626	\N	20
81915	KN585	\N	22
81920	G-AHCS	Northolt - Oslo	16
81925	\N	AtlantiCity - Newark	6
81930	G-AGHT	\N	5
81935	G-AGMF	\N	9
81940	N51878	Teterboro - Chicago - San Francisco	25
81945	SU-ADJ	\N	9
81950	F-BADB	Copenhagen - Paris	22
81955	F-BAXD	Paris - Croydon	26
81960	NC57850	New York City - San Francisco	22
81965	G-AHEW	Bathrust. - Argentina	24
81970	\N	\N	4
81975	962	\N	21
81980	OO-AUR	Brussels - Croydon	7
81985	C-108	Bogota - Barrancabermeja	17
81990	OO-CBG	Brussels - Shannon - Gander - New York City	44
81995	NX690	St. Mawan. England - Almaza. Egypt	25
82000	\N	\N	31
82005	KN414	Hong Kong - Singapore	19
82010	PP-PCH	Belo Horizonte  - Rio de Janerio	25
82015	NC90904	Gander - Shannon	39
82020	MW125	\N	21
82025	PP526	\N	1
82030	N30051	San Francisco - Cheyenne - Chicago	41
82035	F-BCAA	Paris - Casablanca	16
82040	NC38942	Oakland - Chicago	13
82045	KN236	\N	11
82050	F-BCHD	Paris - Cairo	24
82055	F-BCAD	Paris - Toulouse - Casablanca	27
82060	N19947	Chicago - Cleveland	20
82065	NC18645	Palmdale - Burbank	11
82070	XA-FOZ	Mexico City - Veracruz	15
82075	PH-TBW	London - Amsterdam	26
82080	\N	Guam - Iwo Jima	23
82085	RX-76	\N	22
82090	T-1	\N	18
82095	\N	Meshed - Teheran	24
82100	39528	Miramar NAS. California - Sand Point NB. Seattle	32
82105	44-78604	\N	24
82110	PI-C-1	Grace Park AF - Lucena	14
82115	NC88876	Kingston. Jamaca - San Jose	7
82120	LV-XIG	London - Buenos Aires.	21
82125	NC45395	Holtville - San Diego	12
82130	115	\N	\N
82135	N15577	Buffalo - Chicago	21
82140	NC58024	Flint. MI - Washville. IL	2
82145	NC86505	Paris - Shannon	23
82150	PP-PBN	\N	14
82155	N50046	Miami - Raleigh - Washington	23
82160	XT-T51	Shanghai - Tsingtao	38
82165	PI-C100	Shanghai - Manila	42
82170	G-AGJX	London - Bordeaux	16
82175	NC88872	Akron. OH - Winston/Salem. NC	19
82180	60-03	Puebla - Oaxaca	21
82185	\N	Canton - Chungking - Hong Kong	19
82190	VP-YFD/OK-WDB	Guangzhou - Chongqing	23
82195	PI-C12	\N	4
82200	PH-TCR	Kobenhavn - Stockholm	22
82205	\N	Shanghai - Hankow - Chungking	26
82210	F-BAXQ	Paris - Bordeaux - Lisbon	16
82215	NC54451	New York. NY - Raleigh. NC	3
82220	NC44567	Havana - Lisbon - Madrid	12
82225	NC59486	Omaha. NE - Denver. CO	2
82230	I-ABQH	Rome - Cairo	16
82235	C-114	Barranquilla - Bogota	53
82240	\N	Sichang - Chungking	21
82245	KK120	Singapore - Siagon	12
82250	C-400	Villavicencio - Bogota	9
82255	KK122	\N	13
82260	F-BAXO	Lyons - Nice - Paris	23
82265	YS-28	Medellin. Colombia - San Jose. Costa Rica	8
82270	MW198	\N	15
82275	YV-C-ALO	\N	27
82280	G-AHEZ	Lisbon - Dakar	15
82285	N49657 / N55312	\N	10
82290	\N	Cuzco - Lima	26
82295	CF-TDF	Lethbridge - Vancouver	15
82300	NC86508	Training	4
82305	TF-ISI	Reykjavík - Akureyri	25
82310	42-72553	\N	40
82315	NC30046	New York City - Cleveland	48
82320	NC88814	Newark - Baltimore - Miami	53
82325	F-BANB	Marseille - Lyon	2
82330	LV-ACS	Buenos Aires - Natal	18
82335	NC88842	Pittsburgh - Washington D.C.	50
82340	NC88845	Karachi - Istanbul	36
82345	F-BALF	Yaounde - Douala	13
82350	NC79024	Newark - Miami	36
82355	F-BCHH	Paris - Vichy	19
82360	G-AGMR	Cairo - Basrah	6
82365	LV-XIH	Test flight	6
82370	\N	Tihua - Lanzhou	26
82375	G-AGWH	Buenos Aires - Santiago	11
82380	34032	Kodiak - Dutch Harbor	20
82385	NX88787	New York - Buffalo	5
82390	SE-BAY	Amsterdam - Malmo	5
82395	YR-TAV	Constanta - Bucharest	3
82400	NC59488	\N	3
82405	G-AHZB	Karachi - Bahrain	26
82410	LN-IAV	Tromso - Oslo	35
82415	NC90432	New York City - Dallas - Los Angeles	54
82420	\N	Charlotte. NC - Gainsville. GA	3
82425	F-BCJN	Marseille - Oran	43
82430	NC37510	Los Angeles - New York City	53
82435	NC88920	Seattle - Juneau	18
82440	SE-BBG	Istanbul-Athens-Rome-Geneve-Copenhagen-Stockholm	44
82445	M1965	\N	25
82450	\N	\N	5
82455	NC90741	San Francisco - Chicago - New York	25
82460	F-BDYH	\N	2
82465	SE-BNG	Catania - Rome	25
82470	NC86507	Training	5
82475	YR-TAI	Bucurest - Prague	26
82480	NC95486	Anchorage - Yakutat	13
82485	YU-ABC	\N	22
82490	\N	\N	3
82495	43-48736	\N	20
82500	NC-91009	Anchorage - Seattle	28
82505	42-72572	Goose Bay - Westover Field. MS	29
82510	44-76366	\N	20
82515	OO-XAC	\N	30
82520	VT-AUG	Karachi - Bombay	23
82525	XA-GEE	Dorango - Leon - Mexico City	9
82530	F-BAXC	Brussels - Paris	16
82535	G-AHPK	Renfrew - Northolt	18
82540	N60331	Charlston - Savannah	27
82545	F-BDLG	Algiers - Biskra	9
82550	HI-6	\N	31
82555	NC28384	Atlanta - Washington D.C.	9
82560	\N	\N	11
82565	KN336	\N	12
82570	NC36480	Burbank - Oakland	32
82575	G-AHNP	London - Havana	31
82580	NC112A	\N	69
82585	OY-DCI	Giessen - Bad Homberg	21
82590	I-REGI	Florence - Rome	10
82595	F-BDRD	\N	14
82600	PI-C262	\N	12
82605	NC36498	Pittsburgh. PA - Columbus. OH	2
82610	C-47-2040	Rio de Janerio. Brazil - Cayenne. French Guianan	26
82615	F-BBYC	\N	4
82620	OO-AWH	Brussels - London	22
82625	TF-RVL	\N	5
82630	NC37478	Chicago - Miami	13
82635	NC95422	Anchorage - New York City	30
82640	PP-CBX	\N	6
82645	C-1002	\N	15
82650	VT-CEL	Delhi - London	19
82655	G-AIVP	\N	15
82660	NC-88858	Belgium - Shannon	31
82665	HK-1200	Bogota - Ibague	32
82670	OO-CBE	Leopoldville - Libenga	32
82675	G-AJOU	\N	10
82680	ZS-BWY	Durban - Johannesburg - London	13
82685	NC59489	Newark. NJ - Chicago. IL	2
82690	G-AJBG	\N	4
82695	G-AKBA	\N	4
82700	G-AIUI	\N	8
82705	NC37506	Chicago - New York City	43
82710	YV-C-AHI	\N	17
82715	I-ELSA	Milano - Brussels	12
82720	SE-BDA	\N	32
82725	F-BCYP	Saigon - Da Lat	16
82730	PP-AVO	\N	5
82735	VR-HDT	Macau - Hong Kong	26
82740	CF-FKY	Port Meunier - Gaspé	26
82745	LV-AAP	Rosario - Bueno Aires	24
82750	XT-822	\N	24
82755	F-BDRC	Fort de France - Port Etienne	52
82760	AP-ACM	\N	4
82765	ZK-AOE	\N	2
82770	YV-C-AVN	La Guaira - Las Piedras	3
82775	HK-307	Popayan - Ipiales	26
82780	NC93044	Chicago - Minneapolis	37
82785	OO-CBL	Manono - Elizabethville	13
82790	VH-ANK	Brisbane - Sidney	13
82795	LN-IWA	Fornebu - Hommelvik	45
82800	PH-TEN	Amsterdam - Prestwick - New York City	40
82805	ZK-AGK	Palmerston - Hamilton	13
82810	NC88785	Edmonton - Anchorage. AK	5
82815	44-61999	RAF Scrampton - Burtonwood AFB	13
82820	N66637	Yakutat - Annette	17
82825	VH-UZK	Melbourne - Denilquin	23
82830	G-AKOF	\N	9
82835	AP-ACE	Karachi - Lohore	21
82840	XT-538	\N	40
82845	I-ETNA	Milan - Brussels	7
82850	\N	Shanghai - Taipei	10
82855	C-310	Bogota - Barranquilla	30
82860	OK-WDE	Rome - Athens	23
82865	XT-104	Shanghai - Hong Konk	33
82870	EC-ABK	Madrid - Barcelona	27
82875	N16002	San Juan - Miami	32
82880	ZS-BYX	Athens - Nice	12
82885	NC79025	Seattle - New Haven	30
82890	G-AHEX	\N	17
82895	NC53210	Raleigh. NC - Boston. MA	2
82900	PP-SAC	Porto Alegre - Sao Borja	12
82905	ZS-AYB	\N	30
82910	VT-CDZ	\N	13
82915	G-AGRE	Bermuda - Kingston	20
82920	44-62276	RAF Scampton - Keflavik - Kansas	20
82925	N91006	Homer - Anchorage	6
82930	NC86530/NC76981	\N	35
82935	CF-FEO	\N	6
82940	G-AJPL	Khartoum - Castel Benito	53
82945	HK-134	\N	14
82950	OY-DLU	Paris - Copenhagen	27
82955	OB-PAV-223	Tingo Maria - Huanuco	16
82960	G-AHCW/VV243	London - Glasgow	14
82965	VR-HDG	Manila. Philippines - Hong Kong	23
82970	SP-LCG	\N	16
82975	VH-BAG	Coolangatta - Brisbane	16
82980	G-AHFI	\N	3
82985	ZK-AKX	Auckland - Wellington	15
82990	I-ELCE	Barcelona - Torino	31
82995	PI-C-98	Daet - Manila	13
83000	SX-BAI	Kavallo - Athens	22
83005	C-47-2023	Florianpolis - Porto Alegre	27
83010	N92857	San Juan - Miami	81
83015	PH-TER	Batavia - Amsterdam	33
83020	VH-MME	Guildford - Darwin	18
83025	PH-TDF	Delhi - Bombay	45
83030	N79978	Albuquerque - Burbank	48
83035	N5075N	Seattle - Chicago	32
83040	N19963/BU72887	New York City - Wilmington	16
83045	PP-VBI	Sao Paulo - Porto Alegre	36
83050	PP-AJB	\N	30
83055	HC-SBU	Mers Nueva - Ambato	34
83060	N79989	Rome - Shannon	58
83065	G-AHCY	Belfast - Manchester	24
83070	11057	Churchhill - Winnipeg	21
83075	OO-CBK	Leopoldville - Elizabethville	20
83080	CF-CUA	Montreal - Comeau Bay	23
83085	XA-DUH	Tapacula - Mexico City	24
83090	LV-ABI	\N	27
83095	N59485	Las Vegas - Denver	4
83100	F-BAZN	Paris - Santa Maria - New York City	48
83105	N88727/NX26927	Boston - Washington D.C. - New Orleans	55
83110	NC29086	Philadelphia - Cleveland	3
83115	PH-TFA	Brussels - Oslo	35
83120	F-BELO	Paris - Lyons - Tunis	38
83125	N90728	New York City - Mexico City	46
83130	PP-YPM	Sao Palo. Brazil - Jacarezinho. Panama	22
83135	NC60256	Burbank - Oakland - Sacramento	9
83140	XT-820	\N	38
83145	XT-814	Chengdu - Hoikow	40
83150	AP-ADI	\N	26
83155	NC-25691	New Port News - Washington D.C.	23
83160	XA-DUK	Mexico City - Merida	17
83165	OO-AUQ	\N	8
83170	VT-CYK	Agartala - Calcutta	7
83175	\N	\N	16
83180	TAM-10	Valle grande - Cochabamba	32
83185	F-BFGD	Antananarivo - Tamatave	14
83190	PI-C22	Iloilo - Manila	4
83195	42-72469	Elmendorf - Great Falls. MT	44
83200	PH-TEU	Amsterdam - London	7
83205	OK-WDY	Ostrava - Prague	5
83210	N93050	Rochester Minn. - Minneapolis	13
83215	F-BECR	Hue - Tourane	4
83220	G-AKBY	Llandow - Dublin	83
83225	TC-BAL	\N	15
83230	F-WANU	\N	12
83235	VT-CJD	\N	3
83240	HK-309	\N	25
83245	42-72704	Philippines - Japan	35
83250	HK-120	Quito - Guayaquil	15
83255	\N	Bermuda - England	16
83260	44-77577	\N	39
83265	N9406H	\N	2
83270	PP-AVZ	Victoria - Salvador	15
83275	N1248N	San Juan - Wilmington NC	65
83280	N16030	Kingston. Jamacia - Maracaibo. Venezuela	15
83285	F-BBDE	Saigon - Paris	52
83290	F-BBDM	Saigon - Paris	53
83295	N95425	New York City - Minneapolis-St. Paul	58
83300	VH-ANA	Guildford - Melbourne	29
83305	45-0518	\N	23
83310	F-BFGL	Paris - Dakar	29
83315	VT-ATS	Delhi - Sringagar	22
83320	CR-LBK	Nova Lisboa - Lobito	9
83325	44-76439A	\N	26
83330	PP-PCG	Rio de Janeiro - Porte Algegre	50
83335	F-BENF	Algiers - Gao	26
83340	46-87651	\N	20
83345	KN630	Changi. Singapore - Kota Baru	12
83350	N6004C	Cairo - Rome	55
83355	N18936	Utica. NY - Newark. NJ	23
83360	EP-AAG	\N	8
83365	56496	Kwajzalein - Tokyo	26
83370	YU-ABD	Belgrad - Paula	11
83375	SE-BRS	Karlstad - Stockholm	10
83380	42-72457	Ashiya AB - Kimpo AB	51
83385	F-BAXM	Casablanca -  Algiers	7
83390	NC93037	Training	6
83395	G-AGIW	London - Glasgow	29
83400	G-AHPN	Paris - London	30
83405	VT-CQP	Bombay - Cairo - Geneva - London	48
83410	N93040	Helena - Butte	21
83415	CF-EDN	Rome - Paris	52
83420	PK-DPB	\N	23
83425	N74586	Chico. CA - Billings. WY	21
83430	OB-PAU-201	Maldorado - Quincemil	9
83435	VT-COI	\N	3
83440	EP-AAJ	\N	8
83445	F-BAXY	Casablanca - Perpignan	7
83450	F-BELB	\N	56
83455	VT-CFK	\N	21
83460	PP-SPT	\N	9
83465	YC-C-AVU	Merida - Caracas	31
83470	44-9096	Naha AB - Clark AB	38
83475	CF-CUF	Vancouver - Penticton	18
83480	LV-ACH	Mar del Plata - Buenos	18
83485	ZS-DDW	\N	12
83490	VR-HEP	Butterworth - Kota Bharu	10
83495	N74685	Newark - Philadelphia	28
83500	N93054	Minneapolis - Seattle	10
83505	I-DALO	Paris - Rome	17
83510	PP107	Hong Kong - Iwakuni. Japan	16
83515	TF-ISG	Vestmannaeyar Island - Reykjavík	20
83520	282	\N	14
83525	F-BBDO	Douala - Niamey	29
83530	HK-333	\N	2
83535	N19928	Kansas City. MO - Omaha. NB - Sioux City. Iowa	25
83540	HS-POS	\N	24
83545	HK-315	\N	27
83550	49-244	Loring AFB - Lakeheath AFB	53
83555	24142	\N	10
83560	PP-CCX	\N	14
83565	LV-ACY	Ushuaia - Buenos Aires	20
83570	HK-142	\N	26
83575	N63439	Santa Maria - Santa Barbara - Oxnard - Los Angeles	22
83580	43-48298	Godman AFB - Charleston. WV	21
83585	HS-SAE	Bangkok - Hong Kong	16
83590	CU-T188/39939	Miami - Havana	43
83595	N16088	Cleveland - Fort Wayne - South Bend - Chicago	11
83600	49-2660	\N	25
83605	G-AHPD	Bordeaux - Bovingdon	32
83610	PP-SPL	Santa Cruz de Rio Prado - Presidente Prudent	6
83615	\N	\N	10
83620	PP-NAL	\N	19
83625	HK-504	\N	3
83630	N88846	Johannesburg - Accra - Monrovia - New York	40
83635	YU-ACE	Rejeka and Zagreb	14
83640	N37543	Salt Lake City - Denver	50
83645	VT-CHT	\N	3
83650	PP-LPG	Maceio - Aracaju	33
83655	45-57801A	Frankfort - Bordeaux	36
83660	VW194	\N	10
83665	VH-EBQ	\N	7
83670	F-OABX	Pakse. Laos  - Saigon. Vietnam	3
83675	CF-CPC	Vancouver - Tokyo	37
83680	OO-CBA	\N	3
83685	CB-39	Cochabamba - Rio de Janeiro	7
83690	VH-TAT	\N	2
83695	F-BAXB	Training	5
83700	PP-YPX	\N	10
83705	N37550	Boston - Hartford - Cleveland - Chicago - Oakland	50
83710	PP-SPQ	\N	13
83715	N31230	\N	3
83720	F-BEIZ	Perpignan - Oran	39
83725	VT-CCA	Bangalore - Trivandrum	28
83730	CB-43	\N	27
83735	XA-GOR	Mexico City - Villahermossa	8
83740	ZS-AVJ	Port Elizabeth - Durbin	17
83745	49-2602	Azores - Westover AFB	12
83750	CF-FOQ	Kildala - Vancouver	23
83755	YU-ACC	Belgrad - Skopje	12
83760	FAGO961	\N	27
83765	N93039	Oakland - Albuquerque	29
83770	TC-ACA	Ankara - Cairo	5
83775	VT-AUO	\N	17
83780	4X-AND	Zurich - Rome	7
83785	XA-DOQ	\N	21
83790	N17109	Training	3
83795	VH-UR	\N	3
83800	N1678M	Fort Smith - Newark	56
83805	SU-AHH	\N	22
83810	N3944C	Pittsburgh - Buffalo	40
83815	N68963	Umiat - Fairbanks	4
83820	47-76266	New York - Williams AFB	28
83825	VT-COA	\N	3
83830	F-BAMQ	\N	11
83835	EI-AFL	Northolt - Dublin	23
83840	N45342	Tokyo - Elmendorf AFB	43
83845	N94229	Buffalo - Newark	23
83850	OO-CBN	\N	15
83855	\N	\N	17
83860	N90891	\N	63
83865	N86574	San Francisco - Seattle	7
83870	G-AHPI	Nice - Malta	31
83875	F-BEFX	\N	9
83880	VT-AXE	\N	16
83885	PP-PCN	Rio de Janeiro - Guiana	8
83890	F-BCUM	Nice - Paris	38
83895	PI-C5	\N	3
83900	\N	Training	15
83905	CF-BXZ	St. Johns - Goose Bay	4
83910	PH-TPJ	Rome - Frankfort	47
83915	F-ARTE	\N	21
83920	\N	\N	70
83925	YV-C-AZU	\N	12
83930	PI-C270	\N	29
83935	N1911M	\N	2
83940	N93043	Tokyo - Osaka	37
83945	VT-DFN	\N	4
83950	N88899	San Juan - New York City	69
83955	N8404C	Kansas City. MO - Phoenix - Burbank	29
83960	TG-AQA	Brownsville. TX - Guatemala City	2
83965	N1039V	Rio de Janeiro - New York City	50
83970	VT-AUN	Madras - Delhi	9
83975	LN-NAD	Amsterdam. Netherlands - Jarsberg. Norway	29
83980	PK-DPA	\N	17
83985	PP-SPM	Sao Paulo - Bauru	22
83990	PP-LDE	\N	6
83995	G-ALDN	Tripoli - Kano	18
84000	79001	Radio surveillance mission	8
84005	\N	\N	11
84010	VP261	\N	13
84015	N1030V	Rio de Janeiro - Buenos Aires	27
84020	PP-ANH	Rio Verde - Goiania	24
84025	G-ALDF	Blackbushe - Malta - Khartoum	57
84030	G783	Khewra - Peshawar	18
84035	ZS-DFW	Juba - Wadi Halfa	4
84040	WG235	\N	1
84045	\N	\N	46
84050	44-87741	\N	16
84055	VT-CGB	\N	3
84060	VP286	\N	14
84065	PP-AXJ	Sao Paulo - Porto Alegre	28
84070	44-77538	\N	25
84075	52-2711	\N	16
84080	F-BFVO	Fort Lamy - Beirut	6
84085	51-2560A	Elmendorf AFB - Big Delta	19
84090	51-2551A	\N	44
84095	51-2570	Elemndorf AFB - Kodiak NAS	20
84100	\N	Great Falls - Denver. Colorado	16
84105	51-107A	\N	52
84110	\N	\N	38
84115	\N	Sofia - Varna	18
84120	CU-T397	Madrid - Azores - Bermuda - Havana	41
84125	50-100	\N	115
84130	YV-C-ARC	\N	3
84135	YV-C-AVX	\N	5
84140	EP-ACJ	Abadan - Tehran	29
84145	PI-C38	\N	10
84150	G-AJDL	Northolt - Belfast	35
84155	F-BPJA	\N	10
84160	N1648M	Boeing Field - Cheyenne	40
84165	VX562 / TX270	\N	26
84170	I-LAIL	Cagliari - Rome	19
84175	G-AHFA	Lajes. Azores - Gander	39
84180	F-OAFR	\N	18
84185	F-BFGR	\N	20
84190	1001	\N	35
84195	N90893	Miami - Orlando - New Orleans	46
84200	CF-CUN	Karachi - Rangoon	11
84205	N4717N	New York. NY - Winsor Locks. CT	2
84210	AP-AEG	Delhi - Dacca	16
84215	F-BEFG	Hue - Da Nang	8
84220	51-13721A	Azores - Rapid City AFB	23
84225	N88942	Roswell - Oakland - Guam	35
84230	PP-SLG	\N	14
84235	VP-YEY	Nairobi - Dar-es-Salaam	13
84240	VP-JBC	\N	13
84245	F-BALE	\N	4
84250	VT-AUJ	\N	3
84255	N65743	Spokane - Ellenburgh	25
84260	F-BESS	Hanoi - Na San	30
84265	N91303	Los Angeles - San Francisco - Oakland	10
84270	G-ALYV	Calcutta - Delhi	43
84275	WG258	\N	10
84280	VT-AUD	Delh - Ahmedabad - Bombay	18
84285	CF-CRV	Sandpit. BC - Prince Rupert. BC	19
84290	N28345	Dallas - Shreveport	20
84295	PH-TEI	Amsterdam - Paris	34
84300	CC-CLD-0100	\N	7
84305	TI-1002	Palmar Sur - San Isidoro	14
84310	F-BEST	Vientiane - Saigon	34
84315	PP-PDA	\N	17
84320	51-137A	Tachikawa AB - Kimpo AB	129
84325	N90806	Wake Island - Honolulu - Oakland	58
84330	131663	Whitting NAS - Norfolk NB	46
84335	\N	\N	21
84340	CF-HMV	\N	2
84345	F-BAZS	Rome - Beirut	42
84350	AP-AAD	Sharjah - Bahrain	25
84355	\N	\N	23
84360	XA-GOT	\N	2
84365	F-BAZZ	Paris - Nice - Hong Kong	42
84370	N19941	Monterey. CA - Tacoma. WA	21
84375	XH-TAR	San Pedro - San Andres	3
84380	XA-GIC	Campeche - Mérida	2
84385	N94255	Boston - Hartford - Albany - Chicago	28
84390	TC-EGE	Ankara - Van	21
84395	N66534	Philadelphia - Louisville	41
84400	OO-AWQ	Frankfurt - Brussels	44
84405	F-VNAE	\N	7
84410	XA-GOT	Monterrey - Falcon Dam	21
84415	N119A	New York City - San Juan	27
84420	VH-BPE	Sydney - Honolulu - San Francisco	19
84425	CP-600	Camiri - Suere	28
84430	WL746	\N	10
84435	EC-AEG	Bilbao - Madrid	33
84440	VT-CHF	\N	14
84445	OO-AWO	\N	44
84450	YK-AAF	\N	15
84455	\N	\N	21
84460	TC-BAG	Bandirma - Canakkale	10
84465	WJ474	Bovingdon AF - Thorney Island	17
84470	G-ALYP	Rome - London	35
84475	HK-160	Medellin - Armenia	21
84480	\N	\N	1
84485	PI-C294	\N	16
84490	OK-WDS	Praha - Moravska - Ostrava	15
84495	N49551	\N	3
84500	44-78027A	Misawa - Chitose	35
84505	5895	\N	16
84510	WL794	Military exercise	10
84515	VT-ATU	\N	3
84520	N8407H	Salt Lake City - Cedar City - Rapid City	9
84525	42-24096A	Tripoli. Libya - Hahn. W Germany	20
84530	G-ALAM	Australia - London	40
84535	VH-BBV	\N	2
84540	51-7993	Oklahoma - Long Island. NY	18
84545	XA-GUN	Mazatlan - Monterey	18
84550	TC-ARK	Adana - Istanbul	25
84555	F-BFGQ	\N	4
84560	G-ALYY	Rome - Cairo	21
84565	CF-TFW/RCAF3309	\N	36
84570	956	\N	16
84575	F-OALK	\N	23
84580	LV-ACX	Mendoza - Cordoba	25
84585	VT-DEM	\N	11
84590	ZK-AQT	Churchchrist - Paraparaumu	28
84595	PP-ANO	Governador Valadares - Belo Horizonte	19
84600	OO-CBY	Blackbushe. UK - Beogard. Serbia	4
84605	PP-VBZ	Sao Paulo - Porto Alegre	3
84610	F-BCCL	\N	4
84615	HB-IRW	Geneva - London	9
84620	C-28-2901	\N	20
84625	VR-HEU	Singapore - Hong Kong - Bangkok	18
84630	N91008	McGrath - Colorado Creek	2
84635	HK-163	Lajes. Azores - Bermuda	30
84640	F-BSGS	Saigan - Hanoi	3
84645	F-VNAI	Red River delta - Saigon	55
84650	N61451	Memphis - Minneapolis	19
84655	PH-DFO	Shannon - Amsterdam	21
84660	G-AGHP	\N	3
84665	51-13722	\N	27
84670	PH-LKY	Shannon - New York City	56
84675	PP-CDJ	\N	30
84680	SU-AFO	Test	4
84685	43-16044	\N	21
84690	128441	Patuxent River NAS - Kenitra. Morocco	42
84695	128441	New Jersey - Azores - Port Lyautey. Moroco	42
84700	VH-TVA	Training	8
84705	FAP-403	Pucallpa - Lima	24
84710	N17891	Laconia. NH - Berlin. NH	7
84715	F-BEIA	Luang Prabang - Nam Tha	28
84720	OK-WDK	\N	4
84725	YV-C-AMP	\N	2
84730	I-LINE	Rome - New York City	32
84735	N24320	Newark - Tacoma	28
84740	G-ALSA	London - Glasgow	36
84745	\N	\N	45
84750	\N	Peking -  Irkutsk - Cyprus	17
84755	WG531 / Wl743	\N	18
84760	N93211/N999B	Cincinnati - Cleveland	15
84765	N73154	Newark - Des Moines - Lincoln	39
84770	HK-1000E	\N	5
84775	VT-CVB	Nagpur - Delhi	10
84780	VR-NAD	Enugu - Calabar	13
84785	OO-SDB	Brussels - Rome	29
84790	N40416	Albuquerque - Sante Fe	16
84795	VP-YKO	Salisbury - Lusaka	26
84800	PP-YPZ	\N	21
84805	XA-DIK	Puerto Vallarta - Guadalajara	26
84810	HK-328	Condoto - Cali	8
84815	N94234	Newark - Chicago - St. Louis - Springfield - Tulsa	35
84820	131612	\N	66
84825	N1032V	Portland - Honolulu	23
84830	N51424	Mobile. AL - Macon. GA	2
84835	N37512	Training	3
84840	VT-DEP	Hong Kong - Jakarta	19
84845	F-BGOI	Yaounde - Douala	14
84850	VP-KKH	Dar-es-Salaam - Nairobi	20
84855	YV-C-ALU	\N	13
84860	CF-HMY	\N	2
84865	F-BFVT	Douala - Fort Lamy	3
84870	PP-PDJ	Sao Paulo - Asuncion	24
84875	XA-LID	\N	18
84880	XA-DOB	Acapulco - Oaxaca	22
84885	N3422	Kansas City. MO - Chicago	43
84890	4X-AKC	Wien - Tel Aviv	58
84895	N94221	Springfield. IL - St. Louis. MO	30
84900	\N	Starllingrad - Moscow.	25
84905	53-3222/53-7841	\N	66
84910	PP-CBY	Rio de Janeiro - Caravelas	13
84915	VT-AZX	\N	3
84920	XY-ACQ	Meiktila - Lanywa	9
84925	N74663	Burbank - Oakland	33
84930	F-BDRE	LaLérè - Douala	16
84935	CF-GBT	Edmonton. AB - Yellowknife. NT	6
84940	G-ALHL	Rome - Tripoli	47
84945	N90433	Wake Island - Honolulu	5
84950	OB-PAZ-228	Lima - Cuzco	35
84955	N30062	Denver - Salt Lake City - San Francisco	66
84960	YU-ADC	Beograd - Wien	29
84965	N37559	Denver - Portland	44
84970	N88852	Seattle - Newark	74
84975	44-9068	\N	14
84980	51-0149	\N	11
84985	52-8716	\N	10
84990	PP-CCC	\N	6
84995	N9904F	\N	2
85000	\N	Sao Paulo - Belem	26
85005	N112A	Miami - Jacksonville	17
85010	VH-BZA	\N	2
85015	CF-GVZ	Knob Lake - Oreway	18
85020	OK-WDZ	Bratislava - Kosice	26
85025	F-BCYK	\N	3
85030	CF-FZU	\N	2
85035	CF-BZH	\N	3
85040	39116	El Toro MAS - Alameda NAS	40
85045	G-ANSY	Malta - London	50
85050	F-BGOD	Saigon - Paris	64
85055	YK-AAE	\N	19
85060	AP-ACZ	Gilgit  - Islamabad	3
85065	VT-CGN	\N	21
85070	G-AMRB	Liverpool - Glasgow	3
85075	VT-DCM	Asansol - Bagdogra	3
85080	\N	\N	18
85085	N40403	Pittsburgh - Newark	36
85090	N74608	Seattle - Portland	38
85095	B5386N	Anchorage - Seward	6
85100	PP-PDB	Belem - Parintins	12
85105	G-AMUL	London - Malta	54
85110	VT-DBA	\N	33
85115	\N	\N	2
85120	TG-AHA	Kano - Tripoli	31
85125	YV-C-AMS	New York City - Caracas	74
85130	G-ALHE	Kano - Tripoli	45
85135	N6902C/N6324C	Los Angeles - Chicago / Los Angeles - Kansas City	128
85140	CF-TGR	Chicago - Montreal	35
85145	53-3301A	McGuire AFB - Harmon AFB	66
85150	LV-ACD	Buenos Aires - Rio Cuarto	18
85155	XY-ADC	Rangoon - Mandalay	20
85160	CF-CUP	Vancouver - Hong Kong	22
85165	JY-ABV	\N	57
85170	N33315 / N8143A	\N	18
85175	N 79069	Unalakleet and Nome	5
85180	1311588	RAF Lakenheath - McGuire AFB	59
85185	N90943	Honolulu - San Francisco	31
85190	VT-DGK	\N	3
85195	SU-AAB	Cairo - Dismascus	23
85200	G-ALDJ	Tripoli - Blackbushe	80
85205	LN-SUR	Trondheim - Oslo	12
85210	XA-HEG	Tocumen - Guatemala City	25
85215	PP-VCS	\N	2
85220	HK-385	Buenaventura - Cali	36
85225	OK-DBP	Eglisau - Prague	23
85230	I-LEAD	Rome - Paris -  Shannon - New York City	35
85235	YV-C-AMA	New York City - Maiquetia	25
85240	HK-133	Bogota - Medellin - Quibdo	16
85245	CF-TFD	Vancouver - Toronto	62
85250	F-BGNK	Training	5
85255	YU-ADA	Wien - Munchen	30
85260	I-LINC	Rome - Milan	21
85265	54-0165	\N	37
85270	N94247	Joplin - Owasso	10
85275	T-11	Buenos Aires - Mar Del Plata - Mendoza	33
85280	AN-AEC	San Carlos - Managua	16
85285	F-BAVG	Tunis - Paris	70
85290	N8210H/52-187OA	Santa Monica - Santa Monica	6
85295	N34954	New York City - Miami	101
85300	51-141A	Kimpo AB - Tokyo. Japan	159
85305	N90449	Fairbanks - Seattle	5
85310	XH117	\N	22
85315	HK-155	Condoto - Cali	15
85320	G-ALWE	Amsterdam - Manchester	20
85325	PI-C-	Cebu - Manila	25
85330	CP-535	Cochabamba - Oruro	19
85335	50-702A	Travis AFB - Tokyo	67
85340	PP-VCF	\N	40
85345	F-BEIK	\N	34
85350	PP-ANX	Rio de Janerio - Sao Paulo	30
85355	XA-KUN	\N	3
85360	VW832	\N	24
85365	F-BGNE	Tehran. Iran - Istanbul. Turkey	\N
85370	G-AJBO	Blackbushe - Tripoli	35
85375	VT-AUV	\N	3
85380	EC-ADI	Santiago de Compostella - Madrid	37
85385	T-3	\N	16
85390	N68736	\N	3
85395	VT-CFB	\N	2
85400	SP-LNF	Warsaw - Moscow	13
85405	HB-IRK	Training	9
85410	N88835	Training	3
85415	CF-EPI	Port Hardy - Vancouver	18
85420	AP-AJS	\N	24
85425	PH-LKT	Mokmer - Manila	68
85430	N8405H	Minneapolis -- Salt Lake - Cedar City - Las Vegas- LA	16
85435	CF-MCF	Reykjavík - Montreal	79
85440	CCCP-L1874	Riga - Copenhagen	23
85445	VT-ARH	\N	8
85450	XH-SAF	\N	12
85455	YV-C-AVG	Maiquetia - Barinas	8
85460	N33417	Martha's Vineyard - New Bedford	24
85465	PP-AQE	San Pablo - Porto Alegre - Montevideo	35
85470	G-AOFY	\N	3
85475	OD-ACK	Beirut - Kuwait City	27
85480	G-AOJA	London - Belfast	7
85485	EC-ACH	Tanger - Madrid	21
85490	XA-LIW	\N	3
85495	G-ANCA	\N	15
85500	N90944	San Fransisco - Honolulu	44
85505	EC-ANZ	Barcelona - Palma de Mallorca	4
85510	G-AKNU	Southhampton - Lisbona	58
85515	ZK-AYH	Paraparaumu - Timaru	4
85520	LV-AHZ	Buenos Aires - San Carlos	61
85525	CF-GKV	\N	3
85530	\N	Ozamis City - Pagadian	12
85535	G-AMUN	Malta - London	4
85540	143197	\N	23
85545	LV-AAR	Buenos Aires - Rosario - Corrientes	51
85550	PP-CEF	\N	3
85555	TAM-04	Tipuani - La Paz	11
85560	PP-LEM	Rio de Janerio - Fortaleza	67
85565	AP-AEH	Dehli - Karachi	38
85570	53-3277A/127723	Long Beach - McGuire AFB	49
85575	G-ALZU	Munich - Manchester	44
85580	F-AOVV	\N	15
85585	BU-141310	\N	22
85590	G-AICS	Isle of Man - Manchester	42
85595	129741/135350	\N	26
85600	SU-AGN	Athens - Cairo	26
85605	N300E	\N	4
85610	VT-CYN	Simra - Kathmandu	20
85615	N5904	\N	24
85620	52-981A/49-195A	\N	18
85625	HC-SND	Quito - Esmeraldas	14
85630	N7437	New York - Detroit - Saginaw - Chicago	47
85635	HC-ACL	Guayaquil - Quito	32
85640	EC-ANJ	Zaragoza - Barcelona	16
85645	N6328C/56-3755	Los Angeles - New York City	49
85650	OO-SFA	Lisbon - Leopoldville	65
85655	N7410/53-5966	Pittsburgh - Baltimore	11
85660	G-AMUV	\N	5
85665	F-BHKV	Algier - Colomb-Bechar - Tindouf	15
85670	PP-BTB	\N	4
85675	N1023V	San Francisco - Singapore	57
85680	XA-MEV	Guadalajara - Mexico City	45
85685	N49553	Training	3
85690	PP-CEP	Florianopolis - Curitiba	27
85695	VT-COJ	\N	7
85700	56-3599A	Westover AFB - London	15
85705	VT-CYM	\N	3
85710	VP-YNE	Wadi Halfa - Benina	54
85715	JA5045	Tokyo - Nagoya	33
85720	PP-LEQ	\N	10
85725	PH-LKM	Amsterdam - Shannon - Gander - New York	99
85730	N90670	New York City - Nantucket	34
85735	CCCP-L5442	\N	64
85740	56-0528	\N	17
85745	G-AIJE	\N	3
85750	52-1081A	Guam - Clark AB	19
85755	PP-LDX	\N	18
85760	56-661 / 56-681	\N	16
85765	N6920C	\N	8
85770	56-0526	\N	15
85775	OD-ADB	Beirut - Rome	5
85780	55-4521A	\N	19
85785	YV-C-ANC	\N	23
85790	TAM-03	Fortin Campero - Tarija	20
85795	CCCP-42362	Peking - Moscow	80
85800	Bu141294	Patuxent River. NAS - Argentia.NAS	29
85805	G-ANHC	London - Napoli	31
85810	CU-T603	Miami - Varadero	20
85815	YE-AAB	Rome - Belgrade	8
85820	TAM-05	San Borja - La Paz	3
85825	CS-THB	Cabo Ruivo - Funchal	36
85830	N1301N	\N	2
85835	EC-ANR	Vigo - Madrid	21
85840	\N	Test	12
85845	F-BGTZ	Johannesberg - Salisbury - Brazzaville - Nice - Paris	70
85850	PP-SQE	Rio de Janeiro - Sao Paulo	37
85855	ET-T-1	Tippi - Jimma	18
85860	XH-SAA	Copan - Nuovo Octopeque	5
85865	N18941	Nashville - Knoxville - Tri-City Aport	10
85870	D-ALAK	Hamburg - Rio de Janeiro	39
85875	N1240N	Burbank. CA - Seattle. WA	2
85880	LV-GED	Buenos Aires - Mar del Plata	52
85885	YV-C-LBI	Merida - Lagunillas	4
85890	JY-ACB	Jerusalem - Dobouk	15
85895	G-AGRG	\N	6
85900	N17314	Pueblo. CO - San Antoonio. TX	28
85905	N3794N	Mason City - Fargo	4
85910	N6101A	Chicago - New York City	73
85915	TC-SEV	Ankara - Istanbul -  London	24
85920	N68823	Arica. Colombia - Puerto Suarez. Bolilvia	5
85925	YA-BAG	Beirut - Tehran	27
85930	YS-09C	Las Mercedes - Tegucigalpa	19
85935	VT-CYH	\N	7
85940	EC-ADH	Palma de Mallorca - Mahon	18
85945	F-BGZB	\N	9
85950	VT-CGI	Dum Dum - Agartala-Singerbhil - Kumbhirgram	24
85955	N7840B	Orlando. FL - Atlanta. GA	2
85960	XA-MIS	Mexicale - Guaymas	26
85965	G-AGRH	Ankara. Turkey - Bahrain	12
85970	EC-ABC	Barcelona - Madrid	28
85975	OE-FDA	Palma de Mallorca - Wien	5
85980	N2735A	Pittsburg - Charleston	44
85985	N7463	New York City - Atlanta	31
85990	OB-WBP-507	Lima - Pucallpa	12
85995	LV-AFW	Mar del Plata - Bahia Blanca	10
86000	CC-CIA-497	Talara  - Arica	8
86005	TI-1020	\N	60
86010	HK-135	Bogota - Lima	14
86015	N7313C	Milan - Paris	68
86020	55-3633A	\N	1
86025	VT-DGP	Mohanbari - Along	6
86030	AP-AJE	\N	3
86035	N7514A	Training	5
86040	G-AMZD	Barcelona - London	32
86045	LV-AHP	\N	50
86050	N5140B	Abilene. TX - Forth Worth. TX	2
86055	\N	Mexico City - Merida	16
86060	N88900	San Salvador - Miami	3
86065	PP-SQV	Sao Paulo - Rio de Janeiro	20
86070	F-BIAP	Bordeaux - Bamako	65
86075	N63396	Shemya - Cold Bay - Adak - Anchorage	16
86080	N9705C	Houston - Dallas	34
86085	N67589	Los Angeles - Oxnard - Santa Maria - Paso Robles	19
86090	SX-BAD	Athens - Thessaloniki	18
86095	N55V	Washington DC - Charlottsville. VA	27
86100	CF-ILI	Montreal - Hall Lake	5
86105	N4891C	Tampa - New Orleans	42
86110	CCCP-11167	\N	40
86115	N102R	Chicago - Los Angeles	3
86120	N174A	Harrisburg - Willamsport	26
86125	HK-515	San Andres Island - Cartagena	45
86130	\N	Kabul - Tashkent	29
86135	N64T	Juneau - Annette Island	3
86140	I-LIZT	Training	2
86145	PP-SRG	Rio de Janeiro - Sao Paulo	33
86150	PK-GDV	\N	2
86155	CP-584	\N	11
86160	VT-CGG	\N	9
86165	N8225H	New York - Miami	34
86170	55-2974	Misurata - Benghazi	10
86175	N7462	Washington D.C. - Norfolk	50
86180	OY-KRB	Istanbul - Ankara	42
86185	SSR-75687	\N	61
86190	HK-177	Miami - Montigo Bay	46
86195	CR-TAI	Darwin - Baucau	9
86200	CP-609	Laguna de Huana-Costa - La Paz	59
86205	PP-AXD/131582	Campos - Rio de Janeiro	61
86210	I-DUVO	Shannon - New York City	52
86215	CCCP-11180	\N	32
86220	HK-1001E	Aracacuara - Villavicencio	13
86225	JA-5018	Tokyo - Nagoya	33
86230	N121US	Chicago - Miami	63
86235	HK-516	San Andres - Medellin	46
86240	AN-AIN	Siuna - Bonanza	18
86245	PP-CDS	\N	22
86250	\N	\N	18
86255	52-1062	Dover. Delaware - Mildenhall. England	9
86260	HK-390	Miami - Medellin - Bogota	51
86265	N2704R/N1807H	Cincinnati. OH - Hickory. NC	44
86270	OO-SBL	Cairo - Bunia	35
86275	YV-C-AFE	Maiquetia - Calabozo	13
86280	HB-ILA	Niamey - Khartoum	12
86285	LV-ADS	Asuncion - Buenos Aires	31
86290	LV-GGJ	Buenos Aires - Santiago	10
86295	N8804E	Training	4
86300	VH-TFB	Rockhampton - MacKay	29
86305	N1554V	Cordova - Anchorage	14
86310	PP-YRB	Belo Horizonte - Rio de Janeiro	54
86315	144242	\N	21
86320	VT-DGS	Doha - Sharjah	16
86325	45-1109A	Bogota - Quito	18
86330	N292	Okinawa - Manila	58
86335	ET-T-18	Bulchi - Jimma	11
86340	CP-36	\N	41
86345	N879	\N	13
86350	D-BELU	Frankfort - Rimini	34
86355	TAM-09	La Paz - Tipuani	6
86360	CCCP 75705	Cairo - Moscow	35
86365	WU-26	\N	20
86370	G-AMNK	Heraklion. Greece - Cairo. Egypt	3
86375	F-BHBC	Paris - Dakar	63
86380	N90779	Guam - Wake Island	94
86385	56541	Atsugi. Japan - Subi Point. Philippines	29
86390	OE-LAF	Warsaw - Moscow	37
86395	XA-HUS	Tapachula - Mexico City	18
86400	SU-AKW	Geneva - Rome	21
86405	N5533	Boston - Philadelphia	72
86410	I-AOMA	Rome - Genoa	11
86415	N1300N	Rapid City. South Dakota - Ogden. UT	2
86420	CCCP-42452	\N	3
86425	N48762	Spokane - Missoula	12
86430	N1244N	Toledo - Kansas City. MO	48
86435	9N-AAD	\N	4
86440	HC-ADV	Guayaquil - Quito	37
86445	PI-C133	Iloilo - Manila	33
86450	PP-AKF	Cuiaba - Manaus	15
86455	T-102	Buenos Aires - Lima	31
86460	CC-CLD-P210	Temuco - Santiago	24
86465	F-BHBM	Fort Lamy. Chad - Marseilles. France	78
86470	51-0174	\N	22
86475	N8013U/N6907C	Chicago - New York City / Columbus - New York City	128
86480	55-291	Munich - Northolt AB. England	20
86485	PI-C126	Cebu - Davao	37
86490	OK-MCZ	\N	10
86495	OH-LCC	Kokkola - Vaasa	25
86500	XA-XAX	New York - Mexico City	106
86505	BU143193	\N	22
86510	PK-GDI	Jakarta - Bandung	21
86515	51-17626	Azores - Argentia.Newfoundland	23
86520	N7502A	Training	6
86525	PK-GDY	Surabaya - Balikpapan	26
86530	OO-SJB	New York City - Brussels	72
86535	YV-C-AZQ	San Antonio-Maiquetia	12
86540	C-47-2055	Rio de Janerio - Belem	28
86545	OK-OAD	Prague - Zurich	52
86550	WD497	\N	13
86555	PH-DCL	Rome  - Lisbon -  Madrid - Santa Maria. Azores -Caracas	61
86560	PH-LLM	Rome - Cairo	36
86565	D-ABEB	Tripoli - Kano	7
86570	LV-FTO	Salta - Cordoba - Buenos Aires	35
86575	CCCP-42447	\N	85
86580	N8040U	Omaha - Denver	122
86585	OK-PAF	Zurich - Rabat	72
86590	LV-ADW	Buenos Aires - Comodoro	67
86595	N6118C	Seattle - Shemya AFB	6
86600	HA-TSA	\N	27
86605	G-AHPM	London - Sola	39
86610	B-136	\N	6
86615	CF-MEX	\N	6
86620	N86511	Chicago - Las Vegas	78
86625	ET-T-16	Addis Ababa - Asmara	19
86630	TI-1006C	\N	2
86635	PK-GDZ	\N	14
86640	N90773	Shannon - Gander	83
86645	F-BJTB	Paris - Rabat	77
86650	SE-BDY	Leopoldville - Ndola	16
86655	N137US	Chicago - Tampa	37
86660	TC-TAY	Adana - Ankara	29
86665	G-AMSW	London - Perpignan	34
86670	WD498	\N	37
86675	G-ANWL	Cherboug - Les Prevosts	10
86680	PP-PDO	Lisbon - Ilha do Sal - Recife	45
86685	N2737A	Baltimore - Columbia SC	79
86690	HH-ABA	San Juan. PR - Managua	3
86695	LV-AHR	Sao Paulo - Trinidad	52
86700	\N	\N	35
86705	VH-TVC	Sydney - Canberra	15
86710	D-ABOK	Training	3
86715	CP-23 / CP-25	\N	13
86720	AN-AOE	\N	2
86725	G-ARJM	Ankara - Nicosia	34
86730	N1503V	Old Harbor - Kaguyak	5
86735	CP-541	\N	6
86740	CCCP-11148	\N	13
86745	OB-PBH-530	Huanuco - Pucallpa	18
86750	YV-C-EVH	Porlamar - Cumana	23
86755	HK-502	Manizales - Bogota	2
86760	N7506A	New York City - Los Angeles	95
86765	G-ARUD	Douala - Lisboa	111
86770	ZS-DJC	Grahamtown - Queentown	7
86775	TC-KOP	Ankara - Adana	11
86780	I-DIMO	Khartoum - Rome	5
86785	55-0020	Training exercise	15
86790	N6911C	Cold Bay. AK - Adak. AK	7
86795	N6921C	Travis AFB - Honolulu - Agana. Guam - Clark AFB -Saigon	107
86800	204	\N	11
86805	CU-T819	Santiago de Cuba - Havana	22
86810	FAC-563	Bogota - Araracuara - Villavicencio	31
86815	HK-524	Bahia Solano - Quibdo	40
86820	EC-ATB	Barcelona - Valencia - Seville	18
86825	G-AGZB	Jersey. Channel Islands - Portsmouth. England	18
86830	UB-BG-707	\N	32
86835	PP-CEZ	Rio de Janerio - Vitoria	25
86840	CF-IHA	Sondre Stromfjord - Godthab	21
86845	SU-AJM	Cairo. Egypt  - Beirut. Lebanon	3
86850	56-0546	\N	13
86855	131390	\N	26
86860	N70775	Chicago - Kansas City. MO	45
86865	F-BHSM	Paris - New York City	132
86870	CCCP-42491	\N	5
86875	F-BHST	Paris - Pointe-a Pitre - Santaigo	112
86880	CCCP11186	Lvov - Sochi	81
86885	CCCP-42370	\N	84
86890	\N	\N	14
86895	I-DIWD	Bangkok - Bombay	94
86900	OD-AEC	\N	6
86905	VT-AUS	Kabul  - Amritsar. India	3
86910	VT-DFZ	\N	9
86915	SU-AMW	Hong Kong - Bangkok	26
86920	CF-CZB	Honolulu - Nadi. Fiji	40
86925	CCCP-11186	\N	81
86930	F-BAOE	Training	8
86935	9N-AAH	Katmandu - New Deli	10
86940	PP-PDT	Rio de Janeiro - Lisbon	105
86945	HK-794	Berranca Bermeja - Bucaramanga	32
86950	OB-PBN-659	\N	9
86955	CCCP-42366	Khabarovk - Petropavlovsk	86
86960	KA-4628	\N	12
86965	N1000F	\N	13
86970	OK-MCT	Bratislava - Brno	34
86975	60-0352	Ellsworth AFB - Fairchild AFB	44
86980	CP-710	Caranavi - Rurrenabaque	4
86985	VT-DGX	\N	8
86990	N6923C	Gander. Newfoundland - Frankfurt. Germany	76
86995	CF-THA	\N	19
87000	PI-C503	Training	3
87005	XA-COL	\N	8
87010	N8415N	Washington D.C. - Providence. RI	52
87015	CCCP-42495	\N	10
87020	XV-NID	Hue - Da Nang	27
87025	JA8202	\N	4
87030	N7430	Newark - Washington D.C.	18
87035	7502	\N	37
87040	HA-MOD	Frankfurt - Paris	21
87045	PP-SRA	Sao Paulo - Rio de Janeiro	26
87050	PP-VJB	Porto Alegre - Lima	97
87055	N815D	Charlotte - New York City	51
87060	HK-437E	Bucaramanga - Barrancabermeja	26
87065	PP-PDE	Belem - Manaus	50
87070	N6913C	Chicago - Burbank	5
87075	SP-LVB	Berlin - Warsaw	33
87080	\N	\N	12
87085	PP-VCQ	Rio de Janeiro - Brasilia	40
87090	G-ARSF	Southend. England - Rotterdam. The Netherlands	18
87095	F-BELZ	Bastia - Ajaccio	25
87100	N994B	\N	2
87105	N65458	\N	6
87110	PP-CEV	\N	45
87115	N2703	Training	3
87120	N67933	\N	2
87125	N242V	Midland. TX - Kansas City. MO	8
87130	\N	\N	14
87135	OD-ADE	Nicosia - Ankara	17
87140	N9740Z	\N	8
87145	CCCP-11193	Training	7
87150	N724US	Miami - Chicago	43
87155	N842D	\N	26
87160	PI-C489	Cotabato - Davao	27
87165	N7000P	Kansas City - Dyersburg - Nashville	4
87170	OD-ACZ	Tehran - Beirut	4
87175	CP-707	Arica - La Paz	41
87180	SA-R-7	Geneva - Nice	18
87185	\N	\N	10
87190	SE-CCK	\N	43
87195	I-TAVI	Pescara - Rome	11
87200	TF-ISU	Copenhagen - Oslo	12
87205	F-BIAO	Douala - Lagos	55
87210	PP-CDW	Sao Paulo - Rio de Janeiro	50
87215	SU-AJX	Cairo - Alexandria	34
87220	N290	McChord AFB - Elmendorf AFB	101
87225	VT-AUL	Amritsar - Srinagar	29
87230	XY-ACS	Rangoon - Putao	20
87235	YR-ILL	Munchen - Constanta	31
87240	FAC-953	\N	20
87245	CP-45	\N	47
87250	CP-45	\N	47
87255	PP-VBV	Carazinbo - Passo Fundo	18
87260	N449A	Rochester - Newark	43
87265	ZK-AYZ	Auckland - Whenuapai - Tauranga	23
87270	CCCP42492	Moscow - Irkutsk	35
87275	5R-MAJ	\N	12
87280	B-148	\N	6
87285	SU-ALD	Bangkok - Bombay	63
87290	1718K	\N	13
87295	F-BGNV	Lille - Lyon	20
87300	N67941	\N	2
87305	JA6155	\N	19
87310	CCCP-45021	Tallinn - Moscow	52
87315	61-0319/61-0322	\N	16
87320	HG-ICV	Zurich - Geneva	80
87325	F-BJER	London - Perpignan	40
87330	VT-DIO	Madras - Nagpur - Delhi.	18
87335	56-2002	\N	10
87340	HP-385	Marseilles. France - Dhah. Saudi Arabia	6
87345	N6673D	Idlewild - Newark	6
87350	\N	\N	31
87355	CCCP-04188	\N	5
87360	G-ASHG	Test flight	7
87365	OH-LCA	Turku - Mariehamn	24
87370	CF-TJN	Montreal - Toronto	118
87375	N609	Lowery AFB - Ogden Hill AFB	3
87380	N709PA	Washington - Baltimore - Philadelphia	81
87385	OD-AEB	Kawait - Kabul	3
87390	SU-AFK	Cairo - Luxor	6
87395	N93131	\N	46
87400	LV-FYJ	Rosario - Buenos Aires	30
87405	N2136P	\N	2
87410	TC-ETI	Istanbul - Ankara	3
87415	N2999	Gainsville - Jacksonville	10
87420	CP- 568	\N	29
87425	N2157P	Freeport. Grand Bahamas - West Palm Beach. FL	4
87430	N3823C	Detroit - Akron	4
87435	\N	\N	13
87440	PI-C97	Cotabato - Malabang - Iligan - Cayagan de Oro	32
87445	\N	\N	22
87450	N1800D	\N	2
87455	N8607	Mexico City - New Orleans - New York City	58
87460	JA5098	Kagoshima - Oita	42
87465	G-AOVO	London - Innsbruck	83
87470	N86504	San Jose. CA - Lake Tahoe	85
87475	HK-862	Pereira - Bogota	28
87480	N410D	\N	30
87485	N384	New York - Winsor Locks - Boston	3
87490	N61442	Billings - Miles City - Glendive - Sidney	5
87495	N4320P	\N	3
87500	I-LAKE	Rome - Napoli	45
87505	N4726V	Honolulu - San Francisco	9
87510	VR-AAM	\N	15
87515	OD-AEM	\N	49
87520	N9984X	\N	2
87525	N2770R	Stockton - San Fransisco	44
87530	TC-46	\N	10
87535	T-47	Buenos Aires - Lima	49
87540	62-0332	\N	84
87545	PI-C51	Siocon - Zamboanga	11
87550	PP-SPZ	Training	3
87555	N5420P	\N	3
87560	HZ-AAN	Training	2
87565	N344S	Washington D.C. - Southhampton. MA	5
87570	B-908	Taichung - Tainan	57
87575	EC-AQH	Palma de Mallorca - Ibiza	28
87580	N18946	Martinsville. Virginia - Wilmington. Delaware	5
87585	N1007U	\N	53
87590	N769TW	Rome - Athens	73
87595	N7405	Philidelphia - Washington - Knoxville - Huntsville	39
87600	N5493W	\N	3
87605	N809D	New York City - Richmond - Jacksonville	76
87610	N8972M	Batesville - Nashville	2
87615	N6015Z	\N	3
87620	N5485Y	\N	2
87625	CP-680	La Paz - Tipuani	4
87630	CCCP-75531	Krasnoyarsk - Yuzhno	87
87635	PP-SRR	Vitoria - Rio de Janeiro	39
87640	\N	Khoke Kathiam - Vaong Nong	34
87645	HK-319	Condoto - Medellin	2
87650	F-BHMS	Palma de Mallorca - Port Etienne	80
87655	LX-IOK	Dublin. Ireland - Addis Ababa	7
87660	YR-ILB	\N	32
87665	N9340F	\N	2
87670	\N	\N	33
87675	N2849G	\N	5
87680	N745L	Phoenix - Las Vegas	29
87685	151362	\N	10
87690	N9574Z	\N	3
87695	OO-DEP	\N	14
87700	N5089U	\N	5
87705	CP-639	Tipuani - La Paz	17
87710	\N	\N	38
87715	PI-C569	Kalibo - Manila	39
87720	OB-XAU	\N	23
87725	N6915C	San Francisco - New York	3
87730	CC-CAN	\N	5
87735	N608Z	Cleveland - Detroit - Denver	4
87740	N2401G	\N	3
87745	N8689X	\N	2
87750	57-1442	\N	17
87755	\N	\N	10
87760	52-1058	\N	10
87765	F-OAFI	\N	4
87770	CC-CCG-104	Santiago - Buenos Aires	87
87775	N849D	New York City - Richmond VA	84
87780	YS-012C	\N	2
87785	JA5080	Osaka - Tokyo	2
87790	N2151D	\N	2
87795	62-1845	\N	7
87800	PI-C948	Manila - Naga	12
87805	CCCP-45028	\N	25
87810	CF-NAF	Halifax - Sidney NS	8
87815	HK-109	Bogota - Bucaramanga	28
87820	20727	Training exercise	16
87825	AP-AAH	Peshawar - Chitral	26
87830	EC-ATH	Malaga - Tangiers	53
87835	N84R	\N	2
87840	JY-ACQ	Beirut  - Amman	54
87845	G-ANTB	Paris - Jersey . Channel Islands	27
87850	N7397P	\N	2
87855	N6541C	Seattle. WA - Ogden. UT	5
87860	EC-AIN	Madrid - Tenerife	49
87865	AP-AMH	Karachi - Dhahran - Cairo - Geneva - London	125
87870	63-8760/63-8840	\N	18
87875	60-0373	El Toro -  Honolulu - Okinawa	85
87880	N761PA	San Francisco - Hawaii	153
87885	N70773	Los Angeles - Kansas City. MO	66
87890	AP-ATT	Rawalpindi - Skardu	4
87895	TG577	\N	41
87900	\N	Cairo - Yamen	31
87905	CF-CUQ	Vancouver - Whitehorse	52
87910	55-1036	Otis AFB	19
87915	N6503D	\N	12
87920	\N	\N	11
87925	777	Hong Kong - Da Nang	37
87930	OB-R-769	Panama City - Miami	7
87935	PP-BTH	Mato Grosso - Porto Velho	13
87940	N7036U	New York City - Chicago	30
87945	SP-LVA	Lille - Wroclaw	4
87950	149802	Hong Kong - Da Nang	72
87955	N6305U	\N	5
87960	PI-C942	Cebu - Bacolod	11
87965	ET-ABI	\N	17
87970	HC-AFQ	Coca - Pastaza	11
87975	XV-NIC	\N	39
87980	N708PA	Fort de France - Saint Johns. Antigua	30
87985	970	\N	10
87990	HK-118/HK-922F	Bogota - Bucaramanga	19
87995	VT-AUQ	\N	8
88000	F-BELV	\N	13
88005	PI-C-144	Manila - Tacloban	37
88010	G-APEE	Edinburgh - London	36
88015	316410	Djibouti - Obock	30
88020	TC-48	\N	68
88025	HK-1202	Neiva - San Vicente del Caguan	30
88030	N1996	New York City - Cincinnati	62
88035	CCCP-45086	\N	32
88040	N7030U	Denver - Salt Lake City	91
88045	N9915Z	\N	2
88050	N243F	Palm Springs - Burbank	8
88055	N485	Salt Lake - Albuquerque	13
88060	N748TW/N6218C	Boston - Newark	112
88065	HK-527	\N	8
88070	EC-ARZ	Tenerife - Manchester. England	32
88075	56-4376	Pleiku - Tuy Hoa	85
88080	N89805C	\N	2
88085	PI-C856	Manila - Legazpi	21
88090	N4554D	\N	3
88095	PK-GDU/PK-GDE	\N	34
88100	HK-730	Bogata - Crespo	64
88105	N4662	\N	35
88110	VT-DMN	Bombay - Beirut  - Geneva - Paris - London -New York	117
88115	54-0702	\N	46
88120	N598C	\N	3
88125	D-ACAT	Frankfurt - Bremen	46
88130	JA8302	Chitose - Tokyo	133
88135	PH-SAB	Srinngar - Jammu - Amritsar - Delhi	37
88140	N112U	\N	2
88145	VT-DPP	Calcutta - Delhi	80
88150	OO-ABG	Brussels - Milan	4
88155	CF-CPK	Hong Kong - Tokyo	72
88160	N1563V	\N	3
88165	G-APFE	Tokyo - Hong Kong	124
88170	N3296W	\N	6
88175	CF-MSK	\N	7
88180	OD-AEL	Beirut - Frankfurt	5
88185	SU-AOA	Nicosia - Cairo	30
88190	N1245N	\N	2
88195	N2486U	\N	2
88200	152171	\N	11
88205	N8744R	\N	2
88210	N183H	Monterey - Ardmore	98
88215	OB-R-771	Lima - Cuzco	49
88220	64-13138	\N	20
88225	N4546B	\N	2
88230	57-1444	\N	11
88235	N10415	Detroit. MI - Kansas City. MO	3
88240	CF-FBJ	Montreal - Kuujjuaq	2
88245	N17337	\N	12
88250	N5775Y	\N	4
88255	PI-C17	Mamburao - San Jose	26
88260	ZK-NZB	Training	5
88265	N538B	\N	4
88270	CP-730	Riberalta - Cochabamba	3
88275	N1553	Kansas City. MO - Omaha	42
88280	YR-TAN	Brasov - Mamia	24
88285	XA-PEI	Training	6
88290	N445	\N	4
88295	N1836H	\N	6
88300	150321	\N	1
88305	LV-GLA	Rio Gallegos -  Buenos Aires	16
88310	N88820	\N	9
88315	G-ANBB	Luton - Ljubljana	117
88320	VT-DSB	Training	4
88325	EC-AXC	\N	27
88330	VH-RMI	Mount Isa - Longreach	24
88335	HK-174	Bogota - Barranquilla	2
88340	N9101	Eugene - Portland	18
88345	63-9751	\N	32
88350	N1187W	\N	11
88355	CCCP-46467	\N	38
88360	N3279W	\N	6
88365	N411Z	\N	2
88370	N4816U	\N	3
88375	55-5262	Otis AFB	19
88380	JA8658	Osaka - Matsuyama	50
88385	N317PA	Frankfurt - Berlin	3
88390	N40406	\N	3
88395	VR-AAN	\N	30
88400	LZ-BEN	Bratislava - Praha	82
88405	4476574	Saigon - Korat AB	25
88410	PP-PCW	\N	11
88415	CCCP-76457	Moscow - Brazzaville	21
88420	N7301C	Miami - Bogota	59
88425	N228SW	\N	4
88430	HK-161	Bogota - Cali	29
88435	N2045D	\N	9
88440	N30046	\N	3
88445	\N	\N	10
88450	N4129P	\N	3
88455	G-ASOG	Manchester. England - Frankfurt. Germany	2
88460	YK-ACB	\N	19
88465	PP-SDJ	Sao Paulo - Curitiba	25
88470	N4855U	\N	2
88475	\N	\N	30
88480	CU-T827	Havana - Mexico City	10
88485	HB-IMF	Training	4
88490	N3796U	\N	2
88495	PK-GLB	Jakarta - Menado via Surabaya	63
88500	HR-SAG	San Pedro Sula - Tegucigalpa	55
88505	PI-C501	Manila - Mactan	20
88510	PP-PEA	Rome - Monrovia	90
88515	N73130	Colombus - Toledo	38
88520	F-BMHU	\N	6
88525	N1063T/N6127V	Pittsburgh - Dayton	26
88530	99844	Siagon - Cam Ranh Bay AB	25
88535	N2712	\N	4
88540	I-CLAI	Venezia - Belluno	5
88545	ZS-CVA	Port Elizabeth - East London	25
88550	N80194	\N	2
88555	N1333Z	\N	2
88560	N802E	New Orleans AP - New Orleans AP	6
88565	N7979Y	\N	2
88570	N706G	\N	5
88575	N3727G	\N	9
88580	\N	Yoido AB - Taegu	15
88585	7T-VAU	Algiers - Tamanrasset	39
88590	5-107	Shiraz - TerhanI	23
88595	HB-ITB	Bombay - Cairo	130
88600	53-0549	Otis AFB	15
88605	HK-326	\N	18
88610	PK-PFB	\N	21
88615	151365	\N	12
88620	N80013 / N5836W	\N	14
88625	N1301G	\N	4
88630	FAC-956	\N	16
88635	CF-NAD	\N	4
88640	CF-TJM	Training -Montreal - Ottawa	3
88645	G-APYK	\N	88
88650	G-ALHG	Palma de Mallorca - Manchester	84
88655	58-0737	\N	10
88660	HZ-AAJ	\N	18
88665	EI-APM	Glasgow - Dublin	2
88670	XA-FUW	La Paz - Mazatlan	4
88675	C-47-268	Belem - Cachimbo	25
88680	64-0547	\N	11
88685	60-0293	An Khe - Tan Son Nhut	56
88690	EI-AOF	Training	3
88695	N6936C	\N	7
88700	N1116J	Elmira - Washington DC	34
88705	638572/153305	\N	35
88710	HZ-AAM	Nejran - Jeddah	17
88715	HS-TGI	Seoul - Hong Kong	80
88720	PI-C527	Bacolod - Mactan	21
88725	5R-MAD	\N	42
88730	N68650/N3121S	Ashville - Roanoke	82
88735	XW-PDL	Vientiane - Luang Prabang	16
88740	B-112	Vientiane - Luang Prabang	18
88745	N3308W	\N	7
88750	39	\N	11
88755	54-0621	\N	11
88760	OK-WAI	Gander - Havana	69
88765	N9507Z	\N	8
88770	61-2649	\N	23
88775	N8372U	\N	3
88780	G-ARCO	Athens - Nicosia	66
88785	N396Z	\N	4
88790	B-1541	Phan Rang - Pleiku	16
88795	N2677B	\N	2
88800	EC-BDD	Malaga - London	37
88805	VR-HFX	Hong Kong - Saigon	127
88810	N742TW	Cincinnati - Los Angeles	36
88815	CCCP-75538	\N	130
88820	N821TW	Los Angeles - Cincinnati	82
88825	N784LC	\N	5
88830	N9450Z	\N	3
88835	62-4175	\N	26
88840	XW-PFM	\N	12
88845	OB-R-148	Huanuco - Tingo Maria	72
88850	N390R	Cleveland. OH - Madison WI	8
88855	N8501F	\N	3
88860	N3408W	\N	6
88865	XF702	\N	13
88870	N65276	Denver. CO - Scottsbluff. NE	2
88875	HS-TDH	Bangkok - Chiang Mai	31
88880	CCCP-46215	Riga - Liepaja	51
88885	N6139V	\N	6
88890	N82B	\N	4
88895	N7921V	\N	5
88900	153710	\N	42
88905	50850	Buckley ANGB - Seattle NAS	19
88910	SU-AJG	Cairo - Beirut	4
88915	152144	\N	12
88920	58-0026	\N	13
88925	F-OECD	\N	16
88930	153440	\N	12
88935	N791SA	Honolulu - Vancouver	61
88940	BL534	Chandigarh. Punjab - Leh. Kashmir	98
88945	B-1018	Hong Kong - Taipei	63
88950	N1838F	\N	3
88955	XW-TAD	Vientiane - Sayaboury	37
88960	CCCP-74252	Krasnoyarsk - Petropavlovsk	82
88965	F-BLCJ	Caracas - Pointe a Pitre	63
88970	54-0590	Hue - Khe Sanh	49
88975	PI-C871	Manila - Lapu Lapu	14
88980	43748	Saint Denis - Paris	20
88985	N2623F	\N	2
88990	N2224U	\N	5
88995	EI-AOM	Cork - London	61
89000	N970Z/N8669G	Peoria. IL - St. Louis. MO	51
89005	\N	\N	2
89010	153445	\N	12
89015	G-ARWE	London - Zurich	127
89020	CC-CBM	\N	36
89025	N3152R	\N	4
89030	XA-GEV	Aguascalientes - Mexico City	18
89035	WB833	\N	11
89040	6616441/6717255	\N	26
89045	ZS-EUW	Windhoek - Luanda	128
89050	CCCP-75526	Training	5
89055	N6275N	\N	5
89060	64145	\N	22
89065	N9707C	Houston - Dallas-Fort Worth	85
89070	XR133	Libya - England	11
89075	60-0297	\N	155
89080	N4307Y	\N	4
89085	N303Y	Anaheim - LAX	23
89090	PK-GJA	\N	29
89095	N7395U	\N	4
89100	N798PA	Bangkok - Karachi	63
89105	I-PIAI	\N	6
89110	\N	Kaunas - Ryazan / Moscow - Gomel	120
89115	\N	\N	29
89120	N6898D	\N	27
89125	G-AMAD	Deauville. France - London. England	8
89130	N5694Y	Ft. Lauderdale - Bahama Island	4
89135	HZ-AAZ	\N	11
89140	OO-SJK	Brussels - Lagos	7
89145	PP-VBJ	\N	3
89150	CC-CDI	\N	5
89155	51-5178	\N	10
89160	N8317S	\N	3
89165	I-DIWF	Rome - Milan	95
89170	N4634S / N8742S	\N	15
89175	G-ATFN	London - Innsbruck	48
89180	N712U	Cincinnati - Charlston. WV	37
89185	N3821	Halifax. NS - Santa Maria. Portugal	3
89190	N300Y	\N	21
89195	SU-AOL	Cairo - Damascus	40
89200	YV-C-AMY	\N	7
89205	N2520Y	\N	2
89210	LN-BFD	\N	6
89215	LZ-BEG	\N	89
89220	N8283F / N8828W	\N	9
89225	F-BOHB	Ajaccio - Nice	95
89230	55-3133	\N	52
89235	N90427	Lagos - Port Harcourt	57
89240	N674T	\N	3
89245	63-9753	\N	13
89250	639753/6619041	\N	25
89255	N4040B	\N	4
89260	TI-1063C	\N	10
89265	N5140Y	\N	3
89270	OK-MCY	Praha - Kosice	40
89275	17949	\N	10
89280	PP-SAD	\N	19
89285	450934	Saigon - Da Nang	23
89290	N380NE	Boston. MA - Montpelier. VT - Lebanon. NH	42
89295	N3810C	\N	8
89300	JA8032	Tokyo - San Francisco	107
89305	N7666	Los Angeles - Santa Ana	9
89310	N1386N	\N	28
89315	N2202T	\N	5
89320	N4905	Anchorage - Iliamna	39
89325	N433AC	\N	11
89330	N6257X	\N	3
89335	N494PA	New York City - Caracas	51
89340	N5802	Detroit - Erie - Bradford - Washington D.C.	47
89345	N760AL	Fairbanks - Prudhoe Bay	4
89350	N799PA	San Francisco - Anchorage - Cam Ranh Bay. Vietnam	3
89355	\N	Tijuana - Black Warrior Lagoon. Baja	12
89360	N2045	Minneapolis - Chicago - Milwaukee	45
89365	64-0545	\N	12
89370	N4901	Fairbanks - Bethel - Minchumina	5
89375	VH-RMQ	Perth - Port Hedland	26
89380	XA-SAE	Reynosa - Tampico	26
89385	B-309	Kaohsiung - Hualien	24
89390	N4048G	\N	2
89395	YA-FAR	Frankfurt - London	65
89400	N5825	Washington - Harrisburgh - Bradford - Erie - Detroit	28
89405	\N	\N	24
89410	LN-MOO	Copenhagen - Los Angeles - Seattle	45
89415	949	Hue - Da Nang	12
89420	N7434U	Los Angeles - Denver - Milwaukee	38
89425	65-0990	\N	13
89430	N8181H	Port Angeles - Seattle	10
89435	65-0990	\N	14
89440	N15570	Hawthorne. NV - Burbank - Long Beach	35
89445	B-2009	Kaohsiung - Taipei	36
89450	N563PR	Saint Thomas - San Juan	19
89455	YV-C-AVD	Maracaibo - Miami	84
89460	N73997 / N22790	\N	3
89465	SU-APC	Jeddah - Aswan	105
89470	N142D	Memphis - New Orleans	27
89475	N3914	\N	2
89480	SP-LTF	Warsaw - Cracow	53
89485	67-18523	\N	78
89490	CF-THK	\N	21
89495	135749	\N	31
89500	\N	Kinshasa - Luluaburg	45
89505	N167W	\N	9
89510	VT-DOJ	Silchar. India - Khulna. Bangladesh	44
89515	9G-AAF	\N	33
89520	67-21493	\N	18
89525	LQ-IPC	\N	11
89530	TC-28	Service mission	11
89535	66-19029	\N	74
89540	N1243N	Medford. NJ - Allentown. PA	2
89545	XY-ACR	\N	6
89550	I-ATIT	Rome - Reggio di Calabria	36
89555	XA-SEL	Mexico City - Monterey	79
89560	N2665S	\N	3
89565	62-4137	Shemya. AK - Eielson. AK	19
89570	N2550A	Pasco - Spokane	2
89575	\N	\N	14
89580	N844NS	Atlanta. GA - Sumpter. SC - Greer. SC	14
89585	9N-AAP	Katmandu - Simra	35
89590	N58Q	Sagwon.AK - Elusive Lake. AK	2
89595	N558MA	New York - Newark	14
89600	N3007T	McGrath. AK - Sparrevohn. AK	4
89605	N88G	Kalaupapa - Lihue	13
89610	N787TW	Training	5
89615	7T-VAK	Paris - Hassi Messaoud	37
89620	N73909	Sightseeing	3
89625	CF-NAJ	\N	4
89630	N8403E	Sightseeing	3
89635	N196X	Long Tieng. Laos - Sam Thong. Laos	13
89640	HC-ALK	\N	1
89645	\N	\N	112
89650	F-BHSZ	Caracas - Pointe a Pitre. Guadeloupe	62
89655	CCCP-11381	\N	8
89660	N3149X	Chicago - Des Moines.	3
89665	\N	\N	35
89670	67-21495	\N	16
89675	FAC-685	Bogota - Villavicencio	28
89680	N988VJ/N7374J	Indianapolis - Bakalar AFB	83
89685	PI-C1131	Mactan - Manilla	47
89690	PP-SPP	Camp Grande - Londrina - Sao Palo	21
89695	CF-PWR	Vancouver - Campbell River	15
89700	XV-NUG	Pleiku - Da Nang	76
89705	XA-SEJ	Chicago - Mexico City	118
89710	CP-698	Santa Cruz - La Paz	74
89715	N52676	\N	5
89720	152796	\N	26
89725	N590CA	Rawling. WY - Denver. CO	5
89730	CF-AAL	Winisk - Timmins	4
89735	N8216V	Sitka. AK - Pt. Alexander. AK	2
89740	CCCP-11376	\N	9
89745	N7811M	Albany - Glenn Falls	14
89750	5N-ABD	Kano - Lagos	87
89755	SX-DAE	Chania - Athens	90
89760	N5090Y	Houlton. ME - Portland. ME	3
89765	150879	\N	1
89770	B-2005	\N	77
89775	XW-TDJ	\N	19
89780	N3472Y	Nulato. AK - Tanana. AK	4
89785	EC-BNM	Stockholm - Zurich	10
89790	\N	\N	27
89795	5W-FAC	Apia. Western Samoa - Pago Pago. American Samoa	32
89800	OB-R-776	Trujillo - Juanjui	28
89805	N3766	Detroit. MI - Chicago. IL	2
89810	XB-DOK	\N	19
89815	9N-AAR	Kathmandu - Delhi	23
89820	CCCP-47701	\N	34
89825	N2300H	Cleveland - Detroit	9
89830	CCCP-45083	\N	11
89835	LV-HGW	Corrientes - Rosario	37
89840	YR-AMT	Bucharest - Oradea	22
89845	CCCP-75798	\N	92
89850	N124PM	Groton. CT - New York. NY	5
89855	HK-1270	\N	12
89860	HI-177	Santo Domingo - San Juan	102
89865	N3218Q	Sherbrooke. Canada - Newark. NJ	4
89870	9Q-CUD	\N	17
89875	HB-ICD	Zurich - Tel Aviv	47
89880	D-INAH	Munchen - St. Moritz	11
89885	PP-BUF	Reclife - Belem	40
89890	145927	Taiwan - Da Nang	31
89895	N497DM	Binghamton. NY - Washington DC	11
89900	N4121R	Grand Canyon - Las Vegas	6
89905	CN-CCV	Agadir - Casablanca	82
89910	CCCP-47751	\N	45
89915	N3241W	Teterboro. NJ - Cambridge. MD	3
89920	54-1625	\N	10
89925	PI-C-1022	Cuayan - Manila	36
89930	MM52-6018	\N	19
89935	VH-TGR	\N	11
89940	N935F	New York City - St. Maarten	63
89945	52-5822	\N	14
89950	6O-AAJ	\N	30
89955	PI-C532	\N	33
89960	N434EJ	Detroit - Pellston	6
89965	CCCP11149	\N	11
89970	YV-C-AMK	\N	6
89975	HR-ASN	\N	6
89980	N40412	Chamblee. GA - Fort Myers.FL	33
89985	OK-NDO	\N	13
89990	PI-C507	Manila - Bacolod	44
89995	TC-75	\N	8
90000	N154R	McGrath AK - Galena. AK	27
90005	G-APDN	Manchester - Barcelona	112
90010	CF-TIW	Montreal - Toronto - Los Angeles	109
90015	CCCP-09303	Reykjavik - Halifax - Sidney	23
90020	N3016L	San Antonio. TX - Rudioso. NM	7
90025	N785FT	Tokyo - Okinawa	4
90030	\N	\N	37
90035	152159	Las Vegas - San Diego	10
90040	AP-ALM	Rawalpindi - Lahore	30
90045	OB-R939	Cuzco - Lima	100
90050	B-156	Hwa-Lien	31
90055	67-18445	\N	32
90060	VT-DWT	Silchar - Gauhati	39
90065	PH-NVA	\N	10
90070	CCCP-45012	\N	37
90075	CCCP-87690	\N	22
90080	N4863T	Jamaica. NY - Washington D.C.	11
90085	N855JA	San Juan - Ponce	1
90090	N2346S	Portland. OR - Cranbrook. Canada	4
90095	TF-FIL	\N	34
90100	B- 305	Pleiku - Hue	38
90105	CCCP-11031	\N	8
90110	N464M	Wichita - Denver - Logan. Utah	40
90115	64-0536	Taipei - Ching Chuan Kang	43
90120	N701X	Dubois. PA - Roanoak. VA	2
90125	ZS-DKR	Johannesberg - Orapa Mine. Botswana	11
90130	N9248R	Dayton. OH - Ft. Dix. NJ	3
90135	N7667J	Teleboro. NJ  - Wilmington. DE	2
90140	HK-792	\N	4
90145	N97S	Kingston. NC - Huntington. WV	75
90150	53-03724/560	\N	18
90155	N4909C	Anchorage - Yokota AFB	229
90160	55-4574	Saigon - Nha Trang AB	79
90165	54-0649	Cam Ranh Bay AB - Siagon	44
90170	TF-LLG	\N	4
90175	VT-CZC	\N	16
90180	YR-BCA	Tel Aviv - Constanta	27
90185	CCCP-09305	\N	25
90190	N8790R	New York - St. Thomas	55
90195	AP-AUV	\N	35
90200	F-BNGB	Algiers - Menorca	31
90205	CCCP-75773	Leningrad - Erevan	93
90210	SU-ALC	Algers - Boumediene	16
90215	N7595A/N60942	San Francisco. CA - Newark. NJ	21
90220	LZ-BED	Paris - Zurich - Sofia	47
90225	F-RBOA	Paris - Orange	21
90230	FAP-381	Mazamari - Lima	35
90235	CCCP 11000	\N	13
90240	PT-LJR	\N	8
90245	HL-5212	Kangnung - Seoul	60
90250	YV-C-AMV	Merida - Maiquetia	48
90255	CCCP-12996	\N	7
90260	N3680K	Mona Is.. PR - Mayaguez. PR	3
90265	TAM-60	La Paz - San Borja	12
90270	VT-ATT	Gauhati - Calcutta	15
90275	N3166	Los Angeles - Ontairo	5
90280	CCCP-11145	\N	64
90285	293246	Manila - Nichols AFB	40
90290	N4960F	Kayenta. AZ - Tucon. AZ	2
90295	N456T	C. Amalie. VI - San Juan. PR	8
90300	N144H	Manchester. NH - Boston. MS	4
90305	N4922V	Tucon. AZ - Phoenix. AZ	12
90310	TG-ACA-A	Guatemala City - Tikal	35
90315	N9222	Sagwon. AK - Local	4
90320	YU-AHZ	London - Rijeka	83
90325	37653	\N	11
90330	N601JJ	Atlanta. GA - Martinsville. VA	6
90335	HA-MOC	Oslo. Norway - East Berlin. German	34
90340	ST-AAY	\N	42
90345	N9345/151458	Los Angeles - Salt Lake City	51
90350	N5832	Washington D.C. - Newport News. VA - Philadelphia	31
90355	61-0331	Hickam AFB - Pango Pango	24
90360	CP-926	Santa Cruz - Arica	6
90365	N90627	Shelter Cove. CA - San Jose. CA	24
90370	JA8764	Sapporo - Hakodate	68
90375	N7893S	Fairbanks. AK - Local	3
90380	6V-AAP	\N	6
90385	N461PA	San Francisco - Honolulu - Guam - Manila - Siagon	4
90390	CCCP-42405	Novosibirsk - Irkutsk	126
90395	JA8329 / 	Sapporo - Tokyo	164
90400	N747PA	San Francisco - Los Angeles	218
90405	49	Exercises	39
90410	\N	Odessa - Irkutsk - Vladivostok	100
90415	N5096V	Valdez. AK - Local	2
90420	66-19023	Ludwigsburg - Grafenwohr	37
90425	N595DE	Boston. MA - Rockville. ME diverted to  Augusta ME	8
90430	VT-DXG	Trivandrum - Madurai	31
90435	N2969G	Anchorage - Seattle	111
90440	D-ALAR	Hamburg. Germany - Malaga. Spain	121
90445	N2779B	Temple. TX - Columbus. GA	5
90450	4W-ABI	\N	5
90455	HA-LBD	Budapest - Kiev	49
90460	PP-CBV	Cruzerio do Sul - Rio Branco	32
90465	G-APEC	London - Salzburg	63
90470	CCCP-42490	\N	20
90475	N3250Q	Las Vegas - Grand Canyon	10
90480	N20DE	Detroit. MI - Hot Springs. VA	6
90485	HK- 595	\N	22
90490	N51CS	Chicago. IL - Peoria. IL	16
90495	\N	\N	31
90500	N986MA	Jamaica. NY - Allentown. PA	8
90505	XV216	San Giusto - Sardinia	52
90510	PK-MVS	Jakarta - Padang	69
90515	CCCP-46809	\N	47
90520	B-1852	Taipei - Hong Kong	25
90525	68-15866	Da Nang - Camp Eagle	34
90530	CCCP-46788	\N	57
90535	N8943E / N2110F	Miami. FL - Raleigh. NC	29
90540	\N	\N	47
90545	LZ-BES	Sofia IAP - Algiers	73
90550	OB-R-941	Lima - Pucallpa	92
90555	XA-SEV	Chetumel - Merida	23
90560	EC-ATV	Valencia - Ibiza	104
90565	N4897P	Omaha. NE - Hot Springs. SD	3
90570	TC-JAC	Damascus - Ankara	8
90575	HK-1347	Bogota - San Andres	20
90580	FAC-661	Medellin - Buenaventura	39
90585	YU-AHT	Stockholm - Belgrade	28
90590	XW-PEH	\N	9
90595	393	Ban Xon - Pha Khao	38
90600	N8933U	Gallup. NM - Battle Mountain. NV	2
90605	HK-1139	Bogota - Valledupar	19
90610	XW-TDE	Savannakhet - Vientiane	23
90615	N80398	Chicago. IL - Detroit. MI	2
90620	62-1813	\N	7
90625	N1027C	Hailey. ID - Boise. ID	4
90630	N5642V	Honolulu. HI - Lanai. HI	8
90635	N7818M	New York City - Albany. NY	48
90640	58-0048	\N	5
90645	OY-STL	Colombo - Dubai	112
90650	YU-AHR	Cairo - Aden	22
90655	55-0044	\N	14
90660	YV-C-EVF	\N	2
90665	PP-SMI	Sao Paulo - Rio de Janeiro	25
90670	I-ATIP	Rome - Foggia	18
90675	N8467E	Sightseeing	3
90680	5X-UVA	Addis Ababa - Rome	107
90685	OB-R-653	\N	6
90690	N391R	Long Tieng. Laos - Moung Cha. Laos	10
90695	64-0508	\N	6
90700	CCCP-87778	\N	18
90705	I-DIWB	Rome - Palermo	115
90710	YV-C-GAI	Ciudad - La Centella	7
90715	\N	Bien Hoa - Vung Tau	34
90720	N841NS	Albuquerque. NM - Sante Fe. NM	9
90725	CR-LLD	Luanda - Lobito - Sa Da Bandeira	25
90730	D-IDHC	\N	13
90735	N2256W	Dulac. LA - Gulf oil platform	11
90740	PP-PDG	\N	18
90745	N3305L	Training	4
90750	N3990G	Fairbanks. AK - Valdez. AK	2
90755	N234AP	Arkansas City. KS - White Plains. NY	2
90760	15-2182	Rota - Souda Bay	14
90765	EM2	Siagon - Hue-Phu Bai - Pleiku	32
90770	CC-CDU	\N	3
90775	\N	\N	47
90780	JA8012	Bangkok - Delhi	87
90785	VR-HFZ	Bangkok - Hong Kong	81
90790	N9077N	Harlingen. TX - Austin. TX	5
90795	55-0043	\N	15
90800	CCCP-11215	\N	122
90805	G-ARPI	London - Brussels	118
90810	N554PR	San Juan - Ponce	20
90815	N9067F	Almond Dam. NY - Salamanica. NY	3
90820	N90858/N4043B	Chicago. IL - Appleton. WI - Sheboygan. WI	13
90825	D-CASY	\N	8
90830	N29169	Sightseeing	5
90835	\N	Sacramento - San Francisco	86
90840	EC-ARA	Las Palmas - Hamberg. Germany	10
90845	156658	\N	67
90850	67-056	Bardufoss - Bodoe	19
90855	\N	\N	84
90860	HK1341X/HK107	\N	38
90865	62-1853	\N	44
90870	VT-DME	Gwalior - Delhi	18
90875	DM-SEA	Berlin - Birgas	156
90880	XY-ACM	Sandoway - Rangoon	31
90885	YV-C-AKE	Canaima - C iudad	34
90890	A4-233	Lae - Port Moresby	29
90895	CCCP-74298	\N	101
90900	VH-PNI	\N	4
90905	CP-959	\N	8
90910	ET-ABQ	Axum - Gondar	11
90915	9N-RF10	Panchkhal - Tribuvan	31
90920	N275X	\N	1
90925	XV-NUH	Vientiane - Saigon	13
90930	EC-AQE	Training	6
90935	XW-TDA	\N	9
90940	CCCP-75507	Adler - Moscow	109
90945	N4900	Bimini. Bahamas - Nassau. Bahamas	2
90950	CCCP-86671	Leningrad - Moscow	174
90955	T-571	Mendoza - Santiago	45
90960	N1812H	Anchorage. AK - Juneau. AK	4
90965	SX-BBQ	Kerkira - Athens	53
90970	F-OCRH	\N	8
90975	F-BMCH	Lyon - Clermont	68
90980	I-ATIR	Napoli - Bari	27
90985	\N	\N	22
90990	LZ-ILA	Burgas - Sofia	35
90995	N2700S	Hopkinsville. KY - Lexington. KY	11
91000	JA8040	Moscow - Tokyo	76
91005	N717B	Minneapolis. MN - St. Paul. MN	2
91010	EC-BZR	Tenerife - Munchen	155
91015	SU-AOW	Training	6
91020	64-0558	\N	12
91025	CF-AUQ	\N	3
91030	AP-AUS	Gilgit - Rawalpindi	26
91035	N3483Q	Spokan. WA - Walla Walla. WA	4
91040	N9031U	Washington - Chicago	61
91045	N20M	Detroit. MI - Lexington. KY	2
91050	N8897E/N954N	Tampa - Chicago / Chicago - Madison	133
91055	56-0490	\N	16
91060	F-OGFE	Guadeloupe - St. Maarten	13
91065	LN-SUY	Alesund - Oslo	45
91070	N310EA	New York City - Miami	176
91075	N500AE	San Juan. PR - Managua. Nicaragua	5
91080	CF-PWZ	Toronto - Edmonton	5
91085	G-AOHI	Test flight	4
91090	CCCP-46276	\N	44
91095	JY-ADO	Jeddah - Lagos	202
91100	N7295E	Knoxville. TN - Andrews. NC	4
91105	HR-TNO	\N	3
91110	SU-AOY	Cairo - Nicosia	37
91115	N9929V	Bethel. AK - Chevak. AK	2
91120	CCCP-85023	Moscow - Praha	100
91125	N14831	Oil platform - Morgan City. LA	5
91130	HP-560	David - Changuinola	28
91135	5A-DAH	Tripoli - Cairo	113
91140	N3149L	Mt. Empire. VT - Springfield. VT	2
91145	CCCP-75712	\N	79
91150	CCCP-87602	\N	32
91155	12	\N	15
91160	12	Warsaw - Goleniow	18
91165	PK-NUC	\N	13
91170	LZ-BEM	Sofia - Moscow	25
91175	EC-BID	\N	3
91180	EC-BII/EC-BJC	Palma de Mallorca - London	182
91185	524	\N	4
91190	VT-EAU	Training	3
91195	152749	\N	5
91200	XV-NUI	Saigon - Ban Me	62
91205	G-AXOP	Bristol - Basel	145
91210	157332/N711NA	\N	17
91215	N711NA / 157332	\N	16
91220	YA-GAT	Bamiyan - Kabul	19
91225	N310WA	\N	6
91230	N2985Q	Concord. NH - Greenville. ME	4
91235	N1214S	Fairbanks. AK - Prudhoe. Alaska	5
91240	CCCP-42411	Moscow - Chita	100
91245	XW-TDM	\N	11
91250	CF-QBB	\N	4
91255	VT-EAM	Madras - Delhi	65
91260	PP-PDX	Belem - Sao Luis	23
91265	CCCP-77102	Demonstration	6
91270	PP-VLJ	\N	4
91275	XA-SOC	Houston - Puerto Vallarta	27
91280	CCCP-65668	Amman. Jordan - Beiruit. Lebanon - Yerevan. Armenia	84
91285	PP-VJZ	Rio - de Janerio - Paris	134
91290	N417PA	Auckland. NZ - Papeete. Tahiti - Honolulu - Los Angeles	79
91295	N4215	Marion. IL - St. Louis	44
91300	N234JC	Honolulu - Lihue	5
91305	N975NE	Burlilngton. VT  - Boston. MA	89
91310	N70295	Ketchikan. AK - Metlakatla. AK	5
91315	SSR-42486	Tbilisi - Moscow	119
91320	EC-BIC	Madrid - La Coruna	85
91325	N38JA	Port Au Prince - Cap Haitien	10
91330	CCCP-46435	\N	64
91335	HK-111	Villavicencio - El Yopal	17
91340	HK-777	Bogota - Cartagena	42
91345	63-8077	Athens - Madrid	25
91350	N8705T	Honolulu - Los Angeles	149
91355	N7881Y / N6270F	Grand Rapids. MI - Gary. IN	5
91360	N802WA	Travis AFB - Clark AFB - Yokota AFB. Japan	6
91365	N1834H	Humbolt. TN - Paintsville. KY	4
91370	YU-AHD	Skopje - Titograd	41
91375	N50JR	Natchitoches. La - Dallas. TX	6
91380	N3015C	Bakersfield. CA - Long Beach. CA	2
91385	N40LB	Lincoln. NB - Omaha. NB	3
91390	N94230	Memphis - El Dorado - Texarkana - Dallas	11
91395	PT-CEV	\N	9
91400	CCCP-42506	\N	108
91405	CCCP-12967	\N	10
91410	PT-DVN	\N	8
91415	PP-SMJ	Rio de Janeiro - Belo Horizonte	65
91420	N37JA	\N	4
91425	N6273Q	La Verne. California - Willow Rock. Arizona	7
91430	HK- 718	Arauca - Cucuta	16
91435	N60NA	Miami. FL - San Francisco. CA	128
91440	N458PA	New York City - Prestwick	3
91445	XV-NIE	\N	27
91450	CCCP-42503	\N	72
91455	CF- CFL	Montreal - Churchill Falls	8
91460	131615	Elmendorf AFB - Adak	10
91465	CCCP-45061	\N	51
91470	N407PA	Rome - Beirut	177
91475	N3269X	Norman. OK - Manhattan. KS	2
91480	TAM-47	US - La Paz	9
91485	\N	\N	20
91490	OO-SRD	Paris - Tanger	106
91495	CCCP-45004	\N	17
91500	ZS-DAK	\N	25
91505	I-TIDE	Bologna - Torino	42
91510	CP-990	San Borja - La Paz	4
91515	N125AE	Pittsburgh. PA - Johnstown. PA	17
91520	CCCP-46357	\N	24
91525	FAC-1103	Florencia - Bogota	31
91530	TAM-52	Santa Rose - La Paz	24
91535	HK-1216	\N	14
91540	CCCP-46277	\N	4
91545	N7888G	Ephrata. WA - Portland. OR	2
91550	TC-JAO	Izmir - Istanbul	73
91555	N633Q	Taos. NM - Albuquerque. NM	3
91560	N5290S	Thief River. MN - Owatonna. MN	4
91565	N454PA	Auckland - Pago Pago	101
91570	N732PA	San Francisco. CA - Honolulu. HI - Agana. Guam	298
91575	50-63	\N	40
91580	N864JA	St. Croix. VI - St. Thomas. VI	2
91585	\N	Baltimore - Atlanta	15
91590	CP-1052	\N	7
91595	5-122	\N	10
91600	TC-JAV	Paris - London	346
91605	\N	\N	18
91610	N8118Q	Carson City. NV - San Jose. CA	4
91615	N4819C	Bishop - Burbank	36
91620	OY-STK	Tehran - Kobenhavn	96
91625	A2-ZER	Francistown - Malawi	84
91630	N28358	Keahole. HI - Kahului. HI	11
91635	N446PA	Hong Kong - Bali. Indonesia - Sydney. Austrailia	107
91640	CCCP-75405	\N	115
91645	CCCP-75559	\N	118
91650	N853SA	Galveston. TX - Houston. TX	12
91655	HC-AUC	Pastaza - Ambato	24
91660	TF-OAE	Nice - Nurnberg	3
91665	N14ST	Alameda. CA - Indianapolis. IN	3
91670	CCCP-87579	\N	29
91675	CF-QWJ	\N	2
91680	HK-1058	Bucaramanga - Cucuta	44
91685	XW-TFR	Battambang - Phnom Penh	39
91690	N8679	Umiat. AK - Local	5
91695	HK-728	\N	3
91700	ST-4	Phnom Penh - Siagon	5
91705	C-FTAT	LaTuque - St. Honore	11
91710	115461	Beirut. Lebanon  - Damascas. Syria	9
91715	TZ-ABE	Bamako. Mali - Kano. Nigeria	60
91720	HK-508	Tumaco - Bogota	27
91725	N7620	Dietrich. AK - Happy Valley. AK	4
91730	YV-C-AMX	Cumana - Porlamar	49
91735	65-0274	Howard AFB. Panama - La Paz. Bolivia	7
91740	9T-TCD	\N	31
91745	PK-GFJ	\N	39
91750	N8734	Tel Aviv - Athens - Rome - New York	88
91755	N8984E	Charleston. SC - Charlotte. NC - Chicago. IL	82
91760	XV-NJC	Da Nang - Saigon	75
91765	N15528	Las Vegas. NV - Riverside. CA	5
91770	N70026	Fairbanks. AK - Dietrich. AK	2
91775	N357V	Fairbanks. AK - Lupine. AK	6
91780	N864JA	Saint Croix - Saint Thomas	2
91785	N2970W	\N	3
91790	SU-AXB	Training	6
91795	65-0965	\N	6
91800	N129WA	Kassan. AK - Coffman Cove. AK	8
91805	RP-C643	\N	8
91810	N20673	Kingman. AZ - Deming. NM	2
91815	N979L	Dallas. TX - Altus. OK	4
91820	N2HN	Indianapolis. IN - Chicago. Il	3
91825	N2580P	Willow. AK - Local	3
91830	N102AK	Fairbanks - Bettles	4
91835	N414K	Gallup. NM - Rapid City. SD	2
91840	C-FPAB	\N	34
91845	OY-DVJ	\N	3
91850	N97702Z	Juneau. AK - Tenakee. AK	4
91855	RP-C570	\N	8
91860	ET-AAR	Soddu - Beica	24
91865	D-ABYB	Nairobi - Johannesburg	157
91870	EC-CGG	\N	4
91875	N274US	New York City. NY - Buffalo. NY	3
91880	N54328	Columbus - Washington D.C.	92
91885	PH-MHB	Surabaya - Jeddah	191
91890	N1583V	Old Harbor. AK - Kodiac. AK	5
91895	\N	\N	54
91900	CCCP-87630	\N	7
91905	YV-C-AVM	\N	77
91910	N66HA	Riverton Heights. WA - Oak Harbor. OR	6
91915	YR-AMD	\N	33
91920	CCCP-45037	\N	61
91925	ST-1	Da Lat - Nha Trang	9
91930	N71972	Richland. WA  - Seattle. WA	4
91935	AE-259	\N	12
91940	FAC-688	San Vicente del Caguan - Florencia	21
91945	N6383	Ontario - Los Angeles	14
91950	N1944	Juneau. AK - Return	5
91955	HA-MOH	Berlin - Budapest	9
91960	\N	\N	16
91965	TC-JAP	Izmir - Istanbul	42
91970	HI-222	Santo Domingo - Port-au-Prince	30
91975	N54734	Kenai. AK - Gulkana. AK	2
91980	N15HC	Lawton. OK - Huntsville. TX	16
91985	RP-C1028	Manila - Iligan	33
91990	5063	\N	40
91995	N77DG	Fairbanks - Happy Valley Camp	3
92000	HK-1972	Medellin. Colombia - Miami. Florida	5
92005	PP-SBE	Sao Paulo - Bauru	15
92010	N2061C	Moline. IL - Racine IL	4
92015	XV-NUJ	\N	26
92020	TC-72	El Palomar AB - San Carlos de Bariloche	55
92025	ST-ADB	\N	6
92030	64-0641	Clark AFB - Japan	16
92035	68-218	Tan Son AFB - Clark AFB	330
92040	N7634Q	Fresno. CA - Santa Barbara. CA	3
92045	N59521	Anaktuvak. AK - Deadhorse. AK	4
92050	FAC- 663	Ocana - Cucuta	6
92055	VH-SJQ	\N	2
92060	N5067Y	Savoonga. AK - Gambell. AK	6
92065	68-10933	Nakhom Phanom AB - Utapao AB	23
92070	RP-C1184	Legaspi - Manilla	64
92075	PP-VDN	\N	15
92080	N8845E	New Orleans - New York City	124
92085	N791A	Detroit. MI - Peducah. KY	2
92090	HK-1309	Cucuta - Tame	3
92095	F-BTQE	Nantes - Brest	8
92100	FAC-970	\N	10
92105	HK-1976	Bogota  - Barranquilla	4
92110	N6817L	Homer. AK - Local	2
92115	N58137	Poway. CA - Pomona. CA	4
92120	CCCP-87475	\N	41
92125	57-0454	Exercise	6
92130	B-2029	Hualien - Taipei	76
92135	JY-AEE	Paris - Agadir	188
92140	412	Veracruz - Managua	20
92145	N88777	Denver - Wichita	131
92150	CCCP-87323	\N	28
92155	OK-DBF	Prague. Czechoslovakia - Damascus. Syria	128
92160	N44323	Monticello. NY - Portsmoutn. OH	4
92165	412	\N	20
92170	N4904	Nome - Gambell	32
92175	DM-SCD	Stuttgart - Leipzig	34
92180	ET-ABX	Bahar Dar - Debra Marcos	9
92185	PK-GVC	Jakarta - Palembang	61
92190	HA-LCI	Budapest - Beirut. Lebanon	60
92195	CF-MHU	Prince George - Dease Lake	7
92200	HK-1272	Bogota - Barranquilla	4
92205	VH-CLS	Mount Isa - Cairns	11
92210	N1495X	Las Vegas. NV - So. Lake Tahoe. CA	2
92215	TAM-44	Tomonoco - La Paz	67
92220	YU-AJO	Tivat - Praha	120
92225	N90057	\N	9
92230	N4QA	Latrobe. PA - State College. PA	4
92235	TG-AGA	Uaxactun - Flores	22
92240	CCCP-46349	\N	19
92245	CCCP-87458	\N	6
92250	LZ-ANA	Sofia - Varna	48
92255	11	\N	20
92260	N6645Y	\N	6
92265	N52SA	Ely. NV - Elko. NV	2
92270	RP-C2136	\N	9
92275	N133MA	Denver. CO - Grandby. CO	9
92280	OD-AFT	Beirut - Dubai	82
92285	CCCP-45036	Moscow - Vnukovo	61
92290	N651LJ	Anchorage. AK - Deadhorse. AK	6
92295	N5258Y	Albuquerque. NM - Gallup. NM	4
92300	RP-C2135	\N	7
92305	HK-172	Bogota - La Macarene	13
92310	N7385V	Butte. MT - Kooskia. ID	3
92315	CP- 573	\N	10
92320	FAE-683	Loja - Guayaquil	42
92325	B-492	Guangzhou - Changsha	40
92330	PT-TBD	\N	11
92335	CCCP-75558	Training	6
92340	N3329G	Lafayette. LA - Patterson. LA	2
92345	HK-1389	Santa Maria - Curacao	3
92350	60-0368	Mildenhall. England - Torrejon AFB	7
92355	N9172F	\N	4
92360	N901MA	Burbank - Ontario	6
92365	CCCP-42327	\N	24
92370	N4772C	St. Thomas. VI - St. Croix. VI	11
92375	YR-ILO	\N	9
92380	TAM-76	Camiri - Itaguasurenda	22
92385	CCCP-75408	Moscow - Yerevan	120
92390	N91142	South Nanek. AK - Dillingham. AK	4
92395	N1631V	Palm Springs. CA - Santa Ana. CA	2
92400	CU-T879	Training	5
92405	FAC-676	Florencia - Puerto Asis	16
92410	N124AS	Juneau - Ketchikan	50
92415	N1645U	Burlington. WA - Friday Harbor. WA	7
92420	N6061S	Denver. CO - Aspen. CO	2
92425	LV-HHB	\N	34
92430	N37D	San Diego. CA - Palm Desert. CA	6
92435	N8167J	\N	12
92440	N1707U	Anaktuvuk. AK - Bettles. AK	5
92445	N1963	New York City - Saint Thomas	88
92450	C-GDHA	\N	11
92455	RP-C2140	\N	10
92460	SX-BBR	Athens - Larisa	50
92465	5-283	Terhan. Iran - Madrid. Spain - McGuire AFB. New Jersey	17
92470	CCCP-46534	\N	52
92475	N55951	Haines. AK - Wrangell. AK	6
92480	RP-C1161	Davao - Manila	87
92485	CCCP-85102	Luanda - Moscow	46
92490	RP-C1061	Wake Island - Guam - Manila	45
92495	9M-ATZ	\N	12
92500	N7894S	Grand Junction. CO - Somerset. CO	2
92505	F-BVGG	Tel-Aviv - Athens - Paris	258
92510	\N	\N	17
92515	N7941C	\N	5
92520	N56712	Ulysses. KS - Greensburg. KS	3
92525	OK-NAB	Prague - Bratislava	79
92530	N8681Q	Billings. MT - Cody. WY	4
92535	HL7412	Tehran. Iran - Seoul. Korea	5
92540	T4/11-352	Moron - Canary Islands	33
92545	HC-ARS	Quito - Cuenca	59
92550	N9924X	Sunnyside. UT - Salt Lake City. UT	3
92555	OB-R-1104	Lima - Caracas	6
92560	67-0008	Thule AB - Sondrestrom AB	27
92565	67-0006	McGuire AFB - Mildenhall RAF	18
92570	F-BSGZ	Ho Chi Minh City - Bangkok	20
92575	7772	Caracas - Praira da Vitoria	68
92580	CF-MIT	Moosonee - Timmins	10
92585	46518/87772	Donetsk - Sochi /Rostov na Donu - Kerch	90
92590	YU-AJR/G-AWZT	Split - Koln / London - Istanbul	176
92595	TC-JBH	Istanbul - Antalya	154
92600	C-FAWF	\N	19
92605	N9389	Dagget. CA - Loma Linda. CA	4
92610	61-0296	\N	20
92615	TZ-ARC	\N	4
92620	CU-T1201	Bridgetown - Kingston	73
92625	N15025	Greensville. NC - Philadelphia. PA	4
92630	VT-DWN	Mumbai - Chennai	95
92635	N730JP	Santa Cruz - Viru	3
92640	N61436	Washington D.C. - Baltimore. MD	4
92645	HK-149	Villavicencio - Cucuta	32
92650	PT-TBA	\N	6
92655	PK-KFR	\N	38
92660	HP-671	Curacao - Port-au-Prince	2
92665	HB-LHT	Shannon. Ireland - Geneva. Switzerland	5
92670	C-FPWX	\N	6
92675	CCCP-42471	Moscow - Leningrad	72
92680	N4125R	Grand Canyon. AZ - Denver. CO	2
92685	N101AC	AtlantiCity - Cap May	10
92690	CCCP-46672	\N	55
92695	SU-AXA	Cairo - Bangkok	53
92700	N4573P	Anguilla Island. WI - Beef Island. WI	6
92705	OB-R-247	Trujillo - Tarapoto	19
92710	N12MK	Palm Springs - Las Vegas	4
92715	CCCP-42369	Novosibirsk - Alma Ata	96
92720	JA8054	Mosses Lake. WA - Tokyo. Japan	5
92725	C-GNTB	Prince George - Prince Rupert	12
92730	SE-FOZ	Malmo - Bromma	22
92735	C-FWAD	\N	2
92740	CP-983	\N	6
92745	OK-OCA	\N	5
92750	CCCP-75520	Tashkent - Mineralnyye Vody	77
92755	C-FNAR	\N	10
92760	7O-ABF	Aden - Al Kari	21
92765	MM61995	Training	44
92770	N8635	Paris. France - Niamey. Nigher	4
92775	N280F	Saint Louis. MO - Detroit. MI	3
92780	C-GNLL	Prince George - Tezzeron Lake	5
92785	N736PA/PH-BUF	Tenerife - Las Palmas / Tenerife - Las Palmas	644
92790	PK-NUP	Palu - Toli Toli	23
92795	CCCP-87738	\N	27
92800	N1335U	Huntsville - Atlanta	85
92805	HK-556	Villavicencio - Bogota	35
92810	\N	Parnu - Tapa	21
92815	TG-ACA	\N	28
92820	360	\N	54
92825	SP-LZA	Varna. Bulgaria  - Beiruit. Lebanon	9
92830	G-BEBP	Nairobi. Kenya  - Luskaka. Zambia	6
92835	N619PA	Pan Am building - JFK Airport	25
92840	CCCP-86614	\N	70
92845	N3345L	Houma. LA - Return	3
92850	FAB2157	\N	18
92855	CX-BJE	Carrasco - Salto-Nueva Hesperides	15
92860	156176	\N	16
92865	CCCP-46847	\N	7
92870	\N	\N	30
92875	ET-ABF	Tippi - Jima	5
92880	N22JA	Ruby - Colorado Creek	4
92885	FAC-989	Punta Arenas - Santiago	82
92890	FAH-301	Yoro - Honduran	40
92895	N9228K	Boise. ID - Flying B Ranch. ID	5
92900	N4TV	Burbank - Santa Barbara	2
92905	T-87	El Bolson - Rivadavia	6
92910	N8062Z	Albuquerque. NM - Las Cruces. NM	4
92915	N9265Q	Buffalo. NY - Parkersburg. WV	4
92920	N8817E	\N	3
92925	N59382	Deadhorse. AK - Eskimo Island. AK	3
92930	N4917	Honolulu - Kona	2
92935	G-ATZH	\N	4
92940	N99798	Minto Lake. AK - Fairbanks. AK	3
92945	HC-BCL	Guayaquil - Cuenca	33
92950	N563MA	Iliamna - Anchorage	13
92955	XY-AEH	Mongasat - Keng Tung	19
92960	N6314J	Yakutat - Anchorage	4
92965	62-3536	Kirkland AFB - Nellis AFB	20
92970	HA-LBC	Istanbul - Bucharest	53
92975	N1452M	Salida. CO - Cortez. CO	6
92980	JA-8051	Hong Kong - Kuala Lumpur	79
92985	N64391	Kenmore. WA - Lake Hatheume. Canada	7
92990	N157AL	New Iberia. LA - Grand Chenier. LA	2
92995	N55VM	Greenville - Baton Rouge	26
93000	157139	\N	37
93005	\N	\N	\N
93010	XA-FUA	Palenque - San Cristobal de las Casas	13
93015	CS-TBR	Brussels - Funchal	164
93020	ET-ACD	Rome. Italy - Asmara. Ethiopia	5
93025	N36MN	\N	2
93030	LV-JGY	Buenos  Aires - San Carlos de Bariloche	79
93035	182	\N	34
93040	N4461S	Charlotte. NC - Pinehurst. NC	2
93045	LZ-BTN	Jeddah - Benghazi	165
93050	9M-MBD	Penang - Kuala Lumpur	100
93055	N4730S	\N	19
93060	CCCP-47695	\N	23
93065	153428	\N	13
93070	N51071	Evansville - Nashville	29
93075	N1634H	Davenport. IA - Davenport. IA	2
93080	HB-ICK	Geneva - Funchal	57
93085	N8047U	San Francisco. CA - Salt Lake City. Utah	3
93090	N862JA	St Croix. VI - Vieques. PR	10
93095	CF-ABW	\N	8
93100	N116MM	Houston. TX - Austin. TX	2
93105	\N	\N	10
93110	HC-BEM	Guayaquil - Cuenca	24
93115	VT-EBD	Bombay - Dubai	213
93120	N719047	Greenville. KY - Marion. IL	2
93125	N1BE	Dubois. PA - Lancaster. PA	2
93130	HK-1351X	Neiva - San Vincente	14
93135	PT-GKW	\N	14
93140	T511	Artigas - Montevideo	44
93145	N199EA	Richland. WA - Seattle. WA	17
93150	C-FPWC	Calgary - Cranbrook	49
93155	N4307W	Los Angeles. CA - Lake Tahoe. CA	4
93160	N4508L	Dillingham. AK - Anchorage. AK	3
93165	N6143X	Visalia. CA - Santa Barbara. CA - Santa Maria. CA	7
93170	N68045	Los Angeles - Honolulu	200
93175	N101SX	Agana. Guam - Rota. TT	6
93180	5N-ANA / 	\N	18
93185	YV-45C	Caracas - Cumana	47
93190	N8114M	Jackson. MS - Laurel. MS	2
93195	N427Q	Flint. MI - Whitelake. MI	2
93200	LZ-TUB	Sofia - Warszawa	73
93205	N7354U	Santa Ana. CA - Lake Havasu. AZ	6
93210	XY-ADK	Yangon - Myitkyina	48
93215	PT - CIH	Local tour	4
93220	N140AL	\N	6
93225	N877A	St. John. VI - St. Croix. VI	9
93230	HL-7429	Paris - Seoul	109
93235	N49MC	Trenton. NJ - Indianappolis. IN	9
93240	N3SP	Pago Pago. American Samoa - Apia. Western Samoa	10
93245	HK-1705	Bogota - Barranquilla	12
93250	N37741	Anchorage. AK - Whittier. AK	6
93255	N4744	Miami. FL - Pensacola. FL - Mobile. AL	58
93260	\N	\N	13
93265	CCCP-85169	Baku - Leningrad	134
93270	C-GGAL	Survey	10
93275	C-FTLV	Toronto - Winnipeg	107
93280	LN-OQS	Bergen - Stratjford-A	18
93285	5Y-CMC	Samburu - Nairobi	11
93290	HK-1350	\N	18
93295	N1045	Laboucher. AK - Ketchican. AK	12
93300	N178MA	Kansas City. MO - Raton. NM	6
93305	XY-AEI	\N	14
93310	N44LV	Las Vegas. NV - Santa Ana. CA	10
93315	N7777V	St. Croix. VI - St. Thomas. VI	11
93320	C-FAIV	Victoria harbor - Victoria Harbor Water Aerodome	13
93325	3X-GAX	\N	17
93330	VP-WAS	Kariba - Salisbury	56
93335	N26AN	Savoy. IL - Cleveland. OH	6
93340	XA-BOP	Mexico City - Morelia	21
93345	N5384V	Wrangell. AK - Return	3
93350	PH-FKY	Laoag - Paranaque	28
93355	N1EC	King Salmon. AK - Kodiak. AK	3
93360	N4121Q	Bridgeport. CT - Albany. NY	3
93365	N533PS/N7711G	Los Angeles - San Diego	137
93370	N500L	Borinquen. PR - San Juan. PR	6
93375	DO-10	Kuopio - Helsinki	15
93380	XY-ADY	\N	44
93385	CCCP-87437	\N	38
93390	N2215W	Kenai. AK - Return	7
93395	H4-AAC	\N	11
93400	CCCP-46327	\N	26
93405	N866G	Oberlin. KS - Phoenix. NM	4
93410	PT-JXL	\N	9
93415	SU-AZM	\N	18
93420	N310BJ	Dallas. TX - Lubbox. TX	2
93425	TF-FLA	Jeddah - Colombo	262
93430	N910PC	Wichita. KS - Hays. KS	2
93435	F-OGHD	\N	20
93440	\N	Chandigarh - Leh	77
93445	HK-1393	Cucuta - Arauca	27
93450	N37906	Ketchikan. AK - Hydaburg. AK	5
93455	N8999A	Hartford. CT - Newburg. NY	3
93460	N25RM	Steamboat Springs - Denver	22
93465	I-ASON	\N	10
93470	VT-EAL	\N	132
93475	N4638Q	Terra Haute. IN - Moline. IN	2
93480	N7378U	St. Marys. AK - Chevak. AK	7
93485	I-DIKQ	Rome - Palermo	129
93490	HH-CNB	\N	10
93495	N8082U	Denver - Portland	189
93500	N33TN	Concord. MA - White Plains. NY	5
93505	CCCP46807	\N	13
93510	CCCP-67210	Training	3
93515	N7437S	Lansing. MI - Marquette. MI	6
93520	7T-VSU	\N	23
93525	F-BYAH	\N	6
93530	SP-TBB	\N	3
93535	PP-SBB	Bauru - Sao Paulo	18
93540	N29824	Clarksburg - Washington DC	25
93545	VP-YND	Kariba - Salisbury	59
93550	ZK-NFC	Gisborne - Auckland	4
93555	ET-AFW	\N	5
93560	TR-LXN	\N	3
93565	N2055K	Greenville. MS - Charlotte. NC	3
93570	N777AE	Houston. TX - Gulfport. MS - New Orleans. LA	8
93575	N5384A	Lebanon. TN - Galesburg. IL	4
93580	PK-GVP	Denpasar - Surabaya	4
93585	N418SA	New York - Santa Monica	7
93590	JY-ADU	Amman - Doha	64
93595	B-274	\N	12
93600	CCCP-42444	Moscow - Odessa	106
93605	CCCP-78390	\N	29
93610	CCCP-65031	Gorkiy - Liepaya	5
93615	N733CT	Bethel. AK - Tooksook. Alaska	7
93620	DM-STL	\N	10
93625	CF-QBL	Quebe- Montreal	24
93630	N6309C	Carrizozo. NM - Albuquerque. NM	3
93635	N11CS	San Pedro. CA - Catalina. CA	11
93640	N618PA	Newark. NJ - Flushing. NY	18
93645	HC-AVP	Quito - Cuenca	57
93650	CCCP-26569	\N	4
93655	N110AA	Chicago. IL- Los Angeles. CA	271
93660	N1690Z	Ambler. AK - Kobuk. AK	9
93665	N581PA	Bullen Point - Deadhorse	3
93670	5T-MAX	Bouceif - Dakar	12
93675	N68DE	Boston - Rockland	18
93680	H2178	\N	27
93685	N454SA	Positioning	2
93690	N383EX	New York. NY - Hyannis. MA	10
93695	PK-GVE	Talang Betutu - Medan	61
93700	N402TH	Anchorage. AK - Kenai. AK	7
93705	DQ-FBO	Suva-Nausori - Bua-Dama	9
93710	N63250	Positiioning - San Jose - Honolulu	3
93715	OD-AFX	Training	6
93720	N575PR	St. Croix - St. Kitts	21
93725	G-BEKF	\N	47
93730	N15NY	\N	3
93735	CCCP-67206	\N	14
93740	VT-DXJ	Bombay - Pune	45
93745	N6286B	Boise. ID - Indian Creek. ID	6
93750	N105AC	Flushing. NY - AtlantiCity. NJ	3
93755	N711AF	Athens. Greece - Jeddah. Saudi Arabia	5
93760	65735/65816	Tashkent - Donetsk - Minsk /Chelyabinsk to Kishinev	178
93765	FAC-1101	\N	1
93770	CCCP-12963	Norisk - Krasnoyarsk	16
93775	CCCP-45038	\N	63
93780	C-GROW	\N	9
93785	CCCP-46269	\N	43
93790	OY-SBS	\N	10
93795	B-1834	Training	6
93800	N455SW	Redmond - Klamath Falls - Medford	12
93805	I-ATJC	Alghero - Cagliari	31
93810	C-FZVV	\N	9
93815	58-0127	Training	5
93820	C-FWAF	\N	16
93825	N1726U	Juneau. AK - Return	3
93830	N6642L	Covington. KY - Nashville. TN	8
93835	HB-IDE	Zurich - Geneva - Athens - Bombay - Beijing	156
93840	N6224H	Anchorage. AK - Anchorage. AK	4
93845	N1320G	Centrailia. IN - Columbus. IN	2
93850	XC-PGR	Monterey. Mexico - San Ysidro. CA	10
93855	XC-BOS	\N	10
93860	N903WA	Los Angeles. CA  - Mexico City. Mexico	88
93865	C-GTJA	Pickle Lake - Big Trout	3
93870	N66893	Greenville. SC - Colombia. SC	7
93875	N1316G	John Day. OR - Salem. OR	3
93880	\N	Chicago - Washington D.C.	78
93885	CCCP-87454	Positioning	5
93890	N859U	Ogden. UT - Las Vegas. NV	3
93895	C-FJIK	\N	4
93900	AP-AWZ	Jeddah - Karachi	156
93905	ZK-NZP	Auckland - Christchurch	257
93910	HK-2059	\N	9
93915	N8061V	Nome. AK - Return	4
93920	CCCP-26547	\N	7
93925	CP-1440	\N	11
93930	FAC-1106	Arauca - Bogota	19
93935	FAP-348	Pucallpa - Puerto Esperanza	29
93940	TC-JAT	Ankara - Samsun	45
93945	P2-DNL	\N	15
93950	HH-CNC	Port au Prince - Cape Haitien	9
93955	N442NC	Shreveport - Baton Rouge	2
93960	EP-IRD	Babol Sar - Tehran	128
93965	PK-PCX	\N	13
93970	5003	Mandalay - Rangoon	44
93975	CU-T1219	Moa - Baracoa	37
93980	VH-AAV	Sydney - Tomora	13
93985	N442Y	Leeville. LA - Grand Isle. LA	7
93990	\N	\N	47
93995	B-1826	Taipei - Manila	135
94000	SP-LAA	New York City - Warsaw	87
94005	74-2064	\N	18
94010	N55932	Houston. TX - Brownwood. TX	10
94015	PT-HKB	\N	14
94020	C-FEIA	\N	9
94025	PT-JSC	\N	9
94030	PT-TYS	Sao Paulo - Florianopolis	58
94035	62-1809	\N	7
94040	G-BDAN	Manchester - Tenerife	146
94045	HS-THB	Khon Kaen - Bangkok	53
94050	PT-KHK	\N	7
94055	CU-T322	Training	3
94060	HK-1810	Rio Hacha - Medellin	70
94065	N125NE	West Palm Beach. FL - New Orleans. LA	2
94070	T.10-1/311-01	\N	11
94075	CP-1117	\N	13
94080	D2-TYC	\N	29
94085	N6505	Appleton. WI - Minneapolis. MN. - Lincoln. NE	15
94090	CCCP-87689	\N	29
94095	N2564Q	Honolulu. HI - Lihue. HI	2
94100	I-TIGI	Bologna - Palermo	81
94105	XC-DAK	\N	13
94110	CCCP-85355	Alma Ata - Simferopol	166
94115	N90238	Nome. AK - Unalakeet. AK	8
94120	N2683S	Tusayan. AZ - Phoenix. AZ	8
94125	N5MS	Hazelton. PA - Philadelphia. PA	3
94130	OB-R-1143	Lima. Peu - Mexico City. Mexico	7
94135	N443GR	Dillingham. AK - Return	9
94140	N95AL	Oil Platform SS-224 - Houma LA	13
94145	YR-TPH	Bucurest  - Nouadhibou	168
94150	PT-KAC	\N	3
94155	EC-DFA	\N	4
94160	HZ-AHJ	Dhahran - Karachi	291
94165	69-6581	Ramstein AFB - Oslo. Norway	11
94170	HZ-AHK	Riyadh - Jeddah	301
94175	PK-IVS	Banjarmasin-Sjamsudin Noor  -  Jakarta	37
94180	KAF317	\N	8
94185	HK-329	Barranquilla - Bogota	3
94190	N75KW	West Palm Beach - Freeport Grand Bahama Islands	34
94195	9T-TCE	\N	36
94200	453	\N	89
94205	9T-CBA	\N	36
94210	TF-RTO	\N	3
94215	CCCP-11104	\N	45
94220	N65V	Bartow. FL - Lake City. FL	3
94225	3556	\N	11
94230	67-0030	Ramstein AB - Cairo	13
94235	VH-BSG	\N	4
94240	HL-7445	Anchorage - Seoul	226
94245	HK-1221G	\N	20
94250	N816D	\N	2
94255	5H-TAL	Dodoma - Dar es Salaam	10
94260	N2181L	Chicago. IL - Michigan City. IL	4
94265	N2243Q	King Cove. AK - Cold Bay. AK	4
94270	VH-EGU	\N	2
94275	HK-1320	Florence - Neiva	50
94280	N390CA	Moses Lake - Spokane	9
94285	N500JP	Reno. NV - Winnemucca. NV	3
94290	CCCP-42332	\N	52
94295	N1323G	New Orleans. LA - Houma. LA	4
94300	N520S	White Plains. NY - Toronto. Canada - White Plains. NY	8
94305	N324Y	San Pedro. CA - Avalon. CA	8
94310	PT-GLB	Tucurui - Belem	14
94315	N5489J	North Adams. MA - New York. NY	3
94320	64-0564	\N	24
94325	N77FB	Fallon. NV - Austin. NVq	2
94330	29	\N	18
94335	61-2664	Fairbanks - Shemya AFB	24
94340	SP-LTU	\N	52
94345	N68856	Hughes. AK - Galena. AK	4
94350	P2-GKJ	\N	8
94355	CP-1470	\N	7
94360	N400PG	Cincinnati - Detroit	2
94365	N11360 / N4862F	Denver. CO - Gillette. WY	19
94370	PK-OBK	\N	17
94375	61-0328	Training	21
94380	LV-LOX	Tucuman - Buenos Aires	31
94385	D2-EAS	\N	4
94390	XA-KEH	Oaxaca - Puerto Escondido	20
94395	HC-BAX	\N	18
94400	FAE-723/FAE-457	Quito - Macara	27
94405	N140S	Avalon. CA - Visalia. CA	3
94410	SU-BAH	\N	17
94415	CCCP-41838	Ulan - Severomuysk	52
94420	B-11108	\N	2
94425	HK-1078	\N	12
94430	G-ASPL	London - East Midlands	3
94435	N7957F	Muskegon. MI - Pontiac. MI	5
94440	LV-JTN	Tehran. Iran - Larnaca. Cyprus	4
94445	6O-SAY	Mogadishu- Hargeisa	50
94450	N17705	Kansas City. MO - York. NE	4
94455	5R-MGB	\N	19
94460	HK- 772	\N	9
94465	XA-DEN	Monterey - Chihuahua	66
94470	N8224Q	Skagway. AK - Local	6
94475	B-2603	Taipei - Kaohsiung	110
94480	CCCP-46653	Komsomol'sk-na-Amure - Blagoveshchensk	32
94485	CCCP-87346	Chita - Zeya	34
94490	HK-2651	\N	22
94495	CCCP-87455	\N	33
94500	74-1672	Fort Lewis. WA - Indian springs. NV	68
94505	\N	\N	0
94510	5-158-8552	Ahwaz - Tehran	60
94515	N44CJ	Casper. WY - McAllen. TX	3
94520	PH-CHI	Rotterdam - Eindhoven - Hamburgh	17
94525	OE-FCT	\N	9
94530	HI-328	Saint Croix - Saint Thomas	5
94535	TJ-CBC	\N	24
94540	XA-DEO	Acapulco - Guadalajara	18
94545	N178RB	Millinocket. ME - Mount Pocono. PA	4
94550	CCCP-85480	Krasnoyarsk - Norilsk	167
94555	9N-ABJ	\N	10
94560	N3486F	\N	3
94565	YU-ANA	Ljubljana - Ajaccio	180
94570	N8185H	Haliive. HI  - Honolulu. HI	12
94575	N9461M	Tyonek. AK - Anchorage. AK	4
94580	N4311R	Talkeetna. AK - Return	4
94585	9M-SSC	\N	\N
94590	HK-2217	\N	13
94595	ZS-KVG	Cape Town - Johannesburg	9
94600	N41070	Albuquerque. NM - Durango. CO	6
94605	CCCP-67290	\N	18
94610	N9763X	\N	2
94615	N62AF	Washington D.C. - Fort Lauderdale. FL	79
94620	71383	\N	73
94625	N113WA	Newark. NJ - Boston. MA	212
94630	YR-BMD	Training	7
94635	140/88JA	\N	35
94640	\N	\N	53
94645	\N	Parhankot - Leh	23
94650	JA-8061	Fukuoka - Tokyo	174
94655	RP-C141	Manila - Sicogon	32
94660	HK-1706	\N	4
94665	N127PM	New York City - Bridgeport - New Haven - Groton - Boston	12
94670	LN-BNK	Berlevag - Mehamn	15
94675	G-BDXH	Kuala Lampur - Perth	257
94680	CCCP-45229	Leningrad - Kiev	132
94685	N567LT	None	3
94690	58-0031	\N	27
94695	PK-GVK	Jakarta - Bandar	27
94700	HK-2382	Villavicencio - Bogota	21
94705	N11058	Banddanack. AK - Fairbanks. AK	3
94710	74-1678	Erzurum - Incirlik	27
94715	B-266	Guangzhou - Guilin	112
94720	N6911	Hilo. HI - Honalulu. HI	2
94725	C-GIMF	\N	13
94730	7O-ACK	\N	49
94735	64-0543	Training	7
94740	ZA-294	\N	30
94745	PP-SMY	\N	118
94750	PK-PDU	\N	10
94755	56-4391	\N	53
94760	PP-SRK	Rio de Janerio - Fortaleza	137
94765	PT-LBV	Eirunepe - Tabatinga	44
94770	VT-DJJ	Kuala Lumpur - Mumbai	111
94775	TR-LYQ	\N	12
94780	CCCP-86513	\N	90
94785	N4737	New Orleans - Las Vegas	145
94790	RP-C1014	\N	30
94795	N8230U	Imnaha. OR - Fort Fairfield. ME	4
94800	N87701	Movie set	1
94805	N9682Q	Sitka. AK - Warm Springs. AK	4
94810	N81786	Groton. CT - Concord. CT	2
94815	N754PA	Tokyo - Honolulu	\N
94820	XY-AEB	\N	8
94825	67191 / 65836	\N	11
94830	223	Managua - El Rodeo	20
94835	VP-LAE	\N	10
94840	64-0652	Training	9
94845	HC-BHZ	Zumba - Loja	44
94850	PT-JBQ	\N	10
94855	74-22292	\N	46
94860	EC-DEG	Malaga - New York City	394
94865	N33249	Nondalton. AK - Port Alsworth. AK	5
94870	C-FDJA	\N	5
94875	N5331X	Kiana. AK - Kotzebue. AK	6
94880	CCCP-86470	Moscow - Luxembourg	77
94885	\N	Anguilla - St. Thomas. VI	8
94890	B-2311	\N	15
94895	N18411	Cullman. AL - Louisville. KY	2
94900	D2-TAB	\N	15
94905	HK-2536	\N	22
94910	N32750	Philadelphia. PA - Pottstown. PA	5
94915	N30093	Sante Fe. NM - Pueblo. CO	2
94920	265	\N	88
94925	N68081	Ketchikan. AK - Craig. AK	8
94930	CC-CJE	Santiago - La Serena	46
94935	N297EB	Columbus. OH - Difiance. OH	2
94940	PH-TSM	\N	10
94945	CCCP-26627	\N	16
94950	B-202	\N	69
94955	N844H	Minneapolis-St Paul - Brainerd	33
94960	N8053U	Detroit - Los Angeles	3
94965	P2-ISH	\N	10
94970	TC-JBR	Istanbul - Ankara	67
94975	74-1693	\N	6
94980	N28216	Tallahssee. FL - Lakeland. FL	2
94985	PT-HJN	\N	11
94990	YA-GAZ	\N	19
94995	YV-67C	Caracas - Barquisimeto	50
95000	N72B	Jacksonville. FL - Atlanta. GA	4
95005	N51CA	Chicago - Newark	2
95010	F-BVRP	\N	8
95015	N37MN	Nome - Ambler	3
95020	EL-AIH	\N	9
95025	CCCP-87291	Nalchik - Leninakan	21
95030	58-1009/68-1015	\N	14
95035	\N	\N	14
95040	HC-BAT	Guayaquil - Quito	100
95045	141010	Jacksonville NAS - Guantanamo Bay. Cuba	15
95050	L4K-12/18	\N	30
95055	N334EA	Miami. FL - Nassau. Bahamas	172
95060	PK-GFV	\N	61
95065	C-FTLU	Dallas-Fort Worth - Toronto	46
95070	\N	\N	47
95075	152720	\N	14
95080	TZ-ACH	\N	7
95085	N5413X	Blanding. UT - Farnington. New Mexico	5
95090	74-2068	Training	6
95095	B-889	Pyongyang. North Korea - Conakry. Guinea	23
95100	HC-BIG	Quito - Cuenca	119
95105	G-BEON	Penzance - Scilly Islands	26
95110	C-GAUN	Ottawa - Edmonton	69
95115	PK-KCA	\N	11
95120	PK-KNF	\N	2
95125	N400NA	\N	2
95130	N88LV	Las Vegas. NV  - Grand Canyon. AZ	10
95135	N17ST	\N	7
95140	VH-KTE	\N	12
95145	CCCP-65129	Kazan - Chelyabinsk - Alma-Ata	90
95150	HL-7442	Anchorage - Seoul	269
95155	C-GIPF	\N	9
95160	B-264 / 	Guilin - Beijing	106
95165	A40-BK	Karachi - Abu Dhabi	112
95170	N7353N	Flagstaff. AZ - Mesa. AZ	2
95175	B-11109	\N	10
95180	CCCP-87618	\N	9
95185	N5191E	Little Rock. AR - Springfield. MO	4
95190	PP-SBH	\N	15
95195	XY-AEE	Lonkin - Myitkyina	14
95200	N748LL	Springfield. Il - Carbondale. IL	10
95205	N26288	Middletown - Washington DC	30
95210	D2-TBN	Lubango - Luanda	130
95215	C-GTLA	\N	7
95220	N1910L	Wichita. TX - Midland. TX	8
95225	HK-2910	Paris - Madrid - Bogota	192
95230	5N-ANF	\N	72
95235	EC-CFJ/EC-CGS	Madrid - Rome	135
95240	N208JP	Put-In-Bay. OH - Kelly's Island. OH	4
95245	HK-2401	Medellin - Miami	3
95250	C-FGJK	Inuvik - Paulatuk	12
95255	CCCP-46617	Arkhangelsk - Leshukonskoye	49
95260	324	\N	13
95265	C-GSCA	Saint Louis. MO - Toronto. Canada	2
95270	LZ-TUR	Berlin - Sofia	50
95275	CP-1090	\N	3
95280	PK-PCL	\N	9
95285	CCCP-47358	\N	47
95290	N63Z	Training	3
95295	1506	\N	38
95300	\N	\N	28
95305	VH-FSA	\N	2
95310	HK-2685	\N	7
95315	\N	\N	12
95320	LN-RKB	Oslo. Norway. New York. NY	177
95325	68-10944	\N	18
95330	N6629L	\N	3
95335	HK-1322P	Barranquilla - Bogota	6
95340	CP-862	\N	23
95345	157132	Pohang - Kannung	29
95350	CP-1206	\N	5
95355	N44NC	Ft. Lauderdale - Bimini	6
95360	PT-LCN	\N	4
95365	PT-GJZ/PT-GKL	\N	35
95370	\N	\N	2
95375	LV-TDF	\N	12
95380	N5523	Baltimore - Detroit	4
95385	N101PP	\N	3
95390	N5784M	\N	3
95395	PP-SBC	\N	18
95400	\N	\N	9
95405	\N	\N	30
95410	64-0624	\N	9
95415	N2021A	Kodiak. AK - Ouzinkie. AK	4
95420	N43SP	Pango Pango - Tau Island	14
95425	N7984Q	Anchorage. AK - Cantwell. AK	5
95430	N589SA	Vieques. PR - St. Croix. VI	9
95435	S2-ABJ	Chittagong-Patenga - Dhaka	49
95440	CCCP-10232	Karachi - Tashkent	24
95445	5Y-AMS	\N	9
95450	N70003	Memphis - Chicago	3
95455	PK-OBC	\N	3
95460	N9011Y	Bolivar. TN - Pontiac. MI	2
95465	N6399U/N112SM	San Luis Obispo - San Fransisco	17
95470	TJ-CBD	Douala - Yaounde	116
95475	P2-ISG	\N	11
95480	N89PB	Naples. FL - Tampa. FL	6
95485	9Q-CAH	\N	30
95490	SP-AMK	Airshow	26
95495	HC-BKN	Quito - Guayaquil	4
95500	\N	\N	50
95505	C-GXFZ	Training	2
95510	N1842R	Reno. NV - Eureka. NV	3
95515	C-FPPL	Fort Norman - Fort Franklin	7
95520	CCCP-85243	Krasnodar - Omsk	179
95525	C-FAUS	St. Anthony - Goose Bay	4
95530	CCCP-86739	\N	20
95535	CCCP-08837	\N	240
95540	RP-C138	Davao - Manila	4
95545	G-HGGS	\N	1
95550	FAE-446	Loja - Zumba	14
95555	CCCP-67225	\N	10
95560	N96PB	Jacksonville - Tampa	13
95565	\N	\N	19
95570	N6099Y	Binghamton. NY - Bainbridge. NY	4
95575	FAP-307	\N	21
95580	9N-ABH	\N	23
95585	CCCP-85338	\N	110
95590	N819EA	Asuncion. Paraguay - La Paz. Bolivia	29
95595	N357Q	Detroit - Kansas City	3
95600	B-434	Nanjing - Jinan	41
95605	CU-T899	Havana - Managua	38
95610	N40TE	Albuquerque. NM - Taos. NM -	3
95615	N5532	Reno. NV - Minneapolis-St. Paul. MN	71
95620	56-0501	Howard AFB - Trujillo AP	21
95625	HK-2638	Florencia - Cali	17
95630	HK-1910	Medellin - Quibdo	23
95635	N27522	Burlington. VT - Whitefield. NH	5
95640	CCCP-65910	Minsk - Leningrad	80
95645	N50NP	Anchorage. AK - Anchorage. AK	9
95650	N5780M	Altus. OK - Oklahoma City. OK	2
95655	CCCP-76569	\N	57
95660	N233W	Gold Beach. OR - Metford. OR	4
95665	PK-VIO	\N	10
95670	EC-DDU	Madrid - Bilbao	148
95675	N4522V	Taipei - Los Angeles	274
95680	TZ-ACT	Tombouctou - Bamako	51
95685	55-3121	\N	3
95690	64-0549	Training	6
95695	FAC-1140	Bogota - San Vicente del Caguán - Florencia	46
95700	LV-ALW	Buenos Aires - Salta	7
95705	N3RU	El Dorado. AR - Houston. TX	4
95710	HS-TBB	\N	11
95715	N718AA	Dallas. TX - San Diego. CA	89
95720	N8849Q	Tuba City. AZ - Page. AZ	6
95725	YN-BZF	Positioning	5
95730	CP-1489	\N	4
95735	CCCP65856/26492	Tallin - L'vov	76
95740	\N	Iwakuni - Fulemma. Okinawa	17
95745	C9-AMV	\N	5
95750	N73635	Golovin. AK - Elim. AK	5
95755	N10GE	Branson. MO - Harrison. AR	2
95760	YV-84C	\N	13
95765	N181TG	Nashville - Indianapolis	2
95770	N64339	Athens - Rome	153
95775	PT-GJN	Juara - Cuiaba	17
95780	VT-EFO	Montreal - London	329
95785	N542TW	\N	2
95790	CCCP-85311	Karshi - Leningrad	200
95795	N71MA	Louisville. KY - Cleveland. OH	2
95800	FAC-902	Leticia - Bogota	80
95805	N726DA	Fort Lauderdale - Dallas-Fort Worth	163
95810	JA8119	Tokyo - Osaka	524
95815	PK-NUG	\N	19
95820	7O-ACO	Aden - Abu Dahbi	73
95825	N455JA	Anchorage. AK - Gulkana. AK	3
95830	G-BGJL	Manchester - Kerkira	137
95835	N300WP	Boston. MA - Auburn. ME	8
95840	59-1443	Training	7
95845	P2-DNW	\N	5
95850	YA-BAM	Kandahar - Farah	52
95855	N100ME	Milwaukee - Atlanta	31
95860	\N	\N	26
95865	N339HA	Washington D.C. Baltimore. MD	14
95870	CCCP-69321	Dnepropetrovsk - Moscow	9
95875	N551CC	Parachuting	17
95880	ZK-EHT	\N	9
95885	PT-GKA	\N	2
95890	VH-IWJ	Sidney - Brisbane	2
95895	CP-1593	Beni - La Paz	2
95900	CCCP-87803	\N	14
95905	N3257	State College - Pittsburgh	1
95910	XY-ADS	\N	4
95915	N456JA	Anchorage - Juneau	4
95920	N9241F	Bethel. AK - Chevak. AK	4
95925	54-2817	Test flight	4
95930	N74DJ	Bethel. AK - Quinhagaki. AK	7
95935	A-1322	\N	11
95940	SU-AYH	Athens - Cairo	103
95945	\N	\N	22
95950	N950JW	Gander - Fort Campbell. KY	256
95955	RAN-23	\N	25
95960	N711Y	Guntersville - Dallas/Ft. Worth	9
95965	HC-BAE	Guatemala City - Flores	87
95970	N1498W	\N	3
95975	PP-SME	Sao Paulo - Belo Horizonte	72
95980	XA-IOR	Villa Constitucion - Los Mochis	21
95985	9Q-CWT	\N	14
95990	B-1870	Taipei - Makung	13
95995	CCCP-46423	\N	38
96000	HB-LLS	\N	8
96005	N1356P	Detroit. MI - Alpena. MI	9
96010	PK-NCF	\N	16
96015	C-FAGM	Snegamook Lake - Goose Bay	5
96020	CCCP-11795	\N	9
96025	\N	\N	0
96030	42	Pemba - Maputo	54
96035	XA-MEM	Mexico City - Puerto Vallarta	167
96040	N54340	Rome - Athens	121
96045	66-0211	\N	11
96050	HK-2761	Bogota - Saravena	13
96055	FAS-302	San Salvador - Panama City	37
96060	\N	\N	22
96065	4R-ULD	Colombo - Male. Maldives	150
96070	CCCP-87301	Test	5
96075	N414NY	AtlantiCity. NJ - AtlantiCity. NJ	5
96080	19	\N	19
96085	\N	\N	13
96090	SU-GAD	Cairo - Alexandia	26
96095	G-BGPC	Glasgow - Port Ellen	16
96100	63-7983	\N	4
96105	N76GC/N6TC	Grand Canyon - Grand Canyon	25
96110	CCCP-65142	Penza - Simferopol	59
96115	CCCP-65120	\N	94
96120	7312	\N	17
96125	N3643W	San Andreas. CA - Death Valley. CA	6
96130	V2-LCJ	Vieux Fort - Kingstown	13
96135	556	Tegucigalpa - Duzuna	59
96140	ST-ADY	Malakal - Khartoum	60
96145	N73569	McDermitt. OR - Burns. OR	6
96150	N2727A	Lander. WY - Riverton. WY	7
96155	N252K	Little Rock - Texarkana	2
96160	XA-JED/N4891F	Tijuana - Los Angeles	67
96165	VH-RED	Tullamarine - Leongatha	6
96170	N656PA	Bombay-Karachi-Frankfurt-New York	384
96175	56-0468	\N	4
96180	G-BDTP	London - Amsterdam	1
96185	N219AS	Sao Jose dos Campo - Manaus	5
96190	PK-ESC	Mangole - Manado	13
96195	N15ST	Kelly AFB - Warner Robins AFB	3
96200	CCCP-67264	\N	14
96205	EP-IRG	\N	80
96210	148	\N	11
96215	N3962M	Groton. CT - Fisher Island. NY	4
96220	C9-CAA	Lusaka - Maputo	44
96225	CCCP-65766	Yekaterinburg - Kuybyshev	92
96230	N8617B	Traffireporting	2
96235	AP-AUX	Lahore - Peshawar	54
96240	294	\N	23
96245	\N	Bakhtaran - Zahedan	103
96250	G-BWFC	\N	47
96255	\N	\N	40
96260	CCCP-65795	Minsk - Berlin	82
96265	B-3413	Lanzhou - Chengdu	44
96270	YI-AGJ	Baghdad - Amman	106
96275	DQ-FEF	Savu Savu - Nadi	14
96280	T-12B-32	Bata - Malabo	22
96285	PP-VJK	Abidjan - Rio de Janeiro	51
96290	C-GIRH	\N	3
96295	\N	Asrmara - Addis Ababa	54
96300	N163SW / N6485U	Pocatello - Salt Lake City	10
96305	N9613F	Ontario. CA - Las Vegas. NV	1
96310	ARU-021	\N	18
96315	F-GDHR	\N	11
96320	P2-RDM	Rabaul - Hoskins	17
96325	\N	\N	36
96330	N712PC	\N	135
96335	N160FB	Cleveland - Detroit	22
96340	CCCP-26007	\N	9
96345	60-0361	Training	6
96350	\N	\N	2
96355	N31SK	Denver - Vail	3
96360	\N	\N	40
96365	N967JW	Local Flight	2
96370	LN-KCR	Hanover. West Germany - Skien. Norway	10
96375	PK-GNQ	Banda Aceh - Medan	45
96380	N144SP	Wichita - Kansas City	4
96385	N505LB	Wilmington - Lumberton	2
96390	ST-AIJ	\N	13
96395	CCCP-11418	Tikis - Batagay	6
96400	N432CA	San Juan. PR - Mayaguez. PR	6
96405	SP-LBG	Warsaw - New York City	183
96410	C-FADD	Big Trout - Pickle Lake	2
96415	N32774	Sayre. PA - Washington. District of Colombia	3
96420	CP-1018	Camiri - Santa Cruz	16
96425	PK-NUW	\N	8
96430	PK-MAM	\N	30
96435	D-IAEC	\N	4
96440	YV-230C	\N	10
96445	YA-BAL	Kandahar - Kabul	53
96450	FAP-392	Lima - Saposa	46
96455	CCCP-87826	\N	29
96460	XY-ADP	Heho - Mong Hsat	45
96465	RP-C1015	Manila - Baguio	50
96470	68-10945	\N	6
96475	\N	Brazzaville - Paris	163
96480	HI-481	Mexico City - Miami	12
96485	N28ST	\N	3
96490	CC-CHJ	Santiago - Calama	33
96495	B-222	Beijing - Chongqing	108
96500	N312RC	Detroit. MI - Phoenix. AZ	155
96505	G-BGEO	\N	7
96510	HS-TBC	Hat Yai - Phuket	83
96515	FAB2129	\N	9
96520	\N	\N	15
96525	SU-BCA	Training	5
96530	N2545S	\N	3
96535	XY-AEL	Rangoon - Nyaung-U	49
96540	HK-2920	\N	9
96545	I-ATRH	Milan - Koln	37
96550	CCCP-12162	\N	9
96555	N4178Q	Tacoma. WA - Bellingham. WA	4
96560	7Q-YMB	Blantyre - Lilongwe	10
96565	C-GVYX	Fort Nelson - Ross River	4
96570	N626TX	Denver. CO - Boise. ID	82
96575	N401RA	Kodiak - Homer	21
96580	ZK-SFB	Wellington - Christchurch	2
96585	B-11125	\N	11
96590	N68TC	Denver. CO - Durango. CO	17
96595	ZS-SAS	Taipei. Taiwan -  Mauritius - Johannesburg. South Africa	159
96600	HL-7406	Abu Dhabi - Bangkok	115
96605	5Y-EJS	\N	14
96610	N350PS	Los Angeles - San Fransisco	43
96615	AE-560	Pucallpa - Lima	43
96620	P2-MIB	\N	4
96625	EI-BTJ	Cebu - Iligan	15
96630	C-130-2468	Recife - Fernando de Noronha	29
96635	F-GEGH	Brussels - Bordeaux	16
96640	N3596N	\N	15
96645	N105GP	Alliance. AK - Chadron. NE	3
96650	N496SC	Kenai. AK - Anchorage. AK	8
96655	N712AN	Honolulu. HI - Molokai. HI	8
96660	PK-NUY	Samarinda - Berau	17
96665	D-ABHD	Stuttgart - Izmir	16
96670	N79SF	Memphis. TN - Monroe. LA	2
96675	CP-1244	\N	9
96680	CCCP-85254	Moscow - Krosnovodsk	143
96685	CCCP-87549	Nizhnevartovsk - Tyumen	31
96690	FAP215	\N	16
96695	N517S	Missoula. MT - Helena. MT	3
96700	D-CABB	Hannover - Dusseldorf	21
96705	N622AV	Raleigh - Richmond	12
96710	CCCP-65675	Tyumen - Surgut	51
96715	TC-AKD	Istanbul - Ercan	15
96720	ZS-LGP	Phalaborwa - Johannesburg	17
96725	F-GCPS	Nancy - Paris	23
96730	FAE-068	\N	11
96735	8524462/8724605	\N	17
96740	HK-1716	Cucuta - Cartagena	143
96745	5N-ARH	Cairo - Sharjah	4
96750	9K-ADA	Bangkok - Kuwait	112
96755	\N	Maimana - Mazar	29
96760	ZS-UAS	Bloemfontein - Johannesburg	24
96765	F-GERA	\N	6
96770	CCCP67518	Muya - Bagdarin	17
96775	14-27	\N	29
96780	N442NE	Allentown. PA - Morristown. NJ	2
96785	B-4218	Sightseeing	46
96790	N73711	Hilo - Honolulu	95
96795	LN-WFN	Namsos - Bronnoysund	36
96800	N897P	Anchorage. AK - McGrath. AK	3
96805	N75356	Belize City. Belize - New Orleans. LA	45
96810	YN-CBE	\N	6
96815	OY-APE	Billund - Hannover - Nurnberg	2
96820	FAE-068	\N	11
96825	61-2373	Training	6
96830	N1003G	Resistencia - Posadas	22
96835	\N	\N	25
96840	F-GFKC	Basel - Basel	136
96845	EP-IBU	Bandar Abbas - Dubai	290
96850	HK-3148	\N	8
96855	N33VX	El Salvador - New Orleans	3
96860	D2-TOV	Oostende. Belgium - Lagos. Nigeria	6
96865	N70168	Ketichikan. AK - Security Cove. AK	3
96870	LZ-DOK	Sofia  - Varna	37
96875	C-GILU	Narsarsuaq. Greenland - Reykjavik. Iceland	3
96880	\N	\N	39
96885	23494	Bahawalpur - Islamabad	30
96890	N39272	\N	6
96895	9Q-CBG	\N	5
96900	CCCP-67235	Kirensk - Irkutsk	4
96905	\N	Air show	3
96910	B-2218	Guangzhou - Hong Kong	89
96915	XC-COX	Uruapan - Lazro	20
96920	XA-HUL	\N	20
96925	N473DA	Dallas/Fort Worth. TX - Salt Lake City. UT	108
96930	N111VA	Sitka - Petersburg	10
96935	VN-A102	Hanoi - Bangkok	90
96940	HC-AZY	Lago Agrio - Quito	7
96945	C-GFFA	Montreal - Ottawa	2
96950	ET-AJA	Bahar Dar - Asmara	104
96955	\N	\N	34
96960	60-0317	Sawyer AFB - Wurtsmith AFB	17
96965	N4113R	Sedona. AZ - Sedona. AZ	5
96970	5X-UBC	London - Rome	52
96975	VT-DMC	Silchar - Gauhati	34
96980	VT-EAH	Bombay - Ahmadabad	129
96985	OB-R-1020	Juliaca - Arequipa	69
96990	SP-LTD	Warszawa - Rzeszow	29
96995	N8342L	Brunswick. GA - Jacksonville. FL	4
97000	OH-EBA	Helsink - Ilmajoki	12
97005	F-GFHR	\N	7
97010	F-GCPG	Montluçon - Paris	4
97015	5A-DDD	Hamada al Hambra - Tripoli	14
97020	CCCP-67127	\N	14
97025	N284	Dakar - Agadir	5
97030	\N	Kabul - Khowst	25
97035	CCCP-86732	\N	83
97040	5N-AYJ	Dar-es-Salaam - Cairo	8
97045	VH-BBA	\N	10
97050	N739PA	London - New York City	259
97055	N128MP	Terre Haute - Lafayette	2
97060	G-OBME	London - Belfast	126
97065	C-GDOV	Dayton. OH - Montreal. Canada	2
97070	CP-1418	La Paz - Apolo	5
97075	130318	Exercise	11
97080	63-7990	\N	19
97085	XY-AEK	Rangoon - Kentung	29
97090	F-GEJE	Marseille - Paris	3
97095	N7231T	Bergamo - Orio al Serio - Santa Maria	144
97100	YR-TPJ	Training	5
97105	N807FT	Singapore - Kuala Lumpur	4
97110	N69383	Las Vegas. NV - Santa Ana. CA	10
97115	N4713U	Los Angeles - Honolulu - Auckland - Sidney	356
97120	HR-AKZ	 - Tegucigalpa - Toncontin	10
97125	C-FBZN	\N	2
97130	C-FONF	Dryden - Winnipeg	69
97135	OB-T-1271	Sightseeing	10
97140	N931F	Fort Worth. TX - Oklahoma City. OK	2
97145	157140	\N	34
97150	PT-TCS	Manaus - Sao Paulo-Guarulhos	3
97155	F-GGDM	Paris - Valence	22
97160	FAC-1110	Cucuta - Arauca	11
97165	HK-3325X	Baranquilla - Bogota	5
97170	XA-JPE	Chichen Itza - Cozumel	19
97175	N95PB	Memphis - Columbia	2
97180	SE-IZO	Stockholm - Oskarshamn	16
97185	JA9596	\N	\N
97190	N1809E	Paramaribo - Zanderij	187
97195	HK-2486	El Yopal - Tame	22
97200	N34AP	Hilo. HI - Kahului. HI	11
97205	DDR-SEW	Berlin - Moscow	113
97210	YA-BAK	Kabul - Zaranj	39
97215	FAP-329	San Ramon - Captain Alvarino	62
97220	B-12206	Kaohsiung - Chi-mei	13
97225	TJ-CCF	Douala - Yaounde	47
97230	6O-SAZ	Hargeisa - Mogadishu	30
97235	N125CA	Carterville. GA  - Montgomery. AL	2
97240	N138JR	Baltimore. MD - Winchester. VA	5
97245	N1819U	Denver. CO - Chicago. IL	298
97250	CCCP-26685	Observation flight out of Cape Schmidt	10
97255	P2-RDW	\N	22
97260	RP-C1193	Zamboanga - Manila	98
97265	\N	\N	30
97270	\N	Luena - Cazombo	48
97275	HL-7328	Jeddah - Tripoli	199
97280	\N	\N	19
97285	ZK-FTB	Auckland - Christchurch	3
97290	SX-BGE	Thessaloniki - Samos	34
97295	ET-AIL	Addis Ababa - Bole	16
97300	ZK-EVK	Wanaka - Milford Sound	10
97305	N1976Q	Hattiesburg. MS - Gulfport. MS	2
97310	B-3417	Shanghai - Hongqiao	40
97315	N25ST	Medford. OR - Medford. OR	3
97320	AP-BBF	Gilgit - Islamabad - Chaklala	54
97325	N234J	Salisbury. MD - Lynchburg. VA	5
97330	CU-T1281	Havana - Köln. Bonn	126
97335	PP-VMK	Maraba - Belem	54
97340	LN-PAA	Oslo - Hamburg	55
97345	PK-NUE	Manokwari - Bentuni	22
97350	N887PE	Orlando. FL - Mayfield. KY	6
97355	N54629	N'Djamena - Paris	171
97360	57-1481	\N	7
97365	N416US	New York City - Charlotte. NC	63
97370	\N	\N	26
97375	\N	\N	24
97380	VT-EJF	Pune - Hyderabad	11
97385	C-GSLB	\N	7
97390	ST-AIW	\N	6
97395	N75GC	Grand Canyon National Park	21
97400	CCCP-48095	\N	9
97405	56-3592	\N	4
97410	N208W	Uncertain. TX - Destsin. FL	5
97415	OB-T-1254	\N	12
97420	N21FL	New York. NY - AtlantiCity. NJ	5
97425	CCCP-76466	Ul'yanovsk - Leninakan	25
97430	N88705	Managua - Tegucigalpa	146
97435	B-180	Hualian - Taibei	54
97440	\N	\N	36
97445	N707PV	Kahului. Maui - Kaunakakai. Molokai	20
97450	9L-LAV	\N	10
97455	LDF-46	\N	18
97460	LN-AA	\N	4
97465	CCCP-46335	Perm - Sovietsky	42
97470	\N	\N	24
97475	HL-7255	Seou - Ulsan	52
97480	HK-1803	Bogota - Cali	107
97485	N9205T	Kamina - Jamba	5
97490	YV-478C	Canaima - Ciudad Guayana -Charallave	7
97495	N127JL	Block Island. RI - Westerly. RI	8
97500	N296CA	Fort Belvoir - Patuxent River NAS	5
97505	TAM-62	Guayaramerin - Santa Cruz	28
97510	HK-3315X	Bogota via Neiva - Ibague	15
97515	N410UE	Yakima - Pasco	6
97520	YR-BMJ	Bicharest - Beogard	7
97525	ZK-DAX / ZK-DQF	\N	5
97530	PK-PCM	Palambang and Jakarta	16
97535	CCCP-65951	Tyumen - Ufa	71
97540	TI-SAB	San Jose - Palmar Sur	23
97545	N835FE	Denver - Montrose	1
97550	N331DP	Detroit. MI - Louisville. KY	2
97555	ARV-0210	Caracas - Puerto Ayancucho	25
97560	HK 2016	Medellin - New York City	158
97565	PK-OBW	Ujung Pandang - Selaparang	19
97570	TN-230	Pointe-Noire - Brazzaville	28
97575	N4688B	Burlington. VT - Albany. NY	2
97580	N854FE	Plattsburg - Syracuse	1
97585	PT-LCG	San Palo - Bauru - Aracatuba	40
97590	VT-EPN	Bombay - Bangalore	146
97595	AF316	M'bala - Likouala	29
97600	N820FE	Aspen - Denver	1
97605	\N	\N	1
97610	\N	\N	30
97615	N5778W	\N	3
97620	EC-DDR	\N	13
97625	HR-TNL	San Pedro - Tegucigalpa	3
97630	CU-T1436	\N	46
97635	CCCP-78781	Kokand - Kabul	11
97640	T-410	\N	25
97645	PT-CMY	Rio de Janeiro - Juiz De Flora	4
97650	LN-BNS	Vaeroy - Bodo	5
97655	N187AS	\N	22
97660	9T-TCG	\N	24
97665	RP-C81	Manila - Roxaz City	24
97670	C-FGAW	Timmins. Ontario - Ship Sands Island. Ontario	4
97675	WR965	\N	10
97680	N84BL	Guatamala City - La Aurora	3
97685	F-GHXA	Tapachula - Tuxtla-Gutierrez	40
97690	EI-BZG	Manila - Iloilo	119
97695	VH-ANQ	Proserpine - Mareeba - Claims	11
97700	50-39	\N	10
97705	RP-C314	Manila - Surigao City	21
97710	C-FWAB	\N	2
97715	PT-ICA	Belem - Altamira	42
97720	G-BJRT	Birmingham. England - Malaga. Spain	85
97725	N9985M	Seward. AK - Aialak Bay. AK	5
97730	N59291	Aurora. OR - Penticton. Canada	5
97735	P2-DNJ	\N	12
97740	J6-SLW	\N	2
97745	\N	\N	30
97750	OB-1362	\N	9
97755	CCCP-87453	Yerevan - Zvartnots	47
97760	\N	\N	83
97765	1905	\N	18
97770	N16933	Elkhorn. WI - Chicago. IL	5
97775	\N	\N	61
97780	68-0228	Ramstein AB - Rhein-Main AB	17
97785	N59783	Nulato. AK - Kaltag. AK	10
97790	OB-1303	Malta - Miami - Reykjavík - Gander	18
97795	OY-CGM	Sondre Stomfjord - Goose Bay	8
97800	CCCP-42351	Volgograd - Sverdlovsk	129
97805	PT-FAW	Fernando de Noronha -  Recife	12
97810	N79DD	Van Nuys. CA - San Luis Obispo. CA	4
97815	\N	\N	130
97820	B-2812/B-2510	Guangzhou - Shanghi	226
97825	N8923E	\N	97
97830	CP-735	Bella Vista - La Paz	4
97835	CU-T1202	Camaguey - Santiago de Cuba	31
97840	CCCP-69320	\N	10
97845	I-ATJA	Milano - Zürich	46
97850	FAC-1150	\N	16
97855	CCCP-22389	\N	15
97860	N565PC	Cleveland - Indianapolis	2
97865	OB-1358	Bangkok - Koh Samui	38
97870	I-EHPA	\N	13
97875	N278US/N3313L	Detroit - Pittsburg	198
97880	ST-SAC	\N	10
97885	PK-PUI	\N	12
97890	N9444F	Cold Bay - False Pass	1
97895	ARV-0209	Caracas - Merida	22
97900	PT-KKV	\N	5
97905	PK-NCY	\N	21
97910	69-6567	\N	13
97915	N388US/N683AV	Columbus - Los Angeles \\  Los Angeles - Fresno	99
97920	748	\N	63
97925	N27818	Macon. GA - Anniston. AL	4
97930	N535PC	Las Vegas. NV - Aspen. CO	3
97935	FAE447	Macao - Taisha	22
97940	CC-CET	Punta Arenas - Puerto Williams	72
97945	N999UA	Denver - Colorado Springs	25
97950	YV-23C	Maracaibo - Santa Barbara de Zulia	45
97955	D-ICLW	\N	7
97960	N831LC	San Diego - Amarillo. TX  - Evansville. IN	10
97965	CP-1564	\N	9
97970	PT-LLL	Ubrraba - Brasillia	7
97975	N5785C	\N	5
97980	469	\N	98
97985	158930/159325	\N	27
97990	CCCP-46472	Trashkent - Navoi	63
97995	\N	\N	28
98000	N402BL	Zeldiver - San Pedro	8
98005	C-FQNF	Sturdee - Smithers	7
98010	N3645D / N78S	Williamsport. PA  - Philadelphia. PA	5
98015	N270AS	Atlanta - Brunswick	23
98020	F-OHAB	Hiva Ou - Nuku Hiva	22
98025	ST-AHX	\N	8
98030	PK-MFD	Ambon - Ternate - Manado	13
98035	N6280H	Local sightseeing	7
98040	HK-3177	Villavicencio - Miraflores Guaviarel	14
98045	CCCP-85097	Sukhumi - Leningrad	181
98050	LZ-INK	\N	10
98055	OE-LAV	Bangkok - Wien. Austria	223
98060	N8071L	Grada Zuma. Bahamas - Cape Hatien	3
98065	J6-SLQ	Luanda - Cafunfo	7
98070	HK-3511	Bogota - Malambo	18
98075	CCCP-46724	Saint Petersburg - Voronezh	10
98080	5N-AOW	Benin - Kano	53
98085	HK-2889X	\N	3
98090	OB-1218	\N	15
98095	N7217L	New Orleans - Mobile - Birmingham	15
98100	C-GMXQ	Jeddah - Sokoto	261
98105	H4-SIA	Kira-Kira - Honiara	15
98110	N959SC	Detroit - Chicago	3
98115	N5183U	Local flight - Flying B Ranch	5
98120	YJ-RV4	Nogougou - Luganville	9
98125	DQ-FCN	Altukaki - Rarotonga	10
98130	YR-IMH	Bucharest - Timisoara	9
98135	N4075W	Gustavus. AK - Haines. AK	6
98140	J5-GBB	Kano - Bamako	3
98145	VT-EFL	Calcutta - Imphal	69
98150	N68HA	Ketchikan. AK - Wrangell. AK	4
98155	N64SF	\N	3
98160	9M-AZB	Bario - Marudi	20
98165	PK-VIP	Sampit - Plangkaraya	10
98170	N33701	Laredo - Houston	14
98175	CCCP-74002	\N	13
98180	HK-2701	\N	7
98185	ET-AJL	\N	4
98190	C-FICA	Moncton - Hamilton	2
98195	CCCP-13320	\N	16
98200	CCCP-46724	\N	10
98205	HK-3238	\N	10
98210	A-1324	\N	135
98215	PK-WWE	\N	9
98220	YV-O-CVG-4	Kavanayen - Luepa	12
98225	PK-KTC	Palangkaraya - Sampit	17
98230	N3456M	Concord. CA - Novato. CA	3
98235	130322	Edmonton - Point Alert	18
98240	\N	\N	40
98245	CCCP-87526	Ellsta - Makhackala	51
98250	PT-SCU	\N	15
98255	N951FE	Memphis - Destin	1
98260	\N	\N	20
98265	\N	\N	23
98270	N5011K	San Francisco. CA - Sacramento. CA	3
98275	\N	\N	20
98280	C9-STD	\N	3
98285	CCCP-47823	Nizhnevartovsk - Bugulma	41
98290	FAB2333	Brasilla  - Guarantinguerta	20
98295	N350MR	Grand Canyon. AZ - Las Vegas. NV	5
98300	N25BR	Rome. GA - Huntsville. AL	9
98305	D-CCCC	Frankfurt - Frankfurt	30
98310	OY-KHO	Stockholm-Copenhagen-Warsaw	129
98315	5Y-SRV	\N	5
98320	B-198	Taipei - Anchorage	5
98325	N55000	Plattsburgh. NY - SaranaLake. NY	4
98330	N22592	Grand Canyon. AZ - Las Vegas. NV	5
98335	F-GGED	Lyon - Strasbourg	96
98340	C-FRVR	Nanaimo - Port Mellon	9
98345	\N	Agdam - Shusha	47
98350	PT-TBB	Salvador - Guanambi	12
98355	58-0732	Training	5
98360	N862FW	Dakar - Yoff - Cap Skiring	56
98365	N794AL	Seattle - Toledo	4
98370	\N	\N	\N
98375	CP-754	Estencia el Trompillo - La Paz	5
98380	TN-ACX	Dwando - Brazzaville	8
98385	N165PC	Training	2
98390	N485US	New York City - Cleveland	51
98395	RA-30002	Chekurdakh - Tiksi	10
98400	ST-ALX	Amsterdam - Athens	7
98405	CCCP-67130	Etropavlovsk - Kamchatskiy	12
98410	J5-GAE	Khartoum - Tunis	13
98415	B-11116	\N	10
98420	P2-RDS	\N	15
98425	218	\N	46
98430	N62774	Philadelphia. PA - Reading. PA	4
98435	N141PV	Local	22
98440	N342E	Local sightseeing	9
98445	42125	Manshahr  - Tehran	39
98450	64-0501	Training	9
98455	HP-1205	Panama City. Panama - Cali. Colombia	47
98460	N355CA	San Juan - Mayaguez	5
98465	N118GP	Atlanta - Anniston. AR	6
98470	N38DJ	Sheboygan - Manitowoc	2
98475	VH-JDL	Bankstown - Cooma	6
98480	N2715X	Meadview. AZ - Las Vegas. NV	10
98485	PP-SND	Rio Bran- Cruzeiro do Sul	3
98490	CCCP-11896	Igarka - Omsk	12
98495	N59LD	St Thomas. Virgin Islands. Fajardo. Puerto Rico	4
98500	CR872	\N	19
98505	N20086	Bethel - Chevak	1
98510	CCCP-11111	Nakhichevan - Rostov	34
98515	\N	\N	57
98520	CCCP-85222	Tbilisi - Mineralnye Vody	24
98525	PK-RVU	Jakarta - Surabaya - Ujung Pandang - Ambon	70
98530	CCCP-11342	\N	8
98535	XA-SCM	Puebla - Mexico City	4
98540	PT-LHU	Curitiba. PR - Rio de Janeiro	6
98545	N8476E	Arecibo. PR - Ponce. PR	4
98550	AP-BCP	Karachi - Kathmandu	167
98555	N11002	New York City - San Francisco	292
98560	HS-TID	Bangkok - Kathmandu	113
98565	B-2755	Nanjing - Xiamen	126
98570	CP-1961	La Paz - Santa Ana de Yacuma	10
98575	N342AE	Test	3
98580	CCCP-65058	Donetsk - Ivanovo	84
98585	N400NC	Test	3
98590	FAES121	\N	14
98595	FAP304	Estrecho - Iquitos	41
98600	ZS-DHX	Jamba - Pretoria	17
98605	N3657G	Local Flight	12
98610	OB-1443	Tarapoto - Bellavista	43
98615	RA-22738	\N	14
98620	N350SM	Sightseeing	7
98625	YV-502C	Curacao - Miami	3
98630	HK-3468X	Villavicencio - Mitu	11
98635	RA-22651	\N	10
98640	NAF911	Lagos - Kaduna	158
98645	4X-AXG	Amsterdam - Tel Aviv	4
98650	63-7881	Training	6
98655	B-4211	Lanzhou - Xi'an	35
98660	CCCP-48088	\N	13
98665	PK-MNN	Semarang - Bandung	31
98670	CCCP-28785	\N	16
98675	FAP306	\N	11
98680	CCCP-69346	Petropavlovsk - Novosobrisk	14
98685	N250TJ	\N	3
98690	N67941	Kiana. AK - Selawik. AK	3
98695	CCCP-09303	Migalovo AB - Yerevan	33
98700	\N	\N	20
98705	VN-A449	Ho Chi Minh City - Nha Trang	31
98710	CU-T1270	Santo Domingo - Porto Plata	34
98715	N6257H	Selway Lodge. ID  Salmon. ID	3
98720	B-2523	Guangzhou - Guilin	141
98725	650255/660142	\N	13
98730	XA-RML	Uruapan - Guadalajara	9
98735	9Q-CBH	\N	37
98740	PH-MBN	Amsterdam - Faro	340
98745	5A-DIA	Benghazi - Tripoli	157
98750	N1078V	\N	4
98755	D-BEAT	Bremen - Paris	23
98760	PK-IHE	\N	44
98765	G-ZAPE	Southend - Glasgow	2
98770	C-FAAM	Bronson - Wrangell	2
98775	9Q-CJK	\N	21
98780	9M-PID	Medan - Banda Aceh - Jakarta	16
98785	EP-ITD	Tehran - Khoram	133
98790	\N	Faisabad - Daraim	30
98795	HP-1200CTH	\N	2
98800	B-12238	\N	6
98805	PH-KXL	Skopje - Zürich	97
98810	N4320W	Albuquerque. NM - Oakland. CA	4
98815	LN-TSA	Pucallpa - Dagali - Trujillo	10
98820	PP-SBJ	Cuiaba - Vihena - Rondonia	6
98825	N47EV	\N	5
98830	N500AK	Bristol. TN - Blountville. TN	4
98835	N3153R	\N	4
98840	YV-03C	Test	11
98845	B-2171	Shanghai - Los Angeles	264
98850	N86SD	Cincinnati. OH - Pierre. SD	8
98855	BHMAY-14102	Ulan Bator - Bayan Olgiy	40
98860	VT-ECQ	Aurangabad - Bombay	118
98865	\N	Kabul - Mazar-i- Sharif	76
98870	AF-319	Lusaka - Libreville - Dakar	30
98875	N115GP	Training	2
98880	DQ-FEO	\N	2
98885	XA-SEA	\N	5
98890	HK-2422X	Panama City - Medellin	132
98895	HK-2759X	Bogota - El Yopal	2
98900	ST-AID	\N	11
98905	P2-SWA	\N	11
98910	PK-NUL	\N	3
98915	RA-26035	Batumi - Baku - Chimkent	40
98920	PK-GFU	Ambo - Sorong	43
98925	\N	\N	23
98930	N818AN	\N	3
98935	N9116F	Birmingham - Talladega	2
98940	B-2716	Yinchuan - Beijing	113
98945	HL-7229	Seoul - Mokpo	110
98950	9M-AXM	Ba Kelalan - Marudi	17
98955	9N-ACL	Kathmandu - Bharatpur	19
98960	N90BP	\N	4
98965	N814CK	Norfolk. VA - Guantanamo. Cuba	3
98970	RA-67656	\N	24
98975	CCCP-87995	Khorag - Dushanbe	86
98980	D-AIPN	Frankfurt - Warszawa	70
98985	CCCP-65893	Sochi - Sukhumi	27
98990	CCCP-85163	Tbilisi - Sukhumi	132
98995	CCCP-65001	Sukhumi - Tbilisi	30
99000	\N	\N	60
99005	ZK-NOM	Glentanner - Queenstown	9
99010	B-2103	Shenzen - Fuzhou	80
99015	LN-BNM	Trondheim - Namsos	20
99020	N41010	Pontiac. MI - Greensburg. IN	5
99025	C-GQTH	Winnipeg - Sandy Lake	7
99030	B-2141	Beijing - Urumqi	102
99035	RA-82071	Dubai - Kerman	17
99040	RA-42390	Genève - Skopje	116
99045	TG-ACP	Santa Elena - Guatemala City	13
99050	N334PX	Minneapolis/St. Paul - Hibbing	18
99055	C-GMOP	Tuktoyaktuk - Inuvik	7
99060	6V-ADE / C5-GAA	\N	3
99065	RDPL-34117	Vientiane - Phonesavahn	18
99070	4761	Manila - Naga	29
99075	N309CK	Fresno. CA - Santa Ana. CA	5
99080	CCCP-26141	Krasnadar - Gyumri	36
99085	RA-85656	Irkutsk - Moscow	124
99090	VH-SVQ	Newcastle - Lord Howe Island	9
99095	N230TW	Kissimmee - Opa	10
99100	N304UE	Washington D.C. - Columbus. OH	8
99105	9Q-CBC	Cotonou - Kinshasa	2
99110	RA-11118	Volgograd - Nalchik	13
99115	OB-1559	Jananjui - Tocache - Tingo Maria - Lima	31
99120	G-OHOT	Edinburgh - Coventry	2
99125	N18835	New York City - Denver	116
99130	VT-SIA	Training	4
99135	VH-SWP	\N	1
99140	69-6576	\N	8
99145	44317	Tehran - Moscow	32
99150	N3433Y	Spokane - Portland	2
99155	N150FB	Key West Harbor - Key West	2
99160	VH-JUU	\N	6
99165	PT-OMV	Manaus - Bogota	4
99170	ZD576	Aldergrove AB - Fort George	29
99175	F-OGQS	Moscow - Hong Kong	75
99180	88-0171/6810942	\N	7
99185	N27736	\N	5
99190	PH-KSH	Amsterdam - Cardiff	24
99195	FAE450	Taura - Latacunga	17
99200	9XR-NN	Tanzania - Kigali. Rwanda	12
99205	8726000/8826060	\N	26
99210	PK-ZAA	Pontianak - Nanga Pinoh	11
99215	B-1816	Taipe - Nagoya	271
99220	N990RA	AtlantiCity. NJ - Stratford. CT	9
99225	HK-3479	Furatena - Quipama - Boyaca - Bogota	9
99230	PT-GJW	Sao Paulo - Sao Gabriel	16
99235	HK-2890	San Jose - Villavicencio	11
99240	HK-2213	Villavicencio - La Primavera - Puerto Carreno	29
99245	N126UA	Sightseeing	7
99250	B-2610	Xian - Guangzhou	160
99255	XA-SLU	Lazaro - Cardenas - Michoacan	9
99260	XA-BBA	Mexico City - Washington D.C.	12
99265	PK-MFI	Balikpapan - Palu	12
99270	N13GA	Taku Lodge. AK - Taku Lodge. AK	10
99275	TU-TIP	San Pedro - Abidjan	17
99280	\N	\N	70
99285	F-WWKH	Toulouse - Toulouse	7
99290	5T-CLF	Nouakchott - Tidjikja	93
99295	N954VJ	Columbia. SC - Charlotte. NC	57
99300	N8297X	Portage Creek. AK - Dillingham. AK	3
99305	N151BH	Lihue. HI - Lihue. HI	7
99310	8P-TAD	Bridgetown - Fort de France	6
99315	RA-87256	Training	9
99320	HP-1202AC	Colon - Panama City	21
99325	PK-OBT	Kilo Lima - Kelawit	18
99330	\N	Dzhida - Boda	47
99335	HL-7296	Seoul - Cheju	160
99340	N17394	Caribou Lake. AK - Nikiski. AK	3
99345	N124NH	New York. NY - AtlantiCity. NJ	3
99350	N4839S	Merrill Field. AK - Port Alsworth. AK	4
99355	CN-CDT	Agadir - Casablanca	44
99360	N513AU	Chicago - Pittsburgh	132
99365	5N-ATQ	Lagos - Abuja	5
99370	C-FDMR	Fish Egg Inlet - Pruth Bay	4
99375	5N-IMO	Tunis - Tamanrasset	39
99380	PK-PLV	Hong Kong - Jakarta	12
99385	RA-87468	Krasnoyarsk - Tura	28
99390	FAP2009	Bahia Negra - Asuncion	27
99395	LV-WEN	Cordoba Pajas Blancas - Buenos Aires. Brazil	9
99400	RA-27209	Chaibukha - Provedenia	20
99405	N96BF	\N	2
99410	HK3929X	Villavicencio - Mitu	10
99415	EP-PAV	Isfahan - Terhan	66
99420	C-130-2460	Rio de Janeiro - Belem	21
99425	H534	\N	22
99430	RA-33008	\N	19
99435	RA-11790	Yushno - Ust Ilimsk	23
99440	N401AM	Indianapolis - Chicago	68
99445	XA-SVS	Cozumel - Chichen Itza	14
99450	PK-YNM	Nabire - Obano	4
99455	OB-1569	Trujillo - Saposa	30
99460	N63995	Burbank - Oakland	1
99465	P2-SWC	Selbang - Bolvovip	7
99470	N954U/N411KM	\N	142
99475	H584	\N	22
99480	EI-BWF	Manila - Cebu - Tokyo	293
99485	N1238K	Nome. AK - Koyuk. AK	5
99490	N918AE	Greensboro - Raleigh	20
99495	YV-761C	\N	9
99500	P2-MFS	Tabubil - Selbang	28
99505	7T-VEE	East Midlands - Coventry	5
99510	F-GBEC	Alger - Paris	239
99515	TC-JES	Ankara - Van	76
99520	1003	Isfahan - Tehran	12
99525	PK-NUK	Bima - Ruteng	14
99530	HK-3839X	Bogota - Cartagena	52
99535	N746FE	Flagstaff - Phoenix	1
99540	C-GPUN	Vancouver - Masset	5
99545	N754FE	Visalia - Oakland	1
99550	N1535E	Sequim. WA - Seattle. WA	4
99555	N2209P	Los Angeles. CA - Burbank. CA	4
99560	9N-ABI	Kathmandu - Rumjatar	24
99565	RA-67120	Krasnoyarsk - Abakan	19
99570	F-GHLN	Paris - Romania	10
99575	B-22717	\N	4
99580	N27245	AZ - Las Vegas. NV	10
99585	N782AL	Kansas City - Chicopee	3
99590	RA-26084	Petropavlovsk -  Ossora	10
99595	N9417B	Sacramento. CA - Reno. NV	1
99600	ZK-TIK	Hamilton -  New Plymouth	6
99605	YR-LCC	Bucharest - Brussel	60
99610	84-0136	Camp Springs. MD - San Antonio. TX	8
99615	5N-AJQ	Port Harcourt - Lagos	9
99620	VH-AJS	Tindal - Alice Springs	3
99625	4R-HVA	Anuradhapura - Palaly AFB	52
99630	C-GYYB/ C-GYPZ	Red Lake - Sioux Lookout  / Sioux Lookout - Red Lake	8
99635	N409MA	Buenos Aires - La Paz - Quito	7
99640	HK-3079G	Mitu - Villavicencio	9
99645	62-1838	Boise. ID - Colorado Springs. CO	6
99650	G-OEAA	Leeds - Aberdeen	12
99655	HK-3213	Villavicencio - Miraflores	11
99660	6V-AGH	\N	10
99665	N908VJ	Atlanta - Miami	62
99670	ZK-NEY	Auckland - Palmerston North	21
99675	CCCP-68142	Poliny Osipenko - Nikolayevsk-on-Amur	12
99680	RA-07743	Poliny - Nikolayevsk-on-Amur	14
99685	T401	Ondjiva - Catumbela	48
99690	RA-65617	Kaduna - Lagos	80
99695	N356SA	Santo Domingo - Aguadilla. Puerto Rico	2
99700	N8385G	Karluk - Kodiak	4
99705	P2-VTC	Port Moresby - Tabubil	3
99710	N6281J	Sightseeing	6
99715	P2-MBI	Alotou - Dagura	15
99720	PK-NUT	\N	18
99725	5R-MMG	Maintirano - Antananivo	34
99730	P2-TNT	\N	2
99735	RA-05708	Johannesburg - Jamba	3
99740	N125GU	Guatemala City - San Salvador	65
99745	PK-KHL	Tual - Langgar - Kaimana	10
99750	HK-2594	Neiva - Cali	10
99755	N256AS	Atlanta - Gulfport	29
99760	N30GA	Farewell - Anchorage	1
99765	XV239	Air Show	7
99770	N6234G	Las Vegas. NV - W. Yellowstone. MT	8
99775	FAC1152	Villavicencio - La Macarena	22
99780	YA-BAO	Kabul - Jalalabad	51
99785	CR861	Ratmalana - Palali base	81
99790	N69303	Bimini - Mores Cay	9
99795	9M-MGH	Kota Kinabalu - Tawau	53
99800	VH-NEJ	Training	3
99805	BNMAU-10103	Ulan Bator - Moron	43
99810	77-0354	Anchorage-Elmendorf AFB - Anchorage-Elmendorf AFB	24
99815	RA-24553	Cape Chelyuskin - Sterligov Cope	15
99820	C-FEBX	Triumph Bay - Campbell River	10
99825	PK-ZAG	Medan - Meulaboh	14
99830	EX-25179	\N	15
99835	N4834V	\N	3
99840	\N	\N	13
99845	XA-SVM	Saltillo - Piedras Negras	11
99850	TC-72	Comodoro Rivadavia - Cordoba	53
99855	5N-AUA	Jos - Kano	137
99860	CR862	Colombo - Palay AFB	63
99865	9M-AYW	\N	10
99870	4K-401	\N	6
99875	TJ-CBE	Cotonou - Douala	78
99880	4K-65703	Nakhichevan - Baku	82
99885	RA-85164	Yushno - Khabarovk	98
99890	F-OHRK	Cayenne - Port-au-Prince	20
99895	YR-AMR	Verona - Timisoara	49
99900	9Q-CRR	Kinshasa - Jamba	144
99905	N651A	Miami - Cali	164
99910	P2-NAM	Madang - Bundi	12
99915	EZ-22684	\N	12
99920	RA-26222	Kinshasa - Kahemba	6
99925	J8-VAK	Union Island - Bridgetown	10
99930	5N-AXO	\N	14
99935	CH-587	\N	39
99940	ZK-SFA	Wellington - Picton	6
99945	HK-3979X	Asuncion - Campina Grande	4
99950	N131T	St. Johns. AZ - Brownsville. TX	4
99955	TC-GEN	Puerto Plata - Gander	189
99960	XA-SLQ	Tijuana - Ensenada	8
99965	\N	\N	20
99970	N224E	Port-au-Prince - Cap Haitien	15
99975	TG-JAK	Guatemala City - Cantabal	2
99980	D-CASH	Berlin - Salzburg	10
99985	\N	El Obeid - Khartoum	91
99990	ER-ACE	Ludana - Lukapa	8
99995	OB-1451	Lima - Arequipa	123
100000	PT-LSD	Brasilia - Sao Paulo	9
100005	EP561	Condorcanqui - Bagua	23
100010	P4-AVB	Ariba - Punto Fijo	8
100015	N9983Z	\N	5
100020	73-1149	Tizla - Dubrovnik	35
100025	RA-76752	Novosibirsk - Petropavlovsk	20
100030	B-12257	Taipei - Matsu Island	17
100035	N35207	Cheyenne. WY - Lincoln. NE	3
100040	ST-FAG	Wadi Halfa - Khartoum	53
100045	C-GDOB	\N	2
100050	XA-SWJ	Durango - Otaez	19
100055	P2-ISD	Menyamya - Marakawa	10
100060	N904VJ	Miami - Atlanta	110
100065	G-BEDZ	Inverness - Lerwick	3
100070	UR-76539	Kinshasa. Congo  - Athens. Greece	10
100075	EP-IRU	Training	7
100080	A25-113/A25-209	\N	28
100085	PK-GIE	Fukuoka - Denpasar	275
100090	B-3822	Dalian - Shanghai	12
100095	N927DA	Pensacola - Atlanta	142
100100	P2-MBB	Bosavi - Mendi	20
100105	VT-ETC	Delhi - Shimla - Kulu	9
100110	CH-06	Villafranca. Italy - Eindhoven AB	41
100115	N93119	New York City - Paris	230
100120	XA-TCF	Holvox Island - Playa del Carmen	18
100125	N313RS	Emmonak - Aniak	4
100130	XY-AET	Rangoon - Mergui	49
100135	C-GNDN	Iqaluit - Markham Bay	2
100140	C-FGNI	Bronson Creek - Wrangell	3
100145	74-1662	Jackson Hole. WY - New York. NY	9
100150	C-GCMY	Tasu - Alliford	3
100155	RA-76513	Belgrade - Malta	12
100160	RA-85621	Moscow - Svalbard	141
100165	PT-WAV	Porto Alegre - Joinville	2
100170	N7312C	\N	5
100175	PH-DDA	Texel - Amsterdam	32
100180	N52AW	Lima - Santiago	70
100185	9Q-CXK	\N	21
100190	RA-11101	\N	19
100195	RA-82069	Moscow - Turin. Italy	23
100200	N64276	\N	3
100205	N744W	Port Meiner. Quebe- Bangor. Maine	8
100210	N751MA	Manta - Miami	4
100215	RA-88527	Tyumen - Khanty	34
100220	PT-MRK	Sao Paulo - Rio de Janiero	95
100225	TG-TPA	Guatemala City - Flores	16
100230	HB-LRX	Geneva - Bordeaux	8
100235	D2-FVG	Luanda - Lucapa	16
100240	5N-BBF	Port Harcourt - Lagos	143
100245	HZAIH/UN-76435	New Delhi - Dhahran / Chimkent - New Delhi	349
100250	\N	\N	8
100255	RA-40309	\N	15
100260	N87GL / N1127D	Burlington. IA - Quincy. IA	14
100265	64-14856	San Diego. CA - Portland. OR	11
100270	ET-AIZ	Addis Ababa - Nairobi	175
100275	N4704B	Bethel - Kwigillingok	1
100280	RA-76804	Abakan - Petropavlosk - Kamchatsky	23
100285	HK-2602	Medellin - Bahia Solano	15
100290	PK-VSO	Banjarmasin - Sampit	17
100295	N75142	Boise - Salt Lake City	2
100300	\N	St. Petersburg - Krasnodar	18
100305	HK-4008X	Bogota - Medellin	4
100310	N827AX	Test flight	6
100315	H1032	Tanbaram AFB - Hyderabad	22
100320	N388LS	Bridgeport. CT - Lebanon. NH	2
100325	N802TH	Manteo - Edenton	2
100330	5W-FAU	Pago Pago - FagaliI	5
100335	N265CA	Cincinnati - Detroit	29
100340	N702SC	St. Marys - Kenai	2
100345	5N-AXS	Jos - Yola	16
100350	6AV-AEO	Tambacounda - Dakar	52
100355	T-400	Luanda - Cafunfo	37
100360	357 / 903	\N	73
100365	PP-CJO	Maraba - Carajas	52
100370	YV-160CP	Lima. Peru - Guatemala City. Guatemala	5
100375	C-FESJ	\N	1
100380	HK-3885	\N	4
100385	\N	Dezful - Mashhad	88
100390	RA-46516	Stavropol - Trabzon	50
100395	88-4408	Howard AFB - Tegucigalpa	10
100400	N83FA	Griffin - Americus	2
100405	N408GV	Barrow - Wainwright	5
100410	D2-TFP	Brazzaville - Luanda	7
100415	4K-87504	Training	6
100420	5U-MBD	\N	14
100425	PK-MTX	Jakarta - Tanjung Pandan	53
100430	\N	\N	36
100435	B-2925	Chongqing - Shenzen	74
100440	9Q-CWL	Bunia - Kisangani	27
100445	JU-1020	Ulan Bator - Mandalgobi	12
100450	VT-SSA	Mumbai - Banglaor	2
100455	N5164G	Sightseeing	5
100460	\N	\N	29
100465	PT-WHK	Sao Jose dos Campos - Congonhas	60
100470	CU-T1262	Santiago de Cuba - Havana	44
100475	N15199	Haines. AK - Skagway. AK	6
100480	PK-YPM	Bangdung - Jakarta	50
100485	P2-MMU	Chimbu - Goroka	4
100490	9V-ATD	Phuket - Ranong	2
100495	5N-BAA	Lagos - Calabar	55
100500	F-GPYE	Nice - Florence	17
100505	HL-7468	Seoul - Guam	254
100510	N27UA	Miami - Santo Domingo	4
100515	B-12256	Taipei - Matsu	16
100520	C-GIGK	\N	2
100525	VH-PJQ	Sightseeing	5
100530	PT-LML	\N	2
100535	FAC1115	San Felipe - Puerto Inirida	12
100540	VN-A120	Ho Chi Minh City - Phnom Penh	66
100545	9M-MIA	Bandar Seri Begawan - Miri	10
100550	9Q-CBO	Buknavu - Uvira	22
100555	1102/65-9405	\N	33
100560	PK-GAI	Jakarta - Medan	234
100565	N12022	Montrose. CO - Page. AZ	9
100570	EC-ERQ	\N	9
100575	LV-WEG	Posadas - Buenos Aires	74
100580	1310	\N	5
100585	N555JD	\N	1
100590	YA-KAE	\N	26
100595	C-GPRL	Fort MMurray - La Loche	6
100600	N750GC	Barrow - Wainwright	8
100605	RA-82005/08	Irkutsk - Vladivostok	23
100610	C-GVRO	Winnipeg - Little Grand Rapids	17
100615	CP-1635	Villamontes - Santa Cruz	19
100620	EY-85281	Dushanbe - Sharjah	86
100625	C-GKWV	Mackenzie - Bear Valley	3
100630	UR-42334	Odessa - Thessaloniki	70
100635	9V-TRF	Jakarta - Hatta - Singapore	104
100640	750	Search mission	5
100645	ER-ACF	Abidjan - Rundu. Nambia	5
100650	N4723U	Tokyo - Honolulu	393
100655	HP-986PS	Panama City - Rio Sidra	10
100660	N913FE	Maiden. NC - Greensboro. NC	1
100665	YA-DAB	Kandahar - Heart	51
100670	YV-928CP	Gomel - Kunovice	2
100675	XY-AES	Thandwe - Sittwe	45
100680	RP-C1507	Tacloban - Cagayan de Oro	104
100685	163045/CY-02	\N	2
100690	LZ-SFG	Terceira - Lisbon	7
100695	D-3B-9	\N	5
100700	\N	\N	57
100705	B-1814	Denpasar - Taipei	196
100710	N840FE	Memphis. TN - Bowling Green. KY	1
100715	N868FE	Grand Forks - Bismark	1
100720	SU-PBA	Mombasa. Kenya - Cairo. Egypt	6
100725	B-12255	Hsinchu - Kao Hsiung	13
100730	YA-FAZ	Dubai - Kandahar - Kabul	45
100735	RP-C3222	Manila - Bacolod	127
100740	OB-1388	Tumbes - Piura	55
100745	XA-TAP	\N	4
100750	HC-BSU	Bogota - Quito	53
100755	FAP-351	Iquitos - Andoas	88
100760	5T-MAG	Nema - Nouakchott	42
100765	34001	Vientiane - Xiang Khoang	26
100770	N96CW	Charlotte. NC - Monroe. NC	5
100775	JU-1017	Erdenet - Moron	28
100780	C-GQAL	Montreal - Peterborough	11
100785	N594BK	Sightseeing	6
100790	UR-76424	Rasal - Nikolaev. Ukraine	8
100795	LV-WPO	Tucumán - Córdoba	3
100800	UR-UCI	Bourgas. Bulgaria - Asmara. Eritrea	10
100805	XC-UTQ	\N	4
100810	VP-BPS	VP-BPS	18
100815	EC-FXD	Palma de Mallorca - Barcelona	2
100820	PT-LGN	Tefe - Manaus	24
100825	VT-EJW	Agathi - Kochi - Thiruvananthapuram	6
100830	D-CPRR	Cagliar - Genoa	31
100835	F-GSJM/F-GAJE	Lyon - Lorient	15
100840	C-FOCJ	Prince Rupert - Kincolith	5
100845	D2-FAZ	\N	13
100850	ZK-VAC	Stewart Island - Invercargill	10
100855	9N-ACC	Jomsom - Pokhara	18
100860	N2748J	St. Maarten - Roseau	11
100865	ZS-NKK	Pretoria - Durban	2
100870	XY-AEN	Rangoon - Tachilek	44
100875	CU-T1264	Quito - Guayaquil - Havana	91
100880	RA-26028	\N	24
100885	HB-IWF	New York City - Geneva	229
100890	N1433Z	Anchorage. AK - Hoholitna River. AK	5
100895	24143	\N	5
100900	TN-AFR	Huambo - Luanda	5
100905	U-614	Timika - Jayapura	9
100910	ZK-DKL	Sightseeing	3
100915	EC-GEO	Malaga - Melilla	38
100920	D4-CAX	Sao Nicolau - Praia	22
100925	EW-46465	Jaffna - Colombo	55
100930	YV-611C	Sighteeing	27
100935	9Q-CSG	Kindu - Kinshasa	41
100940	EK-88272	Yerevan - Krasnodar	37
100945	PT-WKH	Teresina - Fortaleza	3
100950	5Y-ANV	\N	11
100955	N3FY	Plaa Grande - Quetzaltenango	18
100960	RA-12955	Krasnoyarsk - Mirny	13
100965	RP-C606	\N	9
100970	N956DB	Brunswick. GA - Annapolis. MD	1
100975	N9352B	Vancouver - Victoria	2
100980	\N	\N	6
100985	N501EZ	Mena. AR - Texarcana. TX	1
100990	C-FCVK	Point-Lebel - Rimouski	10
100995	XY-AEO	Yangon - Sittwe	8
101000	HS-TIA	Bangkok - Surat Thani	146
101005	UR-11319	\N	11
101010	S9-SAT	Luanda - Saurimo	10
101015	HK-3930X	Bogotá - Medellín	5
101020	S9-CAO	Huambo - Saurimo	14
101025	D2-EHD	Huambo - Luanda	9
101030	G-CHNL	London - Guernsey	2
101035	59-1452	\N	4
101040	C-GWUG	Vancouver - Victoria	2
101045	VH-XFF	Horn Island - Coconut Island	4
101050	9N-ADA	Jumla - Nepalgunj	12
101055	\N	Managua - Bluefields	28
101060	EL-ASS	Luanda - Lucapa	14
101065	P2-ALH	Hoskins - Kandrian	11
101070	9Q-CDI	Kinshasa - Mbandaka	7
101075	N205RA	Tonopath - Bishop	1
101080	B-2622	Chengdu - Wenzhou	61
101085	K2673	Gwalior -  Pokhran - New Delhi	19
101090	HK-337	Cucuta - El Yopal	8
101095	C-FWLQ	Goose Bay - Davis Inlet	2
101100	PT-LEM	Training	5
101105	TC-JEP	Adana - Ciddah	6
101110	HK-2760	Bucaramanga - Malaga	5
101115	HL-7373	Shanghi. China - Seoul. Korea	3
101120	YJ-RV9	Espírita Santo - Port Vila	12
101125	M21-05	Training	5
101130	5Y-LET	Ol Kiombo - Mara Sika AS	2
101135	N215AA	Dallas-Fort Worth - Little Rock	145
101140	\N	Kassala - Khartoum	50
101145	RP-C471	\N	1
101150	N6099S	Sightseeing	7
101155	P2-ALX	Nadzab - Goroka	17
101160	C-FIFP	Test flight	2
101165	D-IBEX	London. England - Frankfort. Germany	2
101170	HK-1776	Villavicencio - Mitu	18
101175	VT-LCI	Kathmandu - New Delhi	5
101180	XA-TAL	Los Mochis - Toluca	4
101185	N9253N	Fairfield. N.J. - Martha's Vineyard. MA	3
101190	YN-CED	Managua - Bluefields	16
101195	\N	Tokyo. Japan - Chitose. Japan	517
101200	N5382W	\N	7
101205	DQ-AFN	Nausori - Nadi	17
101210	N518DM	Sky Diving	10
101215	D4-CBC	Sao Vicente - Santo Antao	18
101220	C-FLIH	Port-Menier - Sept-Iles	4
101225	B-150	Bangkok - Hong Kong	315
101230	B-17912	Taipei - Hualian	96
101235	UK-87848	Tashkent - Turtkul	33
101240	LV-WRZ	Buenos Aires - Cordoba	103
101245	5HNAT	Serener Airstrip - Kilimanjaro IAP	12
101250	G-ILGW	Glasgow - Aberdeen	11
101255	N4830S	Westerly. RI - Block Island. RI	5
101260	9N-AEG	Pokhara - Kathmandu	15
101265	SX-ECH	Athens - Bucharest	13
101270	PT-ODK	Belem - Monte Dourado	2
101275	3610	Test flight	5
101280	N411WL	Sightseeing	10
101285	N704H	\N	20
101290	I-AVJG	Napoli - Genoa	3
101295	EV-8012	La Carlota - Acarigua	6
101300	N47BA	Orlando. FL - Dallas. TX	6
101305	SU-GAP	New York City - Cairo	217
101310	N902CT	\N	4
101315	31242/31243	Training	16
101320	XA-TKN	Uruapan - Mexico City	18
101325	F-OHFV	Rome - Pristina	24
101330	5Y-RAN	Nairobi - Dar Es Salaam. Tanzania	4
101335	UK-91004	Moscow. Russia - Tashkent. Uzbekistan	7
101340	ZS-OJY	Johannesburg. South Africa  - Oranjemund. Namibia	9
101345	N1747U	\N	6
101350	RP-C-3883	Manila - Cauayan	17
101355	N525KL	Saint Louis - Branson	6
101360	SE-GDN	Sundsvall - Gothenburg	8
101365	63-7854	\N	94
101370	CS-TGM	Ponta Delgada - Horta	35
101375	F-GTDI	Havana - Guatemala City	314
101380	N86BE	Opa-Locka - Marianna	3
101385	ZS-ONT	\N	2
101390	HL-7451	London. England - Milan. Italy	4
101395	VT-EDW	Kathmandu - New Delhi	189
101400	CU-T1285	Havana - Valencia	22
101405	9N-AFL	Simara - Kathmandu	10
101410	3C-JJI	Kiev. Russia - Tehran. Iran	6
101415	5N-AXL	Lagos - Abuja	16
101420	HB-AKK	Zürich - Dresden	10
101425	HB-AAM	Tripoli IAP - Marsa el-Brega	41
101430	YS-09-C	San Jose - Tortuguero	20
101435	\N	Ankara - Istanbul	4
101440	5Y-BEN	Abidjan - Lagos	179
101445	TL-ACM	Pepa. Congo - Kigali. Rwanda	24
101450	N286	Cagayancillo - Puerto Princesa	15
101455	N963AS	Puerto Vallarta - San Francisco	88
101460	\N	Training	8
101465	N756HG	Ilianma. AK - Koliganek. AK	6
101470	N8079U	Sacramento. CA - Dayton. OH	3
101475	N668SW	Las Vegas - Burbank	142
101480	RA-88170	Moscow - Kiev	9
101485	C-FNTF	Points North Landing. SK - Ennadai Lake	2
101490	HP-1267APP	Panama City - Puerto Obaldia	10
101495	TM-12D-73	Sevilla - Herreira	\N
101500	RA-11302	Bangkok - Colombo	8
101505	D2-MAJ	Huambo - Luanda	33
101510	LV-ZSR	\N	1
101515	N220JC	Boca Raton - Fort Pierce	3
101520	RP-C3010	Manila - Davao	131
101525	P2-ISA	\N	4
101530	G-MURI	\N	5
101535	8R-GAC	\N	1
101540	N241H	Kahului - Hoolehua	6
101545	TR-LFK	Libreville - Moanda	10
101550	N16EJ	AtlantiCity - Wilkes-Barre	19
101555	F-OHZN	Davao - Manila	298
101560	G-SSWN	Paris - London	2
101565	VH-MZK	Adelaide - Whyalla	8
101570	G-524	Tamale - Accra	52
101575	G-BMBC	Ronaldsway - Liverpool	5
101580	PT-LGL	Cuiaba - Rondonopolis	4
101585	B-3479	Enshi - Wuhan	44
101590	88-1027	Training	5
101595	N912FJ	Tuxtla Gutierrez - Villahermosa	19
101600	HK-851P	Villavicencio - Mitu	19
101605	N201RH	Hinckley. IL - Louisburg. NC	3
101610	VT-EGD	Calcutta - Patna - Lucknow - New Delhi	58
101615	C-GNAK	Moncton - Montreal	2
101620	N54AA	\N	2
101625	N510TG	Sight seeing	7
101630	F-BTSC	Paris - New York City	109
101635	348	\N	13
101640	9N-ABP	Bajhang - Dhangadhi	25
101645	PT-HRD	Cubatao - Navegantes	6
101650	230	Santiago - Coihaique	14
101655	N27944 / N2225G	Lakehurst. NY - Patuxent River. MD	11
101660	\N	Kinshasa - Tshikapa	27
101665	C-GMPB	Teslin - Dease Lake	2
101670	N801MW	Dothan. AL - Hazelhurst. GA	3
101675	A4O-EK	Cairo - Manama	143
101680	N923BA	Sightseeing	9
101685	HP-1357AAP	San Jose  - La Fortuna - Tamarindo	10
101690	FAC1659	\N	7
101695	VH-SKC	Perth - 	8
101700	\N	Colombo - Kalmunai	14
101705	N220CS	Deadhorse - Nuiqsut	10
101710	N936ML	Mexico City - Reynosa - Matamoros	88
101715	CP-1721	Cashaschanes - Sumacal	6
101720	C-FSDZ	Kuglluktuk - Yellowknife	3
101725	N941FE	Bellingham - Eastsound-Orcas Island	1
101730	C-FTBZ	Test flight	3
101735	N8354N	St. Louis - New Madrid	3
101740	RDPL-34130	Vientiane - Sam Neua	17
101745	RA-74295	Moscow - Batumi	86
101750	9V-SPK	Taipei - Los Angeles	179
101755	D2-FDI	Saurimo - Luanda	44
101760	ER-AFA	\N	11
101765	N731AC	Fort Wayne. IN - Milwaukee. WI	1
101770	D2-FCG	Luanda - Namibe	57
101775	N14056	Miami. FL - Port au Prince	114
101780	EC-DQG	Malaga - Cordoba	2
101785	N616F	Skydiving	9
101790	N19454	\N	2
101795	YV-224C	Canaina - Ciudad Bolivar - Por La Mar	24
101800	N81PF	Broomfield. CO - Stillwater. OK	10
101805	HK-3932X	El Yopal - Mitu	6
101810	N318DH	Chicago - Beaver Island	6
101815	I-MOCO	Nurnberg - Rome. Italy	3
101820	PZ-TBP	Paramaribo - Jakobkondre	10
101825	G-BNMT	Edinburgh - Belfast	2
101830	PT-OET	\N	6
101835	HS-TDC	Bangkok - Chiang Mai.	5
101840	93-1336	Fort Walton Beach. Fl - Oceana Naval Air Station. VA	21
101845	RA-85619	Istanbul. Turky - Moscow. Russia	174
101850	S9-CAE	Luanda - Lubango	17
101855	F-OGES	St. Maarten - St. Barthélémy	19
101860	PK-MFL	Training	3
101865	N303GA	Los Angeles - Aspen	18
101870	N405PC	Green Bay - Ft. Myers. Fl	1
101875	\N	Adar Yeil - Khartoum	30
101880	VN-8415	Vinh - Dong Hoi - Hue	16
101885	LV-WSC	San Fernando - El Calafate	10
101890	\N	Diyarbakir - Ankara	34
101895	TC-76	Mendoza - Parana	5
101900	EP-TQP	Tehran - Gorgan	30
101905	RA-12135	Rzhevsk - Morsansk	7
101910	PK-VTP	Jayapura - Wamena	19
101915	RA-85845	Yekaterinburg - Irkutsk - Vladivostok	145
101920	HL9240	Jinhae - Ockpo	12
101925	YV-117CP	Puerto Cabello - Caracas	13
101930	RA-76588	Moscow - Norilsk	10
101935	N39586	Shagway. AK - Return	6
101940	D-CBNA	Reykjavík. Iceland - Narsarsua. Greenland	3
101945	N169PA	Grand Canyon NP - Las Vegas	7
101950	3C-LLA	Kama - Kapmene	11
101955	C-GITS	Toronto - Lisbon	304
101960	N153TW	Ithaca. NY - Jackson. MI	2
101965	N8097W	Abaco - Miami	9
101970	EC-FBC	Melilla - Málaga	47
101975	N591UA	Newark - San Francisco	44
101980	N644AA	Washington D.C. - Los Angeles	64
101985	N334AA	Boston - Los Angeles	92
101990	N612UA	Boston - Los Angeles	65
101995	XA-ACM	Chichen Itza - Cozumel	19
102000	PT-MRN	Recife  - Sao Paulo	82
102005	TG-CPE	Guatemala City - San Pedro Sula. Honduras	13
102010	N733SW	Decatur Island. WAAnacortez. WA	3
102015	RA-85693	Tel Aviv -  Novosibirsk. Russia	78
102020	SE-DMA / D-IEVX	Milan - Copenhagen / Milan - Paris	114
102025	C-GPUO	Iyachisakus Lake - Mollet Lake	7
102030	N9530F	Dillingham - King Salmon	10
102035	EC-GDV	Barcelona - Oran. Algeria	10
102040	C-GYPA	Gods Narrows - Shamattawa	3
102045	PT-EVF	Humiata - Altamira	6
102050	N400EH	Fire Island. AK - Anchorage. AK	5
102055	N14053	New York City - Santo Domingo. Dominican Rep.	260
102060	RA-75840	Khatanga - Moscow	27
102065	N5UJ	Pittsburgh. PA - Baca Raton. Fl	2
102070	ES-NOV	Tallinn - Kardla	17
102075	HB-IXM	Berlin - Zurich	33
102080	9G-MKI	Luxembourg - Port Harcourt	13
102085	HP-1405APP	San Jose - Quepos	8
102090	RA-76839	Moscow - Bratsk - Anadyr	18
102095	N499BA	Little Rock - Bessemer	2
102100	N997TD	Harlingen - El Paso	2
102105	5X-CNF	Bunia - Beni	6
102110	HK-4175X	Medellin - Quibdo	16
102115	HB-VLV	\N	2
102120	D-IAAI	Bremerhaven - Wangerooge	9
102125	N3525Y	\N	5
102130	N90AG	Birmingham. England - Bangor. MA	5
102135	160021	Jacobabad - Shamsi	7
102140	EC-GTJ	Madrid - Bilbao	3
102145	XC-FIT	Mexico City - Chilpancingo	17
102150	PK-GWA	Ampenan - Yogyakarta - Jakarta	62
102155	HC-AYM	Quito - Lago Agrio	26
102160	ZK-SEV	Te Anau  - Milford Sound	6
102165	T-304	\N	40
102170	HC-BLF	Quito -  Tulcán - Cali	92
102175	84-0097	Training	2
102180	EP-MBS	Tehran - Khorramabed	117
102185	ER-ADL	\N	10
102190	07RED	Sanofov - Lakhta	20
102195	92-0471	Basilan - Mactan Island	10
102200	LY-AVD	Budapest. Hungary - Tunis. Tunisia	3
102205	CU-T1020	Cienfuegos -- Cayo Coco	17
102210	N228PA	Minneapolis - Detroit	1
102215	J2-KBC	Mogadishu. Somalia - Djibouti	4
102220	VH-UJB	Cairns - Hicks Island	4
102225	EC-GKR	Madrid - Palma de Mallorca	2
102230	B-2552	Beijing - Busan	166
102235	VH-XGR	Mornington Island - Normanton	6
102240	HK-4171X	Medellín - Popayán	8
102245	N7344N	\N	6
102250	\N	\N	20
102255	5N-ESF	Abuja - Jos - Kano - Lagos	77
102260	SU-GBI	Cairo - Tunis	62
102265	B-2138	Beijing - Dalian	112
102270	9Q-CEX	Port Harcourt - Calabar	5
102275	B-18255	Taipei - Hong Kong	225
102280	PK-YPZ	Nabire - Enaotali	6
102285	ZS-OJU	Bloemfontein - George	3
102290	\N	Luanda - demobilization camp	25
102295	PT-EPH	\N	5
102300	C-GPOW	Winnipeg Manitoba	8
102305	84-0475	\N	10
102310	RA85816/A9C-DHL	Moscow-Munich-Barcelona / Bahrain/Brussels	71
102315	N8145M	\N	2
102320	9XR-IS	N'Djamena. Chad - Brazzaville. Congo	27
102325	N3129F	Lake Hood. AK - Iliamna. AK	4
102330	PK-TAR	Tarakan - Krayan	10
102335	G-BJVX	Gas platform Clipper - drilling rig Golbal Sante Fe Monach	11
102340	9N-AGF	Jumla - Surkhet	4
102345	42	\N	2
102350	RA-86060	Moscow - St. Petersburgh	16
102355	90-0161	Roosevelt Roads NS - Borinquen NGB	10
102360	CR-873	\N	5
102365	89RED	\N	147
102370	9N-AFR	Jomsom - Pokhara	18
102375	RA-28932	Khabarovsk - Ayan	16
102380	N45CP	Marco. Fl - Lexington. KY	5
102385	PT-WRQ	Cruzeiro do Sul - Tarauaca - Rio Branco	31
102390	B-7023	Survey	3
102395	C-FRKZ	Edmond. Alberta - High Prarie. Alberta	2
102400	OB-1226	\N	6
102405	PT-MTS	Guarulhos - Londrina	2
102410	C-FLGA	Lake de l'Avion - Agunish River	4
102415	IN302 / IN304	Military exercises	12
102420	N5027Q	\N	5
102425	N76U	Mobile - Mongomery	1
102430	N41BE	St. Paul - Eveleth	8
102435	LX-LGB	Berlin. Germany - Luxembourg	22
102440	PK-VIZ	Tarakan - Long Bawan	10
102445	N61RS	Las Vegas. NV - Taos. NM	2
102450	RP-C6888	Manila - Laoag	34
102455	5Y-ONT	Ol Kiombo - Mombasa	20
102460	N127YV	Wichita. KS - Mena. AR	3
102465	P2-CBB	Gohu - Madang	8
102470	 / 	\N	22
102475	N277PM	Decatur - Rockford	1
102480	B-22708	Taipei - Macau	2
102485	UR-14003	Kharkiv. Ukraine - Trabzon. Turkey - Isfanan. Iran	44
102490	N1122Y	Elizabeth City - Manteo	1
102495	FAB-2292	Sao Paulo - Porto Alegre	16
102500	9XR-RB	Moroni Hahaya - Anjouan	16
102505	TC-THG	Istanbul - Ankara - Diyarbakir	80
102510	N233YV	Charlotte. NC - Greer. SC	21
102515	OB-1396	Chiclayo - Chachapoyas	46
102520	ER-AFT	Brazzaville - Douala	7
102525	5Y-EMJ	Busia - Nairobi	13
102530	RDPL-34141	Macau - Baucau	6
102535	UR-LIP	Agadir - Algiers	8
102540	ES-NOY	Tallinn - Helsinki	3
102545	N421TJ	Griffith-Merrill. IN - Somerset. KY	7
102550	15-22	Zahedan - Kerman	275
102555	10254	Islamabad - Kohat	17
102560	FLARF-01032	Skydiving	25
102565	7T-VEZ	Tamanrasset - Algiers	103
102570	PK-WAY	Mulia - Wamena	16
102575	N1636W	Aurora. IL - Morris. MN	3
102580	UR-UCB	Kinshasa - Lubumbashi	200
102585	UR-42352	Kabul. Afghanistan - Trabzon. Turkey - Zaragoza. Spain	75
102590	N70176	\N	4
102595	I-ERJC	Milan - Genoa - Farnborough	2
102600	PT-EPH	Oiapoque - Macapa	5
102605	ZK-NCA	Palmerston North - Christchurch	10
102610	PT-EHH	\N	4
102615	N4493M	Sightseeing	4
102620	F-GRJS	Nantes - Brest	24
102625	\N	\N	7
102630	N91303	Hallo Bay. AK - Homer. AK	3
102635	V5-CAS	\N	4
102640	7T-WHQ	Training	4
102645	PT-LFX	\N	4
102650	PT-YVM	\N	5
102655	ST-AFK	Port Sudan - Khartoum	117
102660	N314AB	Ft. Lauderdale. FL - Treasure Cay	10
102665	YV-1060CP	La Carlota - San Cristobal	10
102670	ZS-OYI	Nairobi - Samburu National Park	14
102675	N37741	Sightseeing	5
102680	N135PT	Farmingdale - Groton	2
102685	YV-1069C	Porlamar - Canaima	16
102690	\N	Kamchatka - Kuril Islands	20
102695	HH-TAD	Cap Haitien - Port au Paix	21
102700	N240CJ	\N	2
102705	C-FKAB	Pickle Lake - Summer Beaver	8
102710	N666TW	El Paso - Del Rio	2
102715	3603	Mexicali - Santa Lucia	6
102720	N270SH	Sightseeing	7
102725	C-FARL	Gaspé - Îles-de-la-Madeleine	3
102730	PT-EBK	Sao Gabriel de Cachoeria - Yauarete	4
102735	ZK-KFU	Christchurch - Palmerston North	2
102740	YV-1128C	\N	2
102745	LV-MGV	\N	5
102750	XA-ISH	Tampico - Las Potrancas Ranch Airstrip	3
102755	N791FE	Casper - Cody	1
102760	\N	Fallujah - Baghdad	36
102765	8R-GMC	Ogle. Guyana - Ekereku. Guyana	7
102770	VH-YKL	\N	4
102775	N439AF	Seattle - Spokane	1
102780	9T-TAD	Boende. Congo - Kinshasa. Congo	24
102785	C-GOFF	\N	3
102790	HK-4246X	El Yopal - Mitu	3
102795	N600XJ	Chino.CA - Sun Valley. ID	2
102800	3X-GDO	Conakry. Guinea - Cotonou. Benin - Beirut. Lebanon	161
102805	SU-ZCF	Sharm el Sheikh. Egypt - Cairo. Egypt	148
102810	UK-87985	Termez - Tashkent	37
102815	C-FAGA	Pelee Island. Ontario - Windsor. Ontario	10
102820	7T-VIN	Hassi R'Mel - Ghardaïa	5
102825	Z3-BAB	Skopje - Mostar	9
102830	EP-LCA	Kish Island - Sharjah	46
102835	OE-FAN	Rome - Cagliari	6
102840	VH-RPI	Trefoil Island - Smithton	4
102845	UR-ZVA	Ankara - Baku - Kabul	7
102850	165938	Training	4
102855	N4826C	San Juan - Saint Martten	2
102860	N27RA	\N	5
102865	VH-MAR	Hamilton Island - Lindeman Island	6
102870	N502MT	Odessa. TX - Lubbock. TX	5
102875	XC-JEH	Ciudad Juarez - Mexico City	7
102880	YV-O-CBL-7	Ciudad Bolívar - Uonquén	7
102885	HK-4275	Bogota - Carepa	7
102890	9XR-DC	Jiech - Ayod	10
102895	ST-SIG	Khartoum - Juba - El Obeid	7
102900	PT-WRO	Sao Paulo - Tefe - Manaus	33
102905	UN-70276	Kyzyl-Orda - Bozoy - Vozrozhdenya Island	12
102910	4K-AZ27	Taiyuan - Urumqi - Baku	7
102915	5Y-VVD	Nairobi - Mogadiscio	2
102920	9N-AFD	Katmandou - Lukla	3
102925	TR-LFW	Libreville - Franceville	30
102930	PT-EHH	Belo Horizxonte - Juiz de For a	4
102935	RA-27113	Freetown - Kailahun	24
102940	N280AT	Panama City. Panama  - Washington DC	6
102945	N45032	Waterbury.CN  - Oxford. CN	2
102950	PP-MYM	Campos. Brazil  -  Off-shore oil rig	11
102955	P2-MBA	Port Moresby - Ononge	3
102960	N586P	Memphis - Cincinnati	2
102965	N199GL	Billings - Kalispell	2
102970	5Y-TWH	Goma - Walikale	3
102975	FAV-1652	La Orchila Air Base - Maracay	25
102980	RA-85556	Moscow - Sochi	46
102985	RA-65080	Moscow - Volograd	41
102990	N197TT	Kenai - McGrath - Kotzebue	3
102995	XA-TFD	Mexico City - Villahermosa	2
103000	\N	Athens - Mount Athos	17
103005	N902GD	Mayaguez - San Juan	1
103010	ST-SAF	El Obeid - Juba	4
103015	N85VT	Dallas - Houston	3
103020	N960BW	Bagram - Farah. Afghanstan	6
103025	N8396A	Little Rock - Minneapolis	2
103030	9G-MKJ	Windsor Locks - Halifax - Zaragoza. Spain	7
103035	HK-1503	Villavicencio - Medellin	3
103040	RP-C1325	Coron Island - Manila	2
103045	N875JX	St. Louis. MO - Kirkville. MO	15
103050	N501RH	Concord. NC - Martinsville. VA	10
103055	N30DK	San Diego. CA - Albuquerque. NM	5
103060	YV-1083C	El Vigia - Caracas	21
103065	B-3072	Baotou - Shanghai	53
103070	N873G	Montrose. CO - South Bend. IN	6
103075	PK-LMN	Jakarta. Indonesia - Solo. Indonesia	154
103080	N604GA	Saint Louis - Toledo	2
103085	N25SA	Salt Lake City. UT - Sun Valley. ID	2
103090	HK-2882	\N	6
103095	GN-97121	Puerto Ayacucho - La Carlota	16
103100	PT-WAK	Sao Paulo - Uberaba	2
103105	ER-IBW	Baku - Kabul	7
103110	\N	\N	20
103115	RA-62597	Vanavara - Tura	9
103120	N49BA	Bangor. ME - Concord. NH	1
103125	\N	Ferrying troops	31
103130	HA-LAR	Bucharest -Lasi	2
103135	XV179	Bagdad - Balad	10
103140	EX-037	Herat - Kabul	104
103145	ST-EWB	Sharjah - Khartoum - Nyala	7
103150	N432AR	Fresno. CA - Santa Monica. CA	2
103155	N500AT	Richmond. VA - Saint Louis. MO  - Pueblo.CO - Irvine. CA	8
103160	P2-MFQ	Tabubil - Bimin	13
103165	\N	Jayapura - Sarmi	18
103170	YV-21CP	Maturin - Charallave	2
103175	G-BOMG	Glasgow - Campbeltown	2
103180	RA-46489	Ufa - Usinsk - Perm - Varandey - Naryan Mar	52
103185	ER-IBR	Mwanza - Khartoum - Zagreb	8
103190	HK-4146	Old Providence - San Andres	14
103195	87-0127	Training	9
103200	PK-LTZ	Timika - Enarotali	18
103205	EP-SHE	Krish - Teran	169
103210	EP-830	Training	13
103215	ZK-POA	Auckland - Blenheim	2
103220	EK-26060	Bangboka - Isiro	11
103225	VH-TFU	Bamaga - Lockhart River	15
103230	CC-CFS	Balmaceda. Argentina - Chile Chiro. Chile	10
103235	AF-216	Lusaka - Livingstone - Mongu - Lusaka	13
103240	9Q-CVG	Goma - Kindu - Kongolo	27
103245	ST-WAL	Kartoom - El Obeid - El Fasher	42
103250	3C-VQR	Malabala. Bioko Island - Bata	60
103255	F-GLZQ	Paris. France - Toronto Canada	309
103260	TS-LBB	Bari. Italy - Djerba. Tunisia	39
103265	OH-HCI	Talinn. Estonia - Helsinki. Finland	14
103270	5B-DBY	Larnaca. Cyprus - Athens. Greece - Prague. Czech Republic	121
103275	HK-4374X	Panama City - Fort de France. Martinique	160
103280	OB-1809	Lima - Pucallpa - Iquitos	98
103285	ER-AZT	Beni - Isiro	11
103290	PK-RIM	Medan - Jakarta	117
103295	9Q-CFD	Boende - Kinshasa	14
103300	PT-WLX	Rio de Janeiro - Jacarepagua	2
103305	YV-412C	San Juan de Manapiare - Puetro Ayacucho	4
103310	N355NT	Sightseeing	6
103315	9Q-CWC	Kisangani - Bunia	100
103320	C-FEXS	Winnipeg - Thunder Bay. Ontario	1
103325	5N-BFN	Lagos - Abuja	117
103330	4P-OIN	Voronezh - Moscow-Domodedovo	8
103335	41030	Tehran - Bandar Abbas	94
103340	N471WN	Baltimore. Maryland - Chicago. Illinois - Las Vegas. Nevada	103
103345	5NBFD	Abuja - Port Harcourt	109
103350	N2969	Miami. Florida - Bimini. Bahamas	20
103355	4K-AZ48	Baku. Azerbaijan - Aktau. Kazakhstan	23
103360	PK-YPY	Mulia - Ilaga	12
103365	N781RS	Twin Falls - Truckee - Carlsbad - Monterrey	2
103370	P4-AOD	Moscow - Karkov	3
103375	9Q-CIH	Entebbe - Kinshasa	6
103380	15-2233	Tehran - Orumiyeh	11
103385	5605	Pristina - Kosice	43
103390	C-GRXZ	Tofino - Vancouver	8
103395	N3735W/N372AC	\N	3
103400	N629EK	Dayton. Ohio -	1
103405	EC-JAX	Madrid - Pamplona	6
103410	T-21	La Paz - Sana Cruz	6
103415	N54RP	Helena - Butte	2
103420	HC-BXD	Cuenca - Macas	14
103425	PT-FSE	Macaé - Rio de Janeiro	19
103430	132	Nairobi - Eastleigh AFB	17
103435	UR-74038	Sebha - N'Djamena	6
103440	RF-30451	\N	5
103445	ZS-PDV	Kabul - Kandahar - Lashkar Gah	16
103450	ZS-ADL	Goma - Bunia. DCR	3
103455	EK-32009	Yerevan. Armenia - Sochi. Russia	113
103460	C-GSKJ	Training	3
103465	S9-BAL	Training	4
103470	N182K	AtlantiCity. NJ - Groton. CT	5
103475	\N	\N	40
103480	N5136X	Coeur d'Alene. ID - Missoula. MT	2
103485	TT-PAF	N'djamena - Abéché	7
103490	9N-AEQ	Surkhet - Jumla	9
103495	ZS-POG	Polokwane - Vilanculos	3
103500	D-FVIP	Sightseeing	6
103505	9Q-CVT	Goma - Kisangani	5
103510	F-OGYP	Moscow - Irkutsk	203
103515	AP-BAL	Multan - Lahore	45
103520	9Q-COM	Lugushwa - Bukavu	17
103525	HK-3667X	Bogota - Leticia	5
103530	N59BA	Binghamton. NY - Benningham. VT	1
103535	7T-VHG	Algiers. Algeria - Frankfurt. Germany	3
103540	RA-851857	Anapa - St. Petersburg	170
103545	N431CA	Lexington. KY - Atlanta. GA	50
103550	EP-MCF	Bandar Abbas - Mashad	148
103555	XV-230	\N	14
103560	\N	Gizel - Khankala	15
103565	NAF033	Abuja - Obudu	18
103570	PR-GTD / N600XL	Manaus - Brasilia	161
103575	OY-CRG	Stavanger - Stord	16
103580	UK-70152	Training/Aranchi	15
103585	5N-BFK	Lagos - Abuja - Sokoto	105
103590	15-2255	Tehran - Shiraz	38
103595	N410MA	Loma Linda - Victorville	3
103600	N8361Q	Port Heiden - King Salmon	2
103605	5H-TZA 	Mbeya - Dar es Salaam	6
103610	PK-KKW	Surabaya. East Java - Manado. Indonesia	102
103615	5H-MUX	Dar es Salaam - Matabwe	10
103620	ER-26068	Adana. Turkey - Balad Air Base. Iraq	35
103625	N444TW	Laredo. TX - Guadalajara. Mexico	2
103630	N77215	Van Nuys - Long Beach	2
103635	\N	\N	12
103640	F-GMPG 	Pau - Paris	54
103645	VQ-TIU	North Caicos - Grand Turk	6
103650	N45MF	Great Falls - Bozeman	3
103655	PK-GZC	Jakarta - Yogyakarta	140
103660	N354NT	Sightseeing	7
103665	N911VC	\N	5
103670	PP-SEC	Petrolina - Salvador	4
103675	RA-65021	Surgut - Samara	57
103680	EW-78849 	Mogadishu - Djibouti	11
103685	8R-GET	Kato - Kopinang	5
103690	\N	\N	18
103695	5Y-KYA	Abidjan. Ivory Coast - Douala. Cameroon - Nairobi. Kenya	114
103700	742/CB	El-Gora - Santa Katarina	9
103705	TN-AHE	Walikale - Goma	3
103710	FAP-303	Iquitos - Pucallpa	20
103715	\N	Shuttle	22
103720	N550BP	Milwaukee. WI - Detroit. MI	6
103725	\N	\N	22
103730	\N	Lilongwe to Rumchi	6
103735	9Q-CEU	Kamina - Lubumbashi	25
103740	XU-U4A	Siem Reap - Sihanoukville	22
103745	D2-TBP	Luanda - M'Banza	78
103750	XA-TFL	\N	3
103755	N208EC	Inishmaan - Connemara	9
103760	C-FAWC	Muncho Lake - Vancouver	5
103765	PR-MBK	Porto Alegre - Sao Paulo	187
103770	EX-030	Dire Dawa - Djibouti	9
103775	N995WA	Sightseeing	5
103780	RA-93912	Sightseeing	9
103785	N369CD	Ruidoso - Albuquerque	5
103790	F-OIQ	Moorea - Papeete	20
103795	N345KA	Sightseeing	10
103800	\N	Transporting troops	14
103805	PT-SDB	Curitiba - Jundiai	2
103810	9Q-CAC	Kongolo - Goma	15
103815	4L-SAS	Kisangi - Goma - Bukavu	8
103820	\N	Bosnia - Skopje. Macedonia	11
103825	HS-OMG	Bangkok - Phuket	130
103830	9Q-CVL	Lubumbashi - Malemba Nkulu	6
103835	9Q-COS	Kinshasa - Tshikapa	22
103840	N590GM	\N	3
103845	N430A	Star. ID - Shelton. WA	10
103850	HK-4055	Villavicencio - Uribe	18
103855	PT-OVC	Sao Paulo - Rio de Janeiro	2
103860	ST-JUA	Khartoum - Juba	4
103865	TC-AKM	Istanbul - Isparta	57
103870	N141LG	Cordova - Ancorage	4
103875	N28MG	Columbus. OH - Buffalo. NY	2
103880	D-IBDH	HradeKrálové - Kiev	5
103885	YV2081	Los Rogues - Carac	18
103890	N509FN	Kodiak - Homer	10
103895	N410UB 	Lihu - Kauai	1
103900	G-YMMM	Bejing. China - London. England	152
103905	D2-FFK	Luanda. Angola - Huambo. Angola	13
103910	19	Warsaw - Miroslawiec	20
103915	PK-VSE 	Tarakan - Long Apung	3
103920	YV-1449	Merida - Caracas	46
103925	PP-MUM	Oil Rig P18 - Macae	20
103930	\N	\N	10
103935	5N-JAH	Lagos - Bebi Air Strip	3
103940	PZ-TSO	Paramaribo - Lawa	19
103945	VH-OZA	Sydney - Brisbane	1
103950	ST-AZL	Chrisinau. Moldova - Antalya. Turkey - Sudan	8
103955	9Q-CHN	Goma - Kisangani - Kinshasa	85
103960	3C-5GE	Bata - Annobon Island	13
103965	UR-24275	\N	20
103970	5Y-FLX	Wau - Rumbek - Juba	24
103975	N5998Q	Chelan - Stehekin	5
103980	N195GA	Billings - Great Falls	1
103985	N67GE	Long Beach - Two Harbors	6
103990	RA-12957	Chelyabinsk - Perm	9
103995	SAN-100	Tocumen - Colon	12
104000	EI-TAF	San Salvador. El Salvador - Tegucigalpa. Honduras - Miami	136
104005	CC-CTR	Puerto Montt - La Junta	10
104010	N416PH	Huntsville-Houston	4
104015	ST-ATN	Aman. Jordan - Damascus. Syria - Khartoum. Sudan	214
104020	N656WA	Hyannis - Nantucket	1
104025	\N	\N	10
104030	A-2106	Jakarta - aerial survelliance	18
104035	ST-ARN	Khartoum - Juba	8
104040	N407GA / N407MJ	Medical flight	7
104045	ST-WTB	Khartoum - Juba	4
104050	N199US	Hamilton. Ont. Can.- Shreveport. LA - Saltillo. Mexico	2
104055	N714CK	Bogota. Colombia - Miami. FL	8
104060	CC-CFM	Puerto Montt - Melinka Island	9
104065	N818MV	AtlantiCity. NJ- Owatonna.MN	8
104070	C-GPCD	Port Hardy - Chamiss Bay. Vancouver Island	7
104075	N612AZ	Ferrying fire fighters	13
104080	\N	Betong - 	10
104085	5Y-BVF	Kenya - Somalia	3
104090	EC-HFP 	Madrid - Las Palmas. Canary Islands	172
104095	TG-JCS 	Guatemala City - El Estor	14
104100	EX-009	Bishkek - Tehran. Iran	90
104105	YV-102T	Caracas - Latacunga	3
104110	ZS-OLD	Kisangani - Bukavu - Goma	17
104115	N587X	Colombus - Mansfield	3
104120	A6-AVL	\N	7
104125	VP-BKO	Moscow - Perm	88
104130	N999LJ	Colombia. SC - Los Angeles. CA	6
104135	N92MD	Medical evacuation flight	5
104140	9N-AFE 	Katmandu - Lukla	19
104145	N992AA	Sandwich - Chicago	4
104150	XC-VMC	San Luis Potosi - Mexico City	8
104155	5Y-AOO	Kampi ya Kanzi Airstrip - Loitokitok	5
104160	S9-SAO	al-Asad air base - Baghdad	7
104165	C-FPCK	Vancouver - Powell River - Toba Inlet	8
104170	D-AXLA	Training	7
104175	N318WA 	Tortola Virgin Islands - San Juan. PR	3
104180	N180AL	Sabine Pass - Oil Platform	3
104185	N650LP	Santiago. Dominican Republi- Providenciales	12
104190	N748P	Bayou Penchant - Off shore oil fields	9
104195	N106US	New York. NY- Charlotte. NC	155
104200	PT-SEA	Coari - Manus	28
104205	I-FEEV	Rome - Bologna	2
104210	N200WQ	Newark. N.J. - Buffalo. NY	49
104215	\N	\N	13
104220	S9-SVN	Entebbe. Uganda - Luxor. Egypt - Niklaev. Ukraine	5
104225	TC-JGE	Istanbul. Turkey - Amsterdam. Netherlands	134
104230	S9-SAB	Entebbe. Uganda - Mogadishu. Somalia	11
104235	C-GZCH	St. Johns - Hibernia platform	18
104240	N128CM	Oroville. CA - Butte. MT	14
104245	N526FE	Guangzhou. China - Tokyo. Japan	2
104250	\N	Miller field - Aberdeen	16
104255	A-2703	Militiary training	24
104260	PK-BRD	Jayapura - Wamena	6
104265	PK-LTJ	Ilaga - Mulia	11
104270	YV-1181	Canaima - Porlamar	11
104275	TL-ADM 	Bangui. CAR- Brazzaville. Congo - Harare. Zimbabwe	7
104280	EV08114 	Patrol	18
104285	A-1325	Jakarta - Maduin	112
104290	9Q-CSA	Goma - Isiro	4
104295	F-GZCP	Rio de Janeiro - Paris	228
104300	C-FJJR 	Lourdes de BlanSablon - Port Hope Simpson	1
104305	\N	Mechuka for Jorhat	13
\.


--
-- TOC entry 2857 (class 0 OID 0)
-- Dependencies: 210
-- Name: multiplo_2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.multiplo_2', 10536, true);


--
-- TOC entry 2858 (class 0 OID 0)
-- Dependencies: 208
-- Name: multiplo_3; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.multiplo_3', 15804, true);


--
-- TOC entry 2859 (class 0 OID 0)
-- Dependencies: 205
-- Name: multiplo_4; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.multiplo_4', 20868, true);


--
-- TOC entry 2860 (class 0 OID 0)
-- Dependencies: 204
-- Name: multiplo_5; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.multiplo_5', 104305, true);


--
-- TOC entry 2861 (class 0 OID 0)
-- Dependencies: 202
-- Name: multiplo_6; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.multiplo_6', 14862, true);


-- Completed on 2022-11-15 08:48:59

--
-- PostgreSQL database dump complete
--

