--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-07-25 19:42:36

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16436)
-- Name: Colorway; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Colorway" (
    colorway_id integer NOT NULL,
    shoe_id integer NOT NULL,
    colorway text
);


ALTER TABLE public."Colorway" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16435)
-- Name: Colorway_colorway_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Colorway_colorway_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Colorway_colorway_id_seq" OWNER TO postgres;

--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 219
-- Name: Colorway_colorway_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Colorway_colorway_id_seq" OWNED BY public."Colorway".colorway_id;


--
-- TOC entry 222 (class 1259 OID 16450)
-- Name: Critic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Critic" (
    critic_id integer NOT NULL,
    name text NOT NULL,
    youtube_channel text
);


ALTER TABLE public."Critic" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16449)
-- Name: Critic_critic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Critic_critic_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Critic_critic_id_seq" OWNER TO postgres;

--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 221
-- Name: Critic_critic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Critic_critic_id_seq" OWNED BY public."Critic".critic_id;


--
-- TOC entry 223 (class 1259 OID 16458)
-- Name: Review; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Review" (
    critic_id integer NOT NULL,
    shoe_id integer NOT NULL,
    rating numeric(3,1),
    name text,
    date date,
    description text
);


ALTER TABLE public."Review" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16427)
-- Name: Shoe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Shoe" (
    shoe_id integer NOT NULL,
    name text NOT NULL,
    brand text NOT NULL,
    release_date date,
    shoe_type text,
    description text,
    price numeric(6,2),
    expert_rating numeric(3,1),
    traction_rating numeric(3,1),
    cushion_rating numeric(3,1),
    materials_rating numeric(3,1),
    support_rating numeric(3,1),
    fit_rating numeric(3,1),
    outdoor_rating numeric(4,1),
    size text,
    width text
);


ALTER TABLE public."Shoe" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16426)
-- Name: Shoe_shoe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Shoe_shoe_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Shoe_shoe_id_seq" OWNER TO postgres;

--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 217
-- Name: Shoe_shoe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Shoe_shoe_id_seq" OWNED BY public."Shoe".shoe_id;


--
-- TOC entry 4757 (class 2604 OID 16439)
-- Name: Colorway colorway_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Colorway" ALTER COLUMN colorway_id SET DEFAULT nextval('public."Colorway_colorway_id_seq"'::regclass);


--
-- TOC entry 4758 (class 2604 OID 16453)
-- Name: Critic critic_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Critic" ALTER COLUMN critic_id SET DEFAULT nextval('public."Critic_critic_id_seq"'::regclass);


--
-- TOC entry 4756 (class 2604 OID 16430)
-- Name: Shoe shoe_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shoe" ALTER COLUMN shoe_id SET DEFAULT nextval('public."Shoe_shoe_id_seq"'::regclass);


--
-- TOC entry 4914 (class 0 OID 16436)
-- Dependencies: 220
-- Data for Name: Colorway; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Colorway" (colorway_id, shoe_id, colorway) FROM stdin;
1	2	Barely Green / Vapor Green / Metallic Silver / Black
2	2	Football Grey / Copa / Vapor Green / Laser Blue
3	2	Black / Bright Crimson / Summit White
1	3	Dallas
2	3	Solar Return
1	4	Road to Finals
2	4	Stingray
3	4	Lizard
4	4	Birthday
5	4	Yin Yang
6	4	Oxygen
7	4	College
1	5	Black / Bright Crimson / Particle Grey / Mint Foam
2	5	Black / Peach Cream / Total Orange
3	5	Coconut Milk / Sail / Bright Mango / Aurora Green
4	5	White / Black / Tour Yellow / Hot Punch
5	5	Light Photo Blue / Black / Blue Gaze / Coast
6	5	White / Black / Volt / Bright Crimson
7	5	Grey Fog / Metallic Silver / Action Grape / Black
1	6	Fire Red / Black / Amarillo
2	6	Summit White / Pure Platinum / Wolf Grey
3	6	Teal / Lime / Blast / Anthracite
4	6	Metallic Silver / Dark Smoke Grey / Green Strike / Dusty Sage / Chrome
5	6	Black / Black / Coconut Milk
1	7	University Blue / Deep Royal Blue / Fire Pink / White
2	7	Barely Volt / Celestine Blue / Black / Green Strike
3	7	Black / White/Smoke Grey / Light Smoke Grey
4	7	Platinum Violet / Amethyst Tint / Magic Ember / Off Noir
5	7	Hyper Turquoise / Court Purple / Bright Mango / Vivid Purple
6	7	Bright Crimson / Black / Sundial / Laser Orange
7	7	Mint Foam / Volt Tint / Hyper Jade / Bright Citrus
8	7	Pink Foam / Black / Pink Wash / Sail
9	7	Purple / Teal
1	8	Black / Coconut Milk
2	8	Honeydew / Barely Volt / Black
3	8	Multi-Colour / Multi-Colour
1	9	Ace
2	9	Denver
3	9	Joker
4	9	Champagne
5	9	Peppa Pig
6	9	Triple Red
1	10	Semi Court Green / Core Black / Screaming Green
2	10	Cyber Metallic / Core Black / Lucid Red
3	10	Cloud White / Core Black / Screaming Green
4	10	Glow Blue / Cloud White / Core Black
5	10	Core Black / Lucid Red / Cloud White
6	10	Energy Ink / Core Black / Better Scarlet
1	11	Bright Aqua / Feather Gray
2	11	Feather Gray / Wild Berry
3	11	Purple / Green
1	12	Milkyway
2	12	Snowman
1	13	Purple / Green
2	13	Yellow / Orange / Blue / Black
3	13	Black / Steel
4	13	Blue / Blue
5	13	Forest Green / Classic Green / Metallic Gold
6	13	Reign Rose
7	13	Capri / Fire
1	14	Core Black / Clear Grey / Carbon
2	14	Solar Red / Core Black / Cloud White
3	14	Cloud White / Collegiate Green / Blue Burst
4	14	Core Black / Cloud White / Core Black
5	14	Core White / Core Black / Silver Metallic
6	14	Core Black / Lucid Red / Grey Two
7	14	Pulse Blue / Core Black / Cloud White
8	14	Pulse Lime / Core Black / Screaming Green
9	14	Lucid Fuchsia / Core Black / Lucid Pink
1	15	Red Stingray
2	15	Green Stingray
3	15	All Range
4	15	Year of the Snake
5	15	Ice Chips
6	15	Interstellar
7	15	Family Love
8	15	Yin Yang
9	15	Mint
10	15	Chemical Reaction
1	16	Miami Night
2	16	Champagne
3	16	Liberty
1	17	Crossing Time
1	18	Anthracite / Orange Pearl / Barely Green / Pale Ivory
2	18	Ghost Green / Electric Green / Black
3	18	Black / Sail / University Red
4	18	Platinum Tint / Black / Particle Grey / Grey Fog / Vapor Green
5	18	White / Kinetic Green / Black
6	18	Seafoam / Spruce Aura / Arctic Orange / Apricot Agate
7	18	Off White / Sail
8	18	Pink Tint / Lava Glow / Hot Punch / Guava Ice
1	19	Mint Foam / Light Lemon Twist / Aquarius Blue
2	19	Solar Red / White / Vapor Green / Dusty Cactus
3	19	Off White / Light Bone
4	19	White / Black / Metallic Gold
5	19	White / Medium Ash / Hot Lava / Volt Glow
6	19	Black / Dark Grey / Field Purple / Laser Fuchsia
7	19	Blustery / Fireberry / Ghost Green / Diffused Blue / Armory Navy / Playful Pink
8	19	Pink Foam / Pinksicle / Hyper Pink / Photo Blue
9	19	Soft Pearl / Vivid Purple / Court Purple / Hyper Turquoise
10	19	White / Green Glow / Pink Foam / Baltic Blue
1	20	Coconut Milk / Pink Foam / Apricot Agate
2	20	White / Astronomy Blue / Hemp / Vintage Green
3	20	Black / Phantom-Light / Smoke Grey / Light Lemon Twist
4	20	Blue Beyond / Celestial Gold / Apricot Agate / Hyper Pink
5	20	Bold Berry / Light Lemon Twist / Dark Raisin / Baltic Blue
6	20	Rapid Teal / Black / Ale Brown / University Red
7	20	Summit White / Glacier Blue / Mint Foam / Hydrangeas / Light Chocolate
8	20	Light Lemon Twist / Total Orange / Light Army
9	20	Soft Yellow / University Gold / Dusty Cactus / Obsidian
10	20	University Red / Black / Jade Horizon / Celestial Gold
11	20	White / Game Royal / University Red / University Blue
12	20	Black / Coconut Milk / Black
1	21	Puma Red / Orange Glow / Fluorescent Orange / Purple Glimmer
2	21	Deep Orchid / Poison Pink
3	21	Pink Alert / Yellow Alert
4	21	Yellow Alert/Green Glare/Pink Alert
5	21	Black / Multi
6	21	Team Light Blue / Cool Mid Gray
7	21	Dark Amethyst / Orange Glow / Poison Pink / Electric Peppermint
8	21	PUMA Black / Electric Peppermint / Fluro Green Pes
1	22	White / White / White
1	23	Yellow / Brown / Pink
2	23	Beige / Black / Red
1	24	Linen / Ice Wine / Castlerock
2	24	Blue Oasis / Inkwell / Hi-lite
3	24	Neo Flame / Mercury Red / White
4	24	White / Linen / Dusk Shower
5	24	Sunfade Red / Dragon Berry / White
6	24	Light Blue / White
7	24	Black / White / Team Red
8	24	Pixel Green / Black and Neo Flame
1	25	Blue Burst / Cloud White / Aurora Ink
2	25	Cloud White / Core Black / Collegiate Green
3	25	Screaming Green / Core Black / Pulse Lime
4	25	Purple Burst / Core Black / Solar Red
5	25	Solar Red / Core Black / Lucid Lemon
6	25	Warm Vanilla / Lucid Red / Warm Sandstone
7	25	Silver Metallic / Core Black / Lucid Blue
8	25	Core Black / Cloud White / Cobalt Blue
9	25	Silver Pebble / Legend Ivy / Impact Orange
1	26	Cyber/ Sundial / Lightning / Bright Mandarin
2	26	Black / Black / Black
3	26	White / Pure Platinum / Black
4	26	Dusty Cactus / Royal Pulse / Green Frost / White
5	26	Hyper Violet / Green Strike / Bold Berry / Black
6	26	Lightening / Hyprpnk / Uniblu
7	26	Lime Blast / Hyper Pink / Pure Platinum / Metallic Silver
8	26	Light Khaki / Alabaster / Total Orange / White
9	26	Black Raspberry / Hot Punch / Hot Fuchsia / Aster Pink
10	26	Black / University Red / Team Red
11	26	Dusty Cactus / Obsidian / Bright Crimson
12	26	Smoke Grey / Wolf Grey / Dark Smoke Grey / Stadium Green
13	26	Racer Blue / White / Light Photo Blue / University Blue
1	27	Team Red / White
2	27	Blue / Blue
3	27	Limelight / Azure / Dragon Berry
4	27	NB Navy / Heron Blue / Copper
5	27	Lilac Glo / Sky Blue / Pixel Green
6	27	Mercury Red / White / Gold
7	27	White / Quartz Grey
8	27	Passion Fruit / Lilac Glo / Violet Crush
9	27	Ultra Pink / Real Pink / Lilac Glo
10	27	Black / White / Blast Red
11	27	Bleached Lime Glo / Pixel Green  /Hi-Lite
12	27	Triple Black
13	27	Team Navy / White
1	28	Black / Yellow
2	28	Brown / Orange
3	28	Pass the Torch
4	28	Purple / Pink
5	28	Blue / Black
6	28	Red/Grey/White
7	28	Multi / Multi / Multi
8	28	Celestial Guardian
9	28	Black / Pink / Volt
10	28	Blue / Orange / White
1	29	White / Grey Fog / Siren Red / Black
2	29	White / Volt Glow / Green Glow / Black
3	29	Pink Prime / Black/Hyper Jade / University Gold
4	29	Metallic / White
5	29	Vapour Green / Cone / Psychic Purple / Hyper Jade
6	29	Black / Hyper Jade / Pink Prime / Hyper Grape
7	29	Purple Comet / Midnight Navy / Hydrogen Blue / Hot Punch
8	29	Red / Black / White
9	29	Black / White / Red
1	30	White / Black / University Red
2	30	Gym Red / White
3	30	University
4	30	White / Black / Dark Powder Blue
5	30	Sail / Black / Game Royal
6	30	Black / Sail
1	31	Silver Pebble / Core Black / Wonder Beige
2	31	Metal Grey / Dove Grey / Cloud White
3	31	Red / Black / Orange Glow
4	31	Lucid Lime / Aurora Ink / Core Black
5	31	Arctic Fusion / Core Black / Cloud White
1	32	Light Wild Mango / Black/Laser Orange / Action Green
2	32	Bold Berry / Hyper Violet  / Black / Green Strike
3	32	Black / University Red
4	32	Dusty Cactus / Bright Crimson / Obsidian
5	32	Blue / Yellow / Lightning
6	32	Green / Black / Grey / Black
7	32	Coconut Milk / Sail / University Red / Aster Pink
8	32	White / Wolf Grey / Black
9	32	Ashen Slate / Armory Navy / Glacier Blue / Laser Orange
1	33	Multi-Color / Multi-Color
2	33	Beige / White
3	33	Halo Gray / Black
4	33	Black / Hyper Green / Black
5	33	Stream / Metallic Gold / Metallic Silver
6	33	Red / Ares Red
7	33	Black / Team Royal / Taxi
8	33	White / Midnight Navy / Red
9	33	Midnight Navy / White / Red
10	33	Purple / Pink
11	33	White / Black
1	34	305
2	34	Avocado
3	34	Announcement
4	34	Cherry Blossom
5	34	Game Blue
6	34	Satori
1	35	Flammable Ice
2	35	Wade X Adam Lister
3	35	Announcement
4	35	Chemistry
5	35	Satori
1	36	White Hot
2	36	Blossom
3	36	Overtown
4	36	Liberty
5	36	Sunshine State
6	36	Gold & Purple
7	36	Announcement
8	36	Hall of Fame
9	36	Team No Sleep
1	37	Aurora Black / Solar Red / Lucid Blue
2	37	Cloud White / Silver Metallic / Cloud White
3	37	Acid Orange / Core Black / Orange Tint
4	37	Purple Burst / Core Black / Lucid Lemon
5	37	White / Screaming Green / Lucid Blue
6	37	Lucid Red / Solar Green / Vivid Green
7	37	Lucid Red / Core Black / Screaming Green
8	37	Cloud White / Solar Red / Team Solar Green
9	37	Lucid Lemon / Core Black / Silver Metallic
10	37	Lucid Lime / Solar Red / Lucid Blue
11	37	Cobalt Blue / Core Black / Blue Spark
12	37	Team Colleg Gold 2 / Core Black / Cloud White
13	37	Lucid Blue / Core Black / Cloud White
14	37	Core Black / Cloud White / Matte Silver
15	37	Team Power Red 2 / Core Black / Cloud White
1	38	Apple Green / White / Yellow Strike
2	38	Coconut Milk / Baroque Brown / Light Bone / Sail
3	38	Citron Tint / Alabaster / Laser Fuchsia / Royal Pulse
4	38	Pink Foam / Elemental Pink / Black
5	38	White / Pinksicle
6	38	Light Smoke Grey / Fresh Mint / Vapour Green
7	38	White Noise
8	38	Iron Grey / Hot Punch / Sail
9	38	Apricot Agate / Washed Coral / Washed Teal / Light Bone
10	38	Baltic Blue / Light Crimson / Glacier Blue / White
11	38	White / Black / Photon Dust / Volt
12	38	Black / Grey / Black
13	38	Rattan / Metallic Gold / Khaki / Sail
14	38	Wolf Grey / Smoke Grey / Volt / Black
15	38	Light Bone / Calypso
16	38	Gorge Green / Volt / White
17	38	Football Grey / Glacier Blue / Astronomy Blue / White
18	38	Game Royal / Deep Royal Blue / Photo Blue / White
19	38	Red / White / Navy
20	38	Cave Purple / White / Black Raspberry
21	38	University Red / Gym Red / Bright Crimson / White
22	38	College Navy / Dark Obsidian / Photo Blue / White
1	39	White / Phantom / Total Orange / Racer Blue
2	39	Laser Orange / Metallic Silver / Vast Grey / Black
3	39	Pure Platinum / White / Light Lemon Twist / Glacier Blue
4	39	Red Stardust / Metallic Silver / Pink Tint / Pale Ivory
5	39	Dusty Cactus / Concord / Green Frost / Sundial / White / Laser Orange
6	39	Ashen Slate / Sail / White / Anthracite
7	39	Black / Coconut Milk  /Black
8	39	Anthracite / Ashen Slate / Metallic Gold / Light Wild Mango
9	39	White / Black / Royal Pulse
1	40	Black / Black
2	40	White / Black / Light Bone
3	40	Pink Tint / White / Platinum Tint / Taupe Grey
1	41	305
2	41	Shining
3	41	ASG Yellow
4	41	Announcement
5	41	Score Champion
6	41	ASG Green
7	41	Family Love
1	42	White / Purple
2	42	Black / University Gold
3	42	White / White / White
4	42	White / Radiant Emerald / White
5	42	White / Court Purple / White
6	42	University Red / University Red / White
7	42	Wolf Grey / Wolf Grey / White
8	42	College Navy / College Navy / White
9	42	White / Metallic Gold / Black
10	42	Stadium Grey / Metallic Silver / Tour Yellow
1	43	White / Barely Grape / Pink Foam / Light Smoke / Grey
2	43	Hot Punch / Photon Dust / Black / Dark Smoke Grey
3	43	Light Bone / Picante Red / Sail / Iron Grey
1	44	Green Glare / Galactic Gray
2	44	White / Silver
3	44	PUMA Team Royal - Dewdrop
4	44	Yellow Sizzle / Fluro Peach Pes / Cobalt Glaze / Luminous Blue
5	44	Shadow Gray/ Smokey Gray
6	44	Bright Aqua / Fluro Pink Pes / PUMA Black
7	44	Lavender Alert
1	45	Plum Fog / Sail / Black
2	45	Light Bone
3	45	Black / Sail / Dark Ash
1	46	Neo Flame / Airyteal / Blaze Orange
2	46	Black / Gold
3	46	Slate Grey / Angora
4	46	Team Sky Blue / Sea Salt
5	46	HI-Pink / Black / Neo Flame
6	46	White / Black / Red
7	46	Purple Punch / Signal Pink
1	47	Royal Blue / Opti Yellow / Black / Fuchsia / Vivid Purple / Guava Ice
2	47	Coconut Milk / Viotech / Doll / Light Laser Orange
3	47	Light Iron Ore / Black / Sail / Metallic Gold
4	47	USA
5	47	Barely Volt / Rosa Hyper / Laranja Total / Azul Baltic
6	47	Wolf Grey / White / Black
7	47	Black / Vintage Green / Night Forest / Bright Crimson
8	47	Red / Black / Black
9	47	Dusty Amethyst / Hydrangeas / Amethyst Tint
10	47	Safety Orange / Sundial / Total Orange
11	47	White / Black / Game Royal / White
12	47	University Gold / Safety Orange / University Blue / Black
13	47	Pink Foam / Beyond Pink
14	47	University Red / White / University Red
15	47	Aquarius Blue / Glacier Blue / White / Metallic Silver
16	47	Black / Atomic Violet / Hyper Grape / White
17	47	Sesame / Rough Green / Monarch / University Gold
18	47	Black / White / Black
19	47	Navy / White / Black
2	116	Blue / Blue
1	48	Red / Core Black / Silver Metallic
2	48	Feather Grey / Ivory / Core Black
3	48	Purple Burst / Core Black / Silver Metallic
4	48	Core Black / Cloud White / Cobalt Blue
5	48	Hazy Copper / Core Black / Lucid Lemon
6	48	Cloud White / Core Black / Better Scarlet
7	48	Green / Core Black / Lucid Pink
8	48	Cloud White / Halo Silver / Core Black
9	48	Lucid Pink / Solar Red / Impact Orange
10	48	Lucid Blue / Easy Yellow / Lucid Blue
11	48	Crew Yellow / Core Black / Silver Metallic
1	49	Light Zitron / Aurora Green / Atomic Pink / Sail
2	49	Mint Foam / Lava Glow/ Black / Hyper Jade / Key Lime
3	49	Red / White / White
4	49	Light Soft Pink / Mint Foam / Smoke / Lilac / Medium Soft Pink / Copa
5	49	White / Electric Green / Black / Wolf Grey
6	49	White / Black / Hyper Pink / Volt
1	50	Artist on Court
1	51	Miami Heat Home
2	51	Grey Red
3	51	Jade
4	51	BigFace Coffee
5	51	Bred
6	51	Care
7	51	Tennis Ball
8	51	Beige Green
9	51	AO 2024
1	52	Rattlesnake
2	52	Cargo Khaki / Phantom
3	52	White / Magic Ember
4	52	Purple / Yellow / Purple
5	52	Sunrise
6	52	Sesame / Black / Orange
7	52	Orange / Court Purple / Taupe Grey
8	52	White / Black
9	52	Blue / Multi-Color
10	52	Barely Grey / Metallic Silver / Moon Particle / Pale Ivory
11	52	Sail / Court Purple / Clay Orange
12	52	Grey / Multi
13	52	White / Varsity Red / Varsity Blue
14	52	Beige / Brown / Black
15	52	Black / Black / White / Clay / Orange
16	52	Clay Orange / Light Silver / Dark Stucco
17	52	Black / Hemp / Metallic Red / Bronze
18	52	Mirage
1	53	Mod Gray / Castlerock / Sonic Yellow
2	53	Capri / Red Solstice / White
3	53	Black / Beta / White
4	53	High Vis Yellow / White
5	53	Circuit Teal / Sky Blue / Metallic Gold
6	53	White / Distant Gray / Metallic Silver
7	53	Celeste / Black / Metallic Rose
1	54	Black/ Ice Wine / Infield Clay
2	54	Moonbeam / Linen / Signal Pink
3	54	Nb Navy / Bleached Lime / Sea Salt
4	54	Cyber Jade / Pixel Green / Black
5	54	Electric Indigo / Castlerock
6	54	Black / True Red
7	54	White / light chrome blue
1	55	Smoke Grey / Hot Fuchsia / Hyper Pink / Black
2	55	Hyper Pink / Metallic Silver / Pink Foam / Black
3	55	Sail / Light Khaki / University Red / Ironstone
4	55	Siren Red / Summit White / Atomic Pink / Black
5	55	Washed Coral / Dusty Cactus / Metallic Silver / Chalk
6	55	Sail / Light Bone / Metallic Silver / Smoke Grey
7	55	White / Sport Red / Obsidian
8	55	Ashen Slate / Baltic Blue / Metallic Gold / Football Grey
9	55	Volt / Black
10	55	Black / Iron Grey / Dark Smoke Grey / White
11	55	Sea Glass / Metallic Gold / University Red / Oil Green
12	55	White / Metallic Silver / Light Lemon Twist / Glacier Blue
13	55	Blue Fury / Metallic Silver / Tangerine Tint / Black
14	55	Black / Vintage Green / Bicoastal/Malachite
15	55	Vapor Green
16	55	Glacier Blue / Bright Mandarin / Ashen Slate / Light Armory Blue
17	55	Barely Green / Sail / Safety Orange / Jade Ice
18	55	White / Black
19	55	Royal Pulse / Light Wild Mango / Plum Dust / Sail
20	55	Grey / Black/Grey
21	55	Picante Red
1	56	Orange / Crimson Tint
2	56	Coconut Milk / Atmosphere / Hyper Pink / Black
3	56	Siren Red
4	56	Black / Anthracite / Gamma Blue / Particle Grey
5	56	White / Metallic Gold
1	57	Core Black / Grey Six / Core Black
2	57	Core Black / Cloud White / Dove Grey
3	57	Cloud White / Blue Burst / Silver Metallic
4	57	Semi Green Spark / Aurora Black / Cloud White
5	57	Metal Grey / Cloud White / Grey Four
6	57	Lucid Lemon / Cloud White / Silver Green
7	57	Core Black / Solar Red / Silver Metallic
1	58	White / Photon Dust
2	58	Sea Glass / Olive Aura / Light Wild Mango / Oil Green
3	58	Glacier Blue / White / Photon Dust / Metallic Silver
4	58	Barely Green / Washed Coral / Dusty Cactus / Black
5	58	Summit White / Picante Red / Football Grey / Metallic Silver
6	58	Black / Anthracite / Green Strike / Barely Volt
7	58	Light Smoke Grey / Dark Grey / Photon Dust
8	58	Black / Alabster
9	58	White / Black / Black
10	58	Photon Dust / Light Crimson / White / Black
11	58	Sail / Light Lemon Twist / White / Smoke Grey
12	58	White / Black
13	58	Black / White
14	58	Oil Green / Spring Green / Light Lemon Twist / Sail
15	58	White / Sport Red / Obsidian
16	58	Iron Grey / Baltic Blue / Football Grey
17	58	Black / University Red / Iron Grey / White
18	58	Light Wild Mango / Hot Fuchsia / Plum Dust / White
19	58	Coconut Milk / Mineral / Light Orewood Brown / Jade Ice
20	58	Volt / Barely Volt / Anthracite
21	58	University Red / Gym Red / White
22	58	Game Royal / Deep Royal Blue / White
23	58	College Navy / Dark Obsidian / Thunder Blue / White
24	58	Court Purple / White
25	58	Photon Dust / Pink Blast / Dynamic Turquoise / White
1	59	White / Black / Legend Blue
2	59	White / Arctic Punch / Black
3	59	Black / White / Anthracite / Habanero Red
4	59	Black / Anthracite / Sail / Taxi
5	59	White / Black / University Red
6	59	White / Pink / White
7	59	Phantom / Sand Drift / Sail / Game Royal
8	59	Stone Blue / Mystic Navy / Midnight Navy / Bleached Coral
9	59	White / Sail / Black / Gym Red
10	59	Black / Anthracite / Coconut Milk / Cyber
1	60	Core Black / Cloud White / Green Spark
2	60	Cloud White / Core Black / Blue Burst
3	60	Semi Spark / Core Black / Cloud White
4	60	Solar Red / Core Black / Lucid Lime
5	60	Putty Grey / Core Black / Lucid Lemon
1	61	Lucid Blue / Green / Lucid Blue
2	61	Cloud White / Core Black / Green Spark
3	61	Acid Orange / Core Black / Acid Red
4	61	Arctic Fusion / Core Black / Cloud White
5	61	Core Black / Carbon / Lucid Lemon
6	61	Wonder Clay / Preloved Scarlet / Core Black
1	62	Puma White / Puma Silver
2	62	Sunset Glow / Electric Peppermint
3	62	Passionfruit / PUMA Green / Peach Fizz
4	62	Bright Aqua / Ravish
5	62	Silver Mist / Gray Fog
6	62	Puma Black / All Time Red
1	63	Hyper Green / Black
2	63	Hyper Green / Rough / Flash Light
3	63	Provence Purple / Black / Nova Orange
4	63	White / Taxi / Versa Blue
1	64	Los Angeles
2	64	Origin
3	64	Sunshine State
4	64	Silver
5	64	'White Blue'
6	64	Announcement
1	65	Solar Red / Cloud White / Core Black
2	65	Team Maroon 2 / St Desert Sand / Core Black
3	65	Bright Cyan / Core Black / Blue Rush
4	65	Semi Blue Burst / Semi Flash Aqua / Crystal White
5	65	Lucid Lemon / Core Black
6	65	Core White / Victory Blue / Crystal White
1	66	Bright Sky / Team Sky Blue / White
2	66	Neo flame / cobalt / true yellow
3	66	Sunflower / Poppy / Neo Flame
4	66	White / Black
5	66	Angora / Bone
6	66	Kelly Green / Palm Leaf
7	66	Optic White / Purple Fade / Black
8	66	Quartz grey / bleached lime glo
1	67	Photo Blue / Vapor Green / Laser Orange / Laser Fuchsia
2	67	Nobility
3	67	Violet Dust / Melon Tint / Purple Cosmos
4	67	Azul Glacier / Verde Stadium / Rosa Beyond / Coconut Milk
5	67	Oil Green / Volt / Volt
6	67	Ember Glow / Elemental Gold / Campfire Orange
7	67	Light Bone / Coconut Milk / Dark Russet / Campfire Orange
8	67	White / Black / Bicoastal / Photon Dust
9	67	Black / Iron Grey / Oil Green / Metallic Pewter
10	67	Barely Grape / Lilac Bloom / Summit White / Light Armory Blue
11	67	Black/Particle Grey/Wolf Grey/Pink Rise
12	67	Pink / Multi Color
13	67	Teal / Purple / Silver
14	67	Cool Grey
15	67	Melon Tint / Light Bone / Saturn Gold
16	67	Bright Crimson / Gym Red
17	67	Armory Navy / Malachite / Verde Spring / Verde Strike
1	68	Optic White / Team Red
2	68	Grey
3	68	Neo Flame / Team Red / Team Royal
4	68	Lemon Zest / Bleached Lime
5	68	Optic White / Cobalt / True Red
6	68	Black
7	68	White / White
8	68	Optic White / Team Navy
9	68	Green / Yellow / Grey
10	68	Black / White
11	68	Bright Sky / Aura / Summer Aqua
12	68	Optic White / Mercury Red / Gold
13	68	Team Sky / Blue / Spice blue / Team Royal
1	69	Half Blue / University Blue
2	69	Black / Vivid Purple / Barely Volt / Solar Red
3	69	White / White
4	69	Bleached Coral / Pale Ivory / Glacier Blue / Crimson Tint
5	69	Football Grey / Black / Flash Crimson
6	69	Fresh Paint
7	69	Black / White / Pear / Light British Tan
8	69	Pinksicle / Pink Glow / Pink Spell
9	69	Mint Foam / Psychic Purple / Flash Crimson / Concord
10	69	Black / White / Laser Orange / Citron Pulse
11	69	Black / White / White
1	70	Water Rhyme
2	70	Bay Area Fog
3	70	Bay Area Phantom
4	70	Sailboat
5	70	Looney PE
6	70	Captain's Log
7	70	Black White
8	70	SANY
1	71	Navy / White
2	71	Light Iron Ore / Gum
3	71	Midnight Navy / University Gold / Light Smoke Grey / Hyper Royal
4	71	Barely Grape / Hyper Violet / Light Bone / Obsidian
5	71	White / Dusty Cactus / Obsidian
6	71	Black / Apricot Agate  /White
7	71	Light Bone / Vapor Green / Swan / Anthracite
8	71	Black / Black / White
9	71	Game Royal / Game Royal / White
10	71	Branco / Bright Mandarin / Rosa Aster
11	71	Black / University Red / White
12	71	Multi Color / Multi Color / Baltic Blue
13	71	White / Aluminium / Thunder Blue
14	71	White / Light Smoke Grey / Black
15	71	Black / Volt / White
16	71	Total Orange / Laser Fuchsia / Vapor Green / Thunder Blue
17	71	Cool Grey / Black / White
18	71	Armory Navy / Green Frost / Bicoastal / Cyber
19	71	Black / University Red / Lime Blast / White
20	71	Green Glow
21	71	Black / Field Purple / University Gold
22	71	Field Purple / Dusty Cactus / Light Lemon Twist / White
23	71	Easter
24	71	Sail / Bicoastal / Campfire Orange / Safety Orange
25	71	Ashen Slate / Diffused Blue / University Blue / White
26	71	White / Black / University Red / Metallic Silver
27	71	Light Crimson / Bright Crimson / Gym Red / White
28	71	White / University Red / Black
29	71	Field Purple / Field Purple / White
1	72	Buzzer Beater
2	72	Miami Nights
3	72	Dreamer
4	72	Liberty
5	72	Galaxy
6	72	Heat
1	73	Arctic Night / Core Black / Acid Orange
2	73	Team Dark Green / Gold Metallic / Arctic Fusion
3	73	Pulse Mint / Silver Metallic / Silver Green
4	73	Lucid Cyan / True Blue / Lucid Cyan
5	73	Core Black / Solar Red / Core Black
6	73	Wonder Beige / Grey Five / Wonder White
7	73	Wonder Beige / Grey Five / Wonder White
8	73	Core Black / Cloud White / Carbon
9	73	Cloud White / Silver Metallic / Crystal White
10	73	Better Scarlet / Core Black / Bright Red
11	73	Orbit Grey / Core Black / Crystal White
12	73	Grey Two / Preloved Ink / Grey One
13	73	Off White / Preloved Green / Core Black
14	73	Off White / Vivid Red / Core Black
15	73	Acid Orange / Spark / Preloved Scarlet
16	73	Shadow Brown / Core Black / Off White
17	73	Semi Blue Burst / Royal Blue / Sky Tint
1	74	Fluro Green / PUMA Green / Fluro Yellow
2	74	Purple Glimmer / Green Gecko
1	75	Someday
2	75	Renew with one degree beyond
3	75	Ice Blade
4	75	Jimi
5	75	Winning Moment
6	75	Backyard
7	75	Be Water
8	75	Self Reflection
9	75	White Light Blue
1	76	White / Black
2	76	Lemon Ice / Metallic Gold / Red
3	76	Bruce Lee Fire
4	76	White / Red
5	76	Black / Jet Grey / Red
6	76	Dub Nation
7	76	Bruce Lee Wind
8	76	Blue / Sky Blue
9	76	White / Halo Grey
10	76	White / Black
11	76	White / Midnight Navy
12	76	Blue / White
1	77	Cone / Black / Brilliant Orange / Melon Tint
2	77	White / Black / Siren Red
3	77	White / University Red / Metallic Gold / Black
4	77	White / Metallic Gold / Pure Platinum
5	77	Blue / Light Marine
6	77	Aqua
1	78	Stadium Green / Hyper Violet / Barely Green / Playful Pink / University Gold
2	78	Deep Royal
3	78	Black / Dark Smoke Grey / Coconut Milk / Black
4	78	Black / Metallic Silver / Bright Crimson
5	78	University Red / White
6	78	White / Gold / Red
7	78	White / Black
8	78	Green / Mint Foam
9	78	Field Purple / Rush Fuchsia
10	78	Wolf Grey / White
11	78	Black / Vivid Purple / Bright Crimson / Metallic Silver
12	78	Red / Ember Glow
13	78	Game Royal / White
14	78	Black / White
1	79	Black / White / White / Black
2	79	White / Light Laser Orange / Soft Yellow / Light Photo Blue
3	79	Photo Blue / Barely Volt / White / Black
4	79	White / White / White
5	79	Fossil Stone / Desert Berry / Guava Ice / Celestial Gold
6	79	White / Black
7	79	Phantom / Ice Peach / Blue Lightning
8	79	Black / Pure Platinum / Wolf Grey / University Red
9	79	Malachite / Medium Soft Pink / Coconut Milk / Malachite
10	79	Noble Red / Ice Peach / Desert Berry
11	79	University Red / White
12	79	Black / Black / Black
13	79	Geode Teal / Purple Ink / Jade Ice / Stadium Green
14	79	Soft Yellow / Barely Volt / Light Laser Orange / Green Shock
1	80	Stars & Stripes
2	80	Ice Cream Special Box
1	81	Wolf Grey / White / Wolf Grey
2	81	Beyond the game
3	81	Black / Photo Blue / Emerald Rise
4	81	Black / Emerald Rise / Photo Blue
5	81	Malachite / Lightning / Stadium Green / Black
6	81	Luminous Green / Luminous Green / Black
7	81	Brown / Green / Cargo Khaki
8	81	White / Photon Dust
9	81	Light Bone / Laser Orange / Ashen Slate / Coconut Milk
10	81	Jade Ice / Black / Guava Ice / Lilac Bloom
11	81	White / Football Grey / Black
12	81	Apple Green / White / Apple Green
13	81	University Gold / White / University Gold
14	81	Medium Soft Pink / Total Orange / Laser Orange / Oil Green
15	81	Black / White / Black
16	81	Oxygen Purple / Lemon Chiffon / Ice Peach / Black
1	82	White / Malachite / Pure Platinum / Vintage Green
2	82	Track Red / Metallic Silver / Mystic Red
3	82	Black / Multi-Color / Picante Red / Black
4	82	Black / White / Pink Foam / Pure Platinum
5	82	All Star
6	82	Luminous Green / Vivid Sulfur / Sail / Barely Volt
7	82	White / Sail / Safety Orange / White
8	82	White / Black
9	82	Cyber / White / Siren Red / Vivid Sulfur
10	82	Football Grey / Glacier Blue / Light Armory Blue / Football Grey
11	82	Wembanyama
1	83	Nigerian Nightmare
2	83	Black / Pure Platinum / Wolf Grey / University Red
3	83	Noble Red / Desert Berry / Guava Ice / Ice Peach
4	83	Soft Yellow / Photo Blue / White
5	83	White / Black / White
6	83	Light Orewood Brown / Medium Soft Pink / Blue Lightning / Emerald Rise
7	83	White / White / Black
8	83	Wolf Grey / White / Wolf Grey
9	83	Gym Red / Metallic Gold / Fir / Court Purple / Flat Opal / White
10	83	Black / Fuchsia Dream / Baltic Blue
11	83	Photo Blue / Metallic Silver / Barely Volt / Black
12	83	Blue Lightning / Phantom / Ice Peach / Emerald Rise
13	83	Game Royal / White Black
14	83	Black / White
15	83	Fossil Stone / Celestial Gold / Alabaster
16	83	University Red / White / Black
17	83	Green / Light Photo / Blue
18	83	Black / White / Pure Platinum
1	84	Viotech / Hyper Violet / Bold Berry / Metallic Red Bronze
2	84	Oil Green / Metallic Gold / Light Wild Mango / Sea Glass
3	84	White / Black / Orange
4	84	Orange / Red / Black
5	84	Vintage Green / Black / Fir / Safety Orange
6	84	Metallic Silver / Metallic Silver / Light Photo Blue / Black
7	84	Pearl White / Vivid Sky
8	84	Oxyygen Purple / Coral Chalk
9	84	Wolf Grey / Luminous Green / Blue Tint / University Blue / White
10	84	Black / White / Blue Tint / Black
11	84	Mica Green / Jade Ice / Industrial Blue / Bright Crimson
12	84	Black / White
13	84	Black / Anthracite / Picante Red / Metallic Black
14	84	Summit White / Sail / Black / White
15	84	Light Armory Blue / Bicoastal
16	84	Light Fusion Red / Noble Red / Track Red / Bright Crimson
17	84	Black / White / Glacier Blue / Black
18	84	Barely Grape / Lilac Bloom / Dusted Clay / Metallic Red Bronze
19	84	White / Midnight Navy / University Red
20	84	Photon Dust / Taupe Grey / Wolf Grey / Metallic Red Bronze
1	85	Oxygen
2	85	Dreamer
3	85	Nightlight
4	85	White
1	86	Laser Orange / Black / Light Orewood Brown / Hyper Jade
2	86	Black / Volt
3	86	Wolf Grey / Speed Yellow / Black / Hyper Jade
4	86	Bright Mango / Black / Barely Green
5	86	White / University Red / Amarillo / Black
6	86	Black / Grand Purple / Aurora Green / Glow
7	86	Tropical Twist / Metallic Gold / Washed Teal / Barely Green
8	86	Nebula
9	86	White / Game Royal / Pure Platinum
10	86	White / Coconut Milk
11	86	White / University Red / Pure Platinum
12	86	Black / Bright Crimson / Wolf Grey / White
13	86	White / Black
14	86	White / Green Strike / Black
15	86	White / Hyper Pink
1	87	Club Navy / Intense Red / Golden Fog / Yellow Blaze / Silver Mist
2	87	Lapis Lazuli / Cold Green / PUMA Black
3	87	Sunset Glow
4	87	Aquatic / Sparkling Green
5	87	Pink Fruit
6	87	Elektro Blue / Sport Yellow
7	87	For All Time Red / Bright Aqua
8	87	Gizmo and Stripe
9	87	Bright Aqua / Lime Squeeze
10	87	Fluro Green Pes
11	87	Childhood Dreams
12	87	Poison Pink / PUMA White
13	87	PUMA Black / Active Red
14	87	PUMA White / PUMA Black
15	87	PUMA White / PUMA Navy-Lime
16	87	Bold Blue / Dark Clove / Pro Green / Fire Orchid / Koral Ice
17	87	Porsche
18	87	Quarry / Puma White
19	87	White / Blue / Yellow / Red
20	87	Lime Squeeze / PUMA White
21	87	Clyde's Closet
22	87	Fresh Mint / Olive Green
23	87	PUMA White / For All Time Red
24	87	RJ Barrett
25	87	Team Violet / PUMA Black
26	87	Team Violet / Black / Pink Alert
1	88	Madhouse
2	88	Dark Matter
3	88	Magic Potion
4	88	Inherit
5	88	First Year
6	88	Decomposition
7	88	Immortality
8	88	Allergy
9	88	Black Golden
1	89	Flat Silver / Varsity Red / Cement Grey / Pure Platinum
2	89	Summit White / Pure Platinum / White / Black
3	89	Jade Ice / Emerald Rise / Clear Jade / White
4	89	Phantom / Bright Cactus / Light Bone / Medium Soft Pink
5	89	Rush Fuchsia / Fuchsia Dream / Black / Light Lemon Twist
6	89	Pale Vanilla / Topaz Gold / Sanddrift / Sea Coral
7	89	Black / Sail / Pink Spell / Brilliant Orange
8	89	Sesame / Guava Ice / Red Stardust / Deep Jungle
9	89	Green / Grey / Red
10	89	Melon Tint / Campfire Orange / Bright Mandarin / Coconut Milk
11	89	Black / Anthracite / White / Summit White
12	89	Barely Volt / Coconut Milk / Alchemy Pink / Anthracite
13	89	Phantom / Sail / Light Orewood Brown / Dusty Cactus
1	90	Wing Vein
2	90	Miami
3	90	Panda
4	90	Moment
5	90	Latte
1	91	Granola / Puma Black
2	91	Urban Red / Intense Red
3	91	Water
4	91	White / Red
5	91	White / Grey
6	91	White / Black
7	91	White / Blue
8	91	Black / Yellow / Purple
9	91	Passion Fruit / Club Red
1	92	Ashes
2	92	Sky
3	92	Water Blue
4	92	Lemon Yellow
5	92	Black
6	92	Dreamer
1	93	University Red / White
2	93	Denim
3	93	Zoo
4	93	White / Total Orange / Black / Green Strike
5	93	Black / Wolf Grey / Anthracite / Metallic Silver
6	93	Stone Blue / University Red / Mystic Navy
7	93	Black / Anthracite / Green Strike
8	93	White / University Red / University Blue / University Gold
9	93	White / Grey
10	93	Black / University Red / Beach / Metallic Gold
11	93	Pink / Pink Tint
12	93	Black / White / Grey Fog
13	93	Lagoon Pulse / Psychic Purple / White / Pink Blast
14	93	Medium Grey / White / Gunsmoke
1	94	Energy
2	94	Family Love
3	94	Black Yellow
1	95	Wonder Orchid / Off White / Shadow Red
2	95	Core Black / Impact Orange / Team Real Magenta
3	95	Core Black / Ecru Tint / Preloved Blue
4	95	Wonder Beige / Off White / Orbit Grey
5	95	Core Black / Better Scarlet / Iron Metallic
6	95	Core Black / Acid Orange / Lucid Pink
7	95	Solar Green / Impact Orange / Core Black
1	96	Jet Black
2	96	Kiwi Fruit
3	96	Chinese Valentine's Day
4	96	Gulf Livery
5	96	Shufty
6	96	Moonlight Gray
1	97	Phantom / Rattan / Pale Ivory / Black
2	97	Bright Crimson / Black / Volt / White
3	97	Bright Concord / Black / Vivid Sulfur / Pink Prime
4	97	Pecan / Yellow Ochre / Phantom / Campfire Orange / Moon Fossil / Black
5	97	White / Light Liquid Lime / Pink Blast / Black
6	97	Black / White / Metallic Gold
7	97	White / Baltic Blue / Action Grape / Siren Red
8	97	Barely Volt / Black / Volt / Hyper Pink
1	98	University Red / University Red / White
2	98	Game Royal / Game Royal / White
3	98	White / White / Black
4	98	Black / Black / White
5	98	Midnight Navy / Light Laser Orange
6	98	USA
7	98	White / Turbo Green / University Red / Black
8	98	White / Light Smoke Grey / Black / Phantom / Light Bone / Photon Dust
9	98	Black / Light Silver / Coconut Milk / Vivid Sulfur
10	98	White / White / Black
11	98	Coconut Milk / Khaki / Black / Coconut Milk
12	98	Black / Iron Grey
13	98	Phantom / Action Green / Action Grape / White / Laser Orange / University Blue
14	98	Guava Ice / Med Soft Pink / White / Black
15	98	Ember Glow / Blue Lightning / Light Silver / Black
16	98	Black / Wolf Grey / Racer Blue / Bright Crimson / Bright Mandarin / Volt
17	98	Court Blue / Aquarius Blue / Black / Hyper Pink
18	98	Light Silver / Cyber / Cool Grey / Granite
19	98	Red Stardust
20	98	Chinese New Year
21	98	GAME ROYAL / BLACK / UNIVERSITY RED / PHOTO BLUE / BRIGHT CRIMSON / VIVID ORANGE
22	98	Bright Mandarin / Vapor Green / Light Armory Blue / Multi-Color
23	98	Lime Blast / Black / Hemp / Oil Green
24	98	Day One
25	98	Rapid Teal / Black / White / University Red / Monarch
26	98	Coconut Milk / Khaki
1	99	White / Black
2	99	Optic White / Black Cobalt
3	99	Alpha Predator
1	100	Blossom
2	100	CNY
3	100	Sunrise
1	101	White / Black
2	101	Black / Gravel
3	101	White / Still Water
1	102	Bright Yellow
2	102	Desert Pink
3	102	White Hot
4	102	First Born
5	102	Gray Boy
1	103	Black / Mint / White
2	103	White / Black
3	103	Tonic / Midnight Navy
1	104	Core Black / Cloud White / Core Black
2	104	Cloud White / Carbon / Metal Grey
3	104	Cloud White / Dash Grey / Blue Dawn
4	104	Solar Red / Cloud White / Team Shock Pink 2
5	104	Dash Grey / Cloud White / Lucid Blue
6	104	Core Black / Lucid Lemon / Blue Bird
7	104	Wonder Beige / Carbon / Wonder White
8	104	Metal Grey / Carbon / Better Scarlet
9	104	Dash Grey / Metal Grey / Bright Blue
1	105	Red / Blue / Black / Purple
2	105	Persian Violet / Imperial Purple / Glacier Ice / White
3	105	Dusty Cactus / Midnight Navy / Fierce Pink / Green Strike
4	105	Black / University Red / Metallic Gold
5	105	White / Black / Gold
6	105	White / Metallic Silver / Light Smoke Grey
7	105	University Red / Bright Crimson
8	105	Armory Navy / Sail / Metallic Silver / Light Silver
9	105	White / University Red / Metallic Silver / Black
10	105	Black / Tan / Olive
11	105	University Gold / Team Crimson / Light Bone
12	105	Black / Medium Soft Pink / White
13	105	Black / Wolf Grey / White / Light Bone
14	105	Red / Black / Grey / Black
15	105	Geode Teal / Melon Tint / Stadium Green / Campfire Orange
16	105	White / White
17	105	Blue / Blue Tint
18	105	Wolf Grey / Hyper Royal / Blue Lightning / Pink Spell
19	105	Ghost Green / Purple
20	105	Light Orewood Brown / Sesame / Sail / Coral Chalk
21	105	Wolf Grey / Iron Grey / Black / White
22	105	Multi-Color / Multi-Color
23	105	Light Orewood Brown / Washed Teal / Metallic Gold / Black
24	105	Mineral Blue / Sail / Light Wild Mango
25	105	Court Purple / Light Thistle Heather / University Gold / Black
1	106	Cloud White / Core Black / Cloud White
2	106	Wonder Blue / Impact Orange / Core Black
3	106	Better Scarlet / Core Black / Better Scarlet
4	106	Silver Metallic / Core Black / Grey One
5	106	Cream White / Carbon / Grey Four
6	106	Crew Yellow / Core Black / Crew Yellow
7	106	Core Black / Core Black / Off White
8	106	Flash Aqua / Cloud White / Flash Aqua
9	106	Royal Blue / Off White / Core Black
10	106	Lucid Fuchsia / Core Black / Lucid Fuchsia
11	106	Royal Blue / Cloud White / Royal Blue
12	106	Orbit Grey / Chalk White / Grey Four
1	107	Pink / White
2	107	Team No Sleep
3	107	305
4	107	Cotton Candy
5	107	Purple
6	107	Standard White / Black
1	108	White / Black / Siren Red
2	108	Black / Purple / Orange
3	108	Lapis/ Saturn Gold / Black / Crimson Bliss / Iced Lillac
4	108	Black / University Red / Dark Grey / Metallic Gold
1	109	Iron & Blood
2	109	'Black Multi'
3	109	Buzzer Beater
4	109	Dawn
5	109	Marqutte University
6	109	Miami Black
7	109	University Blue
8	109	Year of the Rabbit
9	109	Xi'an
10	109	Gold Medal
11	109	Miami
12	109	Coffee
13	109	Taiyuan
14	109	Purple Crystal
15	109	White Green
16	109	White Gold
17	109	Black Gold
18	109	Milestone
1	110	Black / White / Flat Pewter / University Red
2	110	White / Pink Blast / Photon Dust / Game Royal
3	110	White / Lagoon Pulse / Gold / Chile Red
4	110	White / Orange
5	110	Black / White / Copa / Light Liquid Lime
6	110	Orange / Black / White
7	110	White / Team Crimson / Black
8	110	Game Royal / University Blue / White / University Red
9	110	Black / White / Metallic Gold
10	110	Black / White / Purple Pulse / Dark Concord
11	110	Tour Yellow / Black / White / Black
12	110	Grey / Neon Green
13	110	Sail / Wolf Grey / Challenge Red / Schwarz
14	110	Gym Red / White/Black
1	111	Black / Electric Red
2	111	Macadamia Nut / Royal Blue
3	111	Black / Blue
4	111	White / Team Orange / Hi-Pink
5	111	Black / White
6	111	Summer Basketball
7	111	Black / Multi
8	111	Grey / Mint
9	111	Team Navy / White
10	111	Yellow / Black
11	111	Sea salt / team navy / turtledove
12	111	White / Grey
13	111	Spin Cycle
14	111	White / Grey
15	111	Grey / Black
16	111	Pixel Green
17	111	Cosmic Purple
18	111	Blue / Bright Sky
1	112	Dreamer
2	112	Lavender
3	112	Sunrise
4	112	Obsidian
5	112	Announcement
6	112	Ice Blood
7	112	Kinetic Energy
1	113	Signal Cyan / Cloud White / Shock Cyan
2	113	Cloud White / Vivid Red / Dash Grey
3	113	Cloud White / Core Black / Purple Rush
4	113	Red / Bright Red / Team Power Red
5	113	Court Green / Core Black / Cloud White
6	113	Core Black / Cloud White / Grey Six
7	113	Royal Blue / Cloud White / Core Black
8	113	Better Scarlet / White / Black
1	114	Dallas
2	114	Earth Day
3	114	Green / Purple / White
4	114	White / Yellow
5	114	Sweet
6	114	Toy
7	114	Green / White
8	114	Be Water
9	114	Lucky Rabbit
1	115	White Pink
2	115	Night Exercise
3	115	Lavender
4	115	Double Ninth Festival
5	115	Denver
6	115	Ren Min Bravo
7	115	Starting Point
8	115	Mid-Autumn Festival
9	115	Mint Green / White
10	115	Mysterious Powers
11	115	Light Blue / White
1	116	Gold / Black / Red
3	116	Wolf Grey / Black Gold
4	116	Shoes Purple Shade / White / Vintage Green
5	116	Black / After Burn
6	116	Sour Patch
7	116	White / Blue / Silver
8	116	Black / Blue / Red
9	116	Rose / Noir
10	116	Black / White
11	116	Midnight Navy / White
12	116	Pitch Grey / White
13	116	White / Black
14	116	Royal / White
15	116	Red / White
16	116	Hyper Green / Black
17	116	White / Metallic Gold
1	117	Core Black / Carbon / Grey Four
2	117	Core Black / Cloud White / Carbon
3	117	Blue / Semi Mint Rush
4	117	Cloud White / Grey One / Grey Two
5	117	Off White / Off White / Bliss
6	117	Impact Orange / Collegiate Gold / Core Black
7	117	Team Navy / Team Green / Team Colleg Gold
8	117	Vivid Red / Core Black / Team Victory Red
9	117	Dash Grey / Bliss Lilac / Grey Two
10	117	Team Power Red / Cloud White / Core Black
11	117	Purple Rush / Off White / Clear Aqua
12	117	Better Scarlet / Cream White / Shadow Red
13	117	Core Black / Team Colleg Gold 2 / Cloud White
14	117	Royal Blue / Cloud White / Team Navy
15	117	Team Navy / Cloud White / Core Black
16	117	Core Black / Carbon / Grey Three
1	118	Cloud White / Core Black / Matte Gold
2	118	Bliss Pink / Core Black / Pulse Magenta
3	118	Core Black / Better Scarlet / Off White
4	118	Pulse Lilac / Shadow Navy / Impact Orange
5	118	Core Black / Core Black / Team Solar Green
6	118	Sky Rush / Almost Blue / Pulse Blue
7	118	Cloud White / Team Mid Grey / Cloud White
8	118	Cloud White / Team Power Red / Cloud White
9	118	Cloud White / Crystal White / Zero Metalic
10	118	Legend Ink / Cloud White / Pulse Blue
11	118	Core Black / Better Scarlet / Bold Gold
12	118	Hazy Yellow / Almost Yellow / Team Green
13	118	Dash Grey / Halo Silver / Matte Silver
14	118	Cloud White / Royal Blue / Cloud White
1	119	Barely Green / Pale Ivory / Barely Green
2	119	Summit White / Pale Ivory / Light Smoke Grey
3	119	Phantom / Zinnia / Sangria
4	119	Summit White / Indigo Storm / Pure Platinum
5	119	Safety Orange / Citron Tint / Citron Tint
1	120	Fiery Coral / Ultra Orange
1	121	Dark Marina Blue / Barely Volt / Pink Gaze
2	121	White / Black / Barely Volt
3	121	Ironstone / Orange Trance / Cobblestone / Sail
4	121	Light Bone / Moon Fossil / Sail / Sweet Beet
5	121	Black / White / Black
6	121	Black / White / Light Smoke Grey
7	121	Action Grape / Pinksicle / Summit White
8	121	Laser Blue / Lilac / Light Menta
9	121	White / Oxygen Purple / Black / Stadium Green
10	121	Red / White / Red
11	121	White / Black / White
12	121	Vivid Purple / Laser Blue / Hyper Pink
13	121	Wolf Grey / Wolf Grey / White
14	121	All Star
15	121	University Red / Safety Orange / Black / Grey Fog
16	121	Navy / White / Navy
17	121	Royal / White / Royal
18	121	Pale Vanilla / Coral Chalk / Blue Lightning
19	121	Wolf Grey / White Cool / Grey-Black
20	121	Indigo Haze / Azul Tint / Azul Baltic / Roxo Space
1	122	Light Bone / Black / Dark Concord / Fire Red
2	122	Oreo
3	122	Black / True Red / Club Purple / Dark Charcoal / Okra
4	122	White / True Red / Light Silver / Black-Citrus
5	122	Ocean Cube / Flash Crimson
6	122	Black / Multi / White / Punch Air
7	122	Pale Vanilla / University Red
8	122	Black / Black
1	123	Black / Coconut Milk / Hyper Royal / Topaz Gold
2	123	Black / Black / University Red / University Gold / Light Smoke Grey
3	123	Grey / Light Silver
4	123	Total Orange / Green Strike / Hot Punch / Vivid Purple
5	123	Blue / Grey / Pink
6	123	White / Metallic Gold / Black / University Red / Wolf Grey
7	123	Laser Orange / Hyper Pink / White / Racer Blue
8	123	Black / White / Pure Platinum / Metallic Gold
9	123	Green Apple / Reflect Silver / University Red / Bright Crimson / Blue Chill
10	123	Violet Frost / Purple Pulse / Canyon Purple / Metallic Gold
11	123	Barely Green / Multi-color / Medium Soft Pink
1	124	Energy
2	124	Honey Peach
3	124	TEAM NO SLEEP
4	124	Lavender
5	124	Dynasty
1	125	White / Blue
2	125	White and Green
3	125	Course
4	125	CNY White Orange
5	125	Silver / White / Grey
6	125	Pink / Blue
7	125	Sunset Glow
8	125	Light / Grey
9	125	KOI
10	125	520 Pink White
11	125	Gentleman Black / White
12	125	Beige / Brown
13	125	Starry Night Grey Purple
14	125	Twelve-Water Chart
15	125	Sun Wukong
16	125	Yellow / White
1	126	Black/White/Anthracite/Bright Crimson
2	126	Black / Metallic Summit / White / Desert Berry
3	126	Leche Blue / Ashen Slate / Green Glow / Green Shock
4	126	Black / Phantom / Pure Platinum / Cone
5	126	Black / Off Noir / Racer Blue
6	126	Aura / Barely Green / Vivid Sky / Sail
7	126	Black / Anthracite / Football Grey / White
8	126	Devin Booker
9	126	Coconut Milk / Arctic Orange / Barely Green
10	126	Summit White / Metallic Summit White / White
11	126	Wolf Grey / White
12	126	Pure Platinum / Summit White / Track Red / Metallic Silver
13	126	Black / White
14	126	University Red / White
15	126	Game Royal / White
16	126	Track Red / Ember Glow / Sail / Football Grey
17	126	Pearl Pink / Multi Color
18	126	Industrial Blue / Jade Ice / Bright Crimson / Black
19	126	Blue / Orange
20	126	Photon Dust / Phantom / Celestine Blue / Black
21	126	Dare To Fly
1	127	Off Noir / Multi-Color / Black / Bright Crimson / Medium Blue / Worn Blue
2	127	Siren Red / Metallic Gold / Doll / Black
3	127	Wolf Grey / Pure Platinum / Cone / Black
4	127	Enamel Green / Multi-Color / Iron Grey
5	127	Desert Berry / Multi-Color / Pink Oxford
6	127	Black / Black
7	127	Coconut Milk / Summit White / University Red / Team Red
8	127	Off White / Multi-Color / Football Grey
9	127	Coconut Milk / Atmosphere / Mint Foam / Black
1	128	Puma White / Cherry Tomato
2	128	Black / Cherry Tomato
3	128	Puma White / Puma Black
4	128	Neon Citrus / Fizzy Melon
5	128	Puma White / Spectra Yellow
6	128	Puma Black / Deep Aqua
7	128	Eggshell Blue / Elektro Pool
8	128	Cool Blue / Winsome Orchid
9	128	Nimbus Cloud / Puma Black
10	128	Festival Fuchsia / Whisper White
11	128	Glacier Gray / Puma Black
12	128	Puma White / Deep Aqua
13	128	Bluemazing / Fiery Coral
14	128	Ice Blue / Black
15	128	Ocean Dive / Fiery Coral
1	129	Sun Stream / Blue Atoll
2	129	Puma Black / Sunset Glow
3	129	Lime Squeeze / Harbor Mist
4	129	Puma White / Puma Black
5	129	Fiery Coral / Lime Squeeze
1	130	Black / Pitch Gray
2	130	Black / Pitch Gray
3	130	Midnight Navy / Taxi
1	131	White / Black / Barely Volt / Grey Fog
2	131	Black / University Blue / Smoke Grey / White
3	131	Safety Orange / Grey Fog / University Red / Black
4	131	Sail / Rattan / Yellow Strike / Smoke Grey
5	131	Dark Marina Blue / Pink Gaze / Midnight Navy / Celestine Blue
6	131	White Royal / Pink / Orange
7	131	Black / Wolf Grey / University Red
8	131	Cobblestone / Ironstone / Magic Ember / Black
9	131	Black / Grey / White
10	131	Green / White / Lilac / Blue
11	131	Cool Grey / Wolf Grey / White / Glacier Blue
12	131	Coconut Milk / University Blue / Light Orewood Brown / Hot Punch
13	131	Hot Punch
1	132	White / Black
2	132	Dog Dad
3	132	White / Metallic Silver / Neo Turquoise
4	132	University Red / Metallic Gold
5	132	White / White / Fire Red
6	132	White / Total Orange / Black
7	132	Oreo
8	132	Racer Blue / Ghost Green / Racer Pink
9	132	Black / University Red / Dark Grey
10	132	Black / Metallic Silver / Signal Blue
11	132	Mint Foam / Court Purple / Dark Concord / Racer Pink
12	132	White / Blue
13	132	White/Pink Fire/Dynamic Turquoise
1	133	Florida
2	133	Element
3	133	Art
4	133	Lavender
5	133	Mint
6	133	Blossom
7	133	Test R1
8	133	Team No Sleep
9	133	White Hot
1	134	Black / Black / Anthracite
2	134	Phantom / Team Red / Light Crimson / Metallic Gold
3	134	White / Malachite / Sundial / Safety Orange
4	134	White / University Red / Doll / Doll
5	134	Black / Iron Grey / White / White
6	134	Sail / Phantom / Black / Copa
7	134	Phantom / Black / Atomic Green / Light Iron Ore
8	134	Black / Gym Red / University Red
9	134	Black / Black / White
10	134	Dutch Blue / Pinksicle / Dark Marina Blue / Sail / Sequoia
11	134	Mint Foam / Ghost Green / White / Cave Purple
12	134	White / University Gold / Midnight Navy
13	134	Phantom / Industrial Blue / Clear Jade
14	134	Black / Metallic Gold
15	134	Game Royal / University Blue / White
16	134	Black / Sail / Volt
17	134	Black / Black / Anthracite
1	135	UFO
2	135	Puma White / Silver
3	135	PUMA White / High Risk Red
4	135	PUMA White / Bluemazing
5	135	Volt
1	136	Night tide / Pink glow
2	136	Velocity Red / Ream Royal
3	136	White / Black
4	136	White / Bleach Blue
5	136	Pale Blue Chill / Deep Violet
6	136	Black / Green / Purple
1	137	Red / Black
2	137	White / Black / Dynamic Turquoise / Volt
3	137	Black / Siren Red / Black / Light Smoke Grey
4	137	Hyper Royal / White / Black
5	137	Black / Green Strike / Bright Crimson / White
6	137	Fossil / Team Gold / University Red / Sail
7	137	Off-White / Coconut Milk
8	137	Cool Grey
9	137	White / Metallic Gold / Vast Grey
10	137	Barely Green / Flash Crimson / Volt
11	137	Hope Diamond
12	137	Flax / Sesame / Fauna Brown / Muslin
13	137	White / Black / Photon Dust / Flash Crimson
1	138	Infrared / Black / White
2	138	Black / Washed Teal / Vivid Sulfur / Rush Pink
3	138	White / Hyper Jade / Metallic Silver / Black
4	138	Laser Blue / Electric Green / Electro Purple
5	138	Light Orewood Brown / Crimson Bliss / Black
6	138	White / Metallic / Silver
7	138	Black / White / Metallic Gold
1	139	Black / Halo Gray / White
2	139	White / Stream / Metallic Silver
3	139	Sandstorm / Halo Gray
4	139	Jet Gray / Black
5	139	Retro Pink / White
6	139	Mod Gray / Steel
7	139	White / Red
8	139	Vivid Lilac / White
1	140	Black / White
1	141	Phantom / Light Orewood Brown / University Gold / White
2	141	Barely Green / Barely Volt / Football Grey / Cave Purple
3	141	Black / Anthracite / Black
4	141	Plum Fog / Doll / University Red / Black
5	141	White / Pure Platinum / Black
6	141	Barely Green / Jade Ice / Metallic Red Bronze / Vapor Green
7	141	Black / White / Grey
8	141	Black / Anthracite / Brilliant Orange / Pink Spell
9	141	Black / Midnight Navy / White/Volt
10	141	Black / Valerian Blue / Desert Berry / Pinksicle
11	141	Black / Off Noir / Anthracite / White
12	141	Pure Platinum / Ashen Slate / Baltic Blue / Hyper Royal
13	141	White / Phantom / University Red / Team Red
14	141	Team Red / University Red / Wolf Grey
15	141	Picante Red / Team Red / Brilliant Orange / Jade Ice
16	141	White / Safety Orange / Sundial / Malachite
1	142	White / White / Black
2	142	Black / Chile Red / White
3	142	White / Metallic Gold / Black
4	142	Purple / Yellow / Multi
5	142	White / White / Wolf Grey / Black
6	142	Black / Red
7	142	Black / Black / White
8	142	Midnight Navy / Midnight Navy / White
9	142	Dark Blue / Pink / Black
10	142	University Red / University Red / White
11	142	Wolf Grey / Wolf Grey / White
12	142	Iron Grey / Coconut Milk / Wolf Grey
13	142	Game Royal / Game Royal / White
14	142	Grey / Football Grey
15	142	Light Madder Root / Mantra Orange / Arctic Orange / Bright Spruce
16	142	Black / Metallic Gold / Action Grey
17	142	White / Game Royal / Medium Ash / Citron Tint
18	142	N7
19	142	Multi-Color / Multi-Color
1	143	University Red / University Red / White
2	143	Black / University Red
3	143	Wolf Grey / Wolf Grey / White
4	143	Black / Smoke / Grey
5	143	White / Black / Royal Tint/ White
6	143	Metallic Gold / University Red / Orewood Brown / Midnight Navy.
7	143	Midnight Navy / Midnight Navy / White
8	143	Royal / White / Royal
9	143	White / Volt / Photon Dust / Black
10	143	Black / Royal
11	143	Old Royal / Peach Cream / Vivid Purple / Glacier Blue
12	143	Black / Black / White
13	143	White / White / Black
14	143	Multi-color / Multi-color / Multi-color
15	143	Aunt Pearl
16	143	Light Orewood Brown / Metallic Gold / Sundial / Sail / Citron Tint
17	143	Wolf Grey / Light Crimson / Hyper Royal
18	143	Psychic Purple / Midnight Navy / Ghost / Dark Marina Blue
19	143	Black / Boarder Blue / Sanddrift / Aura
20	143	Light Lemon Twist / Bright Crimson / Black
21	143	White / Black
22	143	Pink / Royal
1	144	Lilac / Pink Glaze / Dark Smoke Grey
2	144	Black / Purple Pulse / Pink Foam / Ghost Green
3	144	White / Black / Medium Blue / Siren Red
4	144	Light Crimson / White / Light Menta Black
5	144	Crimson Bliss / Atomic Green / Rush Orange
6	144	Beige / White / Black
7	144	Black / White / University Red
8	144	Red / White / Yellow
9	144	Blue Chill / Black / Light Crimson
10	144	Magic Fruity PEBBLES
11	144	Black / University Gold / Smoke Grey
1	145	White / Black
2	145	Black / White
3	145	White / Blue / Orange
4	145	Gray Mist / Pale gold
5	145	Dawn Glow / Raw Cashew
1	146	Bahamas
2	146	Ling Chee Kang
3	146	Sea King Thompson 2-D
4	146	Pure Water
5	146	Be Calm
6	146	Golf Course
7	146	2022 NBA Champion
8	146	April Fools
9	146	Koi Fish
10	146	Happy New Year
11	146	Dragon Boat Festival
12	146	Flamingo
13	146	Sea King Thompson
14	146	Grey
1	147	Black / Watermelon / Sapphire / Mint Foam
2	147	Can't Beat That Price
3	147	White / Bright Crimson / Black
4	147	Coconut Milk / Black / Khaki
5	147	Raging Grace
6	147	Childhood
7	147	Beach / Rattan / Vast Grey / Off Noir
8	147	Black / Multi-Color
9	147	Purple / Ghost
10	147	Blue / White / White
1	148	Cone / Phantom
2	148	China
3	148	Chaos
4	148	White / Red / University Blue / Grey / Volt
5	148	Grey Sail
6	148	Own Space
7	148	Pearl White / Vivid Sky
8	148	Oxygen Purple / Coral Chalk
9	148	Summit White / Sail / Black / White
10	148	Black / White
1	149	Wonder White / Magic Lime / Altered Amber
2	149	Core Black / Core Black / Cloud White
3	149	Vivid Red / Core Black / Team Victory Red
4	149	Impact Yellow / Impact Yellow / Core Black
5	149	Pulse Aqua / Team Semi Sol Orange / Solar Yellow
6	149	Cloud White / Vivid Red / Legend Ink
7	149	Magic Lilac / Matte Silver / Pulse Amber
8	149	Core Black / Core Black / Bliss Blue
9	149	Wonder Mauve / Turbo / Wonder Mauve
10	149	Cloud White / Ecru Tint / Beam Orange
11	149	Green Oxide / Almost Yellow / Linen Green
12	149	Clear Pink / Cloud White / Team Real Magenta
13	149	Green Mist / Glow Pink / Pulse Aqua
1	150	White / Black / Orange / Chalk
2	150	Black / Red
3	150	Infrared
4	150	White / Black / Bright Crimson
5	150	�Black Mint�
6	150	Laser Blue / Black / Siren Red / Laser Orange
7	150	Opti Yellow / Metallic Silver / Total Orange
8	150	Black / Celestine Blue / Peach Cream / Metallic Gold
9	150	Hyper Royal / Deep Royal Blue / Bleached Coral / Light Marine
10	150	Grey / Purple / Red
11	150	City Edition
12	150	�Valentine�s Day�
13	150	Painted Swoosh
1	151	Black / White / Sky Grey / Gym Red
2	151	Grey / Purple / Black
3	151	Blue / Green / Black
4	151	Black / Multicolor
5	151	Black / Volt / Electro Purple
6	151	Olympics
7	151	White / Black / Multicolor
8	151	Ocean / White / Black
1	152	Red Blast / Fiery Red
2	152	Puma Black / Blue Atoll
3	152	Rock Ridge / Red Blast
4	152	Rick and Morty
5	152	Purple Glimmer / Blue Atoll
6	152	Green / Red
1	153	White / Green Glow / Game Royal
2	153	Black / White
3	153	White / Wolf Grey
4	153	Black / Pink Prime / Siren Red
5	153	Black / Gym Red / White
6	153	Summit White / Photon Dust / Aura / Black
7	153	Black / Anthracite / Cool Grey
8	153	Light Iron Ore / Atomic Green / Black / Phantom
9	153	Black / Black
10	153	Pearl White / Doll / University Red / Black
11	153	Light Orewood Brown / Orange Trance / Summit White / Hyper Pink
1	154	Magic Lilac / Shadow Navy / Pulse Amber
2	154	Magic Lime / Core
3	154	Orange / Off White
1	155	Red / White
2	155	Light Iron Ore / Black / Moon Fossil
3	155	Game Royal / Game Royal / White
4	155	Black / Black / White
5	155	Light Soft Pink / Barely Volt / Orchid / Sweet Beet
6	155	White / Iron Grey / Light Marine
7	155	White / White / Black
8	155	Black / Iron Grey / Pink Prime / White
9	155	White / White
10	155	Purple / Gold
11	155	Sea Glass / Metallic Gold / Clear Emerald / Dynamic Turquoise
12	155	University Gold / White
13	155	Wolf Grey / Wolf Grey / White
14	155	Navy / White / Navy
15	155	Black / Metallic-Silver / Concord
16	155	Black / White / Multi-Color
17	155	White / University Red / University Gold / Light Photo Blue
18	155	Black / University Red / Dark Smoke Grey / Black
19	155	Team Orange / White
20	155	Siren Red / Dutch Blue / Coconut Milk / Barely Green
21	155	University Blue / White
22	155	Aluminum / Black / Sail
23	155	Beige / Rattan
24	155	Rattan / Wheat / Saturn Gold / Dark Purple Dust
25	155	White / Black / University Red
26	155	Valentine's Day
27	155	Safety Orange / Black
28	155	Gorge Green / White
29	155	Future Past
1	156	Black / White
2	156	Black / Black
3	156	Midnight Navy / Orange
4	156	White / Black
5	156	Black / Electric Tangerine
6	156	Grey / White
7	156	Blue / White
8	156	Red / White
9	156	Black / Yellow Nectar
10	156	White / Grey
11	156	Sesame Street Elmo
12	156	Isotope Blue / River
13	156	Sesame Street The Count
14	156	Blue / White
15	156	Tropic Pink / White
16	156	Sesame Street Cookie Monster
17	156	Electro Pink / Fresco Blue
18	156	Sesame Street Oscar
19	156	Sesame Street Big Bird
1	157	Core Black / Bright Orange / Legacy Burgundy
2	157	Grey Three / Red / Core Black
3	157	Dash Grey / Grey One / Clear Mint
4	157	Cloud White / Core Black / Grey One
5	157	Yellow Tint / Glory Purple / Signal Green
6	157	Signal Cyan / Silver Metallic / Shock Cyan
7	157	Core Black / Silver Metallic / Grey Six
8	157	Cloud White / Silver Metallic / Gold Metallic
9	157	Core Black / Core Black / Core Black
10	157	Core Black / Grey Six / Panther Cyan
11	157	Core Black / Gold Metallic / Carbon
12	157	Core Black / Team Yellow / Vivid Red
13	157	Cloud White / Vivid Red / Core Black
14	157	Blue Rush / Pulse Mint / Solar Pink
15	157	Energy Aqua / Core Black / Team Shock Pink
1	158	Black / Anthracite / Cool Grey / White
2	158	Grey / Pink / Black
3	158	White / Volt / Black
4	158	Black / University Red / Grey
5	158	White / Wolf Grey / University Red / Black
6	158	Black / Black / Cool Grey
7	158	Habanero Red / Crimson Pulse / Alarming / Blue Hero
8	158	White / Sweet Beet / Grey Fog / Blue Chill / Barely Volt
9	158	Ocean / Blue
10	158	Rattan / Hemp / Crimson Bliss / Madder Root
11	158	Black / Alarming Sequoia / Atomic Pink
1	159	Black / University Red / Black
2	159	Black / Yellow / Purple
3	159	Siren Red / Laser Blue / Psychic Purple / Siren Red
4	159	Dutch Blue / Pomegranate / Lime Glow / White
5	159	White / University Red / Black
6	159	Black Aqua
7	159	Yellow / Yellow
8	159	Phantom / Light Iron Ore / Amethyst Wave / Canyon Purple
9	159	Wild Berry / Cave Purple / Clear Emerald / Hyper Pink
10	159	Grey Fog / Total Orange / Bright Crimson / Roma Green
11	159	Black / Red
12	159	White / Dutch Blue / Blue Void
13	159	Mantra Orange / University Gold / University Red / Light Blue Fury
14	159	Pearl White / Game Royal / Clear Emerald / University Gold
15	159	MPLS Lakers
16	159	Polarized Blue / Crimson Bliss
17	159	Leopard
18	159	Multi-Color / Multi-Color
1	160	Black / White / Grey Fog / Bright Crimson
2	160	Neon Green / Pink
3	160	University Red / Crimson
4	160	Ocean Cube / White / Black / Aviator Grey
5	160	White / Fire Red / Grey
6	160	Bright Crimson / Black / Chlorine Blue
1	161	Grey / Green / Blue
2	161	Black / Dark Obsidian / White
3	161	Black / Sequoia / Crimson Pulse / Metallic Silver
4	161	Black / Deep Royal Blue / Blackened Blue / Siren Red
5	161	Black / Anthracite / Volt / Black
6	161	Coconut Milk / Vapor Green / Citron Tint / Polarized Blue
7	161	Pure Platinum / University Red / White / Wolf Grey
8	161	White / Persian Violet / Yellow Strike / Black
9	161	White / Grey / White
10	161	White / Melon Tint / Pink Blast / Light Lemon Twist
1	162	Light Iron Ore / Phantom / Football Grey / Atomic Green
2	162	Black / Cool Grey / Anthracite / Metallic Gold
3	162	Photon Dust / Summit White / Aura / Black
4	162	White / Doll / Black
5	162	\N
6	162	Black / Bright Crimson / White
7	162	Black / Pink Foam / Ghost Green / Purple Pulse / White
8	162	Black / Cool Grey / White
9	162	Black / Wolf Grey / Cool Grey
10	162	Cool Grey / Black / Wolf Grey / Metallic Silver
1	163	Black / White / Bright Mango / Hyper Violet
2	163	Blue Jay / White / Mardi Gras
3	163	University Red / Gold / Running White
4	163	Black / Infrared 23
5	163	White / Black / Psychic Energy
6	163	Green / Gold
7	163	White / Blue Void / Photo Blue / University Red
8	163	University Red / Black / Running White
9	163	Year Of The Tiger
10	163	White / Metallic / Gold
1	164	Sunblaze / Bluemazing
2	164	Puma White / Sunblaze
3	164	Bluemazing / Sunblaze
4	164	Puma White / High Risk Red
5	164	Puma Black / Green Glare
1	165	Core Black / Core Black / Sky Rush
2	165	Vivid Red / Team Colleg Gold / Core Black
3	165	Core Black / Solar Red / Core Black
4	165	Team Dark Green / Gold Metallic / Core Black
5	165	Clear Pink / Clear Pink / Core White
6	165	Core White / Core Black / Solar Red
7	165	Core Black / Team Colleg Purple / Team Solar Orange
8	165	Carbon / Pink Gum / Core White
9	165	Core White / Mint Rush / Core White
10	165	Light Solid Grey / Crystal White / Core Black
11	165	Semi Screaming Green / Vivid Red / Cloud White
12	165	Acid Orange / Acid Orange / Team Green
13	165	Bahia Light Blue / Vivid Red / Cloud White
1	166	Aqua Foam / White
2	166	White / Metallic Gold
3	166	White / Black
4	166	Black / White
5	166	High-Vis Yellow / Black
6	166	Black / White
1	167	Cloud White / Cloud White / Crystal White
2	167	Cloud White / Team Colleg Purple / Team Yellow
3	167	Cloud White / Team Orange / Victory Blue
4	167	Core Black / Silver Metallic / Team Dark Grey
5	167	Acid Red / Sky Rush / Shadow Navy
6	167	Core Black / Sonic Ink / Cloud White
1	168	Halo Mint / Halo Mint / Core Black
2	168	Active Purple / Light Purple / Purple Tint
3	168	Grey Two / Cloud White / Vivid Red
4	168	Core Black / Cloud White / Pulse Aqua
5	168	Cloud White / Pulse Aqua / Cloud White
6	168	Core Black / Cloud White / Solar Red
7	168	Pulse Aqua / Shock Pink / Signal Green
1	169	Core Black / Gold Metallic / Cloud White
2	169	Scarlet / Pulse Amber / Core Black
3	169	Cloud White / Team Navy / Team Green
4	169	Royal Blue / Cloud White / Victory Blue
5	169	Team Power Red / Cloud White / Vivid Red
6	169	Scarlet / Core Black / Solar Red
7	169	Core Black / Bright Cyan / Active Purple
8	169	Pulse Aqua / Bold Blue / Bright Cyan
9	169	Team Navy / Cloud White / Vivid Red
10	169	Dark Blue / Red / Team Colleg Gold
11	169	Sonic Ink / Solar Red / Hazy Emerald
12	169	Clear Grey / Purple Rush / Semi Screaming Green
13	169	Team Navy / Cloud White / Crew Navy
14	169	White / Metallic Gold / White
15	169	Light Pink / Clear Pink / Team College Purple
16	169	Cloud White / Core Black / Crystal White
17	169	Team Mid Grey / Cloud White / Team Light Grey
18	169	Core Black / Team Colleg Gold / Cloud White
19	169	Team Colleg Purple / Acid Orange / Halo Mint
20	169	Core Black / Cloud White / Core Black
21	169	Blue / Yellow / Bright Cyan
22	169	Dark Blue / Red / Team Colleg Gold
23	169	Core Black / Green / Cloud White
24	169	Cloud White / Core Black / Vivid Red
1	170	Antetokounbros
2	170	Light Stone / Bright Crimson / Racer Blue / Green Strike
3	170	Iron Grey / Vivid Sulphur / Particle Grey / Black
4	170	Team Bright Crimson
5	170	Grey Fog
6	170	Black / Black / Light Photo Blue / White
7	170	Bright Crimson / Black / White
8	170	Multicolor / Citron Tint / Laser Blue / Crimson Bliss
9	170	White / Clear Emerald / Total Orange / Black
10	170	Black / White / Red
11	170	Black / Grey
12	170	Clear Jade / White / Black
13	170	Royal / White / Black
14	170	Dutch Blue / Ghost / Dynamic Turquoise / Metallic Gold
15	170	Crimson Bliss / Dynamic Turquoise / Melon Tint / Thunder Blue
16	170	UNO
1	171	Sport Red / Blue Void / White
2	171	Armory Slate / Blue Void / Photon Dust / Green Glow
3	171	Black / Hyper Crimson / Vapor Green / Ghost
4	171	White / Multi-Colour
5	171	Desert Ore / Tech Grey / Blue Glow / Hyper Crimson
6	171	Black / Ghost / Hyper Crimson
7	171	Multi-Color / White / White
8	171	White / Bright Crimson / Pink Blast / Black
1	172	Black / White / Wolf Grey / Clear
2	172	Ashen Slate / Black / Photo Blue / White
3	172	Arctic Orange / Light Marine / Light Madder Root / Medium Blue
4	172	Ozone Blue
5	172	White / Black / Turquoise Blue / Clear
6	172	White / Metallic Gold / Black
7	172	Black / Clear / Anthracite
8	172	Deep Royal Blue / Habanero Red / Copa / Yellow Strike
9	172	Venice / Crimson Bliss / Melon Tint / Light Mulberry
1	173	White / White / Black
2	173	Black / White / University Red
3	173	Black / White / Game Royal
4	173	Black / Wolf Grey / White
5	173	Black / White / Black
6	173	Black / White / University Red
7	173	Black / Wolf Grey / White
8	173	Black/Dark Smoke Grey/Cyber Teal/Rattan
9	173	Off-White / Grey Fog
10	173	Pale Coral / Iron Grey / Cashmere
11	173	Light Armory Blue / Signal Blue / Opti Yellow / Black
12	173	Bright Crimson / Red Plum / University Blue / Black
13	173	Racer Blue / Arctic Punch / Barely Volt / Chlorine Blue
14	173	White / Dark Raisin / Laser Blue
15	173	Dutch Green / Bright Mango - Laser Orange
16	173	Green Glow / Red Plum / Metallic Gold / Atomic Orange
1	174	Black / White
2	174	White
3	174	white / gold
4	174	Grey / Green
5	174	Black / White
6	174	Black
7	174	Royal / Royal / Taxi
1	175	Panda
2	175	Summit White / Picante Red / Football Grey / Metallic Silver
3	175	Glacier Blue / White / Photon Dust / Metallic Silver
4	175	Black / Black / Alabaster
5	175	White / Black / Black
6	175	Photon Dust / Light Crimson / White / Black
7	175	Barely Green / Washed Coral / Dusty Cactus / Black
8	175	Sail / Light Lemon Twist / White / Smoke Grey
9	175	Light Smoke Grey / Dark Grey / Photon Dust
10	175	Iron Grey / Baltic Blue / Football Grey
11	175	White / Summit White / Anthracite / Black
12	175	Oil Green / Spring Green / Light Lemon Twist / Sail
13	175	White / Sport Red / Obsidian
14	175	Black / University Red / Iron Grey / White
15	175	Light Wild Mango / Hot Fuchsia / Plum Dust / White
16	175	Sea Glass / Olive Aura / Light Wild Mango / Oil Green
17	175	Photon Dust / Pink Blast / Dynamic Turquoise / White
18	175	Black / Barely Volt / Iron Grey
19	175	Coconut Milk / Mineral / Light Orewood Brown / Jade Ice
20	175	Black / Sapphire / White / Fusion Red
21	175	Violet / Crimson
22	175	Pure Platinum / Regal Pink / Cool Grey / Pink Blast
23	175	Sport Red / Blue Void / White
24	175	Sabrina Ionescu
25	175	White / Bright Crimson / Pink Blast / Black
26	175	Ghost
27	175	Black / Hyper Crimson / Vapor Green / Ghost
28	175	White / Laser Blue / Grey Fog / Black
29	175	Grinch
30	175	Blue Void / Siren Red / Fierce Purple / Green Strike
31	175	Volt / Barely Volt / Anthracite
1	176	Carbon Green / Asparagus / Beach / Black
2	176	Light Smoke Grey / Smoke Grey / Black / Total Orange
3	176	White / Hyper Pink / Dark Beetroot / Metallic Silver
4	176	Black / White / Blue
5	176	Black / White / Smoke Grey
6	176	Hyper Jade
7	176	White / Laser Orange / Dynamic Turquoise / Black
8	176	White / Navy / Light Gold
9	176	White / Black
10	176	Black / Red / White
11	176	Blue Void / White / Metallic Gold / University Red
12	176	Black / White / Metallic Gold
13	176	Universal Red / White / Gym Red
14	176	Royal Blue / White / Royal Blue
15	176	Blue Void / Fierce Purple / Indigo Haze / Bright Crimson
16	176	Black / Bright Crimson / Amarillo / White
17	176	Gen Zion
18	176	Midnight Navy / White / Dk Obsidian
1	177	Black / White / Gum Light Brown / Metallic Cool Grey
2	177	Black / Anthracite / Wolf Grey / White
3	177	Pure Platinum / Cool Grey / Total Orange / White
4	177	Black / White / Bright Crimson / University Red
5	177	Black / Blue
6	177	Obsidian / Grey Black / Clear Emerald
7	177	Smoke Grey / Dark Smoke Grey / Barely Volt / Pure Platinum
1	178	Light Solid Grey / Team Colleg Gold / Orbit Indigo
2	178	Screaming Orange / Solar Red / Acid Orange
3	178	Sky Tint / Cloud White / Solar Red
4	178	Signal Pink / Team Solar Yellow / Glow Pink
5	178	Team Solar Green / Team Solar Green / Cloud White
1	179	Wolf Grey / Black / White
2	179	Black / Grey / Lime
3	179	University Red / White / Black
4	179	Green / Burgundy / Black
5	179	Black / Red
6	179	Black / Fusion Red / White / Yellow Strike
7	179	Valentine Day
8	179	Black / Volt / White
9	179	Black / Multicolor
10	179	Navy / White
11	179	Black / Yellow Strike / Bright Crimson
12	179	Black / Black / Laser Crimson
13	179	White / Black
14	179	Lapis / Turquoise Blue / Light Liquid Lime / Hyper Pink
15	179	Game Royal / White / Black
16	179	Royal Blue / Pale Coral / Coconut Milk
17	179	Black / Copa / Orange Trance / White
18	179	White / Lime Green / Multi
19	179	White / Black / Grey
20	179	Aunt Pearl
21	179	Court Purple / Black / White
22	179	Light Bone / Multi-Color / Cyan Pink
23	179	Grey Fog / Particle Grey / Peach Cream / Sunset Pulse
24	179	Ron English
1	180	Black / Anthracite / White
2	180	White / Barely Volt / Volt / Black
3	180	Black / Anthracite / Black
4	180	Pure Platinum / Wolf Grey / Chile Red / Metallic Silver
5	180	Iron Grey / Black / Barely Volt / Dust
6	180	White / Wolf Grey / Cool Grey / Metallic Cool Grey
7	180	Anthracite / Gym Red / Black / Metallic Dark Grey
8	180	Black / White / University Red
1	181	Puma White / Palace Blue
2	181	Nimbus Cloud / Elektro Purple
3	181	Puma White / Ultra Gray
4	181	Dazzling Blue / Saffron
5	181	Puma White / Nrgy Red
6	181	Puma Black / Yellow Alert
7	181	Puma Black / Puma White
8	181	Future Blue / Green Glare
9	181	Puma White / Prism Violet
10	181	Future Blue / Green Glare
11	181	Puma Black / Orange Glow
12	181	Yellow Glow / Puma White
13	181	Puma White / Vibrant Orange
14	181	Ebony Elektro / Aqua
15	181	Puma White / Green Glare
16	181	Gold / Black / White
17	181	Puma White / Yellow Alert
18	181	White / Black / Red
19	181	White / Black / Yellow Alert
20	181	PUMA White / Team Violet
21	181	PUMA White / Cool Light Gray
22	181	Slash - Celtics
1	182	Black / Blue / Pink
2	182	Black / Blue
3	182	CLRSHFT - White / Blue Circuit
4	182	Halo Gray / White
5	182	Black / White
6	182	Red / White
7	182	Black / Multicolor
8	182	CLRSHFT - Red / White
9	182	DVNLLN - Black
10	182	White / Steel
11	182	Royal Blue / White
12	182	White / Grey
13	182	Royal / White
1	183	Black / Barely Volt / Smoke Grey / Black
2	183	Sapphire / Atomic Orange / Glacier Blue / Green Glow
3	183	Game Royal / Black / Copa Lime Glow
4	183	Black / White / Crimson
5	183	Green / White / Orange
6	183	Natural / Natural / Total Orange / Green Glow
7	183	Aprict Agate / Black / Lime Glow
8	183	University Red / Black / Crimson Bliss
9	183	Black / White / Ghost
10	183	Particle Grey / Total Crimson / Black / Chambray Blue
11	183	Multi-Color / Multi-Color
1	184	White / Bright Crimson / Black
2	184	Smoke Grey / Sunset Pulse
3	184	Black / Black / Black
4	184	Fireberry / Black / Light Blue Fury
5	184	Black / White / Fierce Purple / Racer Blue
6	184	Heart of Lion
7	184	LeBronold Palmer
8	184	White / Yellow / Teal / Red
9	184	Floral
10	184	Black / White / University Red
11	184	White / Black / Iron Grey
12	184	Blue / Beige / Racer Blue
1	185	Yellow / Pink
2	185	Blue / Red
3	185	Iridescent / Steel
4	185	Black / Yellow
5	185	Gold / Vivid Cobalt
6	185	Green / Maroon
7	185	Yellow / White
8	185	Yellow / Teal
9	185	Crimson / White
10	185	Light Peony / Black
1	186	University Red / White / University Red
2	186	College Navy / College Navy / White
3	186	Black / White
4	186	Metallic Silver / Hyper Royal / Laser Crimson
5	186	White / Light Violet / Crimson Tint
6	186	Game Royal / White / Game Royal
7	186	Black / White / University Red
8	186	Dark Obsidian / Melon Tint / Fusion Red
9	186	White / Crimson Tint / Black / Laser Crimson
10	186	White / Glacier Blue / Platinum Tint / Multi-Color
11	186	Wolf Grey / White / Wolf Grey
12	186	White / Black
13	186	Beige / Gold
14	186	Multi-color / White / Black
15	186	Black / White
16	186	Black / Lapis / Bright Crimson / Metallic Silver
17	186	Black / White / Barely Green / Multi-Color
18	186	Lapis Blue / Void / Crimson Bliss
19	186	Green Glow / Barely Green / Glacier Blue
20	186	Green Glow / White / Sunset Pulse / Black
21	186	Black / University Red / Yellow Strike / Green Glow
1	187	Goldrush
2	187	Team No Sleep
3	187	Balance
4	187	Disco
5	187	Test R2
6	187	Caution
7	187	Test R1
8	187	Grey Boy
1	188	Coming Home
2	188	Cotton Candy
3	188	Florida
4	188	Bruce Lee
5	188	Team No Sleep
6	188	Ice Blood
1	189	Team Power Red / Team Maroon / Solar Red
2	189	Royal Blue / Team Navy / Blue
3	189	Core Black / Cloud White / Team Dark Grey
4	189	Team Navy / Cloud White / Vivid Red
5	189	Core Black / Cloud White / Royal Blue
6	189	Sky Tint / Cloud White / Screaming Pink
7	189	Team Light Blue / Crew Navy / Cloud White
8	189	Solar Red / Cloud White / Royal Blue
9	189	Cloud White / Core Black / Crystal White
10	189	Icey Pink / Cloud White / Glow Pink
11	189	Cloud White / Core Black / Crystal White
12	189	Cloud White / Core Black / Solar Red
13	189	Acid Orange / Chalk White / Screaming Orange
14	189	Crystal White / Cloud White / Royal Blue
15	189	Solar Yellow / Crew Yellow / Hi-Res Yellow
16	189	Clear Mint / Crew Yellow / Clear Mint
17	189	Vivid Red / Bold Gold / Royal Blue
1	190	Challenge Red / Black-White
2	190	White / Neutral Grey / Del Sol / Black
3	190	Green Apple / Volt / Crimson / Black
1	191	Core Black / Yellow / Acid Mint
2	191	Hi-Res Yellow / Crew Yellow / Royal Blue
3	191	Core Black / Iron Metallic / Grey Six
4	191	Solar Red / Yellow / Acid Mint
5	191	Core Black / Silver Metallic / Cloud White
1	192	Blue Void / University Red / White
2	192	White / Pink / Green / Blue
3	192	Bred
4	192	Shattered Backboard - Pale Ivory / Black / Alpha Orange
5	192	Black / Metallic Gold / White
6	192	Black / University Red / Volt
7	192	Light Blue / Lavender
8	192	Green Abyss / Racer Blue / Photo Blue
9	192	Photon Dust / Volt / University Red / Black
10	192	White / Multi-Color / Multi-Color
1	193	Black / Anthracite / Metallic Silver
2	193	White / Infrared 23 / Black / Ghost Green
3	193	White / University Red / Black / University Red
4	193	Pale Ivory / Pink Blast / Black
5	193	Black / Metallic Gold / White / Metallic Gold
6	193	White / Black / Wolf Grey / Black
7	193	Wolf Grey / Aurora Green / Black / Fireberry
8	193	Black Cat - Black / Black / Black
9	193	Crimson / White / Black
10	193	Tropical Twist / Turf Orange / Citron Pulse
11	193	Orange / Pink / Green
12	193	University Red / Metallic Gold  / Black / White
1	194	Black / White / Purple
2	194	White / Black / University Red
3	194	Black / University Red / Blue Void
4	194	Black / White / Brilliant Green / Fluorescent Yellow
5	194	Black / University Red / Black
6	194	White / Black / Red
1	195	Royal / White
2	195	White / Black
3	195	Black / White
4	195	Taxi / White / Taxi
5	195	Red / White
6	195	Black / White / Birch
7	195	Red / White / Red
8	195	Royal / White / White
9	195	Black / White / Black
10	195	Black / White / White
11	195	Black / White
12	195	White / White / Black
13	195	Navy / White
14	195	Purple / White / Grey
15	195	White / White / Metallic Gold
16	195	Iridium / White
1	196	Prism Mint / Red Zest / Tech Beige
2	196	Glow Pink / Hazy Rose / Cloud White
3	196	Signal Green / Core Black / Signal Green
4	196	Core Black / Scarlet / Grey Five
5	196	Cloud White / Solar Gold / Tech Indigo
6	196	Vivid Green / Gold Metallic / Cream White
7	196	Scarlet / Core Black / Collegiate Burgundy
8	196	Cloud White / Core Black / Cloud White
9	196	Orbit Grey / Dove Grey / Signal Green
10	196	Core Black / Gold Metallic / Team Colleg Purple
11	196	Core Black / Scarlet / Gold Metallic
12	196	Chalk White / Core Black / Solar Red
13	196	Cloud White / Core Black / Orbit Grey
14	196	Core Black / Gold Metallic / Grey Six
1	197	Black / Valerian Blue / Lime Blast
2	197	Kay Yow - Black / Pink Blast
3	197	Summit White / Hyper Violet
4	197	White / Black / Wolf Grey
5	197	Black / Wolf Grey / White
1	198	Puma White / Blue Atoll
2	198	Puma White / Puma Black
3	198	Puma Black / Luminous Pink
4	198	Celandine / Puma Black
5	198	Kuzma Puma White / Pebble
6	198	Coast 2 Coast - Lakers
7	198	Coast 2 Coast - Celtics
1	199	Pride
2	199	Minneapolis
3	199	The Big Apple
4	199	Team No Sleep
1	200	Black / Black / Arctic Punch
2	200	Navy / White
3	200	White / Black
4	200	Red / White
5	200	Blue / White
6	200	Pale Ivory / Chlorine Blue / Black
7	200	Black / White / Black
8	200	Regal Pink / Hemp / Honeydew / White
9	200	Light Bone / White / Light Green Spark / Game Royal
10	200	Copa / Dark Smoke Grey / Rattan
11	200	Wolf Grey / Back / White
12	200	Black / Off Noir / Chile Red / White
13	200	Atomic Orange / Black / Tropical Twist
14	200	White / Metallic Gold / Black
15	200	Creator - Active Fuchsia / Black Ghost / Multi Color
16	200	Black / University Red / White / Black
17	200	Chinese New Year - Black / Spirit Teal / Hyper Pink / Metallic Gold
18	200	Yellow Strike / Green Abyss / Bright Crimson / Black
19	200	Midnight Navy / Lagoon Pulse / Bright Mango / Midnight Navy
20	200	Black / Lime Ice / Total Orange
21	200	Hyper Royal / Hyper Royal / Black / White
22	200	Black / University Gold / Team Orange
23	200	Weatherman - Green / Orange / Red
24	200	Icons Of Sport - Red / Multi Color
25	200	Lilac / Indigo Burst / Sail / Melon Tint
26	200	Brooklyn Beats - White / Glow / Hyper Royal / Black
27	200	Special FX - Green / Teal / Red / Metallic Gold
28	200	Black / Melon Tint / Glacier Ice
29	200	Ghost / Blue Beyond / Laser Orange
30	200	Expressions - Blue / Orange / Crimson / Pink
1	201	Black / University Red / White / Bright Crimson
2	201	Lime Glow / Bright Mango / White/Black
3	201	White / Black
4	201	Game Royal / Black / White
5	201	Black / White / Metallic Silver
6	201	Team Red / Bright Crimson / University Red
7	201	Summit White / White / Light Citron / Metallic Bronze
8	201	Black / Fierce Purple / Metallic Gold
9	201	Black / Green Strike / Light Blue Fury / Lagoon Pulse
10	201	University Red / White / Black
11	201	White / Clear Jade / Total Orange / Black
12	201	Black / White
13	201	White / Black
14	201	Pure Platinum / Chile Red / Black
15	201	Black / Dark Grey / White
1	202	Pink / White / Multi
2	202	Uv Glo / Velocity Red
3	202	Bayside / Citra Yellow
4	202	Blue / White / Blue
5	202	New Money - Grey / Blue
6	202	White / Team Red
7	202	Black / Royal Blue
8	202	Black
9	202	White
10	202	Red  / Vision Blue
11	202	Vision Blue / Aztec Gold
12	202	Pink / Neo Flame
13	202	Red / White / Blue
1	203	Black / White / Gum Light Brown / Metallic Cool Grey
2	203	Red / White
3	203	Black / White / University Red
4	203	Black / Lagoon Pulse / Bright Mango / Lime Glow
5	203	Racer Blue / Aluminum-Black
6	203	Wolf Grey / Black / Metallic Silver
7	203	Black / Metallic Silver / White
8	203	Blue Void / Deep Royal Blue / Lucky Green / Speed Yellow
9	203	Summit White / Photon Dust / Purple Pulse / White
10	203	Wolf Grey / Black / White / Metallic Silver
11	203	Barely Volt / Photon Dust / Volt / Aluminum
12	203	White / Metallic Silver / Photon Dust / Black
13	203	Crimson Pulse / Bright Mango / White / Hyper Crimson
14	203	Black / Anthracite / Metallic Gold
15	203	Black / Dark Smoke Grey / Black
1	204	Psychic Purple / Multi-Color / Black
2	204	Black / Fierce Purple / Metallic Silver / Bright Crimson
3	204	Black / Multi-Color / White
4	204	Black / Electric Green / Black
5	204	Chinese New Year
6	204	Pink Prime / Multi / Blue
7	204	White / Black / Amarillo
8	204	Black / Court Purple / White / Metallic Gold
9	204	Multi-Color / Black / Chlorine Blue
10	204	Blue Tint / Ghost / Total Orange / Dynamic
11	204	Black / Gum Medium Brown / White
12	204	Black / University Gold / Coast / Concord
13	204	Black / White / University Red
14	204	Majestic Ferocity
15	204	Green Abyss / Tropical Twist / Bright Crimson / Hyper Crimson
16	204	Light Cream / Game Royal / Spiral Sage / Pink Glow
17	204	Goat
18	204	University Red / Hyper Punch / Metallic Gold / Lucky Green
19	204	Blue Tint / White / Clear
20	204	Black / Gold / Dark Teal
1	205	Black / University Red / Yellow
2	205	White / Deep Royal Blue / Pink Blast / Multi-Color
3	205	White / Black / Multi-Color
4	205	Blue Fury / Electric Green / University Red / Metallic Silver
5	205	Black / University Red / Cement Grey
6	205	Black / Fire Red / Reflective Silver
7	205	Center of Gravity
1	206	Team Navy / Cloud White / Team Navy
2	206	Cloud White / Scarlet / Core Black
3	206	Core Black / Cloud White / Vivid Red
4	206	Scarlet / Cloud White / Silver Metallic
5	206	Cloud White / Silver Metallic / Core Black
6	206	Core Black / Solar Red / Cloud White
7	206	Victory Crimson / Team Colleg Gold / Orbit Indigo
8	206	Sonic Fuchsia / Solar Red / Sonic Ink
9	206	Solar Red / Cloud White / Solar Red
10	206	Scarlet / Gold Metallic / Core Black
11	206	Solar Red / Core Black / Yellow
12	206	Collegiate Navy / Silver Metallic / Collegiate Navy
13	206	Core Black / Clear Mint / Vivid Red
14	206	Cloud White / Core Black / Scarlet
15	206	Cloud White / Core Black / Cloud White
16	206	Grey Two / Silver Metallic / Cloud White
17	206	Team Green / Silver Metallic / Mesa
18	206	Cloud White / Silver Metallic / Core Black
19	206	Ric Flair - Royal Blue / Silver Metallic / Royal Blue
20	206	Signal Cyan / Team Shock Pink / Team Solar Green
21	206	Cloud White / Team Navy / Vivid Red
22	206	Glory Purple / Cloud White / Glory Purple
23	206	Halo Blue / Cream White / Cloud White
24	206	Core Black / Glow Pink / Silver Metallic
25	206	Cloud White / Royal Blue / Vivid Red
26	206	Rose Tone / Icey Pink / Cloud White
27	206	Dark Blue / Pulse Aqua / Solar Red
28	206	Cloud White / Gold Metallic / Core Black
29	206	Solar Green / Cloud White / Solar Green
30	206	Core Black / Silver Metallic / Core Black
31	206	Core Black / Signal Pink / Signal Cyan
32	206	Brown / Red
1	207	Grey / White / Black
2	207	Black / Multi-Color
3	207	New Orchid / Chile Red / Glacier Ice
4	207	Black / Metallic Silver / White
5	207	Sail / Black / Team Orange
6	207	Black / Black / Metallic Silver
7	207	Magic Ember / White / Black
8	207	Black / Metallic Silver / Wolf Grey
9	207	White / Black
10	207	Black / Metallic Silver / Game Royal
11	207	Atomic Pink / Stone Blue
12	207	Black / Metallic Silver / University Red
13	207	White / Black
14	207	Pacific Blue / White
15	207	Midnight Navy / White
16	207	Game Royal / White
1	208	Purple Heart
2	208	Puma Black / Nrgy Red
3	208	Fiery Red / Ribbon Red
4	208	Puma White / Puma Black
5	208	Flame Scarlet / Electric Blue
6	208	Puma White / Steel Gray
7	208	Fiery Red / Puma Black
8	208	White / Black
9	208	Blue / Black
10	208	Sodalite Blue / Blue Curacao
11	208	Yellow / Black
1	209	Black/  White / University Red
2	209	Black / Metallic Dark Grey
3	209	Black / Hyper Royal / Melon Tint / White
4	209	White / Team Red / Midnight Navy / University Red
5	209	Vivid Purple / Solar Flare / Light Persian Violet / Solar Flare
1	210	Versa Red / Versa Red / Halo Grey
2	210	Black / Steel / Black
3	210	Versa Red / Black / Metallic Gold
4	210	Navy / White / Red
5	210	White / Metallic Gold / Metallic Gold
6	210	Blue / White
7	210	Steel / Mod Gray / Equator Blue
8	210	White/ Pink Surge / White
9	210	Mechanic Blue / Black / Pitch Grey
1	211	Fossil Stone / Glacier Ice / Fossil Stone
2	211	Black / Atomic Pink / Black
3	211	Vast Grey / Sail / Volt / Black
4	211	Blue Void / White / White
5	211	Cargo Khaki / University Gold / Veranda / Light Marine
6	211	Multi-Color / Multi-Color
1	212	Collegiate Navy / Cloud White / Collegiate Navy
2	212	Cloud White / Scarlet / Cloud White
3	212	Core Black / Scarlet / Silver Metallic
4	212	Solar Gold / Core Black / Solar Gold
5	212	Collegiate Royal / Cloud White / Collegiate Royal
6	212	Power Red / Cloud White / Silver Metallic
7	212	Signal Orange / Solar Gold / Signal Pink
8	212	Core Black / Gold Metallic / Cloud White
9	212	Cloud White / Gold Metallic / Core Black
10	212	Solar Yellow / Solar Red / Core Black
11	212	Core Black / Cloud White / Sky Tint
12	212	Core Black / Signal Pink / Cloud White
13	212	Core Black / Scarlet / Gold Metallic
14	212	Solar Red / Gold Metallic / Solar Yellow
15	212	Scarlet / Team Navy / Gold Metallic
16	212	Grey Five / Crew Yellow / Solar Red
17	212	Pharrell_Williams - Core Black / Core Black / Core Black
18	212	Cloud White / Core Black / Gold Metallic
19	212	Cloud White / Orbit Grey / Metal Grey
20	212	Cream White / Semi Solar Pink / Dark Green
21	212	Cloud White / Royal Blue / Cloud White
22	212	Royal Blue / Cloud White / Vivid Red
23	212	Power Pink / Core Black / Power Pink
24	212	Purple Tint / Cream White / Silver Metallic
25	212	Cloud White / Solar Red / Cloud White
26	212	Cloud White / Core Black / Sky Tint
27	212	Grey Three / Cloud White / Grey
28	212	Solar Gold / Core Black / Solar Gold
29	212	Core Black / Team Power Red / Cloud White
30	212	Cloud White / Core Black / Core Black
31	212	Glory Mint / Signal Green / Solar Red
32	212	Signal Cyan / Core Black / Signal Cyan
1	213	Black / Particle Grey / Bright Crimson / Metallic Silver
2	213	Vintage Green / Pistachio Frost / Camellia
3	213	Black / University Red / White
4	213	NAIJA
5	213	Midnight Navy / Fire Pink / White / Poison Green
6	213	Black / Off Noir / White / Solar Flare
7	213	White / Bright Mango / Black
8	213	Blue / Green / Black
9	213	Particle Grey / Black Blue / Beyond Sail
10	213	White Cement
11	213	Bright Crimson / Fire Pink / White / Black
12	213	Bright Mango / Red Pum / Volt / Grand Purple
13	213	Black/Metallic Silver/Dusty Amethyst
14	213	Desert Sand / Sail / Camellia / Gym Red
1	214	Core Black / Glory Red / Bold Gold
2	214	Core Black / Cloud White / Sky Tint
3	214	Signal Pink / Core Black / Cloud White
4	214	Chalk White / Core Black / Solar Gold
5	214	Cloud White / Gold Metallic / Light Solid Grey
1	215	Black / Thunder Blue / Bright Mango
2	215	Black / Smoke Grey / White
3	215	Wolf Grey / Metallic Silver / Cool Grey / Metallic Gold
4	215	Blue Void / Racer Blue / Deep Royal Blue / White
5	215	Black / White / University Red
6	215	White / Black / Volt / Light Blue Fury
7	215	Photon Dust / Smoke Grey
8	215	White / Black / Flash Crimson / White
9	215	University Red / White / Black
1	216	Cloud White / Team Dark Green / Chalk White
2	216	Core Black / Cloud White / Core Black
3	216	Cloud White / Royal Blue / Chalk White
4	216	Chalk White / Collegiate Navy / Active Gold
5	216	Cloud White / Solar Gold / Signal Orange
6	216	Grey Five / Signal Green / Core Black
7	216	Cloud White / Team Power Red / Chalk White
8	216	Cloud White / Team Navy / Chalk White
1	217	White / Pure Platinum / White / Wolf Grey
2	217	Black / White / Smoke Grey
3	217	Cool Grey / Wolf Grey
4	217	University Red / Gym Red
5	217	Black / Psychic Purple / Lemon Venom
6	217	White / Field Purple / Amarillo / Light Solar Flare Heather
7	217	Deep Royal Blue / Hyper Blue
8	217	Black / University Gold / University Red
9	217	Midnight Navy / Ashen Slate
10	217	Black / Gym Red / Obsidian / Racer Blue
1	218	White / Hyper Violet / Flash Crimson / Black
2	218	White / Black / Hyper Royal / Infrared 23
3	218	Black / Light Solar Flare Heather / Volt / White
4	218	Hyper Royal / White
5	218	Black / White / Ice / Racer Blue
6	218	University Red / White
7	218	White / Black
1	219	Sport Red / White / Obsidian
2	219	Black / Electric Green
3	219	Spruce Aura / Royal Pulse / Hyper Blue
4	219	Deep Royal Blue / Volt / Lemon Venom / Deep Royal Blue
5	219	Blue Void / Metallic Gold Coin / Black
6	219	White / White / Flash Crimson / Hyper Violet
7	219	White / Black / Melon Tint / Hyper Royal
8	219	Blue Void / Black / Metallic Gold Coin
9	219	Barely Volt / Copa / Bright Crimson / Black
10	219	Black / University Red
1	220	Pitch Gray / Black
2	220	Beta / Purple
3	220	Cerise / Blackout Purple
4	220	White / Halo Gray
5	220	Seaglass Blue / Enamel Blue
6	220	Saxon Green / Laser Green
7	220	Academy / Graphite Blue
8	220	Versa Red / Rush Red
9	220	Black / White / Metallic Silver
10	220	Steel / Mod Gray / Metallic Silver
11	220	Black / White
12	220	Dark Maroon / Cardinal / Metallic Silver
13	220	Multi Color
14	220	Steeltown Gold / Taxi
15	220	Black / Red / Metallic Silver
16	220	Royal / Black
1	221	White / Solar Yellow / Core Black
2	221	Yellow Tint / Chalk Coral / Trace Purple
3	221	Core Black / Core Black / Core Black
4	221	Core Black / Core Black / Dgh Solid Grey
1	222	White / White / Metallic Silver
2	222	Black / Cement Grey / Bright Crimson / White
3	222	White / Black / University Red
4	222	Black / White
5	222	Melon Tint / Hyper Crimson / Aurora Green / Light Liquid Lime
6	222	White / Black / Rage Green / White
1	223	Black / Solar Red / Fresh Mint
2	223	White/University Red/Black
3	223	Black / Volt / Black
4	223	Polar Lights
5	223	Nightfall Violet / Hyper Magenta
6	223	Obsidian Mist / Gravel / Gravel
7	223	White / Volt / Black
8	223	University Gold / Black / Gum
9	223	Photon Dust / Amethyst Grey
10	223	Lemon Venom / Hyper Magenta / Volt
1	224	Washed Coral / Barely Volt / Summit White / Laser Crimson
2	224	Washed Coral / Barely Volt / Summit White / Laser Crimson
3	224	Black / White / Wolf Grey
4	224	Black / Illusion Green / Vapor Green / White Onyx
5	224	Black / Black / White / University Red
6	224	Platinum Tint / Barely Volt
7	224	Washed Coral / Laser Crimson / Pale Ivory / Barely Volt
8	224	Black / White / Pure Platinum
9	224	White / Obsidian / Sport Red
10	224	White / Black
11	224	Black / Wolf Grey / White
12	224	Wolf Grey / White-Silver
13	224	University Blue / University Red / White
14	224	Black / University Red / Lucky Green
15	224	Multi-Color / Racer Blue / Smoke Grey
16	224	University Red / Black / White
17	224	College Navy / White / White
18	224	Sail / Game Royal / Platinum Tint / Lemon Venom
19	224	White / Baltic Blue / Summit White / Metallic Gold
20	224	Sail / Lemon Venom / Game Royal / Hyper Pink
21	224	Arctic Pink / Blue Void / Light Orewood / Brown
22	224	Game Royal / White / White
23	224	Team Red / White / White
24	224	Team Orange / White / White
25	224	New Orchid / White / White
26	224	University Blue / White / White
27	224	Desert Orange / White / White
28	224	Pro Green / White / White
1	225	Black / Illusion Green / Racer Blue / Clear
2	225	Blue Void / Racer Blue / Red Crush / White
3	225	Black / Aurora Green / Smoke Grey / White
4	225	White / Black
5	225	Black / University Red / White
6	225	White / Royal Tint
7	225	White / Total Orange / Wolf Grey / Pure Platinum
8	225	Light Solar Flare Heather / Laser Crimson / Black
9	225	Pure Platinum / Metallic Silver / Wolf Grey / Metallic Gold
1	226	Astronomy Blue / Royal Pulse / Spruce Aura
2	226	Tie-Dye
3	226	Black / Bright Crimson / White
4	226	Lemon Venom / Barely Volt / Black
5	226	Multi-Color / University Red / Multi-Color
6	226	Wolf Grey / White / Light Aqua
7	226	White / Black / Cement
1	227	Spruce Aura / Black / Racer Blue
2	227	White / University Red / Game Royal / White
3	227	White / Voltage Purple / Dynamic Yellow
4	227	Black / Multi-Color / University Red / White
5	227	White / Black / Metallic Gold
6	227	Black / Dark Grey / University Red
7	227	Particle Grey / White /Light Smoke Grey / Black
8	227	University Red / Metallic Gold
9	227	Black / Black / Black
10	227	Light Cream / Multi-Color
11	227	White / White / White
1	228	Core Black / Cloud White / Core Black
2	228	Team Dark Green / Gold Metallic / Cloud White
3	228	Scarlet / Cloud White / Scarlet
4	228	Cloud White / Core Black / Cloud White
5	228	Core Black / Core Black / Core Black
6	228	Cloud White / Core Black / Cloud White
7	228	Cloud White / Core Black / Core Black
8	228	Copper Metallic / Cloud White / Light Flash Orange
9	228	Purple Tint / Purple Tint / Purple Tint
10	228	Gold Metallic / Core Black / Gold Metallic
11	228	Tech Indigo / Cloud White / Signal Pink
12	228	Royal Blue / Cloud White / Royal Blue
13	228	Core Black / Gold Metallic / Scarlet
14	228	Core Black / Cloud White / Core Black
15	228	Glow Pink / Glow Pink / Glow Pink
16	228	Core Black / Cloud White / Core Black
17	228	Cloud White / Cloud White / Cloud White
18	228	Clear Mint / Clear Mint / Clear Mint
19	228	Team Colleg Purple / Core Black / Gold Metallic
1	229	Black / White / Metallic Gold
2	229	White / Bright Crimson / Black
3	229	White/Cool Grey/Wolf Grey/White
4	229	Particle Grey / Black / Iron Grey / Pink Blast
5	229	White / Racer Pink / Ghost Green / Black
6	229	Parachute Beige / Fossil / Black / Rage Green
7	229	Washed Coral / Pink Tint / Pale Ivory / Black
8	229	Black / Cement Grey / White / Bright Crimson
9	229	White / White / Black / Metallic Silver
1	230	White / Metallic Gold / Black
2	230	White/Cyber Purple/Red
3	230	Forest Green / Metallic Red Bronze / Speed Yellow
4	230	Court Purple / Black / University Gold
5	230	Del Sol / Metallic Silver / Comet Red / Black
6	230	White / Black / Comet Red / White
1	231	Black / Light Smoke Grey / White
2	231	Black / University Red / White
3	231	White / University Red / Obsidian
4	231	Black / Wolf Grey / Blue Fury / White
5	231	Football Grey / Laser Blue / Lt Smoke Grey
6	231	Black / White / Wolf Grey / Blue Fury
7	231	White / Pure Platinum / Black
8	231	Light Cream / Terra Blush / Racer Blue / Total Orange
9	231	Black / Black / Black
10	231	Multi-Color / Multi-Color
11	231	Black / Rush Blue / University Red / Metallic Silver
12	231	Barely Volt / Total Orange / Volt / Photo Blue
13	231	Crimson / White / Green
14	231	String / Sail / Cool Grey / Natural
15	231	Regency Purple / Regency Purple
16	231	Gatorade White GX
17	231	Wolf Grey / Cool Grey / Anthracite
18	231	College Navy / White / White
19	231	University Gold / White / White
20	231	University Blue / White / White
21	231	Pro Green / White / White
22	231	University Red / White / Black
23	231	Game Royal / White / Black
24	231	White / Black / Wolf Grey
25	231	Black / White / Pure Platinum
26	231	Team Orange / White / White
27	231	Field Purple / White / White
28	231	White / Game Royal / Game Royal
29	231	White / White / Black
30	231	White / College Navy / College Navy
31	231	White / University Red / University Red
1	232	Black / White / Volt
2	232	Black / Bright Crimson / White / University Red
3	232	Obsidian / Gym Red / White / Deep Royal Blue
4	232	White / Black / Blue / Fury Opti Yellow
5	232	White / Pure Platinum / Varsity Royal
6	232	Pure Platinum / White / Metallic Silver
7	232	Black / Chile Red / Enigma Stone / Camellia
8	232	Cool Grey / Bright Crimson / White / Black
9	232	Black / Court Purple / Psychic Purple / Fierce Purple
10	232	Black / Metallic Gold Star
11	232	White / Cool Grey / Black
12	232	Summit White / Metallic Silver / Metallic Copper / Metallic Gold
1	233	Pearl White
2	233	First Born
3	233	Team No Sleep
1	234	White / Aqua Float
2	234	White / White
3	234	Black / Pitch Gray
4	234	X Ray / X Ray
5	234	Exo Brown / Onyx White
6	234	Jet Gray / Beta
7	234	Red
8	234	Versa Blue / Water / American Blue
9	234	Cordova / Versa Red / Black
10	234	Forest Green / Vapor Green
11	234	Pitch Gray / Halo Gray
12	234	Blue Frost / White
1	235	Core Black / Signal Coral / Dash Grey
2	235	Core Black / Gold Metallic / Cloud White
3	235	Core Black / Scarlet / Shock Lime
4	235	Core Black / Grey Two / Glory Mint
5	235	Core Black / Grey Six / Cloud White
6	235	Core Black / Glory Purple / Signal Coral
7	235	Core Black / Team Royal Blue / Cloud White
8	235	Cloud White / Core Black / Dove Grey
9	235	Core Black / Team Light Blue / Collegiate Royal
10	235	Core Black / Grey Six / Core Black
11	235	Orbit Grey / Dove Grey / Glory Green
12	235	Core Black / Scarlet / Cloud White
13	235	Cloud White / Grey One / Cloud White
14	235	Core Black / Gold Metallic / Cloud White
15	235	Core Black / Silver Metallic / Grey Six
1	236	Team Navy / Cloud White / Scarlet
2	236	Glory Red / Dash Grey / Solar Red
3	236	Core Black / Silver Metallic / Cloud White
4	236	Core Black / Signal Pink / Cloud White
5	236	Core Black / Cloud White / Glory Mint
6	236	Black / Gold Metallic / Team Royal Blue
7	236	Core Black / Gold Metallic / Core Black
8	236	Glow Orange / Core Black / Signal Coral
9	236	Core Black / Trace Grey Metallic / Shock Red
10	236	Cloud White / Core Black / Solar Red
11	236	Bright Cyan / Gold / Sky Tint
12	236	Solar Red / Cloud White / Solar Red
13	236	Chalk White / Tech Purple / Clear Brown
14	236	Core Black / Scarlet / Cloud White
15	236	Cloud White / Scarlet / Core Black
16	236	Shock Yellow / Cloud White / Shock Yellow
17	236	Signal Green / Glory Purple / Signal Coral
18	236	Core Black / Cloud White / Core Black
19	236	Glory Blue / Cloud White / Glory Blue
20	236	Team Yellow / Core Black / Scarlet
1	237	Vivid Purple/White
2	237	Black / Black / Current Blue / White
3	237	White/Sport Red
4	237	University Red / Midnight Navy / Game Royal / White
1	238	Royal Black
2	238	Tux Purple / Purple Haze
3	238	Zeppelin Yellow / Summit White  / Mountain Brown
4	238	Purple / White / Met Silver
5	238	Black / White / Met Silver
6	238	Beta / Peach Plasma
7	238	White / White
8	238	Royal / White / Met Silver
9	238	Cordova / Black
10	238	White / White / Black
11	238	Red / White / Met Silver
12	238	Cardinal / White / Met Silver
13	238	Black / Pitch Gray
14	238	Academy / White / Met Silver
15	238	Lime Light / Phosphor Green
16	238	White
17	238	Team Orange / Black / White
18	238	Black / Black / Metallic Silver
19	238	Forest Green / White / Met Silver
20	238	White
21	238	Black / Metallic Gold
22	238	Black Pi Day
23	238	Water / White / American Blue
24	238	Mod Gray / Halo Gray
25	238	Vapor Green / White
1	239	Puma White / Power Green
2	239	Puma White / Pink Glow
3	239	Puma White / Puma Black
4	239	Peacoat / Pink Dogwood
5	239	Puma White / Puma Black
6	239	Black / White
7	239	White / High Risk Red
8	239	White - Strong Blue
9	239	Castlerock / Puma Black
1	240	�Sunrise�
2	240	Black / White
3	240	Money Stacks
4	240	Neo Flame / Atomic Yellow
5	240	Black / Sulphur Yellow / Energy Red
6	240	Heat Wave
7	240	Neon Emerald / Sulphur Yellow
8	240	White
9	240	Team Royal / Red / White
10	240	White / Black / Red
11	240	Black / Team Royal / Gold Rush
12	240	Best Kept Secret
13	240	Castlerock / Team Navy
1	241	Multi-Color / Game Royal / Gum Light Brown / White
2	241	Black / Soar / Dynamic Yellow / White
3	241	Midnight Navy / Laser Crimson / Psychic Blue
4	241	Grand Purple/Multi-Color
5	241	Black / University Red / White / Black
6	241	White/White
7	241	Black / White / White
8	241	Black / Laser Blue / Digital Pink / Metallic Gold
9	241	Black / White / Game Royal
10	241	Barely Grape / Gravity Purple / White
11	241	White / Black
12	241	White / Black / Pure Platinum
13	241	Black / White / Wolf Grey
14	241	Black / Black
15	241	Oracle Aqua / Opti Yellow / Total Orange / Black
16	241	Vast Grey / Black / Digital Pink
17	241	Black/White
18	241	White / Midnight Navy
19	241	Light Cream / Sail/Electric Green / Flash Crimson
20	241	Black / Multi-Color
21	241	Black / White / University Red
22	241	White / Opti Yellow / Digital Pink / Blue Fury
23	241	Team Red / White / White
24	241	Game Royal / White / White
25	241	Field Purple / White / White
26	241	Pro Green / White / White
27	241	University Red / White / White
28	241	Wolf Grey / Black / White
29	241	Midnight Navy / White / White
30	241	Team Orange / White / White
31	241	University Gold / Black / White
1	242	White / Black / Multi-Color
2	242	Black/White/Digital Pink/Metallic Silver
3	242	Black / Dark Smoke Grey / Electric Green / Black
4	242	Infrared 23 / Black
5	242	Amber Rise/Black/Sail/Metallic Silver
6	242	White / White / Metallic Silver
7	242	Black/Black/Metallic Silver
8	242	White/Black/Red Orbit
9	242	White / Aurora / Metallic Silver
10	242	Blue Void
1	243	Desert Sand/Cedar/Metallic Gold
2	243	Navy Heather / Multi-Color / Black
3	243	University Red / Black / White
4	243	Black / Multi-Color / Black
5	243	Midnight Navy / White / Varsity Crimson
6	243	University Red / University Red / White
7	243	Black/White/Black
8	243	White / Black / Black / Metallic Silver
9	243	White / Black / University Red
10	243	Green Slate Heather / Neptune Green / Black
11	243	Black / University Red / White
12	243	Racer Blue/ Black / White
13	243	Black / Eggplant / Amarillo / White
14	243	Black/Black
15	243	College Navy / Game Royal / White
16	243	University Red/Bright Crimson/Team Red/University Red
17	243	White / Multi-Color / Black
18	243	Court Purple / Court-Purple
19	243	White / Tech Grey / Quasar Purple
1	244	Signal Coral / Core Black / Signal Coral
2	244	Cloud White / Collegiate Navy / Scarlet
3	244	Night Metallic / Glory Purple / Solar Red
4	244	Core Black / Silver Met. / Bright Blue
5	244	Solar Orange / Silver Metallic / Core Black
6	244	Core Black / Cloud White / Shock Pink
7	244	Team Navy / Cloud White / Scarlet
8	244	Core Black / Core Black / Solid Grey
9	244	Core Black / Pink Tint / Signal Green
10	244	Grey Three / Cloud White / Grey Two
11	244	Core Black / Amber Tint / Grey Six
12	244	Legacy Green / Cloud White / Solar Yellow
13	244	Core Black / Cloud White / Core Black
14	244	Core Black / Amber Tint / Glory Purple
15	244	Black / Active Purple / Metallic Gold / Metallic Silver
16	244	Black / White
17	244	Active Purple / Core Black / Solar Orange
18	244	Royal Blue / Team Colleg Gold / Cloud White
19	244	Core Black / Tech Olive / Legend Earth
20	244	Glow Green / Core Black / Carbon
21	244	Bright Cyan / Real Pink / Cloud White
22	244	Cloud White / Red / Team Royal Blue
23	244	Cloud White / Gold Metallic / Solar Red
24	244	Scarlet / Cloud White / Solar Red
25	244	Collegiate Royal / Cloud White / Bright Blue
26	244	Core Black / Gold Metallic / Core Black
27	244	Red / Core Black / Power Red
28	244	Collegiate Purple / Orange / Grey Three
29	244	Cloud White / Core Black / Pale Nude
30	244	Light Pink / Glow Blue / Gold Metallic
1	245	Core Black / Scarlet / Bold Green
2	245	Cloud White / Gold Metallic / Bright Red
3	245	Cloud White / Core Black / Scarlet
4	245	Cloud White / Active Orange / Core Black
5	245	Collegiate Burgundy / Core Black / Legend Ivy
6	245	Cloud White / Bold Gold / Blue
1	246	Disco Ball
2	246	Black / Red / Purple
1	247	Red Carpet
2	247	Black/White/Photo Blue/Black
3	247	String/Volt/Bright Crimson/Black
4	247	Black / Bright Crimson / Gym Red
5	247	White/Voltage Purple/Pure Platinum/Metallic Gold
6	247	Black/Opti Yellow/White/Voltage Purple
7	247	Black/Iron Grey/Anthracite/Black
8	247	Black/University Red/Gym Red
9	247	Black / Hyper Cobalt / Clear
10	247	Summit White / Opti Yellow / Oracle Aqua / Summit White
11	247	White/White/Black
12	247	University Red / Black / Pure Platinum / White
13	247	Cool Grey / White / Pure Platinum / Black
14	247	White / Pure Platinum / Wolf Grey
15	247	Deep Royal Blue / Racer Blue / Pure Platinum / White
16	247	Midnight Navy / Black / Pure Platinum / White
1	248	White / Aurora Green / Black
2	248	Black / White / Red
3	248	Black/Electric Green/White
4	248	Particle Grey/White/Metallic Silver
5	248	Black/Blue Void/Hyper Violet/Green Glow
6	248	White/Black/Red Orbit/Metallic Silver
7	248	University Blue / Black / White / Metallic Silver
1	249	Black/Black
2	249	Black/White/Aurora
3	249	Black/Wolf Grey/White
4	249	White/Black/White
5	249	Midnight Navy/White/Black
6	249	Game Royal/Black/White
7	249	White/Black/Voltage Purple/Photo Blue
8	249	Team Red/Black/White
9	249	University Red/White/Black
10	249	Team Orange/White/Black
11	249	White/Red Orbit/Aura Green
12	249	Purple/White/Black
13	249	University Blue/White/Black
14	249	Vivid Pink / Regency Purple
15	249	Gorge Green/White/Black
16	249	Wolf Grey/Black/White
1	250	Multi-Color/White
2	250	Off-Noir/Clear
3	250	Vast Grey/Blue Hero
4	250	Vast Grey/Thunder Grey
1	251	Multi-Color/Black/Photo Blue/Voltage Purple
2	251	Black/White/Photo Blue
3	251	Racer Pink/Black/Volt
4	251	Metallic Silver/Red Orbit/Hyper Royal
5	251	Black/Wolf Grey/Black
6	251	Total Orange/White/Black
1	252	University Red/White/Black
2	252	Wolf Grey/White/Dark Grey/Black
3	252	Dark Grey/Black/Club Gold/Metallic Gold
4	252	Black/Cool Grey/Volt/White
5	252	Cerulean/Aura/Laser Blue/White
6	252	Racer Blue/Black/Blue Hero/White
7	252	White/Wolf Grey/Bright Crimson/Black
1	253	Black/White/Metallic Silver
2	253	Black/White/University Red
3	253	Black/Multi-Color/Metallic Silver
4	253	White/Metallic Silver/Black
1	254	Black / Cloud White / Gold Metallic
2	254	Collegiate Navy / Cloud White / Real Blue
3	254	Maroon / Cloud White / Active Maroon
4	254	Collegiate Purple/Cloud White/Active Purple
5	254	Cloud White / Core Black / Gold Metallic
6	254	Cloud White / Grey Two / Team Orange
7	254	Core Black/ Scarlet / Grey Five
8	254	Power Red / Cloud White / Solar Orange
9	254	Light Onix / Cloud White / Grey One
10	254	Core Black / Maroon / Collegiate Burgundy
11	254	Collegiate Royal/Footwear White/Glow Blue
1	255	White/Bright Crimson/Black
2	255	Black/Anthracite/Black
3	255	Gym Red / Black
4	255	Black / Gym Red
5	255	White Pure Platinum
1	256	Black / White / Game Royal / University Gold
2	256	Black/White/Lucid Green/Black
3	256	Light Cream/ Fir / White / Pacific Blue
4	256	Metallic Gold/Black/White
5	256	Atmosphere Grey/Cool Grey/White/Oil Grey
6	256	Total Orange/Midnight Navy/White/Photo Blue
7	256	White / Black / White
8	256	Noble Red/Bright Crimson/Bicycle Yellow/Blackened Blue
9	256	Hyper Royal/Blue Hero/White/Metallic Gold
10	256	Orange/Dynamic Yellow/Black
11	256	Black/Red Orbit/Opti Yellow/Black
12	256	White/University Red/Metallic Gold
13	256	Black/Photo Blue/Metallic Dark Grey/Multi-Color
1	257	Collegiate Navy / Collegiate Green / Team College Gold
2	257	Core Black / Tech Indigo / Tech Purple
3	257	Light Blue / Gold Metallic / Cloud White
4	257	Core Black / Solar Red / Solar Red
5	257	Core Black / Glory Blue / Shock Yellow
6	257	Red / Power Red / Gold Metallic
7	257	Grey Three / Core Black / Glory Purple
8	257	Shock Yellow / Core Black / Active Red
9	257	Core Black / Core Black / Solid Grey
10	257	Blue / Red / Cloud White
11	257	Core Black / Team Solar Green / Silver Metallic
12	257	White / Black / Gold Metallic
13	257	Active Purple / Cloud White / Glow Blue
1	258	Black / Mod Grey / White
2	258	Red / Jet Grey / Black
3	258	White / Mod Grey
4	258	Royal
5	258	Halo Gray / Halo Gray
6	258	Gravity Green / Gravity Green
7	258	Halo Grey / Ash Grey / Teal Rush
8	258	Teal Rush / Onyx White / Teal Vibe
9	258	Harbor Blue / Khaki Base
10	258	Academy / Mod Grey
11	258	Purple / Mod Gray
12	258	Taxi / Mod Gray
13	258	Pitch Gray / Pitch Gray
1	259	White / Halo Grey / Black
2	259	Red / Glow Orange / Black
3	259	Black / Limelight
4	259	Purple / Peach Plasma
5	259	Team Orange / Glow Orange
6	259	Taxi / High Vis Yellow
7	259	Academy / Lime Light
8	259	Black / White
9	259	Blue / Red
10	259	Teal Vibe / Teal Rush
11	259	Outpost Green / Beta Red
12	259	Forest Green / Phosphor Green
13	259	Mod Gray / White
14	259	Kinetic Purple / Beta Red / Black
15	259	Harbor Blue / Teal Rush / Wire
16	259	Red
17	259	Black / Black
18	259	Onyx White / Beta
1	260	Game Royal/White/White
2	260	White/Black
3	260	White/Black/White
4	260	Voltage Purple/Black/Dynamic Yellow
5	260	Thunder Grey/Bright Crimson/Electric Green/Thunder Grey
6	260	Vivid Pink / White / Regency Purple
7	260	Light Photo Blue/Black/Bright Crimson/Light Photo Blue
8	260	Red/White
9	260	University Red/Black/White
10	260	Black/Chrome
11	260	Black/Black
12	260	Black/White
13	260	Black/University Red/White
14	260	Midnight Navy/White
15	260	Black/University Gold/Bright Violet/White
16	260	White/Game Royal
17	260	White/University Red
18	260	University Gold/Black/White
19	260	White/Field Purple
20	260	White/College Navy
1	261	Black/White/Black
2	261	Then & Now - Black / White / Black
3	261	White / Game Royal / Total Orange
4	261	White / Purple / Black
5	261	Bold Lime / Black / Volt
6	261	Black/White/Volt
7	261	White/Black/White
8	261	Parchment/ Black / Egret
9	261	Laser Orange / Black / White
10	261	Pomegranate Red / Black / Black
11	261	Black / White / White
12	261	Black / Red / Red
13	261	Black / Bold / Mandarin
14	261	Black / Bold Mandarin / Black
15	261	White / Red
16	261	White / Cyan Tint / White
17	261	White / Orange / Volt
18	261	White / White / Whte
19	261	University Blue / White / White
20	261	White/Bold Mandarin/Black
21	261	White / University Red / Rush Blue
1	262	Black/Metallic Gold/White/Vivid Purple
2	262	Multi-Color/Black/White/Metallic Gold
3	262	Black/White/Dark-Grey
4	262	Black/University Red/White/Metallic Gold
1	263	Black/White
2	263	Black/Metallic Silver
3	263	White/Black/Blue Hero/Flash Crimson
4	263	Light Aqua/Black-White
5	263	Team Orange/Black/Chile Red
6	263	White/Black/Silver
7	263	University Red/White
8	263	Midnight Navy/White
9	263	Game Royal/White
10	263	White/Clover
11	263	White/Field Purple
12	263	White/Rapid Teal
13	263	White/Rush Blue
14	263	White/College Navy
15	263	White/University Red
16	263	Wolf Grey/Black/White
1	264	Game Royal/White/Metallic Silver/Black
2	264	University Red/White/Metallic Silver/Black
3	264	Coastal Blue/Team Red/White
4	264	Black/Anthracite/White
5	264	Black/Dark Grey/Metallic Silver/White
6	264	Gorge Green/White/Metallic Silver/Black
7	264	Black/Amarillo/Field Purple/White
8	264	White/Wolf Grey/Metallic Silver/Black
9	264	Phantom/Metallic Gold
10	264	Midnight Navy/White/Metallic Silver/Black
11	264	University Red/Anthracite/Black
12	264	White/Black/Gum Light Brown
13	264	Black/Optimum Yellow
1	265	University Red/White/Black
2	265	Multi-Color/Multi-Color
3	265	White/Black
4	265	Barely Volt/Orange Pulse
5	265	Teal Tint/Red Orbit-Photo Blue
6	265	Black/Metallic Silver/White
7	265	Black/Dark Grey/White
8	265	Midnight Navy/White
9	265	Teal Tint/Blue Gaze/Red Orbit
10	265	Wolf Grey/Black
11	265	University Red/White
12	265	Blue Gaze/Blue Tint/Photo Blue
13	265	Game Royal/White
14	265	White/Metallic Gold/Game Royal/Amarillo
15	265	Pink / Pink
16	265	White/Wolf Grey/Black
17	265	Black/White/Black
18	265	Black/Cool Grey/Anthracite/Anthracite
1	266	Core Black/Ftwr White/Grey Five
2	266	Core Black / Active Red / True Orange
1	267	Black/Black
2	267	Black/White/Black
3	267	University Red/White/Black/University Red
4	267	White/Black/White
5	267	Obsidian/Wolf Grey/Chrome Yellow/Pink Blast
6	267	Game Royal/White/Game Royal
7	267	University Red/White/University Red
8	267	Multi-Color/Opti Yellow
9	267	Black/Light Aqua/Black
10	267	Midnight Navy/White/Midnight Navy
11	267	Reflect Silver/Reflect Silver
12	267	Black/Photo Blue/Total Orange/White
13	267	Multi-Color/Multi-Color
14	267	Black/Black/White/Laser Fuchsia
15	267	White/Black/Wolf Grey
16	267	Wolf Grey/White/Black
17	267	Racer Blue / Metallic Silver
18	267	Platinum Tint/Light Current Blue/Lime Blast/Platinum Tint
19	267	White/Metallic Gold/Midnight Navy
1	268	Bold Gold/Shock Red/Core Black
2	268	Black / Gold Metallic / White
3	268	Core Black / Active Gold / Shock Pink
4	268	Grey Six / Grey Four / Core Black
5	268	Core Black/ Signal Green / Semi Solar Slime
6	268	Collegiate Purple / Collegiate Royal / Cloud White
7	268	Black /Grey / Night Metallic
8	268	Ftwr White / Shock Red / Crystal White
9	268	Core Black / Active Purple / Silver Metallic
10	268	Cloud White / Shock Red/ Clear Mint
11	268	Clear Mint / Legend Marine / Legend
12	268	Tech Olive / Core Black / Active Gold
13	268	Core Black / Collegiate Burgundy / Scarlet
1	269	Academy / Blue Strike / White
2	269	Black / White
3	269	Black / Metallic Gold
4	269	Black / Mod Grey
5	269	Aruba Red / Rage
6	269	Dust / Batik
7	269	Orange Glitch / Tetra Grey / Ash Taupe
8	269	Black Silver
1	270	Black/Volt/Laser Fuchsia/Black
2	270	Black/University Gold/Aurora
3	270	Black/Del Sol/Varsity Purple/Cool Grey
4	270	White/Black/Del Sol
5	270	White/Varsity Purple/Orion Blue
1	271	Glacier Grey / Black
2	271	High Risk Red / Black
3	271	White / Glacier Grey
4	271	White / Metallic Silver
5	271	White / Surf The Web
6	271	Peacoat / White
7	271	Black / White
8	271	White / White
9	271	Strong Blue/Puma Black
10	271	Black / Electric Purple White
11	271	Limelight / Black / White
1	272	Dark Grey / Mult Color
2	272	MULTI Color / Black / Whit
3	272	Black / White / Pure Platinum
4	272	Wolf Grey / Reflect Silver
1	273	Black / White / Metallic Gold
2	273	Academy / Thunder / Fade / Pitch Grey / Coded Blue
3	273	Black / White / Red Rage / Hero Orange
4	273	Academy / Mango Orange
5	273	Red / White / Metallic Gold
6	273	Midnight Navy / White / Metallic Gold
7	273	Hi-Vis Yellow / Ambrosia / Guardian Green
8	273	Black / Bolt Orange / Rocket Red / Zap Green
9	273	Black/Elemental/Black
10	273	White/ Royal / White
11	273	Splash Party
12	273	Royal / White / Metallic Gold
13	273	Team Orange / White / Metallic Gold
14	273	Purple / White / Metallic Gold
15	273	Forest Green / White / Metallic Gold
1	274	Light Smoke Grey / Black / Cyber / Hyper Pink
2	274	Black/Amarillo/Vast Grey/Flash Crimson
3	274	Black / Red / Blue
4	274	White/Total Crimson/Tidal Blue
5	274	White/Black/Particle Grey/Orange Pulse
6	274	Vast Grey/Gunsmoke-Atmospher/Grey-White
7	274	White/Off White/Platinum Tint
8	274	Black / White
9	274	Own the Chaos
10	274	Black/Blue/Pink Sail
11	274	White/Multi Color
1	275	Black / White / University Red / Anthracite
2	275	Black/White/Black
3	275	White / Black / Aloe Verde / Gum Light Brown
4	275	Black/Hyper Pink/Rage Green/Black
5	275	Black/White-Metallic Gold
6	275	Cool Grey/Pink Foam/Black
7	275	Black/Anthracite/Metallic Gold
8	275	Wolf Grey / Black / Dark Grey / White / Tropical Twist
9	275	Racer Blue / Black / White
10	275	Black/Bright Crimson/White
11	275	Black/Metallic/Chrome
1	276	Gold / Black
2	276	Silver / Grey / Black / Red
3	276	White / Black
4	276	Standard Black / Coagulation Snow Grey / Golden
5	276	Prism Pink / Fluorescent Red / Fluorescent Grass Green
6	276	Pearl White / Coagulation Snow Grey / Blue Violet / Island Blue
7	276	Blue / Yellow / Multi-Color
1	277	Cloud White / Core Black / Active Gold
2	277	Legend Earth / Legend Earth / Linen
3	277	Tech Mineral / Glow Green / Grey
4	277	True Green / Ice Mint / Collegiate Navy
5	277	Collegiate Navy / Grey Six / Legend Purple
6	277	Cloud White / Core Black / Solar Red
7	277	Hi-Res Coral / Cloud White / Glow Blue
8	277	Core Black / Cloud White / Core Black
9	277	Sung Glow / Cream White / Bahia Light Blue
10	277	Active Red / Core Black / Aero Blue
11	277	Cloud White / Silver Metallic / Grey One
12	277	Shock Red / Cloud White / Collegiate Navy
13	277	Collegiate Royal / Black True Orange
14	277	Grey Six / Core Black / Trace Khaki
15	277	White / White / Grey
16	277	Raw Sand / Gold Metallic / Scarlet
17	277	Raw Indigo / Cloud White / Aero Blue
1	278	Bold Gold / Core Black / Scarlet
2	278	Core Black / True Green / Clear Pink
3	278	Core Black / Cloud White / Core Black
4	278	Cream White / White / Light Blue
5	278	Off White / Gum / Gum
6	278	Collegiate Navy / Cloud White / Scarlet
7	278	Hi-Res Coral / Glow Blue / Core Black
8	278	Shock Red / Scarlet / Hi-Res Yellow
1	279	Core Black / Shock Red / Solid Grey
2	279	Core Black / Gold Metallic / Solid Grey
3	279	Scarlet/ Gold Metallic / Red
1	280	Solid Grey / Raw Indigo / Core Black
2	280	Off White / Bold Gold / Carbon
3	280	Blue / Red / Yellow
4	280	Black / Grey
5	280	Raw White / Light Brown / Gum
6	280	Core Black / Cloud White / Active Green
7	280	Scarlet / Core Black / Cloud White
8	280	Glow Green / Crystal White / Core Black
9	280	Cloud White / Core Black / Cloud White
10	280	Linen / Legend Earth / Flash Orange
11	280	Shock Cyan / Core Black / Shock Cyan
12	280	Cloud White / Core Black / Cloud White
13	280	Core Black / Cloud White / Hi-Res Coral
14	280	Cloud White / Cloud White / Gold Met.
15	280	Cream White / Bahia Light Blue / Cloud White
16	280	Core Black / Bold Gold / Cloud White
1	281	Multi Color/Multi Color
2	281	Game Royal
3	281	University Red/White
4	281	White/Deep Royal Blue/Glacier Blue
5	281	Black/White Bright Crimson/Amarillo Blue Lagoon
6	281	Spongebob Squarepants
7	281	Light Bone/Green/Red
8	281	Black/Black/Black
9	281	Obsidian/Light Currentt Blue/Scream Green
10	281	Black/Hyper Pink/Volt
11	281	Black/White
12	281	Midnight Navy/White
13	281	White/Black
14	281	Game Royal/White
15	281	White/Cyber
16	281	White/Black
17	281	Multi Color/Multi Color
18	281	Wolf Grey/Black
19	281	White/Multi Color
20	281	Black/Metallic Gold/White
21	281	University Red/Black/Pure Platinum
1	282	Puma Black / Electric Purple
2	282	Puma Black / Puma Black
3	282	Metallic Gold / Metallic Gold
4	282	Biscay Green / Pink / Puma Black
5	282	Red Blast
6	282	Fluorescent Green
1	283	Metallic Silver / Black
2	283	White / Metallic Silver / University Red / Clear Jade
3	283	Particle Beige / University Red / Infrared / Obsidian
4	283	Black / Black / Dark Smoke Grey / Sail
5	283	Black / Fire Red / Particle Grey / Sail
6	283	White / Metallic Gold / Black / Vast Grey
7	283	University Red / Black / Sail / White
8	283	Black / Metallic Gold / University Red
9	283	Black / Dark Grey / White
10	283	Cement Grey / Black Sail / Volt
11	283	Vast Grey / Blue Void / White Sail
12	283	Black / Metallic-Silver
13	283	Black / Metallic Gold / White
1	284	Easy Coral / Real Coral / Chalk Coral
2	284	Gold Metallic / Cloud White / Core Black
3	284	Core Black / Grey / Scarlet
4	284	College Purple / Black / Hi Res Aqua
5	284	Core Black / Yellow / Solar Red
6	284	Legend Ink / Collegiate Navy / Power Red
7	284	Maroon / Core Black / Grey Six
8	284	Core Black / Active Blue / Solid Grey
9	284	Core Black / Cloud White / Grey Six
10	284	Cloud White / Cloud White / Core Black
11	284	Cloud White / Core Black / Light Solid Grey
12	284	Grey Two / Silver Metallic / Aero Blue
1	285	COLLEGE RED
2	285	Ice Blue / White / Yellow
3	285	Fluorescent Red / Fluorescent Green / White
4	285	Klay Area
5	285	Make it Rain
1	286	White / Varsity Royal / Varsity Red
2	286	White / Hot Lava / Silver
3	286	Black/Black
4	286	Black / Hot Lava / Flat Silver
5	286	Atomic Violet / Bicycle Yellow Half Blue
6	286	Wolf Grey / White
7	286	White/Multi Color/Hyper Grape Volt
8	286	Black/Metallic/Silver White
9	286	Black/White
10	286	White/Black/Metallic Gold
1	287	Cloud White / Core Black / Crystal White
2	287	Core Black / Cloud White / Core Black
3	287	Collegiate Navy / Cloud White / Collegiate Navy
4	287	Collegiate Royal / Cloud White / Scarlet
5	287	Core Black / Light Solid Grey / Hi-Res Blue
6	287	Royal Blue / White / Royal Blue
7	287	Grey Three / Gold Metallic / Grey Four
8	287	Grey One / Gold Metallic / Aero Green
1	288	Black / Infrared 23 / Olive Canvas
2	288	Light Smoke Grey / Black
3	288	Black / White / Black
4	288	Dark Concord / White / Black / Iron Grey
5	288	Infrared 23 / Black / Infrared 23
6	288	Dark Concord / White / Black
7	288	White / Black
8	288	White / Infrared 23 / Black
1	289	Blue Void/Black/Squadron Blue
2	289	Hot Punch/Lime Blast/Pure Platin
3	289	Blue/Yellow
4	289	Black/Black
5	289	College Navy/University Gold
6	289	Black/Twilight Pulse
7	289	Mulit Color/Metallic Gold
8	289	Laser Fuchsia/Laser Fuchsia
9	289	Black/White/Racer Blue/Bright Crimson
10	289	Black/Chlorine/Blue/Persian Violet
11	289	Cool Grey/Wolf Grey/Pure Platinum
12	289	Black/Bright Crimson/Photo Blue
1	290	University Red / Metallic Silver / White
2	290	Orange Blaze / Metallic Silver / White
3	290	Black / Metallic Silver / White
4	290	Team Gold / Dark Grey / White
5	290	University Blue / Metallic Silver / White
6	290	Team Red / Metallic Silver / White
7	290	Black / White
8	290	Black/Multi Color
9	290	Sail / Multi-Color
10	290	Black/Racer Blue
11	290	Gorge Green / Metallic Silver / White
12	290	Midnight Navy / Metallic Silver / White
13	290	Vast Grey/Cobalt Blaze/Moon Particle
14	290	White / Black
15	290	Amarillo / Court Purple / Black
16	290	Hyper Grape / University Gold / Black
17	290	Wolf Grey / Black / White
18	290	Game Royal / Metallic Silver / White
19	290	Pacific Blue / Turf Orange / Black
20	290	Gym Red / Metallic Silver / White
1	291	Charcoal / Black
2	291	Royal / White
3	291	White / Black
4	291	Black / White
5	291	Wolf Gray / Sail
6	291	Royal / White
1	292	Black / Grey
2	292	Black / White / White
3	292	Blue
4	292	Magma Orange / Formula Orange / Antifreeze
5	292	Midnight Navy / Red / White
1	293	Phantom / Summit White
2	293	Black / White / University Red / Black
3	293	Cement Grey / White / University Red / Black
1	294	Hot Punch
2	294	Amarillo / Black
3	294	University Red / Metallic Gold
4	294	White / Wolf Grey
5	294	Black / Black / Black
6	294	Black / Black
7	294	White / Black
8	294	Dark Obsidian / Dark Obsidian
9	294	Black / White
10	294	Atmosphere Grey / White
11	294	Black / White
1	295	Black / Gold
2	295	Core Black / Cloud White / Scarlet
3	295	White / Pink / Black
4	295	Footwear White / Core Black / Gum
5	295	Core Black / Silver Metallic / Grey Three
6	295	Grey
7	295	Core Black / Green / Purple
8	295	Core Black / Scarlet / Footwear White
9	295	Core Black / Shock Red / Legend Purple
10	295	Grey / Shock Yellow / Grey
1	296	Racer Blue / Racer Blue / White
2	296	Gym Red / Dark Obsidian / White
3	296	Dark Grey / Dark Grey
4	296	Amarillo / Chrome / Black
5	296	Black / Black / Photo Blue
6	296	Black / Pure Platinum / Anthracite
1	297	Midnight Navy / Black / White
2	297	Game Royal / White / Black
3	297	University Red / Black / White
4	297	Black / White
5	297	Team Red / Black / White
6	297	Team Orange / Black / White
7	297	Wolf Grey / Black / White
8	297	White / University Red
1	298	White / Black
2	298	Team Red / Black / White
3	298	University Blue / Black / White
4	298	University Red / White / Black
5	298	Black / White
6	298	Game Royal / White / Black
1	299	Black / White / Gym Red
2	299	Black / Varsity Red / Dandelion
3	299	Wolf Grey / White / Dark Grey
4	299	White / Gym Red / Black
5	299	Black / Black / Tech Grey
6	299	White / Black / Hyper Royal
1	300	Black / Yellow
2	300	University Red / Black / White / University Red
3	300	Light Smoke Grey / Metallic Silver
4	300	Black / University Gold / White
5	300	White / University Red / Black
6	300	Desert Sand / White / University Red / Metallic Gold
1	301	Blue
2	301	Black / White / Silver
3	301	Grey / Gum
4	301	Black / White / Neon Coral
5	301	White / Neon / Coral
6	301	Black / Gold
7	301	White / Black
8	301	Pierce / Pierce
9	301	Elemental / Ivory / Tokyo Lime
10	301	White / Multi-Color
11	301	Black
12	301	White / Gold
1	302	Core Black / Solid Grey / Core Black
2	302	Cloud White / Grey / Grey
3	302	Core Black / Gold Metallic / Carbon
4	302	Core Black / Red
1	303	Black / White / Varsity Purple / Cany
2	303	Midnight Navy / White / Varsity Red
3	303	White / Black / Varsity Purple
4	303	Black / White / Varsity Maize
5	303	Wolf Grey / White / University Blue
6	303	White / Black / Varsity Red
7	303	White / Del Sol / Varsity Purple
8	303	Black / Metallic Gold
1	304	Grey / Multi-Color
2	304	Yellow Strike / White
3	304	White / Black / Infrared 23 / Volt
4	304	Black / Multi-Color
5	304	Black / Coral / Stardust
6	304	White / White / Multi-Color
1	305	University Red / White / Metallic Silver
2	305	White / Midnight Navy
3	305	Hot Lava / Black / White
4	305	Black / White / Black
5	305	Black / Black / Hazel Rush
6	305	Black / Metallic Silver / White
7	305	Game Royal / Metallic Silver / White
8	305	Black / Grey
9	305	White /Dark Grey / Flash Crimson
10	305	College Navy / Metallic Silver
11	305	White / Black
12	305	White / White
13	305	Team Red / Team Red
14	305	Blue Force / Aegean Storm / Metallic Gold
15	305	Anthracite / Anthracite / Black
16	305	Black / Black / Black
1	306	Black/Thunder Grey-Gunsmoke
2	306	White / Black / University Red / Cool Grey
3	306	University Red / Metallic Gold / Black
4	306	White / University Red / Deep Royal Blue
5	306	Black / White / Volt
6	306	White / Metallic Silver / Wolf Grey
7	306	Anthracite / Black / White / Green
8	306	Black / Red Orbit
1	307	Multi-Color / Black / White / University Red
2	307	Black / Metallic Gold / Phantom
3	307	Light Bone / Dark Stucco- / Sail
4	307	White / Metallic Silver
5	307	University Red / Black / University Red
6	307	Cool Grey / Black / Teal Tint / Sunset Pulse
7	307	Black / Black / Thunder Grey
8	307	Black / Black / White / Black
9	307	Signal Blue / Thunder Grey / Black
10	307	Taupe Grey / Team Red / Vast Grey
1	308	Clay Green / Black
2	308	Blue Lagoon / Hyper Violet / White / Black
3	308	Anthracite / Hot Punch / White / Wolf Grey
4	308	Dark Obsidian / Metallic Silver
5	308	White / Multi-Color
6	308	Black / Racer Blue
7	308	Black / Black / White / Solar Red
8	308	White / Photo Blue
9	308	Pure Platinum / Neo Turquoise / Wolf Grey / Aurora Green
10	308	Dark Obsidian / Navy / Kinetic Green
11	308	Olive Canvas / Obsidian / Light Silver
12	308	Cannon / Volt / Purple Venom
1	309	Grey / Running White / Grey
2	309	Bold Red / Light Solid Grey
3	309	Black / Scarlet-Grey
4	309	Core Black / Grey / Iron Metallic
5	309	Core Black / Gold Metallic / Trace Royal
6	309	Green / Multi-Color
1	310	Ecru Tint / Glow Orange / Tech Copper
2	310	Core Black / Core Black / Real Blue
3	310	Cloud White / Cloud White / Maroon
1	311	Black / Black / Signal Blue / Team Orange
2	311	Midnight Navy / Metallic Gold / White
3	311	Black / White
4	311	Black / Pink Blast
5	311	White / Yellow
6	311	Tech Grey / Black / White / Orange Peel / Melon Tint
7	311	Black / Gym Red
8	311	College Navy / Amarillo / White
9	311	Orange Pulse / Hyper Royal / Sail
10	311	Black / White
11	311	College Navy / College Navy / Pewter Grey
12	311	University Blue / White
13	311	Black / White
14	311	White / Black / Hyper Jade
15	311	White / Pure Platinum / Metallic Silver
1	312	White / Deep Royal / Gum / Light Brown
2	312	Black / Dark Grey
3	312	Silver / Metallic Gold / Light Gum Brown
4	312	Game Royal / White
5	312	Dark Obsidian / Black
6	312	Black / Metallic Silver
7	312	Midnight Navy / White
8	312	White / Multi-Color
9	312	Black / White
10	312	Red Orbit / Metallic Gold
11	312	White / Black
12	312	Pitch Blue / Metallic Gold
13	312	Multi Color / Multi Color
14	312	Wolf Grey / Black
15	312	Light Aqua / Neo Turquoise
16	312	Black / Rage Green / Black
17	312	White / Deep Royal Blue
18	312	Multi-Color / Multi-Color
19	312	Black / Black
20	312	Black / White / Anthracite / Light Racer Blue
21	312	Multi-Color / Multi-Color
22	312	Black / Multi-Color
23	312	Black / Black / Laser Fuchsia
24	312	University Red / Black
25	312	University Red / White
1	313	Black / Fluorescent Mint Green
2	313	Cobalt Blue / Red
3	313	Black / Yellow
4	313	Blue / Purple / White
5	313	Black/Fluorescent Magenta
6	313	Glacier Grey / Gum Color
7	313	Green / Black / White
8	313	Blue / White
9	313	White / Black
10	313	Grey / Blue
11	313	Old Rose
1	314	Multi Color / Multi Color
2	314	Multi Color / Multi Color
3	314	Black / Vivid Blue
1	315	Baja / Brown
2	315	Black / Black
3	315	Red / Red / Red
4	315	Merlot / Merlot
5	315	Toyal / Taxi / Taxi
6	315	Anthracite / Elemental
7	315	Green / White
8	315	Black / Orange
9	315	Grove Green / Grove Green / Gum
1	316	Black / White / Gold
2	316	Red
3	316	Overcast Grey / Graphite / White
4	316	White / White
5	316	White / Team Royal
6	316	Team Royal / Academy / Team Royal
7	316	Black / White
8	316	Black / White
9	316	Flushed Pink
10	316	Yellow / Blue
11	316	White / Gold
12	316	Royal / Metallic Silver
1	317	Blue / Black / Red
2	317	On Fire
3	317	Kamaqing
4	317	BHM
5	317	CNY
6	317	Home
7	317	Valentine's Day
1	318	University Red / White / Black
2	318	Black / Gum
3	318	Multi-Color / Black
4	318	White / Black / Sport Red
5	318	Black / Black / Sail / Bright Crimson
6	318	Multi-Color / White
7	318	White / Black / Black / University Red
8	318	Rust Pink / Metallic Gold / Black
9	318	Black / Black / Metallic Gold
10	318	Black / Taupe Grey / Team Red
11	318	Black / Red / Green / Metallic Gold
12	318	Photo Blue / Photo Blue / Total Orange
13	318	String / Vachetta Tan / Sail
14	318	Black / White / White
15	318	Wolf Grey / Cool Grey / Metallic Gold
16	318	Dark Atomic Teal / Black / Team Red
1	319	Photo Blue / Metallic Silver / Team Orange
2	319	Black / University Red
3	319	Black / White Court / Purple / Turbo Green
4	319	Black / University Red / White / Cement Grey
5	319	White / Black-Court / Purple / University Blue
6	319	Black / Multi-Color / Multi-Color
7	319	Pure Platinum / Hyper Royal
8	319	Black / University Red / White / Metallic Gold
9	319	University Blue / College Navy / White
10	319	Gym Red / Black
1	320	Utility Black / Energy Blue / Yellow
2	320	Core Black / Footwear White / Grey Five
3	320	Core Black / Core Black / Footwear White
4	320	Core Black / Scarlet / Gold Metallic
5	320	BAPE - Black / Green / Gum
6	320	Grey / Core Black / Grey
7	320	Cloud White / Crystal White / Core Black
8	320	Core Black / Running White
9	320	Running White / Core Black
10	320	White / White / Gum
11	320	Scarlet Red / White / Scarlet Red
12	320	Core Black / Running White / Grey
13	320	Scarlet / Hi-Res Red / Core Black
1	321	Black / University Red / White
2	321	Black / University Red / White
3	321	Blue / Yellow / White
4	321	Black / Metallic Gold / White
5	321	Black / Gym Red / Tour Yellow
6	321	White / Pine Green / Black
7	321	University Blue / Midnight Navy / White
8	321	White / Metallic Silver / Black
9	321	Gym Red / White
10	321	Golden Harvest / Metallic Gold / Sail
11	321	Light Bone /Black / Vachetta Tan / Infrared
1	322	Black / Red
2	322	Black / Gold / White
3	322	White / Blue
4	322	Grey / Blue Solid / White
1	323	Multi-Color / Black
2	323	College Navy / Deep Royal Blue
3	323	University Red / Reflect Silver
4	323	Pale Grey / Sail
5	323	White / Metallic Silver
6	323	Black / Metallic Silver
7	323	Cool Grey / Black
1	324	Black / Sail / Gum
2	324	Glacier Grey / Glacier Grey / Black
3	324	Obsidian / Mega Blue / White
4	324	Habanero Red /Habanero Red / Black
5	324	Sonic Yellow / Sonic Yellow / Black
6	324	Port Wine
7	324	White / Purple
8	324	Chrome / Habanero Red / Circuit Orange
9	324	Blue Fury / Blue Fury / Black
10	324	White / Ice / Metallic Silver
11	324	White / Gum
12	324	Action Grape / Black
13	324	Pure Platinum / White
14	324	Black / Metallic Gold / Anthracite / Light Gum
1	325	Black / White / White
2	325	Cardinal / White
3	325	Purple / Purple / White
4	325	Black / Red
5	325	Green / White
1	326	Black / Black / Infrared 23
2	326	Black / Chrome / Anthracite
3	326	River Rock / University Red
4	326	Black / Cool Grey / White / Concord
5	326	Italy Blue / Gym Blue / Black
6	326	Sail / Infrared 23
7	326	Black / University Red / White
8	326	Gym Red / Black / Team Red
9	326	Wolf Grey / White
10	326	Wolf Grey / Pure Platinum / White
1	327	Black/Footwear White/Scarlet
2	327	Light Grey/Solar Yellow
3	327	Capital Blue / Running White / Dark Navy
4	327	Equipment Yellow / Core Black / Bold Gold
5	327	Footwear White / Footwear White / Core Black
6	327	Grey / Grey
7	327	Trace Khaki
1	328	Black / Wolf Grey
2	328	Black / Wolf Grey / Red
3	328	Game Royal / White
4	328	Black / Metallic Silver / White
5	328	University Red / Black / White
1	329	Olive / Hazel / Sequoia
2	329	University Red / Black / White / Total Crimson
3	329	Black / White / Atmosphere Grey / Team Orange
4	329	White / Racer Blue / Infrared
5	329	Midnight Navy / Metallic Gold
6	329	Medium Olive / Black / Black
7	329	Black / Red Stardust / Gym Red
8	329	Black / Metallic / Gold /White
9	329	Black / Gum / Light Brown / Total Crimson / Black
10	329	Team Red / White / Total Crimson / Black
11	329	Metallic Silver / University Red / Black / White
12	329	White / Black / Metallic Gold
13	329	White / Black / Pure Platinum
14	329	Glacier Grey / Deep Royal Blue / University Red / White
15	329	Black / White / University Red
16	329	White / Vivid Pink / White
17	329	College Navy / Team Red / White
18	329	Cool Grey / Metallic Gold / Pure Platinum
19	329	Wheat Gold / Metallic Gold
20	329	Dark Grey / Gum / Light Brown / Black
21	329	Light Bone / Dark Stucco / Black
22	329	Black / Black / Ice Blue
23	329	Black / Racer Blue / Sail
1	330	White / Game Royal
2	330	Multi-Color / Black / Cool Grey / White
3	330	Multi-Color / Multi-Color
4	330	Black / Black / White
5	330	Hyper Turquoise / Racer Blue
6	330	Black / White
7	330	White / Chrome / Pure Platinum
8	330	Cool Grey / Igloo / White
9	330	Racer Blue /Light Menta / Black / Total Crimson
10	330	University Red / Black
11	330	Racer Blue / Metallic Gold
12	330	White /Game Royal / University Gold
13	330	Black / Black
14	330	Platinum Tint / Vast Grey
15	330	Wolf Grey / Cool Grey
16	330	Dark Grey / Reflective Silver
1	331	Anthracite White / Constellation Purple
2	331	Team Royal / White
3	331	Team Royal / White
4	331	Black / Taxi
5	331	Taxi Yellow / Team Royal
6	331	Stealth Grey / White / Stealth Grey
7	331	Black / White / White
8	331	Red / White / White
9	331	Imperial Purple / Lime Fizz
10	331	Light Blue / White
11	331	Tropical Pink / White / White
12	331	Cardinal / White / White
1	332	Black / Green
1	333	Wolf Grey/White-Black
2	333	Black / White
3	333	University Red / Bright Crimson / Black
4	333	Volt / White / Black
5	333	Navy / Igloo
6	333	White / Black
1	334	Black / Deep Royal Blue / Photo Blue / Blue Fury / Hyper Violet
2	334	Black / Black Anthracite / Cool Grey
3	334	Black / Light Bone / Light Aqua
4	334	Bright Violet / Black / White / Total Orange
5	334	Navy / Multi-Color
6	334	Ivory / Oatmeal Gum / Light Brown / Vivid Sky
7	334	Pure Platinum / Wolf Grey / University Gold
8	334	Black / White / Hyper Turquoise
9	334	Obsidian / University Gold / Hyper Violet / Wolf Grey
10	334	Game Royal / Black / White
11	334	Glacier Grey / Midnight Navy
12	334	University Red / White / Black
13	334	White / Black / Ice Blue
14	334	Neon Volt / White
15	334	Black / University Gold / Wolf Grey
16	334	Wolf Grey / Wolf Grey / Cool Grey / Gum
1	335	Black / White / Dark Grey / Hyper Orange
2	335	Dark Grey / Sail / Hyper Jade
3	335	Black / Tour Yellow / Blue Fury
4	335	Multi Color / Black / Wolf Grey
5	335	University Red / Palest Purple
6	335	Pearl Pink / Dust
7	335	Pale Grey / Pale Grey / Ivory
1	336	Black / White- / Gym Red
2	336	Black /Clear Jade / Black
3	336	White / Black / White
4	336	White / Infrared 23 / Black
5	336	Black / White
6	336	Black / Anthracite / University Red
7	336	Black / Metallic Silver / Gym Red
8	336	Wolf Grey / Dark Grey
9	336	Soar / White / Black
1	337	Blue / Red
2	337	Black
3	337	Grey
4	337	Midnight Navy / Metallic Gold
1	338	Purple Dynasty / Metallic Silver
2	338	Soar / Deep Royal Blue
3	338	Midnight Navy / Max Orange / Ice Blue
4	338	Varsity Red / Varsity Red
5	338	Black / Metallic Gold / Anthracite
6	338	White / Metallic Gold / Black / Pure Platinum
7	338	Black / Gym Red / White / Anthracite
1	339	Blue Fury / Metallic Silver / Equator Blue
2	339	Black / Black / Glass Blue
3	339	Matte Silver / White Glow
4	339	University Red / Black / White
5	339	Anthracite / Anthracite
6	339	Black / White / Ice
7	339	White / Metallic Gold / Black
8	339	Black / Volt / Cool Grey
9	339	White / Metallic Silver / Ice Blue
10	339	Black / Black / University Red
11	339	White / Black / University Red
1	340	Black / White / Metallic Gold
2	340	White / Black / Metallic Gold / Pure Platinum
3	340	Black / Anthracite / Gum / White Ice
4	340	Black / Black / Team Orange
5	340	Grey / White
6	340	White / Pure Platinum / Black
7	340	Gorge Green / Metallic Silver / White
1	341	Black / Black
2	341	University Red / Gym Red / Pure Platinum / White
3	341	White / Volt / Reflect Silver
1	342	Dust / Electrolime / Pure Platinum / Anthracite
2	342	Dark Grey / Anthracite / Cool Grey / Black
3	342	Pure Platinum / White / Cool Grey
4	342	Anthracite / Black
5	342	Black / University Red
6	342	Black / Dark Grey / Dynamic Yellow / White
7	342	Turbo Green / White
8	342	Blue / White
9	342	Black / Dark Grey / Dynamic Yellow / White
10	342	Fierce Purple / Black
11	342	Chlorine Blue / Industrial Blue / Blue / Tint black
12	342	Team Red/Black / University Red / White
13	342	White / Grey
1	343	Black / White / Silt Red
2	343	Black / Team Orange / Concord / Neo Turquoise
3	343	University Red / University Red / Wolf Grey
4	343	Team Red / Total Crimson / White / Pink Blast
5	343	Dark Obsidian / Red / White
6	343	Black / White
7	343	Cool Grey / Anthracite / Polarized Blue
8	343	Aqua / Aqua / Black
9	343	University Red / Black / Team Red
10	343	Ivory / Pale Grey / Light Bone
11	343	Hyper Cobalt / White / Chlorine Blue / Volt
12	343	Black / Deep Royal Blue / Photo Blue
13	343	White / Chrome
14	343	Black / Total Crimson / Dark Grey / White
15	343	Black / Black
16	343	Obsidian / Metallic Gold / Summit White
17	343	Black / Black Varsity Maize / White
1	344	Chalk White / White
2	344	Core Black / Easy Green / Energy
3	344	Trace Cargo / Linen Khaki / Running White
4	344	Bold Gold / Core Black / Solar Gold
5	344	Scarlet / Light Scarlet / Running White
6	344	Legend Ink/Noble Ink/Core Black
7	344	Solid Grey / Solid Grey / Silver Metallic
8	344	Running White / Core Black / Gold Metallic
9	344	Core Black / Scarlet / Core White
10	344	Scarlet / Footwear White / Energy
11	344	White / Gold / Gum
12	344	Core Black / Core Black
13	344	Medium Grey / Heather Solid Grey / Light Solid Grey
1	345	Power Red / Running White
2	345	Collegiate Royal / Running White
3	345	Footwear White / Scarlet / Navy
4	345	White / Black / Red
5	345	Black / Black / Black
6	345	Footwear White / Footwear White / Gum4
7	345	Scarlet / Scarlet / Scarlet
8	345	Maroon / Footwear White / Grey Two
9	345	Multicolor / Multicolor
10	345	Core Black / Footwear White / Core Black
1	346	Midnight Navy / Pure Platinum / White
2	346	Black / University Red / Hyper Violet
3	346	Bone White / Grey / Gum
4	346	Cool Grey / White / Black
5	346	White / Metallic Gold / Metallic Gold
6	346	Black / Black / White
7	346	Black / Black / Gum Light Brown
8	346	Purple Stardust / Black
9	346	Igloo / Black
10	346	White / White / Black
1	347	Blue / Yellow
2	347	51640570 2
3	347	Moon / Blue / White
4	347	White / Metallic Silver / Black
5	347	Bone/Brown
6	347	Black / Red / Purple
1	348	Black / Blue
2	348	Black / White
3	348	Blue
1	349	Neptune / Sable / Metallic Gold
2	349	Steel / Aluminum / Black
3	349	Royal Blue / White / Yellow
4	349	Systematic / White
5	349	White / Metallic Silver / Aluminum
6	349	Artillery Green / Black / Radiate
7	349	Black / Carolina Blue
8	349	Black / White
9	349	White / Blue / Grey
10	349	Grey Matter / Rhino Grey / Black
11	349	Peacock Blue / Black
12	349	White / Royal / Taxi
13	349	Rocket Red / Aluminum / Black
14	349	Red / Grey / White
15	349	Bolt Orange / Steel / Black
16	349	Steel / Team Royal / Carolina Blue
17	349	White / Navy
1	350	Black / Game Royal / White
2	350	Black / Starfish / Black / Sail
3	350	Black / Concord / Anthracite / White
4	350	Varsity Red / Black / White
5	350	Black / Anthracite / White
6	350	Black / University Red / White
7	350	Concord / Bright Mango / Black
8	350	Black / White / Wolf Grey
9	350	Green Abyss / Ghost Green / White / Volt
10	350	White / University Red / Deep Royal Blue
11	350	White / Black / Varsity Red
1	351	University Red / White / Black
2	351	Deep Burgundy / Metallic Red / Bronze
3	351	Wolf Grey / Dark Grey
4	351	Multicolor / Multicolor
5	351	Black / Black / Anthracite
6	351	Blue / White
7	351	Black / Hot Punch
8	351	Black / Clear Jade
9	351	Varsity Red / White
10	351	White / University Red / Race Blue
11	351	Game Royal / Black / White
12	351	Obsidian/ Dark Purple Dust / Black
13	351	White / Burnt Orange
14	351	Multi-Color / Multi-Color
15	351	Black / Metallic Gold / White
16	351	Wolf Grey / Multi-Color
17	351	White / Black / White
\.


--
-- TOC entry 4916 (class 0 OID 16450)
-- Dependencies: 222
-- Data for Name: Critic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Critic" (critic_id, name, youtube_channel) FROM stdin;
37	Foot Doctor Zach	https://www.youtube.com/channel/UCSOQGnOJqKOlIeQoXOSFyjw
29	MARKCHES	https://www.youtube.com/channel/UC0t0IqxfP_idFzKGEkgEixg
44	TommyLiu	https://www.youtube.com/channel/UCSZWLqReT1tt0qHCX6vMsZA
46	Jeremy Jones	https://www.youtube.com/@JeremyJonesNeverFold
24	RicheeKim	https://www.youtube.com/channel/UC_P_HdWJvF03Q9_yCYpeZ2Q
36	Snkr Tech Talk	https://www.youtube.com/channel/UCRZe0TnLQ662pe-a-3czJvg
48	DG Hoops	https://www.youtube.com/@DGHoops/videos
47	Lukas Simoner	https://www.youtube.com/@ls_hoops/videos
43	The Sole Drop	https://www.youtube.com/channel/UCju1EmUNJKT24Ufp8TAi2Dw
32	ShadeSnSoleS [Youtube]	https://www.youtube.com/channel/UCTclZfJdLpuw6zzpGhpN33Q
45	KicksContestWorld	https://www.youtube.com/channel/UCpQdWuk5Sr8bZrzSkw7sGtg
39	Evan Miranda [weartesters.com]	https://weartesters.com/author/evan/
7	Nelson Chan @Hoop and Life	https://www.youtube.com/channel/UCncnlRN31ckfiS10EsPHPfg
1	NightWing2303 [weartesters.com]	https://weartesters.com/author/admin/
19	PureKicks	https://www.youtube.com/channel/UCZK9kzLWyKs7Py1j-7yb4mQ
2	Stanley T. [weartesters.com]	https://weartesters.com/author/nyjumpman23/
41	Allen Sison [weartesters.com]	https://weartesters.com/author/allen104396/
42	Jackson Bayer [weartesters.com]	https://weartesters.com/author/kingjackson/
33	Soled Out Reviews	https://www.youtube.com/channel/UCMahw55qSA5dH8qnzNBaJmA
11	Duke4005 [weartesters.com]	https://weartesters.com/author/brhinkle/
25	JAHRONMON [Youtube]	https://www.youtube.com/channel/UCv-1s-XXGHaCstsvn0-VLHw
6	The Sole Brothers	https://www.youtube.com/channel/UCBV3x4ANi_UuF3LyuFPa_Pg
40	RunStretchTech	https://www.youtube.com/channel/UCXELjes5fLLMKwnG0dd5ghA
34	LZ Hoops	https://www.youtube.com/channel/UCsPseldPJ8I-zKvmZMiLH4w
30	Gavriel Rupert Dela Cruz [weartesters.com]	https://weartesters.com/author/gavriel/
27	Jalique Gabay [weartesters.com]	https://weartesters.com/author/lookatleak/
38	SnB PH	https://www.youtube.com/channel/UCqG2f4LZU696Q8cJILSVjBw
35	Shoeware	https://www.youtube.com/channel/UCp6L72gvMNQmczlrb6cd21Q
9	KickGenius	https://www.youtube.com/channel/UCrOgQZYG0olMJaMlNQPjLYw
18	AnotherPair [Youtube]	https://www.youtube.com/channel/UCLkh8oi0KAnClK7IfZmET8A
3	Schwollo	https://www.schwollo.com
15	Another Pair [weartesters.com]	https://weartesters.com/author/anotherpair/
4	Zac Dubasik [SoleCollector.com]	https://solecollector.com/author/zac-dubasik
10	MR FOAMER SIMPSON	https://www.youtube.com/channel/UC4gPKdabQVW2YyhCtO7JErw
20	Analykix.com	http://www.analykix.com/search/label/review
5	Jarron Ramos [weartesters.com]	https://weartesters.com/author/jahronmon/
23	QuickKicks [weartesters.com]	https://weartesters.com/author/quick-kicks/
\.


--
-- TOC entry 4917 (class 0 OID 16458)
-- Dependencies: 223
-- Data for Name: Review; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Review" (critic_id, shoe_id, rating, name, date, description) FROM stdin;
37	1	8.6	Foot Doctor Zach	2025-05-15	The Reebok Engine A does not disappoint. If you can get the fit right, the performance feels fantastic.
29	1	8.0	MARKCHES	2025-05-15	Kudos to Reebok for moving in the right direction with the Engine A. I like the comfort, and the traction plays well on clean courts.
44	1	8.0	TommyLiu	2025-05-15	The Reebok Engine A is a solid performer, especially for a comeback model. I like the cushioning, and the traction is consistent.
44	2	8.4	TommyLiu	2025-05-15	I like the performance of the Jordan Luka 4. It has the best cushioning and traction in his signature line.
46	2	8.2	Jeremy Jones	2025-05-15	The Jordan Luka 4 feels more refined than the Luka 3. I appreciate the tweaks and upgrades to the support and cushioning.
24	2	8.2	RicheeKim	2025-05-15	The Jordan Luka 4 is a solid shoe, but doesn't have the best tech. The traction performs well on clean courts, and the support is secure.
36	2	8.2	Snkr Tech Talk	2025-05-15	The Jordan Luka 4 is the best signature shoe in the line. The traction and support are impressive, but I wish the Zoom Air bag felt better.
48	2	8.2	DG Hoops	2025-06-08	The Jordan Luka 4 is the best shoe in his line. It's a reliable and comfortable performer. The playability is good thanks to the weight, cushioning, and fit.
47	2	8.0	Lukas Simoner	2025-05-15	There are plenty of upgrades and improvements to the Jordan Luka 4, but the support takes a step back.
43	2	7.8	The Sole Drop	2025-05-15	The Jordan Luka 4 is a responsive, low-to-the-ground performance shoe. The cushioning feels comfortable, and I like the snug fit.
37	2	7.6	Foot Doctor Zach	2025-05-15	If you liked the Luka 1, you're going to like the Luka 4. It offers decent cushioning, with the stability of the original.
37	3	8.9	Foot Doctor Zach	2025-04-12	The Anta KAI 2 is a well-balanced shoe with very few faults. I always felt confident with the traction, and the cushioning is very bouncy.
43	3	8.8	The Sole Drop	2025-04-12	The Anta KAI 2 is one of my favourite shoes of the year. The cushioning is impressive, the materials work well, and I like the support.
46	3	8.2	Jeremy Jones	2025-04-12	I enjoy playing in the Anta KAI 2. I like the traction, cushioning, and fit.
44	3	8.0	TommyLiu	2025-04-12	The Anta KAI 2 truly feels like a Kyrie shoe. It's responsive and has impressive cushioning, but lacks cushioning.
36	4	9.4	Snkr Tech Talk	2025-04-28	I love the Way of Wade 808 5 Ultra. Li-Ning stepped up and improved an already good shoe. This shoe has my favourite drop-in midsole ever.
43	4	9.0	The Sole Drop	2025-04-12	This shoe is extremely lightweight, has phenomenal traction, and outstanding cushioning.
47	4	9.0	Lukas Simoner	2025-04-20	The Way of Wade 808 5 Ultra offers insane performance at its price point. The traction is the standout feature, but the cushioning is also impressive.
37	4	8.8	Foot Doctor Zach	2025-04-12	The Li-Ning Way of Wade 808 5 Ultra is a lively shoe. The bounce is incredible, and the traction is also top-notch.
44	4	8.6	TommyLiu	2025-04-12	The Way of Wade 808 5 Ultra is lighter, breathable, and bouncier. It's an all-around upgrade and one of the best performers available.
24	4	8.6	RicheeKim	2025-04-20	The Li-Ning Way of Wade 808 5 Ultra is worth the money. The drop-in midsole feels crazy and is one of the best available.
29	4	8.6	MARKCHES	2025-04-28	The Way of Wade 808 5 Ultra is a solid performer after an initial break-in period. I like the traction and cushioning performance. It's lightweight and fast.
29	5	8.4	MARKCHES	2025-02-28	The Jordan Zion 4 provides decent value for the price. The shape and fit are downsides, but the traction is reliable and the cushioning is comfortable.
36	5	8.3	Snkr Tech Talk	2025-03-20	The price point is awesome for what you're getting from the Jordan Zion 4. I love the cushioning setup and the support feels great.
43	5	8.0	The Sole Drop	2025-03-12	I like playing in the Jordan Zion 4 but it's not my type of shoe. I prefer something more fluid. The cushioning feels nice though.
37	5	7.8	Foot Doctor Zach	2025-02-28	I can recommend the Zion 4 for people with narrow feet. It's bouncy, quick, and fun to play in.
47	5	7.6	Lukas Simoner	2025-04-12	The Jordan Zion 4 is a slightly below-average performer. It doesn't work for my feet, but I like the cushioning setup.
24	5	7.4	RicheeKim	2025-03-12	The Jordan Zion 4 is not it for me. My main issue is the heel slippage, but the traction was also lacking.
44	5	7.2	TommyLiu	2025-05-11	The Jordan Zion 4 is more spacious and smoother, but the traction and materials are a letdown.
36	6	8.4	Snkr Tech Talk	2025-05-27	I can recommend the Nike KD 18. The traction performs well, but the cushioning could be better.
43	6	8.2	The Sole Drop	2025-03-12	The KD 18 feels like a slightly better version of the KD 17. The traction is better, but the cushioning feels the same.
24	6	8.2	RicheeKim	2025-03-24	Nike didn't change much on the KD 18, but it's a solid performer. I like the improvements to the materials and the support.
44	6	8.2	TommyLiu	2025-05-04	I enjoy the Nike KD 18. There are no gimmicks. The traction and cushioning get the job done, and I like the extra structure of the midfoot caging.
47	6	8.2	Lukas Simoner	2025-05-27	I like the Nike KD 18. It's more comfy but also slightly more clunky. There's not much difference from the KD 17.
37	6	7.8	Foot Doctor Zach	2025-02-28	The Nike KD 18 feels similar to the 17. I'm not a fan of the shank plate, but the shoe's overall performance is decent.
43	7	8.6	The Sole Drop	2025-03-12	I thoroughly enjoyed playing in the Nike LeBron NXXT Genisus. The only downsides are the shoe's short length and restrictive heel. Everything else performed exceptionally well.
36	7	8.2	Snkr Tech Talk	2025-04-03	The Nike LeBron NXXT Genisus is a good basketball shoe, but not at the retail price. The traction is consistent, and the support and fit feel secure. I wish they kept the heel Zoom bag, though.
47	7	8.2	Lukas Simoner	2025-04-28	The Nike LeBron NXXT Genisus is a weird basketball shoe. The cushioning takes a step back, but the traction plays well, and I like the fit.
37	7	8.1	Foot Doctor Zach	2025-02-28	The Nike LeBron NXXT Genisus has consistent traction with plenty of rigid containment.
24	7	8.0	RicheeKim	2025-02-28	The Nike LeBron NXXT Genisus is a good shoe. My only issue was some sliding with the traction on dirty courts. Everything else performs well.
44	7	7.8	TommyLiu	2025-02-28	I didn't like the Nike LeBron NXXT Genisus much. I prefer the previous iteration because of its better traction performance and upper.
43	8	8.8	The Sole Drop	2025-04-12	The Nike G.T. Cut 3 Turbo is a fantastic performer. It has a high price tag, but I love the traction and upgraded support.
44	8	8.8	TommyLiu	2025-04-12	The Turbo is a much different shoe than the original. Lockdown and containment feel better, and I still love the cushioning.
37	8	8.7	Foot Doctor Zach	2025-04-12	I recommend the Nike G.T. Cut 3 Turbo for anyone who enjoys the original but wants a more stable experience.
24	8	8.2	RicheeKim	2025-04-12	The Nike G.T. Cut 3 Turbo has improved support and lockdown, but the increased price is not worth it.
37	9	9.1	Foot Doctor Zach	2025-01-27	The 361 Joker 1 feels very plush and comfortable without sacrificing much performance.
43	9	8.8	The Sole Drop	2025-01-27	The 361 Joker 1 feels like a guard shoe. The traction is reliable, the court feel is responsive, and the well-balanced cushioning does everything well.
44	9	8.8	TommyLiu	2025-03-12	The 361 Joker 1 is a banger. It's traction and cushioning are elite.
36	9	8.7	Snkr Tech Talk	2025-01-27	The 361 Joker 1 is a superb performance basketball shoe. I love the material usage, and the traction and cushioning are excellent.
24	9	8.6	RicheeKim	2025-01-27	The 361 Joker 1 offers a lot of quality and performance for the price. I love the well-balanced cushioning. The only downside is the traction performance on dust.
47	10	9.0	Lukas Simoner	2025-02-09	I love playing in the Adidas Harden Volume 9, and the improvements to the fit and support are welcomed.
37	10	9.0	Foot Doctor Zach	2025-01-09	The Adidas Harden Volume 9 is much more nimble than it looks. The cushioning is springy, and the upper construction is impressive for stability.
46	10	8.8	Jeremy Jones	2025-02-15	The Adidas Volume Harden 9 might be Harden's best signature shoe. The fit, support, and cushioning are all outstanding.
36	10	8.6	Snkr Tech Talk	2025-01-14	The Adidas Harden Volume 9 is a solid performance model suited for all positions. I like the cushioning and support aspects of the shoe the most.
44	10	8.6	TommyLiu	2025-01-24	The Harden Volume 9 is an A-tier performer, thanks to its excellent cushioning, secure support, and decent traction.
29	10	8.4	MARKCHES	2025-01-09	I like the Adidas Harden Volume 9. It feels lighter than the last model, and the cushioning is springy. My main gripe is the dust pickup on the outsole.
32	10	8.4	ShadeSnSoleS [Youtube]	2025-07-12	The Adidas Harden Volume 9 offers an incredible combination of bounce and stability. I like what Adidas did with this setup.
48	10	8.2	DG Hoops	2025-01-29	I like the Adidas Harden Volume 9. The performance is consistent with the previous two models.
24	10	8.2	RicheeKim	2025-02-15	The Adidas Harden Volume 9 is a good performance shoe but doesn't do enough to differentiate itself from its predecessor.
45	10	8.2	KicksContestWorld	2025-06-01	The Harden Vol 9 has excellent cushioning and traction. It could be better with a more refined fit.
43	10	8.0	The Sole Drop	2025-01-19	I didn't enjoy playing in the Adidas Harden Volume 9 because of its poor traction performance and clunky heel section. However, the support and cushioning are solid.
36	11	8.7	Snkr Tech Talk	2025-03-12	I like the Puma Scoot Zero 2 much more than last year's shoe. The price point is excellent, and I love the traction performance.
43	11	8.2	The Sole Drop	2025-01-27	The Puma Scoot Zeros 2 surpassed my expectations. The traction and support excel and make the shoe fun.
37	11	8.1	Foot Doctor Zach	2025-01-27	The Puma Scoot Zeros 2 provides a lot of confidence when moving side to side and changing directions. I like the implementation of the traction and midsole.
24	11	7.8	RicheeKim	2025-02-03	The Puma Scoot Zeros 2 is a solid pickup for the price. There are better shoes but the traction and support are decent.
37	12	8.8	Foot Doctor Zach	2025-01-29	The Rigorer AR 2 is an excellent shoe for players who move a lot on the court. Thanks to its cushioning, it feels light on the bottom and well-protected.
36	12	8.7	Snkr Tech Talk	2025-01-27	I think the Rigorer AR 2 is a fun basketball shoe. I love the upgraded cushioning and the secure fit and support.
24	12	8.6	RicheeKim	2025-06-13	The Rigorer AR 2 feels like a steal for the price. The cushioning is an upgrade, and the support and traction also perform very well.
43	12	8.4	The Sole Drop	2025-01-27	The Rigorer AR 2 feels quick and responsive. I like how it feels like a guard shoe with comfortable cushioning.
48	12	8.4	DG Hoops	2025-01-27	The Rigorer AR 2 performs a lot better than expected. I like the upgraded cushioning and the shoe feels more locked down.
44	12	8.4	TommyLiu	2025-03-03	I was not a fan of the AR 1, but I enjoy the Rigorer AR 2. The traction is excellent, and the upgraded cushioning is fantastic.
29	12	8.2	MARKCHES	2025-02-15	The Rigorer AR 2 is an upgrade from the AR 1. The main improvement is the cushioning, which is softer and bouncier.
39	12	8.0	Evan Miranda [weartesters.com]	2025-01-29	The Rigorer AR 2 is a significant upgrade over its predecessor. It's a well-rounded shoe with excellent traction and responsive cushioning. The support and build also hold up well.
37	13	8.6	Foot Doctor Zach	2024-12-21	I like the Curry Fox 1 better than the signature Curry 12. The added shank makes the midsole cushioning feel more lively.
43	13	8.4	The Sole Drop	2024-12-27	I love the look of the Curry Fox 1, and the performance is similar to any other Curry or Under Armour shoe that features Flow foam. The traction excels on clean courts and the cushioning is adequate.
24	13	8.2	RicheeKim	2025-01-09	The Curry Fox 1 is a solid performer in its price range. It's a good pickup if you play on mostly clean courts.
44	13	7.6	TommyLiu	2025-01-27	The Curry Fox 1 is a decent low-top guard shoe. It's nothing special, and its performance features are mostly average.
37	14	8.0	Foot Doctor Zach	2024-12-21	The Adidas Dame Certified 3 is a durable, stable-feeling shoe that can deal with an orthotic well.
44	14	7.6	TommyLiu	2024-12-21	If you like an affordable and usable performance shoe, the Adidas Dame Certified 3 is a solid pick. The traction and cushioning were decent for me.
24	14	7.4	RicheeKim	2024-12-21	I can't recommend the Adidas Dame Certified 3 because of the heel slippage and traction on dust. I do like the Bounce foam and fit though.
43	14	7.4	The Sole Drop	2024-12-21	Do not get the Adidas Dame Certified 3. I can't recommend it. The full-length Bounce is soft but I had issues with the traction and heel slippage.
36	15	9.4	Snkr Tech Talk	2025-03-28	The Li-Ning Way of Wade All City 13 is a performance beast. I'll keep this pair in my bag for the foreseeable future.
37	15	9.2	Foot Doctor Zach	2024-12-21	The Way of Wade All City 13 is one of the best playing shoes I ever put on. They do everything well and there are no glaring issues.
43	15	9.0	The Sole Drop	2025-01-02	This shoe feels minimal, responsive, and comfortable. It's almost the perfect guard shoe.
47	15	9.0	Lukas Simoner	2025-01-05	The Way of Wade All City 13 is already one of the best shoes available. The traction and cushioning are both excellent, and the fit feels better.
44	15	8.8	TommyLiu	2024-12-21	The Way of Wade All City 13 is an excellent performer. I would put the shoe in the A or S tier. It's firm on the outside and comfy on the inside.
24	15	8.6	RicheeKim	2025-01-05	The Li-Ning Way of Wade All City 13 might be my favourite Wade shoe. It's an all-around beast of a performer.
29	15	8.6	MARKCHES	2025-05-27	The All City 13 is a very dependable shoe. The traction and cushioning always played well.
37	16	8.9	Foot Doctor Zach	2024-12-21	The Way of Wade Shadow 6 is fantastic for getting up and down the court. The shank and midsole foam also provide a lot of snap and pop.
44	16	8.8	TommyLiu	2024-12-21	The Way of Wade Shadow 6 performed beyond my expectations. The shoe offers insane value for the price, particularly with cushioning.
24	16	8.6	RicheeKim	2024-12-21	The Shadow 6 is a top-tier budget performer. The traction and cushioning are outstanding at this price.
43	16	8.4	The Sole Drop	2024-12-21	The Way of Wade Shadow 6 is a well-cushioned shoe with great traction performance.
36	16	8.3	Snkr Tech Talk	2024-12-21	The Way of Wade Shadow 6 is a great shoe at a great price. I don't care for the materials but the traction, cushioning, and support are top-tier.
39	16	8.0	Evan Miranda [weartesters.com]	2025-01-24	The Way of Wade Shadow 6 is an impressive shoe for the money. Its cushioning and traction are more than worth the price.
39	17	9.5	Evan Miranda [weartesters.com]	2025-01-09	The Anta KT 10 is the best basketball shoe of 2024. It's an elite, versatile, well-rounded performer with little to no flaws.
37	17	9.4	Foot Doctor Zach	2025-01-09	The KT 10 is awesome. It's nearly pitch-perfect. I love the stopping power and outsole flange.
44	17	9.0	TommyLiu	2025-01-09	I would place the Anta KT 10 in the S-tier of basketball shoes. It's an elite shoe with fantastic cushioning and traction.
29	17	8.6	MARKCHES	2025-02-03	Anta made minor adjustments to the KT 10, which made a big difference. The cushioning and support are impressive.
43	17	8.0	The Sole Drop	2025-01-09	I love the cushioning and stability of the Anta KT 10, but the traction on dusty courts made me feel unsafe.
7	18	8.0	Nelson Chan @Hoop and Life	2024-11-11	Everything about the Tatum 3 is decent. Some aspects could be better like the traction, but it works well overall.
24	18	7.8	RicheeKim	2024-11-11	I can't recommend the Jordan Tatum 3. The containment issues and dust pick-up turned me away. I do like the comfortable cushioning.
1	18	7.8	NightWing2303 [weartesters.com]	2024-11-11	The Jordan Tatum 3 is Jayson Tatum's best signature sneaker so far. The cushioning and traction perform well.
46	18	7.8	Jeremy Jones	2024-11-22	This is the best Tatum shoe to drop so far. It's nice to see a brand slowly improve.
36	18	7.8	Snkr Tech Talk	2024-11-22	I recommend waiting for a sale before getting the Jordan Tatum 3. It's the best shoe in the lineup because of the traction. The cushioning could be better and the support is decent.
44	18	7.7	TommyLiu	2024-11-11	The Jordan Tatum is smoother than previous models. The outsole composition is better and I like the material usage.
37	18	7.2	Foot Doctor Zach	2024-11-11	When the Tatum 3 grips, it offers light, quick pop and performance. The problem is the shoe is inconsistent.
43	18	7.2	The Sole Drop	2024-11-11	The Jordan Tatum 3 let me down. I can't recommend it because of the inconsistent traction and the lack of support.
37	19	8.8	Foot Doctor Zach	2024-11-11	The Nike LeBron 22 has excellent traction and cushioning. The support also feels good. The main con is the weight, but the shoe feels great despite being heavier.
36	19	8.8	Snkr Tech Talk	2024-11-22	The Nike LeBron 22 is a very nice performer. The biggest downfall is traction on dirty floors, but the cushioning and support are awesome.
43	19	8.8	The Sole Drop	2024-11-22	I enjoy playing in the Nike LeBron 22, especially on clean courts. The cushioning is outstanding, the fit feels great, and the support and lockdown contain me well.
24	19	8.6	RicheeKim	2024-11-22	I really enjoy the Nike LeBron 22. My only issue is the dust pickup on the traction. All of the other features are outstanding.
44	19	8.5	TommyLiu	2024-11-11	I would say the Nike LeBron 22 took a step back. It feels slower and heavier. However, the traction and cushioning still feel good.
29	19	8.4	MARKCHES	2024-11-14	The Nike LeBron 22 isn't much improved in performance compared to the LeBron 21. It's still an impressive and dependable shoe with improved materials.
45	19	8.4	KicksContestWorld	2025-06-13	The Nike LeBron 22 is a solid performance shoe for heavier players, thanks to its excellent stability and cushioning.
7	19	8.0	Nelson Chan @Hoop and Life	2024-11-11	Despite all the tech, the Nike LeBron 22 feels mid to me. Traction and support are solid, but I'm not a fan of the materials and comfort.
36	20	8.5	Snkr Tech Talk	2024-11-02	I enjoyed playing in the Nike Ja 2. It's Kobe-esque, but there are other better-cushioned options available. The traction plays well, and I like the snug fit.
44	20	8.4	TommyLiu	2024-11-01	The Nike Ja 2 is one of the most practical, no-BS Nike shoes. The shoe's strengths are traction, weight, and agility.
37	20	8.4	Foot Doctor Zach	2024-10-11	The outsole traction performance makes the Nike Ja 2 a fun shoe. The downside is this shoe feels too similar to the Sabrina 2.
45	20	8.4	KicksContestWorld	2025-05-17	The Nike Ja 2 is a good basketball shoe. I enjoyed the traction performance. The shoe is best for lightweight and shifty players.
1	20	8.2	NightWing2303 [weartesters.com]	2024-10-11	I like the Nike Ja 2 slightly more than the Ja 1. The outsole is grippy and the cushioning feels a bit better. Like all Nike basketball shoes lately, this reminds me of Kobe shoes.
29	20	8.0	MARKCHES	2024-10-23	The Nike Ja 2 is a lightweight performance shoe with awesome traction. However, the impact protection is lacking.
24	20	8.0	RicheeKim	2024-10-30	The Nike Ja 2 is a solid performer with decent traction and cushioning.
43	20	7.8	The Sole Drop	2024-10-16	I prefer the Nike Ja 1 because of the fit, but the Ja 2 provides a softer, minimal upper. The comfort feels decent, and the traction performs well.
46	20	7.8	Jeremy Jones	2024-10-23	The Nike Ja 2 feels like a generic and basic Nike sneaker. The traction plays well and is the best feature.
47	20	7.6	Lukas Simoner	2025-04-12	There are two main changes to the Nike Ja 2. It feels less supportive, but the materials are better. The traction remains a strong point.
36	21	8.5	Snkr Tech Talk	2024-11-26	The Puma MB.04 is the best-fitting shoe in LaMelo Ball's line. However, the rest of the performance feels like last year's model. I like the traction and support.
37	21	8.0	Foot Doctor Zach	2024-10-11	The Puma MB.04 is surprisingly nimble for a maximalist shoe. It feels slightly more stable and the grip plays well.
24	21	8.0	RicheeKim	2024-10-11	The Puma MB.04 is a solid shoe for the price. My main complaints are the bulk and the design. I like the traction and impact protection, though.
44	21	7.4	TommyLiu	2024-11-14	Hopefully, Puma can improve next time because the MB.04 is an inconsistent performer. Dust heavily affects the traction, and the support is lacking.
43	21	7.4	The Sole Drop	2024-11-22	I'm unsure what direction Puma is taking the MB.04. It's comfortable and cozy, but the traction and fit could be better.
19	22	9.0	PureKicks	2024-11-11	The outdoor durability is the only knock on the Nike Kobe 9 Elite Low Protro. It has the best traction, and I like the materials and support.
43	22	8.8	The Sole Drop	2024-11-11	The Nike Kobe 9 Elite Low Protro breaks in extremely nicely. The traction and cushioning are very enjoyable to play in. My main complaint is the narrow fit.
1	22	8.8	NightWing2303 [weartesters.com]	2024-11-11	The Nike Kobe 9 Elite Low Protro is the same as the original but with a new drop-in midsole. The traction is elite and the cushioning feels better.
48	22	8.8	DG Hoops	2024-11-11	The Nike Kobe 9 Protro feels close to the original in performance. I like this setup better than the Kobe 8 Protro.
37	22	7.8	Foot Doctor Zach	2024-11-11	The Nike Kobe 9 Elite Low Protro feels great when they're gripping. The cushioning is bouncy, and the traction is outstanding on clean courts.
37	23	9.0	Foot Doctor Zach	2024-11-11	The Anta Shock Wave 6 provides incredible responsiveness and push-off power. The cushioning is snappy and the traction's stopping power is fantastic.
43	23	8.8	The Sole Drop	2024-11-11	The Anta Shock Wave 6 feels lightweight, minimal, and responsive. I felt quick when playing in this shoe.
44	23	8.4	TommyLiu	2024-11-11	The Anta Shock Wave 6 is nothing special but has no downsides. All of the features work well. This feels like Anta's take on a Nike Kyrie Low.
29	23	8.2	MARKCHES	2024-11-11	The Anta Shock Wave 6 is a low-to-the-ground and responsive performer. The shoe is lightweight and responsive but lacks impact protection.
24	24	8.6	RicheeKim	2024-09-21	The New Balance Hesi Low V2 is an impressive shoe for the price. The traction, materials, and cushioning are all solid. This shoe is a definite improvement from the V1.
44	24	8.6	TommyLiu	2024-09-21	The New Balance Hesi Low V2 is one of the best affordable performers of the year. It hits a solid price point, has excellent traction, and has impressive cushioning.
43	24	8.4	The Sole Drop	2024-09-21	The New Balance Hesi Low V2 is a minimal shoe with soft and comfortable cushioning. I enjoyed playing in this shoe thanks to the traction.
47	24	8.4	Lukas Simoner	2025-05-17	The New Balance Hesi Low V2 is underrated. The traction performance is fantastic, and I like how light and fast the setup feels.
37	24	8.0	Foot Doctor Zach	2024-09-21	The New Balance Hesi Low V2 offers plenty of performance for your money. It's low to the ground, and the grip is solid. I like how streamlined the setup feels.
44	25	8.6	TommyLiu	2024-09-21	The Adidas Dame 9 might be the best Adidas shoe this year. This is an excellent performer. The traction is top-tier, and the cushioning is very comfortable.
24	25	8.6	RicheeKim	2024-10-03	The Adidas Dame 9 is a solid performer. It performs very well on clean courts, and the cushioning feels impressive. My only issue was with the dust performance.
36	25	8.6	Snkr Tech Talk	2024-11-06	The Adidas Dame 9 offers excellent value for money. Its traction, cushioning, fit, and materials make it a superb basketball shoe.
47	25	8.6	Lukas Simoner	2025-05-11	The Adidas Dame 9 is one hell of a performer. I love the cushioning and the support features.
37	25	8.5	Foot Doctor Zach	2024-09-21	The Adidas Dame 9 feels buttery and quick. It allows extra freedom while maintaining the containment.
46	25	8.4	Jeremy Jones	2024-09-23	Adidas came through with the Dame 9. I enjoyed the traction and fit; the cushioning also feels plush and comfortable.
29	25	8.4	MARKCHES	2024-10-16	The Adidas Dame 9 is a solid performer because of its traction and support. My only complaint is the flat heel-to-toe transition.
32	25	8.4	ShadeSnSoleS [Youtube]	2025-07-12	The Adidas Dame 9 feels premium without needing premium materials. I'm a big fan of the price.
19	25	8.0	PureKicks	2024-09-21	I love the traction, cushioning, and support of the Adidas Dame 9, but the breathability does take a few points off.
43	25	8.0	The Sole Drop	2024-09-29	I felt quick and comfortable playing in the Adidas Dame 9. This shoe has the best cushioning and support for an Adidas basketball shoe.
39	26	8.5	Evan Miranda [weartesters.com]	2024-10-16	The Nike Giannis Immortality 4 is a solid performing shoe, especially for the price. The traction performance is great, and the outsole will last outdoors.
47	26	8.4	Lukas Simoner	2024-10-21	The Giannis Immortality 4 provides much better value for money than the main signature. The traction performance is reliable and the cushioning feels better this year.
44	26	8.2	TommyLiu	2024-09-21	The Nike Giannis Immortality 4 is an excellent shoe for the price. The materials are cheap but stronger, which was much needed.
24	26	8.0	RicheeKim	2024-09-21	I like the price reduction for the Nike Giannis Immortality 4. The materials update makes this shoe more comfortable performance-wise.
1	294	7.8	NightWing2303 [weartesters.com]	2018-10-12	Better than the Kyrie 2 and 1, but not as good as the Kyrie 3 or 4.
37	26	7.8	Foot Doctor Zach	2024-09-21	The Giannis Immortality 4 is a better shoe than the Zoom Freak 6, for the money, because of the containment and shank usage. I like the bottom-light midfoot setup, too.
43	26	7.8	The Sole Drop	2024-09-21	There are better shoes out than the Nike Giannis Immortality 4. The pros are the price and the supportive materials if you can deal with a break-in period.
37	27	9.0	Foot Doctor Zach	2024-09-21	The New Balance TWO WXY V5 is an upgrade on the V4, but only a minor upgrade. The traction and cushioning are fantastic.
44	27	8.8	TommyLiu	2024-09-21	The New Balance TWO WXY V5 is responsive, bouncy, and comfortable. This shoe continues the great performance of its predecessor.
36	27	8.7	Snkr Tech Talk	2025-05-27	The New Balance TWO WXY V5 is a superb performer. It's the total package, offering everything you need in a basketball shoe.
43	27	8.6	The Sole Drop	2024-10-16	This shoe has fantastic cushioning and solid traction. I think the TWO WXY V5 shoe will have something for everyone.
39	27	8.5	Evan Miranda [weartesters.com]	2025-05-04	The New Balance TWO WXY V5 is a versatile basketball shoe. The traction is elite, and I enjoyed the cushioning performance.
24	27	8.4	RicheeKim	2024-10-16	The New Balance TWO WXY V5 is an impressive performance shoe. It has everything you need and nothing you don't, and for the price, you can't go wrong.
37	28	9.1	Foot Doctor Zach	2024-11-11	The Anta KAI 1 Speed has fantastic push-off power, and the shoe propels you in whatever direction you're moving. I like the fit, materials, and outsole tread.
36	28	9.0	Snkr Tech Talk	2024-11-11	The Anta KAI 1 Speed is an awesome shoe to play in. I felt protected in all movements, the traction was superb, and the cushioning was impressive. This is a top-five shoe for 2024.
43	28	9.0	The Sole Drop	2024-11-11	The quality and tech of the Anta KAI 1 Speed are top-notch. It feels like the KAI 1 but it's lower to the ground and more responsive.
44	28	8.5	TommyLiu	2024-11-11	The Anta KAI 1 Speed is faster, lighter, and stiffer than the KAI 1. This shoe is better for players who prioritize fast play styles.
24	29	8.4	RicheeKim	2024-08-06	The Jordan Luka 3 is a solid performance hoop shoe, especially at this price. The traction bites well, and the cushioning is comfortable. Make sure to wipe the dust, though.
48	29	8.4	DG Hoops	2024-08-07	The Jordan Luka 3 performance surprised me. The design and construction make the fit and support feel better, and the materials do the job well.
43	29	8.2	The Sole Drop	2024-08-06	I love the performance of the Jordan Luka 3 on clean courts. Dust pickup drops the performance slightly but it's still a solid shoe.
46	29	8.2	Jeremy Jones	2024-08-17	There's nothing special about the Jordan Luka 3, but there's nothing that will hinder you as well.
44	29	8.2	TommyLiu	2024-10-10	The Luka 3 doesn't feel premium, but the performance is decent. It caters to slower-paced players or spot-up shooters. I like the containment and traction.
45	29	8.2	KicksContestWorld	2024-11-26	The Jordan Luka 3 is best for bigger players. I like the stability, lockdown, and impact protection.
36	29	8.2	Snkr Tech Talk	2025-03-12	The Jordan Luka 3 is my favourite from his lineup so far. I love the support and containment, as well as the traction and cushioning.
37	29	8.0	Foot Doctor Zach	2024-08-06	The Jordan Luka 3 is my favourite shoe within the Luka signature line. The traction is tacky, and the upper materials are supportive. I also like the Cushlon foam in the midsole.
44	30	9.0	TommyLiu	2024-08-17	The Jordan 39 is a top-tier hoop shoe because of its traction, cushioning, comfort, and fit. The only downside is the lack of an outrigger.
36	30	8.8	Snkr Tech Talk	2024-08-06	The Air Jordan 39 is an excellent basketball shoe. The cushioning, fit, and materials are outstanding. However, there's a lack of side-to-side stability and breathability.
1	30	8.6	NightWing2303 [weartesters.com]	2024-08-07	The Air Jordan 39 is so close to being fantastic. The cushioning performance is great, and I love the materials, but the lack of stability hurts.
46	30	8.4	Jeremy Jones	2024-08-27	The Air Jordan 39 has excellent cushioning and materials. This shoe caters to bigger, powerful players well.
24	30	8.0	RicheeKim	2024-08-19	I like everything about the Jordan 39 except for the support and stability. The cushioning is very comfortable, but I wish they would've put in a shank.
47	30	8.0	Lukas Simoner	2024-09-08	The Air Jordan 39 performance was not what I expected. The cushioning is too soft for smaller, shiftier players, but the materials are impressive.
45	30	7.6	KicksContestWorld	2025-01-19	I wouldn't recommend the Air Jordan 39 for bigger players because of the lack of stability. However, the traction is elite and the cushioning is decent.
43	30	7.4	The Sole Drop	2024-08-11	I didn't mind the Air Jordan 39 on clean courts, but there are a few too many negatives. The dust pickup causes sliding, and there's a lack of lateral stability.
37	30	7.2	Foot Doctor Zach	2024-08-06	The Air Jordan 39 is a fantastic shootaround shoe. The comfort is outstanding, but the lack of stability makes cutting and planting difficult.
36	31	8.7	Snkr Tech Talk	2024-09-15	I love the bang for your buck the Adidas AE 1 Low offers. My main gripe is the fit and sizing. However, the cushioning, traction, and support are all impressive.
1	31	8.4	NightWing2303 [weartesters.com]	2024-09-05	The AE 1 Low is still a solid performer. I enjoy the Lows better because of the fit, but the main difference between the two shoes is cushioning. The Lows are firmer.
32	31	8.4	ShadeSnSoleS [Youtube]	2025-07-05	I like how the Adidas AE 1 Lows perform. The cushioning and support cater well to my play style, and I didn't have any issues with the traction.
24	31	8.2	RicheeKim	2024-08-18	The Adidas AE 1 Low is a great shoe for the price. It's not for everyone because of the lack of impact protection, but I like the traction. The materials feel better on feet too.
37	31	8.0	Foot Doctor Zach	2024-08-18	The Adidas AE 1 Low feels clunky enough to be noticeable on feet. The shoe performance doesn't feel the same without the bigger ankle collar and upper materials.
48	31	7.8	DG Hoops	2024-08-18	The Adidas AE 1 Low's fit throws off the shoe's performance. It affects the fit and heel containment. However, the traction and other support features are solid.
44	31	7.0	TommyLiu	2024-08-18	The AE 1 Low is the most disappointing release of 2024. The lack of heel slippage and fit affects performance too much. The cushioning also feels like a downgrade.
7	32	9.0	Nelson Chan @Hoop and Life	2024-08-24	The Nike Zoom Freak 6 is well worth it. I like the tech, especially the comfortable cushioning.
36	32	8.1	Snkr Tech Talk	2024-08-27	The Nike Zoom Freak 6 takes an incremental step forward. I enjoy the lightweight materials and the responsive cushioning.
44	32	8.0	TommyLiu	2024-09-19	I don't have much to complain about with the Nike Zoom Freak 6. The traction is the best feature. I highly recommend waiting for sales.
43	32	7.8	The Sole Drop	2024-09-15	I like the comfort of the Nike Freak 6 but the quality could be better for a signature shoe. The cushioning is low to the ground, and the traction performs well after breaking in.
24	32	7.8	RicheeKim	2024-09-23	The Zoom Freak 6 has decent performance. There are only minor issues with dust accumulation and heel slippage. The rest of the features perform well.
45	32	7.8	KicksContestWorld	2025-02-15	The Zoom Freak 6 is adequate. The materials are crappy, and the upper is too flimsy to keep you contained. It's a shoe meant for light and shifty guards.
37	32	7.2	Foot Doctor Zach	2024-08-24	The Nike Zoom Freak 6 feels great initially. However, wear and tear can deteriorate the build quality and containment.
1	33	8.8	NightWing2303 [weartesters.com]	2024-09-21	The Curry 12 is the best overall performer in his lineup. This pair blew my mind. The cushioning is improved, while the support and traction remain fantastic.
44	33	8.6	TommyLiu	2024-09-29	The Curry 12 is an impressive performer. Flow foam provides excellent traction, and the materials are comfortable and supportive.
43	33	8.4	The Sole Drop	2024-09-21	The Curry 12 is extremely light and performs similarly to the Curry 11. The traction plays well on clean courts, and the cushioning is best for responsiveness.
37	33	8.3	Foot Doctor Zach	2024-09-21	The Curry 12 performance is similar to the 11 but is more comfortable. The fit and upper materials are much improved.
24	33	8.2	RicheeKim	2024-09-21	You should know what to expect with a Curry shoe. The Curry 12 is in line with the rest of the Flow lineup. I love the performance on clean courts.
37	34	9.2	Foot Doctor Zach	2024-09-21	The Way of Wade All City 12 Encore is a speedy, quick-moving shoe with plenty of bounce and stability. All my movement felt easy in this shoe.
44	34	9.0	TommyLiu	2024-09-21	The Way of Wade All City 12 Encore is an elite performer. Traction and cushioning are both top-tier, and the materials even feel comfortable.
47	34	9.0	Lukas Simoner	2024-10-23	The Li-Ning Way of Wade All City 12 Encore is the best value-for-money shoe on the market. The traction and cushioning are both near perfect.
43	34	8.8	The Sole Drop	2024-09-21	The Wade All City 12 Encore kills it as a performer. The traction and support are improved, and the Boom cushioning is incredibly balanced.
24	34	8.8	RicheeKim	2024-12-16	The Li-Ning Way of Wade All City 12 Encore has something to offer everyone. It has balanced cushioning and grippy traction. All of the features are solid.
39	34	8.5	Evan Miranda [weartesters.com]	2024-09-21	The Way of Wade All City 12 Encore is an impressive all-around performer. The shoe has no real weak points. The cushioning is balanced, and the traction performance is great.
37	35	8.4	Foot Doctor Zach	2024-11-11	The Way of Wade Ice Blood 2 feels snappy and springy during play. However, the shoe has some stiffness and fit issues.
36	35	8.3	Snkr Tech Talk	2024-11-11	The Wade Ice Blood 2 is a fun performer with a problematic fit. I like the low-profile cushioning setup and the support features.
44	35	8.0	TommyLiu	2024-11-11	I had a lot of fun playing in the Ice Blood 2. It's designed as a guard shoe with its lightweight and responsive cushioning. However, the materials are cheap, so beware.
24	35	7.8	RicheeKim	2024-11-11	I think the Wade Ice Blood 2 is a good shoe for the most part. The main drawbacks are the narrowness and lack of torsional stability. I like the cushioning setup though.
43	35	7.4	The Sole Drop	2024-11-11	The Li-Ning Wade Ice Blood 2 is fluid, minimal, and lightweight. The cushioning is also solid, but the materials are cheap and the fit is off.
37	36	9.4	Foot Doctor Zach	2024-06-23	The Li-Ning Way of Wade 11 are much nimbler and make movement easy. I like the weight and setup. The traction and cushion are also incredible.
36	36	9.3	Snkr Tech Talk	2025-01-02	This shoe is a pleasure to play in. The Way of Wade 11 has almost no weaknesses outside of the lack of breathability.
44	36	9.0	TommyLiu	2024-06-23	I'm very excited for the Li-Ning Way of Wade 11. It's a top-tier performance shoe. The traction and cushioning are incredible. The main downside is the lack of breathability.
43	36	9.0	The Sole Drop	2024-08-03	The Li-Ning Way of Wade 11 is an incredible performance shoe. The traction and cushioning combination is outstanding. My only complaints are the slight bulkiness and lack of ventilation.
29	36	8.8	MARKCHES	2024-08-06	The Way of Wade 11 features Li-Ning's top tech. The shoe is fast, fluid, and stable. My only complaint is with the fit.
47	36	8.8	Lukas Simoner	2024-09-15	The Way of Wade 11 is one of the better-performing basketball shoes. The traction is almost top-tier, and the cushioning is plenty soft.
24	36	8.8	RicheeKim	2024-11-14	The Li-Ning Way of Wade 11 is a banger. It's light, bouncy and feels good on my feet.
48	36	8.6	DG Hoops	2024-07-15	The Li-Ning Way of Wade 11 is another outstanding performance shoe. I love the traction performance. The cushioning is also amazing, it's smoother but not as bouncy.
45	36	8.5	KicksContestWorld	2024-07-12	The Li-Ning Way of Wade 11 is a great performance hoop shoe. It doesn't live up to the WoW 10, but the support and materials are impressive.
24	37	8.6	RicheeKim	2024-07-25	I enjoyed playing in the Adidas D.O.N Issue 6. The shoe features phenomenal traction and solid impact protection. My only issue is the minor heel slippage.
43	37	8.6	The Sole Drop	2024-07-15	The Adidas D.O.N. Issue 6 has top-tier traction, and I felt extremely fast during play. I love the lightweight performance the shoe provides.
47	37	8.6	Lukas Simoner	2024-11-14	The Adidas D.O.N. Issue 6 has some of the best traction available. I also like the cushioning setup for indoor play.
44	37	8.4	TommyLiu	2024-09-03	The Adidas D.O.N. Issue 6 has excellent traction and lockdown. This is one of the best options for fast, smaller guards.
37	37	8.3	Foot Doctor Zach	2024-07-15	The Adidas D.O.N. Issue 6 offers elite balance. The shoe is light and the traction is impressive for surefooted players. The main downside is the lack of snap and springiness.
36	38	9.2	Snkr Tech Talk	2024-07-19	I love the performance of the Nike Sabrina 2. The traction and cushioning performance are outstanding. Beware of potential quality control issues. I experienced some peeling on my first pair.
24	38	8.6	RicheeKim	2024-07-19	The Nike Sabrina 2 is a solid performer. It reminds me of the Nike Kobe 5. The traction is fantastic; the only downside is the lack of impact protection.
2	38	8.5	Stanley T. [weartesters.com]	2024-07-15	The Nike Sabrina 2 is lighter without losing support, stability, or comfort. The new Cushlon 3.0 midsole feels more plush as well.
46	38	8.4	Jeremy Jones	2024-07-15	The Nike Sabrina 2 provides impressive traction, style, and design. The support and lockdown are solid but beware of the snug fit.
43	38	8.4	The Sole Drop	2024-07-15	I love the Nike Sabrina 2. The traction is elite, and the cushioning is lightweight and responsive. I felt extremely quick playing in this shoe.
29	38	8.4	MARKCHES	2024-07-22	I would say the Nike Sabrina 2 is a solid performer. The shoe is lightweight and minimal, and the traction performance is outstanding.
44	38	8.4	TommyLiu	2024-08-07	The Nike Sabrina 2 is a dream shoe for players with flat, slightly wide feet. I love the fit, and the traction performance is great.
47	38	8.4	Lukas Simoner	2024-08-18	The Nike Sabrina 2 is an overall improvement compared to the Sabrina 1. The support and fit feel much better, and the traction performance is solid.
37	38	8.3	Foot Doctor Zach	2024-07-15	The Nike Sabrina 2 is a consistent performer, especially the traction. I like how tactile the shoe feels throughout all my movements.
1	38	8.2	NightWing2303 [weartesters.com]	2024-07-15	The Nike Sabrina 2 is a beast of a performer. I like the traction and fit but durability could be better.
48	38	8.2	DG Hoops	2024-07-15	The Nike Sabrina 2 feels like a budget Kobe. The shoe reminds me of the Kobe 5 with how the traction and cushioning feel.
36	39	9.1	Snkr Tech Talk	2024-07-19	This is a fantastic hoop shoe. The Nike GT Hustle 3 is a perfect shoe for players who like plush cushioning. It offers some of Nike's best tech from cushioning to support and materials.
1	39	8.4	NightWing2303 [weartesters.com]	2024-07-19	The Nike GT Hustle 3 feels like an elevated running shoe meant for basketball. The traction and cushioning are fantastic, and I like how Nike built the upper.
24	39	8.4	RicheeKim	2024-08-03	The Nike GT Hustle 3 has an insane amount of cushioning and reliable traction. This is a perfect shoe for players who want impact protection.
29	39	8.4	MARKCHES	2024-08-13	The Nike GT Hustle 3 is an amazing basketball sneaker. I highly recommend this for bigger players. The impact protection and cushioning are outstanding.
47	39	8.3	Lukas Simoner	2024-08-11	The Nike GT Hustle 3 is a solid performer if impact protection is your top priority. The containment and stack height can be an issue, but the traction performance is also great.
37	39	8.2	Foot Doctor Zach	2024-07-15	The Nike GT Hustle 3 is an easy shoe to play in. It gets off the ground easily because of the cushioning setup and the shank. My only concern is the stability.
43	39	8.0	The Sole Drop	2024-08-03	The Nike GT Hustle 3 has ample cushioning and reliable traction. However, the lack of stability hurts, and the cushion can be excessive.
36	40	7.4	Snkr Tech Talk	2024-08-06	I think you're getting hosed with the Nike GT Hustle Academy. There's not enough tech to offer much performance.
1	40	7.0	NightWing2303 [weartesters.com]	2024-08-06	The Nike GT Hustle Academy is a head-scratcher. There's no tech in the cushioning and support features. The only upside is the lightweight feeling and decent traction.
43	40	6.8	The Sole Drop	2024-08-13	The Nike GT Hustle Academy is minimal and lightweight but sacrifices too much to get there. There's no cushioning and a lack of support features.
37	40	6.6	Foot Doctor Zach	2024-08-06	The Nike GT Hustle Academy feels light and breezy and has a solid grip. However, the lack of cushioning, support, and durability is too much to overcome.
36	41	8.9	Snkr Tech Talk	2024-09-22	The Li-Ning Wade 808 4 Ultra is an incredibly supportive shoe with a fantastic drop-in midsole. I also enjoyed the traction performance. This shoe is a great value.
37	41	8.8	Foot Doctor Zach	2024-08-06	There is so much packed into the Li-Ning Wade 808 4 Ultra. The materials and cushioning help you get off the floor and move side-to-side quickly.
43	41	8.6	The Sole Drop	2024-08-06	The Wade 808 4 Ultra is an incredibly balanced shoe. The upper is minimal, I love the cushioning, and the traction is elite. My only complaint is the heel area feels clunky.
44	41	8.6	TommyLiu	2024-08-11	The Li-Ning Wade 808 4 Ultra is the best shoe in the 808 line. The materials and the cushioning are the best features, but the shoe is also lightweight and comfortable.
48	41	8.6	DG Hoops	2024-08-19	The Li-Ning Wade 808 4 Ultra is an incredible performer. The drop-in midsole is outstanding, and the traction performs well. My only gripe is the hollowed-out sections on the outsole. I prefer full coverage.
24	41	8.6	RicheeKim	2024-11-22	I think the Wade 808 4 Ultra is a banger of a shoe. Once you break in the traction, the performance is outstanding. I love the Boom midsole setup, too.
43	42	8.6	The Sole Drop	2024-06-14	The Nike Kobe 8 Protro is a responsive shoe. I feel quick because of the top-tier traction and support. I wish Nike upgraded the cushioning more.
48	42	8.6	DG Hoops	2024-07-15	The Nike Kobe 8 Protro is a lightweight, minimal shoe. The traction performs very well, but the cushioning is not geared for impact protection. The shoe is better suited for shifty guards.
24	42	8.6	RicheeKim	2024-09-05	The Nike Kobe 8 Protro is a great pair to play in. The traction is impressive, and I enjoy the React cushioning setup.
47	42	8.6	Lukas Simoner	2025-02-23	I love how supportive, lightweight, and grippy the Nike Kobe Protro 8 feels. The traction is excellent, and the heel counter keeps you contained.
36	42	8.1	Snkr Tech Talk	2024-06-14	I'm not impressed by the improvements to the Nike Kobe 8 Protro. The cushioning could be better, but the traction and support are outstanding.
37	42	7.6	Foot Doctor Zach	2024-06-14	The Nike Kobe 8 Protro allows a lot of movement freedom and contortion. Lighter players who don't require impact protection will get the most out of this shoe.
44	43	8.4	TommyLiu	2024-06-14	The Nike GT Cut Cross is one of the best budget shoes. I love the traction, but the cushioning is a budget setup.
24	295	8.0	RicheeKim	2018-08-08	I would not recommend this shoe for $140. The traction is pretty bad and the fit didn't work for me.
39	43	8.2	Evan Miranda [weartesters.com]	2024-08-03	The Nike GT Cut Cross is a solid budget shoe and a good option for outdoor play. The traction performance is great, and the upper materials feel improved.
37	43	7.8	Foot Doctor Zach	2024-06-14	The Nike GT Cut Cross is a snappy performance shoe. I like how the traction feels, but the cushioning isn't as bouncy as the rest of the GT Cut line.
37	44	8.2	Foot Doctor Zach	2024-06-23	The Puma Stewie 3 are surefooted and cater well to low-to-the-ground players. The traction can be better, but I like the material and build-quality setup.
41	44	8.2	Allen Sison [weartesters.com]	2024-06-23	I had a mostly positive experience playing in the Puma Stewie 3. The traction performs well, especially on clean courts, and the shoe feels comfortable.
24	44	8.0	RicheeKim	2024-06-23	The Puma Stewie 3 is a solid performer. My main concern is the stiff rear outsole. Otherwise, I like the traction on clean courts and the drop-in midsole.
43	44	7.4	The Sole Drop	2024-06-23	I had issues with the Puma Stewie 3 because of the traction. It also feels bottom-heavy and clunky. I do like the drop-in midsole and materials, though.
36	45	8.1	Snkr Tech Talk	2024-05-03	I want to love the Jordan Zion 3 SE but the fit and traction cause too many problems. The cushioning is impressive and I enjoy the materials, though.
24	45	7.8	RicheeKim	2024-05-03	I can't recommend the Jordan Zion 3 SE because of the lack of traction. All the other features perform well, but it's not enough to compensate for the traction.
43	45	7.2	The Sole Drop	2024-05-07	The Jordan Zion 3 SE is a clunky shoe with poor traction performance. The cushioning feels good, and the shoe is extra supportive, though.
37	45	6.8	Foot Doctor Zach	2024-05-03	I'm not the best person to judge these shoes. The Jordan Zion 3 SE does not line up with my foot shape. The lockdown is impressive, but the fit hurts.
37	46	9.0	Foot Doctor Zach	2024-05-13	The New Balance Kawhi 4 sacrifices some ground feel for improved cushioning and nimbleness. I felt confident throughout all movements.
43	46	8.6	The Sole Drop	2024-05-13	I'm pleasantly surprised with the performance of the New Balance Kawhi 4. The traction and cushioning are impressive, and the materials are also solid.
44	46	8.6	TommyLiu	2024-06-30	I love the aesthetics and the performance matches the looks. The traction is elite, and the cushioning is one of the best. My only gripe is the lateral containment for my flat feet.
46	46	8.4	Jeremy Jones	2024-05-13	The New Balance Kawhi 4 performs better than expected. I like the FuelCell cushioning, and the traction is reliable.
24	46	8.4	RicheeKim	2024-05-13	The New Balance Kawhi 4 is a bit pricey, but the traction and cushioning make this a solid performer.
42	46	8.4	Jackson Bayer [weartesters.com]	2024-05-19	The Kawhi 4 is his best signature shoe so far. The bulk and weight are down, and I enjoy the updated FuelCell cushioning setup.
48	46	8.2	DG Hoops	2024-07-15	I love the traction and cushioning setup in the New Balance Kawhi 4. The comfort is impressive. I'm not a fan of the shoe's fit, though.
36	46	7.6	Snkr Tech Talk	2025-03-20	The standout features of the Kawhi 4 are the traction on clean floors and the support. I also like the fit after a break-in period, but I think the price is too high.
46	47	8.6	Jeremy Jones	2024-05-19	The Nike KD 17 is a lighter, faster version of the KD 16. I like the tweaks Nike made on this model, and the traction is my favourite feature.
1	47	8.4	NightWing2303 [weartesters.com]	2024-05-13	The Nike KD 17s are moderate bad boys. It's a good shoe, but the performance is similar to last year's model. I enjoy the traction the most.
44	47	8.2	TommyLiu	2024-06-02	I'm enjoying my time in the Nike KD 17. Materials, traction, and cushioning are the standout features. However, heel slippage is a concern.
48	47	8.2	DG Hoops	2024-07-15	The Nike KD 17 is a solid performer because of the impressive traction and stable cushioning. I also like the lightweight materials. The lockdown is the only minor gripe I have.
37	47	8.0	Foot Doctor Zach	2024-05-26	The Nike KD 17 is my favourite KD model since the 14. It's flexible and has impressive traction performance. My only complaints are the short shank and the long fit.
24	47	8.0	RicheeKim	2024-06-09	The Nike KD 17 is a solid shoe overall, but I experienced issues with the flimsy upper. The traction and cushioning are comfortable though.
45	47	8.0	KicksContestWorld	2024-12-21	The Nike KD 17 is a solid performer. This pair feels better than the previous model for sure. I like the cushioning and stability.
43	47	7.8	The Sole Drop	2024-06-04	I enjoyed the Nike KD 17. It's comfortable, but I don't feel quick playing in the shoe. The traction feels good, but the responsiveness and support are lacking.
36	47	7.7	Snkr Tech Talk	2024-06-18	The Nike KD 17 is a letdown for me. The cushioning and materials are both downgraded compared to last year. On the bright side, the traction is impressive.
1	48	9.0	NightWing2303 [weartesters.com]	2024-03-17	The Adidas Harden Vol 8 is a fantastic performer. I highly recommend this shoe. The traction is tacky, and the cushioning is very comfortable.
29	48	8.8	MARKCHES	2024-03-22	I like what Adidas is doing with the Harden Volume 8. The Jetboost cushioning feels protective and bouncy, and the traction performance is consistent.
47	48	8.8	Lukas Simoner	2024-03-22	The Adidas Harden Volume 8 is one of the best performance shoes of the year. The cushioning is comfortable, and the traction is slightly improved compared to last year.
36	48	8.7	Snkr Tech Talk	2024-03-17	The Adidas Harden Vol 8 is an excellent performer with standout traction on clean courts. I love the Jetboost midsole for cushioning, too.
33	48	8.6	Soled Out Reviews	2024-03-17	The Adidas Harden Vol 8 has great traction and cushioning, but the weight holds back the performance. The shoe is better suited to bigger, more powerful players.
43	48	8.6	The Sole Drop	2024-03-17	The Adidas Harden Vol 8 is a fantastic performer. The traction feels quick and responsive, and the cushioning is comfortable. Heat retention and weight are the main drawbacks.
44	48	8.6	TommyLiu	2024-03-17	The Adidas Harden Vol 8 has excellent traction, and the comfort exceeded my expectations. My only concern is the extra space in the toe box for people who prefer a snug fit.
24	48	8.6	RicheeKim	2024-03-22	The Adidas Harden Volume 8 is an amazing performer, especially for the price. The cushioning is ideal for me, and the lateral support is excellent.
37	48	8.5	Foot Doctor Zach	2024-03-17	The Adidas Harden Vol 8 has plush cushioning and reliable traction on clean courts. My main gripes are the weight and heat retention. The shoe is best for players looking to create space.
46	48	7.6	Jeremy Jones	2024-03-27	I enjoyed Volume 7 slightly more than the Adidas Harden Volume 8. The fit bothered me a bit and the cushioning felt firm. The traction performs well, though.
44	49	8.8	TommyLiu	2024-05-01	I love how durable the Jordan Tatum 2 feels. The revamped construction is comfortable and supportive, while the traction and cushioning are average.
43	49	8.0	The Sole Drop	2024-03-17	The Jordan Tatum 2 is light and responsive, but the performance on dust is not good. You have to keep the outsole dust-free at all costs.
33	49	7.8	Soled Out Reviews	2024-03-17	The Jordan Tatum 2 is an upgrade on the Tatum 1. I like the Air Strobel cushioning; the support and lockdown were also solid. I don't like the materials and the traction is not top-tier.
36	49	7.6	Snkr Tech Talk	2024-05-26	The Jordan Tatum 2 is a letdown because of the required break-in time. The shoe is supportive, but the traction and cushioning are inconsistent.
45	49	7.6	KicksContestWorld	2024-06-14	The safety and support of the Jordan Tatum 2 is improved, but the traction and cushioning take a step back.
37	49	7.5	Foot Doctor Zach	2024-03-17	The Jordan Tatum 2 feels dull. Lateral stability and ground feel are the pros, but the traction attracts a lot of dust and the cushioning feels dead.
46	49	7.4	Jeremy Jones	2024-03-17	The Jordan Tatum 2 is an upgrade from the 1, but there's plenty of room for improvement. The cushioning is light and the fit and support are decent.
24	49	7.4	RicheeKim	2024-03-17	I can't recommend the Jordan Tatum 2, mainly because of the poor traction. The cushioning is well-balanced, but the materials are low-quality.
42	49	7.4	Jackson Bayer [weartesters.com]	2024-05-03	I did not enjoy my time playing in the Jordan Tatum 2. The side panels ruin the shoe for me. There isn't enough flexibility built in.
37	50	8.7	Foot Doctor Zach	2024-03-26	The Anta KAI 1 feels incredibly low to the ground. The traction and cushioning also allow players to get creative with their movements.
43	50	8.6	The Sole Drop	2024-04-05	The Anta KAI 1 has consistent traction and responsive cushioning. I felt fast and quick while playing in this shoe.
47	50	8.6	Lukas Simoner	2024-05-01	The Anta KAI 1 has plenty of tech features to aid with support, traction, and cushioning. The performance is impressive.
29	50	8.4	MARKCHES	2024-03-17	The Anta KAI 1 is a solid first signature shoe with Anta for Kyrie. The support and lockdown are excellent, and the cushioning feels responsive.
1	50	8.4	NightWing2303 [weartesters.com]	2024-03-17	The Anta KAI 1 is an outstanding first signature shoe with the brand. The cushioning feels comfortable, and the materials feel impressive after breaking in.
48	50	8.4	DG Hoops	2024-07-15	I'm pleasantly surprised with how much I enjoy the Anta KAI 1. The shoe feels smooth and the traction is a standout feature.
46	50	8.2	Jeremy Jones	2024-05-01	The Anta KAI 1 impressed me performance-wise. I like the materials and construction, but the cushioning is my favourite feature.
44	50	8.2	TommyLiu	2024-05-19	I had a fun time playing in the Anta KAI 1. It's a solid performer, but it isn't an elite shoe. The cushioning and traction are the best features.
24	50	8.2	RicheeKim	2024-06-09	The Anta KAI 1 is a solid pickup. My only gripe is the break-in time. I enjoyed the cushioning and overall performance after the shoe broke in.
45	50	7.8	KicksContestWorld	2024-11-02	I don't recommend the Anta KAI 1 for bigs. If you play on clean courts, this shoe is more suitable for guards and wings.
37	51	9.0	Foot Doctor Zach	2024-03-17	The Li-Ning JB 2 feels out of this world. The cushioning and traction are outstanding. The materials also provide breathability, flexibility, and comfort.
43	51	8.6	The Sole Drop	2024-04-05	The Li-Ning JB 2 is a solid, responsive shoe. I love how the traction and cushioning feel. This shoe is an impressive performer.
1	51	8.4	NightWing2303 [weartesters.com]	2024-03-17	The Li-Ning JB 2 is an overpriced shoe with solid performance. I love the cushioning and how the shoe fits.
44	51	8.2	TommyLiu	2024-03-17	Li-Ning put a lot of effort into making the JB 2 one of their better performers. I have this in the A-tier. I love how comfortable the cushioning feels.
29	51	8.0	MARKCHES	2024-06-23	The Li-Ning JB 2 is best for quicker guards and wings. I like the traction on clean courts, and the cushioning felt good.
36	52	8.9	Snkr Tech Talk	2024-02-27	I enjoyed playing in the Nike Book 1. The performance is justified. The traction and materials are standout features.
33	52	8.8	Soled Out Reviews	2024-03-17	I recommend the Nike Book 1 for every position. I like the traction and cushioning but wish the breathability was better.
1	52	8.4	NightWing2303 [weartesters.com]	2024-02-18	The Nike Book 1 is a decent basketball shoe. I love the materials and traction performance. The cushioning is slightly lacking, though.
47	52	8.4	Lukas Simoner	2024-03-22	I like the Nike Book 1. The performance is best for shooters because of the traction and cushioning setups.
46	52	8.2	Jeremy Jones	2024-03-09	The Nike Book 1 is simple and effective. It plays fast with traction which works, and the materials are good quality. My only gripe is with the lack of forefoot cushioning tech.
24	52	8.2	RicheeKim	2024-03-09	The Nike Book 1 is slightly expensive for the features you get. I enjoyed the responsive cushioning and the premium-feeling materials.
44	52	8.2	TommyLiu	2024-03-09	I love the materials on the Nike Book 1. The traction is surprisingly good, and the cushioning is comfortable.
43	52	8.2	The Sole Drop	2024-03-17	The Nike Book 1 is an impressive shoe because of its traction and materials. The only downsides are the lateral containment in the forefoot and the lack of forefoot impact protection.
37	52	8.0	Foot Doctor Zach	2023-12-28	The Nike Book 1 is incredibly light of foot. It has quick and light side-to-side movement, and the cushioning and traction are impressive for lighter players.
45	52	8.0	KicksContestWorld	2024-04-14	I like the look, materials, and style of the Nike Book 1. In terms of performance, they're better suited for players with a perimeter focus.
29	52	7.6	MARKCHES	2024-03-09	The Nike Book 1 is a well-made and aesthetic sneaker. I enjoyed the materials and support. The traction and cushioning could be better.
36	53	9.2	Snkr Tech Talk	2024-02-24	The Under Armour FUTR X Elite has standout traction and cushioning. This shoe has my favourite implementation of Flow foam to date.
37	53	8.4	Foot Doctor Zach	2024-02-18	I truly enjoyed the playability of the Under Armour Flow FUTR X Elite. The shoe feels accommodating for most play styles, and it's an easy shoe to play in.
1	53	8.2	NightWing2303 [weartesters.com]	2024-02-18	The Under Armour FUTR X Elite is an interesting innovative performer. The cushioning is stable and comfortable, but the fit might divide players.
24	53	8.0	RicheeKim	2024-03-09	Pick up the Under Armour FUTR X Elite if you enjoy Flow cushioning and traction. It's excellent on clean courts and has plenty of responsiveness.
39	53	7.0	Evan Miranda [weartesters.com]	2024-02-18	The Under Armour FUTR X Elite is a weird shoe. The traction and cushioning feel solid, but the fit is not optimal for performance.
37	54	9.0	Foot Doctor Zach	2024-03-17	The New Balance Fresh Foam BB V2 is one of the most protective shoes for support and impact protection. The Fresh Foam X does a good job of keeping your whole foot comfortable.
42	54	8.8	Jackson Bayer [weartesters.com]	2024-04-14	I enjoy the New Balance Fresh Foam BB V2 more than the V1. The fit and materials are better, and the traction and cushioning are outstanding.
44	54	8.8	TommyLiu	2024-03-22	Performance and quality are top-notch on the New Balance Fresh Foam BB V2. The traction and cushioning feel very impressive.
24	54	8.6	RicheeKim	2024-03-17	The New Balance Fresh Foam BB V2 has exceptional cushioning, materials and support. The traction performance on dust can be better.
43	54	8.2	The Sole Drop	2024-03-17	The New Balance Fresh Foam BB V2 has comfortable cushioning. The shoe caters to impact protection. The traction slides a bit during forward movements, which is frustrating.
47	55	8.8	Lukas Simoner	2024-03-22	The Nike G.T. Cut 3 feels like the rightful successor to the original. The performance is amazing, and the cushioning is one of my favourites.
44	55	8.6	TommyLiu	2024-01-29	The Nike G.T. Cut 3 feels better than the 2. The cushioning is impressive out of the box, and the shoe is extremely lightweight.
1	55	8.6	NightWing2303 [weartesters.com]	2024-04-21	The Nike G.T. Cut 3 is a fantastic performer. The traction worked well, and I love how the ZoomX foam feels.
29	55	8.4	MARKCHES	2024-01-29	I'm impressed with the performance of the Nike Air Zoom G.T. Cut 3. I like how the cushioning feels, and the traction performs very well.
33	55	8.4	Soled Out Reviews	2024-01-29	The Nike G.T. Cut 3 does its job. The cushioning is comfortable, the traction is solid, and the materials feel light.
36	55	8.3	Snkr Tech Talk	2024-01-29	The Nike G.T. Cut 3 has solid traction on clean courts, but the materials disappointed me. I would've preferred the cushioning to be more responsive, too.
46	55	8.2	Jeremy Jones	2024-01-29	The G.T. Cut 3 is a reliable performer. The traction is consistent, and the ZoomX cushioning feels plush.
24	55	8.0	RicheeKim	2024-01-31	The Nike G.T. Cut 3 has a steep price. I wish the materials and support were better, but I enjoy the feeling of the ZoomX foam.
43	55	8.0	The Sole Drop	2024-01-31	The Nike Air Zoom G.T. Cut 3 has top-tier traction and comfortable, but underwhelming, cushioning. The materials could be better quality for the price.
2	55	8.0	Stanley T. [weartesters.com]	2024-02-24	The Nike G.T. Cut 3 has all the bells and whistles but needs to refine how they work in unison. The traction performs well, and the ZoomX implementation is fresh.
37	55	7.8	Foot Doctor Zach	2024-01-29	You need the proper skill set to use the Nike G.T. Cut 3. The shoe plays fast, and the cushioning is bouncy. Torsional support and lateral containment can be an issue.
36	56	9.0	Snkr Tech Talk	2024-03-03	The Air Jordan 38 Low is a well-balanced performer. The support and materials are fantastic, and I love the cushioning setup.
24	56	8.8	RicheeKim	2024-02-05	I enjoyed playing in the Air Jordan 38 Low. The cushioning is outstanding. The traction performance is solid, too. Make sure to wipe on dust, though.
33	56	8.5	Soled Out Reviews	2024-02-01	I like the Jordan 38 Low more than the Jordan 38. I recommend the cushioning and reliable traction to everyone.
37	56	8.4	Foot Doctor Zach	2024-01-29	The Jordan 38 Low is slightly better than the regular 38. I especially enjoyed the improved stability and containment.
44	56	8.4	TommyLiu	2024-01-29	The Jordan 38 Low doesn't improve enough from the regular 38 to be worth it. The traction and cushioning are solid, but the extra flexibility felt less secure.
43	56	8.2	The Sole Drop	2024-02-24	The Jordan 38 Low is a decent performer for a lower price than the mid-cut version. The traction is decent, and the full-length Zoom Strobel is bouncy.
37	57	8.3	Foot Doctor Zach	2024-01-29	The Adidas Dame Certified 2.0 is incredibly agile, considering the bulk. I love the shank usage, and the traction performs well.
44	57	8.2	TommyLiu	2024-01-29	The Adidas Dame Certified 2.0 does not disappoint. The traction is exceptional, and this year's improvements in stability are appreciated.
24	57	8.0	RicheeKim	2024-01-29	The Dame Certified 2.0 is a steal for the price. The only downside is the lack of impact protection. Otherwise, the shoe is excellent.
43	58	8.4	The Sole Drop	2024-01-31	The Nike G.T. Cut Academy has phenomenal traction and comfortable cushioning. I felt quick when I was playing with this shoe. This is one of the best shoes under $100.
24	58	8.4	RicheeKim	2024-02-01	The Nike G.T. Cut Academy is a beast of a performer for the price. The slight heel slippage and narrowness were the only downsides. I enjoyed the cushioning, and the traction is top-tier.
44	58	8.4	TommyLiu	2024-03-09	The Nike G.T. Cut Academy is the best budget shoe this year. The traction is some of the best on the market, and the support and lockdown feel secure.
41	58	8.2	Allen Sison [weartesters.com]	2024-05-26	The Nike GT Cut Academy is a legitimate performer. I love the traction and how comfortable the materials feel during play.
33	58	8.0	Soled Out Reviews	2024-01-29	The Nike G.T. Cut Academy is a solid performer for the price. The cushioning is decent, and the traction performed better than expected.
36	58	7.9	Snkr Tech Talk	2024-02-24	I enjoyed playing in the Nike GT Cut Academy. It has outstanding traction, and the cushioning felt comfortable. The main downfall is the cheap materials.
37	58	7.8	Foot Doctor Zach	2024-01-29	The Nike G.T. Cut Academy feels similar to the G.T. Cut 3. It feels more stable, but it does not have the tools and pop the G.T. Cut 3 has.
37	59	8.0	Foot Doctor Zach	2024-02-18	The Jordan One Take 5 is tremendous around the hoop, but the breathability is not good. The shoe is stable with solid traction.
44	59	7.6	TommyLiu	2024-02-18	The Jordan One Take 5 is not bad, but better options are available. The shoe's performance features feel basic.
24	59	7.6	RicheeKim	2024-02-18	The Jordan One Take 5 is a solid performer for the price. The traction and materials are decent, but the fit is an issue for wider feet.
39	59	7.0	Evan Miranda [weartesters.com]	2024-02-18	The Jordon One Take 5 is a niche performance model. The shank plate makes the shoe too restrictive for most players. Traction is the shoe's best feature.
33	59	7.0	Soled Out Reviews	2024-02-18	I'm not a fan of the Jordan One Take 5. I wouldn't recommend this shoe because the performance is below standard.
1	60	8.0	NightWing2303 [weartesters.com]	2024-02-27	The Adidas Adizero Select 2.0 feels like an improved Harden Vol 4. The shoe is lightweight with fantastic traction.
37	60	7.8	Foot Doctor Zach	2024-02-27	The Adidas Adizero Select 2.0 has impressive grip and materials. The shoe is lightweight and breathable, too. This pair is best when moving in different directions.
24	60	7.8	RicheeKim	2024-02-27	The Adizero Select 2.0 is a decent shoe. There are downfalls with the cushioning and traction, but the lightweight nature feels comfortable.
43	60	7.4	The Sole Drop	2024-03-03	The Adidas Adizero Select 2.0 is lightweight but I didn't feel quick during play. The traction on dust is not good. A responsive cushion is the best feature.
44	60	7.2	TommyLiu	2024-02-27	The Adidas Adizero Select 2.0 is lightweight and breathable, but few standout features exist. The cushioning feels flat. The traction feels decent, though.
43	61	9.0	The Sole Drop	2024-01-15	I love playing in the Adidas AE 1. The traction is outstanding, the cushioning feels comfortable, and the support and lockdown keep you secure.
47	61	9.0	Lukas Simoner	2024-03-22	The Adidas AE 1 is in the running for best performer of the year. I love the traction and cushioning setup. This shoe is one of my favourite performance models.
36	61	8.9	Snkr Tech Talk	2023-12-28	The Adidas AE 1 has outstanding performance. The support and cushioning are some of the best; the only downside is the weight.
46	61	8.8	Jeremy Jones	2024-01-15	The Adidas AE 1 feels complete. I feel ready to play in this shoe. The cushioning is elite, and the traction holds up as well.
33	61	8.8	Soled Out Reviews	2024-01-02	The Adidas AE 1 is a dope performer. It's sturdy and well-built. It has the traction, cushioning, and support that players need.
44	61	8.6	TommyLiu	2023-12-28	I'm loving the Adidas AE 1. The step-in cushioning feels comfortable, and the lockdown is impressive. My only gripes are the weight and breathability.
41	61	8.6	Allen Sison [weartesters.com]	2024-01-11	The standout features of the Adidas AE 1 are the stability and cushioning. This is one of the best performance shoes if you enjoy the materials.
29	61	8.6	MARKCHES	2024-02-18	I like the direction Adidas is going with the AE 1. The cushioning feels good, the traction is grippy, and I felt secure in these shoes.
45	61	8.6	KicksContestWorld	2024-05-01	The Adidas AE 1 debuts with a solid score for performance. Lateral stability is the only downside. The traction is perfect, and the cushioning feels comfortable.
37	61	8.4	Foot Doctor Zach	2023-12-28	The Adidas AE 1 is an easy shoe to play in. It feels buttery underfoot despite being heavy. The foam choices for the cushioning are incredible.
24	61	8.2	RicheeKim	2024-01-11	I have no problem recommending the Adidas AE 1 at this price point. The traction is phenomenal, but I did experience some sliding on the footbed.
44	62	8.0	TommyLiu	2023-12-28	The Puma Scoot Zeros feel incredibly similar to the MB.02. The performance is decent, but there aren't many differences from the rest of the Puma lineup.
36	62	7.9	Snkr Tech Talk	2023-12-28	The Puma Scoot Zeros are a great budget option. The traction feels good, and I enjoyed the fit, even though it feels snug.
37	62	7.7	Foot Doctor Zach	2024-02-27	The Puma Scoot Zero is a nice, crafty shoe. I like the traction performance and how accommodating the fit feels.
33	62	7.4	Soled Out Reviews	2024-01-11	I would only recommend the Puma Scoot Zeros to guards. It feels responsive but lacks impact protection.
43	62	7.2	The Sole Drop	2024-04-21	I did not like playing in the Puma Scoot Zeros. This shoe is a disappointment. Traction and cushioning are both poor, and the shoe is heavy.
37	63	8.8	Foot Doctor Zach	2023-12-28	The Curry Spawn FloTro is a fantastic performance shoe. It's easy to play in because of the traction and cushioning. I enjoy the fit and support, too.
33	63	8.6	Soled Out Reviews	2023-12-28	The Curry Spawn FloTro is a low-to-the-floor, responsive sneaker. I love the Flow foam for traction and cushioning.
43	63	8.4	The Sole Drop	2024-03-22	I enjoy playing in the Curry Spawn FloTro. The shoe feels smooth, and the traction is incredible. The cushioning is also soft and comfortable.
44	63	7.8	TommyLiu	2023-12-28	The Curry Spawn FloTro is a fantastic shoe for guards. It's light and responsive, and the traction is top-tier. I wish the shoe had more stability, though.
37	64	9.3	Foot Doctor Zach	2023-12-28	The Li-Ning Way of Wade All City 12 is surefooted and offers tremendous performance. The cushioning is incredible, and the traction enables all types of movement.
47	64	9.2	Lukas Simoner	2024-04-21	The Li-Ning Way of Wade All City 12 is one of my favourite shoes of 2024. Both traction and cushioning are excellent, and the shoe has no weaknesses.
36	64	9.0	Snkr Tech Talk	2024-04-05	The Li-Ning Way of Wade All City 12 is a fantastic performer. The traction pattern is amazing, the cushioning is comfortable, and the support is outstanding.
42	64	8.8	Jackson Bayer [weartesters.com]	2024-03-17	Li-Ning's Way of Wade All City 12 is one of the most well-rounded shoes of the year. The shoe is the entire package with its excellent traction and balanced cushioning.
33	64	8.8	Soled Out Reviews	2024-01-17	The Li-Ning Way of Wade All City 12 is my favourite model in the lineup. I recommend the shoe for all positions.
44	64	8.7	TommyLiu	2024-01-08	The Li-Ning Way of Wade All City 12 is a must-cop. The cushioning is comfortable, and the traction is one of the best. I also enjoyed the material improvement.
43	64	8.6	The Sole Drop	2024-01-16	The Li-Ning Way of Wade All City 12 is low to the ground and fast. The cushioning has incredible court feel, and the traction is consistent.
29	64	8.6	MARKCHES	2024-01-21	The Li-Ning Way of Wade All City 12 continues the impressive performance from the All City line. The cushioning offers more impact protection, and the materials feel better.
43	65	8.4	The Sole Drop	2023-12-06	The Adidas D.O.N. Issue #5 thrives on fit, support, and lockdown. The performance of the materials aids with the containment, and the traction is decent.
37	65	8.0	Foot Doctor Zach	2023-12-14	The Adidas D.O.N. Issue #5 is a Jekyll and Hyde type of shoe. I felt quick and snappy but also stiff at the same time. The foam could be better.
44	65	8.0	TommyLiu	2023-12-14	I like the Adidas D.O.N. Issue #5 aesthetics more than the performance. The traction is excellent, but the cushioning feels B-tier.
37	66	7.8	Foot Doctor Zach	2023-12-06	The New Balance Hesi Low feels agile and light around the court. The traction warms up well, and it benefits lighter, shiftier players.
44	66	7.6	TommyLiu	2023-12-06	The New Balance Hesi Low has no weaknesses, but there are also no standout features. I enjoy the cushioning, and the support is solid.
36	67	9.4	Snkr Tech Talk	2023-10-22	I love the Nike LeBron 21, especially after breaking in the materials. The traction and cushioning are top-notch. It's an elite shoe.
37	67	9.2	Foot Doctor Zach	2023-08-18	The Nike LeBron 21 is incredibly fun to play in. I felt like I could cut, move, and pivot quickly. The traction is outstanding, and the cushioning is bouncy.
41	67	9.0	Allen Sison [weartesters.com]	2023-10-19	This year's Nike LeBron 21 is incrementally better than the 20. The traction performance is excellent, and the cushioning feels slightly improved too.
29	67	8.8	MARKCHES	2023-10-05	The Nike LeBron 21 is still an impressive performer. The materials and support are improved to provide additional containment and stability.
43	67	8.8	The Sole Drop	2023-10-13	The Nike LeBron 21 feels quick. I love playing in these shoes. The traction is outstanding, and the cushioning feels comfortable and responsive. It's not the most breathable, though.
46	67	8.8	Jeremy Jones	2023-11-25	The Nike LeBron 21 is an elite basketball performer. The materials feel more premium, while the traction and cushioning remain top-tier.
24	67	8.8	RicheeKim	2024-01-21	I highly recommend the Nike LeBron 21. It has fantastic cushioning and impressive traction. It's also fun to play in.
47	67	8.8	Lukas Simoner	2024-03-22	The Nike LeBron 21 keeps the impressive traction and cushioning from last year. I prefer the knit material on the previous LeBron shoe.
33	67	8.8	Soled Out Reviews	2023-10-19	I think the Nike LeBron 21 is a dope sneaker once it's broken in properly. The traction is top-tier, and the cushioning provides plenty of impact protection.
44	67	8.6	TommyLiu	2023-11-22	The LeBron 21 is Nike's best basketball shoe right now. The cushioning is better, and the traction is excellent.
7	67	8.5	Nelson Chan @Hoop and Life	2023-10-08	The Nike LeBron 21 is all over the place. The traction and materials disappointed me, but the cushioning and support are incredible.
37	68	9.0	Foot Doctor Zach	2023-10-10	The New Balance TWO WXY V4 exceeds in multiple ways. There's no better option for players seeking maximalist protection and minimalist pop and explosion.
2	68	8.5	Stanley T. [weartesters.com]	2023-11-08	New Balance did not disappoint with the TWO WXY V4. The cushioning feels better this year, and the traction continues to perform well.
44	68	8.2	TommyLiu	2023-10-22	The New Balance TWO WXY V4 is the complete package. It has the cushioning and traction to cater to all positions and play styles.
42	68	8.2	Jackson Bayer [weartesters.com]	2023-11-03	I prefer the New Balance TWO WXY V3 to the TWO WXY V4, but the impact protection and outsole durability are better on the V4. The fit is tricky, but the traction remains reliable.
43	68	8.2	The Sole Drop	2023-11-15	The New Balance TWO WXY V4 feels quick, responsive, and comfortable. The cushioning is soft, the traction performs well, and the materials are supportive.
24	68	8.2	RicheeKim	2024-02-18	The New Balance TWO WXY V4 is a fun shoe to play in. I enjoyed the cushioning and the traction.
33	69	8.5	Soled Out Reviews	2023-10-22	The Jordan Zion 3 provides enough stabilization for all positions. I love the cushioning, and the traction works as long as you wipe the dust.
43	69	8.4	The Sole Drop	2023-11-11	I love the Jordan Zion 3. Everything about the shoe is fantastic except for the narrow fit. The traction was solid, and this shoe has my favourite drop-in midsole.
36	69	8.3	Snkr Tech Talk	2023-11-03	The Jordan Zion 3 is one of the best supportive low-top shoes. Jordan Brand knocked the drop-in midsole out of the park, too.
37	69	8.2	Foot Doctor Zach	2023-10-25	The Jordan Zion 3 is a departure from his previous shoes. It's a minimal shoe that maintains the structure, but it's still heavy. The traction and outsole are the best features.
46	69	8.0	Jeremy Jones	2023-10-28	The Jordan Zion 3 is made for stockier players who play with pace. All the features perform as intended, but there is a break in period.
29	69	8.0	MARKCHES	2023-11-11	The Jordan Zion 3 is a minimal shoe with outstanding support and lockdown. I enjoy the drop-in midsole, but the shape and fit of the shoe are off.
45	69	7.6	KicksContestWorld	2024-05-19	The Jordan Zion 3 didn't meet our expectations. The only upside is the cushioning. Jordan Brand takes a step back on this model.
44	69	6.8	TommyLiu	2023-12-25	I'm disappointed with the Jordan Zion 3. The comfort is poor, and there's a lot of pinching because of the fit.
11	70	9.5	Duke4005 [weartesters.com]	2024-01-11	The Anta KT 9 is one of my top shoes this year. The traction and cushioning are outstanding. None of the features disappoint.
33	70	8.5	Soled Out Reviews	2023-11-08	The Anta KT 9 is suitable for the 1-3 positions. It has fantastic heel impact protection, and the support is solid. My only gripe is the breathability.
43	70	8.4	The Sole Drop	2023-11-15	The Anta KT 9 is a shoe I enjoyed playing in. My only concerns are breathability and dust pickup. The comfort feels good, and the traction performs well.
37	70	8.3	Foot Doctor Zach	2023-11-17	The Anta KT 9 is an incredibly stable and containing shoe. The playability is impressive if you have the right foot shape. The impact protection is one of the best.
43	71	8.2	The Sole Drop	2023-12-06	The Nike LeBron Witness 8 caters to quick play styles. The traction is outstanding, but the cushioning could be better.
15	295	7.8	Another Pair [weartesters.com]	2018-09-26	The D Rose 9 is a solid performer, but there are better performers at a more affordable price out there.
44	71	7.8	TommyLiu	2023-12-06	The Nike LeBron Witness 8 is a solid, budget performer. I think it's a good pickup if you can get it at a discount. The cushioning is soft, and the traction works.
39	71	7.5	Evan Miranda [weartesters.com]	2023-12-18	The LeBron Witness 8 is low to the ground and responsive. The materials and support feel better than the previous Witness 7.
37	71	7.2	Foot Doctor Zach	2023-12-06	The Nike LeBron Witness 8 does not inspire confidence. The lateral containment was not secure enough because of the lack of containment features.
44	72	8.2	TommyLiu	2023-12-06	The Li-Ning Wade Shadow 5 is a decent performer, especially for a budget shoe. Stability is the best feature, while traction and cushion take some time to warm up.
43	72	8.0	The Sole Drop	2024-01-15	I like the Li-Ning Wade Shadow 5 as a budget performer. The shoe is impressive for lockdown, and the traction and cushioning are decent.
37	72	7.8	Foot Doctor Zach	2023-12-06	The Li-Ning Wade Shadow 5 is better for outdoor use. The shoe caters to larger, more powerful players that can generate more force for traction and cushioning.
44	73	8.0	TommyLiu	2023-07-24	The Adidas Trae Young 3 has bouncy cushioning and consistent traction, but the heel slippage and stability subtract from the overall performance.
37	73	8.0	Foot Doctor Zach	2023-08-13	The Adidas Trae Young 3 is a niche shoe. It's best for lightweight, bouncing players. The cushion is soft and bouncy, while the traction grips. Beware of the durability outdoors.
39	73	8.0	Evan Miranda [weartesters.com]	2023-09-16	The Adidas Trae Young 3 is a massive improvement. It feels light and reactive. The best features are the grippy outsole and stability. The main downside is the lack of impact protection for heavier players.
43	73	8.0	The Sole Drop	2023-11-03	The Adidas Trae Young 3 is a solid performer, but I didn't enjoy how bulky it is. The cushioning feels good, and the stability is better than expected, though.
33	73	7.8	Soled Out Reviews	2023-08-25	The Adidas Trae Young 3 is a decent shoe. It has impressive traction and cushioning. The materials and comfort are lacking, though.
36	74	8.7	Snkr Tech Talk	2023-11-11	The Puma MB.03 has impressive traction and support. This iteration is similar to the previous two, and I enjoy playing in this shoe.
42	74	8.6	Jackson Bayer [weartesters.com]	2023-09-28	The Puma MB.03 is my favourite performer in LaMelo's signature line. The fit feels great, the materials are improved, and the traction is elite.
33	74	8.3	Soled Out Reviews	2023-11-08	The Puma MB.03 is a stable and supportive sneaker. The cushioning is my favourite part, but I dislike the shoe's weight.
44	74	8.2	TommyLiu	2023-09-28	Not much has changed with the Puma MB.03. The heel impact protection is slightly improved, while the other features remain solid.
37	74	8.2	Foot Doctor Zach	2023-11-11	The Puma MB.03 is such a comfortable shoe. The foam is forgiving, and I enjoy the upper material setup. The main downside is the weight.
46	74	8.0	Jeremy Jones	2023-12-09	If you like consistency, consider the Puma MB.03. LaMelo Ball's line is consistent. All of the features work well together.
43	74	7.8	The Sole Drop	2023-11-08	I didn't enjoy playing in the Puma MB.03. Puma took steps back with the materials, traction, and cushioning. Support and lockdown are impressive, though.
43	75	8.8	The Sole Drop	2023-09-28	The quality is impressive for the price of the 361 AG 4. The traction is outstanding, the lockdown is solid, and the cushioning feels incredibly comfortable. This is the best value shoe for it's price.
37	75	8.6	Foot Doctor Zach	2023-09-28	The 361 AG 4 takes some breaking in, but they play like a maximalist shoe with soft cushioning and support. I enjoyed the shiftiness it provides for being a beefier shoe.
44	75	8.6	TommyLiu	2023-12-14	The 361 AG 4 feels best for quick play styles. I had a fantastic experience playing in this shoe because of the traction and cushioning.
29	75	8.4	MARKCHES	2023-09-28	Aaron Gordon's fourth shoe, the 361 AG 4, is a step up in performance. The cushioning is the best since the first shoe, and the traction is top-tier.
36	76	8.9	Snkr Tech Talk	2023-11-08	The Under Armour Curry 11 is Steph Curry's best signature model. I enjoyed the updated cushioning. The fit and support are stellar, and the traction is fantastic.
42	76	8.8	Jackson Bayer [weartesters.com]	2023-12-28	I love the Curry 11 more than the Curry 10. The traction is elite, and the cushioning caters to shooters nicely. It uses the best iteration of Flow, too.
33	76	8.8	Soled Out Reviews	2023-11-08	The Under Armour Curry 11 is the perfect guard shoe. It has you covered in all directions and through all movements.
44	76	8.6	TommyLiu	2023-10-23	The Under Armour Curry 11 keeps all the best performance features of the Curry 10. It's a fantastic shoe with excellent traction.
43	76	8.6	The Sole Drop	2023-11-08	The Curry 11 is more of the same. The traction continues to be impressive, and the cushion is low to the ground and responsive.
37	76	8.4	Foot Doctor Zach	2023-10-28	The Curry 11 is an improvement from previous models. I love the Flow foam setup, the weight, and the traction. It's more laterally stable as well.
36	77	9.0	Snkr Tech Talk	2023-09-11	The Air Jordan 38 is a fantastic basketball shoe. The cushioning, materials, and support are all improved. This is the best Jordan Brand shoe in a while.
33	77	8.8	Soled Out Reviews	2023-09-09	I recommend the Jordan 38 to everyone. I love the bouncy Zoom Strobel and the top-tier traction. My only gripe is the poor toe box materials.
29	77	8.8	MARKCHES	2023-09-18	The Air Jordan 38 is an improvement compared to the last model. The cushioning, stability, and materials are all better. I enjoyed the zero break-in time.
44	77	8.6	TommyLiu	2023-09-03	The Air Jordan 38 is well worth the price. The traction and cushioning feel great. Jordan Brand paid attention to the details to make this shoe a top performer.
41	77	8.6	Allen Sison [weartesters.com]	2023-09-16	I enjoyed playing in the Air Jordan 38. The traction performed well on all courts, and the cushioning is some of Jordan's best. My outsole did separate, which was disappointing.
43	77	8.4	The Sole Drop	2023-08-30	The Air Jordan 38 is responsive and comfortable. The traction performs on clean courts, and the support is solid. I prefer the cushioning setup with bounce and comfort, too.
37	77	8.2	Foot Doctor Zach	2023-08-12	The Air Jordan 38 is a perfect containing and maximalist shoe. The support and lockdown are improved, and the cushioning is comfortable.
7	78	9.5	Nelson Chan @Hoop and Life	2023-08-16	The Nike KD is a well-balanced hoop shoe. I enjoy the comfortable cushioning, and the shoe feels like an improvement from last year.
47	78	8.8	Lukas Simoner	2024-03-22	The Nike KD 16 is one of my favourite performers. The cushioning is catered to impact protection, and the support and materials combine to provide excellent comfort.
33	78	8.6	Soled Out Reviews	2023-08-18	The Nike KD 16 is perfect for players looking for heel impact protection and low movement latency. The traction is decent, but the cushioning is where the shoe excels.
43	78	8.4	The Sole Drop	2023-08-25	The Nike KD 16 feels quick. It's a solid shoe, but there are better options on the market. The cushioning is soft, and the traction plays well on clean courts.
36	78	8.3	Snkr Tech Talk	2023-10-05	The Nike KD 16 is a decent performer. The cushioning was a letdown compared to last year, but the support and lockdown felt fantastic.
29	78	8.3	MARKCHES	2023-09-22	I enjoyed playing in the Nike KD 16, even with the change in cushioning. The traction feels nice, and the shoe is supportive.
46	78	8.2	Jeremy Jones	2023-08-18	The Nike KD 16 is a well-rounded, versatile sneaker. It has traction, cushioning, and support for multiple positions and play styles.
44	78	8.2	TommyLiu	2023-09-12	The Nike KD 16 doesn't pack the same punch as previous models. It's still a solid performer because none of the features are bad, but it's not exceptional.
24	78	8.2	RicheeKim	2024-01-15	I recommend the Nike KD 16 if you're playing on clean courts. The shoe is comfortable, and the cushioning feels incredible. Avoid playing on dusty courts, though.
37	78	7.8	Foot Doctor Zach	2023-07-24	The Nike KD 16 is plush and maneuverable, but it doesn't have the bite of the previous models.
39	79	8.2	Evan Miranda [weartesters.com]	2023-11-25	The Nike Giannis Immortality 3 is an impressive budget shoe. It's a solid pick suited well for outdoors. The cushioning and materials are improved.
43	79	8.2	The Sole Drop	2023-09-28	The Nike Giannis Immortality 3 is a minimal, quick, and responsive shoe. The cushioning could be softer and more plush, but the traction feels excellent.
44	79	7.8	TommyLiu	2023-08-18	I enjoyed playing in the Nike Giannis Immortality 3. It's an improvement from last year's model. The traction performs well, and the cushioning is responsive.
24	79	7.8	RicheeKim	2024-05-19	The Nike Giannis Immortality 3 is a solid pickup. The traction is impressive, especially at this price point. This is a great 'balling on a budget' shoe.
37	79	7.6	Foot Doctor Zach	2023-12-09	The Nike Giannis Immortality 3 feels lively and springy. The materials and midsole likely hold up better for lighter guards. It caters to shifty players well because of the weight and traction.
37	80	8.8	Foot Doctor Zach	2023-08-21	The Rigorer AR 1 is incredibly responsive. The shoe transitions from high speed to low speed very well. The traction is fantastic, and it's a highlight feature.
43	80	8.8	The Sole Drop	2023-09-07	The Rigorer AR 1 excels at being a fast and responsive shoe. I never worried when playing in the AR 1. Traction is top-tier.
32	80	8.4	ShadeSnSoleS [Youtube]	2023-12-19	The Rigorer AR1 is an excellent shoe, especially considering the price. The support is secure and locked down, while the traction pattern works well.
24	80	8.4	RicheeKim	2024-06-02	The Rigorer AR 1 is a banger. It offers excellent performance for the price and is a fun and comfortable shoe to play in.
47	80	8.3	Lukas Simoner	2024-03-22	The Rigorer AR 1 is one of the best budget shoes available. The traction is the best feature. Cushioning is minimal, but it's not a hindrance.
29	80	8.2	MARKCHES	2023-08-23	The Rigorer AR 1 is a solid shoe for players who enjoy low-to-the-ground, responsive sneakers with subtle bounce.
36	80	8.2	Snkr Tech Talk	2024-07-25	I think positions 1 through 5 can play in the Rigorer AR 1. The traction is elite and the support is impressive. My main concern is the outsole's durability.
46	80	8.0	Jeremy Jones	2024-06-02	The Rigorer AR 1 is a solid option at this price. I love the traction, and the cushioning feels balanced. It's a versatile shoe I can get down with.
36	81	8.9	Snkr Tech Talk	2023-11-08	I enjoyed the Nike Sabrina 1. I didn't have to think when playing, which I loved. The traction and cushioning are excellent, and the support is near perfect.
2	81	8.5	Stanley T. [weartesters.com]	2023-09-29	The Nike Sabrina 1 is a solid first signature shoe. The shoe caters to shifty, ground-based players. My only gripe is I wish the React foam felt softer.
46	81	8.4	Jeremy Jones	2023-09-20	The Nike Sabrina 1 reminds me of the Kobe line. The traction and lockdown are exceptional. The cushioning feels good after a break-in period, too.
33	81	8.4	Soled Out Reviews	2023-09-20	The Nike Sabrina 1 is an impressive guard shoe. I enjoyed the materials and traction. I would've liked a more prominent Zoom unit.
42	81	8.4	Jackson Bayer [weartesters.com]	2023-11-15	The Nike Sabrina 1 is a standout shoe for players who enjoy lightweight, quick, and responsive shoes. The materials are light and breathable, and cushioning feels straightforward.
37	81	8.3	Foot Doctor Zach	2023-09-20	The Nike Sabrina 1 offers tons of ground feel and shiftiness. The support and traction allow players to make shifty moves. The materials are also very comfortable.
32	81	8.3	ShadeSnSoleS [Youtube]	2024-01-21	The Nike Sabrina 1 is a solid performer. It's lightweight and low profile. The traction, cushioning, and support remind me of the Kobe line.
24	81	8.2	RicheeKim	2024-01-17	I recommend the Nike Sabrina 1 for the price. I enjoyed the cushioning, traction, and materials. The support felt impressive, too.
43	81	8.0	The Sole Drop	2023-09-22	The Nike Sabrina 1 is a responsive, comfortable shoe. I felt quick, the cushioning is soft, and the materials feel fantastic.
29	81	8.0	MARKCHES	2023-10-13	The Nike Sabrina is a solid performer and a minimal sneaker. It's better for players with low-to-the-ground play styles because of the thin cushioning and grippy traction.
44	81	7.8	TommyLiu	2023-11-11	The Nike Sabrina 1 has inconsistent traction and a snug fit, but playing with this cushioning setup is enjoyable.
44	82	8.6	TommyLiu	2023-09-20	I'm impressed by the comfort of the Nike G.T. Hustle 2. The shoe provides speed and agility while remaining responsive and bouncy.
36	82	8.2	Snkr Tech Talk	2023-09-28	The Nike G.T. Hustle 2 is my favourite in the G.T. lineup. I love the cushioning and materials. Look elsewhere if you need midfoot support.
2	82	8.0	Stanley T. [weartesters.com]	2023-09-21	I'm pleasantly surprised how much I enjoy the Nike G.T. Hustle 2. I felt rejuvenated when making cuts, planting my feet, and using quick moves.
33	82	8.0	Soled Out Reviews	2023-10-10	The Nike G.T. Hustle 2 is a decent performer. I didn't have any issues with the traction, and the lockdown is outstanding once you get your feet in and the laces completely secure.
43	82	8.0	The Sole Drop	2023-10-19	The Nike G.T. Hustle 2 is a smooth and nimble-feeling shoe. There's a lot of court feel, and the cushioning feels well-rounded, too. The material quality is the main downside.
37	82	7.8	Foot Doctor Zach	2023-09-20	The Nike G.T. Hustle 2 is a lightweight and bouncy performer. The cushioning and outsole setup make getting up and down the court easier.
29	82	7.8	MARKCHES	2023-09-28	There's a lot of promise with the Nike G.T. Hustle 2, but it misses the mark slightly. The shoe plays low and responsive thanks to the full-length Zoom cushioning.
7	83	9.5	Nelson Chan @Hoop and Life	2023-08-02	The Nike Zoom Freak 5 is close to perfect. All aspects of the shoe are impressive and perform well. The traction and cushioning remind me of the Kobe 5.
43	83	8.6	The Sole Drop	2023-08-22	I felt quick playing in the Nike Zoom Freak 5. The traction is top-tier, and the cushioning is comfortable. I like how the shoe feels on foot. It suits my play style.
44	83	8.0	TommyLiu	2023-07-27	I think the Nike Zoom Freak 5 is a solid shoe. The traction and cushioning get the job done. The materials could be better. I'm not a fan of the looks, though.
24	83	8.0	RicheeKim	2024-05-26	The Nike Zoom Freak 5 is a solid performer with impressive traction. I enjoy the cushioning and support as well.
33	83	7.8	Soled Out Reviews	2023-08-09	The Nike Zoom Freak 5 isn't a poor performer, but the shoe feels cheap. The traction and cushioning are decent, but I don't enjoy the materials.
36	83	7.7	Snkr Tech Talk	2023-08-16	The Nike Zoom Freak 5 is my favourite shoe in Giannis's line. I'm enjoying the cushioning and traction setups.
37	83	7.6	Foot Doctor Zach	2023-07-14	The Nike Zoom Freak 5 feels like a more secure version of the 4. I enjoyed the stability, and the traction and cushion let me play a quick style.
36	84	9.2	Snkr Tech Talk	2023-07-24	The Nike Zoom GT Jump 2 will live in my bag permanently. The traction is outstanding, but the cushioning and support features make this shoe incredible.
11	84	9.0	Duke4005 [weartesters.com]	2023-08-17	The Nike GT Jump 2 fixed all my concerns with the original version. It's still incredibly bouncy, but now it feels comfortable, secure, and stable.
37	84	8.6	Foot Doctor Zach	2023-07-21	The Nike GT Jump 2 is a maximalist shoe with incredibly plush and comfortable cushioning. The bounce and springiness are second to none.
33	84	8.6	Soled Out Reviews	2023-07-30	Frontcourt players will love the Nike GT Jump 2. The cushioning and traction are top-tier, and the materials are comfortable.
44	84	8.4	TommyLiu	2023-08-23	The Nike GT Jump 2 makes perfect sense as a package. The cushioning is top-tier, and the other features are more versatile than last year's model.
43	84	8.2	The Sole Drop	2023-08-31	The Nike GT Jump 2 is a maximalist shoe with unreal cushioning. I prefer to feel responsive and low to the ground, but this shoe is solid for bounce and impact protection.
45	84	8.0	KicksContestWorld	2024-03-22	The Nike G.T. Jump 2 is held back by the lack of lateral stability. The traction and cushioning are fantastic, though.
29	85	8.8	MARKCHES	2023-08-28	It's not a signature model, but the performance of the Li-Ning Wade 808 3 Ultra feels premium. The cushioning and traction are both top-tier.
44	85	8.6	TommyLiu	2023-08-28	The Li-Ning Wade 808 3 Ultra is on a whole new level. This year's model improved on traction while maintaining performance with cushioning and support.
43	85	8.6	The Sole Drop	2023-09-03	The Way of Wade 808 line is one of my favourites. The 808 3 Ultra has responsive cushioning and top-tier traction performance. Impact protection could be better.
32	85	8.6	ShadeSnSoleS [Youtube]	2023-09-30	The Li-Ning Wade 808 3 Ultra is a shoe for every position because of the support and lockdown. The cushioning feels comfortable, and the traction works. The shoe is versatile.
37	85	8.4	Foot Doctor Zach	2023-08-28	After breaking in the Li-Ning Wade 808 3 Ultra, I felt bouncier and tuned for getting up in the air. The traction takes some warming, and the support is impressive.
44	86	8.6	TommyLiu	2023-07-11	The Jordan Luka 2 takes a step in the right direction. The traction is fantastic, and the lockdown is secure and impressive.
39	86	8.5	Evan Miranda [weartesters.com]	2023-07-19	The Jordan Luka 2 has a reactive and responsive setup better suited for shiftier guards. The traction grips well, and the cushioning caters to lighter players.
7	86	8.4	Nelson Chan @Hoop and Life	2023-07-22	The Jordan Luka 2 feels like a standard hoop shoe. The changes to the shoe are catered toward bigger guards. The support and lockdown are sturdy, but the shoe is also heavier.
36	86	8.4	Snkr Tech Talk	2023-08-30	The Jordan Luka 2 has outstanding midfoot and lateral support and containment. It's a solid shoe for guards and wings.
37	86	8.2	Foot Doctor Zach	2023-07-11	The Jordan Luka 2s are at their best when shifting weight onto one foot, particularly for stepbacks and cuts. The support and lockdown are the best features.
41	86	8.2	Allen Sison [weartesters.com]	2023-08-23	The Jordan Luka 2's best feature is the lockdown. The traction performs in cleaner conditions, and the cushioning is stable.
33	86	8.0	Soled Out Reviews	2023-07-17	The Jordan Luka is a solid shoe that covers all of the bases. Most positions can utilize it. The cushioning is soft, and the materials feel comfortable.
43	86	8.0	The Sole Drop	2023-08-16	The Jordan Luka 2 beefs up the support and lockdown. The traction performs well on clean courts, and the cushioning feels responsive.
25	86	8.0	JAHRONMON [Youtube]	2023-08-26	The Jordan Luka 2 is a definite improvement from the Luka 1. It's a controlled ride with lots of stability and sturdiness. There's plenty of value at this price point.
39	87	9.0	Evan Miranda [weartesters.com]	2023-08-04	The Puma All Pro Nitro is a different shoe but a worthy follow-up to the original. The shoe has excellent traction, balanced, plush cushioning, and solid support.
41	87	8.6	Allen Sison [weartesters.com]	2023-07-26	The Puma All Pro Nitro is one of the best shoes available. It's versatile, with phenomenal traction and improved cushioning.
43	87	8.6	The Sole Drop	2023-08-27	I love playing in the Puma All Pro Nitro because of how responsive and fast it feels. It fits me well, and I felt supportive, too.
44	87	8.4	TommyLiu	2023-07-11	Puma finally has a lightweight basketball shoe. The All-Pro Nitro is Puma's best release of the year. The traction is impressive, and the cushioning is comfortable.
29	87	8.4	MARKCHES	2023-07-27	The Puma All Pro Nitro is a dependable sneaker. The bouncy foam and reliable traction make it a solid performer.
37	87	8.4	Foot Doctor Zach	2023-12-18	The Puma All Pro Nitro goes north and south incredibly well. The lockdown is impressive but beware of wiping the outsole to remove dust.
36	87	8.3	Snkr Tech Talk	2023-07-26	The Puma All-Pro Nitro is a shoe I plan to keep in my bag. The traction and cushion setup is tried and true. This is one of the best budget-friendly options.
43	88	8.6	The Sole Drop	2023-08-24	The Anta Shockwave 5 is a super responsive shoe. I enjoy playing in it. The traction is outstanding, and the cushioning is low to the ground with tons of court feel.
39	88	8.5	Evan Miranda [weartesters.com]	2023-08-18	The Anta Shock Wave 5 feels like a shoe meant for Kyrie Irving. It feels agile, low-profile, and reactive.
37	88	8.5	Foot Doctor Zach	2023-09-07	I enjoyed the Anta Shockwave 5 more than other Kyrie models. The performance is better because of the build quality, the materials, and the cushioning.
44	88	8.2	TommyLiu	2023-08-18	The Anta Shock Wave 5 has impressive traction, underfoot cushioning, and lockdown. Beware of the inconsistent materials, though.
41	88	8.2	Allen Sison [weartesters.com]	2023-11-30	The Anta Shockwave 5 is an impressive performer. The traction performs well, and the cushioning is balanced. My only concern is the weight.
29	88	8.0	MARKCHES	2023-08-18	The Anta Shock Wave 5 has grippy traction and a responsive cushioning setup. The containment is also solid but beware of the slim fit.
44	89	8.2	TommyLiu	2023-05-09	The Nike Cosmic Unity 3 performed better than expected. It's a bulky but sturdy shoe and is well-suited for outdoor play.
37	89	8.2	Foot Doctor Zach	2023-05-09	The Nike Cosmic Unity 3 is a sturdy and contained shoe. The build and materials help improve the support and lockdown quite a bit.
33	89	8.0	Soled Out Reviews	2023-05-04	The Nike Cosmic Unity 3 is a step down from the 2. The cushioning took a step back, and the traction was inconsistent. It is durable and sturdy, though.
43	89	8.0	The Sole Drop	2023-05-23	The Nike Cosmic Unity 3 is a decent shoe, but it feels like a downgrade from its predecessors. The cushioning is responsive but stiff, and the shoe is somewhat heavy.
29	89	7.8	MARKCHES	2023-08-25	The Nike Cosmic Unity 3 caters to outdoor play. The traction is durable, and the materials are comfortable. The cushioning isn't as bouncy as in past seasons, but it is responsive.
37	90	8.8	Foot Doctor Zach	2023-05-23	The Li-Ning Wade Fission 8 is one of the fastest shoes. It has an impressive cushioning setup that offers plenty of energy return. The traction is also solid.
39	90	8.5	Evan Miranda [weartesters.com]	2023-07-06	The Li-Ning Wade Fission 8 is a solid performer with a strong traction and cushioning combo. It's an excellent pick for outdoors. Just make sure to get the proper fit.
44	90	8.4	TommyLiu	2023-05-23	Li-Ning's Wade Fission 8 is light enough for faster players and has enough bounce for high jumpers. The biggest highlight is the traction.
32	90	8.4	ShadeSnSoleS [Youtube]	2023-09-23	I love the Li-Ning Wade Fission 8. I have no problem recommending this shoe. The materials, traction, and cushioning are all on the level of a signature shoe.
29	90	8.2	MARKCHES	2023-05-23	The Li-Ning Wade Fission 8 has outstanding performance. I recommend the shoe for lighter, quicker players because the cushioning is low and responsive.
43	90	7.8	The Sole Drop	2023-06-16	I had some issues with the Li-Ning Wade Fission 8. The impact protection hurt me, and the traction slipped a bit. Otherwise, the shoe has solid features.
39	91	9.0	Evan Miranda [weartesters.com]	2023-07-06	The Puma Stewie 2 is one of the year's best basketball shoes. It has excellent traction and a smooth cushioning ride.
33	91	8.4	Soled Out Reviews	2023-06-07	Puma knocked it out of the park with the Stewie 2. I recommend the shoe to everyone. The traction and cushioning are phenomenal, and the materials are light.
37	91	8.4	Foot Doctor Zach	2023-09-27	The Puma Stewie 2 is a balanced, versatile shoe. It's incredibly accommodating indoors and is best suited for a ground game.
44	91	8.0	TommyLiu	2023-06-07	The Puma Stewie 2 feels and performs like the MB.02. It's a comfortable and consistent performer but nothing special stands out.
43	91	7.8	The Sole Drop	2023-06-16	The Puma Stewie 2 has responsive cushioning and decent traction. It feels quick and streamlined while playing. I like the way it performs.
37	92	9.2	Foot Doctor Zach	2023-10-10	The playability feels similar in the Wade All City 11 V2, but the material durability and stability feel improved. The traction and cushioning remain top-notch.
41	92	9.0	Allen Sison [weartesters.com]	2023-10-28	The Li-Ning Wade All City 11 V2 blends all its features to provide excellent performance. The traction is outstanding indoors and outdoors, while the cushioning is bouncy.
29	92	8.8	MARKCHES	2023-10-19	The Li-Ning Wade All City 11 V2 is still an impressive performer. The materials and stability feel improved, while the cushioning and traction are still solid.
44	92	8.6	TommyLiu	2023-10-10	The Li-Ning Wade All City 11 V2 does a solid job addressing issues from the previous model. The performance feels better, but the sizing becomes more snug.
39	92	8.5	Evan Miranda [weartesters.com]	2023-10-22	The Li-Ning Wade All City 11 V2 feels almost identical to the original. The updated upper materials provide additional lockdown, but the shoe is still versatile and suited for multiple play styles.
43	93	8.2	The Sole Drop	2023-04-13	I felt amazing playing in the Jordan Tatum 1 on clean courts. The bounce in the forefoot felt great, the materials are light, and the traction works well. Just be careful on dusty courts.
33	93	8.2	Soled Out Reviews	2023-04-20	The Jordan Tatum 1 has bouncy cushioning and reliable traction. The torsional support can be better, though.
29	93	8.2	MARKCHES	2023-04-23	I'm enjoying playing in the Jordan Tatum 1. The cushioning is low but bouncy. I didn't have issues with the traction, and the materials were comfortable.
6	295	7.5	The Sole Brothers	2018-08-08	We loved the cushioning! Unfortunately, the traction is lackluster and the fit works only for players with very wide feet.
7	93	8.0	Nelson Chan @Hoop and Life	2023-04-20	The Jordan Tatum 1 is a solid first performance shoe for Jayson Tatum. It's different and feels odd underfoot. The cushioning is the best part, but the traction disappointed me.
44	93	8.0	TommyLiu	2023-04-24	The Jordan Tatum 1 is one of the lightest basketball shoes available. I enjoyed playing in the shoe because of the cushioning and material setup. I had no traction issues, but dust picks up quickly.
46	93	8.0	Jeremy Jones	2023-08-18	There are parts to like about the Jordan Tatum 1, but there's room for improvement. The material choice is solid, but the traction design is weird.
41	93	7.8	Allen Sison [weartesters.com]	2023-05-03	There are slight concerns about the Jordan Tatum 1, but if you value lightweight shoes, you'll appreciate these. The cushioning is comfortable, and after breaking it in, the traction is decent.
37	93	7.7	Foot Doctor Zach	2023-08-24	The Jordan Tatum 1 is a solid option for players constantly on the balls of their feet. I like how lightweight the shoe is. The forefoot traction grips the court well, too.
45	93	7.6	KicksContestWorld	2023-08-25	The Jordan Tatum 1 is light and comfortable. It has solid traction and cushioning. The shoe lacks stability and torsional support, though.
36	93	7.2	Snkr Tech Talk	2023-05-27	Jayson Tatum's debut shoe has a striking appearance. I found the foam traction, support, and fit lacking, but I enjoyed the Zoom Air and the shoe's materials.
43	94	8.6	The Sole Drop	2023-04-13	The Li-Ning Wade 808 2 Ultra V2 is a fantastic performer. It reminds me a lot of the Kobe 9. The traction is outstanding, and the added heel lockdown is a welcome improvement.
42	94	8.6	Jackson Bayer [weartesters.com]	2023-04-16	The Li-Ning Wade 808 2 Ultra V2 improves on the regular 808 2 with improved cushioning and a revamped ankle collar. The fit and support feel better too.
46	94	8.5	Jeremy Jones	2023-08-18	The Li-Ning Wade 808 2 Ultra V2 is a solid performer. The fit and lockdown are the best features. I wish the traction performed up to my high expectations.
29	94	8.4	MARKCHES	2023-09-03	The Li-Ning Wade 808 2 Ultra V2 feels like an upgrade. The heel and ankle support are where the shoe shines. It has dependable traction and cushioning, too.
44	95	8.2	TommyLiu	2023-05-27	I enjoyed playing in the Adidas BYW Select. The cushioning feels awesome, and the traction is solid.
43	95	8.0	The Sole Drop	2023-04-13	The Adidas BYW Select is a responsive and comfortable basketball shoe. The cushioning is solid, and the traction performs as intended.
37	96	8.8	Foot Doctor Zach	2023-08-18	The Anta GH 4 is best for powerful playstyles because of the incredible lockdown, stability, and bouncy cushioning.
43	96	8.8	The Sole Drop	2023-08-18	The Anta GH 4 is an impressive performer, especially for the price. The support is outstanding, and the cushioning is low to the ground while feeling responsive.
33	96	8.6	Soled Out Reviews	2023-09-04	I loved playing in the Anta GH 4. I recommend this shoe to anyone. I especially like the heel impact protection and the lockdown from the lacing system.
29	96	8.2	MARKCHES	2023-08-18	The Anta GH 4 improves on the GH 3 a lot. The support and lockdown are excellent because of the lacing system, and the traction is reliable.
37	97	8.4	Foot Doctor Zach	2023-03-07	The Jordan Why Not Zer0.6 is fun to play in. The shoe is fluid from step to step, and they pick up speed well with good traction and cushioning.
29	97	8.2	MARKCHES	2023-03-21	The Jordan Why Not Zer0.6 is a responsive, well-fitting performance shoe. The traction is good, and I felt secure.
44	97	8.0	TommyLiu	2023-05-01	The Jordan Why Not .6 is an easy ride. It didn't take long to get used to playing in this shoe. It's lightweight, comfortable, and reliable.
36	97	7.6	Snkr Tech Talk	2023-05-04	Players looking for decent traction, solid forefoot cushioning, and contained support will enjoy the Jordan Why Not Zero.6. It's also lightweight and breathable.
43	97	7.4	The Sole Drop	2023-04-13	The Jordan Why Not .6 is somewhat inconsistent. The traction performed well at times but not great at others. The cushioning is alright, but it's not responsive.
46	98	9.0	Jeremy Jones	2023-08-18	I enjoyed playing in the Nike Ja 1. The traction sticks, the materials work, and the cushioning is comfortable.
43	98	8.8	The Sole Drop	2023-05-04	The Nike Ja 1 is a quick and responsive shoe. It's one of my favourite shoes over the past year. The traction, fit, and support are all excellent.
36	98	8.3	Snkr Tech Talk	2023-05-02	The Nike Ja 1 is a solid debut shoe for Ja Morant. The best features are traction, fit, and support. The materials could be better, but I enjoyed playing in the shoe.
33	98	8.2	Soled Out Reviews	2023-04-27	The Nike Ja 1 is an impressive initial shoe for Ja Morant. The traction works for me, and the cushioning is a pleasant surprise. I recommend this pair to any player.
29	98	8.2	MARKCHES	2023-05-14	The Nike Ja 1 is a pleasant surprise. The traction is impressive, the cushioning is decent, and the support provides everything I need.
45	98	8.2	KicksContestWorld	2023-06-25	The Nike Ja 1 is an impressive debut shoe. It feels similar to the Kyrie Low 5. I recommend these for both guard positions because of the cushioning and traction setup.
7	98	8.0	Nelson Chan @Hoop and Life	2023-04-26	The Nike Ja 1 disappointed me because of my high expectations. The traction is inconsistent, and the comfort and cushioning are lacking. The shoe is playable, though.
44	98	8.0	TommyLiu	2023-05-11	The Nike Ja 1 is a solid performer. Not many features perform poorly. The traction excels, but the cushioning could be more comfortable.
41	98	8.0	Allen Sison [weartesters.com]	2023-05-31	The Nike Ja 1 is straightforward and reliable. The performance surprised me, especially the cushioning. The traction is also serviceable on multiple surfaces.
24	98	8.0	RicheeKim	2024-01-23	The Nike Ja 1 is a solid performer outside of the narrow fit. The traction feels very good, and the cushioning caters to shifty players.
37	98	7.8	Foot Doctor Zach	2023-03-07	The Nike Ja 1 plays bouncier than expected. The cushioning profile looks flat and offers explosiveness. The traction can be iffy indoors, but it still performs decently.
32	99	8.6	ShadeSnSoleS [Youtube]	2023-03-12	I love playing in the New Balance Kawhi 3. The upper is supportive, the traction performs on clean courts, the fit is perfect, and the cushioning is versatile.
43	99	8.2	The Sole Drop	2023-03-07	The New Balance Kawhi 3 is a good performer but an overpriced shoe. The cushioning is responsive and low to the ground, and the traction plays well on clean courts.
33	99	8.0	Soled Out Reviews	2023-03-07	The New Balance Kawhi 3 has solid basketball features, but I advise wearing thicker socks because of the heel portion of the shoe. Impact protection and traction performed well.
42	99	8.0	Jackson Bayer [weartesters.com]	2023-05-10	The New Balance Kawhi 3 is an optimal shoe for playing outdoors and for players who enjoy support. The FuelCell cushioning feels stiff, but the other features make it worthwhile.
37	100	9.0	Foot Doctor Zach	2023-04-11	The Li-Ning Way of Wade All City 11 is a fast shoe. They have a lot of pop and feel springy. All positions can benefit from this setup.
43	100	8.8	The Sole Drop	2023-03-21	The Li-Ning Way of Wade All City 11 is a quick and responsive shoe. The traction is elite, and the cushioning does everything.
29	100	8.6	MARKCHES	2023-03-21	The Way of Wade All City 11 is a solid performance option. The traction and cushioning feel good, and the materials are more breathable this year.
33	100	8.4	Soled Out Reviews	2023-04-13	I have no problems recommending the Way of Wade All City 11 as a performance shoe, especially on clean courts. It plays and feels similar to a Kobe shoe. Just be careful on dusty courts.
44	100	8.2	TommyLiu	2023-04-13	Li-Ning's Way of Wade All City 11 is another strong performance shoe from the brand. The smooth transition with each step is the best part. The traction takes some breaking in, though.
36	100	8.1	Snkr Tech Talk	2023-05-17	I enjoyed playing in the Li-Ning Way of Wade All City 11. My favourite features are the cushion, fit, and support. The traction was a letdown because of the dust performance.
44	101	7.8	TommyLiu	2023-04-13	The Under Armour Spawn 5 is a low-profile shoe best suited for guards. The traction is solid, and the shoe feels smooth to play in.
43	101	7.4	The Sole Drop	2023-04-13	The Under Armour Spawn 5 would be a banger if the traction were better. It's a responsive shoe with comfortable cushioning and support.
39	102	9.5	Evan Miranda [weartesters.com]	2023-05-02	The Wade Son of Flash is another top performer in the Li-Ning lineup. It excels outdoors. The traction is excellent, the cushioning is well-balanced, and there's more than enough support and containment.
37	102	8.4	Foot Doctor Zach	2023-04-29	The Son of Flash plays extremely fast. The first step of the shoe is explosive because of the foam and shank setup, and the herringbone traction pattern helps with stops.
44	102	8.3	TommyLiu	2023-04-13	I consider the Li-Ning Wade Son of Flash an amazing shoe for the price. The traction is grippy, and the cushioning is good enough for most players. There are also no issues with the support.
29	102	8.2	MARKCHES	2023-04-13	The Li-Ning Son of Flash is ideal for outdoor use because of the thick rubber outsole. The cushioning is responsive but not the best for impact protection. The shoe is a solid budget option.
43	102	8.0	The Sole Drop	2023-04-13	The Li-Ning Wade Son of Flash has top-tier traction and low-to-the-ground cushioning. I felt quick and light on my feet when playing in this shoe.
33	103	8.6	Soled Out Reviews	2023-05-04	The Under Armour Curry 2 Low FloTro is a dope sneaker. Flow foam offers outstanding traction, but there isn't much impact protection.
44	103	8.2	TommyLiu	2023-05-04	Under Armour's FloTro line continues to deliver with the Curry 2 Low FloTro. It performs as expected, with amazing traction and court feel. The transition is smooth too.
37	104	8.2	Foot Doctor Zach	2023-05-04	The Adidas Trae Unlimited offers a superior ground-based game. It's supportive and stable while feeling low to the ground. The traction caters to shifty players too.
43	104	8.0	The Sole Drop	2023-05-23	For the price, the Adidas Trae Unlimited is a comfortable shoe with no weaknesses. It doesn't excel in any specific area, but the performance is well-rounded.
36	105	9.4	Snkr Tech Talk	2023-03-21	You can't go wrong with the Nike LeBron NXXT Gen at this price point. The traction is top-tier, the Zoom units feel fantastic, and the support is outstanding.
42	105	9.0	Jackson Bayer [weartesters.com]	2023-04-16	The Nike LeBron NXXT Gen is an awesome basketball shoe. It's quick, responsive, and stable, and the fit is dead on.
43	105	8.8	The Sole Drop	2023-04-13	The Nike LeBron NXXT Gen feels light, responsive, and quick. The traction performance is fantastic, and the cushioning does everything well.
33	105	8.4	Soled Out Reviews	2023-03-12	I like the Nike LeBron NXXT Gen better than the LeBron 20. I recommend the shoe for all players. It performed better than expected because of the comfortable materials and tacky traction.
44	105	8.4	TommyLiu	2023-04-13	The Nike LeBron NXXT Gen is an A-tier shoe. The cushioning isn't as bouncy but stable, and the traction provides good stopping power.
37	105	8.2	Foot Doctor Zach	2023-02-08	The Nike LeBron NXXT Gen is a solid option for forwards who don't need maximalist cushioning setups. The cushioning is comfortable, and the materials play well.
39	106	9.0	Evan Miranda [weartesters.com]	2023-03-12	I love the hybrid feel of the Adidas Harden Vol 7. They are heavy but feel light during play, the heel collar offers flexible movement while the shoe remains supportive, and the cushioning is firm but still bouncy.
7	106	9.0	Nelson Chan @Hoop and Life	2023-03-21	Almost every aspect of the Adidas Harden Vol. 7 performs well. Nimble bigs and versatile guards will enjoy the traction and cushioning setup.
46	106	9.0	Jeremy Jones	2023-08-18	I can comfortably say the Adidas Harden Vol. 7 is one of the best hoop shoes this year. The traction, cushion, and support have you covered.
37	106	8.9	Foot Doctor Zach	2023-03-21	The Adidas Harden Volume 7 provides lots of performance for players with powerful and heavy movements. The containment in the upper enables players with excellent footwork.
29	106	8.6	MARKCHES	2023-04-13	The Adidas Harden Vol. 7 is an upgrade from the Harden Vol. 6. It's one of the best-fitting shoes, the cushioning feels better, and the traction is dependable.
44	106	8.6	TommyLiu	2023-04-13	The Adidas Harden Vol. 7 is a stylish performance shoe. The traction and cushioning are top-tier, but the materials are heavy and not breathable despite being comfortable.
36	106	8.5	Snkr Tech Talk	2023-04-29	The Adidas Harden Vol. 7 is one of Adidas' best basketball shoes. The cushioning and support are superb, and the traction pattern is aggressive and reliable.
33	106	8.4	Soled Out Reviews	2023-02-16	The Adidas Harden Volume 7 feels great on your feet. It's a versatile shoe I can recommend to every type of player. The cushioning accommodates many different play styles, and the traction performs.
43	106	8.4	The Sole Drop	2023-02-16	The Adidas Harden Volume 7 is one of my favourite performance shoes. I feel quick playing in these shoes. They're supportive, the traction works, and the cushioning is versatile.
32	107	8.4	ShadeSnSoleS [Youtube]	2023-01-10	You cannot get more performance for a $99 basketball shoe. The Li-Ning Ice Blood V2 is a fantastic performance model. The traction plays well on clean courts, you can take the shoe outdoors, and the cushioning feels outstanding.
43	107	8.4	The Sole Drop	2023-01-10	I enjoyed playing in the Li-Ning Ice Blood V2. It has stop-on-a-dime type traction. The containment is locked down, and the shoe is responsive.
29	107	8.0	MARKCHES	2023-01-10	The Li-Ning Ice Blood V2 is a solid budget sneaker for performance. The support is solid, the materials are soft, and the cushioning feels comfortable.
37	107	7.6	Foot Doctor Zach	2023-03-21	The Li-Ning Ice Blood V2 is best suited for guards who don't rely on explosive movements. The cushioning is comfortable, the fit is accommodating, and the traction is durable.
43	108	9.0	The Sole Drop	2023-02-08	The Jordan 37 Low is a responsive performance shoe with grippy traction and a bouncy cushion. The bounciness can be excessive, but the overall performance is solid.
33	108	8.4	Soled Out Reviews	2023-01-22	The Jordan 37 is a bouncy and explosive shoe. The Zoom units in the cushioning feel great, and the traction performs well on clean courts.
44	108	8.4	TommyLiu	2023-04-13	The Jordan 37 Low is a better performer than the regular Jordan 37. The upgraded materials provide improved support and comfort, while the traction and cushioning are still impressive.
41	108	8.2	Allen Sison [weartesters.com]	2023-06-25	The Jordan 37 Low addresses a lot of problems the regular 37 had. The support and fit feel much improved, while the traction and cushioning remain the same.
37	108	8.0	Foot Doctor Zach	2023-01-22	The Jordan 37 is an excellent option for players who play on their forefoot often. The traction holds up, and the forefoot cushioning is explosive.
45	108	8.0	KicksContestWorld	2023-06-16	The Air Jordan 37 Low feels like a downgrade. I'm a bit disappointed. Lateral containment is an issue, but cushioning is still impressive.
37	109	8.6	Foot Doctor Zach	2023-07-11	The Li-Ning JB1 is a fast and stable shoe. The shoe is also incredibly bouncy. I love the construction as well. There's not much to complain about.
29	109	8.4	MARKCHES	2023-07-11	The Li-Ning JB1 is an expensive shoe but a solid performer. The cushioning is springy, and I experienced no issues with the traction.
43	109	8.2	The Sole Drop	2023-07-11	I felt responsive and quick playing in the Li-Ning JB1. The upper is minimal, the cushion is comfortable, and the traction is decent.
44	109	8.2	TommyLiu	2023-07-11	The Li-Ning JB1 is a solid shoe but is overpriced at retail. The cushioning is a top feature, but shifty players might want to double-check with the lateral containment.
45	109	7.8	KicksContestWorld	2023-07-11	The Li-Ning Jimmy Butler 1 is only a decent performer on clean hardwood courts. The materials are the main disappointment, but the cushioning feels good.
37	110	8.4	Foot Doctor Zach	2022-12-22	The Jordan One Take 4 has some of the best gripping shoes for indoor courts, but the cushioning doesn't offer much impact protection. It's a solid pick for a budget model.
39	110	7.7	Evan Miranda [weartesters.com]	2023-04-16	The Jordan One Take 4 is a good but not a great performer. There are better options at this price point, but it's a solid shoe with reactive cushioning and traction for outdoor play.
42	111	9.0	Jackson Bayer [weartesters.com]	2023-04-16	The New Balance TWO WXY V3 is one of my favourite basketball shoes of 2022. The neutral cushioning is the only downside. The fit, traction, materials, and support are phenomenal.
2	111	9.0	Stanley T. [weartesters.com]	2023-05-02	The New Balance TWO WXY V3 has everything needed to be a top basketball shoe. I have minor gripes with cushioning and support, but the shoe is still elite.
11	111	9.0	Duke4005 [weartesters.com]	2023-05-02	The New Balance TWO WXY V3 is easy to wear, look at, and play in. It has all the necessary features of a great basketball shoe. It does it all and at every level.
44	111	8.6	TommyLiu	2023-04-23	The New Balance TWO WXY V3 feels like an S-tier performance shoe. The traction and cushioning feel great, and there are no glaring weaknesses.
36	111	8.6	Snkr Tech Talk	2023-05-01	The New Balance TWO WXY V3 is a shoe I plan to keep in my bag for the long term. It's a reliable setup because of the tacky traction, 1-to-1 fit, and impressive support.
37	111	8.6	Foot Doctor Zach	2023-07-19	The New Balance TWO WXY V3 is a lightweight and minimal shoe. The lockdown and containment are outstanding. It has minimalist but comfortable cushioning and effective traction too.
6	111	8.2	The Sole Brothers	2022-11-28	The New Balance TWO WXY V3 is a light, responsive shoe with great traction and low-to-the-ground cushioning. Overall, I enjoyed playing in this shoe.
32	112	9.0	ShadeSnSoleS [Youtube]	2023-02-08	The Li-Ning Way of Wade All City 10 V2 is a fantastic shoe, especially for the price. The cushioning feels perfect, and the traction works. It's versatile - I recommend this for all positions.
29	112	8.8	MARKCHES	2022-12-12	The Li-Ning Way of Wade All City 10 V2 is a bang for your buck sneaker. It's versatile and dependable for all conditions. The cushioning is comfortable, the traction is reliable, and the support is on point.
6	112	8.6	The Sole Brothers	2022-12-12	The Li-Ning Way of Wade All City 10 V2 is a solid performer. I had a good time playing on clean courts because of the cushioning and support. Dust can be an issue for the traction, though.
33	112	8.6	Soled Out Reviews	2022-12-21	I enjoyed playing in the Li-Ning Way of Wade All City 10 V2. The shoe offers a bit of everything, from traction and cushioning to support and materials. There are no downsides.
37	112	8.4	Foot Doctor Zach	2022-12-12	The Li-Ning Way of Wade All City 10 V2 is my favourite performance shoe of the year. The support and stability are the best features of the shoe. The traction is dependable, and the cushioning is outstanding too.
39	113	8.5	Evan Miranda [weartesters.com]	2023-05-06	The Adidas Dame Certified is a decent basketball shoe. The traction and material setup are highlights, while the Bounce cushioning is adequate.
6	113	8.3	The Sole Brothers	2022-12-22	The Adidas Dame Certified has no features I hated. The traction is so damn good, the cushioning is responsive, and you're low to the ground the whole time.
37	113	8.0	Foot Doctor Zach	2023-01-26	The Adidas Dame Certified allows players to change directions well. It's a solid all-around shoe because of the traction but beware of the Bounce cushioning bottoming out.
42	113	7.8	Jackson Bayer [weartesters.com]	2023-04-16	I enjoyed the Adidas Dame Certified because of the traction and materials. My only concerns are heel lockdown because of the fit and the lack of bounciness in the cushioning.
43	114	8.2	The Sole Drop	2023-08-01	You feel quick when playing in the 361 DVD 1. The traction and cushioning are impressive, and the support and lockdown get the job done.
29	114	8.2	MARKCHES	2023-08-01	Spencer Dinwiddie's 361 DVD 1 is a must-try sneaker for the price. The traction is outstanding, and there's a lot of life in the cushioning.
37	114	8.0	Foot Doctor Zach	2023-08-01	The 361 DVD 1 is best for players who change directions and speed often. The traction caters to shifty styles, while the cushioning is light and bouncy.
44	114	8.0	TommyLiu	2023-08-01	The 361 DVD 1 is a solid shoe at its current price point. If the upper weren't stiff, it'd be an impressive performer. The traction and cushion are stand-out features.
29	115	8.4	MARKCHES	2023-08-01	The 361 AG 3 is one of the best supportive basketball shoes. The traction is fantastic, and the support and lockdown are impressive.
37	115	8.2	Foot Doctor Zach	2023-08-01	The 361 AG 3 is perfect for players with Aaron Gordon's play style. The shoe is stable and anchored with fantastic traction. It's best suited to keep you centered and moving in a straight line.
7	116	9.5	Nelson Chan @Hoop and Life	2022-11-11	If you're a fan of the Curry 8 and 9, you'll enjoy the Curry 10. The traction is phenomenal, the cushioning is solid, and the support and lockdown have no issues.
42	116	9.2	Jackson Bayer [weartesters.com]	2023-04-16	The Curry 10 is one of my favourite shoes of the year. The shoe feels like an extension of your foot. The traction is phenomenal, the fit is on point, and the shoe is supportive.
6	116	9.0	The Sole Brothers	2022-11-11	The Curry 10 has tremendous traction, responsive cushioning, and comfortable materials. I prefer the Curry 10 compared to the 8 and 9.
37	116	8.8	Foot Doctor Zach	2022-11-02	The Curry 10 has enough upgrades to offer an improved performance experience compared to the Curry 9. The cushioning has more spring, and the traction continues to be amazing.
33	116	8.8	Soled Out Reviews	2022-11-07	The Curry 10 feels similar to the Curry 8 and the 9, but there is a slight upgrade. The materials feel better while the traction remains the best available traction.
40	116	8.8	RunStretchTech	2022-11-20	The Curry 10 is one of the best basketball shoes available. The traction and cushioning are good for shifty players, and the support is not an issue.
36	116	8.8	Snkr Tech Talk	2023-02-08	The Curry 10 is one of the best performance basketball shoes. The traction and support are top-notch, and the materials feel good, too.
45	116	7.4	KicksContestWorld	2023-04-26	If you play on clean courts and have ankle braces, the Curry 10 is meant for you. I experienced slipping with dust, and the cushioning wasn't enough for my play style.
37	117	8.4	Foot Doctor Zach	2023-01-10	The Adidas D.O.N. Issue #4 is a well-built shoe for containment, lockdown, and traction. It's a comfortable shoe overall but beware of the foam bottoming out.
41	117	8.0	Allen Sison [weartesters.com]	2022-11-03	If you want stability, then Adidas D.O.N Issue #4 is for you. The shoe has all the support features a performance shoe needs, and the traction performs well on clean courts.
6	117	8.0	The Sole Brothers	2022-11-03	The Adidas D.O.N Issue #4 is a responsive shoe that performs best on clean courts. It's a pretty good performer, but it's a tad bulky for my liking.
45	117	7.0	KicksContestWorld	2023-04-16	I wouldn't recommend the Adidas D.O.N. Issue #4. At best, it's alright for shootarounds and practice. The traction is too inconsistent, and the cushioning is stiff.
37	118	8.4	Foot Doctor Zach	2022-11-12	The Adidas Trae Young 2 is a flexible shoe that's best for players who enjoy having more freedom of movement. It's a niche profile, but I enjoyed playing in the shoe.
45	118	8.2	KicksContestWorld	2023-04-13	The Adidas Trae Young 2 is not as good as the previous model, but it's still a solid performer. The materials are improved, and the cushioning performed better than expected.
6	118	8.0	The Sole Brothers	2022-11-23	The Adidas Trae Young 2 struggles with performance on dusty courts, but I enjoyed the cushioning and support features of the shoe.
33	118	7.6	Soled Out Reviews	2022-11-11	I did not enjoy the Adidas Trae Young 2 as much as I was hoping. The cushioning feels fantastic, but the traction and materials weren't up to par.
37	119	8.4	Foot Doctor Zach	2022-11-03	The Nike Air Deldon is one of the most creative shoes on the market. It allows you to move in different directions and offers a lot of range of motion for your footwork.
6	119	7.6	The Sole Brothers	2022-11-11	The Nike Air Deldon is a decent performance shoe, but I don't enjoy playing in it because of the poor traction. I enjoyed the cushioning and support, though.
33	119	7.0	Soled Out Reviews	2022-11-03	The Nike Air Deldon has a fantastic design, but the traction and cushioning were disappointing. I can't recommend this shoe for performance.
40	120	9.4	RunStretchTech	2022-11-07	I couldn't find anything wrong with the Puma MB.02. It's an excellent performance basketball shoe. The support and stability were solid, and the traction and cushion were reliable.
6	120	8.8	The Sole Brothers	2022-11-15	The Puma MB.02 is a quick, fast shoe with fantastic traction and adequate cushioning. The support also holds up well because of the materials.
29	120	8.4	MARKCHES	2022-11-23	Overall, the Puma MB.02 is an improvement in LaMelo's shoe line. It has improved traction and materials while the support and cushioning remain solid.
37	120	8.2	Foot Doctor Zach	2022-11-07	The Puma MB.02 is a solid shoe that's best for players who rely on impact protection to help with heavy footwork. The cushioning is stable and protective, and the traction grips well.
36	120	8.2	Snkr Tech Talk	2022-11-12	The Puma MB.02 is one of the best basketball shoes for support. It also has solid cushioning and reliable traction.
46	120	8.2	Jeremy Jones	2023-08-18	The Puma MB.02 has a lot of standard but proven features. It provides a lot of bang for your buck with soft cushioning and solid traction.
42	120	8.0	Jackson Bayer [weartesters.com]	2023-04-16	Playing in the Puma MB.02 is a mixed bag for me. I like the traction and fit, but I don't like the stiff midsole.
32	120	7.6	ShadeSnSoleS [Youtube]	2022-12-04	I was not impressed with the Puma MB.02 compared to the MB.01. The traction is solid, but most other features were better on the previous model.
45	120	7.2	KicksContestWorld	2023-07-07	The Puma MB.02 takes a step back compared to the previous model. The traction is solid, but the cushioning and support are lacking.
7	121	8.5	Nelson Chan @Hoop and Life	2022-09-22	The Nike Zoom Freak 4 offers a lot of performance for a lower price. The materials aren't premium, and the traction needed a break-in period, but the shoe is a solid all-around performer.
34	121	8.4	LZ Hoops	2022-10-25	The Nike Zoom Freak 4 has solid traction and lockdown but is offset by average cushioning.
37	121	8.2	Foot Doctor Zach	2022-09-10	The Nike Zoom Freak 4 is an upgrade from the Zoom Freak 3 in terms of side-to-side stability. It also offers tremendous forefoot bounce because of the Zoom Air units. People who are prone to spraining their ankles might want to look elsewhere.
6	121	8.2	The Sole Brothers	2022-09-15	The Nike Zoom Freak 4 is a lightweight shoe offering solid support, bouncy cushioning, and reliable traction. I enjoyed playing in this shoe.
40	121	8.2	RunStretchTech	2022-10-10	The Nike Zoom Freak 4 is a solid shoe, but there are plenty of other options on the market at this price point. The traction performs well, and the shoe is breathable.
32	121	8.0	ShadeSnSoleS [Youtube]	2022-10-10	The Nike Zoom Freak 4 is a shoe for players that enjoy playing fast. It offers a propelling cushion, and the traction is solid, but you are high off the ground.
6	122	8.8	The Sole Brothers	2022-10-10	The Air Jordan 37 made me feel explosive, but the cushioning can be too much for people who prefer responsiveness. The traction performed well after a few runs, and the materials feel breathable.
36	122	8.7	Snkr Tech Talk	2022-09-22	In my opinion, Jordan Brand has a hit with the Air Jordan 37. The cushioning, materials, fit and support are all fantastic.
37	122	8.6	Foot Doctor Zach	2022-09-04	The Jordan 37 is built for indoor performance and shines on hardwood courts. I had no issues with the traction, and the materials provided a solid lockdown.
45	122	8.4	KicksContestWorld	2023-07-07	The Jordan 37 is a mixed bag in terms of performance. The cushioning and fit are perfect. However, the traction doesn't hold up with dust, and the stability is not good.
33	122	8.2	Soled Out Reviews	2022-09-26	I can recommend the Jordan 37 for most players. The only issue for me is the lack of heel cushioning. The forefoot cushion, traction, materials and support all performed well.
29	122	8.2	MARKCHES	2022-12-04	I recommend the Jordan 37 to powerful guards who get a lot of performance out of the bouncy cushion. The materials and traction are both solid. The only downside of this shoe is the price.
1	122	8.0	NightWing2303 [weartesters.com]	2022-09-04	The Jordan 37 steps away from features that performed excellently on the Jordan 36, but it still looks like it will be a solid performer.
41	122	7.6	Allen Sison [weartesters.com]	2023-04-16	The Jordan 37 could be an impressive performer with improved support. The traction is reliable, and I enjoyed the cushioning, though.
36	123	9.7	Snkr Tech Talk	2022-11-02	The Nike LeBron 20 is the best basketball shoe on the market. The traction and support are the best Nike's made in a long time, and the cushioning is an almost perfect combination.
7	123	9.5	Nelson Chan @Hoop and Life	2022-10-25	The Nike LeBron 20 is the best shoe in his signature lineup. The cushioning is versatile, and the traction is one of the best setups on the market.
11	123	9.0	Duke4005 [weartesters.com]	2023-05-02	The Nike LeBron 20 could be the best Nike basketball shoe of the year. The shoe has it all. There's cushioning, speed, comfort and stability.
46	123	9.0	Jeremy Jones	2023-08-18	I like the Nike LeBron 20 a lot. It feels versatile with a complete cushioning setup, solid traction, and a comfortable upper.
6	123	8.8	The Sole Brothers	2022-09-28	The Nike LeBron 20 delivers phenomenal traction and an enjoyable, responsive cushioning setup. It feels great playing in this shoe.
37	123	8.6	Foot Doctor Zach	2022-09-22	The Nike LeBron 20 is the best low-top basketball shoe I've tried in 2022. The shoe is quick, shifty, and contained but not the bounciest.
42	123	8.6	Jackson Bayer [weartesters.com]	2022-10-10	Overall, I love the Nike LeBron 20. I don't have any complaints because the shoe offers something for everyone. It has good traction, cushion, and stability.
40	123	8.6	RunStretchTech	2022-11-15	The Nike LeBron 20 is an overall solid shoe I enjoyed playing in. It has solid support and traction, and the materials feel comfortable. My only gripe is the high price tag.
45	123	8.6	KicksContestWorld	2023-07-07	The Nike LeBron 20 is evolving and improving. The traction is outstanding, and the fit and materials are premium. The heel lockdown was my only issue with the shoe.
29	123	8.4	MARKCHES	2022-10-20	The Nike LeBron 20 provides a strong traction and cushion setup that caters to a quick play style. The shoe feels comfortable and offers something for everybody.
32	123	8.0	ShadeSnSoleS [Youtube]	2022-12-12	The Nike LeBron 20 has all the tech needed to be an excellent performance basketball shoe but struggles to put it together. The traction was inconsistent, and the court feel can be better.
32	124	9.0	ShadeSnSoleS [Youtube]	2022-11-20	The Li-Ning Way of Wade 808 2 is a shoe-of-the-year contender. The traction is outstanding, the cushion is solid, and the support feels perfect.
6	124	8.8	The Sole Brothers	2022-10-10	The Wade 808 2 is a top two or three performer on the market. The traction is phenomenal, the materials are supportive, and I love the drop-in midsole.
29	124	8.6	MARKCHES	2022-09-20	The Way of Wade 808 2 feels like a Kobe 8 reincarnated. I enjoy the drop-in midsole, and the traction feels sticky.
37	124	8.6	Foot Doctor Zach	2022-09-30	The Way of Wade 808 2 is a speedy shoe that's low to the ground, and the traction offers a lot of grip. More advanced footwork players will benefit the most from this shoe.
45	124	8.4	KicksContestWorld	2023-07-08	The Li-Ning Wade 808 2 is a great shoe for light, quick, and shifty players. The cushioning and traction are impressive. The only issue to consider is comfort for wide-footers.
42	124	8.2	Jackson Bayer [weartesters.com]	2023-05-02	The Li-Ning Wade 808 2 feels reminiscent of the Kobe 8 and 11. The traction is top-notch, and the drop-in midsole feels like Lunarlon.
45	125	8.6	KicksContestWorld	2023-08-01	The Anta KT 8 is the best Klay Thompson basketball shoe. It has fantastic cushioning and materials, while traction and support are no slouch.
29	125	8.6	MARKCHES	2023-08-12	The Anta KT 8 features high-quality support and lockdown, balanced cushioning, and grippy traction. It caters well to players looking for stability.
37	125	8.4	Foot Doctor Zach	2023-08-01	The Anta KT 8 is a versatile performance model. The shoe offers features that cover all different playstyles and positions. The traction, cushioning, and support are all consistent and solid.
6	125	8.4	The Sole Brothers	2023-08-01	I feel quick playing in the Anta KT 8. The traction is solid, and the cushioning is responsive and balanced. It's an impressive performer.
44	125	8.2	TommyLiu	2023-08-01	The Anta KT 8 is a solid shoe. Traction and cushioning are standout features, but the collar feels like a gimmick.
36	126	9.0	Snkr Tech Talk	2022-08-31	The Nike Air Zoom G.T. Cut 2 is a fantastic performing basketball shoe. The traction and cushioning are top-tier, and I enjoyed the materials and fit on this shoe more than the last one.
7	126	9.0	Nelson Chan @Hoop and Life	2022-10-02	The Nike Air Zoom G.T. Cut 2 offers some of the best cushioning on the market. It also has strong traction and comfortable materials. It's a solid shoe for quick, shifty guards.
29	126	8.6	MARKCHES	2022-08-21	The Nike G.T Cut 2 is perfect for players who perform a lot of twists and turns while driving to the rim. The cushioning is an improvement, but the traction takes a minor step back.
45	126	8.6	KicksContestWorld	2023-04-16	The Nike Air Zoom G.T. Cut 2 is an outstanding performer. It's low-cut and lightweight and has perfect traction and cushioning.
33	126	8.5	Soled Out Reviews	2022-10-02	The Nike Air Zoom G.T. Cut 2 is an excellent performance basketball shoe. It's one of my favourite shoes to play in because of the cushioning and traction.
2	126	8.5	Stanley T. [weartesters.com]	2023-05-02	If the Nike Air Zoom G.T. Cut 2 had a more secure tongue, it'd be a top 2 or 3 performer. The traction and cushioning are outstanding. Its fit didn't work for me, though.
37	126	8.4	Foot Doctor Zach	2022-08-21	The Nike G.T. Cut 2 is a solid shoe for advanced shifty players who will benefit from the flexibility and versatility this shoe offers. It might not be the best shoe for players relying on explosiveness and stability.
6	126	8.4	The Sole Brothers	2022-09-17	The Nike Air Zoom G.T. Cut 2 is a solid performer in all aspects. The traction isn't top-tier, and the cushioning is high off the ground, so the shoe isn't elite. It's still a fun shoe to play in, though.
32	126	8.3	ShadeSnSoleS [Youtube]	2022-10-02	The Nike Air Zoom G.T Cut 2 improves on some aspects but takes a step back for others. If you prefer cushioning over court feel in your shoe, this shoe is better than the previous model.
41	126	8.2	Allen Sison [weartesters.com]	2023-04-16	The Nike Air Zoom G.T. Cut 2 is a solid performer. The traction is incredibly reliable, and the cushioning is comfortable. Just beware of the fit around the tongue.
6	127	9.2	The Sole Brothers	2022-08-30	The Nike Cosmic Unity is a top-tier performer. I put this shoe alongside the KD 15 as Nike's best for the year.
33	127	9.0	Soled Out Reviews	2022-08-21	It's going to be tough finding a shoe better than the Nike Cosmic Unity 2 this year. It's the best shoe I've played in all year. The traction and cushion are top-tier.
24	127	8.8	RicheeKim	2022-08-28	The Nike Cosmic Unity 2 is worth the price upgrade for this year's model. The traction is insane, the cushion is bouncy, and the support is there.
29	127	8.6	MARKCHES	2022-08-24	The Nike Cosmic Unity 2 is a steady sneaker. The cushion and support are solid. The traction performs well, but the shoe would be better if the traction were also top-tier.
1	127	8.5	NightWing2303 [weartesters.com]	2022-08-21	I expect the Nike Cosmic Unity 2 will perform well indoors and outdoors. The traction and cushion are the main features, but I am concerned with the lack of a toe guard.
37	127	8.3	Foot Doctor Zach	2022-10-10	The Nike Cosmic Unity 2 has a plush cushioning setup with solid traction, but it's not good for aggressive footwork.
36	127	6.7	Snkr Tech Talk	2022-11-02	The Nike Cosmic Unity 2 is not the shoe for me. I enjoyed the traction and cushioning, but the price, support and materials will keep me away.
39	128	9.0	Evan Miranda [weartesters.com]	2022-09-10	Overall, I really like the way the Puma TRC Blaze Court performs. My only gripe is that you sit high on the midsole, but that didn't hinder performance. You feel agile and supported.
33	128	8.4	Soled Out Reviews	2022-08-30	I have no problems recommending the Puma TRC Blaze Court. The traction is phenomenal, but the materials feel cheap.
37	128	8.4	Foot Doctor Zach	2022-08-28	The Puma TRC Blaze Court is an all-around shoe that offers grip, comfort, speed, and bounciness. It's best for quick and explosive-style players.
6	128	7.6	The Sole Brothers	2022-08-28	The Puma TRC Blaze Court is a comfortable shoe, but the performance of the traction holds it back.
33	129	8.2	Soled Out Reviews	2022-09-06	I definitely recommend the Puma Rise NITRO. The cushioning, traction, and materials work together to provide a comfortable shoe.
39	129	8.0	Evan Miranda [weartesters.com]	2022-08-28	The Puma Rise Nitro plays similarly to the MB.01 Low. It has a reliable fit, support, and materials, but it doesn't play well outdoors. The cushioning is also underwhelming.
6	129	8.0	The Sole Brothers	2022-11-15	The Puma Rise NITRO is a solid shoe held back by the traction pattern. It has average traction, but the cushioning feels comfortable, and the materials are better than expected.
29	129	8.0	MARKCHES	2022-12-04	The Puma Rise NITRO is a comfortable performance shoe with flexible materials and dependable traction. I only wish the cushion was plusher.
44	129	8.0	TommyLiu	2023-04-13	The Puma Rise NITRO is a solid performer. It's not top-tier, but not awful. The stability is the main standout feature, and the traction performs well.
37	129	8.0	Foot Doctor Zach	2023-08-24	The Puma Rise NITRO is a fantastic shoe for players who contort their feet during movements. The shank plate and foam make the shoe feel bouncy and springy.
24	131	7.8	RicheeKim	2022-08-08	The Nike Giannis Immortality 2 is a solid shoe for the price. The materials are the best part of the shoe, and the support is there, too.
6	131	7.8	The Sole Brothers	2022-08-16	The Nike Giannis Immortality 2 is a step back from the original. I had fit issues caused by the materials. The traction performed well after breaking it in, and the cushioning is responsive, though.
30	131	7.5	Gavriel Rupert Dela Cruz [weartesters.com]	2022-07-07	The Nike Giannis Immortality 2 is a solid budget offering, but it doesn't do much to differentiate itself from last year's Immortality 1. It has the traction, fit, and support needed for most guards on a budget.
39	131	7.5	Evan Miranda [weartesters.com]	2022-08-08	The Nike Giannis Immortality is an above-average performer but remains a very good budget option. The traction and responsive cushion make it a solid pick for smaller, quicker players.
40	132	9.4	RunStretchTech	2022-08-04	The Jordan Luka 1 is as good as it gets. It is one of the best performance basketball shoes available right now. Traction, cushion, and support are all there.
37	132	8.8	Foot Doctor Zach	2022-07-26	Luka Doncic's first signature shoe, the Jordan Luka 1, is a performance-first shoe. While they're newer and you're using them for intense play, they'll perform phenomenally.
36	132	8.6	Snkr Tech Talk	2022-08-08	I really enjoyed playing in the Jordan Luka 1. The big drawback is that the cushioning could be better. Otherwise, it's a fantastic buy at retail because the traction is top-tier, and the support features perform well.
1	132	8.5	NightWing2303 [weartesters.com]	2022-07-26	The Jordan Luka 1 features a brand new cushion setup called Formula 23, and it feels fantastic under your feet. The traction also feels tacky, and the support is there. This shoe has all the makings of a solid performer.
41	132	8.5	Allen Sison [weartesters.com]	2022-08-24	The Jordan Luka 1 is an excellent performer. Players who value traction, fit adaptability, and court feel will enjoy this shoe.
33	132	8.5	Soled Out Reviews	2022-09-15	The Jordan Luka 1 is definitively a shoe I can recommend for guards. It has top-tier traction and feels comfortable on foot. You can't expect much cushioning, though.
7	132	8.5	Nelson Chan @Hoop and Life	2022-10-16	The Jordan Luka 1 makes you feel shifty and agile, and it's the perfect shoe for guards. The traction, support, and lockdown are standout features.
29	132	8.4	MARKCHES	2022-07-26	The Jordan Luka 1 is a stable hoop shoe that caters to players who prefer responsive performance. It offers extra support but isn't the bounciest.
34	132	8.2	LZ Hoops	2022-09-06	Overall, I enjoyed playing in the Jordan Luka 1. The support and lockdown feel comfortable with every move I made, and the materials are lightweight.
32	132	8.2	ShadeSnSoleS [Youtube]	2022-10-10	The Jordan Luka 1 is a solid shoe for players who value stability. The traction is versatile, and the shoe is plenty supportive.
6	132	8.0	The Sole Brothers	2022-08-16	I had a great time playing in the Jordan Luka 1 because of the traction. The shoe feels minimal and cozy, but the fit didn't work out for me.
45	133	9.2	KicksContestWorld	2023-05-04	The Li-Ning Way of Wade 10 is the best performer of the season. It might be the best shoe we've ever tested. The cushioning feels perfect, and the fit and traction are excellent too.
37	133	8.8	Foot Doctor Zach	2022-07-26	The Li-Ning Way of Wade 10 is definitely an upgrade when compared to the Way of Wade 9. This shoe is a versatile performer that can play well for both nimble and aggressive players.
29	133	8.8	MARKCHES	2022-07-26	The Li-Ning Way of Wade 10 is a top performer for players that only play on indoor wooden courts. I had a lot of fun playing with this cushion and material setup.
6	133	8.8	The Sole Brothers	2022-08-08	Overall, the Li-Ning Way of Wade 10 is such a fun shoe to play in. It feels quick, the support features are there, and the cushioning is fantastic.
41	133	8.8	Allen Sison [weartesters.com]	2023-04-16	The more I played in the Li-Ning Way of Wade 10, the more I became convinced they would be top-tier shoes. I love the reliable traction and bouncy cushioning.
46	133	8.8	Jeremy Jones	2023-08-18	The Li-Ning Way of Wade 10 is a top performer. The traction grips, the cushioning is balanced, and the support is locked down.
1	133	8.8	NightWing2303 [weartesters.com]	2022-08-08	The Li-Ning Way of Wade 10 is a potential contender for the best basketball shoe of 2022. The cushioning is incredibly bouncy, the materials are lightweight, and the traction feels grippy.
40	134	8.2	RunStretchTech	2022-08-04	The Nike Precision shoe is an excellent shoe for its price range. The shoe is comfortable, and my movement felt great in them.
6	134	7.8	The Sole Brothers	2022-08-04	If you're looking for a lightweight and responsive shoe, the Nike Precision 6 is one of the best you can get for the money. Anybody that needs any cushioning should avoid this shoe, though.
24	134	7.8	RicheeKim	2022-08-04	I highly recommend the Nike Precision 6 for the price. It should be a solid option for outdoor play and players on a budget.
40	135	10.0	RunStretchTech	2022-08-08	I had a lot of fun playing in the Puma MB.01 Lo. To me, these are the perfect basketball shoe. The traction and cushion are top-notch, and the stability is fantastic.
1	135	9.4	NightWing2303 [weartesters.com]	2022-08-08	The Puma MB.01 Low is one of the best and most versatile performance shoes on the market. It packs an aggressive traction pattern, balanced cushioning, and support features that get the job done.
36	135	8.2	Snkr Tech Talk	2022-08-08	The Puma MB.01 is a fantastic shoe at a great price. The traction is reliable, and the cushion offers an impressive mix of court feel and impact protection.
6	135	8.0	The Sole Brothers	2022-08-16	The Puma MB.01 Lo is not a shoe I can recommend over the mid-top version. It's still a solid shoe, but the traction didn't perform as well for me on the Lo compared to the original.
27	136	9.5	Jalique Gabay [weartesters.com]	2022-06-25	The New Balance TWO WXY V2 provides a nearly flawless experience. Some players might prefer a bit more cushion, but I had no complaints. This shoe could be New Balance's best offering yet.
37	136	8.4	Foot Doctor Zach	2022-06-08	The New Balance TWO WXY V2 is a fun shoe to play in, and it's a good shoe for players needing their feet to plant and grip in tight spaces such as under the rim.
6	136	8.4	The Sole Brothers	2022-06-25	I really enjoyed playing in the New Balance TWO WXY V2. The traction is outstanding, and all other aspects of the shoe such as cushioning and support held their own.
24	136	8.2	RicheeKim	2022-06-16	I would say that the New Balance TWO WXY V2 is the best performer in New Balance's basketball lineup. Every performance aspect of the shoe is solid.
36	136	8.2	Snkr Tech Talk	2022-07-07	The New Balance TWO WXT V2 is one of the best shoes available. It has one of the best traction setups I've ever played in, but be careful if you need a lot of lateral containment.
40	137	8.6	RunStretchTech	2022-07-07	The Jordan Zion 2 is an excellent basketball shoe. I was balanced and supported the whole time. They weren't the most breathable and are a bit heavy, though.
1	137	8.5	NightWing2303 [weartesters.com]	2022-08-04	There's not much to complain about with the Jordan Zion 2. It's a low-to-the-ground, supportive basketball shoe with one of the best tractions available.
36	137	8.5	Snkr Tech Talk	2022-11-12	The Jordan Zion 2 has some of the best materials on a signature shoe to go along with being the most supportive shoe on the market.
29	137	8.4	MARKCHES	2022-06-25	The Jordan Zion 2 has a better traction and cushion setup than the Zion 1, which makes this a great shoe to play in.
37	137	8.4	Foot Doctor Zach	2022-07-01	The Jordan Zion 2 is a solid shoe for players that like to operate in the paint and utilize lateral movement to their advantage. They are probably the best shoe for sturdy post players.
6	137	8.4	The Sole Brothers	2022-07-26	I had a very good time playing in the Jordan Zion 2. The shoe offers a lot of support, and I was impressed with the cushioning and traction setup.
24	137	8.2	RicheeKim	2022-08-04	The Jordan Zion 2 is an upgrade from the Jordan Zion 1. The traction is good, the cushion feels nice, and the support is there.
33	137	8.0	Soled Out Reviews	2022-07-26	If you can try the Jordan Zion 2 on for size first, I'd recommend it as a performance basketball shoe. Just make sure that the Achilles pillows don't feel uncomfortable for you.
7	137	7.5	Nelson Chan @Hoop and Life	2022-07-07	In my opinion, the Jordan Zion 2 is worse than last year's model. The traction is decent, and the support was great. However, I didn't like the materials and cushioning was mediocre.
36	138	9.5	Snkr Tech Talk	2022-07-01	I preferred playing in the Jordan 36 Low a bit more than the Jordan 36. It's a lightweight, breathable shoe that offers bouncy cushion and grippy traction.
6	138	9.3	The Sole Brothers	2022-07-01	The Jordan 36 Low performs almost identically to the Jordan 36. It comes down to personal preference, and I like a low-top shoe better.
37	138	9.0	Foot Doctor Zach	2022-07-01	The Jordan 36 Low is almost identical to the regular Jordan 36. The main difference is the Lows are not as supportive, but it has a more comfortable fit.
24	138	9.0	RicheeKim	2022-07-01	The Jordan 36 Low is a must-buy for most players. I can't recommend it enough, especially for the price. It's comfortable, the traction is great, and the cushion is outstanding.
37	139	8.8	Foot Doctor Zach	2022-08-16	The Under Armour Curry 4 FloTro features some of the tackiest traction on the market. It's a shoe meant for players who utilize footwork and movement, so they may not be the best for more explosive players.
6	139	8.6	The Sole Brothers	2022-07-26	The Curry 4 FloTro provides amazing performance for the price. The materials are comfortable, and the traction is outstanding. This shoe will definitely be in my rotation.
24	139	8.6	RicheeKim	2022-08-16	The Curry 4 FloTro is a solid pickup. It's similar to the Curry 8 and 9 with fantastic traction. The only potential downside is the lack of impact protection.
44	139	8.6	TommyLiu	2023-05-04	A very impressive traction and cushion setup carries the Curry 4 FloTro. It's a great performer. Just be careful with sudden lateral cuts and stops.
6	140	7.6	The Sole Brothers	2022-05-27	The Under Armour HOVR Havoc 4 Clone is a great shoe for clean courts, but beware if you primarily play on dustier courts.
24	140	7.4	RicheeKim	2022-05-27	The Under Armour HOVR Havoc 4 Clone is not a shoe I can recommend because of issues I had with the support. Everything else was pretty good. The shoe could've been much better with improved materials.
24	141	7.8	RicheeKim	2022-05-31	For its price, the Nike Renew Elevate 3 is a solid performer. My only gripe with the shoe is the cushion. The shoe can be played indoors and outdoors without issues.
6	141	7.4	The Sole Brothers	2022-07-26	I liked the Nike Renew Elevate 3, but I wouldn't say it's a top-tier performer. It's a great option if you're looking for a budget shoe.
37	141	7.2	Foot Doctor Zach	2022-06-16	The Nike Renew Elevate 3 is a shifty shoe that's also fast in a straight line. The lateral containment also isn't the best. This shoe is a solid pickup for low-to-the-ground players, though.
39	141	7.0	Evan Miranda [weartesters.com]	2022-06-04	The Nike Renew Elevate 3 will not disappoint you for the price. You can use it as a go-to budget-friendly outdoor hoop shoe.
40	142	8.8	RunStretchTech	2022-08-08	The Nike Kyrie Low 5 might be my favourite shoe in the Kyrie lineup. Its traction, comfort, and support were fantastic for me. The only drawback is the breathability.
39	142	8.5	Evan Miranda [weartesters.com]	2022-09-06	The Nike Kyrie Low 5 is one of the best basketball shoes for lighter guards. It's an excellent performance shoe, but the lack of impact protection may not be the best for everyone.
6	142	8.4	The Sole Brothers	2022-05-09	You'll feel quick and light on your feet in the Nike Kyrie Low 5. It does what every previous Kyrie Low model does, but it also features improved cushioning.
32	142	8.2	ShadeSnSoleS [Youtube]	2022-07-01	The Nike Kyrie Low 5 offers incredible traction and a sturdy support setup. The cushion isn't the bounciest, but it is soft and comfortable.
37	142	8.0	Foot Doctor Zach	2022-04-28	Overall, I liked the Nike Kyrie Low 5. It offers plenty of agility, traction, and support. I have no problem recommending these to players that rely heavily on footwork.
24	142	8.0	RicheeKim	2022-05-17	The Nike Kyrie Low 5 is a solid pickup for the price. The overall performance is a huge improvement from the previous Kyrie models.
36	142	7.9	Snkr Tech Talk	2022-09-22	Shifty guards will enjoy the Nike Kyrie Low 5 the most. The cushion is somewhat lacking, but the shoe plays quickly and has strong traction.
37	143	9.4	Foot Doctor Zach	2022-06-02	The Nike KD 15 has something for everybody. The cushion is outstanding, and the traction grips incredibly. The shoe also accommodates almost every type of foot shape.
32	143	9.3	ShadeSnSoleS [Youtube]	2022-06-16	The Nike KD 15 could very well be the best basketball this year. The shoe has great cushion and traction, and the materials are solid.
33	143	9.3	Soled Out Reviews	2022-07-07	I would recommend the Nike KD 15 to any and everyone. The traction is amazing, and the cushion is incredibly comfortable.
6	143	9.0	The Sole Brothers	2022-06-11	The Nike KD 15 is an amazing performer. The shoe feels responsive because the traction is so damn good, and the cushion is bouncy. The only downside is that my heel doesn't feel the most locked down.
40	143	9.0	RunStretchTech	2022-07-07	The Nike KD 15 is a magnificent shoe that I highly recommend. The traction is one of the best available, and the cushion is good to go right out of the box.
7	143	9.0	Nelson Chan @Hoop and Life	2022-07-26	The Nike KD 15 is almost a complete upgrade of the KD 14. The only downside is the heel slippage. Otherwise, the cushioning and traction are amazing.
38	143	9.0	SnB PH	2022-07-26	I enjoyed playing in the Nike KD 15 a lot. I would highly recommend them. The traction is grippy and perfect for indoors, and the Zoom Strobel unit is bouncy, as usual.
36	143	8.7	Snkr Tech Talk	2022-10-16	The Nike KD 15 is one of my favourite basketball shoes. The cushioning, traction, and support are some of the best available.
24	143	8.6	RicheeKim	2022-07-26	Overall, the Nike KD 15 feels fantastic on the court. It's fun to play in, and I definitely recommend it. The only downside is the minimal amount of heel slippage.
33	144	8.8	Soled Out Reviews	2022-04-03	The Nike LeBron 19 Low plays better than the high-top version of the shoe. The cushion setup is one of my favourites, while the support and traction are improved.
37	144	8.2	Foot Doctor Zach	2022-03-22	The Nike LeBron 19 Low is best for centers and forwards, and if I'm being honest, I think they perform better than the highs.
6	144	8.2	The Sole Brothers	2022-05-29	The Nike LeBron 19 Low is a shoe that I enjoyed playing in. The impact protection is crazy, and the materials feel minimal.
29	144	8.0	MARKCHES	2022-03-22	The Nike LeBron 19 Low feels nice, and the cushion setup is comfortable. The materials provide solid support and lockdown, but the traction could be better.
24	144	8.0	RicheeKim	2022-06-08	For $160, the Nike LeBron 19 Low is a solid shoe. It offers a lot of impact protection but beware of dusty courts.
37	145	8.6	Foot Doctor Zach	2022-04-01	Once I broke in the New Balance Kawhi 2, I really started to enjoy the stability, grip, and nimbleness that the shoe provides. I'd recommend this shoe for any larger players.
32	145	8.5	ShadeSnSoleS [Youtube]	2022-04-10	The New Balance Kawhi 2 is pretty damn good. There are no glaring flaws. I would definitely recommend this shoe to anyone looking for an all-around shoe.
40	145	8.3	RunStretchTech	2022-06-06	The New Balance Kawhi 2 is a great shoe for players that rely on footwork to give them advantages. The cushion feels low to the ground, and the traction is incredible.
33	145	8.3	Soled Out Reviews	2022-04-03	The New Balance Kawhi 2 is my first ever New Balance shoe, and I do not regret picking it up. If you have a stop-and-go, run-the-floor style of play, I'm sure you'll love this shoe.
29	145	8.2	MARKCHES	2022-03-29	The only downside of the New Balance Kawhi 2 is that I wish they kept the same cushion found on the Kawhi 1. Every other aspect of the shoe is on par or better than the previous model.
24	145	8.2	RicheeKim	2022-03-31	The New Balance Kawhi 2 is a solid performer for the price point. It's a step in the right direction for the Kawhi lineup but still isn't quite as good as the Omn1s.
6	145	8.0	The Sole Brothers	2022-04-12	The New Balance Kawhi 2 is a solid shoe, but I wouldn't say it's my favourite. It's a lightweight, supportive, and minimal shoe.
27	145	8.0	Jalique Gabay [weartesters.com]	2022-06-06	The New Balance Kawhi 2 is not flashy but gets the job done. It's one of my preferred shoes to play in because of the balanced performance it provides.
37	146	8.6	Foot Doctor Zach	2023-08-01	The Anta KT 7 made my footwork feel improved. The cushioning is one of the best this year, and the support and stability are fantastic.
6	146	8.4	The Sole Brothers	2023-08-01	I enjoyed playing in the Anta KT 7. It's a solid shoe with impressive traction and surprisingly comfortable cushioning.
45	146	8.0	KicksContestWorld	2023-08-01	The Anta KT 7 is meant for players who like stability and cushioning. The setup is catered to non-shifty players who rely on a stable foundation.
33	147	8.3	Soled Out Reviews	2022-03-13	I would recommend the Jordan Why Not 0.5 to all types of basketball players. The shoe was super responsive, and I felt explosive and quick playing in them.
6	147	7.8	The Sole Brothers	2022-03-16	If the traction played better, the Jordan Why Not .5 would be a much better shoe. It checked all the boxes needed in a shoe, but the traction is a big con in my books.
37	147	7.8	Foot Doctor Zach	2022-04-05	The Jordan Why Not Zero.5 offers a lot in terms of fit and comfort, but the performance is hindered by the traction.
24	147	7.4	RicheeKim	2022-03-23	I cannot recommend the Jordan Why Not Zero.5. The traction does not bite, making it potentially dangerous to play in this shoe. It's a shame because everything else was solid.
36	148	9.3	Snkr Tech Talk	2022-01-22	The Nike Air Zoom GT Jump has one of the best cushion setups on the market, especially if you like Nike Zoom. It's a shoe that I'm always going to have in my bag.
35	148	9.0	Shoeware	2022-01-22	I have no problems recommending the Nike GT Jump. Overall, I'm impressed. These are definitely worth it.
37	148	9.0	Foot Doctor Zach	2022-01-26	The Nike GT Jump loads a  ton of tech into the shoe, making it one of the better shoes to come out recently. They help you pick up speed easier than any other shoe on the market. This combination is great when paired with the traction and cushion in the shoe.
38	148	8.8	SnB PH	2022-02-22	The Nike Air Zoom G.T. Jump has a top-tier cushion and traction that holds its own. The shoe is definitely worth the price because of the tech that Nike includes.
33	148	8.8	Soled Out Reviews	2022-02-28	Yes, I would recommend the Nike Air Zoom G.T. Jump to anyone. The cushion is the best on the market, and the shoe is versatile enough to accommodate all playstyles.
29	148	8.6	MARKCHES	2022-01-26	The Nike Air Zoom GT Jump is a pricey shoe that's worth every penny, in my opinion. It comes loaded with tech, and the performance reflects that.
6	148	8.6	The Sole Brothers	2022-02-22	The Nike Air Zoom G.T. Jump offers one of the best cushioning setups in basketball right now. The traction performs well, and the shoe feels springy. Overall, this shoe is super fun to play in.
24	148	8.6	RicheeKim	2022-02-28	Despite being a pricier shoe on the market, I have no issues recommending the Nike Air Zoom G.T. Jump, especially if you like impact protection and cushioning.
38	149	8.8	SnB PH	2022-03-14	Adidas definitely stepped up and redeemed themselves with the Harden Vol. 6. You get superb traction, a comfy cushion, and strong support.
6	149	8.6	The Sole Brothers	2022-03-03	Adidas has redeemed the Harden line with the Vol. 6. This shoe is a fantastic performer, and I love playing in them.
35	149	8.6	Shoeware	2022-03-25	The Adidas Harden Vol. 6 is a vast improvement from last year's shoe. Adidas is taking a step in the right direction with improved traction, cushion, and support.
24	149	8.4	RicheeKim	2022-02-21	The Adidas Harden Vol 6 is the best Harden model I've played in, slightly edging out the Vol 1. There are improvements with both the traction and cushion. The only cons I can think of are the cheap-feeling materials and tight toebox.
37	149	8.2	Foot Doctor Zach	2022-02-21	The Adidas Harden Vol 6 is best for players looking to outwork their opponents with fast footwork. The cushion and traction offer a lot of versatility. Just be sure to avoid toe drags.
33	149	8.0	Soled Out Reviews	2022-03-13	The Adidas Harden Vol. 6 offers solid traction and comfort. The materials can be hit or miss depending on what you're looking for in a shoe, though.
32	149	8.0	ShadeSnSoleS [Youtube]	2022-03-25	The traction and cushion on the Adidas Harden Vol. 6 are solid, but the fit and materials aren't up to par.
6	150	8.8	The Sole Brothers	2022-03-22	The Nike PG 6 is a shoe I can easily recommend. I didn't have to worry about anything when playing in these. They're comfortable with excellent traction and materials.
24	150	8.6	RicheeKim	2022-05-10	The Nike PG 6 is a must cop for the price. I consider this shoe an early contender for the best basketball shoe of 2022.
33	150	8.5	Soled Out Reviews	2022-04-28	I would recommend the Nike PG 6 for any player and any position, especially if you like a combination of response and comfort.
37	150	8.4	Foot Doctor Zach	2022-02-28	The Nike PG 6 is the best of both maximalist and minimalist worlds. It offers quick vertical movements with its grippy traction. Just be mindful that the cushion can bottom out quickly.
36	150	8.3	Snkr Tech Talk	2022-12-04	The Nike PG 6 is one of the best basketball shoes for value. The support is fantastic, the fit is impressive, and the traction is reliable.
19	150	7.8	PureKicks	2022-05-12	The cushion and traction of the Nike PG 6 excelled, but the materials let down the shoe. Overall, I still really enjoyed playing in these.
6	151	8.8	The Sole Brothers	2022-03-05	I love playing in the Jordan Zoom Separate. Due to the traction and cushion, I felt quick and smooth while playing in this shoe.
36	151	8.6	Snkr Tech Talk	2022-03-16	Not only is the Jordan Zoom Separate a great budget model, but it's also a great shoe overall, regardless of the price point. I think Jordan Brand knocked these out of the park.
29	151	8.6	MARKCHES	2022-03-31	The Jordan Zoom Separate is the shoe for you if you're looking for a budget shoe that provides traction, cushion, fit and stability. It is a well-rounded sneaker for the price.
37	151	8.5	Foot Doctor Zach	2022-01-22	The Jordan Zoom Separate is a solid option for players that want to outplay their opponents with footwork. The traction performs well, and the materials help keep the shoe light and easy to play in.
29	151	8.2	MARKCHES	2021-12-29	The Jordan Zoom Separate is a solid budget-friendly shoe. The cushion setup provides lots of impact protection, and the traction grips well. The only downside is the quality of the materials isn't the greatest.
24	151	8.2	RicheeKim	2022-03-01	The Jordan Zoom Separate is a must-cop for the price. It's a great performer and has a lot to offer. The traction is beastly, and the cushion provides a welcome balance of bounce and responsiveness.
30	151	8.0	Gavriel Rupert Dela Cruz [weartesters.com]	2021-12-29	The Jordan Zoom Separate is the perfect shoe for forefoot-heavy players. They have good traction, impact protection, and breathable materials that fit well.
35	152	9.0	Shoeware	2022-01-22	The Puma MB.01 is a fantastic start to a signature shoe line. Traction and cushion are the highlights, but nothing to point out for negatives on this model.
7	152	9.0	Nelson Chan @Hoop and Life	2022-07-01	The Puma MB.01 is a solid, all-around hoop shoe with nothing to complain about besides the lack of premium materials. It features well-performing traction and cushioning at a reasonable price.
6	152	8.6	The Sole Brothers	2022-01-08	LaMelo Ball's first signature shoe, the Puma MB.01, is amazing. I love playing in these. This is a versatile option for a number of different playstyles.
34	152	8.5	LZ Hoops	2022-01-04	The Puma MB.01 is one of the most comfortable shoes I've worn in a long time. I think these could be one of the best first signature shoes ever.
37	152	8.5	Foot Doctor Zach	2022-01-22	LaMelo Ball's Puma MB.01 is an excellent all-around shoe that players who enjoy quick, nimbler movements will enjoy. The shoe offers solid traction, and the materials perform exceptionally.
32	152	8.5	ShadeSnSoleS [Youtube]	2022-01-26	Overall, the Puma MB.01 is a pretty damn good shoe. It offers strong traction, cushioning, and upper materials.
24	152	8.4	RicheeKim	2022-01-04	The Puma MB.01 is a shoe that I highly recommend. It has a great balance of everything and is really fun to play in.
25	152	8.3	JAHRONMON [Youtube]	2022-01-04	Although they aren't the sleekest, the Puma Melo MB.01 does provide great balance and comfort. The cushion is a perfect balance, and the materials do a great job of keeping your feet feeling nice.
33	152	8.2	Soled Out Reviews	2022-01-04	Puma did a great job of putting together LaMelo Ball's first signature shoe. The shoe is fun to play in and has little to no downsides.
36	152	8.2	Snkr Tech Talk	2022-02-01	I think the Puma MB.01 is a fantastic shoe at this price point. They might just be the best budget shoe out right now.
6	153	8.5	The Sole Brothers	2022-01-28	The Nike Fly By Mid 3 is Nike's lowest-priced shoe, but don't let that fool you. This shoe was a pleasant surprise. I liked playing in these a lot more than expected.
24	153	8.0	RicheeKim	2022-01-28	The Nike Fly By Mid 3 is a solid performance shoe at a low retail price. The cushion surprised me, and the traction is just what you want from a basketball shoe.
44	153	8.0	TommyLiu	2023-07-19	The Nike Fly By Mid 3 provides a bit of everything. The traction is impressive for the price, and it feels minimal overall.
32	153	6.8	ShadeSnSoleS [Youtube]	2022-03-25	As much as I want to recommend the Nike Fly By Mid 3, I can't because of the fit and traction. It could still be worth it for those looking for an affordable budget option.
30	153	6.2	Gavriel Rupert Dela Cruz [weartesters.com]	2022-02-28	The Nike Fly By Mid 3 is an okay shoe for the price. There are better shoes at this price point, however. I'd only consider this if budget is your biggest factor.
45	154	8.6	KicksContestWorld	2023-04-13	The Adidas Harden Stepback 3 showed great results during our tests. The traction and cushioning will be solid for guards and wings.
37	154	8.4	Foot Doctor Zach	2022-07-26	I was presently surprised with the Adidas Harden Stepback 3. They might be the best budget shoe in recent memory, especially for shifty guards that rely on heavy footwork.
40	154	7.8	RunStretchTech	2022-08-16	The Adidas Harden Stepback 3 is a comfortable budget shoe. The traction was reliable, and I enjoyed how the materials felt.
6	154	7.8	The Sole Brothers	2022-12-22	I had a good time playing in the Adidas Harden Stepback 3. The traction performed nicely, the cushion was responsive, and I enjoyed the fit. I do wish impact protection was better, though.
6	155	8.8	The Sole Brothers	2021-12-25	The Nike Kyrie 8 is an overall great feeling shoe. It provides balance with the weight while still remaining a quality performer. Cushioning and materials are the standouts for me.
38	155	8.8	SnB PH	2022-01-22	The Nike Kyrie 8 is one of the better options from Nike this year. They give you solid traction if you keep them clean, and the underfoot cushion performs well.
32	155	8.6	ShadeSnSoleS [Youtube]	2022-01-18	I love the Nike Kyrie 8. They are the most comfortable and functional Kyrie model to date. The traction is one of the only aspects that doesn't improve from last year, but the rest of the shoe is excellent.
37	155	8.6	Foot Doctor Zach	2022-01-22	The Nike Kyrie 8 performs well for players that want nimble footwork, control, traction and stability. Be aware that the shoe may not be the best for more explosive players.
29	155	8.4	MARKCHES	2021-11-25	I really enjoyed playing in the Nike Kyrie 8. The cushioning setup is the best in the entire Kyrie lineup, and the traction performs well as always.
24	155	8.4	RicheeKim	2022-02-22	The Nike Kyrie 8 is a solid pickup for the price. The only downside is the break-in time needed for the traction to get going. Everything else about the shoe is awesome.
36	155	8.1	Snkr Tech Talk	2022-03-07	The Nike Kyrie 8 is my favourite Kyrie of all time. They are my favourite Kyrie model to play in. It should be a fantastic shoe for guards and players that don't need much torsional rigidity.
7	156	9.5	Nelson Chan @Hoop and Life	2021-12-01	The Under Armour Curry 9 is an overall improvement from the Curry 8. The traction and cushion remain fantastic, but the materials and support perform better in this year's model.
38	156	9.2	SnB PH	2022-03-06	The Under Armour Curry 9 is one of my go-to shoes right now. The traction and cushion remain solid, and the materials are greatly improved. This shoe is definitely worth the price.
6	156	9.0	The Sole Brothers	2021-12-19	The Curry 9 feels like a running shoe that has the lateral containment needed for basketball. The traction is top-tier, and the cushion feels responsive. I absolutely love playing in this shoe.
29	156	9.0	MARKCHES	2022-01-18	The Curry 9 is pretty similar to the Curry 8 for the most part. However, there is an improvement in the materials used this year; this leads to improved support and fit.
24	156	8.8	RicheeKim	2021-12-09	Overall, the Curry 9 is an amazing performer. Everything about the shoe is an improvement from the Curry 8.
37	156	8.8	Foot Doctor Zach	2022-01-22	The Curry 9 provides a fantastic grip for traction, and the cushion performs well in most situations. The materials feel durable and premium while remaining comfortable as well.
36	156	8.1	Snkr Tech Talk	2022-04-03	If you enjoy a firmer cushion setup, I think you'll really enjoy the Curry 9. The traction and support are top-tier, and the materials get the job done.
38	157	8.6	SnB PH	2022-02-22	Overall, I think the performance of the Adidas Dame 8 will suit many players. The shoe definitely delivers as my only gripes were minor.
24	157	8.4	RicheeKim	2022-01-06	Overall, the Adidas Dame 8 is a solid pickup at its current price point. The inconsistency with the traction is the only downside. The cushion is an improvement from last year and the fit and support were perfect.
37	157	8.2	Foot Doctor Zach	2022-01-22	The Adidas Dame 8 is a great pick for players looking for easy push-off power or stability for hard pivoting. They're also versatile as they play well on different surfaces and can accommodate many foot shapes.
33	157	7.8	Soled Out Reviews	2022-01-08	The Adidas Dame 8 could have been a strong performer but are held back by the traction. I had a lot of problems when it came to slippage. Other than that, the materials are comfortable, and the cushion provides a good amount of impact protection.
35	157	7.8	Shoeware	2022-01-22	The Dame 8 plays very similarly to the Dame 7 even with the slight changes made. Still a well-balanced shoe overall, nothing stands out in a good or bad way.
6	157	7.4	The Sole Brothers	2022-01-11	The Adidas Dame 8's Bounce Pro cushion setup is a joy to play in. However, other aspects of the shoe, such as traction and fit, are too inconsistent for me to recommend these.
32	157	7.2	ShadeSnSoleS [Youtube]	2022-02-22	I had high hopes for the Adidas Dame 8, but the traction didn't work for me, and the materials had a lot of room for improvement.
6	158	7.6	The Sole Brothers	2021-11-25	The Nike Kyrie Flytrap 5 is a responsive and lightweight shoe. The traction is solid when on clean courts, and the cushion performs well enough for players that play low to the ground.
24	158	7.6	RicheeKim	2021-12-01	The Nike Kyrie Flytrap 5 is a solid budget shoe for anyone who likes to play in a firmer and more responsive shoe. Almost all aspects performed adequately, but I wish the cushion and fit were better.
35	158	7.6	Shoeware	2022-01-22	The Kyrie Flytrap 5 gives you about what you can expect from a shoe that is $90. The traction and cushion aren't anything special, but the support holds up well to play in.
30	158	5.0	Gavriel Rupert Dela Cruz [weartesters.com]	2022-03-02	The Nike Kyrie Flytrap 5 is a shoe that I can only recommend to wide-footers who enjoy minimal cushioning. For everybody else, there are a lot of better shoes out there.
38	159	8.9	SnB PH	2022-01-22	The Nike LeBron 19 has plenty of tech and provides the best impact protection you can find right now. However, the traction can be suspect, and they are heavy.
29	159	8.8	MARKCHES	2021-11-19	The Nike LeBron 19 is one of the best shoes in the LeBron line in recent years. The cushioning setup is lower to the ground without sacrificing any impact protection, but the biggest improvement is the stability that they feature.
33	159	8.5	Soled Out Reviews	2021-12-13	The Nike LeBron 19 doesn't quite fit my playstyle. They do provide impact protection and would be a solid pick for players that enjoy extra cushioning.
6	159	8.4	The Sole Brothers	2021-12-09	Overall, the Nike LeBron 19 is a fun shoe to play in. It provides a crazy amount of bounce, and the cushion feels fantastic. The traction and weight do hold the shoe back, though.
37	159	8.4	Foot Doctor Zach	2022-01-22	The Nike LeBron 19 offers a lot of tech, especially in the mid and outsole. It's a maximalist shoe that provides plenty of energy return, but it may not be the best shoe for those that rely on speed up and down the court because of the weight.
7	159	8.0	Nelson Chan @Hoop and Life	2021-12-13	The Nike LeBron 19 provides an unreal cushioning experience in terms of comfort, but the traction is disappointing. They remain one of the best shoes for those that value impact protection.
24	159	8.0	RicheeKim	2022-01-13	Not even the crazy cushion and improved support of the LeBron 19 could make me recommend this shoe. For the price, the traction is just not good.
36	159	7.7	Snkr Tech Talk	2022-01-22	Overall, I can't recommend the Nike LeBron 19 because of the traction. If you need an awesome cushion setup with a lot of support, this shoe could work for you.
24	160	8.0	RicheeKim	2021-11-14	The Jordan One Take 3 is a solid pickup for the price. In my opinion, it is the best One Take model yet. The traction bites hard, and the cushion setup performs well for the price range.
6	160	8.0	The Sole Brothers	2021-11-19	I really enjoyed playing in the Jordan One Take 3. They felt like an extension of my foot with the grippy traction and responsive cushion. The materials are also minimal and support and lockdown were not an issue at all.
40	161	7.8	RunStretchTech	2022-06-06	Overall, the Nike LeBron Witness 6 is comfortable and gets the job done for the price. It's a good option for outdoor play.
37	161	7.6	Foot Doctor Zach	2022-01-22	The Nike LeBron Witness 6 has a lot of stability enhancements this year, but it can still be a bit unstable. However, this is a great shoe to beat up on outdoor courts.
6	161	7.2	The Sole Brothers	2021-10-25	The Nike LeBron Witness 6 is a step down from the previous model in the Witness line. The shoe's instability combined with the underperforming traction leaves much to be desired. Even for the $100 price point, I can't recommend this shoe.
24	161	7.2	RicheeKim	2021-11-10	The Nike LeBron Witness 6 is not a shoe I can recommend, even at its lower price point. The traction works well, but the lateral stability and cushion are lacking.
33	161	7.0	Soled Out Reviews	2021-11-02	The Nike LeBron Witness 6 is a great-looking shoe, and can definitely be worn casually. However, I cannot recommend it for playing basketball. The cushion feels unstable and not supportive underfoot.
40	162	8.9	RunStretchTech	2022-06-06	For the price, this is one of the better shoes I've played in this year. I was surprised at just how well the traction performed.
33	162	8.3	Soled Out Reviews	2022-03-09	Overall, I would recommend the Nike Air Max Impact 3 for anybody in the market for a budget sneaker. The only downside is that the impact protection could be better.
24	162	8.0	RicheeKim	2022-03-09	The Nike Air Max Impact 3 is just okay for the price. It's personally not my favourite, but I'd say go for it if you are a fan of Air Max units and strong traction.
36	163	9.4	Snkr Tech Talk	2022-01-22	Overall, the Jordan 36 might be my favourite basketball shoe to play in right now. The traction is one of the best on the market and responsive cushioning.
36	163	9.3	Snkr Tech Talk	2022-05-22	The Jordan 36 is a fantastic overall shoe. It offers traction, support, and cushioning. I don't think you can go wrong, especially considering the materials.
6	163	9.2	The Sole Brothers	2021-09-13	The Jordan 36 is one of my favourite shoes to play in right now. They're lightweight, they have a nice bite, and I love the cushion setup.
1	163	9.1	NightWing2303 [weartesters.com]	2021-09-13	The latest entry in the Air Jordan line is a strong performer, just like the previous two models. The full-length Zoom Air Strobel is amazing. The traction is outstanding. Materials are durable. There really aren't any downsides to this shoe.
7	163	9.0	Nelson Chan @Hoop and Life	2021-09-13	Jordan brand continues to deliver with the 36. The traction is consistent. There's plenty of impact protection, and the materials make it incredibly lightweight. It's a strong performer overall.
37	163	9.0	Foot Doctor Zach	2022-01-22	Compared to many other releases this year, the Jordan 36 is a stand-out shoe. The shoe gives you a lot of push-off power and performance. The only downside is that the comfort doesn't keep up with the excellent performance.
24	163	9.0	RicheeKim	2022-04-15	The Air Jordan 36 is a great performer. It's fun and bouncy, and I can't get enough of the cushion setup.
34	163	8.5	LZ Hoops	2021-11-03	Overall, the Jordan 36 is a great shoe for big men and forwards. It provides impact protection, and there really aren't any major issues with the traction.
6	164	7.8	The Sole Brothers	2021-10-04	The Puma Fusion Nitro is a responsive feeling shoe that provides solid traction. There is a nice amount of court feel. However, the caging of the midsole cushion takes away from the impact protection.
1	164	7.4	NightWing2303 [weartesters.com]	2021-09-25	The Puma Fusion Nitro is a letdown compared to the Clyde All-Pros. The traction and cushion are great, but they don't work well with the rest of the shoe.
38	165	9.1	SnB PH	2022-01-22	The Adidas Trae Young 1 might be the best shoe available in its price range. I consider this pair to be the best Adidas shoe for 2021.
35	165	8.2	Shoeware	2022-01-22	The Trae Young 1 offers extremely nice cushioning. The traction plays a little worse than expected, and the support isn't ideal with only two lacing holes, but it's still a solid performer with some premium touches for materials.
37	165	8.2	Foot Doctor Zach	2022-03-06	The Adidas Trae Young 1 is excellent for players that like to stay low to the ground and play fast in confined spaces. Just make sure to break them in beforehand.
29	165	8.0	MARKCHES	2021-09-29	The Adidas Trae Young 1 is a stable sneaker. It feels low to the ground, which works well with the Lightstrike cushion in the forefoot. Just make sure to get the right size.
6	165	8.0	The Sole Brothers	2021-10-23	Overall, the Adidas Trae Young 1 feels great on foot. When playing on clean courts, the shoe feels low to the ground, responsive, and comfortable.
24	165	7.8	RicheeKim	2021-09-30	The Adidas Trae Young 1 is awesome in every way but the traction. I really like the materials, the fit and support are good, and the cushion shined.
32	165	7.8	ShadeSnSoleS [Youtube]	2022-02-22	For the Adidas Trae Young 1, the traction works, the cushion offers impact protection and court feel, and the upper feels good for the most part.
24	166	8.4	RicheeKim	2021-08-21	For the price, the Under Armour Flow FUTR X is a solid shoe. If you don't need a lot of impact protection, this shoe will be perfect for you. It has amazing traction, the fit is solid, and it's plenty supportive.
37	166	8.4	Foot Doctor Zach	2022-01-22	The Under Armour Flow FUTR X is great for indoor courts and provides an above-average energy return while remaining lightweight and stable.
6	166	8.0	The Sole Brothers	2021-08-24	The traction is top tier, the cushion is responsive, and the support was good. Despite the materials, the Under Armour Flow FUTR X is a definite cop.
27	167	9.0	Jalique Gabay [weartesters.com]	2021-09-02	The Adidas Exhibit A is a refreshing entry into the Adidas basketball lineup. It's lightweight with great traction and materials. The cushion is comfortable and playable but could be better. Overall, the shoe is a reliable performer.
24	167	8.4	RicheeKim	2021-09-02	The Adidas Exhibit A is a solid performer for the price. It has a great cushion if you want to feel quick and shifty. The traction is reliable, and the support has everything need in a hoop shoe.
6	167	8.2	The Sole Brothers	2021-09-13	The Adidas Exhibit A is good but is just below the top-tier. The traction gets the job done, the cushion is responsive, and the materials perform well for the quality.
32	167	7.6	ShadeSnSoleS [Youtube]	2022-02-28	The Adidas Exhibit A is a shoe that offers an excellent cushioning setup, but the mediocre traction is a letdown.
24	168	8.2	RicheeKim	2021-09-13	For $100, this is a fantastic option. It is one of the best D Rose shoes to come out in recent years. It plays quickly and offers plenty of court feel though the impact protection could be better. But for the price, it's hard to beat the Adidas D Rose Son of Chi.
6	168	8.0	The Sole Brothers	2021-09-23	Overall, the Adidas D Rose Son of Chi has good traction and feels responsive. The support is good as well. It just isn't the most minimal feeling shoe in terms of materials.
35	168	7.8	Shoeware	2022-01-22	The D Rose Son of Chi has nice traction, but the cushion isn't anything special. The support plays well enough, but you can tell the materials aren't the best.
38	169	8.3	SnB PH	2022-01-22	Donovan Mitchell's latest shoe is a step up from last year's model, but the Adidas DON Issue #3 doesn't live up to the original. It has solid traction and adequate cushioning that will suit guard play.
29	169	8.0	MARKCHES	2021-07-20	Overall, the D.O.N Issue #3 is a steady basketball shoe. It has dependable traction with a wide base. The cushion and support were also dependable for me.
7	169	8.0	Nelson Chan @Hoop and Life	2021-07-20	The Adidas D.O.N Issue #3 has great traction and comfortable materials. It felt comfortable on foot, but the cushion doesn't hold up after playing more than three games at a time. The heel slippage also takes away from the shoe a bit. Overall, it is a responsive shoe that feels light on your feet.
24	169	8.0	RicheeKim	2021-07-25	As long as you consistently wipe, you're getting a good-performing shoe. The shoe feels light, the traction performs well enough, and the materials feel nice. The only issue to consider is that there is the potential for heel slippage.
6	169	7.6	The Sole Brothers	2021-08-05	The D.O.N Issue #3 is a lightweight shoe that provided a decent amount of court feel with the Lightstrike midsole. However, the traction, fit, and heel lockdown left a lot to be desired.
7	170	9.0	Nelson Chan @Hoop and Life	2021-08-10	The Nike Zoom Freak 3 provides a good amount of tech at an affordable price point. They're an upgrade both performance-wise and aesthetics-wise compared to previous models. The cushion feels great, the materials get the job done, and the traction performs well after breaking it in. These are definitely a shoe going into my rotation.
38	170	8.4	SnB PH	2022-01-22	In my opinion, the Nike Zoom Freak 3 makes major improvements compared to the Zoom Freak 2. The traction is close to being a top-tier performer, and the cushion is nice and bouncy. I'd definitely recommend it.
29	170	8.2	MARKCHES	2021-07-20	The Nike Zoom Freak 3 is one of my favourite shoes to hoop in right now. The cushion is bouncy, the traction is one of my favourites on the market right now, and in my opinion, they look pretty darn good.
35	170	8.2	Shoeware	2022-01-22	The Zoom Freak 3 is good, not great. The traction is inconsistent. There is good breathability for your foot and good support.
24	170	7.8	RicheeKim	2021-08-10	The Zoom Freak 3 is a solid shoe at its current price point. The traction was inconsistent, but the materials, fit, and support make up for it. Overall, Nike did a good job of upgrading the shoe from the Zoom Freak 2.
6	170	7.6	The Sole Brothers	2021-08-05	The Nike Zoom Freak 3 is a lightweight and minimal shoe. The traction was inconsistent for me, and I was disappointed in the cushion. However, I did like the materials, and the shoe has a great fit.
34	170	7.5	LZ Hoops	2021-11-03	Overall, the Nike Zoom Freak 3 is a decent shoe if you have a similar playstyle to the Freak himself. The traction performs well, but the support of the shoe was a letdown.
29	171	8.4	MARKCHES	2021-08-01	The Nike Air Zoom G.T. Run isn't too impressive straight out of the box, but after breaking them in, they slowly become better. There is plenty of cushioning, and the traction becomes solid.
24	171	8.2	RicheeKim	2021-08-06	Overall, the Nike Air Zoom G.T. Run is a really nice shoe. The only gripes I have are the less-than-premium materials and the traction when on dirtier courts. Other than that, you get tonnes of cushion, the support and lockdown are good, and the fit is solid.
6	171	8.0	The Sole Brothers	2021-08-15	If you're looking for a crazy cushioning setup, the Nike Air Zoom G.T. Run is the shoe for you. It's a solid shoe for anyone who doesn't mind giving up some court feel and responsiveness to get more impact protection and bounciness.
37	171	8.0	Foot Doctor Zach	2022-01-22	The Nike Air Zoom GT Run is a solid shoe for those that are looking for an explosive setup and rely on a lot of jumping in their game.
36	171	8.0	Snkr Tech Talk	2022-02-22	The Nike Zoom GT Run offers solid traction while it lasts and plenty of impact protection. It could be more premium, but it performs well enough.
35	171	7.8	Shoeware	2022-01-22	The G.T. Run is the worst performer of the 3 Greater Than models. The shoe has good cushioning and traction. However, the support isn't easy to trust with how thin the materials are.
30	172	8.0	Gavriel Rupert Dela Cruz [weartesters.com]	2021-07-30	The Nike Giannis Immortality is one of the best signature athlete budget models available. It performs just as well as some signature models despite lacking the same tech that they feature. Definitely a great bang for your buck type of shoe.
6	172	8.0	The Sole Brothers	2021-07-30	When you're playing in the Giannis Immortality, you feel very light and really quick. The traction is amazing, and the cushion is responsive. Support could've been a bit better, but it wasn't a deal-breaker. I really like this shoe.
24	172	7.6	RicheeKim	2021-07-30	The Nike Giannis Immortality is a pretty decent budget model. However, there are other shoes at the price point that do outperform the shoe. The cushion and materials feel nice, but I did have issues with support.
35	172	7.6	Shoeware	2022-01-22	The Giannis Immortality is a solid performer in the subline of Giannis's Zoom Freak line with Nike. These also provide lateral containment and consistent traction while also feeling light.
27	173	8.6	Jalique Gabay [weartesters.com]	2021-08-10	Although I was disappointed in the cushion, the Nike Kyrie Low 4 still provides a smooth, lightweight experience. The traction, fit, and support combine to make this shoe a decent performer at a reasonable price.
6	173	8.0	The Sole Brothers	2021-07-01	The Nike Kyrie Low 4 is a pretty low to the ground, responsive setup, but doesn't provide much bounce or compression. It plays very fast and the shoe itself is very lightweight thanks to the thin materials. It's still a shoe I really liked playing in despite being a bit disappointed in the cushion.
24	173	8.0	RicheeKim	2021-08-01	The Nike Kyrie Low 4 is an overall good performer. One thing to note is that the shoe isn't the best for impact protection, but it does offer a lot of responsiveness, and the support is great.
6	174	8.5	The Sole Brothers	2021-07-01	The Curry 3Z5 is an amazing shoe for only $80. The traction is phenomenal. The Micro G feels soft and responsive like the Micro G of old, and the fit was perfect. The only downside is that the heel area was a bit uncomfortable when I was breaking it in. Overall, the shoe felt amazing.
24	174	8.2	RicheeKim	2021-09-02	At a retail price of $80, the Curry 3Z5 is a solid shoe. I have no complaints outside of the dust pickup on dirtier courts, but that's just nitpicking since it still performed nicely.
36	175	9.2	Snkr Tech Talk	2022-01-22	The Nike Air Zoom GT Cut is my favourite Nike basketball shoe this year. It offers a Kobe-like setup that's lightweight with fantastic cushioning. The traction holds up, and the shoe is comfortable right out of the box.
34	175	9.2	LZ Hoops	2021-11-03	The Nike Air Zoom G.T. Cut is a perfect indoor basketball shoe. They are the definite best shoe to release in 2021 for shifty and quick players who emphasize lockdown, cushion, and traction.
1	175	9.0	NightWing2303 [weartesters.com]	2021-06-21	If you love the Kobe 8, you'll love these. The shoe does an excellent job of providing a low-profile, lightweight setup that still provides a decent amount of cushioning. However, I would recommend playing indoors to get the most out of the traction.
35	175	9.0	Shoeware	2022-01-26	The Nike Air Zoom GT Cut is as close to a Kobe as it gets. The cushion is one of the best on the market, and the traction performed well. These kill it on the court.
29	175	8.8	MARKCHES	2021-05-06	For people that like low-profile sneakers, this is a must-have in your collection. The cushion is an amazing combination of responsiveness and bounce, and the traction performs very well. The only thing to watch out for is that the shoe does fit snug.
6	175	8.6	The Sole Brothers	2021-05-21	This a top-tier performer. The cushion is phenomenal and the traction performs really nice as long as you wipe to keep dust from building up. It can get a little tight in the forefoot area, but not enough to take away from the performance.
35	175	8.6	Shoeware	2022-01-22	This review is for outdoor performance. The Nike Air Zoom GT Cut is easily worth the money. I don't use the word often, but these are fantastic. The traction holds up well, and the cushion is one of the best available.
24	175	8.4	RicheeKim	2021-06-02	The cushion in this shoe is one of the best setups for fast and shifty players. It's a great performer but is a bit expensive coming in at $170 retail. However, I feel the performance makes the shoe worth it.
9	176	8.5	KickGenius	2021-06-14	The shoe very much feels like a budget model. There are certain aspects of the shoe that could have been done much better, but the mid-tier tech is what was put in the shoe instead.
33	176	8.3	Soled Out Reviews	2022-07-01	The Jordan Zion 1 is one of my favourite shoes. The cushioning is comfortable, and the lockdown and stability are solid.
7	176	8.0	Nelson Chan @Hoop and Life	2021-05-10	Every aspect of this shoe is solid. There is nothing amazing about this shoe, but there's nothing bad about it either. For $120 you get a solid first signature shoe that works for all types of players.
6	176	8.0	The Sole Brothers	2021-05-18	If you want a comfortable shoe that provides a lot of bounce and protection, this is a great shoe to pick up. On the flip side, because the cushion is very bouncy, the shoe does feel a bit slow. Couple that with the traction not being the most consistent, this shoe may not be the best fit for everyone.
35	176	8.0	Shoeware	2022-01-22	The Jordan Zion 1 is a good place to start Zion's signature shoe line. This is a well-balanced performer.
36	176	7.9	Snkr Tech Talk	2022-03-28	Overall, if you like a firmer cushion setup, I think you'll enjoy the Jordan Zion 1. The shoe is super supportive, and the rubber is solid enough that it could be a decent outdoor pair.
24	176	7.8	RicheeKim	2021-05-13	The Zion 1 is a solid first signature shoe and was fun to play in. I just wish that they had used more premium materials.
25	176	7.8	JAHRONMON [Youtube]	2021-07-01	The Jordan Zion 1 provides a smooth ride that leads you into the extra bottom-loaded Zoom unit in the forefoot for some extra nice pop. However, its shortcomings are a bit too much to overcome. The fit is not versatile enough to accommodate more types of foot shapes and I experienced quite a bit of slipping with the traction and in the heel area of the shoe.
24	177	8.0	RicheeKim	2021-05-10	For $90 retail this is a solid pickup. The firm cushioning feels like a downgrade to me, everything else is an upgrade from previous KD Trey 5 models.
6	177	7.8	The Sole Brothers	2021-05-10	The KD Trey 5 IX is a solid performer. This shoe might be for you if you are looking for a lightweight, minimal, and affordable shoe.
6	178	8.6	The Sole Brothers	2021-04-08	The Adidas N3XT L3V3L is a good performer and I enjoyed playing in them. They are pretty expensive at $180 though, and they didn't perform well enough to crack my rotation. They also aren't the best for guards because they're pretty bottom-heavy.
37	178	8.5	Foot Doctor Zach	2022-01-22	The Adidas N3XT L3V3L Futurenatural is a tremendous step forward for laceless performance shoes. The only obvious downside that I experienced was the weight of the shoe.
24	178	8.4	RicheeKim	2021-04-08	If you've ever tried the N3XT L3V3L line you know what to expect performance-wise with these. For $180, I probably wouldn't recommend them because of the price and the stiff cushion setup.
35	178	8.0	Shoeware	2022-01-22	The Adidas N3XT L3V3L Futurenatural almost feels like the laceless version of the Harden Vol. 5, but with slightly better materials and a laceless upper.
1	179	9.2	NightWing2303 [weartesters.com]	2021-06-21	The Nike KD 14 is one of the best shoes of 2021 so far. The cushion feels like a springy marshmallow, the traction was fantastic, the support and lockdown were great. The shoe does everything well from a performance basketball perspective.
7	179	9.0	Nelson Chan @Hoop and Life	2021-05-04	Every aspect of the KD14 performs really well and I like it better than the KD13. The cushion feels awesome and the traction and fit work well after a short break-in period. Also, the $150 price is fair considering all the tech you are getting.
6	179	9.0	The Sole Brothers	2021-05-10	The KD 14 might be my #1 favorite shoe to play in right now! Awesome traction, minimal materials, and responsiveness without compromising impact protection - I absolutely love playing in them!
37	179	9.0	Foot Doctor Zach	2022-01-22	The Nike KD 14 provides excellent grip, stability, and cushion - especially when moving from side to side. It also does this without compromising much at all performance-wise.
36	179	8.9	Snkr Tech Talk	2022-02-01	I definitely recommend the Nike KD 14. They have one of the best tractions out right now and a fantastic cushion. The support is also solid with the cheap-feeling materials being the only con.
35	179	8.8	Shoeware	2022-01-22	Overall, the Nike KD 14 is another step forward in Kevin Durant's shoe line. They're light on foot, breathable, and the traction is great.
24	179	8.6	RicheeKim	2021-05-04	The KD 14 is very comfortable, a lot of fun to play in, and just a great shoe overall.
9	179	8.4	KickGenius	2021-06-14	The KD 14 is one of the most versatile shoes out right now. It has the best technology that Nike has to offer, making it so that everyone can play in the shoe regardless of position. I feel like the KD 14 has something to offer for everyone and it's one of my favorite shoes to play in right now.
24	180	8.4	RicheeKim	2021-04-21	For $70 retail, this is a banger of a shoe. If you are looking for impact protection, this shoe isn't for you. But everything else is really nice. The Nike Precision 5 is a great to shoe to play in and I honestly can't believe that it's only $70.
6	180	8.4	The Sole Brothers	2021-04-30	If the Precision 5 was $120, I'd still recommend it because it performs extremely well. The only thing that's lacking is the cushion - and it's not that bad.
32	180	7.5	ShadeSnSoleS [Youtube]	2022-03-05	Overall, the Nike Precision 5 has solid traction and a decent cushion. The materials also weren't bad for a budget shoe, but the fit is wonky.
32	181	8.8	ShadeSnSoleS [Youtube]	2022-03-11	Guards that are looking for court feel and traction will enjoy this shoe. I highly recommend playing in the Puma Court Rider.
6	181	7.5	The Sole Brothers	2021-06-22	Overall, it is a comfortable and cozy feeling shoe, but it wasn't very responsive because the traction didn't perform well. The cushion is also pretty minimal, but that's understandable for a budget shoe like the Court Rider. I didn't really like playing in this shoe considering there are plenty of good options in the budget shoe price range.
24	182	9.0	RicheeKim	2021-03-12	The Under Armour Spawn 3 retails for just $100 and for the price it's a banger! A very very good performer - I have nothing bad to say about these.
6	182	9.0	The Sole Brothers	2021-03-12	Go get a pair! The Under Armour Spawn 3 is freaking phenomenal. My only minor issues are the heel curve and the durability of the outsole for outdoor use.
1	183	9.0	NightWing2303 [weartesters.com]	2021-03-21	Overall, I have loved playing in the Nike Cosmic Unity. They provide the stability and cushion I want and love. There's nothing I can complain about!
24	183	8.8	RicheeKim	2021-03-21	The Nike Cosmic Unity retails for $150 and is a really solid shoe for the price. The only thing I didn't like in these was the traction on dust. I'm hoping the other colorways have better traction.
6	183	8.8	The Sole Brothers	2021-03-26	The Cosmic Unity is super nice! Similar to the KD 13, but better quality and a little bulkier. I feel like any position or type of player would enjoy playing in these. These will be in my rotation and I really liked playing in them.
29	183	8.6	MARKCHES	2021-05-06	The Nike Cosmic Unity is a great shoe. The cushion felt very good after breaking them in, and the materials feel premium. My only complaint about the shoe is the extra weight coming from the protruding heel cup.
30	184	8.6	Gavriel Rupert Dela Cruz [weartesters.com]	2021-06-21	Whether you�re a LeBron fan, a person who likes impact protection, or a newbie looking for a shoe that�ll get you started, I can definitely recommend these.
24	184	8.4	RicheeKim	2021-03-26	The LeBron 18 Low retails for $160 and they are a pretty good performer. The materials could've been a bit better, but from a performance standpoint, they are really good.
6	184	8.4	The Sole Brothers	2021-03-26	The LeBron 18 Low performs pretty well and I enjoyed playing in it. They will be in my rotation pretty loosely because I prefer other cushion setups, but overall these are solid.
18	185	9.0	AnotherPair [Youtube]	2021-04-23	Overall the New Balance Two Wxy is a great all-around performer that any type of player can play in!
6	185	8.8	The Sole Brothers	2021-04-23	Overall the New Balance TWO WXY is very minimal and lightweight on foot and performs very well. Most types of players and play styles should be able to play in these. I'd 100% recommend getting them.
7	186	9.5	Nelson Chan @Hoop and Life	2021-02-13	For $110, the PG 5 has a good amount of tech, really nice cushioning, and performs well in all aspects. There is some room for improvement when it comes to the quality of the materials.
24	186	8.8	RicheeKim	2021-02-13	The PG 5 is a very solid performer. I wish the materials were a bit nicer, but at a $110 price point, I can't complain!
6	186	8.8	The Sole Brothers	2021-02-13	The PG 5 is a very solid performer. They are lightweight and I never had to worry when I played in them. Overall, there weren't many bad things I could say about these.
1	186	8.6	NightWing2303 [weartesters.com]	2021-05-26	The PG5 is very good in most areas with the only downside being that the cushion didn't really perform well outdoors. They should be very good if you are playing indoors.
19	186	8.6	PureKicks	2021-09-13	The Nike PG5s cushion and traction are incredible. The materials perform nicely on the court as well. The shoe has just about everything you need from your hoop shoe.
29	186	8.2	MARKCHES	2021-05-06	Overall, the shoe has durable materials, is very supportive, and the cushion provides very nice impact protection. The traction actually grips very hard and is very stable to play in.
40	187	8.8	RunStretchTech	2022-06-14	Li-Ning's Way of Wade 9 Infinity is a pricey shoe, but it provides plenty of performance and durability for the price.
37	187	8.4	Foot Doctor Zach	2022-04-19	The Li-Ning Way of Wade 9 performs well for players looking for front-to-back speed, but they aren't the best for those that like to feel low to the ground.
6	187	8.2	The Sole Brothers	2022-02-18	The Li-Ning Way of Wade 9 Infinity is a solid all-around shoe. The traction bites, the cushion is alright, and the support is there too.
6	188	8.2	The Sole Brothers	2022-02-18	The Li-Ning Way of Wade 9 offers premium features and materials. It could be lighter, and the cushion could be a bit more responsive, but I have no complaints other than that.
3	189	7.6	Schwollo	2021-02-01	The Harden Volume 5 uses new tech for the sake of using new tech. At $130 these aren't super expensive, but they don't do anything better than their predecessors and that is generous. I don't recommend these.
6	189	7.0	The Sole Brothers	2021-02-03	I really wanted to like the Harden Volume 5, but I'm super disappointed with the performance of these. I'll probably never ball in them again, and I don't recommend them.
24	189	6.6	RicheeKim	2021-01-23	The Harden Vol. 5 retails for $130 and considering the problems I had, these are a no go. I highly recommend staying away from this shoe unless you are a big Harden fan.
7	189	6.5	Nelson Chan @Hoop and Life	2020-12-25	The Harden Vol. 5 comes in at $130 which isn't bad for a signature shoe but is too much considering the performance of these. Unless you're a diehard Harden fan I can't see anyone hooping in these.
36	190	9.4	Snkr Tech Talk	2024-06-02	The Nike Kobe 6 Protro is an outstanding performer. It takes a few hours to break in, but I love the traction, cushioning, and fit.
47	190	9.0	Lukas Simoner	2024-04-21	The Nike Kobe 6 Protro is my go-to shoe for games. I love the traction performance, and the cushioning moulds to my foot.
24	190	8.6	RicheeKim	2021-01-13	The Kobe 6 Protro is a great performer and I really enjoyed every single aspect of the shoe. The traction is amazing and the cushion feels nice and smooth. It's a good blend of court feel, responsiveness, and impact protection. I don't regret getting these at all.
29	190	8.4	MARKCHES	2021-05-16	I really liked playing in the Kobe 6 Protro. It is a low-profile shoe that has the right balance of responsiveness, bounciness, and impact protection. The only downside is that it's hard to get your hands on a pair.
24	191	8.4	RicheeKim	2021-01-23	The Harden Stepback 2 retails for $80 and I would definitely recommend it. You get solid all-around basketball shoes that perform better than the much more expensive Harden Vol. 5.
6	191	8.2	The Sole Brothers	2021-01-23	For only $80 retail, the Harden Stepback 2 is a great performer. They are a little bottom heavy and I had some heel slippage issues, but other than that, I really like this shoe!
6	192	8.6	The Sole Brothers	2021-01-23	The Why Not Zero.4 is a solid performer. I especially liked the double-stacked Zoom units!
24	192	8.4	RicheeKim	2021-02-03	For $130, I wouldn't recommend the Why Not Zero.4 just because of the inconsistent traction. It was just enough to cause me to not enjoy playing in the shoe. If you are a very linear player who doesn't make a lot of lateral movements you can probably get away with these.
19	192	8.0	PureKicks	2021-09-29	The Jordan Why Not Zero.4 does the job done, and it does it well. The materials and cushion excel, but the lack of a consistent laced-up fit leads to inconsistent support. If you can lace it up properly, the performance shouldn't be an issue.
32	193	8.0	ShadeSnSoleS [Youtube]	2021-08-21	The Jordan One Take 2 is a good shoe for the price. The cushion could be a bit lower to the ground, and the materials could be of better quality. But, they perform well enough at the $100 price tag.
6	193	6.8	The Sole Brothers	2021-03-21	Overall, the Jordan One Take 2 is a downgrade from the previous One Take. If you make a lot of lateral cuts, this isn't the traction for you. The materials feel cheaper than the previous model, and the cushion isn't as good either. It's definitely a disappointing follow-up to the great budget option that the Jordan Westbrook One Take was.
27	194	9.1	Jalique Gabay [weartesters.com]	2021-03-28	The forefoot cushioning makes this a great shoe for guards, but allows it to be versatile enough for bigs that like to use their quickness. If price isn't an issue, it's a really good shoe.
7	195	9.5	Nelson Chan @Hoop and Life	2020-12-18	At $160, you are getting a phenomenal hoop shoe. Pretty much every aspect of the shoe is really good. If I had to describe the Curry 8 in one word it would be fluid.
1	195	9.1	NightWing2303 [weartesters.com]	2021-05-26	I absolutely love the Curry 8. The traction is amazing and will work outdoors. It also features great cushioning with the new Flow technology. There are 2 main differences between the 8 and previous Curry shoes. The first is that the upper is much lighter on the 8 and the second is that the 8 gives you both cushioning and court feel.
24	195	9.0	RicheeKim	2020-12-20	The Curry 8 is $20 more expensive than the Curry 7 and it's totally worth it! The traction and the cushion are highlights of the shoe. If you pick up a pair of these I don't think you'll be disappointed.
6	195	8.8	The Sole Brothers	2020-12-31	The Curry 8 is awesome. The traction is insane and the cushion is super nice. If you are a guard you will definitely like playing in these!
3	195	8.2	Schwollo	2021-01-13	The Curry 8 was very close to being great. It was supposed to feel like a running shoe and it definitely did, but to a fault. I loved the traction and the shoe, but it fell short in too many categories to justify $160.
24	196	8.6	RicheeKim	2020-12-18	Personally, I like the D Rose 11 better than the 10. For $120 I don't think you'll be disappointed with these. Just watch out for the break-in period with the traction.
6	196	8.2	The Sole Brothers	2020-12-18	I'm not a huge fan of the D Rose 11 (or any D Rose since the 7). If you have wide feet and like a roomier fit then you will probably enjoy these more than I did. The cushion and traction are nice though.
27	197	9.2	Jalique Gabay [weartesters.com]	2020-12-31	The Nike Zoom Rize 2 is my personal favorite shoe to play in right now. It has all the necessary features to be enjoyed by bigger post players like Marc Gasol or Nikola Jokic while also appealing to faster, downhill-type guards like Russell Westbrook.
29	197	8.7	MARKCHES	2021-05-06	If you like minimal, lightweight, low-cut basketball shoes with a traditional look and lacing system, then the Nike Rize 2 is a great pick.
1	198	9.3	NightWing2303 [weartesters.com]	2021-02-01	I've been calling the Puma Clyde All-Pro the Kobe 9 reincarnate since the first time I played in them. The Kobe 9 was one of the best basketball shoes of all time and the Puma Clyde All-Pro is a better version of it!
6	198	9.2	The Sole Brothers	2021-02-01	The Puma Clyde All-Pro was one of my favorites shoes I've tested this year and it is only $130. Plus I feel like every type of player would enjoy hooping in these. I 100% recommend these.
24	198	9.2	RicheeKim	2021-03-10	The Puma Clyde All-Pro is a beastly performer and very well balanced!
29	198	8.6	MARKCHES	2021-05-06	Overall, I really like the All-Pro. The cushion and the upper are very good upgrades from the Hardwood. It's bouncy, responsive, and has plenty of impact protection. It's very stable and provides more than enough support. I'm really impressed with the Puma All-Pro.
6	199	8.8	The Sole Brothers	2022-02-19	The Li-Ning Way of Wade All City 9 is a shoe that's definitely going in my rotation. I love this shoe. It can accommodate every position and playstyle.
29	199	8.3	MARKCHES	2022-02-19	The Li-Ning Way of Wade All City 9 is a solid all-around sneaker. It has traction and cushion, and it's a fast shoe.
7	200	9.5	Nelson Chan @Hoop and Life	2020-11-17	The Kyrie 7 is the best hoop shoe in his line to date. Performance-wise, these do it all!
6	200	8.8	The Sole Brothers	2020-12-04	I really like the Kyrie 7. They feel like an upgraded version of the Kyrie 6 with just okay traction. A very good performer overall!
24	200	8.6	RicheeKim	2020-11-23	You are getting a very solid performer for $130. My only gripe with the shoe was the traction on dust, but overall the Kyrie 7 is a great hoop shoe.
9	200	8.0	KickGenius	2021-06-14	The Kyrie is a very dependable sneaker. There really isn't much that it truly excels at and there are better options. It is one of the most consistent lines Nike has to offer. Overall, the shoe is going to do what you want and need it to do.
19	200	8.0	PureKicks	2021-08-10	Like previous iterations, the Nike Kyrie 7 is a great performing shoe. Its traction is consistent, the cushion is responsive, and the fit and materials help to provide a good support system.
6	201	8.8	The Sole Brothers	2020-11-23	The Lebron Witness 5 is a really nice shoe to play in even for a budget shoe at $100. I would definitely recommend these.
24	201	8.6	RicheeKim	2020-11-17	For $100, the Lebron Witness 5 is a pretty solid shoe - I would definitely recommend them!
27	202	9.1	Jalique Gabay [weartesters.com]	2021-02-01	I'd recommend the Kawhi 1 to everyone who is okay with a little bit of break-in time. They will be good for any playing style and especially cater to bigger athletes looking for more support.
6	202	8.4	The Sole Brothers	2020-11-25	I didn't like playing in the Kawhi, especially for $160. If you need a rigid and supportive shoe then these are for you, but if not I'd stay away from these.
24	202	8.2	RicheeKim	2020-11-19	The Kawhi retails for $160 and is a great performer. For the price I expected a little more, but overall these are nice.
29	202	8.2	MARKCHES	2021-05-06	The New Balance Kawhi 1 is a good first entry in Kawhi's signature line. It's a supportive and secure shoe with a decent cushion that provides impact protection. The traction also grips nicely, and the compound appears to be durable.
24	203	7.8	RicheeKim	2020-11-19	Personally, I wouldn't play in the Kyrie Flytrap 4 because of the stiff cushion, but if you want a pair of shoes to beat up these aren't bad for $90.
6	203	7.6	The Sole Brothers	2020-11-19	I'd recommend not getting the Kyrie Flytrap 4. I'd suggest the Flytrap 3 instead just because of the traction and cushion.
6	204	8.8	The Sole Brothers	2020-11-02	This is my favorite LeBron to play in! The only drawbacks are the weight, lateral stability, and court feel. Everything else performed well and I enjoyed playing in it. I'd 100% recommend these.
1	204	8.8	NightWing2303 [weartesters.com]	2020-12-18	The Lebron 18 is a bad boy with an amazing cushion and solid traction. The lateral instability was the only thing holding them back from being an all-out beast.
19	204	8.2	PureKicks	2021-05-31	The LeBron 18 provides plenty of cushioning but is a heavy shoe because of it. Despite this, it's a good shoe that can fit a variety of play styles if you can handle the support and lack of court feel.
7	204	8.0	Nelson Chan @Hoop and Life	2020-10-09	The LeBron 18 is definitely a big boy shoe. The cushion is by far the best aspect of the shoe and the traction is solid too. The digging of the tongue into my foot and lateral stability were issues though.
24	204	8.0	RicheeKim	2020-10-24	Overall for $200 I wouldn't recommend the LeBron 18. The tongue was pretty uncomfortable, the traction wasn't great, and the lateral containment was an issue. Pick these up if you want a crazy cushion setup.
9	204	7.6	KickGenius	2021-06-14	I would not recommend this shoe to just about anyone. I'd only say get these if you need the extra cushion underfoot and are in dire need of impact protection. It really depends on your play style. Based on my personal preference, however, I didn't like the lack of court feel and responsiveness of the LeBron.
6	205	9.4	The Sole Brothers	2020-10-19	The Jordan 35 comes in at $180 which is definitely expensive, but if you want a great performer these are it. This shoe excels in all areas and I think everyone can play in it.
1	205	9.1	NightWing2303 [weartesters.com]	2020-10-17	The Jordan 35 is an updated version of the 34 and excels in almost every category. Unfortunately, the fit issue with the nylon cables ruined my ability to be comfortable in the shoe.
7	205	9.0	Nelson Chan @Hoop and Life	2020-10-25	Overall, the Jordan 35 performs really well. It has better cushion and materials than the 34, but I didn't like the eclipse plate as much because it was uncomfortable at times.
24	205	9.0	RicheeKim	2020-11-01	The Jordan 35 retails for $180 which is pretty steep, but this is a really nice shoe that performs well. Everything about the shoe is amazing besides the traction on dust. Overall, it was extremely fun to play in the AJ XXXV.
29	205	8.3	MARKCHES	2021-05-06	The strong points for the sneaker are that the forefoot Zoom unit keeps you close to the ground while staying bouncy, and the upper materials are comfortable and do a good job of keeping you contained. That being said, there are some inconsistencies with the traction, and the insole takes a little bit of breaking in. Overall, the Jordan 35 is an improvement from the 34.
24	206	8.8	RicheeKim	2020-10-21	For $110 the Dame 7 is definitely a recommended pickup. I don't think you'll be disappointed!
6	206	8.6	The Sole Brothers	2020-10-31	I really enjoyed playing in these! Everything performed well and I think every position player can play in these.
24	207	8.4	RicheeKim	2020-09-13	The Kyrie Low 3 retails for $110 and I think you get a pretty solid performer for the price. The only issues I had with these were the narrowness because of my slightly wide feet and the lack of impact protection.
6	207	8.2	The Sole Brothers	2021-03-10	Overall the Kyrie Low 3 is very similar to the Kyrie Low 2, but slightly improved. I liked the materials better and they were more comfortable.
1	208	8.7	NightWing2303 [weartesters.com]	2020-10-06	The RS Dreamer is one of the best looking hoop shoes of 2020. If PUMA can improve their cushion setup then they will be a serious contender to Nike, Jordan, and Adidas. You will be satisfied if you pick up the RS Dreamer!
24	208	8.2	RicheeKim	2020-09-15	For $120, I'd say go get a pair of the RS Dreamer because these are really fun to play in. Overall these are a solid pair of shoes if you like feeling light on your feet.
6	208	8.2	The Sole Brothers	2020-09-15	The RS Dreamer is a solid all-around shoe. The great traction and support make for a shoe that almost anyone can play in. My only issues were that they are pretty heavy and the cushion setup isn't great.
24	209	8.4	RicheeKim	2020-09-22	Overall the LeBron Soldier 14 is a very solid performer for $140 and a lot of fun to play in.
6	209	8.4	The Sole Brothers	2020-09-22	The Lebron Soldier 14 wasn't my favorite shoe to ball in because of the traction and the stiff heel cushioning. Not the best fit for guards, but if you're a big dude then I think these would be pretty nice.
29	209	8.2	MARKCHES	2021-05-06	The Nike LeBron Soldier 14 is a solid performing shoe. Despite not being a mainline LeBron signature, Nike didn't cut any corners on the cushion in this model. The traction is also what you'd come to expect from the Soldier line. It's grippy and durable. Overall, I really enjoyed playing in this shoe.
1	210	8.6	NightWing2303 [weartesters.com]	2020-09-30	Overall, I think Under Armour did very well with the Embiid 1. The traction and the cushion were high points of the shoe and everything else is solid all-around. Any player and position can wear these and they're good for outdoor use too.
6	210	8.2	The Sole Brothers	2020-10-02	I really enjoyed playing in the Embiid 1! It's a really supportive and responsive shoe that you never have to worry about. Solid all around and will be loosely in my rotation.
7	210	8.0	Nelson Chan @Hoop and Life	2020-10-24	The Embiid 1 is a solid shoe especially for the price of $120. Every aspect of these performed pretty well and they were ready to go out of the box. Any position or player can play in these.
29	210	8.0	MARKCHES	2021-05-06	The use of Micro G and HOVR provided a great cushioning setup that provided plenty of impact protection while still being bouncy. The traction played well after breaking in, and the materials feel nice when playing. Although, I do wish they were a bit more premium. Overall, the Embiid 1 is built well for performance basketball.
24	210	7.8	RicheeKim	2020-10-04	The Embiid 1 retailed for $120, but I can't recommend them because of the traction issues I had. If you play on really clean courts then you should be fine, but otherwise, you'll probably have issues.
7	211	9.0	Nelson Chan @Hoop and Life	2020-10-17	The Kybrid S2 is a well-performing hoop shoe. I liked the combination of the Kyrie 4, 5, and 6! The cushion and the traction could have been a little better though.
24	211	8.4	RicheeKim	2020-10-17	The Kyrie Kybrid S2 is a great performing shoe besides the traction. I wish they used the traction and cushion setups from the Kyrie 5 or 6 because I think those were better. I would recommend these if you play on mostly clean courts.
7	212	9.0	Nelson Chan @Hoop and Life	2020-08-02	The D.O.N. Issue #2 definitely has some improvements over the #1, but some aspects were worse such as the traction. You're getting solid lockdown and support with these and a responsive cushioning setup. For the price of $100, you're getting a pretty good performance hoop shoe.
1	212	8.6	NightWing2303 [weartesters.com]	2020-11-06	The Adidas D.O.N. Issue 2 is a surprise hit indoors for me. They are a great bang for your buck shoe at only $100!
24	212	8.0	RicheeKim	2020-09-14	I had fun playing in these while I could tolerate the pain in the forefoot, but eventually I just had to switch shoes. These were solid for the price and are a good pickup if you don't have the same fit issue as me.
6	212	7.6	The Sole Brothers	2020-08-29	It is kind of hard for me to recommend the D.O.N. Issue #2 as I didn't really enjoy playing in these. The cushioning was good, materials were a little too thick, and they are pretty heavy. If you don't mind bigger and bulkier shoes and want something that is really supportive with pretty nice cushioning than you should give these a try. They definitely weren't for me though.
7	213	9.0	Nelson Chan @Hoop and Life	2020-08-04	For $120, the Zoom Freak 2s is an affordable signature sneaker that offers a good amount of tech. It doesn't really have a weak point and should be good for all types of hoopers whether you are a guard or a big man. Definitely an upgrade over the Zoom Freak 1s!
6	213	8.4	The Sole Brothers	2020-08-21	The Nike Zoom Freak 2 feels extremely light and minimal on foot and I really like it. It is one of those shoes you can put on and just focus on playing ball regardless of position. It isn't clunky or heavy on foot and just feels smooth. The only downside was that there isn't a lot of impact protection provided from this cushion setup. This shoe performs really well for the price!
29	213	8.2	MARKCHES	2021-05-06	Nike really listened and made positive changes in the Zoom Freak 2. The support is better and your foot feels secure and locked in. The cushion is improved with the forefoot Zoom unit, and the traction grips well on most court conditions.
24	213	8.0	RicheeKim	2020-08-07	For $120, I think you're getting a fantastic shoe with the Nike Zoom Freak 2. It's a perfect shoe for guards because you'll feel quick and responsive on your feet. If you are looking for a lot of impact protection this isn't the shoe for you. If you want to pick up a pair, I think you won't be disappointed!
25	213	7.5	JAHRONMON [Youtube]	2020-11-25	The inconsistent traction never allowed me to feel safe in the Nike Zoom Freak 2. There wasn't anything else that was exciting or stood out in this shoe either.
24	214	8.6	RicheeKim	2020-08-07	These retail for $150 which is $30 less than the original Adidas N3XT L3V3L. I think this is a step in the right direction and I you're getting a great performer for the price. This is one of the best implementations of Lightstrike and overall a unique shoe that is worth it.
6	214	8.6	The Sole Brothers	2020-08-19	Overall I was very surprised with the Adidas N3XT L3V3L 2020. I didn't think I would like them, but I got to playing and I really really like it. Everything was really nice and comfortable, but I did miss laces a bit. I would definitely recommend these and think that any position could play in them.
6	215	8.3	The Sole Brothers	2020-08-17	For $80, this is a beastly performer. This is the best budget model available right now, even better than the KD Trey 5 VIII.
24	215	7.6	RicheeKim	2020-08-17	For only $80, I can't complain. The materials feel budget and the Renew cushioning isn't as nice as in the KD Trey 5 VIII. But the fit, traction, and support are good.
11	216	8.8	Duke4005 [weartesters.com]	2020-11-25	The Adidas Pro Boost Low is now my go-to hoop shoe for 2020. The traction, cushion, and fit are topped by none. I couldn't think of a bad thing about this shoe.
6	216	8.4	The Sole Brothers	2020-09-07	Nothing stood out too much on the Adidas Pro Boost Low for me, but it performs like a beast. They were great in every category. If you're looking for a supportive, minimal shoe that you don't have to worry about than these are it. I'd 100% recommend these.
24	216	8.0	RicheeKim	2020-08-17	At $110, the Adidas Pro Boost Low is definitely a good deal. I didn't expect a firm, responsive cushion setup out of these, but it wasn't necessarily a bad thing. Overall these have you covered if you want to feel light on your feet and quick.
6	217	7.0	The Sole Brothers	2020-09-01	Don't get it! My feet hurt a lot because of the super minimal cushioning. The traction isn't good, the materials are meh and you can get much better shoes - even at a budget price of $100.
1	217	7.0	NightWing2303 [weartesters.com]	2020-09-01	I didn't get to play in these and I do like the design and the colorways, but for only $10 more you can get the PG4 with a much better cushioning and more premium materials.
24	218	8.8	RicheeKim	2020-09-09	The Jordan React Elevation was a great pickup for $120. They were very, very fun to play in and I highly recommend them.
6	218	8.6	The Sole Brothers	2020-09-07	These were a solid performer at a very good price. My favorite part was the cushion and overall the Jordan React Elevation performed well in every category. Pretty much every position can play in this shoe.
1	219	8.9	NightWing2303 [weartesters.com]	2020-08-26	Overall the Nike Zoom BB NXT is a fun shoe to play in with fantastic traction and cushion! They aren't perfect, but its a good improvement step for Nike and a refreshing change of pace. I do wish they had been able to fix the lateral Zoom Air and lacing cable issues prior to releasing.
6	219	8.4	The Sole Brothers	2020-08-04	Almost everything about this shoe is awesome: the traction, the heel-to-toe-transition, the materials. But Nike just did too much with the React cushioning - it's super soft and comfortable but I didn't feel secure on lateral cuts because the midsole is so thick and unstable.
24	219	8.4	RicheeKim	2020-08-03	The Nike Air Zoom BB NXT is a very comfortable shoe with interesting new tech. The cushioning is insane and I really liked the traction too. The only downsides are the lacking stability on lateral cuts and the hefty retail price of $180.
7	219	8.0	Nelson Chan @Hoop and Life	2020-07-22	The Nike Air Zoom BB NXT is an above-average sneaker that is very comfortable and features awesome cushioning and traction. Materials and lockdown are solid but stability is an issue. Overall, a good pick for big hoopers looking for a lot of impact protection, but at a price of $180, there are better and more affordable options on the market.
29	219	8.0	MARKCHES	2021-05-06	The Nike Zoom BB NXT has an amazing cushion setup that feels plush and bouncy. It's a great all-around sneaker to hoop in, and it truly reminds me of the early setups of the Hyperdunk.
24	220	8.4	RicheeKim	2020-07-22	The Under Armour HOVR Havoc 3 retails for $110 and I think you're getting a pretty solid performer for the price. I wish they had a little nicer materials and more impact protection, but everything else on the shoe was fine.
6	220	8.4	The Sole Brothers	2020-07-31	Overall the HOVR Havoc 3 was a solid performer for $110! It was great in pretty much all categories and didn't have any real low points.
6	221	8.6	The Sole Brothers	2020-06-19	The performance of the Adidas BYW 2.0 was really good. If you want a comfortable, supportive shoe with a nice cushioning setup and you don't mind the slightly too expensive retail price, then go for it!
24	221	8.4	RicheeKim	2020-08-02	For $160, this is not the best shoe in this price range. But if you are a fan of a more responsive Boost cushioning or you can find this shoe on a discount - I would highly recommend it. This is a great performer and one of the best team models Adidas has put on the market in a while.
29	221	8.2	MARKCHES	2021-05-06	I really like how the BYW 2.0 plays. It's low to the ground and still has impact protection because of the Boost. It's also well-ventilated and very stable.
29	222	8.3	MARKCHES	2021-05-06	The Jordan One Take is a good option for anyone not looking to spend money on a signature shoe. It has solid, responsive cushioning, and the traction performed very well, even on dusty courts.
6	222	8.2	The Sole Brothers	2020-06-19	For $100, the Jordan Westbrook One Take is incredible. If the traction held up better, it'd be amazing. That's my only gripe. The cushion was great for a budget model. I felt fast and responsive. The materials feel nice, and the support is there. There isn't much this shoe is missing.
6	223	8.2	The Sole Brothers	2020-08-02	The Converse G4 are good performers that I enjoyed playing in. Personally they weren't as fluid or smooth as I would have liked, but I feel like all players can play in this shoe.
24	223	8.2	RicheeKim	2020-08-02	For $120 I would say the Converse G4 is a pretty good shoe. You get a unique shoe that performs well overall and I don't think you'll be disappointed unless you need a lot of impact protection.
7	224	9.0	Nelson Chan @Hoop and Life	2020-04-17	The performance is off the charts: cushioning is awesome and traction is good too. The materials could have been a little bit more premium and supportive. Overall, the KD 13 is very similar to the KD12 and a phenomenal performance hoop shoe.
24	224	8.8	RicheeKim	2020-07-13	The KD 13 is a great performer! The materials are just okay, but everything else is really solid.
19	224	8.8	PureKicks	2020-08-10	We'll say it again... arguably the greatest cushioning setup we've tested at PureKicks! Overall, this is the greatest out of box experience we've ever had. Don't miss out and make sure you cop these!
29	224	8.8	MARKCHES	2021-05-07	The Nike KD 13 improves on the KD 12 by improving stability and cushioning. It's one of my top shoes for 2020 and really has no flaws.
6	224	8.6	The Sole Brothers	2020-06-04	I love this shoe! Traction seemed good, cushioning is incredible and the fit was perfect for me
1	224	8.5	NightWing2303 [weartesters.com]	2020-07-23	I really enjoy the Nike KD 13, but they�re not perfect. Cushioning and traction are awesome but containment and stability leave a bit to be desired.
24	225	8.4	RicheeKim	2020-07-22	For only $90 retail, this is a really nice shoe. The cushion setup is great and traction works really well. Overall, the KD Trey 5 VIII doesn't feel like a budget model at all - I'd highly recommend picking these up if you're interested in them.
6	225	8.0	The Sole Brothers	2020-07-22	For $90 this has to be one of the best budget shoes I have tried. The KD Trey 5 VII is super light and minimal and you feel very quick playing in these. This shoe doesn't feel cheap and the only downside for me was the support. Overall, a great shoe for the price and should work well for players who want to hoop outdoors.
1	226	8.2	NightWing2303 [weartesters.com]	2020-03-07	Overall, I found that the Nike Adapt BB 2.0 was better than the original Adapt BB, but I still don�t feel that these are necessarily for me.
6	226	8.2	The Sole Brothers	2020-03-03	Traction, cushioning, support, and fit work well. But the cheap materials, the weight, and the bulkiness made it so that I couldn't enjoy playing in the Adapt BB 2.0.
29	226	8.2	MARKCHES	2021-05-06	The cushion and support are fantastic, but the traction can be inconsistent on dustier courts. Despite this, I still enjoyed playing in the Nike Adapt BB 2.0.
24	226	7.8	RicheeKim	2020-02-27	This shoe is nowhere near worth the $400 price tag.
24	227	8.4	RicheeKim	2020-03-07	$170 is a steep price but I don't think you will be disappointed if you pick up the Lebron 17 Low.
6	227	8.4	The Sole Brothers	2020-03-07	The traction was really good and the cushioning was pretty damn nice. Overall, the Lebron 17 Low is a solid performer but probably not worth $170, especially considering the cheap upper materials.
29	227	8.4	MARKCHES	2021-05-06	The Nike LeBron 17 Low is an impressive performing sneaker. The traction is excellent, and the materials do a good job of helping you feel supportive. The cushion is not as plush as the regular LeBron 17, but they do offer more stability.
6	228	8.4	The Sole Brothers	2020-06-19	I was pleasantly surprised. For $100 retail, the Adidas Pro Model 2G performs really well and is a super solid shoe that will work for most player types!
3	228	8.2	Schwollo	2020-07-14	The updated version of the classic Pro Model checks all the boxes compared to modern basketball shoes and gives you good traction, fun cushioning, solid support & stability, and a good fit.
7	229	9.0	Nelson Chan @Hoop and Life	2020-01-03	Everything about this shoe is super solid. If you like the flashy and futuristic design this is a great shoe to pickup!
6	229	8.6	The Sole Brothers	2020-01-03	The Why Not Zer0.3 is a really good performer. I like it a lot better than the first two models, but I still would have preferred it to be a little lighter and more minimal-feeling.
19	229	8.6	PureKicks	2020-04-01	This is definitely my favorite Westbrook sneaker so far thanks to the amazing Zoom Turbo cushioning and aggressive traction pattern. But the main attraction of the shoe is the deconstructed style that looks amazing!
24	229	8.2	RicheeKim	2020-01-14	The Why Not Zer0.3 is not a terrible performer overall, but the issues with lateral traction are a dealbreaker for me.
15	229	7.8	Another Pair [weartesters.com]	2020-02-09	If it wasn't for the horrible traction in my colorway I could have seen myself playing a whole lot in the Why Not Zer0.3.
1	230	9.1	NightWing2303 [weartesters.com]	2020-01-14	Ten years later and the Nike Kobe 5 is still just as bad ass as it was before.
7	230	9.0	Nelson Chan @Hoop and Life	2020-02-04	This shoe truly is an updated and improved version of the Kobe V. I really like what Nike did by taking all the good things from the OG and updating traction and cushioning.
6	230	8.8	The Sole Brothers	2020-02-04	I really enjoyed playing in the Kobe 5 again! It takes a little time to break-in, but then you get a super lightweight, minimal, and super comfortable basketball shoe.
3	230	8.8	Schwollo	2020-02-17	Nike improved the traction of the OG Kobe 5 and changed it up with the Zoom Turbo cushioning. I give it a first-team rating!
36	230	8.4	Snkr Tech Talk	2025-03-12	The Nike Kobe 5 Protro is one of my favourite shoes right now. The standout features are the traction and the support.
24	230	8.2	RicheeKim	2020-01-19	This is still a great performer! But $180 is a little steep for the tech you get.
6	231	8.8	The Sole Brothers	2020-02-04	I love the performance of the PG4. This is one of my favorite shoes to play in right now! Probably the most comfortable basketball shoe you can get right now.
19	231	8.6	PureKicks	2020-03-18	The cushioning is perfect, the traction is beastly, and material, fit, and support are all above-average. If you need new shoes, I recommend the PG4!
1	231	8.3	NightWing2303 [weartesters.com]	2020-02-04	Overall, the Nike PG 4 was very solid, but not as well rounded as I would have liked. The cushion is super comfortable but the containment and support are lacking a little.
3	231	8.2	Schwollo	2020-04-30	The PG4 is a good solid shoe with no major flaws at a fair price, but it isn�t something that I�d say wow, I want to hoop in these today.
7	231	8.0	Nelson Chan @Hoop and Life	2020-01-14	Traction and cushioning are really good but materials and especially support are a little disappointing.
24	231	8.0	RicheeKim	2020-02-04	For $110, this is a really good shoe. I like the traction, the cushioning is amazing, and for a signature sneaker, the PG4 is super affordable!
6	232	7.4	The Sole Brothers	2020-01-14	For $80 it's a good performer, but not as good as the Kyrie Flytrap 2.
24	232	7.0	RicheeKim	2020-02-04	The cushioning is rock hard and the materials feel cheap. I would only recommend these for outdoor use.
15	233	9.5	Another Pair [weartesters.com]	2020-02-29	Overall the Way of Wade 8 was fire! These are just a great hoop shoe and the traction was finally superb. These are a double thumbs up.
1	233	9.2	NightWing2303 [weartesters.com]	2020-02-18	Overall, the Way of Wade 8 surprised me and was a great shoe to play in. They are definitely expensive, but I feel like I got what I paid for in the materials and Carbon Fiber. If these sound interesting to you, I'd recommend trying them out and you might be pleasantly surprised.
6	233	9.2	The Sole Brothers	2020-03-18	Overall, I fully enjoyed playing in this shoe and it will definitely be in my rotation. It is a very responsive shoe with great traction, cushion, and stability to back it up. The craftsmanship of the Way of Wade 8 is incredible.
27	234	8.3	Jalique Gabay [weartesters.com]	2020-02-18	It's not my favorite hoops shoe, but it might work for guards with wider feet who are looking for a very responsive shoe.
6	234	7.6	The Sole Brothers	2020-02-18	I don't recommend the UA Spawn 2. Cushioning was really bad, traction wasn't good, and the fit didn't work for me at all. Even at $100, there are much better performers out there!
24	235	8.2	RicheeKim	2020-02-20	This is a great performer, especially for a budget model! I had a lot of fun playing in the Harden Stepback.
6	235	7.8	The Sole Brothers	2020-02-20	For an $80 shoe, this is a pretty good performer! Other than the traction on dust and the firm cushioning, I enjoyed the Harden Stepback a lot.
24	236	8.6	RicheeKim	2019-12-18	If you are only playing on clean courts, I can absolutely recommend the Dame 6 because it's a great performer. If you play on dusty courts be prepared to wipe or better stay away.
6	236	8.4	The Sole Brothers	2019-12-17	The Dame 6 is probably my favorite shoe in the Dame series. The Lightstrike cushioning is super nice, traction is really good on clean courts and you get all that for a very affordable price!
19	236	8.2	PureKicks	2020-02-04	The Dame 6 is super light, comfortable and provides good traction. Unfortunately, it suffers a little from sizing issues and slightly lacking lockdown.
15	236	8.0	Another Pair [weartesters.com]	2019-12-26	Overall, I'm a fan of the Dame 6 and I think it's worth $110. But the traction of the translucent outsole and the durability of the upper material could be better.
29	236	8.0	MARKCHES	2021-05-07	The Adidas Dame 6 is a good option for the price. The Lightstrike cushion does a good job of balancing bounce with responsiveness and court feel. It feels quick to play in because it is lightweight, but keep in mind that the traction can be inconsistent on dirtier courts.
3	236	7.6	Schwollo	2019-12-20	Traction could be a little better and the tippy and unstable outsole might be a non-issue for a lot of players but is a no-go for my oft-injured ankles. Other than that, the Dame 6 plays very well in every category.
1	236	6.6	NightWing2303 [weartesters.com]	2020-01-03	Traction and support should have been much better. Fit needs work and the materials are as cheap as they come. I can't recommend the Dame 6.
25	236	6.4	JAHRONMON [Youtube]	2020-02-04	I like the looks of the Dame 6, but it just doesn't play good. The Lightstrike foam worked well, but the rest of the shoe was average at best and the traction was legitimately bad.
6	237	8.6	The Sole Brothers	2019-12-26	For $160, you get Nike's best tech: full-length Zoom Air, Flyknit materials and FlyEase lacing system.
24	237	7.8	RicheeKim	2019-12-26	The cushioning and materials are great, but traction and fit were problematic for me. Overall, I couldn't enjoy playing in these shoes because they are just too narrow for my feet.
18	237	6.8	AnotherPair [Youtube]	2020-01-04	These are nice shoes for casual wear, but don't wear these on-court!
1	238	8.7	NightWing2303 [weartesters.com]	2019-10-30	The Under Armour Curry 7 is a beast on-court.  Traction and support are awesome, materials work perfectly, and they fit me like a glove. Only the firm cushioning is slightly disappointing.
6	238	8.4	The Sole Brothers	2019-11-15	The performance of the Under Armour Curry 7 is really nice, especially if you are looking for a quick, minimal low-top shoe. But for $140, the materials and the cushion technology feels a little underwhelming.
19	238	8.4	PureKicks	2020-02-04	The traction is outstanding and everything else is perfectly good. Under Armour really needs to share the secret to their rubber compound!
24	238	8.2	RicheeKim	2019-11-21	This is a great performer with some slight problems: the materials don't feel worthy of a $140 signature model and the cushioning is very firm.
3	238	8.0	Schwollo	2019-11-21	The Curry 7 is a solid all-around shoe with cushioning on the firmer side and some feedback/bounce.
6	239	8.8	The Sole Brothers	2019-11-03	Puma really surprised me with the Puma Clyde Hardwood. For $120, I 100% recommend this shoe!
1	239	8.8	NightWing2303 [weartesters.com]	2019-11-13	PUMA really nailed it with the Clyde Hardwood. A nice blend of old school leather and modern performance with beastly traction and decent cushioning.
29	239	8.6	MARKCHES	2021-05-07	The Puma Clyde Hardwood is a great shoe. It's low to the ground, responsive, and has amazing traction. The materials are nice, and they help to create a solid fit. The only thing I wished Puma did was uncage the foam a little more.
1	240	9.2	NightWing2303 [weartesters.com]	2019-12-17	This is one of the best basketball shoes of 2019!
24	240	8.8	RicheeKim	2019-11-20	This is a great performer. I would highly recommend picking up a pair, Kawhi Leonard and New Balance really knocked it out of the park!
6	240	8.6	The Sole Brothers	2019-11-06	Incredible! I really like the shoe, especially the super comfortable cushioning.
3	240	8.0	Schwollo	2020-01-02	I loved the traction and the fit is pretty good, but cushioning is too dense for my liking and containment is seriously lacking.
1	241	9.1	NightWing2303 [weartesters.com]	2019-11-19	The Nike Kyrie 6 is a great shoe and an evolution of the Kyrie 5 with a few small improvements that are noticeable once you play in them.
2	241	9.1	Stanley T. [weartesters.com]	2019-11-27	If you liked the Kyrie 4 or 5, you are going to love the Kyrie 6!
24	241	9.0	RicheeKim	2019-11-28	For $130, I would highly recommend getting a pair of Kyrie 6's! These are one of the best performers of the year!
6	241	8.8	The Sole Brothers	2019-11-28	I really liked the Kyrie 6, this shoe feels and plays like a Kyrie. The only downsides are the slight bulkiness and the traction on dusty courts.
3	241	8.8	Schwollo	2020-04-07	The Kyrie 6 is one of the best all-around shoes I�ve played in for a long time. It reminds me of the Hyperdunk line as it will work for every player type.
29	241	8.6	MARKCHES	2021-05-07	The Nike Kyrie 6 is an impressive performance shoe. It feels quick and provides great responsiveness. The cushion is bouncy in the forefoot while still feeling low to the ground, and the traction is amazing. There really aren't many weaknesses in the Kyrie 6.
19	241	8.0	PureKicks	2019-11-20	We really appreciate the great traction and support and good cushioning. But fit and materials show some room for improvement.
1	242	9.4	NightWing2303 [weartesters.com]	2019-09-19	This is the best Air Jordan game shoe since the Air Jordan XX9. They fit well, respond perfectly and the cushioning is amazing.
19	242	9.2	PureKicks	2019-11-13	The Air Jordan 34 is the highest-rated sneaker in the history of our youtube channel Perfect fit, perfect cushioning and near-perfect traction. It literally does everything well!
6	242	9.0	The Sole Brothers	2019-09-26	I love playing in the AJ 34. This shoe feels like a Ferrari!
24	242	9.0	RicheeKim	2019-11-06	This is the best performing Jordan model in the last few years - definitely worth the $180 price tag! This shoe is super fun to play in and should work for big guys as well as guards.
4	242	9.0	Zac Dubasik [SoleCollector.com]	2019-12-17	The AJ 34 is a great all-around shoe that�s easy to recommend for anyone willing to pay its $180 price tag.
29	242	9.0	MARKCHES	2021-05-07	I really liked the Jordan34. It's one of the best Jordan's in the signature line. The forefoot is bouncy, but remains responsive. They did a very good job with materials that are not only lightweight, but also supportive.
11	242	8.8	Duke4005 [weartesters.com]	2019-11-16	Combining fantastic cushioning, great traction, and a streamlined look - the Air Jordan 34 is worthy of the GOAT.
3	242	8.8	Schwollo	2019-10-18	Finally, a new Jordan that does everything well and gets JB fans excited again! If you are looking for new hoops shoes, these are a safe bet because it performs well in every category, except price.
25	242	8.8	JAHRONMON [Youtube]	2019-11-16	The Jordan 34 is easily my favorite basketball sneaker of 2019! This shoe feels like a direct successor to my favorite shoe ever, the AJ 29.
24	243	9.0	RicheeKim	2019-10-06	The Lebron 17 is an awesome shoe! Strongly recommended if you are looking for the best cushioning setup available and you can afford the steep $200 retail price.
1	243	9.0	NightWing2303 [weartesters.com]	2019-10-11	If it wasn't for the inconsistent traction I would have really enjoyed the Lebron 17. I liked everything, loved some things, but disliked the traction.
6	243	8.8	The Sole Brothers	2019-10-13	The Lebron 17 is a great shoe - one of our favorite Lebrons. Insane impact protection, incredible traction - there's really nothing to complain about.
19	243	8.8	PureKicks	2019-11-06	This might be the best shoe in the Lebron series!
29	243	8.8	MARKCHES	2021-05-07	The Nike LeBron 17 are very fun to play in. The combination of the traction and cushion was beastly. It is an impressive shoe 17 models into the LeBron signature lineup.
25	243	7.6	JAHRONMON [Youtube]	2020-03-18	The Lebron 17's just aren't going to be for everyone. How high you sit off of the ground is really jarring, but over time I did start to appreciate the Knitposite upper and the cushioning system that is pretty explosive. The Lebron 17 features the largest Air unit ever to be in a basketball sneaker, so if that caters to your playing styles I'd say check these out.
27	244	9.2	Jalique Gabay [weartesters.com]	2019-10-10	The Harden Vol. 4 is fast, controlled, and has been a personal joy to play in. In my personal experience, this is a top performer!
11	244	9.1	Duke4005 [weartesters.com]	2019-12-20	The Harden Vol. 4 is a nice shoe - the traction is good on most surfaces, Lightstrike works but isn�t overly bouncy or plush, and fit and support are good. But overall,  I can't help but feel the Harden Vol.4 took a step back from the Vol.3.
6	244	8.8	The Sole Brothers	2019-10-06	The Adidas Harden Vol. 4 is a really good performer! A perfect shoe for guards looking for a low-to-the-ground and supportive basketball shoe.
3	244	8.8	Schwollo	2019-11-03	I think this is the best Harden so far! Outstanding traction when clean, great fit right out of the box, very stable and $10 cheaper than the V3.
1	244	8.7	NightWing2303 [weartesters.com]	2019-10-10	I loved everything about the Harden 4 except the Lightstrike cushioning which was a little too soft and the elastic band in the midfoot which felt a little too tight and snug.
19	244	8.6	PureKicks	2019-11-18	I am not a low-top fan, but this is the best low-top I've played in a long time!
29	244	8.6	MARKCHES	2021-05-07	The Adidas Harden Vol. 4 is a great performer. Adidas used something other than Boost for the first time in a Harden shoe, and the Lightstrike actually felt good. It's lighter than Boost but still felt bouncy. Combined with its consistent traction and solid fit, the Harden Vol. 4 doesn't disappoint.
24	244	8.4	RicheeKim	2019-11-19	I really enjoyed playing in the Harden Vol. 4. If you are not looking for a ton of impact protection, this is a great performer!
1	245	8.2	NightWing2303 [weartesters.com]	2019-12-17	The D Rose 10 is much better than the D Rose 9 and will make any Derrick Rose fan happy. But if you are looking for the best bang-for-the buck shoes, there are much better options out there.
24	245	8.0	RicheeKim	2019-10-10	Me personally, for $140, I wouldn't pick these up because there are much better performers in the same price range.
6	245	7.6	The Sole Brothers	2019-10-21	$140 for budget tech - I don't think the D Rose 10 is a good deal.  The only thing I really liked about these shoes is the cushioning. I won't be playing a lot in the D Rose 10.
1	246	9.2	NightWing2303 [weartesters.com]	2019-10-24	The ANTA KT signature line is very consistent, similar to Nike's Kobe signature line. Even with changing aesthetics, the performance of the shoe remains very similar. The KT5's highlights are traction and cushioning, but overall stability and fit are great as well. If you like these I would definitely recommend them as they should work great for any position or style of play.
29	246	8.6	MARKCHES	2021-05-07	For the price, the Anta KT5 is a great performing sneaker. It offers quite the bang for your buck with excellent cushion and traction. The materials are also comfortable and help provide solid support.
6	246	8.5	The Sole Brothers	2019-10-10	For $130 you're getting good materials and a comfortable signature shoe with the Anta KT 5 that is a very good overall performer. There are no real weaknesses and I really enjoyed playing in it!
6	247	8.0	The Sole Brothers	2019-10-11	The Lebron Witness 4 is a very solid performer - especially for $100. If the traction was a little better, this would be a complete banger!
24	247	7.6	RicheeKim	2019-10-11	For a $100 you get a decent performer, but even at this price range there are much better shoes out there. I didn't like the cushioning and had some issues with the traction - I can't really recommend these.
27	248	9.0	Jalique Gabay [weartesters.com]	2019-11-27	The Jumpman 2020 offers signature-worthy performance for a much lower price.
6	248	8.4	The Sole Brothers	2019-11-27	For $110, this is a really good performer - highly recommended! Just watch out if you are playing a lot on really dusty courts.
24	248	8.2	RicheeKim	2019-11-27	For $110, this is a really nice performance basketball shoe! The traction is solid on clean courts and the cushioning was surprisingly good.
1	249	9.2	NightWing2303 [weartesters.com]	2019-08-22	The Nike Zoom Rize is an outstanding shoe that works for all types of players.
29	249	9.0	MARKCHES	2021-05-07	Overall, the Nike Zoom Rize is a great performer that is definitely worth the price. You get a very nice cushion setup, amazing traction, and solid support.
24	249	8.8	RicheeKim	2019-08-23	I would highly recommend the Nike Zoom Rize. I really loved the traction and especially the cushioning - this is the best implementation of Zoom and Phylon ever!
6	249	8.4	The Sole Brothers	2019-08-22	I really enjoyed playing in the Nike Zoom Rize because of the good traction and amazing cushioning. This shoe will work very well for big guys, but for my style of play, the court feel could have been a little better and the shoe was a little too bulky.
1	250	8.7	NightWing2303 [weartesters.com]	2019-09-12	I enjoyed the Kobe AD NXT FastFit much more than I expected. The shape of the outsole is more traditional compared to the Kobe AD NXT 360, the traction durability is better, and the Fast Fit system improves upon the AJ 33.
7	250	8.5	Nelson Chan @Hoop and Life	2019-09-04	You are getting nice materials, futuristic tech, comfort, and great lockdown. But $200 is just too expensive.
6	250	8.4	The Sole Brothers	2019-09-06	For $200, the Kobe AD NXT FastFit is a pass. It's a nice shoe to play in and looks really, really good, but the performance isn't worth $200.
24	250	8.4	RicheeKim	2019-09-12	The performance of the Kobe AD NXT FF is really, really good, but if you care about money, $200 is just too expensive.
24	251	7.6	RicheeKim	2019-09-04	$180 is a huge price for an average performer like that. The traction is just too bad - I can't recommend the Nike AlphaDunk.
7	251	7.5	Nelson Chan @Hoop and Life	2019-09-16	The Nike AlphaDunk is not a good performance basketball shoe! This shoe is way too bulky and the traction is horrible. I can only recommend this shoe to slow and heavy big guys.
6	251	7.4	The Sole Brothers	2019-09-04	No! Don't get it! Especially for $180, this is a no go. The traction was just horrible and I don't like the aesthetics either.
6	252	8.0	The Sole Brothers	2019-08-05	100% recommended, especially for $90!
24	252	6.8	RicheeKim	2019-08-05	Even for only $90, I wouldn't recommend this shoe. The materials are absolute trash and there are just too many stability and containment issues.
24	253	9.0	RicheeKim	2019-08-07	I think the Diamond Mid is a great performer with premium materials, awesome traction, and a unique look.
2	253	9.0	Stanley T. [weartesters.com]	2019-10-18	Jordan Brand has really stepped up their game lately. The Jumpman Diamond is a dynamic shoe with great build, fit and materials - and it comes at a very fair price!
6	253	8.8	The Sole Brothers	2019-08-07	The ankle area was pretty uncomfortable for me, everything else about this shoe is incredible!
27	254	8.6	Jalique Gabay [weartesters.com]	2019-08-15	Traction, cushion, and textile choice are all very good but the break-in and fit of this pair were difficult to overcome.
6	254	7.6	The Sole Brothers	2019-08-15	Don't get it! Traction is trash. Even for $100, this shoe is too expensive for what you get.
19	254	7.4	PureKicks	2019-10-24	The Pro Bounce 2019 is a good shoe but doesn't live up to the Pro Bounce 2018.
24	254	7.2	RicheeKim	2019-08-15	I can't really recommend the Pro Bounce 2019 because of the cheap materials and bad traction.
27	255	9.1	Jalique Gabay [weartesters.com]	2019-10-11	The Jordan Zoom Zero Gravity is a fast, lightweight, low-top performer at a very affordable price!
24	255	8.0	RicheeKim	2019-08-24	For $100 you get a solid performance hoop shoe. The Zoom Zero Gravity features great traction and solid materials - the only downside is the firm cushioning.
7	256	8.5	Nelson Chan @Hoop and Life	2019-07-09	The Zoom Freak 1 is a solid first signature sneaker for Giannis Antetokounmpo. Support and lockdown are great but cushioning and traction feel pretty standard and the quality of the upper materials could be better.
6	256	8.2	The Sole Brothers	2019-07-13	I enjoyed the Zoom Freak 1, but the cushioning and traction could be better. Unfortunately, this shoe is one tier below the top-performers and, at $120, a little too expensive for what you get.
25	256	8.0	JAHRONMON [Youtube]	2019-07-02	A solid on-court performer. I' give it a B performance-wise, because there are better shoes out there that give you more bang-for-the-buck.
19	256	8.0	PureKicks	2019-08-18	The Nike Zoom Freak 1 has definitely a place in my sneaker rotation because it is super comfortable to play in.
1	256	7.8	NightWing2303 [weartesters.com]	2019-07-10	The Nike Zoom Freak 1 is a good shoe, but not a great one. Court feel and one-to-one fit are great, but impact protection and traction are disappointing.
3	256	7.8	Schwollo	2019-07-18	The Freak 1 does nothing outstandingly well but that�s okay because it does everything well enough.
29	256	7.8	MARKCHES	2021-05-07	The Nike Zoom Freak 1 is a very low-to-the-ground sneaker. It's lightweight and provides a good amount of court feel, but the cushion could have been better in the forefoot area of the shoe.
24	256	7.5	RicheeKim	2019-07-26	If you like Kobe models - you are probably going to enjoy the Zoom Freak 1. But for $120, there are better performers out there.
7	257	9.0	Nelson Chan @Hoop and Life	2019-07-20	I am pretty satisfied with the performance of the DON issue #1. My favorite aspects are the traction, the super-responsive cushioning and the awesome price point of $100.
1	257	8.7	NightWing2303 [weartesters.com]	2019-07-21	I actually loved the D.O.N. Issue 1 with the exception of the traction.
25	257	8.5	JAHRONMON [Youtube]	2019-09-09	At $99, this shoe provides a ton of performance! I'd say this is the best under $100 sneaker currently on the market. The DON issue 1 is a very versatile shoe and should work for all players!
6	257	8.2	The Sole Brothers	2019-07-09	I didn't like the DON Issue 1 too much. It's heavy and chunky and the traction is too inconsistent.
29	257	8.2	MARKCHES	2021-05-07	The Adidas DON Issue #1 is a great shoe for anyone who is looking for a quick, responsive and supportive performer. It has plenty of court feel and the traction was consistent. My only gripe is that they could've made the cushion a bit bouncier.
24	257	8.0	RicheeKim	2019-07-23	I will keep this shoe because of the good-looking Spiderman collaboration but I think there are better performers, even at $100.
19	257	8.0	PureKicks	2019-08-15	The DON Issue 1 is a very comfortable and supportive shoe that works perfectly for explosive basketball players.
24	258	9.0	RicheeKim	2019-07-31	For only $90, this is an amazing performer! A minimal shoe for players who like court feel over impact protection.
6	258	8.8	The Sole Brothers	2019-07-13	Great performer! I would not change anything about this shoe, besides the traction.
1	259	9.0	NightWing2303 [weartesters.com]	2019-08-08	The Under Armour HOVR Havoc 2 is another solid basketball shoe with traction that's built Ford tough and cushioning that's a little firm but kept me stable and made me feel faster than I really am.
6	259	8.6	The Sole Brothers	2019-07-13	The HOVR Havoc 2 is a good performer but a step down from top-tier performers. I liked almost everything about this shoe but the traction was a little too inconsistent for me.
24	259	8.6	RicheeKim	2019-07-31	Except for the occasional slip out, the HOVR Havoc 2 is a very good performer. But I think that you can find better-performing sneakers at $120.
1	260	9.1	NightWing2303 [weartesters.com]	2019-08-03	The Lebron Soldier 13 performs well in every category - on hardwood and blacktop!
24	260	9.0	RicheeKim	2019-07-18	For a pretty solid price of $140, you get awesome cushioning, great traction, great fit, and great materials. The straps also work really well on this version of the Lebron Solider and don't come undone like on previous models.
19	260	8.8	PureKicks	2019-09-12	This is one of the best-reviewed shoes in the history of our Youtube channel!
29	260	8.8	MARKCHES	2021-05-07	The Nike LeBron Soldier 13 features one of the best traction setups to go with the plush cushioning. The materials get the job done. Support and lockdown perform well, with the only complaint being that the lateral containment could be a tad bit better.
6	260	8.3	The Sole Brothers	2019-07-21	I enjoyed playing in the Lebron Soldier 13 - it's a good performer. But cushioning could have been better and the $140 price tag is pretty expensive.
6	261	8.8	The Sole Brothers	2019-06-11	Get them! The Converse All Star Pro BB is freaking awesome.
1	261	8.3	NightWing2303 [weartesters.com]	2019-06-11	The Converse All Star Pro BB is a really good basketball shoe. I especially liked the one-to-one fit and the lightweight feel but the traction and the insole lining could be improved.
24	261	8.0	RicheeKim	2019-08-22	For $140, I would not recommend the Converse Pro BB just because of the inconsistent traction.
19	261	7.6	PureKicks	2020-04-01	The traction and cushioning are A1, but the fit and support are a real lockdown. Wear double socks and an ankle brace and you will have a lot of fun.
1	262	9.1	NightWing2303 [weartesters.com]	2019-06-20	The CP3 12 is a no-nonsense type of shoe that offers a lot of performance for it�s $100 price point. I'm pleasantly surprised!
6	262	8.6	The Sole Brothers	2019-06-12	This is a top-tier performer with premium materials at a great retail price of only $100!
24	262	8.6	RicheeKim	2019-07-18	For $100 this shoe is a freaking steal! It's an absolute beast of a performer - highly recommended!
1	263	9.0	NightWing2303 [weartesters.com]	2019-06-20	If you want a fairly light, low and fast shoe without any weaknesses then the Kyrie Low 2 is a great choice!
27	263	8.6	Jalique Gabay [weartesters.com]	2019-07-11	The Kyrie Low 2 ticks all the boxes for me. My favorite Kyrie I have played in so far!
19	263	8.6	PureKicks	2019-07-26	A supportive low-top, with great traction and good cushioning - it's all I ever wanted!
6	263	8.4	The Sole Brothers	2019-06-20	For only $110, get them! This is probably the best Kyrie model out there right now. The only thing that should have been better, is the stiff and uncomfortable cushioning.
24	263	8.4	RicheeKim	2019-07-26	For $110, this is an absolute steal. Traction is the most important thing in a basketball shoe for me, and the traction of the Kyrie Low 2 is absolutely money!
6	264	7.6	The Sole Brothers	2019-04-12	The Mamba Focus is really cheap and the performance is okay, but there are much better shoes even at similarly low prices (Nike PG3, Kyrie Flytrap 2).
24	264	7.3	RicheeKim	2019-04-12	I wouldn't recommend the Kobe Mamba Focus. The traction isn't good, impact protection is very minimal, and the fit was really uncomfortable for my wide feet.
1	265	9.2	NightWing2303 [weartesters.com]	2019-05-08	The Nike KD 12 is just an all-around good shoe that should cater to most players needs.
15	265	9.2	Another Pair [weartesters.com]	2019-05-08	When they�re this nice, you might want to buy �em twice. I can't stop playing in my KD 12's!
24	265	9.0	RicheeKim	2019-04-18	This is the best performer of this year so far! A huge step up from the disappointing previous KD models.
7	265	9.0	Nelson Chan @Hoop and Life	2019-05-08	The cushioning alone is worth the $150! But I would have preferred a little more premium materials.
3	265	8.6	Schwollo	2019-04-18	The directly-underfoot Zoom set up makes the KD 12 feel fun and exciting. Other than that, this shoe does everything well from A-Z.
6	265	8.4	The Sole Brothers	2019-04-18	They fixed a lot of things that I didn't like in the predecessor KD11. The cushioning is amazing, materials are solid, fit and support are great! The only downside is the inconsistent traction of the translucent rubber on dusty courts.
19	265	8.4	PureKicks	2019-06-11	This shoe is not a joke! You never felt anything like this full-length Zoom cushioning system and there is finally solid support in a KD shoe.
19	266	8.8	PureKicks	2019-06-11	Insane traction and amazing cushioning -  this shoe is an absolute madness!
27	266	8.6	Jalique Gabay [weartesters.com]	2019-04-06	No matter what position or style you play, you won't be disappointed with the Adidas Pro Bounce Madness!
6	266	8.4	The Sole Brothers	2019-04-06	I really like the casual look and the performance on clean courts. Just make sure you don't play on dusty courts with these.
24	266	8.2	RicheeKim	2019-04-06	The Pro Bounce is a solid shoe but the traction just didn't do it for me on dusty courts.
27	267	9.2	Jalique Gabay [weartesters.com]	2019-02-11	Paul George�s signature sneaker represent him well: these are the perfect shoes for a smooth, two-way player that can get busy when necessary.
6	267	9.0	The Sole Brothers	2019-02-01	The PG3 performs exceptionally well! I really, really enjoyed playing in these. Definitely one of the best basketball shoes out right now.
7	267	9.0	Nelson Chan @Hoop and Life	2019-02-11	I really like everything about the PG3 except the materials and the looks.
1	267	9.0	NightWing2303 [weartesters.com]	2019-02-23	I hated the PG3 after my first few hours in them. However, I�m glad I stuck with them as by the end of the week I was just excited to lace them up for another few hours of pick-up runs
19	267	8.6	PureKicks	2019-03-07	Easily the best PG sneaker so far! This is one of my favorite Nike shoes in a long time.
3	267	8.6	Schwollo	2019-03-19	The PG3 gives you everything you want in a low top for a lower-than-average price. I have zero complaints!
7	268	9.5	Nelson Chan @Hoop and Life	2019-02-23	I promise you will not get disappointed if you pick the Dame 5. If the cushioning was a little softer and the traction a little better on dusty courts, this shoe might have received the first ever perfect rating from me.
11	268	9.0	Duke4005 [weartesters.com]	2019-02-23	This is the best Dame shoe yet and that is saying a lot! The Dame 5 combines the best categories of the previous models and gives us a shoe that any player can wear and feel strong.
1	268	8.9	NightWing2303 [weartesters.com]	2020-04-26	The Dame 5 is solid all the way around: great traction, great cushion, superior lockdown, wonderful support, and stability.
24	268	8.8	RicheeKim	2019-02-23	At $115, the Dame 5 is a very good performance basketball shoe. The traction took a while to break in, but other than that, everything about this shoe is really nice.
19	268	8.8	PureKicks	2019-03-07	The Adidas Dame 5 is an incredible shoe. The Bounce cushioning is absolutely amazing and the herringbone traction pattern is close to perfect.
3	268	8.6	Schwollo	2019-02-23	Get the basics down and you have a great shoe. Thank you Adidas and Dame! This is the best Dame ever, as Adidas finally found the right combo of everything, especially traction.
6	268	8.0	The Sole Brothers	2019-02-23	I really enjoyed playing in the Dame 5 on clean courts. The cushion is pretty damn nice, materials are nice, fit is good and it's also very supportive. This is a solid performer at a very fair price. Just make sure you don't get the translucent rubber versions if you plan to play on dusty courts.
6	269	8.8	The Sole Brothers	2019-02-23	This is a solid, solid performer, especially at the price of $110. The traction is excellent, the cushioning is soft, and the materials are pretty nice and comfortable.
1	269	8.8	NightWing2303 [weartesters.com]	2019-02-23	The traction on this shoe is absolutely awesome and the Micro G cushioning feels really good. Unfortunately, the fit wasn't perfect for my feet.
24	269	8.8	RicheeKim	2019-03-12	For $110 you really can't go wrong with the Anatomix Spawn Low. It doesn't have the big-name brand attached, and the looks might not be amazing, but the performance is top notch!
11	269	8.8	Duke4005 [weartesters.com]	2019-04-06	If you are looking for a low, fast, cushioned ride that will draw some attention for the looks and colors, the Anatomix Spawn is it.
3	269	8.4	Schwollo	2019-03-07	Even though this shoe has very little in common with its predecessors, it performs very well all around with excellent traction and a pretty good fit if you ignore the bubbles in the forefoot. I prefer these over the Curry 6 when it comes to performance.
19	269	8.2	PureKicks	2019-04-06	This is my favorite Under Armour shoe so far! I love the fit, the Micro G cushioning, and the excellent traction.
7	270	9.0	Nelson Chan @Hoop and Life	2019-03-07	Even though this isn't really a performance upgrade to the Kobe 4, this is still a really good performance shoe. However, I don't think they are worth $175.
3	270	8.6	Schwollo	2019-03-07	I love that Nike didn�t change a thing. And why should they when it�s one of the best low tops of all time?
6	270	8.6	The Sole Brothers	2019-03-07	This shoe feels more Retro than Protro. They will probably make it into my rotation, but the price of $175 is pretty steep.
1	270	8.6	NightWing2303 [weartesters.com]	2019-03-11	The Nike Kobe 4 is one of the greatest basketball shoes of all-time but I expected the inclusion of forefoot cushion for a performance-upgraded shoe. For $175 they could have, and should have, given us more.
24	270	8.5	RicheeKim	2019-07-07	The Protro 4 is a very solid performer - if you are a Kobe fan get them! But at the price of $175, there are way better shoes out there.
25	270	8.5	JAHRONMON [Youtube]	2019-09-26	For $175, these feel like a sneaker from 2009 trying to keep up in 2019.
11	271	8.6	Duke4005 [weartesters.com]	2019-05-28	The Puma Uproar is a fun shoe! If you are looking for a moderately-cushioned shoe with near-perfect lockdown and traction, look no further.
1	271	8.6	NightWing2303 [weartesters.com]	2019-04-12	Puma really has impressed me quite a bit. The cushioning could be a little better, but everything else worked perfectly!
6	271	8.0	The Sole Brothers	2019-03-07	I enjoyed playing in these. This shoe is a jack of all trades but master of none.
6	272	8.6	The Sole Brothers	2019-03-07	Even ignoring the fast-fit adaptive lacing system - this is a really nice performance basketball shoe. On top of that - this is a real head-turner!
19	272	8.6	PureKicks	2019-05-08	The first-ever self-lacing basketball shoe is here - and it's one of the best basketball shoes we have ever played in.
24	272	8.4	RicheeKim	2019-05-08	The Nike Adapt BB is a good performance basketball shoe. But there are better performers for much cheaper. So if you are a sneakerhead, or really into innovative tech, then this is a great shoe!
25	272	8.2	JAHRONMON [Youtube]	2019-04-06	I had a lot of fun playing in the Nike Adapt BB. The self-lacing system works well and the overall performance is really solid. Pick these up if you are interested in the latest tech and you can afford the hefty price tag!
1	273	9.0	NightWing2303 [weartesters.com]	2019-01-06	The Curry 6 is easily the best shoe in the Curry signature line.
15	273	9.0	Another Pair [weartesters.com]	2019-01-06	I am loving the Curry 6! Definitely the #1 in my rotation right now.
7	273	9.0	Nelson Chan @Hoop and Life	2019-01-13	In my opinion, this is the best Curry signature shoe since the Curry 2. Everything about this shoe is great, except the pain I experienced on the top of the feet when cranking the laces tightly.
24	273	9.0	RicheeKim	2019-01-13	The Curry 6 is a really fun performer that has everything I want from a basketball shoe: amazing cushion, amazing fit, and while the traction is not quite on Curry 2 level, it is still pretty nice! The durability of the rubber on my pair was an issue though...
11	273	9.0	Duke4005 [weartesters.com]	2019-02-01	The Curry 6 brings a great combo of traction, cushioning and support to make fast basketball player very happy!
2	273	9.0	Stanley T. [weartesters.com]	2019-02-23	This is easily the most well-rounded Curry we�ve had since the 1.
6	273	8.4	The Sole Brothers	2019-01-09	I really enjoy playing in the Curry 6. The cushioning is pretty nice, the traction, fit, support and the minimal upper are really fun. The only problem is the durability of my pair - let's hope the glue work is better on future colorways!
19	273	8.2	PureKicks	2019-02-01	Easily the best Curry signature shoe! The cushioning is amazing, materials are really nice, the traction took care of us, only the support was a little bit of a letdown.
3	273	8.0	Schwollo	2019-01-17	The Curry 6 looks good, has great traction and is very stable, but the constant lace pressure, bad heel fit, and a really dumb outsole design make these far from perfect.
1	274	9.1	NightWing2303 [weartesters.com]	2019-02-01	The Why Not Zero.2 is quick, comfortable, supportive, and breaks in quickly.
7	274	9.0	Nelson Chan @Hoop and Life	2019-01-13	Traction is superb, materials are 50:50, support is solid, cushioning is responsive in the forefoot and comfortable in the heel. There is nothing bad about the Why Not Zero.2, but there is also nothing phenomenal. Not the best shoe I ever played in but a good performer overall.
6	274	9.0	The Sole Brothers	2019-01-17	I really enjoyed playing in the Jordan Why Not Zero.2. They look great, the price is right, whatever position you play - you are going to enjoy these!
3	274	9.0	Schwollo	2019-04-06	I�ve literally got nothing to complain about with this shoe. Jordan made the Why Not Zero.2 a lot more fun with a bouncier cushioning set-up while keeping the shoe just great all around.
24	274	8.8	RicheeKim	2019-03-11	For $125 this is a really nice shoe - highly recommended! The traction and fit are the outstanding features for me.
15	274	8.3	Another Pair [weartesters.com]	2019-01-23	Overall this shoe is really dope. The only downside is that the traction is a downgrade compared to the first Russell Westbrook sneaker.
25	274	8.0	JAHRONMON [Youtube]	2019-03-07	I think the Jordan Why Not Zero.2 are a solid performer, and fun to play in. But the hefty materials, the uncomfortableness I experienced in the collar area and the uneven support in the heel to forefoot throw them off.
19	274	8.0	PureKicks	2019-04-06	The cushioning is absolutely amazing and reminds me of the AJ29. This is an amazing overall performer, Russell Westbrook and Jordan Brand should be proud!
6	275	8.3	The Sole Brothers	2019-01-21	I really liked playing in these shoes! If just wished the cushioning was a little more comfortable.
1	275	7.4	NightWing2303 [weartesters.com]	2019-03-07	The Nike Kyrie Flytrap 2 is a very solid shoe in most aspects, but cushion could definitely use some improvement.
6	276	8.8	The Sole Brothers	2018-12-14	The $165 is justified by the premium materials and great build quality. This is a great performer with very comfortable cushioning - I thoroughly enjoyed playing in these!
15	276	8.6	Another Pair [weartesters.com]	2018-12-14	The Wade 7 is a fun shoe to play - definitely recommended!
1	276	7.4	NightWing2303 [weartesters.com]	2019-03-07	I am not a big fan of the Wade 7 on-court and I definitely don�t want to play in them again.
27	277	9.1	Jalique Gabay [weartesters.com]	2019-01-06	This modern take on an old school hoop shoe is a great all-around performer but needs a little patience to break-in.
3	277	8.8	Schwollo	2019-01-06	This might just be the shoe of the year 2018!
6	277	8.8	The Sole Brothers	2019-01-06	The Marquee Boost is a very nice performer at an affordable price - I am impressed!
24	277	8.7	RicheeKim	2019-01-06	The Marquee Boost is a great performer but I would recommend the Low version if you like freedom of movement around your ankles.
19	277	8.4	PureKicks	2019-01-13	The most comfortable shoe in the game. Adidas is doing a great job lately!
1	277	8.4	NightWing2303 [weartesters.com]	2019-01-17	The Adidas Marquee Boost is definitely one of the more comfortable basketball shoes currently available.
24	278	9.1	RicheeKim	2018-12-17	Adidas really knocked this one out of the park. Really fun to play in!
11	278	8.8	Duke4005 [weartesters.com]	2019-01-06	Adidas has made a really, REALLY fun shoe. Luckily, the price matched the performance and was truly� N3XT L3V3L.
6	278	8.4	The Sole Brothers	2019-01-06	I really, really want to like this shoe, but traction is the most important aspect for me, and the Adidas Next Level didn't work on dusty courts. On clean courts, I liked it a lot!
19	278	8.4	PureKicks	2019-04-06	Amazing cushion, fantastic herringbone traction, and comfortable Primeknit upper. The fit works out great, even without laces!
3	278	8.0	Schwollo	2019-02-11	The N3xt L3v3l is super comfortable and has a nice cushioning setup, but during play, the laceless system just doesn�t work like it should or could.
24	279	8.6	RicheeKim	2019-01-06	This is a pretty fun shoe to play in! If you are a T-Mac fan go for them, but there are better bang-for-the-buck shoes out there.
3	279	8.4	Schwollo	2019-01-06	I really enjoy playing in this shoe because it does everything well. I especially love the cushioning set up, traction, and as shallow as this sounds, its looks.
6	279	8.4	The Sole Brothers	2019-01-13	I was super-impressed by the performance of the T-Mac Millenium. Much better than the original T-Mac! This is a very durable shoe, that should work well for big guys who need a lot of support and cushioning.
6	280	8.6	The Sole Brothers	2019-02-01	For $100 this would have been a really, really solid performer if it hadn't been for the cushion.  Only recommended if you play on clean courts.
1	280	8.2	NightWing2303 [weartesters.com]	2019-02-01	For under $100 retail I can't think of a more versatile shoe. However, I think there are other decently priced sneakers that perform much better.
4	281	9.3	Zac Dubasik [SoleCollector.com]	2018-12-14	Simply put, the Kyrie 5 is a fantastic shoe for the money, and would be a fantastic shoe at any price.
7	281	9.0	Nelson Chan @Hoop and Life	2018-11-19	I really like the Nike Zoom Air Turbo and the Flytrap shroud. The Kyrie 5 is an upgrade over the Kyrie 4 and works best for quick players who prefer court feel over soft cushioning.
6	281	8.8	The Sole Brothers	2018-12-03	I love these! If you liked the Kyrie 2 or 4, then you are going to love the Kyrie 5.
1	281	8.8	NightWing2303 [weartesters.com]	2018-12-04	The Nike Kyrie 5 offers plenty of court feel, a little bit of cushion, great lockdown and aggressive traction wrapped up in a lightweight package.
2	281	8.7	Stanley T. [weartesters.com]	2019-01-06	The Kyrie 5 is a fun shoe that caters to the needs of those that play a more grounded game and require unrestricted mobility.
3	281	8.3	Schwollo	2018-12-14	This is a very good shoe that does everything well with great traction, fit, and decent cushioning.
10	281	8.2	MR FOAMER SIMPSON	2019-02-23	The Kyrie 5 is a very solid shoe. The main pros are lockdown and court feel, cons are the cushioning of the outsole and the lacking padding of the inner material.
19	281	7.6	PureKicks	2019-01-06	The Kyrie 5 is a solid shoe. The support and cushioning are great, but the traction is disappointing.
25	281	7.6	JAHRONMON [Youtube]	2019-02-11	The Kyrie 5 probably won't find its way back into my gym bag any time soon - the traction was just too bad in my pair.
1	282	8.7	NightWing2303 [weartesters.com]	2018-10-11	The Puma Clyde Court Disrupt wound up being one of the more fun models to play in this year (so far).   Not in the Top 5 discussion but you receive solid performance and cushion for the price.
10	282	8.7	MR FOAMER SIMPSON	2018-10-30	The Puma Clyde Court Disrupt is a very vibrant and well-rounded sneaker. I really like them and I am pleasantly surprised by their performance.
15	282	8.5	Another Pair [weartesters.com]	2018-10-20	Overall the Puma Clyde Court is a really fun shoe to play in. Great job by Puma!
25	282	8.4	JAHRONMON [Youtube]	2018-12-14	It's really impressive what Puma was able to do in their first basketball sneaker in a long time. The materials and fit are absolutely A1, the support and traction, however,  could use a little tweaking.
6	282	8.2	The Sole Brothers	2018-11-19	The performance is middle of the road. They won't stay in my rotation but they might work well as a big-man shoe or as an outdoor shoe.
7	282	8.0	Nelson Chan @Hoop and Life	2018-10-08	I am very impressed by the first hoops shoe by Puma after their comeback to basketball. The cushioning and traction could be a little better, but everything else was great!
4	282	8.0	Zac Dubasik [SoleCollector.com]	2018-10-30	The Puma Clyde Court Disrupt is a great first impression for Puma's relaunched basketball division.
19	282	7.2	PureKicks	2019-01-06	Welcome back Puma! This is a strong shoe that is only let down by the lacking ankle support and bad traction on dusty courts.
1	283	9.1	NightWing2303 [weartesters.com]	2018-10-16	The traction and cushion are very solid but the FastFit lacing system has room for improvement and may throw some people off.
6	283	9.0	The Sole Brothers	2018-10-08	We love the new FastFit lacing system. The Air Jordan 33 will definitely be in my rotation even though it is a bit heavy and clunky.
11	283	8.8	Duke4005 [weartesters.com]	2019-01-06	The Air Jordan 33 is a great shoe, especially for big guys looking for impact protection and support. Quick guards looking for a light and minimal shoe should look elsewhere.
24	283	8.8	RicheeKim	2019-05-08	Even at the hefty price of $175, I really enjoyed playing in these. The AIr Jordan 33 is a great performer that really stands out on the court thanks to the fast-fit lacing system.
25	283	8.3	JAHRONMON [Youtube]	2019-01-13	I can't recommend the Air Jordan 33 because they never really broke in for me. The midsole remained extremely stiff and uncomfortable, even after 30 hours of 5 vs 5 play.
3	283	8.0	Schwollo	2019-02-11	Overall, the Air Jordan 33 is a good shoe if you love the looks and the innovative sneaker tech. It performs well in almost every aspect but I think $175 is too expensive for what you get. $130 would be a much fairer retail price.
19	283	7.2	PureKicks	2018-11-08	The Fast Fit system is no gimmick, the support is great, but the materials are a letdown - there are just too many!
7	283	7.0	Nelson Chan @Hoop and Life	2018-10-30	I am very disappointed in the Air Jordan 33. The traction is inconsistent, the materials are subpar and the comfort is a disaster!
6	284	10.0	The Sole Brothers	2018-10-18	This is the best performer of 2018. I am going to get five pairs of these!
1	284	9.4	NightWing2303 [weartesters.com]	2018-11-19	The performance of the Adidas Harden Volume 3 on the court is nearly perfect. It's a special shoe in that it's so simple that it does everything right!
11	284	9.1	Duke4005 [weartesters.com]	2018-10-30	This is the best Harden we have seen so far. Works for players at any position who enjoy freedom of movement, court feel with above-average impact protection, and a great fit.
7	284	9.0	Nelson Chan @Hoop and Life	2018-10-30	This is by far the best shoe in the Harden signature series. Pretty much everything was improved - I especially like the cushioning and materials.
24	284	9.0	RicheeKim	2018-10-30	Definitely an upgrade over the Harden 2. This shoe has pretty much everything I want in a performance sneaker!
4	284	8.8	Zac Dubasik [SoleCollector.com]	2018-11-19	The Harden 3 is a standout when it comes to performance! It checks all the boxes for comfort and fit and does so at a relatively affordable $140 price point.
3	284	8.6	Schwollo	2018-10-30	Great traction, pretty good fit and fun Boost cushioning - sign me up! I�m going to give this a first-team rating.
19	284	8.0	PureKicks	2019-01-06	Fit and cushion are awesome, but the traction was a little too inconsistent and the support a little too low.
1	285	9.2	NightWing2303 [weartesters.com]	2018-10-30	The Anta KT4 is a ton of fun to play in. You�ve got to try them for yourself.
29	285	8.8	MARKCHES	2021-05-07	Overall, the Anta KT4 is one of the best performing sneakers available. The cushion is both bouncy and responsive. The traction is awesome, and it has all the support you need.
6	285	8.6	The Sole Brothers	2018-10-30	For $125 you get premium materials and modern tech. I enjoyed playing in these a lot! The only issues are the slightly mushy cushioning and the problematic containment on lateral cuts.
1	286	9.4	NightWing2303 [weartesters.com]	2018-10-04	The LeBron 16 will suit any play style or move � be it slashing, cutting, shooters, defense, rebounding.
6	286	9.3	The Sole Brothers	2018-10-02	I really, really like the Lebron 16. The price is expensive but justified by the amazing tech and ultra-premium feel.
7	286	9.0	Nelson Chan @Hoop and Life	2018-09-26	The Lebron 16 is an upgrade in every aspect! They look better, they feel better, and they perform better!
24	286	9.0	RicheeKim	2018-10-01	The Lebron 16 is an outstanding performer!
3	286	8.8	Schwollo	2018-10-01	Everything I didn't like about the Lebron 15 was fixed! Better traction, better stability, and containment. This is the best Lebron to come out in years!
25	286	8.8	JAHRONMON [Youtube]	2018-10-01	The cushioning setup is super fun to play in, the traction worked on every court and the Battleknit 2.0 is super comfortable. The Lebron 16 is a very versatile shoe, but explosive and fast wing players will particularly love this hoops shoe.
10	286	8.8	MR FOAMER SIMPSON	2018-10-18	Awesone impact protection, really good traction, but the court feel is minimal and the Lebron 16 is pretty heavy.
19	286	8.0	PureKicks	2019-01-06	Cushioning and traction are awesome but the fit and support were a bit of a letdown for me.
24	287	9.0	RicheeKim	2018-09-26	The Adidas Pro Bounce Low is a great shoe that is absolutely perfect for me. Everything about this shoe is amazing and the cheap price point makes it even better!
6	287	9.0	The Sole Brothers	2018-09-26	The Adidas Pro Bounce Low is a great all-around shoe that should work especially well for guards.
19	287	8.6	PureKicks	2018-11-29	Right now, this is by far my favorite shoe to hoop in. If you enjoy playing in low-tops then this is the perfect shoe for you!
1	287	8.3	NightWing2303 [weartesters.com]	2018-10-08	The Pro Bounce Low is a very solid shoe that can be used for all positions.
6	288	8.8	The Sole Brothers	2018-10-19	These are up there on the budget category. I would totally recommend the Jordan Jumpman Hustle, as they are one of the best performers of the year!
24	288	8.8	RicheeKim	2018-10-19	I think the Jordan Jumpman Hustle is a great performer, especially after you break-in the traction a little bit.
1	288	8.6	NightWing2303 [weartesters.com]	2018-10-19	The Jordan Jumpman Hustle is super comfortable, very lightweight and the shoe won�t break the bank. Traction and cushioning are great but support could be better.
2	288	8.6	Stanley T. [weartesters.com]	2018-11-19	Overall, the Jordan Jumpman Hustle was a delight to play in.
24	289	8.1	RicheeKim	2018-09-26	Personally, I would not recommend the KD11 for basketball because of the missing lateral support. Playing in these shoes had me scared about my ankles.
6	289	8.0	The Sole Brothers	2018-07-16	The KD 11 is a decent performer, but it just wasn't for me. I would recommend this shoe only to bigger pull-up shooters - there just isn't enough support for quicker players like me.
7	289	8.0	Nelson Chan @Hoop and Life	2018-08-08	I was really disappointed because I expected more. The KD11 looks nice and is very comfortable but the performance aspects like support and traction just aren't as good as I had hoped.
3	289	7.8	Schwollo	2018-09-26	If you want a sock-like shoe with great cushioning then you are going to love the KD11. Unfortunately, the missing support and lacking containment are issues I personally can't ignore in a performance basketball shoe.
19	289	7.4	PureKicks	2018-09-26	Cushioning, materials, and traction are great. The only problem is the lack of support.
4	289	7.3	Zac Dubasik [SoleCollector.com]	2018-08-08	The Nike KD11 looks like a comfortable casual sneaker but doesn't work on a basketball court for me because of the lacking support and stability.
1	289	6.7	NightWing2303 [weartesters.com]	2018-08-10	The KD11 is one of the most disappointing shoes I reviewed in a while. The fully knit build is just not supportive enough for a performance basketball shoe - use some leather Nike!
7	290	9.0	Nelson Chan @Hoop and Life	2018-09-26	Good traction, good cushioning and the support and lockdown are on point. The materials may look cheap but they perform well.  Overall, a very solid hoops shoe!
4	290	8.5	Zac Dubasik [SoleCollector.com]	2018-10-08	The latest Nike Kobe A.D. isn't spectacular, but it is an easy recommendation for players whose priorities lean towards light, minimal, and low shoes.
24	290	8.5	RicheeKim	2018-10-30	It's a great performing shoe, but for a Kobe signature model, the look and in-hand feel of the materials are disappointing.
15	290	8.4	Another Pair [weartesters.com]	2018-10-01	I like everything about this shoe! I just wished they would have taken the cushion from the Kobe AD NXT 360, because then it would have been my shoe of the year!
3	290	8.4	Schwollo	2018-10-16	It doesn't have the latest and greatest tech but this is definitely one of the more fun shoes I played in this year.
11	290	8.3	Duke4005 [weartesters.com]	2018-10-01	The Kobe AD Exodus isn't the best Kobe ever, but it does almost everything well on-court and is smooth on foot. Works especially well for quicker Kyrie-like guards.
1	290	8.2	NightWing2303 [weartesters.com]	2018-09-26	I like the Nike Kobe AD Exodus but I don�t love it. The Exodus is lightweight, low profile, and provides aggressive traction � it�s a shoe built for a fast-paced player that gets up and down the court.
25	290	8.0	JAHRONMON [Youtube]	2018-09-26	I am having fun in the Kobe AD, but the traction is problematic.
6	290	7.1	The Sole Brothers	2018-09-26	Tech-wise it's not great but performance is solid and it looks good. Overall, we are a little underwhelmed though and the Kobe AD Exodus probably won't make it into our rotation.
24	291	8.8	RicheeKim	2018-09-26	For a retail price of $100, this is an outstanding shoe.
1	291	8.7	NightWing2303 [weartesters.com]	2018-09-26	If the Curry 3 Zero2 came with a heel counter it would be the perfect guard shoe.
3	291	8.6	Schwollo	2018-09-26	The Steph Curry 3 Zero2 does almost everything exceptionally well with traction, fit and stability being the very high highlights.
6	291	7.2	The Sole Brothers	2018-09-26	The performance is okay for a budget model, but these won't make it into the rotation.
6	292	9.3	The Sole Brothers	2018-10-16	The HOVR cushioning was a bit disappointing, but other than that, the Under Armour HOVR Havoc is an amazing performer with awesome traction and a very minimal, low-to-the-ground feel.
11	292	9.1	Duke4005 [weartesters.com]	2018-10-12	If you are looking for a seriously quick, responsive, biting-traction shoe, the HOVR Havoc Low will more than satisfy.
24	292	8.9	RicheeKim	2018-10-01	This is one of my top 5 performance basketball shoes of 2018 so far!
3	292	8.2	Schwollo	2018-09-26	Okay overall, but nothing great aside from traction, stability, and containment.
24	293	8.0	RicheeKim	2018-09-26	I would not recommend this shoe as it felt super stiff and clunky.
6	293	7.4	The Sole Brothers	2018-09-26	I didn't really enjoy playing in these shoes. Probably works better if you are a big guy who plays in the low post.
24	294	8.7	RicheeKim	2018-07-16	For $110, you will not be disappointed! The Kyrie Low is a good all-around performer and a lot of fun to play in.
11	294	8.7	Duke4005 [weartesters.com]	2018-10-20	The package of traction, court feel, and fit make the Kyrie Low ideal for most guards and any other player not needing a wide shoe or supreme cushioning.
6	294	8.4	The Sole Brothers	2018-08-08	I really enjoyed playing in the Kyrie Low. If you don't need a lot of impact protection then this shoe is a great choice!
11	295	7.0	Duke4005 [weartesters.com]	2018-08-08	If you require traction and lockdown from your basketball shoes you need to look elsewhere. You should only get the D Rose 9 if you are a stationary shooter, you don't rely on quickness and you like the look and casual appeal of the D Rose 9.
7	296	9.5	Nelson Chan @Hoop and Life	2018-08-08	This is an awesome performer with great tech at an affordable price. Cushion, traction, and materials stayed the same but the fit and support are slightly improved!
24	296	8.8	RicheeKim	2018-08-08	I would pick the PG 2.5 over the PG 2 as they look better and provide a more customizable fit thanks to the forefoot strap.
6	296	8.2	The Sole Brothers	2018-08-08	The performance stayed exactly the same but we think the PG 2.5 looks better than the PG2.
11	297	8.7	Duke4005 [weartesters.com]	2018-09-26	If you need a dependable shoe for any indoor surface, with great cushioning, a semi-durable upper, and killer fit, look no further than the Nike Hyperdunk X
24	297	8.6	RicheeKim	2018-09-26	For a fair list price of $130, this is a very solid performer.
3	297	8.4	Schwollo	2019-01-13	The HD X is a jack of all trades which I really love. If the traction and containment were a little better, these Hyperdunks would be close to perfect!
19	297	7.0	PureKicks	2018-09-26	The Hyperdunk X is an above average performer. The fit, materials, and support do very well. Unfortunately, the traction on mildly dusty courts is a bit disappointing.
24	298	8.4	RicheeKim	2018-09-26	I would definitely recommend the Hyperdunk X Low, the only downside is the inconsistent traction.
6	298	7.8	The Sole Brothers	2018-08-08	The traction could have been a little bit better, other than that, the Hyperdunk X Low is a good performer!
19	298	7.4	PureKicks	2018-09-26	The Hyperdunk X Low gets the job done. I really enjoyed playing in these!
6	299	9.0	The Sole Brothers	2018-06-12	For $110 this is a steal! This might be one of the best performance basketball shoes I played in this year.
1	299	8.8	NightWing2303 [weartesters.com]	2018-08-08	The Jordan Lockdown is not only a great bang for the buck but also one of the best shoes released in 2018 so far.
11	299	8.6	Duke4005 [weartesters.com]	2018-06-12	The Jordan Fly Lockdown is a budget Jordan model that performs like a signature shoe. Works best if you need a stable, low-riding foot rocket.
11	300	9.2	Duke4005 [weartesters.com]	2018-04-17	If you need traction for days, cushioning that is stable but provides great impact protection, and a supportive, stable base look no further � the CP3.XI should be a shoe for you, no matter the position.
24	300	9.0	RicheeKim	2018-04-30	The CP3.XI is one of my favorite shoes to play in right now.  Great cushioning, comfortable fit and nice low-to-the-ground feel. This shoe has everything I like in a shoe and nothing that I don't.
1	300	9.0	NightWing2303 [weartesters.com]	2018-06-12	The CP3 XI is definitely a step in the right direction as cushion, comfort, and traction have all been upgraded compared to the predecessors. It's a very well-rounded shoe that should appeal to a lot of players.
6	300	8.6	The Sole Brothers	2018-04-17	The CP3.XI is a solid performer that works very well for guards who look for a supportive low-cut shoe.
6	301	8.8	The Sole Brothers	2018-04-17	I love playing in the Curry 5. This shoe excelled in every single category. Sole Brothers recommended, just not on dusty courts.
3	301	8.0	Schwollo	2018-04-30	The Curry 5 is what I call a pretty average shoe with some minor flaws and poor dusty floor traction performance.
7	301	7.5	Nelson Chan @Hoop and Life	2018-06-12	The horrible blisters made me not want to hoop in the Curry 5.
1	301	7.4	NightWing2303 [weartesters.com]	2018-04-17	The Curry 5 is simply not a shoe I can recommend. Traction is very inconsistent, and the fit is horrendous.
24	301	7.4	RicheeKim	2018-04-24	The Curry 5 is the worst Curry model I have played in. Stay away from this shoe if you don't have narrow feet!
25	301	7.0	JAHRONMON [Youtube]	2018-04-17	I am really confused how this shoe got by the initial testing phase. The fit of the Curry 5 is way too specific and doesn't work for me at all.
19	301	7.0	PureKicks	2018-07-16	Materials and fit are fantastic, the traction is pretty good, but the support and cushioning are a letdown.
11	301	6.6	Duke4005 [weartesters.com]	2018-04-17	I cannot recommend the Curry 5 to a player of any position or size.
6	302	8.6	The Sole Brothers	2018-05-04	This is a top-tier performer for a very affordable price. This is going to be on the list of shoes with the best traction!
11	302	8.5	Duke4005 [weartesters.com]	2018-04-17	Very good traction and perhaps the best Boost cushioning in a basketball sneaker. Make sure to go down half a size because the fit didn't work for me in my true size.
7	302	8.5	Nelson Chan @Hoop and Life	2018-04-17	Insane traction, responsive cushioning and a very affordable price. I actually prefer the Crazylight Boost over the more expensive Adidas Harden 2.
3	302	8.2	Schwollo	2018-08-08	It's almost as if Adidas read my blog and fixed all the issues I had with the predecessor. Great shoe that almost any player will enjoy - especially at the affordable price!
24	302	7.5	RicheeKim	2018-04-17	Amazing cushioning, good traction and solid materials -  this could have been a 9.0! But dead space in the toebox and excessive heel slippage killed the Crazy Light Boost 2018 for me.
11	303	9.5	Duke4005 [weartesters.com]	2018-04-17	It may be an opinion clouded in sentiment, but there is no denying it: the Protro is a great, great, great performer.
1	303	9.4	NightWing2303 [weartesters.com]	2018-04-26	I miss shoes that are built like this. Nike reduced a bit of bulk from the original and created a shoe that I didn't want to take off again.
24	303	9.0	RicheeKim	2018-10-01	At $175, I wouldn't really recommend the Kobe Protro for on-court use. This is a great performer, but there are cheaper shoes that perform just as well. If you are a big Kobe fan or you like the old school materials, then go ahead and buy these!
3	303	8.8	Schwollo	2018-08-08	The Kobe 1 Protro feels and plays like the OG which is a good thing! From traction to containment and balanced cushioning - it does everything right and gets a first-team rating from me!
25	303	8.5	JAHRONMON [Youtube]	2018-04-30	At the end of the day, the Kobe 1 Protro still feels like a throwback sneaker. The materials feel heavy and restrictive compared to current basketball shoe models.
6	303	8.4	The Sole Brothers	2018-04-30	The Kobe 1 Protro is a decent big-man shoe. But for me, it was way too clunky and heavy. I feel like this is more of a lifestyle sneaker.
15	304	9.5	Another Pair [weartesters.com]	2018-04-30	Overall, the Kobe NXT 360 is the best Kobe shoe since the Kobe 9, in my opinion.
6	304	9.4	The Sole Brothers	2018-04-25	There is no other shoe I want to play in as much as these. Even though the traction of the translucent rubber is not the best this still might be the best basketball shoe we ever played in.
24	304	9.2	RicheeKim	2018-07-16	The Kobe AD NXT 360 is a great performer and looks amazing!
19	304	8.8	PureKicks	2018-09-26	This is officially PureKicks best-rated shoe so far!
1	304	8.6	NightWing2303 [weartesters.com]	2018-06-16	The Kobe NXT 360 is a true next-generation shoe and incredibly fun to play in!
7	304	8.5	Nelson Chan @Hoop and Life	2018-04-24	The traction is subpar, the 360 Flyknit concept is cool but nothing spectacular and the price is too expensive for what you get.
25	304	8.4	JAHRONMON [Youtube]	2018-06-12	I absolutely loved playing in these shoes! The Kobe AD NXT 360 truly feels like a high-performance shoe with cutting-edge technology and will be in my rotation for a long time.
3	304	8.4	Schwollo	2018-07-16	So is the NXT 360 worth the price of admission? In a nutshell, no. The Mamba Instinct delivers similar performance, at a fraction of the price!
6	305	9.0	The Sole Brothers	2018-06-12	The Lebron Soldier 12 is 100% worth its price! It's just nice to play in a shoe with gnarly traction like this!
3	305	8.6	Schwollo	2018-09-26	If you want a shoe that does everything very well, this is your shoe.
19	305	7.4	PureKicks	2018-06-12	The traction was surprisingly fantastic! The fit was brillitant, the support was good, if only the materials would have been better!
6	306	8.2	The Sole Brothers	2018-03-25	This is by far the cheapest signature model on the market but it's still a very good performer. We enjoyed it a lot!
7	306	7.5	Nelson Chan @Hoop and Life	2018-04-24	Considering that the Kyrie Flytrap is a budget model it gets the job done, but it's nothing spectacular. Save some extra money and get the Kyrie 4.
1	306	7.4	NightWing2303 [weartesters.com]	2018-04-17	Not a bad shoe for $80, but I would opt for discounted Kyrie 4s � unless you happen to have a wide foot.
4	306	6.8	Zac Dubasik [SoleCollector.com]	2018-03-25	I can't recommend the Kyrie Flytrap from a performance standpoint. The Flytrap feels so cheap that it doesn�t even feel like it was made by Nike.
15	306	6.7	Another Pair [weartesters.com]	2018-03-25	Is it worth your $80 bucks? I don�t think so.
1	307	9.0	NightWing2303 [weartesters.com]	2018-04-25	The Lebron 15 Low fixes the issues of the mid version with stability and support on lateral movements. This is a shoe that will for everyone.
11	307	8.7	Duke4005 [weartesters.com]	2018-06-12	The Lebron 15 Low is a vast improvement over last year's Lows. It's a little more guard-oriented with less cushioning and better stability and traction during lateral cuts. It also works well for lighter players that didn't like the bulky High-top version of the Lebron 15.
6	307	8.4	The Sole Brothers	2018-04-25	I am not a big fan of the Lebron 15 Low. Expensive, heavier than most Lows and the high ride won't work for quick guards who rely on lateral cuts.
1	308	9.0	NightWing2303 [weartesters.com]	2018-02-26	The PG 2 is a really fun shoe to play because it enhanced nearly every feature found on the PG 1.
7	308	9.0	Nelson Chan @Hoop and Life	2018-03-04	The PG2 has slightly improved in every aspect: better cushioning, nicer materials, more comfortable fit and slightly improved traction make them a contender for best shoe of 2018.
15	308	9.0	Another Pair [weartesters.com]	2018-03-25	The Nike PG 2 is a well-rounded shoe and great for people all shapes and sizes. I�d say its definitely an upgrade from the PG 1.
11	308	9.0	Duke4005 [weartesters.com]	2018-03-25	The PG2 is honestly the best all-around shoe that Nike has on the market right now (especially at $110).
24	308	8.6	RicheeKim	2018-02-26	The PG2 performs well across all aspects and comes at an extremely fair price.
25	308	8.6	JAHRONMON [Youtube]	2018-03-25	The Nike PG2 is a slight improvement over the PG1 and in the competition for the best bang-for-the-buck basketball shoe on the market.
3	308	8.4	Schwollo	2018-03-25	The Nike PG2 is all any player would need, everything about it is solid.
4	308	8.3	Zac Dubasik [SoleCollector.com]	2018-08-08	Lockdown and fit have been greatly improved, the cushioning offers exceptional response after a break-in period and $110 remains a great deal! Unfortunately, the shoe still isn't the most comfortable and traction has taken a small step backward.
6	308	8.2	The Sole Brothers	2018-03-04	At this price point, you will have a hard time finding another shoe of this quality.
19	308	8.0	PureKicks	2018-03-25	This shoe is an absolute steal! I especially loved the incredible fit and traction.
6	309	9.2	The Sole Brothers	2018-03-04	We really enjoyed playing in these. The Harden Vol. 2 should work well for everyone - responsive enough for guards but the support and comfortable cushioning will work well for bigger guys too!
1	309	8.8	NightWing2303 [weartesters.com]	2018-03-04	Overall a great shoe, but unfortunately, the inconsistency that I experienced with the traction will likely keep the Harden Vol 2 out of my rotation.
3	309	8.8	Schwollo	2018-03-04	The Harden Vol2 is extremely fun to wear! Overall I feel that Adidas improved everything compared to the V1.
15	309	8.7	Another Pair [weartesters.com]	2018-03-04	Unless you play on crispy clean courts I wouldn't recommend the Harden Vol 2 because there are a bunch of better options on the market.
25	309	8.6	JAHRONMON [Youtube]	2018-06-12	The Harden 2 will defintely stay in my gym bag for a while! I especially loved the comfortable materials and the Boost cushioning. Everything about this sneaker just worked for me - and they are just flat out fun to play in!
24	309	8.5	RicheeKim	2018-02-26	Overall the Harden Vol. 2 is a great performer. Some nitpicking: I would have liked the heel to be a little less clunky and the Boost cushioning to be a little softer in the forefoot.
7	309	8.0	Nelson Chan @Hoop and Life	2018-03-25	Overall, this shoe is pretty good. Great shoe if you have bad knees, you need a lot of comfort and impact protection and you can live with the lackluster traction.
19	309	7.8	PureKicks	2018-02-26	Amazing cushioning, very nice materials and support. Traction is solid but I wasn't happy with the fit.
6	310	9.8	The Sole Brothers	2018-11-26	I really like everything about the Adidas Crazy BYW X. The performance is great and should work well for players of all positions.
1	310	8.7	NightWing2303 [weartesters.com]	2018-11-26	I think the Crazy BYW X is very good, but the traction definitely could be better.
25	310	7.8	JAHRONMON [Youtube]	2018-11-26	Overall, the performance of the Adidas BYW X is solid. But the uneven ride and the lacking outsole durability are no-gos considering the hefty price tag.
6	311	9.4	The Sole Brothers	2018-01-23	The full-length zoom setup is worth the $125 alone. A great big-man shoe as the cushion is amazing!
15	311	9.4	Another Pair [weartesters.com]	2018-01-29	I didn�t expect the shoe to perform this well, but damn! Solid traction, great cushioning, great fit and lockdown, support was on point.
1	311	9.3	NightWing2303 [weartesters.com]	2018-01-29	What a fantastic shoe this is. I�m not a fan of Russell Westbrook, but man, do I love playing in his shoe.
11	311	9.1	Duke4005 [weartesters.com]	2018-01-24	If you are looking for great fit and support, great cushioning, and (almost) great traction, you have got to check this shoe out!
7	311	8.8	Nelson Chan @Hoop and Life	2018-01-23	To me, this will be one of the top performance sneakers of 2018. Full-length zoom at $125 - you can't beat that!
3	311	8.6	Schwollo	2018-02-26	The Why Not Zero.1 is a very nice start for Westbrook�s signature line from a performance standpoint.
20	311	8.1	Analykix.com	2018-10-08	I really enjoyed the full-length cushioning, and the support and lockdown. Overall, I'd wish this shoe was a little less bulky.
24	311	8.0	RicheeKim	2018-01-21	The cushion is great, but the lacking traction and the uncomfortable strap hold back what could have been a top performer.  I am a bit disappointed by Russel Westbrooks first signature sneaker.
19	311	7.2	PureKicks	2018-03-25	The Why Not Zero.1 is a good first edition of Russell Westbrooks signature line. Full-length Zoom is very nice, but materials could be a lot more comfortable.
24	312	9.1	RicheeKim	2017-12-29	At $120, the Kyrie 4 is an absolute steal! This is a very well constructed shoe and an absolute beast on the court. Probably my favorite shoe to play in right now!
1	312	9.0	NightWing2303 [weartesters.com]	2017-01-01	Overall, the Nike Kyrie 4 is Nike�s best performer this year. There�s just enough cushion for most, solid traction, fantastic fit and adequate support � and all of comes at a �team� friendly price point of $120.
15	312	9.0	Another Pair [weartesters.com]	2018-01-14	The Kyrie 4 is the best Kyrie to date. This shoe has everything and is Nike�s best all-around hooping kick right now.
19	312	9.0	PureKicks	2018-01-21	This is the best Kyrie signature shoe ever. The traction is amazing and the cushion and materials are vastly improved.
2	312	9.0	Stanley T. [weartesters.com]	2018-02-26	The Kyrie 4 is one of Nike�s best-performing signature shoes that works well at all positions.
6	312	8.6	The Sole Brothers	2018-01-05	The Kyrie 4 is a phenomenal addition to the Kyrie line. It comes with improved cushioning and materials, great fit and support. The traction is a little disappointing, but for $120 these are a great pickup!
7	312	8.5	Nelson Chan @Hoop and Life	2017-01-01	Definitely the best shoe in the Kyrie signature line so far. Perfect for quick guards who don't rely a lot on impact protection.
25	312	8.4	JAHRONMON [Youtube]	2017-01-01	I had a lot of fun in the Kyrie 4! I give them a B+ - it's not quite elite, but almost there. However, at a $120 price these offer great value!
3	312	8.4	Schwollo	2018-01-05	All in all, the Kyrie 4 is a solid shoe that does everything fairly well, while doing nothing outstanding or really poorly. Cushioning has improved, the traction is decent overall and I really liked the comfort of the plush interior.
9	312	8.3	KickGenius	2018-01-29	Overall, I am satisfied with the Kyrie 4. Minimal break-in time, great traction and a fair price. The Kyrie 4 gets the job done!
15	313	9.0	Another Pair [weartesters.com]	2017-12-27	The Way of Wade 6 is a solid performer, and I enjoy this shoe a lot. I find myself going to this sneaker just about much as I go to my Dame 4s.
7	313	9.0	Nelson Chan @Hoop and Life	2018-02-26	Materials and cushion are great, support and traction are solid. With a few tweaks this could have been the sneaker of the year!
1	313	8.8	NightWing2303 [weartesters.com]	2018-01-14	The Way of Wade 6 competes with most of the top-tier shoes offered from other brands.
6	313	8.0	The Sole Brothers	2017-12-27	Very comfortable, really nice traction - I love the performance of these. The only downside is the lateral containment and the excessive toe room.
6	314	8.6	The Sole Brothers	2018-01-14	The Kyrie S1 perform pretty similar to the Kyrie 1 but feels a little bit bulkier.
19	314	8.5	PureKicks	2017-12-29	This is a really nice concoction of the first three Kyrie models.
1	314	8.3	NightWing2303 [weartesters.com]	2018-01-14	I was surprised with how much I enjoyed the shoe on-court.
6	315	9.6	The Sole Brothers	2018-01-14	I love how light and minimal the Curry 4 Low feels. Traction and cushion remained unchanged from the High-Top, but materials and fit are much improved.
24	315	8.9	RicheeKim	2018-01-14	I think the Curry 4 Low is an upgrade to the original version and I really love to play in them.
1	315	8.6	NightWing2303 [weartesters.com]	2018-01-14	The Curry 4 Low offers great traction and stability for low-to-the-ground guards that prefer to be quick on their feet.
7	315	8.5	Nelson Chan @Hoop and Life	2018-01-21	Better materials and fit compared to the Highs. But the same lackluster cushioning prevents these shoes from being a top performer.
3	315	7.8	Schwollo	2018-01-21	On the court, the Curry 4 Low doesn�t really do anything better than the mid, plus I had some heel slip.
6	316	9.0	The Sole Brothers	2017-01-01	The Curry 4 feels super-duper responsive. As one of the lightest shoes on the market, it provides great traction, tight fit, and low-to-the-ground feeling which makes it the perfect shoe for quick guards.
24	316	8.9	RicheeKim	2017-01-01	The Curry 4 is a great shoe for guards that rely on quick, responsive movements. I really liked everything about it except the very minimal impact protection.
11	316	8.8	Duke4005 [weartesters.com]	2017-01-01	The Curry 4 is a great shoe for quick, ball-handling point guards who need speed with no lag.
15	316	8.7	Another Pair [weartesters.com]	2017-01-01	The Under Armour Curry 4 is a fantastic shoe for anyone looking for court feel. For the people who want impact protection I�d say stay clear from the Curry 4.
1	316	8.6	NightWing2303 [weartesters.com]	2017-01-01	The Curry 4 feels like it should have come after the Curry 2. It provides a better fit, greater stability, and more control.
7	316	8.5	Nelson Chan @Hoop and Life	2017-01-01	I have mixed feelings about the Curry 4. Traction is a strong point, materials are 50:50, support and cushion are decent. However, I can't help to be a little disappointed.
9	316	8.5	KickGenius	2017-12-29	These get the job done - especially if you are looking for a shoe that is really supportive.
19	316	8.5	PureKicks	2018-01-14	This is the best Curry signature shoe so far. Great traction, good cushioning and support - perfect for quick guards.
3	316	8.2	Schwollo	2017-12-27	The Curry 4 is for the quick guard who likes a low to the ground ride with responsive cushioning, tight traction, stability and containment for quick cuts and movements.
25	316	7.8	JAHRONMON [Youtube]	2017-12-27	Overall, I am a little disappointed by the Curry 4, mainly due to the very firm cushioning and budget material.
6	317	9.4	The Sole Brothers	2017-01-01	One of the best performance shoes I have played in this year, especially at this price. A very nice shoe that will work for every type of player.
1	317	9.1	NightWing2303 [weartesters.com]	2017-01-01	The Anta KT3 is a great shoe. Between the Dame 4, Curry 4 and KT3 I have one hell of a lineup to choose from on any given night.
25	317	8.6	JAHRONMON [Youtube]	2017-12-27	I think Anta killed it with the KT3. This is a very affordable signature sneaker with a premium knitted upper, great traction and responsive cushioning.
7	317	8.5	Nelson Chan @Hoop and Life	2017-01-01	Premium materials as well as improved cushioning and traction - a definitive improvement over the KT2.
20	317	8.5	Analykix.com	2018-04-17	I enjoyed playing in the Anta KT3 and I would easily recommend the shoe for multiple player positions because of it's adequate cushioning.
2	318	9.3	Stanley T. [weartesters.com]	2018-01-05	The LeBron 15 is one of the best LeBron shoes ever. Materials, fit, and cushion are the definite highlights of the shoe.
24	318	9.2	RicheeKim	2017-01-01	I think this is one of the best Lebrons ever. Material usage is great, cushioning is great, support is great -  basically, everthing is really nice! But keep in mind that this shoe is made for big and heavy players, and won't work as well for smaller guards.
15	318	9.0	Another Pair [weartesters.com]	2017-01-01	Overall, the LeBron 15 is a fun shoe to play in. Especially, the cushion is fabulous!
19	318	9.0	PureKicks	2017-01-01	The Lebron 15 is the best Lebron of all time. This shoe ticks all the boxes, the only slight downside was the traction.
11	318	8.9	Duke4005 [weartesters.com]	2018-01-21	This may be the best playing LeBron shoe ever. If you are looking for the absolute best Nike cushioning in basketball and a shoe that bleeds technology, the LeBron 15 is your ride.
1	318	8.8	NightWing2303 [weartesters.com]	2017-01-01	I love pieces of the LeBron 15. Materials and fit are highlights, and the cushion is the best Nike has offered in years. Stability made them a bit concerning for me while on the floor and I never ended up feeling as comfortable as I wanted to be.
6	318	8.8	The Sole Brothers	2017-01-01	My favorite Lebron ever - I really enjoyed playing in the Lebron 15. The cushioning is insane, the materials are as premium as it gets, unfortunately, the price is too.
3	318	8.6	Schwollo	2017-01-01	There are a lot of positives with the LBJ 15 especially the cushioning, the fit, and the soft materials. Traction isn�t horrible but it definitely isn�t King worthy and needs some serious break in and wear to improve.
4	318	8.5	Zac Dubasik [SoleCollector.com]	2017-01-01	The LeBron 15 doesn�t offer anything truly groundbreaking in terms of its design, but it�s taken existing concepts and improved on nearly everything. The traction was the only real downer for me, but it wasn�t bad enough to ruin the things I did like.
7	318	8.0	Nelson Chan @Hoop and Life	2017-01-01	As a small guard, I didn't love the high-off-the-ground feeling and the laggy cushioning. However, if you are a bigger, heavier and powerful player than you will love the Lebron 15.
1	319	9.2	NightWing2303 [weartesters.com]	2017-01-01	The Air Jordan 32 is a huge step in the right direction. Everything feels refined. If Jordan Brand can keep the stability but increase the flexibility then it will have perfected the Flight Speed setup. I think people are going to like this one.
15	319	9.2	Another Pair [weartesters.com]	2017-01-01	The Air Jordan XXXII is a banger for real. This shoe has everything you need: good traction, good cushion, excellent materials, and amazing support.
2	319	9.2	Stanley T. [weartesters.com]	2017-12-27	This is hands down the best on-court Air Jordan Model to date, as it should be. Every feature fits the mold to near perfection. Jordan Brand took a huge step in the right direction across all performance aspects.
3	319	9.0	Schwollo	2017-01-01	The AJ XXXII is a great shoe that should satisfy everyone except the minimalist hoop crowd that love shoes like the Kobe 8, Mamba Mentality, Instinct etc
24	319	9.0	RicheeKim	2017-12-27	Across the spectrum, this shoe performs very well and should work for all types of players. Pretty pricey, but worth every penny!
25	319	8.8	JAHRONMON [Youtube]	2017-12-27	The Air Jordan 32 is a great performer and I was a little sad when I had to put these aside to test other performance shoes. The only two downsides are the long break-in period and the hefty price tag.
4	319	8.8	Zac Dubasik [SoleCollector.com]	2017-01-01	Despite sky-high expectations, the Air Jordan 32 mostly delivers. I liked the more minimal collar and feel of the 31s cushioning better, but thought the 32 offered far superior traction and a smoother transition.
9	319	8.7	KickGenius	2018-01-14	I think this is a great shoe for in-between players who are looking for a good mix of comfortable cushioning and responsiveness.
10	319	8.6	MR FOAMER SIMPSON	2017-01-01	I think Jordan brand did a great job with the XXXII. This has taken over the Nike PG1 as my go-to basketball shoes.  Traction, cushioning and lockdown are all great - what else do you need in a performance sneaker?
7	319	8.5	Nelson Chan @Hoop and Life	2017-01-01	Pros: Great Traction, Cushioning provides a good balance between impact protection and res
19	319	8.5	PureKicks	2017-12-27	Overall, I would describe the Air Jordan 32 as a responsive shoe with ultimate support. Great for big guys, but unfortunately, the traction was pretty disappointing.
6	319	8.2	The Sole Brothers	2017-01-01	Nice shoes with premium materials and nice cushioning. I was a bit disappointed by the traction and the lateral containment. At a steep $185 I wouldn't recommend these.
1	320	9.0	NightWing2303 [weartesters.com]	2017-01-01	The Dame line continues to be the best signature you can get for your money. Bang for your buck like no other.
7	320	9.0	Nelson Chan @Hoop and Life	2017-01-01	This is a really good performance basketball shoe - probably one of the best basketball shoes of 2017! Especially at the low list price of $115.
15	320	9.0	Another Pair [weartesters.com]	2017-01-01	I was having so much fun in this kick I didn�t want to stop. If there was a category for �fun to play in� I would rate the Dame 4 Hall of Fame!
11	320	9.0	Duke4005 [weartesters.com]	2017-01-01	With good cushioning, good fit, and good materials, the Dame 4 is good at everything. As an overall package, this is one of the most complete and fun shoes to play in that you will ever find.
2	320	9.0	Stanley T. [weartesters.com]	2017-12-29	Decent cushion, good fit, good materials � the shoe is good for everything on the court and gives you a great overall package.
6	320	8.8	The Sole Brothers	2017-01-01	I loved playing in these. Perfect for guards who want to be low to the ground and are looking for a very responsive shoe.
24	320	8.8	RicheeKim	2017-01-01	The Dame 4 is the perfect shoe for quick guards and offers amazing performance at a very affordable price.
3	320	8.6	Schwollo	2017-01-01	I really really really enjoy playing in this shoe but only on clean or slightly dusty floors. But the fact that I would even consider playing in these despite the meh traction speaks volumes about how fun this shoe is overall.
19	320	8.6	PureKicks	2017-12-27	The Dame 4 is an underrated shoe that works very well for quick guards.
9	320	8.5	KickGenius	2017-01-01	This is probably the best performing shoe to hoop in right now! This shoe is really smooth and I come back to it all the time.
25	320	8.5	JAHRONMON [Youtube]	2017-12-27	Traction, cushion, fit were all great, and the support system is all I need. This is one of the best-value sneakers I have ever worn!
1	321	9.2	NightWing2303 [weartesters.com]	2018-01-24	The Air Jordan 32 is a huge step in the right direction.
24	321	9.0	RicheeKim	2017-12-27	I think this shoe is worth every penny and I like the low-top version better than the regular mid. The Air Jordan 32 Low offers slightly better traction and more freedom of movement.
19	321	8.8	PureKicks	2017-12-27	You get amazing cushioning, and premium materials. Unfortunately, the traction is a real dust collector. Decent performer, but probably not worth the hefty price tag
6	321	8.2	The Sole Brothers	2017-12-27	I really enjoyed playing in these! The Air Jordan 32 Low is super comfortable and performs very well.
6	322	9.2	The Sole Brothers	2017-01-01	The performance of the D Rose 8 is stellar. Feels like a lighter, streamlined and more minimal D Rose 7. I love these shoes and put them on the top of my list of Adidas performance sneakers.
11	322	9.0	Duke4005 [weartesters.com]	2017-01-01	By combining great traction, awesome cushioning, and serious fit, the Rose 8 is built for every player.
24	322	8.9	RicheeKim	2017-01-01	For $140 this is a really good shoe. It brings everything you want: impact protection, responsiveness, ventilation, support and really good traction. If you like supportive high-tops, then this is the perfect shoe for you!
1	322	8.9	NightWing2303 [weartesters.com]	2017-12-27	The Adidas D Rose 8 is a very solid shoe. Traction is my main gripe with the Rose 8, but everything from the midsole up worked really well.
3	322	8.6	Schwollo	2017-01-01	Since the D Rose 5, we�ve gotten great cushioning, traction, support and stability, and a reliable fit year over year and the D Rose 8 is no different. Materials aren�t always the best but that�s always been a non-issue for me.
19	322	8.6	PureKicks	2017-12-27	No distractions! This is a traditional basketball shoe and a great overall performer. This shoe worked very well for my style of game!
6	323	9.0	The Sole Brothers	2017-01-01	You feel super fast in these shoes. The Hyperdunk 2017 is one of the top performers of 2017
9	323	9.0	KickGenius	2017-12-27	I am a big fan of the comfort and amazing traction of the FlyKnit version of the Hyperdunk 2017.
24	323	8.7	RicheeKim	2017-12-27	Overall, I can highly recommend this shoe for players of every position. Me, as a guard, I love this shoe as I get decent impact protection and a great court feel!
2	323	8.6	Stanley T. [weartesters.com]	2017-01-01	The Nike React Hyperdunk 2017 is by far one of the most solid shoes I�ve played in this year
3	323	8.6	Schwollo	2017-01-01	HD2017 has taken the top Hyperdunk spot. Better traction than previous Hyperdunks, better cushioning than the 2012-14 version, great fit, good stability and excellent containment� what more do you want?
7	323	8.5	Nelson Chan @Hoop and Life	2017-01-01	Overall, this is a really good shoe. Good traction, nice material and solid lockdown. Support could have been a little better. At $160 it is a little expensive.
19	323	8.5	PureKicks	2017-12-27	Amazing traction, good support and the addition of React cushioning is welcome. I like shoes you can just put on, and they don't get in the way.
15	323	8.0	Another Pair [weartesters.com]	2017-01-01	The Nike Hyperdunk 2017 Flyknit isn�t a bad shoe. The cushion isn�t what I expected, but it�s tolerable. The lateral containment wasn�t the best, but it won�t keep me from hooping in these again.
4	323	8.0	Zac Dubasik [SoleCollector.com]	2017-01-01	I�d say the React Hyperdunk was disappointing. It is a hard shoe to recommend when better options are available at all price points.
9	324	9.0	KickGenius	2017-12-27	I think the Kobe AD Mid is the best Kobe shoe out right now! Better than the NXT or the regular AD.
7	324	9.0	Nelson Chan @Hoop and Life	2017-01-01	Overall, the Kobe AD Mid is a solid performer with phenomenal traction, nice cushioning and solid support. The suede material is a little too stiff for my liking, but hopefully, future releases with a Jacquard or Flyknit upper will fix this issue.
24	324	8.9	RicheeKim	2017-12-27	The Kobe AD is an amazing performer but I just wish they had used a different upper material.
3	324	8.6	Schwollo	2017-12-27	I think the Kobe AD Mid is an excellent all-around performer on the court. Not surprisingly, it�s one of my top five for the year due to its great overall performance.
19	324	8.5	PureKicks	2017-12-27	The Kobe AD Mid is a beautiful and comfortable shoe that unfortunately suffers from bad ventilation and a small amount of heel slippage. Otherwise, I really like this shoe!
6	324	8.4	The Sole Brothers	2017-01-01	This shoe feels very different than any other Kobe shoe I ever played in. It provides less responsiveness and court feel than other Kobes. It seems like after his retirement, Kobe wants a little more cushioning and a more old school vibe from his shoes.
25	324	8.2	JAHRONMON [Youtube]	2017-12-27	This is a very well performing shoe but there are no standout features. Great pickup for Kobe fans, but there are cheaper shoes that perform just as well.
1	324	7.8	NightWing2303 [weartesters.com]	2017-01-01	The shoe plays and performs really well. Traction was awesome and the cushion was solid � especially for guards. Ventilation and material quality are where the Kobe AD Mid�s could improve.
15	324	7.8	Another Pair [weartesters.com]	2017-01-01	The Kobe AD Mid is a beautiful shoe. The only real complaint I have is with the lacing system digging into my foot.
6	325	8.8	The Sole Brothers	2017-01-01	A budget model that performs like a top-tier model. Traction is amazing, the cushion is okay, materials are really nice and they fit me very well. I think this is one of the best-performing Under Armour shoes out right now!
18	325	8.5	AnotherPair [Youtube]	2017-01-01	Overall, this is a great shoe that will work for every type of player. Good job Under Armour!
11	325	8.0	Duke4005 [weartesters.com]	2017-01-01	Overall, the Drive 4 is a decent, serviceable shoe � nothing except traction really stands out, yet the shoe is good for players at all positions.
2	325	8.0	Stanley T. [weartesters.com]	2017-01-01	This shoe is for the every day, every position player and it is a solid performer. If you require more cushion like myself, then you may have to look elsewhere.
7	325	8.0	Nelson Chan @Hoop and Life	2017-01-01	The Under Armour Drive 4 is a solid hoops shoe for a low-budget price. I like them more than the Steph Curry 3 Zero. They feel lighter, are more flexible and the traction is on point. The cushioning is not a strong point but is still fairly good.
5	325	7.8	Jarron Ramos [weartesters.com]	2017-01-01	The Drive 4 has some things going for it (traction) and then there are some things that need work (fit and materials). If you�re someone who plays low to the ground, prefers a stable ride and has a wide foot, these are going to be great for you.
1	326	8.6	NightWing2303 [weartesters.com]	2017-01-01	Outside of the lacking cushioning the Jordan Super.Fly 2017 is so close to being perfect it�s kind of scary,
2	326	8.6	Stanley T. [weartesters.com]	2017-01-01	The Jordan Super.Fly 2017 was an absolute delight to ball in.  If you�re okay with the firmness of React cushioning and enjoy a low profile on-court ride, this has you covered with traction, lockdown, and stability.
6	326	8.4	The Sole Brothers	2017-01-01	It's a good performer made for bigger dudes. Very durable because of the strong materials and hard rubber. However, I wouldn't recommend them for a shifty guard.
24	326	8.4	RicheeKim	2017-12-27	The Super.Fly 2017 is a decent shoe, but I would rather go with the Nike Hyperdunk 2017 as it comes with the same technology but more premium materials and better-feeling cushioning.
19	326	8.0	PureKicks	2017-01-01	Some things are good, some aren't. This shoe doesn't quite get my approval.
6	327	9.4	The Sole Brothers	2017-01-01	Crazy good performance, looks dope, premium materials. Overall, an amazing shoe, get it!
15	327	9.2	Another Pair [weartesters.com]	2017-01-01	The adidas Crazy Explosive 2017 Primeknit is a great shoe! I love this thing like crazy and it is by far my favorite hoop shoe of 2017 so far. It�s number one in my rotation and I�m pretty sure it will be in many of yours as well.
11	327	9.2	Duke4005 [weartesters.com]	2017-01-01	Improved fit and killer cushioning should put the Crazy Explosive 2017 PK on everyone�s radar this year if you play basketball. Grab this shoe if you need traction for indoor courts, #Boostislife cushioning, a locked-in fit, and quick support.
9	327	9.0	KickGenius	2017-01-01	Feels like playing in a sock with good traction and Boost cushioning!
24	327	9.0	RicheeKim	2017-12-27	Great shoe! If you can - get the solid rubber version as it offers slightly improved traction.
19	327	9.0	PureKicks	2017-12-27	I am really happy with the Crazy Explosive 2017. Crazy comfortable, great cushioning and traction.
3	327	8.8	Schwollo	2017-01-01	I think most players will enjoy the Crazy Explosive 2017 because it does everything well if not great and really gives the player an excellent one to one fit with a low to ground yet well cushioned ride.
7	327	8.5	Nelson Chan @Hoop and Life	2017-01-01	I prefer the 2016 version over the Crazy Explosive 2017. The traction is identical, cushioning is a lot firmer and less plush, lockdown and support are a little better and the materials are a lot stiffer and less comfortable. Overall, still a very solid shoe.
6	328	8.0	The Sole Brothers	2017-12-27	This shoe is pretty nice and works well for guards who need a responsive shoe. Feels a little like a low-top Kyrie 2 with nicer materials and worse traction.
9	328	8.0	KickGenius	2017-12-27	Overall this is a solid shoe that has signature model-like qualities at a retail price of $100 - you can't really beat that!
19	328	8.0	PureKicks	2017-12-27	Overall, this is a pretty good shoe. Nothing crazy, but very good value for the money!
15	328	7.4	Another Pair [weartesters.com]	2017-12-27	While the Nike Zoom Shift is aesthetically pleasing, the inconsistent traction and the brick-like cushion makes the shoe very unpleasant on-court.
15	329	9.3	Another Pair [weartesters.com]	2017-01-01	Overall, the Nike Lebron Soldier 11 is the bomb, I love it! I have no complaints about it whatsoever. This shoe jumped up to #2 on my rotation, that's how much I liked it.
1	329	8.6	NightWing2303 [weartesters.com]	2017-01-01	While traction could still use a little bit of work, the cushion is immensely better than the last go-around. Suitable for every position on the floor and a great option for players than want a little bit of everything with their on-court shoes.
6	329	8.6	The Sole Brothers	2017-01-01	A well-rounded shoe that provides a ton of support and lockdown. Traction is decent. Not recommended for shifty guards because it feels a little bulky, but a very good shoe for bigger players who value impact protection, lockdown and support.
3	329	8.6	Schwollo	2017-12-27	Although the Soldier XI doesn�t do anything extremely well, it�s a very solid shoe all the way around.
4	329	8.5	Zac Dubasik [SoleCollector.com]	2017-01-01	The LeBron Soldier 11 in many ways is �just� the LeBron Soldier 10.1. That�s really not a bad thing though, as the Soldier 10 was a great shoe, and the 11 improves on almost every aspect of its design with very minimal compromise.
9	329	8.5	KickGenius	2017-01-01	Good for what it does, doesn't quite get the Kick Genius stamp of approval but definitely gets the job done. The best Lebron Soldier I ever played in for sure.
5	329	8.2	Jarron Ramos [weartesters.com]	2017-01-01	The Nike LeBron Soldier 11 is a very versatile sneaker. Any guard or slashing forward will find something that they like. It is a solid option both indoors and on the black top, yet it isn�t quite �elite.� Had Nike went all out on the cushioning and made it a little more stable, it would have easily been a top-tier performer.
7	329	8.0	Nelson Chan @Hoop and Life	2017-01-01	It's a really, really solid shoe. I loved the cushioning and responsiveness, the support and lockdown were really solid, but traction was very inconsistent. Not my go-to shoes but definitely in the rotation.
7	330	9.0	Nelson Chan @Hoop and Life	2017-01-01	Overall the shoe is very similar to the KD 9. I like the firmer cushioning, the soft and flexible upper, but the support could be better.
19	330	8.6	PureKicks	2017-12-27	The KD10 is a great shoe overall but there are some downfalls like the lacking of lateral support.
6	330	8.5	The Sole Brothers	2017-01-01	I like the shoe a lot! If you are not looking to do heavy lateral cuts or be really shifty then this is a great shoe! Very comfortable fit and great cushion make these perfect when you want to give your legs some extra comfort.
11	330	8.4	Duke4005 [weartesters.com]	2017-01-01	Compared to the KD9, the Zoom is toned down, for good and bad. The materials are definitely improved. The looks � let�s face it, this is a beautiful shoe. But the traction slid a little and the overall playability seemed a step back from the KD9.
2	330	8.4	Stanley T. [weartesters.com]	2017-01-01	The KD10 just misses being a great shoe due to minor flaws in construction and traction � but they don�t deter it from being a good performance shoe.
15	330	8.3	Another Pair [weartesters.com]	2017-12-27	Overall, the KD10 is a decent shoe, it just not as good as the KD9.
24	330	8.1	RicheeKim	2017-12-27	Overall, this is a good shoe. Unfortunately, traction and support keep it from being great.
1	330	8.0	NightWing2303 [weartesters.com]	2017-01-01	The Nike KD 9 was an amazing shoe. The Nike KD 10 was almost an amazing shoe. It looks amazing, but it suffered in a few areas due to the bold new design.
9	330	8.0	KickGenius	2017-01-01	Overall the KD 10 performs solid in all categories. There is nothing phenomenal but on the flip side there is also nothing bad.
1	331	9.2	NightWing2303 [weartesters.com]	2017-01-01	Is the Curry 3ZER0 leaps and bounds better than the Curry 3? No. However, the cushion feels more refined and offers a better balance between stability and protection.  If you�re a guard or a shooter and plan on trying out the Curry 3ZER0 I think you�ll be pleasantly surprised.
3	331	8.6	Schwollo	2017-01-01	Out of the three Curry models released this year, I�d put the Low first, the 3Zero slightly behind at second and then the Mid. The Curry 3 Zero is a more minimal shoe that doesn't rely on bells and whistles or tech mumbo-jumbo, which I personally enjoy.
24	331	8.5	RicheeKim	2017-01-01	For a $120 this is not a bad shoe! Really good on-court performer and I like the fit much better compared to the original Curry 3. I just wish they hadn't downgraded the material from Threadborne to Mesh.
7	331	8.0	Nelson Chan @Hoop and Life	2017-01-01	The SC 3Zero is a solid second line shoe. Overall, I wasn't a big fan of the new cushioning setup and the inconsistent traction. However, I did like the improved ankle support.
6	331	7.8	The Sole Brothers	2017-01-01	Just like the Curry 3, nothing special. I wasn't happy with the fit and the traction. Let's hope for an improved Curry 4.
1	332	8.6	NightWing2303 [weartesters.com]	2017-01-01	The ANTA KT Outdoor 2 Low is a very good hoop shoe that offers a little bit of everything � court feel, semi-plush cushioning, durable traction that works on a variety of surfaces, and materials that are very much in line with what other brands are offering.
20	332	8.3	Analykix.com	2017-01-01	The Anta KT Outdoor 2 Low is a solid shoe. It's very light, has good impact protection and superb traction. I highly recommend this shoe for hoopers who love to play in both indoor and outdoor courts.
6	332	8.0	The Sole Brothers	2017-01-01	I was really impressed with this shoes, especially at $80! This will be my go-to outdoor shoe.
9	333	9.3	KickGenius	2017-01-01	I think this is a very good shoe. Great traction, nice materials and an outstanding fit (for narrow feet). This is a BIG upgrade over the original Kobe AD
1	333	9.0	NightWing2303 [weartesters.com]	2017-01-01	The NXT version of the Kobe A.D. has much more in common with the Kobe 11 than with the ori
3	333	8.8	Schwollo	2017-01-01	It is just a well-rounded performer with great traction, fun cushioning, excellent fit and stability and decent containment. These edge out the Curry 3 Low for my favorite of 2017.
6	333	8.8	The Sole Brothers	2017-01-01	For $200 this shoe is a no-go. Disregarding the price, the Kobe AD NXT is a really good performer.
4	333	8.8	Zac Dubasik [SoleCollector.com]	2017-01-01	The Kobe AD NXT has some exciting high points and I truly enjoyed playing in these thanks to the fantastic upper comfort. Unfortunately, at $200 this is the most expensive basketball shoe model in the 2017 Nike lineup. There are far better values out there.
10	333	8.3	MR FOAMER SIMPSON	2017-01-01	User didn't add a summary.
7	334	9.5	Nelson Chan @Hoop and Life	2017-01-01	At $110 these are by far the best value performance basketball shoes available right now.
5	334	8.8	Jarron Ramos [weartesters.com]	2017-01-01	The Nike PG 1 features a consistent traction experience that holds up on a wide variety of court conditions as well as a decent cushion setup that favors quick, low to the ground players. At $110, it�s worth a shot right?
9	334	8.7	KickGenius	2017-01-01	Overall I thought that shoe performed great! It's my go-to shoe right now and I will be hooping in them for a while!
24	334	8.6	RicheeKim	2017-12-27	For $110, I can absolutely recommend these shoes.
4	334	8.5	Zac Dubasik [SoleCollector.com]	2017-01-01	The PG1 performs on a level that far exceeds its relatively low price tag.  Its cushioning and stability are top-notch, making it my favorite Nike of the season at any price.
1	334	8.4	NightWing2303 [weartesters.com]	2017-01-01	I will say that the Nike PG1 is very good if you�re looking for a shoe that feels like an extension of your foot without breaking the bank.
2	334	8.4	Stanley T. [weartesters.com]	2017-01-01	The PG1 is a wonderful shoe to play in, as long as you don�t have wide feet and you can get your foot into the shoe. For a first signature model and it�s $110 price point, I think the shoe is fantastic.
6	334	8.4	The Sole Brothers	2017-01-01	I really like to play in the Nike PG1. Cushion and fit are nice and the traction gets good after breaking them in.  At $110 they are a real steal!
10	334	8.3	MR FOAMER SIMPSON	2017-01-01	For only $110 it  is a very, very good performance basketball sneaker.  You won't worry about sliding around, slipping on the floor, or the lockdown of the shoe. A
3	334	8.0	Schwollo	2017-01-01	Overall, the PG1 is a great start to a new signature shoe, far better than the Kyrie 1 in my opinion. Cushioning isn�t the best or very fun but it works fine while  the rest of the shoe performs very well.
7	335	9.0	Nelson Chan @Hoop and Life	2017-01-01	When it comes to performance the KD9 Elite is very similar to the original KD9. The most notable difference is the strong lacing cables which slightly enhance support and lockdown. However, this new lacing setup also makes the shoe even narrower which led to some pain on the side of my feet.
9	335	8.8	KickGenius	2017-01-01	A great shoe with slight improvements over the original KD9. The upper material is softer and more comfortable and the new lacing system provides more lockdown and support.
6	335	8.5	The Sole Brothers	2017-01-01	It's a very specific shoe. Great if you have narrow feet and you are looking for a shoe with a lot of cushion and impact protection. If you are a shifty guard who does a lot of crossovers and cuts then the lacking support of the upper and the slightly unstable platform are not ideal. Not recommended if you have wide feet.
5	335	7.8	Jarron Ramos [weartesters.com]	2017-01-01	The traction, cushion, and materials all bring out the best of Nike�s technology, unfortunately, the KD 9 Elite doesn't perform as well when it comes to support and fit.
15	336	8.8	Another Pair [weartesters.com]	2017-12-27	At a retail price of $120, the Jordan Ultra Fly offers great bang for the buck.
1	336	8.6	NightWing2303 [weartesters.com]	2017-12-27	This is the first Jordan Brand performance model I�ve bought in a long time that doesn�t make me feel like I was ripped off.
9	336	8.5	KickGenius	2017-12-27	For $125 this is a great performer. I don't feel like the Ultra Fly series gets enough respect. Heel and forefoot Zoom, mesh upper, nice traction - I can't ask for much more.
11	337	8.2	Duke4005 [weartesters.com]	2017-01-01	The Charged Controller is quick, low-riding, well-cushioned but not super soft, with a locked-in fit just stable enough to make me feel bulletproof.
2	337	8.2	Stanley T. [weartesters.com]	2017-01-01	The Under Armour Charged Controller is a fantastic shoe. It rides low, is responsive, locks you in and keeps you stable to do battle on the hardwood.
5	337	7.8	Jarron Ramos [weartesters.com]	2017-01-01	When you take price out of the equation and put the Charged Controller up against some of the top-tier performers on the market today, it doesn�t quite belong in that group. But right below it? Absolutely. Oh, and did we mentioned that the shoe is only $100?
7	337	7.5	Nelson Chan @Hoop and Life	2017-01-01	Overall, a solid shoe. Nothing super spectacular, but also no deal breakers. I wasn't happy with the traction and the cushioning wore out pretty quickly.
6	337	6.1	The Sole Brothers	2017-01-01	Even at a $100 bucks, we don't recommend this shoe. There are many other shoes out there that provide far better value.
6	338	8.0	The Sole Brothers	2017-01-01	I didn't like the Melo M13. As a guard, don't get these! The cushioning and the materials are good, but the traction was a dealbreaker for me.
11	338	7.0	Duke4005 [weartesters.com]	2017-01-01	Nice try, but not quite. Felled by traction and support, the Melo M13 had potential.
7	339	8.5	Nelson Chan @Hoop and Life	2017-01-01	An improvement over the last year, but I didn't like the clunkiness of the transition and the $175 price tag is pretty steep.
4	339	8.3	Zac Dubasik [SoleCollector.com]	2017-01-01	Ultimately, the things I like about the 14 overshadow those that I don�t. Because of that, I thoroughly enjoyed playing in it.
1	339	8.2	NightWing2303 [weartesters.com]	2017-01-01	The LeBron 14 isn�t perfect, but no shoe is. Impact protection and overall mobility are great, traction wasn't bad either.
10	339	8.0	MR FOAMER SIMPSON	2017-01-01	I value impact protection heavily, therefore, they are one of the best sneakers available right now.
11	339	7.8	Duke4005 [weartesters.com]	2017-01-01	The overall court feel, transition, cushioning, and clean-floor traction make the LeBron 14 feel fast and smooth to play in.
3	339	7.4	Schwollo	2017-01-01	I consider the Lebron XIV one of the most comfortable but under performing Lebrons I�ve ever worn. Great cushioning and soft materials can only cover flaws to a certain extent.
6	339	7.2	The Sole Brothers	2017-01-01	As a guard, I did not enjoy the shoe. But for big guys this should be a great shoe.
6	340	8.2	The Sole Brothers	2017-01-01	As a guard, I don't like playing in these very much. Slightly bulky, and higher off the ground than I prefer. It's definitely a decent shoe, but it just wasn't for me.
5	340	8.2	Jarron Ramos [weartesters.com]	2017-01-01	If you�re looking for a cloud-like ride, with great materials and a glove-like fit, the Zoom Rev �17 is going to get the job done really well.
11	340	8.0	Duke4005 [weartesters.com]	2017-01-01	The Zoom Rev 17 is an extremely solid option for someone looking for quickness, forefoot cushioning while still riding low, and a great fit.
6	341	8.8	The Sole Brothers	2017-01-01	A really nice shoe, I enjoyed playing in it a lot. This should have been the Kyrie 3. Guards - you will love it!
1	341	8.6	NightWing2303 [weartesters.com]	2017-01-01	Taking the $100 price tag out of the equation, the Nike Zoom Live 2017 stands up against Nike�s higher priced models and outshines them. If you�re a fan of low tops then you�ll likely be a fan of these.
3	342	8.6	Schwollo	2017-01-01	This is my first pass at the Mentality, I mean Instinct line and I am pleasantly surprised. I had a hard time differentiating performance wise between the Kobe 8; both sit low to the ground with excellent traction and fit.
6	342	8.4	The Sole Brothers	2017-01-01	At $100 you can't go wrong! A very minimal and responsive shoe for guards who don't need a lot of impact protection.
20	342	8.3	Analykix.com	2017-01-01	I really enjoyed playing in the Nike Mamba Mentality. You get to enjoy a Flyweave upper and a full-length Lunarlon midsole which is perfect for all-around players.
24	343	8.4	RicheeKim	2017-12-27	If you are a quick guard and you don't need a lot of impact protection then the Kyrie 3 is a great choice.
9	343	8.3	KickGenius	2017-01-01	Probably my favorite shoe to hoop in right now!
6	343	8.2	The Sole Brothers	2017-01-01	I really love to play in them, but I can't play a lot because of the lack of cushioning. Incredibly responsive shoe with excellent traction.
1	343	8.0	NightWing2303 [weartesters.com]	2017-01-01	Surprisingly enough, I enjoyed playing in the Kyrie 3,  If cushion is your main need then you should already know what that means for you and the Kyrie 3. But if court feel and traction are your only concerns then these might be your new best friend.
7	343	8.0	Nelson Chan @Hoop and Life	2017-01-01	Decent, affordable shoe, especially if you are a small guard. Personally I didn't really like these shoes but at $120 they are definitely a decent performer.
4	343	7.8	Zac Dubasik [SoleCollector.com]	2017-01-01	The Kyrie 3 is a solid shoe, but I can�t help but feel a bit disappointed. And this admittedly comes from the high expectations I had after liking the first two shoes so much. But from the design, to the cushioning, to the comfort, it�s just not what I�d hoped for.
10	343	7.7	MR FOAMER SIMPSON	2017-01-01	Overall, I like the Kyrie 3 but I am not crazy about it. Not in my top-3 rotation, but a good sneaker with a fair price. Especially quick guards will like the traction and court feel.
2	343	7.4	Stanley T. [weartesters.com]	2017-01-01	I did thoroughly enjoy the shoe, particularly the materials and the traction. It's such a minimalistic shoe that Nike almost had everything working in unison -- almost. More cushion is definitely a much-needed necessity and a well thought out execution with support would suffice. This is a shoe for players that cut heavily, need minimalistic cushion, and rely on that court-feel.
3	343	7.4	Schwollo	2017-01-01	Not the best value out there but a good performer overall...The Kyrie 3 just feels like a quick high cut tennis shoe for players that value lateral quickness over everything else.
1	344	9.0	NightWing2303 [weartesters.com]	2017-01-01	The adidas Harden Vol. 1 is a very well balanced shoe for guards. Traction, cushion, materials, fit, support�the best of what adidas has to offer all on one sneaker? Reasonably priced? And they�ve been doing this all year long? You best believe it.
11	344	9.0	Duke4005 [weartesters.com]	2017-01-01	If you are a guard, or forward, or big man who doesn�t mind lows, you will enjoy this shoe. Fit, cushion, traction, and support are all nice for anyone unless you just feel like you need a super-light shoe (you don�t).
6	344	9.0	The Sole Brothers	2017-01-01	The fit is good, the traction is amazing. The shoe feels light, and the cushion is very responsive. The Harden Vol. 1 is a very good shoe and does live up to the reputation James Harden has as a talented and explosive player.
24	344	8.9	RicheeKim	2017-12-27	These are my favourite shoes as of right now!
7	344	8.5	Nelson Chan @Hoop and Life	2017-01-01	I like the cushioning, traction and materials, but I had sharp pain in the toe area and the lacing system is trash. Overall the Harden 1 is a pretty solid performance sneaker.
3	344	8.0	Schwollo	2017-01-01	The Harden Vol 1 is one of those shoes I like a lot. Its tech is great, it looks good, it�s made well and it isn�t too expensive. However, Adidas ruined an excellent traction set up with the Fibonacci design and as a traction lover, this did the shoe in for me. Well that and my arch pain.
9	344	7.0	KickGenius	2017-01-01	Overall, the shoe gets the job done. There's nothing special here, the shoe is a decent performer, but the traction threw me for a slip.
10	344	7.0	MR FOAMER SIMPSON	2017-01-01	The fit was a little bit off, but I'd probably give those a 7/10. It's a great option for guards who are looking for traction and court feel.
11	345	9.2	Duke4005 [weartesters.com]	2017-01-01	The Dame 3 combines great cushioning, good traction, killer materials, and a price that can�t be beat � into a package that, honestly, looks great too.
1	345	9.0	NightWing2303 [weartesters.com]	2017-01-01	The adidas Dame 3 is a great sneaker. It�s very well rounded in every category and it will accommodate most players and foot shapes. From the traction, to the plush and bouncy cushion, to the materials that balance durability without the need for break-in time � the adidas Dame 3 has it all.
6	345	8.8	The Sole Brothers	2017-01-01	Overall, it's a really, really nice shoe. The cushion is nice, the traction is good but not the best on dusty courts and the materials are good. The only two things I didn't like are that the shoe feels slightly bulky especially in the heel and the lockdown is not very good.
7	345	8.5	Nelson Chan @Hoop and Life	2017-01-01	Overall, this is a pretty solid hoops shoe, especially for the sticker price it goes for. You got great traction and cushioning, good support and lockdown and solid materials. Unfortunately the fit isn't very comfortable.
3	345	8.2	Schwollo	2017-01-01	The improved traction really got me excited and I liked the faster feel of the Dame 3 cushioning. However, the lack of padding at the midfoot and especially around the ankle really made the lace pressure uncomfortable.  I feel like the Dame 3 is one of those shoes that performs well in every catagory but just under performs as a shoe overall.
9	345	8.0	KickGenius	2017-01-01	Overall, I would probably still go with the D Lillard 2 over the Dame 3. But the Dame 3 isn't bad at all and gets the job done. Most people will enjoy this shoe, especially once you found a lacing pattern that is comfortable for you.
7	346	9.0	Nelson Chan @Hoop and Life	2017-01-01	I love everything about the Kobe AD except the painful break-in period. The overall aesthetics are great, the cushion is on point, the lockdown is there. The shoe is lightweight but still supportive and sturdy.
6	346	8.6	The Sole Brothers	2017-01-01	Very good looking shoes for guards. I enjoy it, I really like the shoe. Unfortunately rather long break-in period.
3	346	7.8	Schwollo	2017-01-01	I enjoyed playing in the Kobe AD a lot even though it wasn�t perfect. Great traction and excellent fit with firmer than normal Kobe line cushioning that needs break in but feels decent after. When you see the price of $160, you�ll expect more since other comparative shoes out there under that price point are offering nicer materials than the mesh on the Kobe AD.
24	346	7.6	RicheeKim	2017-12-27	For $160 there are much better options out there. Great lockdown, but painful break-in period, cheap materials and lacking cushioning.
1	346	7.0	NightWing2303 [weartesters.com]	2017-01-01	Utter disappointment. Was I duped? $160 spent and wasted. Those are my feelings when thinking about the Nike Kobe A.D. If you enjoy your pair then I am genuinely happy for you as that would mean you enjoy your purchase and don�t share the same sentiment that I do. Every once in a while a brand puts out a dud. This was a giant one.
5	346	6.6	Jarron Ramos [weartesters.com]	2017-01-01	To put it bluntly, the Kobe A.D. has no innovation, no ambition, and nothing worthy enough to be associated with the five-time world champion, 18-time All-Star, 15-time All-NBA, future Hall of Famer, Kobe Bryant. The visual appeal of Kobe�s first post-retirement sneaker is off the charts but this is a performance review, and in that regard, the Kobe A.D. is more than just a disappointment.
1	347	9.0	NightWing2303 [weartesters.com]	2017-01-01	Tacky traction, much-improved cushion and very comfortable. The KT2 has enough of everything to make them a great option on-court, and it comes in at a reasonable price as well.
6	347	8.8	The Sole Brothers	2017-01-01	For $120 this is a great deal. The Anta KT2 is really amazing to play basketball in. I have no complaints at all - I love it!
7	347	8.5	Nelson Chan @Hoop and Life	2017-01-01	High-quality materials, great cushioning and phenomenal traction. The Anta KT2 were my first Chinese sneakers and I really enjoyed them on-court!
2	348	9.0	Stanley T. [weartesters.com]	2017-12-27	The Rare Metal gives you premium materials, great cushioning, and damn near great traction.
11	348	8.6	Duke4005 [weartesters.com]	2017-12-27	If you are looking for a highly cushioned, low profile and low-cut rocket for your feet, especially on clean courts, then the Rare Metal is your pick.
3	348	8.4	Schwollo	2017-12-27	The Rare Metal is a shoe that does nearly everything well. If the traction was more consistent and more aggressive, I wouldn�t hesitate to put this into my rotation maybe even into my top 5.
6	348	8.2	The Sole Brothers	2018-01-26	I was really disappointed by the traction - otherwise this is a great shoe. If you play on clean courts, then the BrandBlack Rare Metal is a great choice.
1	349	9.2	NightWing2303 [weartesters.com]	2017-01-01	The Curry 3 is a great shoe on-court. Especially speedy guards will enjoy their time in these. If you�re a fan of the Curry 1 and 2 then you�ll likely love the 3.
7	349	9.0	Nelson Chan @Hoop and Life	2017-01-01	I rank the Curry 3 above the Curry 2 and the Curry 2.5 but only by a very slim margin. There are some improvements, but overall the shoe performs very similar.
11	349	8.8	Duke4005 [weartesters.com]	2017-01-01	You get great traction, Charged cushioning, and great lockdown after a short break in. If you are looking for a quick response and death-grip sticky soles, look no further.
5	349	8.8	Jarron Ramos [weartesters.com]	2017-01-01	Steph obviously values traction and light-weight support and the Curry 3 gives you exactly that. The cushion setup is highly responsive but delivers only average impact protection.  To me, the Curry 3 falls just short of being a top-tier on-court performer.
20	349	8.8	Analykix.com	2018-01-29	Am I happy with how the shoe performed? Yes. Would I recommend it? Yes!
9	349	8.8	KickGenius	2017-01-01	Overall, I really enjoyed the Curry 3 and hooped in them a lot. They definitely got the job done! I really expect a lot from Under Armour going forward!
3	349	8.6	Schwollo	2017-01-01	The Curry 3 is a solid and smooth shoe that performs well in every category but nothing outstanding. Slightly softer cushioning than the Curry 2/2.5 and softer materials but not an upgrade overall.
6	349	8.2	The Sole Brothers	2017-01-01	I really enjoyed the shoe. The traction in dusty conditions was a little lackluster. Other than that, it's a really nice shoe with amazing materials, good support and decent cushioning.
24	349	8.0	RicheeKim	2017-12-27	The Curry 3 is a good performer on the court. I recommend these if you like firm and responsive cushioning.
23	349	7.8	QuickKicks [weartesters.com]	2017-01-01	Despite the great build quality and solid materials, the Curry 3 is a shoe that didn�t work for my play style. If you�re a fast-paced guard that loves court feel (like Steph Curry himself) you�ll probably enjoy this shoe. However, more explosive players and those who need more impact protection should probably look elsewhere.
2	350	8.8	Stanley T. [weartesters.com]	2017-01-01	Does the shoe perform? It absolutely does. I do like how the shoe adapts to my movements while providing adequate lockdown and support. The cushion feels fine but I was expecting something totally different or new, and the traction has its suspect points.
9	350	8.6	KickGenius	2017-01-01	I wasn't impressed by the Air Jordan 31 because the traction really holds them back. Other then that it is a pretty solid shoe and get's the job done.
4	350	8.5	Zac Dubasik [SoleCollector.com]	2017-01-01	I�ve come to expect the best from the modern Air Jordan line when it comes to performance, and the Air Jordan 31 fully delivers. There are a few matters of personal preference, but overall, there is little to criticize.
7	350	8.0	Nelson Chan @Hoop and Life	2017-01-01	I did like the super soft woven upper and the responsive cushion.But inconsistent traction and pain in the heel from the achilles padding keep this shoe from being in my regular rotation.
1	350	7.8	NightWing2303 [weartesters.com]	2017-01-01	Each piece of the shoe is great. Put them together and it�s not a perfect match. The biggest issue to tackle is how to get full length unlocked Zoom to be more stable underfoot.
6	350	7.8	The Sole Brothers	2017-01-01	These shoes are absolutely incredible - aside from the catastrophic failure that is the traction. I can't play in these because the traction is literally dangerous.
10	350	7.8	MR FOAMER SIMPSON	2017-01-01	Overall, my opinion of the Air Jordan 31 is really mixed. Definitely a drop-off from previous models, but still a solid performance sneaker.
11	351	9.0	Duke4005 [weartesters.com]	2017-01-01	Best. KD. EVER. Seriously. Besides a little less support than some need, there are no problems with this shoe. Traction � excellent. Cushioning � beyond excellent. Materials � the best Nike has to offer.
6	351	9.0	The Sole Brothers	2017-01-01	Overall, definitely get these. The cushioning feels really nice, the traction is good and the materials are super premium.
7	351	9.0	Nelson Chan @Hoop and Life	2017-01-01	At $150 the KD9 is a good deal considering the great performance it delivers.
10	351	8.8	MR FOAMER SIMPSON	2017-01-01	I think this is the best overall sneaker out right now.  A very versatile shoe that works for all type of players.
9	351	8.5	KickGenius	2017-01-01	The shoe gets the job done and performs very well. Unfortunately, the upper material is not very comfortable and the price is a little too high for what you get.
1	351	8.4	NightWing2303 [weartesters.com]	2017-01-01	You receive solid traction, fantastic cushion, great materials, and if you get the size that fits you best, you�ll also receive a solid and secure fit for optimal support.
3	351	8.4	Schwollo	2017-01-01	The KD 9 is a shoe everyone will enjoy, mainly because the fit, comfort and cushioning is amazing right out of the box. However, I need a little more support, containment, and traction during competitive play.
4	351	8.0	Zac Dubasik [SoleCollector.com]	2017-01-01	As a performance sneaker, it just didn�t work for me. Above all else, the one thing I need to have in a shoe is confidence, and I didn�t have it in the KD 9.
\.


--
-- TOC entry 4912 (class 0 OID 16427)
-- Dependencies: 218
-- Data for Name: Shoe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Shoe" (shoe_id, name, brand, release_date, shoe_type, description, price, expert_rating, traction_rating, cushion_rating, materials_rating, support_rating, fit_rating, outdoor_rating, size, width) FROM stdin;
1	Reebok Engine A	Reebok	2025-05-01	Low Top	The Reebok Engine A is best for bigger players looking for solid impact protection.	119.99	8.2	8.0	8.7	8.3	8.0	8.0	25.0	slightly long	regular
2	Jordan Luka 4	Jordan	2025-04-01	Low Top	This shoe is best for bigger, shifty guards.	129.99	8.1	8.4	8.1	7.6	8.1	8.1	13.0	true to size	regular
3	ANTA Kai 2	ANTA	2025-03-01	Low Top	The KAI 2 is best for shifty guards who want a fast, responsive shoe.	139.99	8.5	9.3	8.4	8.0	8.3	8.5	33.0	true to size	regular
4	Li-Ning Wade 808 5 Ultra	Li-Ning	2025-03-01	Low Top	This shoe is best for smaller, quicker, more explosive players.	159.99	8.9	9.5	9.9	8.1	8.6	8.2	70.0	slightly long	regular
5	Jordan Zion 4	Jordan	2025-02-01	Low Top	The Zion 4 is best for players with narrow feet who want extra support and comfortable cushioning.	139.99	7.8	7.6	8.5	7.6	7.6	7.8	8.0	true to size	slightly narrow
6	Nike KD 18	Nike	2025-02-01	Low Top	This shoe is best for players who enjoyed the KD 17 and want better support and lockdown.	159.99	8.2	8.3	7.8	8.4	8.5	7.8	38.0	true to size	regular
7	Nike LeBron NXXT Genisus	Nike	2025-02-01	High Top	This shoe is best for players who like supportive uppers.	149.99	8.2	7.9	8.3	7.8	8.7	8.2	50.0	true to size	regular
8	Nike GT Cut 3 Turbo	Nike	2025-02-01	Low Top	This shoe is best for players who want a more stable, improved version of the previous model.	209.99	8.6	9.3	9.1	8.3	8.5	8.0	25.0	true to size	slightly narrow
9	361 Joker 1	361	2025-01-01	High Top	Players with a variety of play styles will enjoy this shoe thanks to the versatility of its features.	209.99	8.8	8.9	9.5	8.7	8.9	8.0	25.0	true to size	regular
10	Adidas Harden Volume 9	Adidas	2025-01-01	Low Top	This shoe is best for all positions prioritizing a secure upper and springy cushioning.	159.99	8.5	8.4	9.0	8.0	9.0	8.2	6.0	slightly long	regular
11	Puma Scoot Zero 2	Puma	2025-01-01	Low Top	This shoe is best for laterally quick players who use side-to-side movements.	109.99	8.2	9.1	7.3	7.9	8.5	8.3	0.0	true to size	regular
12	Rigorer AR 2	Rigorer	2025-01-01	Low Top	The AR 2 is best for guards who quickly get up and down the court.	99.99	8.4	8.6	9.1	7.8	8.5	8.2	50.0	true to size	regular
13	Under Armour Curry Fox 1	Under Armour	2024-12-01	Low Top	This shoe is best suited for nimble guards with good footwork.	119.99	8.2	8.8	8.0	8.0	8.3	8.0	0.0	true to size	regular
14	Adidas Dame Certified 3	Adidas	2024-12-01	Low Top	This shoe is a good low-budget shoe for stability.	84.99	7.6	7.0	7.5	7.3	8.0	8.3	50.0	slightly long	regular
15	Li-Ning Way of Wade All City 13	Li-Ning	2024-12-01	Low Top	This shoe is best for quick, explosive guards but is versatile enough for everyone.	139.99	8.9	9.5	9.2	8.6	9.2	8.2	70.0	true to size	regular
16	Li-Ning Wade Shadow 6	Li-Ning	2024-12-01	Low Top	This shoe offers something for all play styles but excels for explosive, snappy players.	119.99	8.5	9.0	8.9	7.9	8.7	8.0	100.0	true to size	regular
17	ANTA KT 10	ANTA	2024-12-01	Low Top	This shoe excels at everything. It has something to offer for all players.	129.99	8.9	9.0	9.5	8.4	9.0	8.6	50.0	true to size	regular
18	Jordan Tatum 3	Jordan	2024-11-01	Low Top	The Tatum 3 is best for players who move a lot on their forefoot.	124.99	7.7	7.7	7.6	8.1	7.3	7.8	10.0	true to size	regular
19	Nike Lebron 22	Nike	2024-11-01	Low Top	This shoe is best for anyone looking for a comfortable, responsive, and bouncy cushioning setup.	179.99	8.5	8.4	9.3	8.0	8.9	8.3	40.0	slightly long	regular
20	Nike Ja 2	Nike	2024-10-01	Low Top	The Ja 2 is best for players who enjoy light, speedy shoes with a bit of pop.	119.99	8.1	9.0	7.6	7.8	7.9	8.2	17.0	true to size	regular
21	Puma MB.04	Puma	2024-10-01	Mid Top	The shoe is best for those who enjoy the comfortable midsole and upper materials from previous Puma MB shoes.	124.99	7.9	7.6	8.1	7.8	8.0	7.8	0.0	true to size	regular
22	Nike Kobe 9 Elite Low Protro	Nike	2024-10-01	Low Top	This shoe is best for players looking for elite traction performance.	209.99	8.6	9.4	8.6	8.2	8.8	8.2	10.0	true to size	regular
23	ANTA Shock Wave 6	ANTA	2024-10-01	Low Top	This shoe is best suited for guards and other quick players.	149.99	8.6	9.0	8.4	8.5	8.8	8.4	88.0	true to size	slightly narrow
24	New Balance Hesi Low V2	New Balance	2024-09-01	Low Top	This shoe is best for lighter, nimbler players.	109.99	8.4	9.4	8.6	7.8	8.2	8.0	38.0	true to size	regular
25	Adidas Dame 9	Adidas	2024-09-01	Low Top	The Dame 9 is best for players looking for soft cushioning and containment.	119.99	8.4	8.6	8.6	8.0	8.7	8.2	7.0	slightly long	slightly wide
26	Nike Giannis Immortality 4	Nike	2024-09-01	Low Top	The Nike Giannis Immortality 4 is best for players looking for a budget shoe with a durable outsole and supportive upper.	99.99	8.1	8.7	7.8	8.2	8.3	7.6	60.0	true to size	regular
27	New Balance TWO WXY V5	New Balance	2024-09-01	Low Top	The shoe plays well for all positions. It does it all.	119.99	8.7	9.4	8.7	8.3	8.7	8.3	70.0	true to size	regular
28	ANTA KAI 1 Speed	ANTA	2024-09-01	Low Top	This shoe is a good pick for players who want a more responsive version of the KAI 1.	124.99	8.9	9.3	8.6	8.5	9.1	9.0	13.0	slightly long	regular
29	Jordan Luka 3	Jordan	2024-08-01	Low Top	The Luka 3 is best for shifty, balanced players who mainly play on clean courts.	139.99	8.2	8.4	8.0	7.9	8.7	8.1	50.0	true to size	regular
30	Air Jordan 39	Jordan	2024-08-01	Low Top	This is the perfect shoe for players who love explosive cushioning setups.	199.99	8.1	8.4	8.7	8.4	7.1	8.0	0.0	true to size	regular
31	Adidas A.E. 1 Low	Adidas	2024-08-01	Low Top	The shoe is best for shifty players who like to feel low to the ground.	109.99	8.1	8.7	8.0	7.9	8.1	7.6	17.0	slightly long	regular
32	Nike Zoom Freak 6	Nike	2024-08-01	Low Top	The shoe's responsiveness and light weight are better suited for lighter guards.	149.99	8.0	8.3	7.9	7.6	7.7	8.3	40.0	true to size	regular
33	Under Armour Curry 12	Under Armour	2024-08-01	Low Top	The Curry 12 is the perfect shoe for players who need elite traction on clean courts.	149.99	8.5	9.1	8.3	8.4	8.4	8.1	0.0	true to size	regular
34	Li-Ning Way of Wade All City 12 Encore	Li-Ning	2024-08-01	Low Top	This shoe has something for everyone. All players will enjoy the All City 12 Encore.	149.99	8.9	9.3	9.6	8.3	9.0	8.2	50.0	true to size	regular
35	Li-Ning Wade Ice Blood 2	Li-Ning	2024-08-01	Low Top	The shoe is best for guards who play low to the ground.	139.99	8.0	8.3	8.6	7.8	8.5	6.7	100.0	slightly small	slightly narrow
36	Li-Ning Way of Wade 11	Li-Ning	2024-07-01	Low Top	The lightweight, well-cushioned Way of Wade 11 is recommended for players who like to get up and down the court and vertical.	224.99	8.9	9.4	9.4	8.4	9.2	8.1	14.0	true to size	regular
37	Adidas D.O.N. Issue 6	Adidas	2024-07-01	Low Top	The D.O.N. Issue 6 is best for quicker players looking for a bottom-light shoe.	119.99	8.5	9.6	8.0	8.0	8.5	8.4	17.0	slightly long	regular
38	Nike Sabrina 2	Nike	2024-07-01	Mid Top	The shoe is a great pick for responsive and quick guards. The court feel and responsiveness will cater well to that play style.	129.99	8.5	9.0	8.1	8.0	8.5	8.6	22.0	slightly long	slightly wide
39	Nike GT Hustle 3	Nike	2024-07-01	Mid Top	These shoes are best for bigs who get off the ground often and require impact protection.	189.99	8.4	8.4	9.5	8.4	7.6	8.1	40.0	true to size	regular
40	Nike G.T. Hustle Academy	Nike	2024-07-01	Low Top	This shoe is best for lighter players with a mobile play style.	94.99	7.0	8.3	5.3	7.4	6.3	7.6	33.0	true to size	regular
41	Li-Ning Wade 808 4 Ultra	Li-Ning	2024-07-01	Low Top	The 808 4 Ultra is best as a balanced performance shoe. It provides excellent performance in all aspects of the shoe.	94.99	8.7	9.4	9.5	8.0	8.3	8.2	25.0	true to size	regular
42	Nike Kobe Protro 8	Nike	2024-06-01	Low Top	The shoe is best for quicker guards looking for an excellent court feel.	189.99	8.4	9.3	7.7	7.9	8.5	8.3	20.0	true to size	regular
43	Nike G.T. Cut Cross	Nike	2024-05-01	Low Top	This is a solid option for outdoor play on a budget.	109.99	8.1	9.0	7.8	8.0	8.0	7.8	33.0	true to size	regular
44	Puma Stewie 3	Puma	2024-05-01	Low Top	Players who don't require much bounciness and excel with low-to-the-ground setups.	124.99	8.0	7.3	7.8	8.3	8.5	8.0	0.0	true to size	regular
45	Jordan Zion 3 SE	Jordan	2024-04-01	Low Top	The Jordan Zion 3 SE is best for narrow-foot players who like a drop-in midsole setup.	149.99	7.5	6.5	8.3	8.0	8.0	6.6	25.0	slightly small	slightly narrow
46	New Balance Kawhi 4	New Balance	2024-04-01	Low Top	The New Balance Kawhi 4 is best for players who enjoy springy, plush cushioning setups.	169.99	8.4	8.9	8.8	8.2	8.2	7.9	14.0	slightly long	slightly wide
47	Nike KD 17	Nike	2024-04-01	Low Top	The Nike KD 17 is best for players who enjoyed the 16 and are looking for better traction.	149.99	8.1	8.8	8.5	7.9	7.6	7.7	25.0	slightly long	regular
48	Adidas Harden Volume 8	Adidas	2024-03-01	Low Top	The Harden Vol 8 is best for players who use powerful footwork to create space.	159.99	8.6	9.0	9.2	7.8	8.8	8.2	7.0	slightly long	regular
49	Jordan Tatum 2	Jordan	2024-03-01	Low Top	The Tatum 2 is best for players who prefer balanced setups with Air Strobel.	124.99	7.7	7.1	7.7	7.6	8.4	7.9	20.0	true to size	slightly narrow
50	ANTA KAI 1	ANTA	2024-03-01	Low Top	The Anta KAI 1 is best for tactile players looking for a responsive and low-to-the-ground setup.	124.99	8.4	8.2	8.8	8.2	8.4	8.2	36.0	slightly long	regular
51	Li-Ning JB 2	Li-Ning	2024-03-01	Low Top	This shoe is perfect for players who appreciate maximum comfort.	289.99	8.4	8.6	9.4	8.2	7.8	8.2	17.0	true to size	regular
52	Nike Book 1	Nike	2024-02-01	Low Top	The Nike Book 1 is better for lighter, shiftier players.	149.99	8.3	8.6	8.0	8.7	7.9	7.9	50.0	true to size	regular
53	Under Armour Flow FUTR X Elite	Under Armour	2024-02-01	High Top	This shoe is best for players who prefer a wider, more accommodating forefoot area during play.	149.99	8.2	9.2	8.0	7.9	8.2	7.5	0.0	slightly long	slightly wide
54	New Balance Fresh Foam BB V2	New Balance	2024-02-01	Low Top	Explosive players who emphasize a vertical play style will appreciate the New Balance Fresh Foam BB V2.	129.99	8.7	9.0	9.0	8.4	8.8	8.2	50.0	slightly long	regular
55	Nike Air Zoom G.T. Cut 3	Nike	2024-01-01	Low Top	The Nike G.T. Cut 3 is a shifty shoe best for guards.	189.99	8.3	8.7	8.8	8.0	7.8	8.2	17.0	slightly long	regular
56	Air Jordan 38 Low	Jordan	2024-01-01	Low Top	All players can take advantage of the comfortable cushioning and reliable traction.	174.99	8.6	8.3	9.5	8.4	8.3	8.2	25.0	slightly long	regular
57	Adidas Dame Certified 2.0	Adidas	2024-01-01	Low Top	The shoe is for players who prefer thin, responsive cushion setups with grippy traction.	89.99	8.2	8.7	7.5	8.0	8.3	8.3	75.0	slightly long	slightly wide
58	Nike G.T. Cut Academy	Nike	2024-01-01	Low Top	This shoe is best for players looking for shifty and reliable traction.	94.99	8.2	9.1	8.0	7.6	7.9	8.1	40.0	true to size	regular
59	Jordan One Take 5	Jordan	2024-01-01	Low Top	The Jordan One Take 5 is best for players who play around the hoop.	99.99	7.4	7.8	7.4	7.2	7.6	7.3	33.0	slightly long	regular
60	Adidas Adizero Select 2.0	Adidas	2024-01-01	Low Top	The Adizero Select 2.0 is best for side-to-side shiftiness.	109.99	7.6	8.0	7.0	8.2	7.6	7.4	0.0	slightly long	regular
61	Adidas AE 1	Adidas	2023-12-01	Mid Top	The shoe is best for more powerful players who can utilize the bottom-heavy cushioning.	119.99	8.7	9.2	9.0	8.0	8.5	8.7	21.0	slightly long	slightly wide
62	Puma Scoot Zeros	Puma	2023-12-01	Low Top	This shoe is best for guards who prefer a responsive cushion setup over impact protection.	99.99	7.6	7.8	7.1	7.3	8.0	8.0	25.0	true to size	regular
63	Under Armour Curry Spawn FloTro	Under Armour	2023-12-01	High Top	This shoe is best for guards with fast play styles who benefit from the Flow traction.	129.99	8.4	10.0	8.3	7.8	7.8	8.3	0.0	true to size	regular
64	Li-Ning Way of Wade All City 12	Li-Ning	2023-12-01	Low Top	The Way of Wade All City 12 is best for guards or players who play fast and rely on court feel and responsiveness.	149.99	8.9	9.3	9.4	8.3	9.1	8.3	83.0	slightly long	regular
65	Adidas D.O.N. Issue 5	Adidas	2023-11-01	Low Top	The Adidas D.O.N. Issue #5 is best for players who like to get up and down the court quickly.	119.99	8.1	8.3	7.3	8.0	8.7	8.3	50.0	true to size	regular
66	New Balance Hesi Low	New Balance	2023-11-01	Low Top	The New Balance Hesi Low is best for shifty players who don't need much impact protection.	109.99	7.7	7.5	7.5	7.5	8.0	8.0	100.0	true to size	slightly wide
67	Nike Lebron 21	Nike	2023-10-01	Low Top	The Nike LeBron 21 is fit for all play styles because of the mix of traction, cushioning and support.	199.99	8.9	9.0	9.4	8.5	9.0	8.4	8.0	true to size	regular
68	New Balance TWO WXY V4	New Balance	2023-10-01	Low Top	This is the perfect pick for players seeking versatility in play style and court surface durability.	119.99	8.4	8.7	8.5	8.0	8.6	8.2	75.0	slightly long	regular
69	Jordan Zion 3	Jordan	2023-10-01	Low Top	The Zion 3 is best for heavier players with fast-paced play styles.	139.99	8.0	7.9	8.3	7.8	8.4	7.3	25.0	true to size	slightly narrow
70	ANTA KT 9	ANTA	2023-10-01	Mid Top	This shoe is best for players seeking stability and impact protection.	169.99	8.7	8.5	9.1	8.5	9.1	8.0	0.0	true to size	slightly narrow
71	Nike Lebron Witness 8	Nike	2023-10-01	Mid Top	The Witness 8s are best for flat-footed players who rely on moving up and down the court.	109.99	7.7	8.5	7.0	7.6	7.0	8.3	63.0	true to size	regular
72	Li-Ning Wade Shadow 5	Li-Ning	2023-10-01	Low Top	This shoe is best for outdoor play.	129.99	8.0	7.7	7.7	8.0	9.0	7.7	100.0	true to size	regular
73	Adidas Trae Young 3	Adidas	2023-09-01	Low Top	This shoe is meant for shifty players with a quick, grounded playstyle.	139.99	8.0	8.4	8.2	7.6	8.2	7.4	0.0	slightly long	slightly wide
74	Puma MB.03	Puma	2023-09-01	Mid Top	This shoe is best for players who want a stable shoe with plenty of impact protection.	139.99	8.3	8.3	8.1	8.0	8.6	8.3	20.0	slightly long	regular
75	361 AG 4	361	2023-09-01	Low Top	This shoe is best for players who jump often and require soft cushioning.	99.99	8.6	9.3	9.0	8.3	8.3	8.3	38.0	slightly long	regular
76	Under Armour Curry 11	Under Armour	2023-09-01	Low Top	The Under Armour Curry 11 is the perfect shoe for quick and shifty guards.	159.99	8.7	9.3	8.7	8.5	8.4	8.4	13.0	true to size	regular
77	Air Jordan 38	Jordan	2023-08-01	High Top	This is a perfect shoe for players looking for maximalist containment.	199.99	8.6	8.5	9.3	8.6	8.6	8.1	13.0	slightly long	regular
78	Nike KD 16	Nike	2023-08-01	Low Top	The shoe has something for all positions. There are no outstanding weaknesses.	159.99	8.4	8.4	8.7	8.1	8.5	8.2	13.0	true to size	regular
79	Nike Giannis Immortality 3	Nike	2023-08-01	Low Top	The Giannis Immortality 3 is a perfect budget pick for quick and minimal players.	84.99	7.9	8.6	7.6	7.6	8.0	7.8	60.0	true to size	regular
80	Rigorer AR 1	Rigorer	2023-08-01	Low Top	These shoes are a fantastic pick for players who change their pace often.	139.99	8.4	9.3	8.1	8.1	8.5	8.0	67.0	slightly long	regular
81	Nike Sabrina 1	Nike	2023-08-01	Low Top	The Nike Sabrina 1 is best for shifty guard-type players.	129.99	8.3	8.6	8.0	8.3	8.4	8.1	22.0	true to size	regular
82	Nike G.T. Hustle 2	Nike	2023-08-01	Mid Top	The Hustle 2 is the perfect shoe for players who want to get up the court quickly.	169.99	8.1	8.1	8.5	8.0	7.9	7.9	17.0	true to size	regular
83	Nike Zoom Freak 5	Nike	2023-07-01	Low Top	The Zoom Freak 5s are best for players looking for a minimal shoe that doesn't sacrifice many features.	139.99	8.2	8.7	8.2	7.4	7.8	7.9	30.0	slightly long	regular
84	Nike G.T. Jump 2	Nike	2023-07-01	High Top	Any players who thrive with maximalist cushioning will love the Nike G.T. Jump 2.	179.99	8.6	8.6	9.7	8.1	8.5	7.9	20.0	slightly long	regular
85	Li-Ning Wade 808 3 Ultra	Li-Ning	2023-07-01	Low Top	The perfect shoe for bouncy players who enjoy low profile yet sturdy shoes.	199.99	8.6	9.2	8.6	8.0	9.0	8.0	50.0	slightly long	regular
86	Jordan Luka 2	Jordan	2023-06-01	Low Top	Guards and wings who make quick cuts and stepbacks will benefit the most from this shoe.	129.99	8.3	8.5	7.8	8.0	8.9	8.0	17.0	slightly long	slightly wide
87	Puma All Pro Nitro	Puma	2023-06-01	Low Top	Players looking for a versatile shoe that's not expensive will love the Puma All Pro Nitro.	129.99	8.5	9.3	8.9	7.7	8.5	8.3	38.0	true to size	slightly wide
88	ANTA Shock Wave 5	ANTA	2023-06-01	Low Top	Shifty players who enjoy court feel and grippy traction will like the Anta Shock Wave 5.	199.99	8.3	9.0	8.6	7.8	8.2	8.2	100.0	true to size	regular
89	Nike Cosmic Unity 3	Nike	2023-05-01	Low Top	This shoe is potentially an excellent pick for outdoor players.	169.99	8.0	7.6	7.2	8.6	8.6	8.2	100.0	slightly long	regular
90	Li-Ning Wade Fission 8	Li-Ning	2023-05-01	Low Top	The Fission 8 is best for faster players who use quick movements to their advantage.	119.99	8.4	8.7	8.0	8.3	8.5	8.3	92.0	slightly long	slightly wide
91	Puma Stewie 2	Puma	2023-05-01	Low Top	This shoe is best for players looking for a low-cut version of the MB.02.	124.99	8.3	8.4	8.6	8.2	8.4	8.0	0.0	true to size	regular
92	Li-Ning Wade All City 11 V2	Li-Ning	2023-05-01	Low Top	The All City V2 is a solid pickup for fans of the V1 who want sturdier materials.	149.99	8.8	9.0	9.0	8.7	9.2	8.2	100.0	true to size	regular
93	Jordan Tatum 1	Jordan	2023-04-01	Low Top	A good pickup for bouncy players looking for a lightweight shoe.	119.99	7.9	7.8	8.5	8.1	7.4	7.9	0.0	slightly long	regular
94	Li-Ning Wade 808 2 Ultra V2	Li-Ning	2023-04-01	High Top	This shoe is a solid pick for players looking for something similar to the Kobe line.	159.99	8.5	9.0	8.5	8.0	8.8	8.3	75.0	slightly long	regular
95	Adidas BYW Select	Adidas	2023-04-01	Low Top	The BYW Select is an all-around shoe that performs well in all categories.	149.99	8.1	8.0	8.5	7.5	8.0	8.5	25.0	true to size	slightly wide
96	ANTA GH 4	ANTA	2023-04-01	Low Top	The shoe is perfect for powerful playstyles because of the support and cushioning.	229.99	8.6	8.8	8.8	8.3	9.3	8.0	83.0	slightly long	regular
97	Jordan Why Not Zero.6	Jordan	2023-03-01	Low Top	A great pickup for players with straight-line speed and explosiveness.	139.99	7.9	7.7	7.8	7.7	8.6	7.8	13.0	slightly long	slightly wide
98	Nike Ja 1	Nike	2023-03-01	Low Top	A good pickup for shifty guards who play low to the ground.	109.99	8.2	8.8	8.0	7.8	8.4	8.2	44.0	true to size	regular
99	New Balance Kawhi 3	New Balance	2023-03-01	Mid Top	A great pick for players looking for versatile cushioning on clean courts.	159.99	8.2	8.3	8.3	7.8	8.3	8.5	75.0	true to size	regular
100	Li-Ning Wade All City 11	Li-Ning	2023-03-01	Low Top	An optimal pickup for springy players looking for comfortable cushioning.	159.99	8.5	8.1	9.0	8.2	9.0	8.3	70.0	slightly long	regular
101	Under Armour Spawn 5	Under Armour	2023-03-01	Low Top	Price-conscious players who enjoy low-profile cushioning setups will enjoy this shoe.	99.99	7.6	7.0	8.0	7.5	7.5	8.0	50.0	true to size	regular
102	Li-Ning Wade Son of Flash	Li-Ning	2023-03-01	Low Top	This shoe is a good pick for quick guards looking for responsive cushioning.	134.99	8.5	9.0	8.2	8.3	8.6	8.3	90.0	true to size	regular
103	Under Armour Curry 2 Low FloTro	Under Armour	2023-03-01	Low Top	The shoe is a solid pick for fans of older Curry models who want modern tech.	149.99	8.4	10.0	8.0	8.5	7.5	8.0	90.0	true to size	regular
104	Adidas Trae Unlimited	Adidas	2023-03-01	Low Top	Players with grounded play styles will benefit the most from the Adidas Trae Unlimited.	89.99	8.1	8.5	7.5	8.0	8.5	8.0	25.0	true to size	slightly wide
105	Nike LeBron NXXT Gen	Nike	2023-02-01	Low Top	This shoe is a good pick for players who don't need maximum cushioning but still want Zoom.	159.99	8.7	9.0	8.6	8.4	8.7	8.8	50.0	true to size	regular
106	Adidas Harden Volume 7	Adidas	2023-02-01	Mid Top	The perfect shoe for those with versatile playstyles.	159.99	8.7	9.0	9.1	7.8	8.9	8.8	50.0	slightly long	slightly wide
107	Li-Ning Ice Blood V2	Li-Ning	2023-01-01	Low Top	Lighter, shifty guards will enjoy the Ice Blood V2.	99.99	8.1	8.3	8.0	8.0	7.8	8.5	88.0	true to size	regular
108	Air Jordan 37 Low	Jordan	2023-01-01	Low Top	A perfect selection for players who want bouncy cushioning in a low-top shoe.	174.99	8.3	8.3	9.0	8.3	8.0	8.0	33.0	true to size	regular
109	Li-Ning Jimmy Butler 1	Li-Ning	2023-01-01	Low Top	A perfect pickup for fast, quick players who rely on stability.	139.99	8.2	8.0	8.8	7.6	8.8	8.0	10.0	true to size	regular
110	Jordan One Take 4	Jordan	2022-12-01	Low Top	Players who mainly play outdoors and prefer responsive cushioning will enjoy this shoe.	99.99	8.1	9.5	7.0	7.5	7.8	8.5	50.0	slightly long	slightly wide
111	New Balance TWO WXY V3	New Balance	2022-11-01	Low Top	Shifty guards who rely on traction will love this shoe.	119.99	8.7	9.3	7.6	8.4	9.1	9.2	14.0	true to size	regular
112	Li-Ning Way of Wade All City 10 V2	Li-Ning	2022-11-01	Low Top	A great pick for players looking for maximum performance without a max price tag.	149.99	8.7	8.4	9.2	8.2	9.2	8.4	80.0	slightly long	regular
113	Adidas Dame Certified	Adidas	2022-11-01	Low Top	Budget-conscious players will enjoy the traction and versatility of the Dame Certified.	94.99	8.2	8.8	7.5	8.5	7.9	8.1	88.0	slightly long	regular
114	361 DVD 1	361	2022-11-01	Low Top	Players with quick changes of direction and shifty speed changes will benefit the most from the traction and cushioning setup.	94.99	8.1	8.8	8.5	7.3	8.0	8.0	88.0	slightly long	regular
115	361 AG 3	361	2022-11-01	High Top	This shoe is best for agile centers and power forwards who need support during quick movements.	159.99	8.3	9.0	7.5	8.0	9.0	8.0	50.0	true to size	slightly narrow
116	Under Armour Curry 10	Under Armour	2022-10-01	Low Top	Anyone that utilizes traction to maximize footwork	159.99	8.8	9.6	8.2	8.2	8.9	8.8	7.0	true to size	regular
117	Adidas D.O.N Issue #4	Adidas	2022-10-01	Mid Top	A solid pick for shifty guards who need containment.	119.99	7.9	8.0	7.5	8.0	8.0	7.8	67.0	slightly long	regular
118	Adidas Trae Young 2.0	Adidas	2022-10-01	Low Top	A great pick for players who enjoy an all-knit construction and the freedom it brings.	139.99	8.1	7.8	8.8	8.0	8.3	7.5	50.0	slightly long	slightly wide
119	Nike Air Deldon	Nike	2022-10-01	High Top	A great pick for players who play on clean courts and enjoy full-length Air.	119.99	7.7	6.0	8.0	7.7	8.3	8.3	0.0	true to size	regular
120	Puma MB.02	Puma	2022-10-01	Mid Top	Players who rely on footwork and enjoy extra impact protection	129.99	8.2	8.8	7.8	7.7	8.6	8.3	0.0	true to size	regular
121	Nike Zoom Freak 4	Nike	2022-09-01	Low Top	Players looking for solid performance and springy cushioning on a budget will enjoy this shoe.	134.99	8.3	8.5	8.2	8.0	8.2	8.0	0.0	true to size	slightly wide
122	Air Jordan 37	Jordan	2022-09-01	High Top	Recommended for forefoot-heavy players looking for a bouncy setup	184.99	8.3	8.3	8.8	8.3	7.8	8.4	50.0	slightly long	slightly wide
123	Nike Lebron 20	Nike	2022-09-01	Low Top	Quick and explosive players will enjoy this shoe the most.	199.99	8.8	9.4	8.9	8.5	8.4	8.6	6.0	true to size	regular
124	Li-Ning Wade 808 2	Li-Ning	2022-09-01	Low Top	Players who are fans of the Kobe 9 traction and cushioning setup	119.99	8.6	9.7	8.7	8.2	8.7	7.8	70.0	true to size	regular
125	ANTA KT 8	ANTA	2022-09-01	High Top	The Anta KT 8 is recommended for all different players. It has traction, cushioning, and support for most positions.	169.99	8.4	8.4	8.6	8.2	8.6	8.4	17.0	true to size	regular
126	Nike Air Zoom G.T. Cut 2	Nike	2022-08-01	Low Top	Shifty players who enjoy lots of cushioning	129.99	8.5	8.8	9.3	8.0	7.9	8.4	40.0	slightly long	regular
127	Nike Cosmic Unity 2	Nike	2022-08-01	Low Top	Players that want cushioning but also want to feel low to the ground	159.99	8.4	9.2	9.0	8.2	7.4	8.1	30.0	true to size	regular
128	Puma TRC Blaze Court	Puma	2022-08-01	Low Top	Guards with a quick playstyle	119.99	8.4	8.5	8.6	7.1	8.5	8.4	0.0	slightly long	slightly wide
129	Puma Rise NITRO	Puma	2022-08-01	Mid Top	Players looking for a comfortable and reliable shoe	124.99	8.0	7.8	7.7	8.3	8.1	8.3	10.0	true to size	regular
130	Under Armour Curry HOVR Splash	Under Armour	2022-07-01	Mid Top	Available at2shops| Official Retail Price: $109.99	109.99	7.8	7.0	8.0	8.0	8.0	8.0	10.0	true to size	slightly wide
131	Nike Giannis Immortality 2	Nike	2022-07-01	Low Top	Recommended for smaller, shifty guards.	84.99	7.7	8.5	7.1	7.0	7.9	7.8	50.0	slightly long	regular
132	Jordan Luka 1	Jordan	2022-07-01	Low Top	Recommended for players that use a lot of side steps and other lateral movements.	109.99	8.5	9.4	7.9	8.3	8.6	8.3	30.0	slightly long	slightly wide
133	Li-Ning Way of Wade 10	Li-Ning	2022-07-01	Low Top	This shoe is an excellent pick for quick, explosive players who enjoy a bouncy feeling in their shoes.	109.99	8.9	9.3	9.6	8.0	8.7	8.7	0.0	true to size	regular
134	Nike Precision 6	Nike	2022-07-01	Low Top	Excellent shoe for budget-conscious players.	74.99	7.9	8.0	7.3	8.0	8.3	8.0	75.0	true to size	regular
135	Puma MB.01 Lo	Puma	2022-07-01	Low Top	Players who want an all-around performer with no weaknesses.	119.99	8.9	9.4	8.9	8.5	8.9	8.5	33.0	true to size	regular
136	New Balance TWO WXY V2	New Balance	2022-06-01	Low Top	Ideal for players willing to give up some cushion for the other performance aspects fundamentals will enjoy this shoe.	129.99	8.5	9.6	8.2	8.6	7.8	8.5	38.0	true to size	regular
137	Jordan Zion 2	Jordan	2022-06-01	Mid Top	Recommended for players that rely on lateral cuts and movements.	139.99	8.3	8.4	8.2	8.0	8.7	7.9	58.0	true to size	regular
138	Air Jordan 36 Low	Jordan	2022-06-01	Low Top	Awesome shoe for players with explosive play styles looking for the extra lift when jumping.	184.99	9.2	9.6	9.6	8.9	8.9	9.0	17.0	true to size	regular
139	Under Armour Curry 4 FloTro	Under Armour	2022-06-01	High Top	The perfect shoe for players who rely on footwork and quick movements	139.99	8.7	10.0	8.5	8.5	7.8	8.5	25.0	slightly long	slightly wide
140	Under Armour HOVR Havoc 4 Clone	Under Armour	2022-05-01	High Top	Recommended for anyone playing primarily on clean courts looking for court feel and responsiveness.	119.99	7.5	7.5	7.5	7.0	7.0	8.5	50.0	true to size	regular
141	Nike Renew Elevate 3	Nike	2022-05-01	Low Top	Perfect for players that need a reliable outdoor shoe.	79.99	7.4	8.0	7.0	7.3	7.0	7.5	67.0	slightly long	regular
142	Nike Kyrie Low 5	Nike	2022-04-01	Low Top	A great pick for players that rely on quick footwork.	109.99	8.3	9.4	7.9	7.9	8.1	8.0	25.0	true to size	regular
143	Nike KD 15	Nike	2022-04-01	Low Top	Best for players looking for a shoe that covers all the bases.	149.99	9.0	9.7	9.5	8.6	8.6	8.7	8.0	slightly long	regular
144	Nike Lebron 19 Low	Nike	2022-03-01	Low Top	Players looking for a less bulky LeBron shoe.	159.99	8.2	7.8	8.6	8.4	8.0	8.3	50.0	slightly long	regular
145	New Balance Kawhi 2	New Balance	2022-03-01	High Top	Best for forwards and centers that need strong traction and stability.	159.99	8.3	8.3	7.8	8.6	8.5	8.0	71.0	true to size	regular
146	ANTA KT 7	ANTA	2022-03-01	High Top	The Anta KT 7 is best for players looking for a solid foundation of stability and comfortable cushioning.	169.99	8.3	8.0	9.3	8.7	8.0	7.7	50.0	true to size	regular
147	Jordan Why Not Zero.5	Jordan	2022-02-01	Mid Top	Players that enjoy the feeling of forefoot Zoom.	149.99	7.8	6.8	8.0	8.0	8.0	8.3	0.0	slightly long	slightly wide
148	Nike Air Zoom GT Jump	Nike	2022-02-01	High Top	Best for players with an explosive play style looking for good cushioning.	179.99	8.8	8.6	10.0	8.3	8.9	8.4	20.0	true to size	regular
149	Adidas Harden Vol. 6	Adidas	2022-02-01	Low Top	Great shoe for fans of the full-length Boost setup	139.99	8.4	8.9	8.9	7.5	8.8	7.9	75.0	slightly long	slightly wide
150	Nike PG 6	Nike	2022-02-01	Low Top	Best for players looking for a well-balanced performance shoe.	119.99	8.4	9.1	8.4	7.9	8.3	8.2	0.0	slightly long	regular
151	Jordan Zoom Separate	Jordan	2022-01-01	Low Top	Best for forefoot heavy players that need the cushion.	119.99	8.4	8.9	8.7	7.6	8.7	8.3	63.0	slightly long	regular
152	Puma MB.01	Puma	2022-01-01	Mid Top	Good fit for players that are looking for a solid overall shoe.	124.99	8.5	8.7	8.4	8.1	8.4	8.6	50.0	slightly long	regular
153	Nike Fly By Mid 3	Nike	2022-01-01	Low Top	Players who are budget conscious or who're looking for a pair to beat up.	64.99	7.5	8.0	8.1	7.2	7.0	7.2	100.0	slightly long	regular
154	Adidas Harden Stepback 3	Adidas	2022-01-01	Low Top	Recommended for guards that heavily rely on footwork	79.99	8.2	8.5	7.8	8.0	8.0	8.5	83.0	true to size	slightly wide
155	Nike Kyrie 8	Nike	2021-12-01	High Top	Best for players looking for a shoe with no real weaknesses.	139.99	8.5	8.3	9.0	8.6	8.3	8.4	38.0	true to size	regular
156	Under Armour Curry 9	Under Armour	2021-12-01	Low Top	Great shoe if you rely on traction and court feel.	159.99	8.9	9.6	8.3	8.6	8.9	8.6	75.0	true to size	regular
157	Adidas Dame 8	Adidas	2021-12-01	Low Top	Recommended if you play on clean courts and looking for comfortable, supportive shoes.	119.99	7.9	7.3	8.3	8.0	8.3	7.7	50.0	slightly long	slightly wide
158	Nike Kyrie Flytrap 5	Nike	2021-11-01	Low Top	Players that like a responsive shoe and don't need impact protection.	89.99	7.0	6.8	6.5	7.0	7.5	7.0	75.0	true to size	regular
159	Nike Lebron 19	Nike	2021-11-01	High Top	Perfect if you enjoy extra cushion and impact protection.	199.99	8.3	7.1	9.3	8.3	8.9	8.1	25.0	slightly long	regular
160	Jordan One Take 3	Jordan	2021-11-01	Low Top	Anyone looking for a price-conscious shoe without sacrificing anything performance-wise.	99.99	8.0	8.5	8.0	7.5	8.0	8.0	50.0	slightly long	regular
161	Nike Lebron Witness 6	Nike	2021-10-01	Low Top	Players that really like the aesthetic or players that are looking for a shoe that can hold up outdoors.	99.99	7.4	7.4	7.0	7.8	7.0	7.7	83.0	true to size	regular
162	Nike Air Max Impact 3	Nike	2021-10-01	Mid Top	Good choice for players that are looking for a shoe to beat up outdoors	89.99	8.4	9.3	7.7	8.0	8.5	8.0	100.0	true to size	slightly wide
163	Air Jordan 36	Jordan	2021-09-01	High Top	Great for players that are looking for a top-tier performance basketball shoe.	184.99	9.1	9.0	9.4	9.0	9.1	8.9	25.0	true to size	regular
164	Puma Fusion Nitro Spectra	Puma	2021-09-01	Low Top	Players that are looking for grippy traction.	129.99	7.6	8.5	8.0	6.5	6.5	8.5	0.0	true to size	regular
165	Adidas Trae Young 1	Adidas	2021-09-01	Low Top	Fans of Trae Young that are looking for a comfortable cushion setup.	139.99	8.2	7.7	8.9	8.3	8.0	7.9	40.0	slightly long	slightly wide
166	Under Armour Flow FUTR X	Under Armour	2021-08-01	Low Top	Perfect shoe for guards that have a quick style of play.	119.99	8.3	10.0	8.0	7.3	8.0	8.0	50.0	true to size	slightly wide
167	Adidas Exhibit A	Adidas	2021-08-01	Low Top	Great for players that have a quick and shifty play style.	109.99	8.3	8.3	8.8	7.8	8.8	8.0	0.0	slightly long	slightly wide
168	Adidas D Rose Son Of Chi	Adidas	2021-08-01	High Top	Players with quick playstyles and don't need lots of impact protection.	99.99	8.0	9.0	8.0	7.3	8.0	7.7	50.0	true to size	regular
169	Adidas D.O.N Issue #3	Adidas	2021-07-01	Low Top	Best for players looking for a responsive and lightweight shoe.	109.99	8.0	8.3	7.6	8.1	8.0	7.7	50.0	slightly long	slightly wide
170	Nike Zoom Freak 3	Nike	2021-07-01	Low Top	Good choice for players that enjoy a lightweight and minimal feeling shoe.	119.99	8.1	8.1	7.9	8.0	7.9	8.7	20.0	true to size	regular
171	Nike Air Zoom G.T. Run	Nike	2021-07-01	Mid Top	Recommended for players that look for cushion and impact protection.	174.99	8.1	8.0	8.7	7.9	7.8	8.0	20.0	slightly long	regular
172	Nike Giannis Immortality	Nike	2021-07-01	Low Top	Best for price-conscious players looking for a shoe that feels quick.	79.99	7.8	8.8	7.8	7.0	7.5	8.0	100.0	true to size	regular
173	Nike Kyrie Low 4	Nike	2021-06-01	Low Top	Especially recommended for guards that want a responsive shoe.	109.99	8.2	8.7	7.2	8.3	8.5	8.3	0.0	true to size	regular
174	Under Armour Curry 3Z5	Under Armour	2021-06-01	Low Top	Guards who want to play quick but still like impact protection.	79.99	8.4	9.0	8.5	8.0	7.8	8.5	25.0	true to size	regular
175	Nike Air Zoom G.T. Cut	Nike	2021-05-01	Low Top	Players that like a fast and responsive shoe.	169.99	8.8	8.8	9.6	8.6	8.6	8.5	40.0	true to size	regular
176	Jordan Zion 1	Jordan	2021-05-01	Mid Top	A very versatile shoe that will work for most players.	119.99	8.0	7.6	8.4	7.5	8.5	7.9	83.0	true to size	regular
177	Nike KD Trey 5 IX	Nike	2021-05-01	Low Top	Solid pickup if you are looking for lightweight, minimal, and affordable basketball shoes.	89.99	7.9	7.5	8.0	8.0	8.5	7.5	50.0	slightly long	regular
178	Adidas N3XT L3V3L Futurenatural	Adidas	2021-04-01	Mid Top	Best for guards or wings who need a lot of responsiveness with some ankle support.	179.99	8.4	8.0	8.0	8.5	8.7	8.8	50.0	slightly long	regular
179	Nike KD 14	Nike	2021-04-01	Mid Top	A versatile shoe that works for all type of players.	149.99	8.9	9.4	9.3	8.1	8.7	8.3	25.0	true to size	regular
180	Nike Precision 5	Nike	2021-04-01	Low Top	A good shoe for those who like court feel and don't need much impact protection.	69.99	8.1	9.0	7.3	8.3	8.0	8.0	50.0	slightly long	regular
181	Puma Court Rider	Puma	2021-04-01	Low Top	Players that enjoy low to the ground shoes.	99.99	8.2	8.0	8.0	8.5	8.3	8.0	100.0	slightly long	regular
182	Under Armour Anatomix Spawn 3	Under Armour	2021-03-01	Low Top	Great for any position or player who wants a balanced cushion setup.	99.99	9.0	9.5	10.0	8.0	8.5	9.0	50.0	slightly long	regular
183	Nike Cosmic Unity	Nike	2021-03-01	Low Top	Best for players who need a good mix of impact protection and court feel.	149.99	8.8	8.3	9.3	9.0	8.8	8.8	33.0	slightly long	regular
184	Nike Lebron 18 Low	Nike	2021-03-01	Low Top	Great for forwards or centers who need a lot of impact protection.	159.99	8.5	8.3	8.8	7.8	8.5	8.8	50.0	slightly long	regular
185	New Balance TWO WXY	New Balance	2021-03-01	Mid Top	Great for players of any position who look for court feel and ankle support.	139.99	8.9	9.5	9.0	8.5	9.0	8.5	50.0	slightly long	regular
186	Nike PG 5	Nike	2021-02-01	Low Top	Works best for players that prefer a minimal, lightweight, and responsive shoe no matter what position they play.	109.99	8.8	9.5	8.8	8.0	8.3	8.3	50.0	slightly long	regular
187	Li-Ning Way of Wade 9 Infinity	Li-Ning	2021-02-01	High Top	Players that like to take advantage of their straight-line speed.	109.99	8.5	9.0	8.0	8.7	8.3	8.3	100.0	slightly long	regular
188	Li-Ning Way of Wade 9	Li-Ning	2021-02-01	Low Top	Recommended for most playstyles, but more so for laterally, shifty players.	109.99	8.2	8.0	8.0	8.0	9.0	8.0	50.0	true to size	slightly narrow
189	Adidas Harden Vol. 5	Adidas	2021-01-01	Low Top	Only recommended for players who hoop outdoors and need a responsive shoe.	129.99	6.9	6.8	6.8	6.8	7.5	7.3	100.0	slightly long	slightly wide
190	Nike Kobe 6 Protro	Nike	2021-01-01	Low Top	Players who want a strong performing, balanced shoe.	179.99	8.9	9.6	9.0	8.6	8.6	8.4	50.0	true to size	regular
191	Adidas Harden Stepback 2	Adidas	2021-01-01	Low Top	Best for guards or wings who want court feel and don't need a lot of compression.	79.99	8.3	8.5	7.5	9.0	8.0	8.5	100.0	slightly long	regular
192	Jordan Why Not Zero.4	Jordan	2021-01-01	Mid Top	Great for players who like forefoot Zoom and don't make a lot of lateral moves.	129.99	8.3	7.7	9.0	8.3	8.3	8.3	25.0	slightly long	slightly wide
193	Jordan One Take 2	Jordan	2021-01-01	Low Top	Only recommended for players who need an affordable option for primarily outdoor play.	99.99	7.4	7.5	7.5	7.0	7.0	8.0	25.0	true to size	regular
194	Jordan Jumpman 2021	Jordan	2021-01-01	Mid Top	Best for quick players who need the cushioning to take care of their legs.	109.99	9.1	9.5	9.0	9.0	9.0	9.0	0.0	slightly long	slightly wide
195	Under Armour Curry 8	Under Armour	2020-12-01	Low Top	Great all around hoop shoe for guards and wings.	159.99	8.9	9.9	8.8	8.8	8.4	8.2	67.0	true to size	regular
196	Adidas D Rose 11	Adidas	2020-12-01	Mid Top	Great for wide footers or those who prefer a roomier fit.	139.99	8.4	9.0	9.0	7.5	9.0	7.5	100.0	slightly long	slightly wide
197	Nike Zoom Rize 2	Nike	2020-12-01	Mid Top	Works for centers as well as explosive down-the-line guards.	159.99	8.9	9.3	9.3	9.0	8.5	9.0	50.0	slightly long	regular
198	Puma Clyde All-Pro	Puma	2020-12-01	Low Top	Great for any position or player who likes responsive cushion and a minimal feel.	129.99	9.1	9.5	9.0	9.0	8.8	9.1	50.0	slightly long	regular
199	Li-Ning Wade All City 9	Li-Ning	2020-12-01	Low Top	A great pick for just about any position.	129.99	8.5	8.5	9.5	8.0	8.0	9.0	75.0	slightly long	regular
200	Nike Kyrie 7	Nike	2020-11-01	Mid Top	Great for quick players like guards who are shifty and make a lot of cuts.	139.99	8.6	8.4	8.4	8.2	8.6	8.4	33.0	true to size	regular
201	Nike Lebron Witness 5	Nike	2020-11-01	Mid Top	Great for players of all positions looking for a <$100 hoop shoe.	99.99	8.7	8.5	8.0	9.0	9.0	9.0	0.0	slightly long	regular
202	New Balance Kawhi 1	New Balance	2020-11-01	Mid Top	Best for bigger players who need a very supportive and rigid shoe.	159.99	8.5	8.5	8.5	7.8	9.4	8.3	75.0	true to size	regular
203	Nike Kyrie Flytrap 4	Nike	2020-11-01	Mid Top	Great for quick guards who need a cheap and responsive shoe.	89.99	7.7	7.0	7.0	7.5	9.0	8.0	25.0	true to size	regular
204	Nike Lebron 18	Nike	2020-10-01	High Top	Great for big guys who like soft and comfortable cushioning.	199.99	8.2	8.3	9.5	8.3	7.0	8.2	38.0	slightly long	slightly wide
205	Air Jordan 35	Jordan	2020-10-01	High Top	The perfect shoe for players of every position who want a premium experience.	179.99	9.0	8.7	9.8	8.8	9.0	8.5	0.0	true to size	regular
206	Adidas Dame 7	Adidas	2020-10-01	Low Top	A perfectly balanced shoe that fits any position or player.	109.99	8.7	9.0	9.0	8.0	9.0	8.5	100.0	slightly long	slightly wide
207	Nike Kyrie Low 3	Nike	2020-09-01	Low Top	Best for guards or wings who need a lot of court feel and support.	109.99	8.3	9.0	7.5	8.5	8.5	8.0	100.0	true to size	regular
208	Puma RS Dreamer	Puma	2020-09-01	Low Top	Great for guards or big guys that need a supportive shoe.	124.99	8.4	9.2	7.3	8.3	8.7	8.3	83.0	true to size	regular
209	Nike Lebron Soldier 14	Nike	2020-09-01	High Top	Great for big guys who like forefoot cushion and need a lot of support.	139.99	8.3	8.0	8.3	8.0	9.0	8.3	50.0	slightly long	regular
210	Under Armour Embiid 1	Under Armour	2020-09-01	Mid Top	Great for any position or player looking for a responsive shoe.	119.99	8.1	7.8	8.6	7.8	8.4	8.2	50.0	slightly long	slightly wide
211	Nike Kybrid S2	Nike	2020-09-01	Mid Top	Great for guards and smaller wings who are quick on their feet.	139.99	8.7	8.0	7.5	8.0	9.0	9.0	50.0	slightly long	regular
212	Adidas D.O.N Issue #2	Adidas	2020-08-01	Low Top	Players looking for a very supportive shoe with good impact protection	99.99	8.3	7.8	8.3	8.0	8.8	7.0	0.0	true to size	regular
213	Nike Zoom Freak 2	Nike	2020-08-01	Low Top	A great choice for guards who prefer court feel over impact protection.	119.99	8.2	8.0	7.4	8.0	8.3	8.5	63.0	slightly long	regular
214	Adidas N3XT L3V3L 2020	Adidas	2020-08-01	High Top	Any type of player who wants to be light and quick on their feet	149.99	8.6	8.5	9.0	9.0	9.0	7.5	100.0	slightly long	regular
215	Nike Renew Elevate	Nike	2020-08-01	High Top	A good choice for outdoor courts	79.99	7.9	8.0	8.0	7.5	8.0	8.0	100.0	true to size	regular
216	Adidas Pro Boost Low	Adidas	2020-08-01	Low Top	Great for fast and quick players who need a supportive and minimal shoe.	109.99	8.4	8.5	8.2	7.7	9.0	8.7	100.0	slightly long	regular
217	Nike Mama Fury	Nike	2020-08-01	Low Top	Best for players who like snug shoes with a lot of court feel	99.99	7.0	6.0	6.5	7.5	8.0	7.0	50.0	slightly long	slightly narrow
218	Jordan React Elevation	Jordan	2020-08-01	High Top	Great for any position or style of play.	119.99	8.7	9.0	9.5	8.0	8.5	8.5	100.0	true to size	regular
219	Nike Air Zoom BB NXT	Nike	2020-07-01	Low Top	Works best for big guys looking for a lot of impact protection	179.99	8.3	9.3	9.2	8.2	6.8	8.6	50.0	slightly long	regular
220	Under Armour HOVR Havoc 3	Under Armour	2020-07-01	Low Top	Best for quick guards who need a responsive and supportive shoe.	109.99	8.4	9.0	7.5	7.5	9.0	9.0	0.0	true to size	regular
221	Adidas Crazy BYW 2.0	Adidas	2020-05-01	Low Top	Great shoe if you are looking for a supportive and well-cushioned Low Top.	159.99	8.4	8.7	9.0	8.0	8.3	8.0	75.0	slightly long	slightly wide
222	Jordan Westbrook One Take	Jordan	2020-05-01	Mid Top	Great pick for price-conscious players looking for an all-around solid performing shoe.	99.99	8.2	8.5	8.5	8.0	8.0	8.0	25.0	slightly long	regular
223	Converse G4 Low	Converse	2020-05-01	Low Top	Works best for players looking for a responsive and stable shoe	109.99	8.2	8.0	8.5	8.5	8.5	7.5	50.0	slightly long	slightly narrow
224	Nike KD 13	Nike	2020-04-01	Mid Top	A great pick if you are looking for a comfortable shoe that will also work outdoors.	149.99	8.8	9.1	9.8	7.7	8.3	8.5	75.0	true to size	regular
225	Nike KD Trey 5 VIII	Nike	2020-04-01	Mid Top	Best for outdoor use or those looking for a good deal	89.99	8.2	8.5	9.0	9.0	6.5	8.0	100.0	slightly long	regular
226	Nike Adapt BB 2.0	Nike	2020-02-01	Low Top	Collector's item for sneakerheads who are into the innovative tech	399.99	8.1	8.0	8.5	7.5	9.0	7.5	0.0	true to size	regular
227	Nike Lebron 17 Low	Nike	2020-02-01	Low Top	A great choice for Lebron fans who prefer low-tops compared to Lebron's pretty bulky high-tops	169.99	8.4	9.0	8.3	8.3	8.3	8.0	25.0	true to size	slightly narrow
228	Adidas Pro Model 2G	Adidas	2020-02-01	Mid Top	Perfect if you are looking for affordable shoes that work outdoors.	99.99	8.3	8.5	8.5	8.0	8.0	8.5	100.0	true to size	regular
229	Jordan Why Not Zero.3	Jordan	2020-01-01	High Top	Works great for explosive players who like to stand out on the court	129.99	8.4	7.8	8.6	8.2	8.8	8.3	0.0	slightly long	slightly wide
230	Nike Kobe 5 Protro	Nike	2020-01-01	Low Top	Must-have shoes for fans of the original Kobe 5	179.99	8.7	8.3	8.7	8.1	9.2	9.0	100.0	true to size	regular
231	Nike PG 4	Nike	2020-01-01	Low Top	Super comfortable and well-cushioned basketball shoes	109.99	8.3	8.3	9.4	8.2	7.3	8.0	25.0	slightly small	regular
232	Nike Kyrie Flytrap 3	Nike	2020-01-01	Low Top	Works best as your outdoor basketball shoes	79.99	7.2	8.0	5.0	7.0	8.0	8.0	100.0	true to size	regular
233	Li-Ning Way of Wade 8	Li-Ning	2020-01-01	High Top	Quick players who need a responsive shoe that can keep up	79.99	9.3	9.0	9.7	9.0	9.7	9.0	100.0	slightly long	regular
234	Under Armour Anatomix Spawn 2	Under Armour	2020-01-01	Low Top	Works best for guards with wide feet looking for a responsive shoe	99.99	8.0	8.3	7.5	9.0	8.0	7.0	0.0	slightly long	very wide
235	Adidas Harden Stepback	Adidas	2020-01-01	Low Top	A great choice for price-conscious guards who like responsive cushioning	79.99	8.0	8.0	7.0	8.0	9.0	8.0	0.0	slightly long	slightly wide
236	Adidas Dame 6	Adidas	2019-12-01	Low Top	Works best for guards who play on clean courts most of the time	109.99	7.7	7.0	9.1	7.3	7.3	7.9	0.0	slightly long	slightly wide
237	Nike Air Zoom UNVRS	Nike	2019-12-01	High Top	Good choice if you are looking for shoes that are comfortable and easy to put on	159.99	7.7	6.3	10.0	8.3	7.0	7.0	0.0	true to size	slightly narrow
238	Under Armour Curry 7	Under Armour	2019-11-01	Low Top	Works best for quick guards who value court feel over impact protection	139.99	8.3	9.4	7.2	7.8	8.9	8.4	67.0	true to size	regular
239	Puma Clyde Hardwood	Puma	2019-11-01	Low Top	Great shoe if you are looking for beastly traction and minimal, responsive cushioning	119.99	8.7	9.2	7.7	8.8	9.0	9.0	100.0	slightly long	regular
240	New Balance OMN1S	New Balance	2019-11-01	High Top	A durable performer with comfortable cushioning, good materials, and great traction on clean courts	139.99	8.7	9.0	9.0	9.0	7.8	8.5	100.0	slightly long	regular
241	Nike Kyrie 6	Nike	2019-11-01	High Top	Great traction and support with a low-to-the-ground, responsive cushioning	129.99	8.8	9.0	8.9	8.4	9.0	8.6	13.0	true to size	regular
242	Air Jordan 34	Jordan	2019-10-01	High Top	A great option if you are looking for a light & stylish shoe with no real weaknesses	179.99	9.0	9.2	9.6	8.3	8.8	9.0	25.0	true to size	regular
243	Nike Lebron 17	Nike	2019-10-01	High Top	Top choice if you are looking for a comfortable, supportive shoe with a ton of impact protection	199.99	8.7	7.8	9.5	9.1	8.5	8.4	25.0	true to size	slightly wide
244	Adidas Harden Vol. 4	Adidas	2019-10-01	Low Top	Best for guards looking for a fast, low-to-the-ground, and supportive shoe	129.99	8.8	8.8	8.7	8.9	8.7	8.8	63.0	slightly long	slightly wide
245	Adidas D Rose 10	Adidas	2019-10-01	High Top	Recommended for D-Rose fans who enjoy soft cushioning and play on clean courts	139.99	7.9	7.3	9.3	8.0	8.3	6.7	0.0	very long	slightly wide
246	ANTA KT 5	ANTA	2019-10-01	High Top	A durable shoe for any position or style of play.	159.99	8.8	9.2	8.8	8.3	9.0	8.5	83.0	slightly long	regular
247	Nike Lebron Witness 4	Nike	2019-10-01	High Top	Only recommended for Lebron fans who can't afford his more expensive signature shoes	99.99	7.8	7.5	8.0	7.5	8.0	8.0	83.0	slightly long	regular
248	Jordan Jumpman 2020	Jordan	2019-10-01	High Top	A great overall performer that comes at a very affordable retail price	109.99	8.5	8.3	9.3	8.3	8.3	8.3	25.0	true to size	regular
249	Nike Zoom Rize	Nike	2019-09-01	High Top	Suitable for all players, especially big guys looking for support and comfort	139.99	8.9	8.9	9.1	8.8	8.5	9.0	75.0	true to size	regular
250	Nike Kobe AD NXT FastFit	Nike	2019-09-01	Mid Top	Great shoe for quick, low-to-the-ground players who are into futuristic looks	199.99	8.5	9.4	8.3	7.8	8.0	8.8	33.0	true to size	slightly narrow
251	Nike AlphaDunk	Nike	2019-09-01	High Top	Only works for slow, heavy big guys looking for support and impact protection	179.99	7.5	5.0	8.3	8.0	8.3	7.5	33.0	true to size	slightly wide
252	Nike KD Trey 5 VII	Nike	2019-08-01	Low Top	Great shoe if you like soft cushioning and don't need a lot of support	89.99	7.4	9.5	9.0	5.5	6.5	6.5	75.0	slightly long	regular
253	Jordan Jumpman Diamond Mid	Jordan	2019-08-01	Mid Top	Perfect for players who like to stand out on the court	119.99	8.9	9.3	8.7	9.0	9.3	8.3	0.0	true to size	regular
254	Adidas Pro Bounce 2019 Low	Adidas	2019-08-01	Low Top	The Pro Bounce is not recommended due to its lacking traction	109.99	7.7	7.0	8.8	7.5	8.3	7.0	75.0	slightly long	regular
255	Jordan Zoom Zero Gravity	Jordan	2019-08-01	Low Top	A great shoe for price-conscious hoopers looking for a fast low-top	99.99	8.6	9.3	8.0	8.5	8.5	9.0	100.0	true to size	slightly wide
256	Nike Zoom Freak 1	Nike	2019-07-01	Low Top	Very low-to-the-ground feeling with very firm forefoot-cushioning	119.99	7.9	7.5	7.3	7.6	8.6	8.8	25.0	true to size	regular
257	Adidas DON Issue 1	Adidas	2019-07-01	Low Top	Recommended for  explosive guards looking for a supportive and responsive low-top	99.99	8.4	7.4	8.6	8.4	8.6	8.3	100.0	slightly long	regular
258	Under Armour Curry 3Zero 3	Under Armour	2019-07-01	Low Top	Great budget option for players who prefer lightweight and minimal shoes	89.99	8.9	9.5	7.5	9.0	9.0	9.5	100.0	true to size	regular
259	Under Armour HOVR Havoc 2	Under Armour	2019-07-01	High Top	Best for players looking for a supportive shoe with well-balanced cushioning	119.99	8.7	8.0	8.7	9.0	9.0	9.0	100.0	true to size	regular
260	Nike Lebron Soldier 13	Nike	2019-07-01	High Top	A great all-around performer that works very well for heavier players	139.99	8.8	9.5	8.4	8.6	9.0	8.5	88.0	slightly long	regular
261	Converse All Star Pro BB	Converse	2019-06-01	High Top	Perfect for narrow-footers who like light and responsive shoes	139.99	8.2	7.8	8.8	8.0	8.0	8.2	25.0	true to size	regular
262	Jordan CP3 12	Jordan	2019-06-01	Low Top	Perfect shoe if you are looking for an affordable, top-tier performer, that you can play outdoors too	99.99	8.8	9.2	8.7	9.0	8.3	8.7	100.0	slightly long	regular
263	Nike Kyrie Low 2	Nike	2019-06-01	Low Top	Works best for narrow-footers looking for a good allrounder with responsive cushioning	109.99	8.6	9.2	7.6	8.8	8.8	8.6	30.0	true to size	regular
264	Nike Mamba Focus	Nike	2019-04-01	Low Top	An affordable shoe for playing outdoors	99.99	7.4	7.0	7.0	8.0	8.0	7.5	100.0	slightly long	regular
265	Nike KD 12	Nike	2019-04-01	Mid Top	A well-balanced shoe that works for a wide array of basketball players	149.99	8.8	9.0	9.9	8.1	8.4	8.4	20.0	true to size	regular
266	Adidas Pro Bounce Madness	Adidas	2019-03-01	High Top	Works for all playing styles and positions	119.99	8.5	8.3	9.0	8.0	8.8	8.5	67.0	slightly long	regular
267	Nike PG 3	Nike	2019-02-01	Low Top	Versatile shoe that works for all positions	109.99	8.9	9.1	9.0	8.2	8.7	8.9	25.0	true to size	regular
268	Adidas Dame 5	Adidas	2019-02-01	Mid Top	The Dame 5 works best for quick guards who prefer responsive cushioning	114.99	8.8	8.7	8.8	8.0	9.1	9.1	90.0	slightly long	slightly wide
269	Under Armour Anatomix Spawn Low	Under Armour	2019-02-01	Low Top	Perfect for quick point guards who want to be able to stop on a dime	109.99	8.6	9.7	8.8	8.3	8.7	7.7	0.0	slightly long	slightly wide
270	Nike Kobe 4 Protro	Nike	2019-02-01	Low Top	A very versatile shoe that will be most appreciated by players who had the OG Kobe 4	174.99	8.6	9.0	8.0	8.2	9.0	8.5	25.0	true to size	regular
271	Puma Uproar	Puma	2019-02-01	Low Top	Worn by players of all positions in the NBA	129.99	8.4	8.7	7.0	8.3	9.0	9.0	67.0	true to size	regular
272	Nike Adapt BB	Nike	2019-02-01	Low Top	A must-have for sneakerheads who are into innovative tech!	349.99	8.5	8.5	8.3	9.3	7.8	8.5	25.0	true to size	regular
273	Under Armour Curry 6	Under Armour	2019-01-01	Low Top	Perfect for quick guards looking for a supportive, lightweight shoe with great court feel	129.99	8.7	8.7	8.7	8.8	8.7	8.5	20.0	slightly long	regular
274	Jordan Why Not Zero.2	Jordan	2019-01-01	Mid Top	Works best for explosive players looking for a supportive shoe	119.99	8.6	8.8	9.0	8.3	8.4	8.3	30.0	slightly long	regular
275	Nike Kyrie Flytrap 2	Nike	2019-01-01	Low Top	Perfect for light and quick players who don't need a lot of impact protection	79.99	7.8	9.5	4.5	9.0	8.5	7.0	100.0	slightly long	regular
276	Li-Ning Way of Wade 7	Li-Ning	2018-12-01	Low Top	Perfect for Dwyane Wade fans who play on clean courts	164.99	8.3	6.7	8.7	9.0	9.0	8.0	83.0	very long	slightly wide
277	Adidas Marquee Boost	Adidas	2018-12-01	Mid Top	Works for a wide array of basketball players	129.99	8.7	8.2	9.6	8.5	8.8	8.4	63.0	slightly long	slightly wide
278	Adidas N3XT L3V3L	Adidas	2018-12-01	High Top	Works well for explosive players looking for a light shoe with a well-balanced, responsive cushioning setup	179.99	8.5	8.4	9.1	8.9	8.0	8.3	0.0	slightly long	regular
279	Adidas T-Mac Millenium	Adidas	2018-12-01	Low Top	Perfect for T-Mac fans looking for a good all-around performer	159.99	8.5	9.3	8.8	7.8	8.3	8.0	0.0	slightly long	regular
280	Adidas Pro Vision	Adidas	2018-12-01	Mid Top	Best for price-conscious hoopers that play on clean courts only	99.99	8.4	8.0	9.0	7.5	9.5	8.0	50.0	slightly long	regular
281	Nike Kyrie 5	Nike	2018-11-01	High Top	Works best for quick guards who prefer court feel over impact protection	129.99	8.5	8.2	8.0	7.9	9.0	8.6	30.0	true to size	regular
282	Puma Clyde Court Disrupt	Puma	2018-10-01	Mid Top	Great shoe if you are tired of Nike, Jordan, and Adidas	129.99	8.2	7.9	8.0	8.9	8.3	8.4	50.0	slightly long	slightly wide
283	Air Jordan 33	Jordan	2018-10-01	High Top	Perfect if you are into innovative tech and can afford the steep price	174.99	8.3	8.4	8.4	7.9	8.9	8.2	20.0	slightly long	slightly narrow
284	Adidas Harden Vol. 3	Adidas	2018-10-01	Low Top	Perfect for players of all positions who value court feel and freedom of movement	139.99	9.0	8.8	9.5	8.9	8.8	9.1	0.0	slightly long	regular
285	ANTA KT 4	ANTA	2018-10-01	High Top	Best for players who enjoy knitted uppers and soft cushioning	124.99	8.9	9.5	8.8	9.0	8.7	8.3	25.0	slightly long	regular
286	Nike Lebron 16	Nike	2018-09-01	Mid Top	Especially recommended for explosive and powerful wing players.	184.99	8.9	9.1	9.0	9.0	8.7	8.4	83.0	slightly long	slightly wide
287	Adidas Pro Bounce Low	Adidas	2018-09-01	Low Top	Great bang for the buck and should work well for positions 1-4.	109.99	8.7	8.9	8.8	8.5	9.0	8.3	75.0	slightly long	regular
288	Jordan Jumpman Hustle	Jordan	2018-09-01	Low Top	Great all-around performer at a very fair price!	109.99	8.7	9.3	8.9	8.6	7.8	9.0	50.0	slightly long	regular
289	Nike KD 11	Nike	2018-08-01	Mid Top	Works best as a casual sneaker but doesn't perform very well on a basketball court.	149.99	7.6	7.9	9.0	8.0	5.9	7.1	33.0	slightly long	regular
290	Nike Kobe AD Exodus	Nike	2018-08-01	Low Top	Especially recommended for quicker guards	139.99	8.3	8.2	8.4	7.6	8.3	8.3	10.0	slightly long	regular
291	Under Armour Curry 3Zero 2	Under Armour	2018-08-01	High Top	Solid performer at an affordable price	99.99	8.3	8.6	8.4	8.4	7.9	8.4	75.0	slightly long	slightly wide
292	Under Armour HOVR Havoc Low	Under Armour	2018-08-01	Low Top	Works best for quick guards in need of excellent traction	104.99	8.9	9.4	8.3	8.6	9.3	8.7	100.0	slightly long	regular
293	Jordan Super.Fly MVP L	Jordan	2018-08-01	High Top	Works best for big guys who post up a lot	139.99	7.7	7.8	7.3	7.5	8.0	8.0	0.0	true to size	slightly narrow
294	Nike Kyrie Low	Nike	2018-07-01	Low Top	Perfect for guards who want maximum traction and don't need a lot of cushioning	109.99	8.4	8.9	8.3	7.5	8.8	8.6	0.0	true to size	regular
295	Adidas D Rose 9	Adidas	2018-07-01	High Top	Great looking sneaker for players with wide feet	139.99	7.6	6.6	8.9	8.1	8.0	6.4	0.0	very long	very wide
296	Nike PG 2.5	Nike	2018-07-01	Low Top	Perfect if you are looking for an affordable all-around performer without any weaknesses.	109.99	8.8	8.7	7.8	8.8	9.0	9.0	25.0	true to size	regular
297	Nike Hyperdunk X	Nike	2018-07-01	High Top	Works best on clean courts	129.99	8.2	7.8	8.5	7.6	8.3	8.8	25.0	slightly long	regular
298	Nike Hyperdunk X Low	Nike	2018-07-01	Low Top	A solid performer that should work across a wide array of playing styles.	119.99	7.9	7.3	7.7	8.2	8.0	8.2	25.0	slightly long	regular
299	Jordan Fly Lockdown	Jordan	2018-05-01	Mid Top	Good all-around performance basketball shoe at a fair price	109.99	8.8	9.3	8.3	8.3	9.0	9.0	50.0	slightly long	regular
300	Jordan CP3 XI	Jordan	2018-04-01	Mid Top	Perfect if you are looking for an affordable all-around performer with no weaknesses	114.99	9.0	9.0	8.9	8.8	9.1	9.0	17.0	slightly long	regular
301	Under Armour Curry 5	Under Armour	2018-04-01	Mid Top	Only for the biggest Curry fans	129.99	7.5	6.8	7.3	8.4	8.3	6.5	33.0	true to size	regular
302	Adidas Crazylight Boost 2018	Adidas	2018-04-01	Low Top	Top performer that works best for quick guards	119.99	8.3	9.3	8.8	7.8	8.0	7.8	100.0	very long	slightly wide
303	Nike Zoom Kobe 1 Protro	Nike	2018-04-01	High Top	Perfect if you like old-school basketball sneakers	174.99	8.9	8.9	9.3	9.1	9.2	8.3	100.0	slightly long	slightly wide
304	Nike Kobe AD NXT 360	Nike	2018-04-01	Low Top	Best for players looking for flashy, cutting-edge performance shoes	199.99	8.9	8.2	9.1	9.0	8.6	9.2	10.0	slightly long	regular
305	Nike Lebron Soldier 12	Nike	2018-04-01	High Top	An affordable performer that will work for almost all players	139.99	8.3	9.3	7.7	7.7	8.3	8.5	75.0	true to size	regular
306	Nike Kyrie Flytrap	Nike	2018-03-01	Mid Top	Works well for wide-footers or if you are looking for a cheap outdoors shoe	79.99	7.3	8.3	6.8	8.3	6.8	6.5	100.0	slightly long	slightly wide
307	Nike Lebron 15 Low	Nike	2018-03-01	Low Top	Great shoe for explosive and heavier players	149.99	8.7	8.7	8.0	9.0	8.5	9.3	25.0	slightly long	regular
308	Nike PG 2	Nike	2018-02-01	Low Top	Affordable all-around performer without any weaknesses.	109.99	8.6	8.6	8.4	8.5	8.5	9.0	8.0	true to size	regular
309	Adidas Harden Vol. 2	Adidas	2018-02-01	Low Top	Works especially well for bigger guards and heavier players	139.99	8.6	7.6	9.4	8.6	8.7	8.6	50.0	slightly long	regular
310	Adidas Crazy BYW X	Adidas	2018-02-01	High Top	Works best for players of all positions who have narrow feet	179.99	8.8	8.0	9.0	9.3	8.7	8.8	0.0	slightly long	slightly narrow
311	Jordan Why Not Zero.1	Jordan	2018-01-01	Mid Top	Best for explosive and powerful players	124.99	8.7	8.3	9.3	8.0	9.1	8.8	10.0	slightly long	regular
312	Nike Kyrie 4	Nike	2017-12-01	Mid Top	Affordable, well-rounded basketball shoe	119.99	8.7	8.4	8.7	8.7	9.0	8.9	67.0	true to size	regular
313	Li-Ning Way of Wade 6	Li-Ning	2017-12-01	Low Top	Great shoe for players with slightly wider feet	154.99	8.7	8.3	9.6	9.1	8.0	8.0	67.0	slightly long	slightly wide
314	Nike Kyrie S1	Nike	2017-12-01	Mid Top	For Kyrie fans who don't mind paying premium to get these from resellers	129.99	8.5	8.3	8.0	8.0	9.0	9.3	50.0	true to size	slightly narrow
315	Under Armour Curry 4 Low	Under Armour	2017-12-01	Low Top	Perfect shoe for quick guards	119.99	8.7	9.0	7.9	9.0	9.0	8.8	50.0	true to size	slightly narrow
316	Under Armour Curry 4	Under Armour	2017-11-01	High Top	Built for quickness and court feel	129.99	8.5	9.1	7.5	8.2	8.9	9.2	33.0	true to size	regular
317	ANTA KT3	ANTA	2017-11-01	High Top	Great performer that will work for all players	119.99	8.8	8.9	9.1	9.1	8.5	8.5	75.0	slightly long	regular
318	Nike Lebron 15	Nike	2017-11-01	High Top	Works extremely well for big guys that need a lot of impact protection.	184.99	8.8	8.2	9.8	9.3	8.1	9.0	8.0	slightly long	slightly wide
319	Air Jordan 32	Jordan	2017-10-01	Mid Top	All-around performer that will work for all types of basketball players	184.99	8.8	8.3	8.9	9.4	8.9	8.7	63.0	slightly long	regular
320	Adidas Dame 4	Adidas	2017-10-01	Low Top	Works best for quick guards looking for a low-to-the-ground, responsive and light basketball shoe.	114.99	8.8	8.5	9.2	8.8	8.7	8.8	0.0	slightly long	regular
321	Air Jordan 32 Low	Jordan	2017-10-01	Low Top	Perfect for Jordan fans that prefer the freedom and flexibility of a low-top	159.99	8.8	8.0	8.8	9.5	8.8	9.0	75.0	slightly long	slightly narrow
322	Adidas D Rose 8	Adidas	2017-09-01	High Top	Perfect if you are looking for traditional high-top basketball shoes	139.99	8.9	8.8	9.7	8.1	9.1	8.8	67.0	slightly long	slightly wide
323	Nike Hyperdunk Flyknit 2017	Nike	2017-08-01	High Top	Perfect shoe for guards who value court feel	159.99	8.5	9.2	7.6	8.9	8.4	8.8	17.0	true to size	regular
324	Nike Kobe AD Mid	Nike	2017-08-01	Mid Top	Poor ventilation is problematic if your feet sweat a lot	149.99	8.5	8.9	9.0	7.3	8.4	8.1	0.0	true to size	regular
325	Under Armour Drive 4	Under Armour	2017-08-01	High Top	Will work best for wide-footers	114.99	8.2	9.5	7.3	7.7	8.7	7.5	90.0	true to size	very wide
326	Jordan Super.Fly 2017	Jordan	2017-08-01	Mid Top	A durable and supportive shoe which will work great for bigger guys.	139.99	8.4	8.5	7.6	8.6	8.8	8.6	50.0	slightly long	regular
327	Adidas Crazy Explosive PrimeKnit 2017	Adidas	2017-07-01	High Top	Works for players of all positions	149.99	9.0	8.6	9.3	8.7	9.0	9.3	8.0	slightly long	regular
328	Nike Zoom Shift	Nike	2017-06-01	Low Top	Budget option for guards with narrow feet	99.99	7.9	7.3	7.3	8.3	8.7	8.0	0.0	true to size	slightly narrow
329	Nike Lebron Soldier 11	Nike	2017-06-01	Mid Top	Recommended for bigger guys who look for impact protection and support	129.99	8.5	8.1	8.9	8.5	8.4	8.7	75.0	true to size	regular
330	Nike KD 10	Nike	2017-05-01	Low Top	Recommended if you value impact protection and do not rely on hard cuts	149.99	8.4	7.7	9.1	9.1	7.1	8.3	20.0	slightly long	regular
331	Under Armour Curry 3Zero	Under Armour	2017-05-01	Mid Top	Curry 3Zero is a solid performer at a fair price	119.99	8.4	8.7	7.9	8.1	9.0	8.4	75.0	slightly long	regular
332	ANTA KT Outdoor 2 Low	ANTA	2017-05-01	Low Top	Works best as an affordable outdoor shoe	79.99	8.3	8.7	8.7	7.8	8.5	7.8	100.0	slightly long	regular
333	Nike Kobe AD NXT	Nike	2017-04-01	Low Top	Works best for quick guards	199.99	8.8	8.9	8.6	9.0	9.0	8.8	0.0	slightly long	slightly narrow
334	Nike PG1	Nike	2017-03-01	Low Top	Works best for guards with regular or narrow feet	109.99	8.6	8.4	8.0	8.9	8.4	8.6	0.0	true to size	regular
335	Nike KD 9 Elite	Nike	2017-03-01	High Top	Works best for players with narrow feet looking for soft cushioning	149.99	8.5	8.5	9.3	9.0	7.5	7.5	0.0	slightly long	regular
336	Jordan Ultra Fly 2	Jordan	2017-03-01	High Top	Perfect for players with narrow feet who like to ball outdoors.	124.99	8.6	8.0	8.7	8.5	9.0	9.0	100.0	true to size	slightly narrow
337	Under Armour Charged Controller	Under Armour	2017-02-01	Low Top	Low-cut basketball shoe designed for quick guards	99.99	7.6	6.8	8.4	8.3	6.8	7.5	50.0	slightly long	slightly wide
338	Jordan Melo M13	Jordan	2017-02-01	Mid Top	Stationary post up players will like the comfortable cushioning	134.99	7.5	5.0	8.5	8.0	7.0	9.0	25.0	true to size	slightly wide
339	Nike Lebron 14	Nike	2017-01-01	High Top	Best for bigger, heavier players with wide feet	174.99	7.9	7.4	8.7	8.0	7.7	7.4	50.0	slightly long	slightly wide
340	Nike Zoom Rev 17	Nike	2017-01-01	Mid Top	Works best if you don't play on dusty courts	109.99	8.1	7.0	8.3	8.3	7.7	9.3	0.0	true to size	slightly narrow
341	Nike Zoom Live 2017	Nike	2017-01-01	Low Top	Affordable low-top that works best for guards	99.99	8.7	8.5	8.0	9.0	9.0	9.0	25.0	true to size	regular
342	Nike Mamba Instinct	Nike	2017-01-01	Low Top	Meant for quick guards who want a light shoe	99.99	8.4	8.3	8.0	8.7	8.5	8.5	0.0	true to size	regular
343	Nike Kyrie 3	Nike	2016-12-01	Mid Top	Good choice for light and quick guards who value court feel over impact protection	119.99	7.9	9.2	5.9	7.5	7.9	9.0	83.0	true to size	regular
344	Adidas Harden Volume 1	Adidas	2016-12-01	Low Top	Great shoe for guards with wider feet	139.99	8.3	8.8	8.3	8.5	8.4	7.9	0.0	slightly long	slightly wide
345	Adidas Dame 3	Adidas	2016-12-01	Mid Top	Affordable performer for players with slightly wider feet	114.99	8.6	8.8	8.8	8.2	8.7	8.2	17.0	slightly long	regular
346	Nike Kobe AD	Nike	2016-11-01	Low Top	Best for guards who prefer firm cushioning setups	159.99	7.8	8.0	6.8	7.2	7.5	8.5	0.0	slightly long	slightly narrow
347	ANTA KT 2	ANTA	2016-11-01	High Top	Well-performing allrounder at an affordable price	119.99	8.8	9.0	9.0	8.3	8.3	9.5	75.0	true to size	slightly narrow
348	BrandBlack Rare Metal	BrandBlack	2016-10-01	Mid Top	Perfect budget sneaker for guards with slightly wider feet.	109.99	8.6	7.5	9.0	8.8	8.5	9.0	0.0	slightly long	slightly wide
349	Under Armour Curry 3	Under Armour	2016-10-01	Mid Top	Perfect shoe for light and quick guards	139.99	8.6	8.9	8.0	8.9	8.6	8.3	30.0	slightly long	regular
350	Air Jordan 31	Jordan	2016-09-01	Mid Top	Great shoe for Jordan fans with wider feet	184.99	8.2	6.0	9.0	9.3	8.1	8.3	50.0	true to size	slightly wide
351	Nike Zoom KD 9	Nike	2016-06-01	Mid Top	Perfect for players who need maximum impact protection and cushioning	149.99	8.6	8.9	9.6	8.7	7.5	8.3	0.0	slightly long	regular
\.


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 219
-- Name: Colorway_colorway_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Colorway_colorway_id_seq"', 1, false);


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 221
-- Name: Critic_critic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Critic_critic_id_seq"', 1, false);


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 217
-- Name: Shoe_shoe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Shoe_shoe_id_seq"', 1, false);


--
-- TOC entry 4762 (class 2606 OID 16457)
-- Name: Critic Critic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Critic"
    ADD CONSTRAINT "Critic_pkey" PRIMARY KEY (critic_id);


--
-- TOC entry 4760 (class 2606 OID 16434)
-- Name: Shoe Shoe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shoe"
    ADD CONSTRAINT "Shoe_pkey" PRIMARY KEY (shoe_id);


--
-- TOC entry 4763 (class 2606 OID 16444)
-- Name: Colorway FK_colorway_shoe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Colorway"
    ADD CONSTRAINT "FK_colorway_shoe" FOREIGN KEY (shoe_id) REFERENCES public."Shoe"(shoe_id) ON DELETE CASCADE;


--
-- TOC entry 4764 (class 2606 OID 16468)
-- Name: Review FK_review_critic; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "FK_review_critic" FOREIGN KEY (critic_id) REFERENCES public."Critic"(critic_id) ON DELETE CASCADE;


--
-- TOC entry 4765 (class 2606 OID 16476)
-- Name: Review FK_review_shoe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "FK_review_shoe" FOREIGN KEY (shoe_id) REFERENCES public."Shoe"(shoe_id) ON DELETE CASCADE NOT VALID;


-- Completed on 2025-07-25 19:42:36

--
-- PostgreSQL database dump complete
--

