--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    number_of_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 17);
INSERT INTO public.games VALUES (2, 9, 690);
INSERT INTO public.games VALUES (3, 9, 954);
INSERT INTO public.games VALUES (4, 10, 320);
INSERT INTO public.games VALUES (5, 10, 721);
INSERT INTO public.games VALUES (6, 9, 500);
INSERT INTO public.games VALUES (7, 9, 952);
INSERT INTO public.games VALUES (8, 9, 678);
INSERT INTO public.games VALUES (9, 8, 10);
INSERT INTO public.games VALUES (10, 8, 11);
INSERT INTO public.games VALUES (11, 11, 948);
INSERT INTO public.games VALUES (12, 11, 679);
INSERT INTO public.games VALUES (13, 12, 933);
INSERT INTO public.games VALUES (14, 12, 775);
INSERT INTO public.games VALUES (15, 11, 16);
INSERT INTO public.games VALUES (16, 11, 344);
INSERT INTO public.games VALUES (17, 11, 186);
INSERT INTO public.games VALUES (18, 14, 273);
INSERT INTO public.games VALUES (19, 14, 296);
INSERT INTO public.games VALUES (20, 15, 137);
INSERT INTO public.games VALUES (21, 15, 780);
INSERT INTO public.games VALUES (22, 14, 34);
INSERT INTO public.games VALUES (23, 14, 362);
INSERT INTO public.games VALUES (24, 14, 765);
INSERT INTO public.games VALUES (25, 16, 847);
INSERT INTO public.games VALUES (26, 16, 912);
INSERT INTO public.games VALUES (27, 17, 110);
INSERT INTO public.games VALUES (28, 17, 314);
INSERT INTO public.games VALUES (29, 16, 385);
INSERT INTO public.games VALUES (30, 16, 598);
INSERT INTO public.games VALUES (31, 16, 830);
INSERT INTO public.games VALUES (32, 19, 641);
INSERT INTO public.games VALUES (33, 19, 21);
INSERT INTO public.games VALUES (34, 20, 694);
INSERT INTO public.games VALUES (35, 20, 199);
INSERT INTO public.games VALUES (36, 19, 186);
INSERT INTO public.games VALUES (37, 19, 866);
INSERT INTO public.games VALUES (38, 19, 359);
INSERT INTO public.games VALUES (39, 21, 245);
INSERT INTO public.games VALUES (40, 21, 848);
INSERT INTO public.games VALUES (41, 22, 468);
INSERT INTO public.games VALUES (42, 22, 963);
INSERT INTO public.games VALUES (43, 21, 588);
INSERT INTO public.games VALUES (44, 21, 140);
INSERT INTO public.games VALUES (45, 21, 713);
INSERT INTO public.games VALUES (46, 23, 29);
INSERT INTO public.games VALUES (47, 23, 942);
INSERT INTO public.games VALUES (48, 24, 782);
INSERT INTO public.games VALUES (49, 24, 684);
INSERT INTO public.games VALUES (50, 23, 766);
INSERT INTO public.games VALUES (51, 23, 142);
INSERT INTO public.games VALUES (52, 23, 814);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 't');
INSERT INTO public.users VALUES (2, 'user_1791567423246');
INSERT INTO public.users VALUES (3, 'user_1791567423245');
INSERT INTO public.users VALUES (4, 'user_1791567443971');
INSERT INTO public.users VALUES (5, 'user_1791567443970');
INSERT INTO public.users VALUES (6, 'user_1791567480727');
INSERT INTO public.users VALUES (7, 'user_1791567480726');
INSERT INTO public.users VALUES (8, 'Takmil');
INSERT INTO public.users VALUES (9, 'user_1791568598747');
INSERT INTO public.users VALUES (10, 'user_1791568598746');
INSERT INTO public.users VALUES (11, 'user_1791568893558');
INSERT INTO public.users VALUES (12, 'user_1791568893557');
INSERT INTO public.users VALUES (13, 'ty');
INSERT INTO public.users VALUES (14, 'user_1791569174148');
INSERT INTO public.users VALUES (15, 'user_1791569174147');
INSERT INTO public.users VALUES (16, 'user_1791569189449');
INSERT INTO public.users VALUES (17, 'user_1791569189448');
INSERT INTO public.users VALUES (18, 'Syed Takmil');
INSERT INTO public.users VALUES (19, 'user_1791569268420');
INSERT INTO public.users VALUES (20, 'user_1791569268419');
INSERT INTO public.users VALUES (21, 'user_1791569289923');
INSERT INTO public.users VALUES (22, 'user_1791569289922');
INSERT INTO public.users VALUES (23, 'user_1791569297137');
INSERT INTO public.users VALUES (24, 'user_1791569297136');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 52, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

