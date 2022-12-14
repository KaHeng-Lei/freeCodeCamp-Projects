--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users_info (
    user_id integer NOT NULL,
    user_name character varying(22) NOT NULL,
    best_game integer,
    games_played integer
);


ALTER TABLE public.users_info OWNER TO freecodecamp;

--
-- Name: users_info_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_info_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_info_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_info_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_info_user_id_seq OWNED BY public.users_info.user_id;


--
-- Name: users_info user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users_info ALTER COLUMN user_id SET DEFAULT nextval('public.users_info_user_id_seq'::regclass);


--
-- Data for Name: users_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users_info VALUES (15, 'user_1671007223236', 443, 2);
INSERT INTO public.users_info VALUES (14, 'user_1671007223237', 272, 5);
INSERT INTO public.users_info VALUES (27, 'user_1671007970475', 26, 2);
INSERT INTO public.users_info VALUES (26, 'user_1671007970476', 211, 5);
INSERT INTO public.users_info VALUES (17, 'user_1671007307222', 9, 2);
INSERT INTO public.users_info VALUES (16, 'user_1671007307223', 133, 5);
INSERT INTO public.users_info VALUES (29, 'user_1671008198492', 189, 2);
INSERT INTO public.users_info VALUES (28, 'user_1671008198493', 36, 5);
INSERT INTO public.users_info VALUES (18, 'otis lei', 1, 4);
INSERT INTO public.users_info VALUES (20, 'user_1671007341296', 241, 2);
INSERT INTO public.users_info VALUES (19, 'user_1671007341297', 56, 5);
INSERT INTO public.users_info VALUES (21, 'Anna Chen', 1, 1);
INSERT INTO public.users_info VALUES (31, 'user_1671008241084', 265, 2);
INSERT INTO public.users_info VALUES (23, 'user_1671007520900', 322, 2);
INSERT INTO public.users_info VALUES (22, 'user_1671007520901', 557, 5);
INSERT INTO public.users_info VALUES (30, 'user_1671008241085', 152, 5);
INSERT INTO public.users_info VALUES (13, 'jenny chen', 1, 4);
INSERT INTO public.users_info VALUES (25, 'user_1671007557371', 595, 2);
INSERT INTO public.users_info VALUES (24, 'user_1671007557372', 3, 5);
INSERT INTO public.users_info VALUES (33, 'user_1671008295452', 463, 2);
INSERT INTO public.users_info VALUES (32, 'user_1671008295453', 95, 5);
INSERT INTO public.users_info VALUES (35, 'user_1671008376241', 118, 2);
INSERT INTO public.users_info VALUES (34, 'user_1671008376242', 70, 5);


--
-- Name: users_info_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_info_user_id_seq', 35, true);


--
-- Name: users_info users_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users_info
    ADD CONSTRAINT users_info_pkey PRIMARY KEY (user_id);


--
-- Name: users_info users_info_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users_info
    ADD CONSTRAINT users_info_user_name_key UNIQUE (user_name);


--
-- PostgreSQL database dump complete
--

