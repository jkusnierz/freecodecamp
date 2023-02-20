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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(50)
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    orbital_period integer,
    age_in_millions_of_years numeric(6,2),
    description text
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
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    orbital_period integer,
    age_in_millions_of_years numeric(6,2),
    description text,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    orbital_period integer,
    age_in_millions_of_years numeric(6,2),
    description text,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    orbital_period integer,
    age_in_millions_of_years numeric(6,2),
    description text,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halleys', NULL);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', NULL);
INSERT INTO public.comet VALUES (3, 'Encke', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 1000, 4000.00, 'our galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 0, 2000, 5000.00, 'our neighbor');
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 0, 2000, 5000.00, 'funny looking galaxy');
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 1000, 3000, 6000.00, 'dark galaxy');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 1000, 3000, 6000.00, 'spiral galaxy');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 2000, 3500, 6200.00, 'wheel-like galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 360, 28, 4400.00, 'our moon', false, true, 1);
INSERT INTO public.moon VALUES (3, 'Phobos', 100, 50, 4400.00, 'oue of Mars moons', false, true, 3);
INSERT INTO public.moon VALUES (5, 'Deimos', 100, 50, 4400.00, 'other Mars moon', false, true, 3);
INSERT INTO public.moon VALUES (6, 'Moon 4', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (7, 'Moon 5', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (8, 'Moon 6', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (9, 'Moon 7', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (10, 'Moon 8', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (11, 'Moon 9', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (12, 'Moon 10', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (13, 'Moon 11', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (14, 'Moon 12', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (15, 'Moon 13', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (16, 'Moon 14', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (17, 'Moon 15', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (18, 'Moon 16', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (19, 'Moon 17', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (20, 'Moon 18', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (21, 'Moon 19', 100, 50, 4400.00, 'moon', false, true, 3);
INSERT INTO public.moon VALUES (22, 'Moon 20', 100, 50, 4400.00, 'moon', false, true, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, 365, 4500.00, 'our planet', true, true, 1);
INSERT INTO public.planet VALUES (3, 'Mars', 150, 720, 4400.00, 'red planet', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 70, 50, 4400.00, 'hottest planet', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 70, 50, 4400.00, 'cloudy planet', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', 70, 50, 4400.00, 'huge planet', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 70, 50, 4400.00, 'plane with ringst', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 70, 50, 4400.00, 'rolls like a barrel', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 70, 50, 4400.00, 'gas giant', false, true, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 70, 50, 4400.00, 'tiny planet', false, true, 1);
INSERT INTO public.planet VALUES (11, 'Ceres', 70, 50, 4400.00, 'dwarf planet', false, true, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', 70, 50, 4400.00, 'dwarf planet', false, true, 1);
INSERT INTO public.planet VALUES (13, 'MakeMake', 70, 50, 4400.00, 'dwarf planet', false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 150, 1, 4000.00, 'our star', 1);
INSERT INTO public.star VALUES (3, 'Sirius', 1000, 50, 3000.00, 'very bright star', 2);
INSERT INTO public.star VALUES (4, 'Betelguese', 5000, 500, 8000.00, 'almost exploding star', 3);
INSERT INTO public.star VALUES (6, 'Vega', 5500, 550, 3000.00, 'very distant star', 1);
INSERT INTO public.star VALUES (7, 'Antares', 3500, 450, 8000.00, 'orange star', 1);
INSERT INTO public.star VALUES (8, 'Proxima Centauri', 500, 250, 3000.00, 'very close star', 1);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: comet comet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_id UNIQUE (comet_id);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: comet name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


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

