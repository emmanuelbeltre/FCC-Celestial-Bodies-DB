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
-- Name: extra_info; Type: TABLE; Schema: public; Owner: freecodecamp
--


CREATE TABLE public.extra_info (
    extra_info_id integer NOT NULL,
    description character varying(255) NOT NULL,
    fk_id integer,
    name character varying(30)
);




ALTER TABLE public.extra_info OWNER TO freecodecamp;


--
-- Name: extra_info_extra_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--


CREATE SEQUENCE public.extra_info_extra_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;




ALTER TABLE public.extra_info_extra_info_id_seq OWNER TO freecodecamp;


--
-- Name: extra_info_extra_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--


ALTER SEQUENCE public.extra_info_extra_info_id_seq OWNED BY public.extra_info.extra_info_id;




--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--


CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    has_life boolean,
    description text,
    type character varying(30),
    age numeric(15,2)
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
    name character varying(30),
    age_in_million_of_years integer,
    distance_from_earth numeric(14,2),
    is_spherical boolean,
    has_life boolean,
    description text NOT NULL,
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
    age_in_million_of_years integer,
    distance_from_earth numeric(14,2),
    is_spherical boolean,
    has_life boolean,
    description text
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
    galaxy_id integer,
    age numeric(14,2),
    discovery_date date
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
-- Name: extra_info extra_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.extra_info ALTER COLUMN extra_info_id SET DEFAULT nextval('public.extra_info_extra_info_id_seq'::regclass);




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
-- Data for Name: extra_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--


INSERT INTO public.extra_info VALUES (1, 'THE INFO', 1, NULL);
INSERT INTO public.extra_info VALUES (2, 'THE INFO', 1, NULL);
INSERT INTO public.extra_info VALUES (3, 'THE INFO', 1, NULL);




--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--


INSERT INTO public.galaxy VALUES (1, 'Milky Way', 30000, true, 'none', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 4000, true, 'none', 'non type', 1727277.00);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 4000, true, 'none', 'non type', 1727277.00);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 4000, true, 'none', 'non type', 1727277.00);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy (M33)', 4000, true, 'none', 'non type', 1727277.00);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy (M51)', 4000, true, 'none', 'non type', 1727277.00);
INSERT INTO public.galaxy VALUES (7, 'Cigar Galaxy (M82)', 4000, true, 'none', 'non type', 1727277.00);




--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--


INSERT INTO public.moon VALUES (1, 'The Moon', 100, 400.00, true, true, 'rock', 1);
INSERT INTO public.moon VALUES (2, 'The Moon', 100, 400.00, true, true, 'rock', 1);
INSERT INTO public.moon VALUES (3, 'The Moon', 100, 400.00, true, true, 'rock', 1);
INSERT INTO public.moon VALUES (4, 'Moon', 18888, 5666.00, true, false, 'rock', 1);
INSERT INTO public.moon VALUES (5, 'Europa', 0, 0.00, true, false, 'Jupiter Moon', 8);
INSERT INTO public.moon VALUES (6, 'Gallisto', 0, 0.00, true, false, 'Jupiter Moon', 8);
INSERT INTO public.moon VALUES (7, 'Amalthea', 0, 0.00, true, false, 'Jupiter Moon', 8);
INSERT INTO public.moon VALUES (8, 'Elara', 0, 0.00, true, false, 'Jupiter Moon', 8);
INSERT INTO public.moon VALUES (9, 'Sinope', 0, 0.00, true, false, 'Jupiter Moon', 8);
INSERT INTO public.moon VALUES (10, 'Leda', 0, 0.00, true, false, 'Jupiter Moon', 8);
INSERT INTO public.moon VALUES (11, 'Titan', 0, 0.00, true, false, 'Saturn Moon', 9);
INSERT INTO public.moon VALUES (12, 'Enceladus', 0, 0.00, true, false, 'Saturn Moon', 9);
INSERT INTO public.moon VALUES (13, 'Rhea', 0, 0.00, true, false, 'Saturn Moon', 9);
INSERT INTO public.moon VALUES (14, 'Lapetus', 0, 0.00, true, false, 'Saturn Moon', 9);
INSERT INTO public.moon VALUES (15, 'Dione', 0, 0.00, true, false, 'Saturn Moon', 9);
INSERT INTO public.moon VALUES (16, 'Tethys', 0, 0.00, true, false, 'Saturn Moon', 9);
INSERT INTO public.moon VALUES (17, 'Mimas', 0, 0.00, true, false, 'Saturn Moon', 9);
INSERT INTO public.moon VALUES (18, 'Phoebe', 0, 0.00, true, false, 'Saturn Moon', 9);
INSERT INTO public.moon VALUES (19, 'Janus', 0, 0.00, true, false, 'Saturn Moon', 9);
INSERT INTO public.moon VALUES (20, 'Titania', 0, 0.00, true, false, 'Uranus Moon', 10);
INSERT INTO public.moon VALUES (21, 'Oberon', 0, 0.00, true, false, 'Uranus Moon', 10);
INSERT INTO public.moon VALUES (22, 'Umbriel', 0, 0.00, true, false, 'Uranus Moon', 10);
INSERT INTO public.moon VALUES (23, 'Ariel', 0, 0.00, true, false, 'Uranus Moon', 10);
INSERT INTO public.moon VALUES (24, 'Puck', 0, 0.00, true, false, 'Uranus Moon', 10);
INSERT INTO public.moon VALUES (25, 'Cressida', 0, 0.00, true, false, 'Uranus Moon', 10);
INSERT INTO public.moon VALUES (26, 'Desdemona', 0, 0.00, true, false, 'Uranus Moon', 10);
INSERT INTO public.moon VALUES (27, 'Julliet', 0, 0.00, true, false, 'Uranus Moon', 10);




--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--


INSERT INTO public.planet VALUES (1, 'Earth', 100, 400.00, true, true, 'The best planet to live in');
INSERT INTO public.planet VALUES (2, 'The Moon', 100, 400.00, true, true, 'rock');
INSERT INTO public.planet VALUES (3, 'The Moon', 100, 400.00, true, true, 'rock');
INSERT INTO public.planet VALUES (4, 'The Moon', 100, 400.00, true, true, 'rock');
INSERT INTO public.planet VALUES (5, 'Mercury', 4503, 480000.00, true, false, 'Closest planet to the sun');
INSERT INTO public.planet VALUES (6, 'Venus', 4503, 38000000000.00, true, false, 'No info for the moment');
INSERT INTO public.planet VALUES (7, 'Mars', 4603, 56000000000.00, true, false, 'No info for the moment');
INSERT INTO public.planet VALUES (8, 'Jupiter', 4603, 365000000000.00, true, false, 'No info for the moment');
INSERT INTO public.planet VALUES (9, 'Saturn', 4503, 746000000000.00, true, false, 'No info for the moment');
INSERT INTO public.planet VALUES (10, 'Uranus', 4503, 999000000000.00, true, false, 'No info for the moment');
INSERT INTO public.planet VALUES (11, '51 Pegasi b', 4503, 999000000000.00, true, false, 'No info for the moment');
INSERT INTO public.planet VALUES (12, 'Gliese 581d', 4503, 999000000000.00, true, false, 'No info for the moment');
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1e, f, and g', 4503, 999000000000.00, true, false, 'No info for the moment');




--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--


INSERT INTO public.star VALUES (1, 'Sirio', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Acturus', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Antares', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Rigel', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Canopus', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Alpha Centauri ', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'PAndAS-4: ', 2, NULL, NULL);
INSERT INTO public.star VALUES (8, 'G1 (Mayall II)', 2, NULL, NULL);




--
-- Name: extra_info_extra_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--


SELECT pg_catalog.setval('public.extra_info_extra_info_id_seq', 3, true);




--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--


SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 4, true);




--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--


SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);




--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--


SELECT pg_catalog.setval('public.planet_planet_id_seq', 10, true);




--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--


SELECT pg_catalog.setval('public.star_star_id_seq', 4, true);




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
-- Name: extra_info pk_extra_info; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.extra_info
    ADD CONSTRAINT pk_extra_info PRIMARY KEY (extra_info_id);




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
-- Name: extra_info unique_value; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.extra_info
    ADD CONSTRAINT unique_value UNIQUE (extra_info_id);




--
-- Name: galaxy unique_value_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_value_galaxy UNIQUE (galaxy_id);




--
-- Name: moon unique_value_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_value_moon UNIQUE (moon_id);




--
-- Name: planet unique_value_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_value_planet UNIQUE (planet_id);




--
-- Name: star unique_value_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_value_star UNIQUE (star_id);




--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);




--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);




--
-- PostgreSQL database dump complete
--





