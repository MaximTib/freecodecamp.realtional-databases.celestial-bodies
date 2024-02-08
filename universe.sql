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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    distance_from_earth_in_light_years integer,
    circumference_in_light_years integer
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
    planet_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer
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
    star_id integer NOT NULL,
    distance_from_earth_in_km numeric NOT NULL,
    has_life boolean
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
    galaxy_id integer NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 1, 'Sagittarius A*');
INSERT INTO public.blackhole VALUES (2, 2, 'M87*');
INSERT INTO public.blackhole VALUES (3, 3, 'Messier 87 Supermassive Black Hole');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Includes the solar system. Barred spiral galaxy with a prominent central bar and spiral arms extending outward. Home to billions of stars, including our Sun.', 100000, 894234);
INSERT INTO public.galaxy VALUES (2, 'Andromeda (M31)', 'Andromeda is the closest spiral galaxy to the Milky Way and is on a collision course with it. It is the largest galaxy in the Local Group, which includes the Milky Way, Andromeda, and several smaller galaxies.', 2500000, 4324923);
INSERT INTO public.galaxy VALUES (3, 'Triangulum (M33)', 'The Triangulum Galaxy is a member of the Local Group and is the third-largest galaxy after the Milky Way and Andromeda. It is a spiral galaxy located in the constellation Triangulum.', 2700000, 932348);
INSERT INTO public.galaxy VALUES (4, 'Sombrero (M104)', 'The Sombrero Galaxy is a spiral galaxy located in the constellation Virgo. It is notable for its bright nucleus and large central bulge, giving it a distinct "sombrero" appearance.', 29000000, 4823289);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool (M51)', 'The Whirlpool Galaxy is an interacting grand-design spiral galaxy located in the constellation Canes Venatici. It is known for its classic spiral arm structure and a companion galaxy, NGC 5195.', 23000000, 832742);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud (LMC)', 'The Large Magellanic Cloud is a satellite galaxy of the Milky Way. It is irregular in shape and located in the southern hemisphere. The LMC is one of the closest galaxies to the Milky Way.', 160000, 1279318);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', 3, true, 4500);
INSERT INTO public.moon VALUES (22, 'Phobos', 4, true, 400);
INSERT INTO public.moon VALUES (23, 'Deimos', 4, true, 200);
INSERT INTO public.moon VALUES (24, 'Titan', 5, true, 4000);
INSERT INTO public.moon VALUES (25, 'Europa', 6, true, 100);
INSERT INTO public.moon VALUES (26, 'Ganymede', 6, true, 150);
INSERT INTO public.moon VALUES (27, 'Callisto', 6, true, 200);
INSERT INTO public.moon VALUES (28, 'Enceladus', 7, true, 100);
INSERT INTO public.moon VALUES (29, 'Mimas', 7, true, 50);
INSERT INTO public.moon VALUES (30, 'Iapetus', 7, true, 100);
INSERT INTO public.moon VALUES (31, 'Miranda', 8, true, 500);
INSERT INTO public.moon VALUES (32, 'Triton', 9, true, 100);
INSERT INTO public.moon VALUES (33, 'Charon', 10, true, 100);
INSERT INTO public.moon VALUES (34, 'Phoebe', 11, true, 200);
INSERT INTO public.moon VALUES (35, 'Oberon', 12, true, 1000);
INSERT INTO public.moon VALUES (36, 'Titania', 12, true, 800);
INSERT INTO public.moon VALUES (37, 'Umbriel', 12, true, 600);
INSERT INTO public.moon VALUES (38, 'Hyperion', 13, true, 200);
INSERT INTO public.moon VALUES (39, 'Rhea', 13, true, 500);
INSERT INTO public.moon VALUES (40, 'Tethys', 13, true, 400);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', 1, 149600000, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 225000000, false);
INSERT INTO public.planet VALUES (5, 'Andromeda Prime', 2, 2537000000, true);
INSERT INTO public.planet VALUES (6, 'Triangulum B', 3, 2780000000, false);
INSERT INTO public.planet VALUES (7, 'Sombrero Minor', 4, 2900000000, true);
INSERT INTO public.planet VALUES (8, 'Whirlpool Oasis', 5, 2300000000, false);
INSERT INTO public.planet VALUES (9, 'Luminara', 6, 163000000, true);
INSERT INTO public.planet VALUES (10, 'Magellan Alpha', 6, 155000, false);
INSERT INTO public.planet VALUES (11, 'Solaris II', 1, 151000000, false);
INSERT INTO public.planet VALUES (12, 'Andromeda Retreat', 2, 2540000000, true);
INSERT INTO public.planet VALUES (13, 'Triangulum Haven', 3, 2790000000, false);
INSERT INTO public.planet VALUES (14, 'Sombrero Serenity', 4, 2910000000, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'Our own Sun is a G-type main-sequence star and the center of our solar system. It is a relatively stable, middle-aged star.', 4600000);
INSERT INTO public.star VALUES (2, 'Almach', 2, 'Almach is a multiple star system in Andromeda, featuring a yellow giant and a blue companion. Its visible to the naked eye.', 1000000000);
INSERT INTO public.star VALUES (3, 'Delta Trianguli', 3, 'Delta Trianguli is a binary star system in Triangulum. The primary component is a main-sequence dwarf star.', 500000000);
INSERT INTO public.star VALUES (4, 'Phecda', 4, 'Phecda is not within M104, but its in the foreground. Its a giant star in the constellation Ursa Major, giving the appearance of part of the Sombrero Galaxy.', 500000000);
INSERT INTO public.star VALUES (5, '24 Canum Venaticorum', 5, '24 CVn is a binary star system in the constellation Canes Venatici, near M51. It consists of two G-type main-sequence stars.', 2000000000);
INSERT INTO public.star VALUES (6, 'S Doradus', 6, 'S Doradus is a massive, variable star in the Large Magellanic Cloud. It undergoes periodic outbursts and is classified as a Luminous Blue Variable.', 300000000);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 40, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: blackhole blackhole_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
-- Name: star star_id_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_galaxy_key UNIQUE (galaxy_id);


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
-- Name: blackhole fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_id_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_id_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

