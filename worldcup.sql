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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL,
    round character varying(30) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 221, 222, 4, 2, 65, 'Final');
INSERT INTO public.games VALUES (2018, 223, 224, 2, 0, 66, 'Third Place');
INSERT INTO public.games VALUES (2018, 222, 224, 2, 1, 67, 'Semi-Final');
INSERT INTO public.games VALUES (2018, 221, 223, 1, 0, 68, 'Semi-Final');
INSERT INTO public.games VALUES (2018, 222, 225, 3, 2, 69, 'Quarter-Final');
INSERT INTO public.games VALUES (2018, 224, 226, 2, 0, 70, 'Quarter-Final');
INSERT INTO public.games VALUES (2018, 223, 227, 2, 1, 71, 'Quarter-Final');
INSERT INTO public.games VALUES (2018, 221, 228, 2, 0, 72, 'Quarter-Final');
INSERT INTO public.games VALUES (2018, 224, 229, 2, 1, 73, 'Eighth-Final');
INSERT INTO public.games VALUES (2018, 226, 230, 1, 0, 74, 'Eighth-Final');
INSERT INTO public.games VALUES (2018, 223, 231, 3, 2, 75, 'Eighth-Final');
INSERT INTO public.games VALUES (2018, 227, 232, 2, 0, 76, 'Eighth-Final');
INSERT INTO public.games VALUES (2018, 222, 233, 2, 1, 77, 'Eighth-Final');
INSERT INTO public.games VALUES (2018, 225, 234, 2, 1, 78, 'Eighth-Final');
INSERT INTO public.games VALUES (2018, 228, 235, 2, 1, 79, 'Eighth-Final');
INSERT INTO public.games VALUES (2018, 221, 236, 4, 3, 80, 'Eighth-Final');
INSERT INTO public.games VALUES (2014, 237, 236, 1, 0, 81, 'Final');
INSERT INTO public.games VALUES (2014, 238, 227, 3, 0, 82, 'Third Place');
INSERT INTO public.games VALUES (2014, 236, 238, 1, 0, 83, 'Semi-Final');
INSERT INTO public.games VALUES (2014, 237, 227, 7, 1, 84, 'Semi-Final');
INSERT INTO public.games VALUES (2014, 238, 239, 1, 0, 85, 'Quarter-Final');
INSERT INTO public.games VALUES (2014, 236, 223, 1, 0, 86, 'Quarter-Final');
INSERT INTO public.games VALUES (2014, 227, 229, 2, 1, 87, 'Quarter-Final');
INSERT INTO public.games VALUES (2014, 237, 221, 1, 0, 88, 'Quarter-Final');
INSERT INTO public.games VALUES (2014, 227, 240, 2, 1, 89, 'Eighth-Final');
INSERT INTO public.games VALUES (2014, 229, 228, 2, 0, 90, 'Eighth-Final');
INSERT INTO public.games VALUES (2014, 221, 241, 2, 0, 91, 'Eighth-Final');
INSERT INTO public.games VALUES (2014, 237, 242, 2, 1, 92, 'Eighth-Final');
INSERT INTO public.games VALUES (2014, 238, 232, 2, 1, 93, 'Eighth-Final');
INSERT INTO public.games VALUES (2014, 239, 243, 2, 1, 94, 'Eighth-Final');
INSERT INTO public.games VALUES (2014, 236, 230, 1, 0, 95, 'Eighth-Final');
INSERT INTO public.games VALUES (2014, 223, 244, 2, 1, 96, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (221, 'France');
INSERT INTO public.teams VALUES (222, 'Croatia');
INSERT INTO public.teams VALUES (223, 'Belgium');
INSERT INTO public.teams VALUES (224, 'England');
INSERT INTO public.teams VALUES (225, 'Russia');
INSERT INTO public.teams VALUES (226, 'Sweden');
INSERT INTO public.teams VALUES (227, 'Brazil');
INSERT INTO public.teams VALUES (228, 'Uruguay');
INSERT INTO public.teams VALUES (229, 'Colombia');
INSERT INTO public.teams VALUES (230, 'Switzerland');
INSERT INTO public.teams VALUES (231, 'Japan');
INSERT INTO public.teams VALUES (232, 'Mexico');
INSERT INTO public.teams VALUES (233, 'Denmark');
INSERT INTO public.teams VALUES (234, 'Spain');
INSERT INTO public.teams VALUES (235, 'Portugal');
INSERT INTO public.teams VALUES (236, 'Argentina');
INSERT INTO public.teams VALUES (237, 'Germany');
INSERT INTO public.teams VALUES (238, 'Netherlands');
INSERT INTO public.teams VALUES (239, 'Costa Rica');
INSERT INTO public.teams VALUES (240, 'Chile');
INSERT INTO public.teams VALUES (241, 'Nigeria');
INSERT INTO public.teams VALUES (242, 'Algeria');
INSERT INTO public.teams VALUES (243, 'Greece');
INSERT INTO public.teams VALUES (244, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 244, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
