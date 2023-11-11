--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    name character varying(40) NOT NULL,
    description text,
    column3 character varying(40),
    column4 integer,
    column5 integer
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
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    planet_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    star_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    column5 character varying(40)
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: stats; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stats (
    stats_id integer NOT NULL,
    planet_id integer NOT NULL,
    gdp numeric,
    population numeric,
    name character varying(40),
    number_of_moons integer,
    number_of_continents integer
);


ALTER TABLE public.stats OWNER TO freecodecamp;

--
-- Name: stats_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stats_stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stats_stats_id_seq OWNER TO freecodecamp;

--
-- Name: stats_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stats_stats_id_seq OWNED BY public.stats.stats_id;


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
-- Name: stats stats_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stats ALTER COLUMN stats_id SET DEFAULT nextval('public.stats_stats_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Another galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Fourth galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Penultimate galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Last galaxy', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, true, true, 1);
INSERT INTO public.moon VALUES (2, 'Europa', NULL, true, true, 1);
INSERT INTO public.moon VALUES (3, 'Phobos', NULL, true, true, 2);
INSERT INTO public.moon VALUES (4, 'Deimos', NULL, true, true, 2);
INSERT INTO public.moon VALUES (5, 'Andromeda Moon 1', NULL, true, false, 3);
INSERT INTO public.moon VALUES (6, 'Andromeda Moon 2', NULL, true, false, 3);
INSERT INTO public.moon VALUES (7, 'Andromeda Moon 3', NULL, true, false, 4);
INSERT INTO public.moon VALUES (8, 'Andromeda Moon 4', NULL, true, false, 4);
INSERT INTO public.moon VALUES (9, 'Triangulum Moon 1', NULL, true, false, 5);
INSERT INTO public.moon VALUES (10, 'Triangulum Moon 2', NULL, true, false, 5);
INSERT INTO public.moon VALUES (12, 'Triangulum Moon 4', NULL, true, false, 6);
INSERT INTO public.moon VALUES (11, 'Triangulum Moon 3', NULL, true, false, 6);
INSERT INTO public.moon VALUES (13, 'Centaurus Moon 1', NULL, true, false, 7);
INSERT INTO public.moon VALUES (14, 'Centaurus Moon 2', NULL, true, false, 7);
INSERT INTO public.moon VALUES (15, 'Centaurus Moon 3', NULL, true, false, 8);
INSERT INTO public.moon VALUES (16, 'Centaurus Moon 4', NULL, true, false, 8);
INSERT INTO public.moon VALUES (17, 'Whirlpool Moon 1', NULL, true, false, 9);
INSERT INTO public.moon VALUES (18, 'Whirlpool Moon 2', NULL, true, false, 9);
INSERT INTO public.moon VALUES (19, 'Whirlpool Moon 3', NULL, true, false, 10);
INSERT INTO public.moon VALUES (20, 'Whirlpool Moon 4', NULL, true, false, 10);
INSERT INTO public.moon VALUES (21, 'Sombrero Moon 1', NULL, true, false, 11);
INSERT INTO public.moon VALUES (22, 'Sombrero Moon 2', NULL, true, false, 11);
INSERT INTO public.moon VALUES (23, 'Sombrero Moon 3', NULL, true, false, 12);
INSERT INTO public.moon VALUES (24, 'Sombrero Moon 4', NULL, true, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Our home', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Home of the Martians', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Andromeda Prime', NULL, true, false, 2);
INSERT INTO public.planet VALUES (4, 'Andromeda Secundus', NULL, true, false, 2);
INSERT INTO public.planet VALUES (5, 'Triangulum Prime', NULL, true, false, 3);
INSERT INTO public.planet VALUES (6, 'Triangulum Secundus', NULL, true, true, 3);
INSERT INTO public.planet VALUES (7, 'Centaurus A Prime', NULL, true, true, 4);
INSERT INTO public.planet VALUES (8, 'Centaurus A Secundus', NULL, false, false, 4);
INSERT INTO public.planet VALUES (9, 'Whirlpool Prime', NULL, true, false, 5);
INSERT INTO public.planet VALUES (10, 'Whirlpool Secundus', NULL, true, false, 5);
INSERT INTO public.planet VALUES (11, 'Sombrero Prime', NULL, true, false, 6);
INSERT INTO public.planet VALUES (12, 'Sombrero Secundus', NULL, true, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our star', 1, NULL);
INSERT INTO public.star VALUES (2, 'Andromeda Central Star', 'Another star', 2, NULL);
INSERT INTO public.star VALUES (4, 'Centaurus A Prime', 'Fourth star', 4, NULL);
INSERT INTO public.star VALUES (3, 'Triangulum Star', 'Third star', 3, NULL);
INSERT INTO public.star VALUES (5, 'Whirlpool Star', 'Penultimate star', 5, NULL);
INSERT INTO public.star VALUES (6, 'Sombrero Star', 'Last star', 6, NULL);


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.stats VALUES (1, 1, 30250.56, 8000000000, NULL, NULL, NULL);
INSERT INTO public.stats VALUES (2, 2, 65234.89, 1000000000, NULL, NULL, NULL);
INSERT INTO public.stats VALUES (3, 3, 75000.6, 70000000, NULL, 2, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: stats_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stats_stats_id_seq', 3, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: stats stats_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT stats_pkey PRIMARY KEY (stats_id);


--
-- Name: stats stats_stats_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT stats_stats_id_key UNIQUE (stats_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- Name: stats stats_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT stats_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

