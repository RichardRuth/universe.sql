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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    is_spherical boolean,
    is_pretty boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    diamter numeric(4,1),
    planet_id integer,
    is_pretty boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    roman_name text,
    star_id integer,
    is_pretty boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    galaxy_id integer,
    is_pretty boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Connie1', 300);
INSERT INTO public.constellation VALUES (2, 'Connie2', 400);
INSERT INTO public.constellation VALUES (3, 'Connie3', 500);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'M16', 25, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy1', 300, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy2', 400, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy3', 500, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy4', 600, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy5', 700, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'dogooon', 567, 47.1, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Moon1', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Moon2', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moon3', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Moon4', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'moon5', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moon6', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Moon7', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Moon8', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Moon9', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Moon10', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moon11', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Moon12', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Moon13', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Moon14', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'moon15', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moon16', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'moon17', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Moon18', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Moon19', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Moon20', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Moon21', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Moon22', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Moon23', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Moon24', NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Pluto', 'Gufitus', 1, NULL);
INSERT INTO public.planet VALUES (2, 'Planet1', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Planet2', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Planet3', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Planet4', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Planet5', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Planet1', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Planet2', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Planet3', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet4', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Planet5', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet6', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Planet7', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'Planet8', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'Planet9', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'Planet10', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'Planet11', NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', true, 1, NULL);
INSERT INTO public.star VALUES (2, 'Star1', true, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Star2', true, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Star33', false, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Star4', false, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Star5', true, NULL, NULL);


--
-- Name: constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 25, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 17, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: planet planet_is_pretty_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_is_pretty_key UNIQUE (is_pretty);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- PostgreSQL database dump complete
--

