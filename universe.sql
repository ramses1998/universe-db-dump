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
    description character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    name character varying(255),
    distance_from_earth integer,
    weight numeric(5,3),
    planet_types text,
    has_life boolean
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
    description character varying(255) NOT NULL,
    name character varying(255),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric(5,3),
    planet_types text,
    has_life boolean,
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
-- Name: other_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other_bodies (
    other_bodies_id integer NOT NULL,
    description character varying(255) NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    planet_types text,
    distance_from_earth integer,
    name character varying(255)
);


ALTER TABLE public.other_bodies OWNER TO freecodecamp;

--
-- Name: other_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: other_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_bodies_id_seq OWNED BY public.other_bodies.other_bodies_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    description character varying(255) NOT NULL,
    name character varying(255),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric(5,3),
    planet_types text,
    has_life boolean,
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
    description character varying(255) NOT NULL,
    name character varying(255),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric(5,3),
    planet_types text,
    has_life boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: other_bodies other_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies ALTER COLUMN other_bodies_id SET DEFAULT nextval('public.other_bodies_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Our Galaxy', 100, 'The Milky Way', 0, 99.000, 'Galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Neighbor Galaxy', 10000, 'Andromeda Galaxy', 100000, NULL, 'Galaxy', false);
INSERT INTO public.galaxy VALUES (3, 'Neighbor Galaxy', 235450, 'Large Magellanic Cloud', 100000, NULL, 'Galaxy', false);
INSERT INTO public.galaxy VALUES (4, 'Neighbor Galaxy', 23545000, 'Small Magellanic Cloud', 123980, NULL, 'Galaxy', false);
INSERT INTO public.galaxy VALUES (5, 'Neighbor Galaxy', 23545000, 'Black Eye', 123980, NULL, 'Galaxy', false);
INSERT INTO public.galaxy VALUES (6, 'Neighbor Galaxy', 23545000, 'Cigar Galaxy', 123980, NULL, 'Galaxy', false);
INSERT INTO public.galaxy VALUES (7, 'Neighbor Galaxy', 23545000, 'Backward Galaxy', 123980, NULL, 'Galaxy', false);
INSERT INTO public.galaxy VALUES (8, 'Neighbor Galaxy', 23545000, 'Antennae Galaxy', 123980, NULL, 'Galaxy', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Our Planets Satelite', 'Moon', 23545000, 123980, NULL, 'Celestial Body', false, NULL);
INSERT INTO public.moon VALUES (2, 'Other Planets Satelite', 'Akatsuki', 23545000, 123980, NULL, 'Satelite', false, NULL);
INSERT INTO public.moon VALUES (3, 'Other Planets Satelite', 'Maven', 23545000, 123980, NULL, 'Satelite', false, NULL);
INSERT INTO public.moon VALUES (4, 'Other Planets Satelite', 'Messenger', 23545000, 123980, NULL, 'Satelite', false, NULL);
INSERT INTO public.moon VALUES (5, 'Other Planets Satelite', 'Express', 23545000, 123980, NULL, 'Satelite', false, NULL);
INSERT INTO public.moon VALUES (6, 'Some other moon', 'Some other Planet 1', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (7, 'Some other moon', 'Some other Satellite 2', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (8, 'Some other moon', 'Some other Satellite 3', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (9, 'Some other moon', 'Some other Satellite 4', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (10, 'Some other moon', 'Some other Satellite 5', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (11, 'Some other moon', 'Some other Satellite 6', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (12, 'Some other moon', 'Some other Satellite 7', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (13, 'Some other moon', 'Some other Satellite 8', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (14, 'Some other moon', 'Some other Satellite 9', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (15, 'Some other moon', 'Some other Satellite 10', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (16, 'Some other moon', 'Some other Satellite 11', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (17, 'Some other moon', 'Some other Satellite 12', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (18, 'Some other moon', 'Some other Satellite 13', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (19, 'Some other moon', 'Some other Satellite 14', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (20, 'Some other moon', 'Some other Satellite 15', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (21, 'Some other moon', 'Some other Satellite 16', 23545000, 123980, NULL, 'Satellite', false, NULL);
INSERT INTO public.moon VALUES (22, 'Some other moon', 'Some other Satellite 17', 23545000, 123980, NULL, 'Satellite', false, NULL);


--
-- Data for Name: other_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other_bodies VALUES (1, 'Some other body', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (2, 'Some other body 2', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (3, 'Some other body 3', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (4, 'Some other body 3', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (5, 'Some other body 4', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (6, 'Some other body 5', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (7, 'Some other body 6', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (8, 'Some other body 7', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (9, 'Some other body 8', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (10, 'Some other body 9', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (11, 'Some other body 10', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (12, 'Some other body 11', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (13, 'Some other body 12', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (14, 'Some other body 13', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (15, 'Some other body 14', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (16, 'Some other body 15', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (17, 'Some other body 16', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (18, 'Some other body 17', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (19, 'Some other body 18', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (20, 'Some other body 19', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (21, 'Some other body 20', false, 23545000, 'Celestial Body', 123980, NULL);
INSERT INTO public.other_bodies VALUES (22, 'Some other body 21', false, 23545000, 'Celestial Body', 123980, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Our Planet Earth', 'Earth', 23545000, 123980, NULL, 'Celestial Body', true, NULL);
INSERT INTO public.planet VALUES (2, 'Next Planet to Earth', 'Venus', 23545000, 123980, NULL, 'Celestial Body', false, NULL);
INSERT INTO public.planet VALUES (3, 'Next Planet to Earth', 'Mars', 23545000, 123980, NULL, 'Celestial Body', false, NULL);
INSERT INTO public.planet VALUES (4, 'Next Planet to Earth', 'Mercury', 23545000, 123980, NULL, 'Celestial Body', false, NULL);
INSERT INTO public.planet VALUES (5, 'Next Planet to Earth', 'Uranus', 23545000, 123980, NULL, 'Celestial Body', false, NULL);
INSERT INTO public.planet VALUES (6, 'Neighbor Planet', 'Pluton', 23545000, 123980, NULL, 'Planet', false, NULL);
INSERT INTO public.planet VALUES (7, 'Neighbor Planet', 'Saturn', 23545000, 123980, NULL, 'Planet', false, NULL);
INSERT INTO public.planet VALUES (8, 'Neighbor Planet', 'Jupiter', 23545000, 123980, NULL, 'Planet', false, NULL);
INSERT INTO public.planet VALUES (9, 'Neighbor Planet', 'Some other Planet 1', 23545000, 123980, NULL, 'Planet', false, NULL);
INSERT INTO public.planet VALUES (10, 'Neighbor Planet', 'Some other Planet 2', 23545000, 123980, NULL, 'Planet', false, NULL);
INSERT INTO public.planet VALUES (11, 'Neighbor Planet', 'Some other Planet 3', 23545000, 123980, NULL, 'Planet', false, NULL);
INSERT INTO public.planet VALUES (12, 'Neighbor Planet', 'Some other Planet 4', 23545000, 123980, NULL, 'Planet', false, NULL);
INSERT INTO public.planet VALUES (13, 'Neighbor Planet', 'Some other Planet 5', 23545000, 123980, NULL, 'Planet', false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Our Sun', 'Sun', 23545000, 123980, NULL, 'Celestial Body', false, NULL);
INSERT INTO public.star VALUES (2, 'Neighbor Star 1', 'Neighbor Star 1', 23545000, 123980, NULL, 'Celestial Body', false, NULL);
INSERT INTO public.star VALUES (3, 'Neighbor Star 2', 'Neighbor Star 2', 23545000, 123980, NULL, 'Celestial Body', false, NULL);
INSERT INTO public.star VALUES (4, 'Neighbor Star 3', 'Neighbor Star 3', 23545000, 123980, NULL, 'Celestial Body', false, NULL);
INSERT INTO public.star VALUES (5, 'Some other Star 1', 'Some Other Star 1', 23432, 32542, 10.000, 'Celestial Body', false, NULL);
INSERT INTO public.star VALUES (6, 'Some other Star 2', 'Some Other Star 2', 23432, 32542, 10.000, 'Celestial Body', false, NULL);
INSERT INTO public.star VALUES (7, 'Some other Star 3', 'Some Other Star 3', 23432, 32542, 10.000, 'Celestial Body', false, NULL);
INSERT INTO public.star VALUES (8, 'Some other Star 4', 'Some Other Star 4', 23432, 32542, 10.000, 'Celestial Body', false, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: other_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_bodies_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (moon_id);


--
-- Name: other_bodies other_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies
    ADD CONSTRAINT other_bodies_pkey PRIMARY KEY (other_bodies_id);


--
-- Name: other_bodies other_bodies_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies
    ADD CONSTRAINT other_bodies_unq UNIQUE (other_bodies_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unq UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (star_id);


--
-- Name: planet planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

