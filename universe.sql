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
    name character varying(20) NOT NULL,
    size_index integer,
    distance_light_years numeric(40,5),
    rotate_clockwise boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size_index integer,
    planet_id integer NOT NULL,
    spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size_index integer,
    description text,
    gas_planet boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(20),
    num_stars_planets integer NOT NULL
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_type character varying(20),
    galaxy_id integer NOT NULL,
    color character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 4, 0.00000, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 5, 35.00000, false);
INSERT INTO public.galaxy VALUES (3, 'Comet Galaxy', 3, 745.00000, true);
INSERT INTO public.galaxy VALUES (4, 'Hoags Object', 5, 87.00000, false);
INSERT INTO public.galaxy VALUES (5, 'Messier 83', 4, 32542.00000, true);
INSERT INTO public.galaxy VALUES (6, 'ngc 6946', 7, 4322.00000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Selene', 4, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', 3, 1, true);
INSERT INTO public.moon VALUES (3, 'Ganymede', 3, 1, true);
INSERT INTO public.moon VALUES (4, 'Callisto', 2, 1, true);
INSERT INTO public.moon VALUES (5, 'Ananke', 1, 2, false);
INSERT INTO public.moon VALUES (6, 'Kalyke', 3, 2, true);
INSERT INTO public.moon VALUES (7, 'Iocaste', 4, 2, true);
INSERT INTO public.moon VALUES (8, 'Aoede', 5, 3, false);
INSERT INTO public.moon VALUES (9, 'Helike', 2, 4, false);
INSERT INTO public.moon VALUES (10, 'Carme', 1, 5, true);
INSERT INTO public.moon VALUES (11, 'Tethys', 1, 5, true);
INSERT INTO public.moon VALUES (12, 'Dione', 1, 6, true);
INSERT INTO public.moon VALUES (13, 'Orthosie', 2, 5, false);
INSERT INTO public.moon VALUES (14, 'Fenrir', 1, 7, false);
INSERT INTO public.moon VALUES (15, 'Methone', 4, 8, false);
INSERT INTO public.moon VALUES (16, 'Epimetheus', 4, 9, true);
INSERT INTO public.moon VALUES (17, 'Sponde', 5, 10, true);
INSERT INTO public.moon VALUES (18, 'Mneme', 4, 10, true);
INSERT INTO public.moon VALUES (19, 'Thebe', 2, 11, false);
INSERT INTO public.moon VALUES (20, 'Carpo', 2, 12, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'My home :)', false, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 4, 'Cold', false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 'Nothing to do here', false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'We will be here on day', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, 'Big', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 3, 'Scary', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 5, 'Haha funny name', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 3, 'I heard about this one', true, 1);
INSERT INTO public.planet VALUES (9, 'Librae b', 3, 'Nothing interesting', true, 3);
INSERT INTO public.planet VALUES (10, 'Ursea Majoris B', 2, 'Found in 2013', false, 4);
INSERT INTO public.planet VALUES (11, 'Cygni Bb', 5, 'Unfounded in 2014', true, 4);
INSERT INTO public.planet VALUES (12, 'Eros', 7, 'Planet', false, 5);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Donut', 5433);
INSERT INTO public.solar_system VALUES (2, 'Inner Tube', 12331);
INSERT INTO public.solar_system VALUES (3, 'Circle', 9823);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Yellow Dwarf', 1, NULL);
INSERT INTO public.star VALUES (2, 'Canopus', 'Hot Blue', 1, 'Blue');
INSERT INTO public.star VALUES (3, 'Altair', 'White Dwarf', 1, 'White');
INSERT INTO public.star VALUES (4, 'Fomalhaut', 'Neutron Star', 2, 'White');
INSERT INTO public.star VALUES (5, 'Vega', 'Hot Blue', 2, 'Blue');
INSERT INTO public.star VALUES (6, 'Epsilon Cygni', 'Red Dwarf', 3, 'Red');
INSERT INTO public.star VALUES (7, 'Alnilam', 'Red Dwarf', 4, 'Red');


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
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_name UNIQUE (name);


--
-- Name: moon uq_name_mn; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_name_mn UNIQUE (name);


--
-- Name: planet uq_name_pl; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_name_pl UNIQUE (name);


--
-- Name: solar_system uq_name_ss; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT uq_name_ss UNIQUE (name);


--
-- Name: star uq_name_st; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_name_st UNIQUE (name);


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

