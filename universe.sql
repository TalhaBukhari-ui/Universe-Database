--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    mass integer,
    distance_from_earth integer,
    radius numeric,
    has_water boolean,
    has_life boolean,
    abbreviation text
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
    mass integer,
    distance_from_earth integer,
    radius numeric,
    has_water boolean,
    has_life boolean,
    abbreviation text,
    planet_id integer
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
    name character varying(30) NOT NULL,
    mass integer,
    distance_from_earth integer,
    radius numeric,
    has_water boolean,
    has_life boolean,
    abbreviation text,
    star_id integer
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
    mass integer,
    distance_from_earth integer,
    radius numeric,
    has_water boolean,
    has_life boolean,
    abbreviation text,
    galaxy_id integer
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
-- Name: telescope; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.telescope (
    telescope_id integer NOT NULL,
    name character varying(50) NOT NULL,
    aperture_diameter numeric NOT NULL,
    location character varying(100) NOT NULL,
    type character varying(30)
);


ALTER TABLE public.telescope OWNER TO freecodecamp;

--
-- Name: telescope_telescope_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.telescope_telescope_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telescope_telescope_id_seq OWNER TO freecodecamp;

--
-- Name: telescope_telescope_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.telescope_telescope_id_seq OWNED BY public.telescope.telescope_id;


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
-- Name: telescope telescope_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescope ALTER COLUMN telescope_id SET DEFAULT nextval('public.telescope_telescope_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'GalaxyA', 500000, 1000000, 10000.0, true, false, 'GA');
INSERT INTO public.galaxy VALUES (2, 'GalaxyB', 600000, 1500000, 12000.0, false, true, 'GB');
INSERT INTO public.galaxy VALUES (3, 'GalaxyC', 700000, 2000000, 14000.0, true, true, 'GC');
INSERT INTO public.galaxy VALUES (4, 'GalaxyD', 800000, 2500000, 16000.0, false, false, 'GD');
INSERT INTO public.galaxy VALUES (5, 'GalaxyE', 900000, 3000000, 18000.0, true, false, 'GE');
INSERT INTO public.galaxy VALUES (6, 'GalaxyF', 1000000, 3500000, 20000.0, false, true, 'GF');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', 737, 384400, 1737.4, true, false, 'M1', 11);
INSERT INTO public.moon VALUES (2, 'Moon2', 1220, 500000, 900.0, false, false, 'M2', 7);
INSERT INTO public.moon VALUES (3, 'Moon3', 2380, 600000, 1050.0, true, true, 'M3', 8);
INSERT INTO public.moon VALUES (4, 'Moon4', 1650, 700000, 950.0, false, false, 'M4', 9);
INSERT INTO public.moon VALUES (5, 'Moon5', 4100, 200000, 1200.0, true, false, 'M5', 9);
INSERT INTO public.moon VALUES (6, 'Moon6', 1500, 300000, 800.0, false, true, 'M6', 7);
INSERT INTO public.moon VALUES (7, 'Moon7', 2700, 400000, 950.0, true, true, 'M7', 7);
INSERT INTO public.moon VALUES (8, 'Moon8', 1200, 500000, 850.0, false, false, 'M8', 11);
INSERT INTO public.moon VALUES (9, 'Moon9', 3200, 600000, 1000.0, true, false, 'M9', 11);
INSERT INTO public.moon VALUES (10, 'Moon10', 2900, 250000, 1100.0, false, true, 'M10', 10);
INSERT INTO public.moon VALUES (11, 'Moon11', 1350, 350000, 900.0, true, false, 'M11', 11);
INSERT INTO public.moon VALUES (12, 'Moon12', 1750, 450000, 950.0, false, false, 'M12', 11);
INSERT INTO public.moon VALUES (13, 'Moon13', 2450, 550000, 970.0, true, true, 'M13', 11);
INSERT INTO public.moon VALUES (14, 'Moon14', 1500, 600000, 920.0, false, true, 'M14', 11);
INSERT INTO public.moon VALUES (15, 'Moon15', 2000, 300000, 980.0, true, false, 'M15', 11);
INSERT INTO public.moon VALUES (16, 'Moon16', 2700, 400000, 960.0, false, false, 'M16', 11);
INSERT INTO public.moon VALUES (17, 'Moon17', 1550, 500000, 940.0, true, true, 'M17', 11);
INSERT INTO public.moon VALUES (18, 'Moon18', 2300, 600000, 930.0, false, false, 'M18', 11);
INSERT INTO public.moon VALUES (19, 'Moon19', 3100, 200000, 950.0, true, false, 'M19', 11);
INSERT INTO public.moon VALUES (20, 'Moon20', 2900, 300000, 1000.0, false, true, 'M20', 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 'PlanetG', 789012, 78901234, 7890.1, true, true, 'P7', 7);
INSERT INTO public.planet VALUES (1, 'PlanetA', 123456, 12345678, 1234.5, true, false, 'P1', 8);
INSERT INTO public.planet VALUES (2, 'PlanetB', 234567, 23456789, 2345.6, false, true, 'P2', 9);
INSERT INTO public.planet VALUES (3, 'PlanetC', 345678, 34567890, 3456.7, true, true, 'P3', 9);
INSERT INTO public.planet VALUES (4, 'PlanetD', 456789, 45678901, 4567.8, false, false, 'P4', 9);
INSERT INTO public.planet VALUES (5, 'PlanetE', 567890, 56789012, 5678.9, true, false, 'P5', 7);
INSERT INTO public.planet VALUES (6, 'PlanetF', 678901, 67890123, 6789.0, false, true, 'P6', 10);
INSERT INTO public.planet VALUES (8, 'PlanetH', 890123, 89012345, 8901.2, false, false, 'P8', 11);
INSERT INTO public.planet VALUES (9, 'PlanetI', 901234, 90123456, 9012.3, true, false, 'P9', 11);
INSERT INTO public.planet VALUES (10, 'PlanetJ', 123450, 12345067, 1234.6, false, true, 'P10', 11);
INSERT INTO public.planet VALUES (11, 'PlanetK', 234560, 23456078, 2345.7, true, true, 'P11', 11);
INSERT INTO public.planet VALUES (12, 'PlanetL', 345670, 34567089, 3456.8, false, false, 'P12', 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'StarA', 150000, 500000, 10000.0, false, false, 'SA', 1);
INSERT INTO public.star VALUES (8, 'StarB', 250000, 600000, 12000.0, true, false, 'SB', 2);
INSERT INTO public.star VALUES (9, 'StarC', 350000, 700000, 14000.0, false, true, 'SC', 3);
INSERT INTO public.star VALUES (10, 'StarD', 450000, 800000, 16000.0, true, true, 'SD', 4);
INSERT INTO public.star VALUES (11, 'StarE', 550000, 900000, 18000.0, false, false, 'SE', 5);
INSERT INTO public.star VALUES (12, 'StarF', 650000, 1000000, 20000.0, true, true, 'SF', 6);


--
-- Data for Name: telescope; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.telescope VALUES (1, 'Hubble Space Telescope', 2.4, 'Low Earth Orbit', 'Optical');
INSERT INTO public.telescope VALUES (2, 'James Webb Space Telescope', 6.5, 'L2 Orbit', 'Infrared');
INSERT INTO public.telescope VALUES (3, 'VLT (Very Large Telescope)', 8.2, 'Paranal Observatory, Chile', 'Optical');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: telescope_telescope_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.telescope_telescope_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: telescope telescope_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescope
    ADD CONSTRAINT telescope_name_key UNIQUE (name);


--
-- Name: telescope telescope_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescope
    ADD CONSTRAINT telescope_pkey PRIMARY KEY (telescope_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


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
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

