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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    potential_planets integer NOT NULL,
    description text,
    best_seen_month text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    discovered_date date,
    discovered_by text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    name character varying(30) NOT NULL,
    planet_types character varying(20) NOT NULL,
    star_id integer,
    numbers_of_moon integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    distance_from_earth_in_lightyears numeric,
    brightest_rank integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: zodiac; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.zodiac (
    name character varying(20) NOT NULL,
    zodiac_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.zodiac OWNER TO freecodecamp;

--
-- Name: zodiac_zodiac_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.zodiac_zodiac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zodiac_zodiac_id_seq OWNER TO freecodecamp;

--
-- Name: zodiac_zodiac_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.zodiac_zodiac_id_seq OWNED BY public.zodiac.zodiac_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: zodiac zodiac_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac ALTER COLUMN zodiac_id SET DEFAULT nextval('public.zodiac_zodiac_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Solar System', 8, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Alpha Centauri', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Ophiuchus', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Ursa Major', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Virgo', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Canis Major', 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Cetus', 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Aquarius', 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Leo', 2, NULL, 'April');
INSERT INTO public.galaxy VALUES (8, 'Sagittarius', 0, 'Located at the center of Milky Way Galaxy', 'August');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, '1892-09-09', 'Edward Emerson Barnard');
INSERT INTO public.moon VALUES (19, 'Adrastea', 5, '1979-07-01', 'Voyager science team');
INSERT INTO public.moon VALUES (17, 'Ananke', 5, '1951-09-28', 'Seth Barnes Nicholson');
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 5, '1999-10-19', 'Jim V. Scotti and more');
INSERT INTO public.moon VALUES (5, 'Callisto', 5, '1610-01-07', 'Galileo Galilei');
INSERT INTO public.moon VALUES (14, 'Carme', 5, '1938-07-30', 'Seth Barnes Nicholson');
INSERT INTO public.moon VALUES (7, 'Europa', 5, '1610-01-08', 'Galileo Galilei');
INSERT INTO public.moon VALUES (11, 'Elara', 5, '1905-01-05', 'Charles Dillon Perrine');
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, '1610-01-08', 'Galileo Galilei');
INSERT INTO public.moon VALUES (9, 'Himalia', 5, '1904-12-03', 'Charles Dillion');
INSERT INTO public.moon VALUES (6, 'Io', 5, '1610-01-08', 'Galileo Galilei');
INSERT INTO public.moon VALUES (18, 'Leda', 5, '1974-09-14', 'Charles Thomas Kowal');
INSERT INTO public.moon VALUES (16, 'Lysithea', 5, '1938-07-06', 'Seth Barnes Nicholson');
INSERT INTO public.moon VALUES (13, 'Metis', 5, '1979-03-01', 'Voyager science team');
INSERT INTO public.moon VALUES (12, 'Pasephae', 5, '1908-01-27', 'Philibert Jacques Melotte');
INSERT INTO public.moon VALUES (22, 'Praxidike', 5, '2000-11-23', 'Scott S. Sheppard and more');
INSERT INTO public.moon VALUES (15, 'Sinope', 5, '1914-07-21', 'Seth Barnes Nicholson');
INSERT INTO public.moon VALUES (10, 'Thebe', 5, '1980-01-01', 'Voyager science team');
INSERT INTO public.moon VALUES (21, 'Themisto', 5, '1975-09-30', 'Charles Thomas Kowal');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, true, false, 'Mercury', 'Rocky', 1, NULL);
INSERT INTO public.planet VALUES (3, true, false, 'Venus', 'Rocky', 1, NULL);
INSERT INTO public.planet VALUES (39, false, false, 'Proxima Centauri b', 'Rocky', 2, NULL);
INSERT INTO public.planet VALUES (40, false, false, 'Barnards Star b', 'Rocky', 3, NULL);
INSERT INTO public.planet VALUES (41, false, false, 'Lalande 21185 b', 'Rocky', 5, NULL);
INSERT INTO public.planet VALUES (42, false, false, 'Ross 128 b', 'Rocky', 9, NULL);
INSERT INTO public.planet VALUES (1, false, true, 'Earth', 'Rocky', 1, 1);
INSERT INTO public.planet VALUES (4, false, false, 'Mars', 'Rocky', 1, 2);
INSERT INTO public.planet VALUES (5, false, false, 'Jupiter', 'Gas', 1, 80);
INSERT INTO public.planet VALUES (6, false, false, 'Saturn', 'Gas', 1, 83);
INSERT INTO public.planet VALUES (7, false, false, 'Uranus', 'Gas', 1, 27);
INSERT INTO public.planet VALUES (8, false, false, 'Neptune', 'Gas', 1, 14);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Proxima Centauri', 2, 4.244, NULL);
INSERT INTO public.star VALUES (3, 'Bernard', 3, 5.957, NULL);
INSERT INTO public.star VALUES (4, 'Wolf 359', 4, 7.856, NULL);
INSERT INTO public.star VALUES (5, 'Lalande 21185', 5, 8.307, NULL);
INSERT INTO public.star VALUES (7, 'Luyen 726-8A', 7, 8.791, NULL);
INSERT INTO public.star VALUES (8, 'Ross 154', 8, 9.7035, NULL);
INSERT INTO public.star VALUES (9, 'Ross 128', 9, 11, NULL);
INSERT INTO public.star VALUES (10, 'EZ Aquarii A', 10, 11.1, NULL);
INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, 1);
INSERT INTO public.star VALUES (6, 'Sirius A', 6, 8.659, 2);
INSERT INTO public.star VALUES (12, 'Rigil Kentaurus', 2, 4.4, 4);
INSERT INTO public.star VALUES (11, 'Procyon', 6, 11, 9);


--
-- Data for Name: zodiac; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.zodiac VALUES ('Aries', 1, NULL);
INSERT INTO public.zodiac VALUES ('Taurus', 2, NULL);
INSERT INTO public.zodiac VALUES ('Gemini', 3, NULL);
INSERT INTO public.zodiac VALUES ('Cancer', 4, NULL);
INSERT INTO public.zodiac VALUES ('Leo', 5, NULL);
INSERT INTO public.zodiac VALUES ('Virgo', 6, NULL);
INSERT INTO public.zodiac VALUES ('Libra', 7, NULL);
INSERT INTO public.zodiac VALUES ('Scorpio', 8, NULL);
INSERT INTO public.zodiac VALUES ('Sagittarius', 9, NULL);
INSERT INTO public.zodiac VALUES ('Capricorn', 10, NULL);
INSERT INTO public.zodiac VALUES ('Aquarius', 11, NULL);
INSERT INTO public.zodiac VALUES ('Pisces', 12, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 42, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: zodiac_zodiac_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.zodiac_zodiac_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: zodiac zodiac_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac
    ADD CONSTRAINT zodiac_name_key UNIQUE (name);


--
-- Name: zodiac zodiac_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac
    ADD CONSTRAINT zodiac_pkey PRIMARY KEY (zodiac_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

