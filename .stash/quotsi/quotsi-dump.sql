--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: authors; Type: TABLE; Schema: public; Owner: watsnav
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(96) NOT NULL,
    link character varying(2083),
    popularity_index integer DEFAULT 0
);


ALTER TABLE public.authors OWNER TO watsnav;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: watsnav
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO watsnav;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: watsnav
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: quotes; Type: TABLE; Schema: public; Owner: watsnav
--

CREATE TABLE public.quotes (
    id integer NOT NULL,
    quote character varying(512) NOT NULL,
    author_id integer,
    likes integer DEFAULT 0
);


ALTER TABLE public.quotes OWNER TO watsnav;

--
-- Name: quotes_id_seq; Type: SEQUENCE; Schema: public; Owner: watsnav
--

CREATE SEQUENCE public.quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotes_id_seq OWNER TO watsnav;

--
-- Name: quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: watsnav
--

ALTER SEQUENCE public.quotes_id_seq OWNED BY public.quotes.id;


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: watsnav
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: quotes id; Type: DEFAULT; Schema: public; Owner: watsnav
--

ALTER TABLE ONLY public.quotes ALTER COLUMN id SET DEFAULT nextval('public.quotes_id_seq'::regclass);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: watsnav
--

COPY public.authors (id, name, link, popularity_index) FROM stdin;
1	Abraham Lincoln	\N	0
2	Albert Einstein	\N	0
3	Anthony Robbins	\N	0
4	Brian Tracey	\N	0
5	Dale Carnegie	\N	0
6	Dennis Waitley	\N	0
7	Donald Trump	\N	0
8	Earl Nightingale	\N	0
9	Jim Rohn	\N	0
10	Mark Victor Hansen	\N	0
11	Napoleon Hill	\N	0
12	Norman Vincent Peale	\N	0
13	Paul Sweeney	\N	0
14	Ralph Waldo Emerson	\N	0
15	Robert H. Schuller	\N	0
16	Robert T. Kiyosaki	\N	0
17	Thomas Edison	\N	0
18	Thomas Jefferson	\N	0
19	W. Clement Stone	\N	0
20	Zig Ziglar	\N	0
\.


--
-- Data for Name: quotes; Type: TABLE DATA; Schema: public; Owner: watsnav
--

COPY public.quotes (id, quote, author_id, likes) FROM stdin;
1	My father taught me to work; he did not teach me to love it.	1	0
2	Common looking people are the best in the world: that is the reason the Lord makes so many of them.	1	0
3	How many legs does a dog have if you call the tail a leg? Four. Calling a tail a leg doesn\\t make it a leg.	1	0
4	And in the end its not the years in your life that count. Its the life in your years.	1	0
5	My experience has taught me that a man who has no vices has damned few virtues.	1	0
6	Let not him who is houseless pull down the house of another, but let him work diligently and build one for himself, thus by example assuring that his own shall be safe from violence when built.	1	0
7	Will springs from the two elements of moral sense and self-interest.	1	0
8	My great concern is not whether you have failed, but whether you are content with your failure.	1	0
9	The way for a young man to rise is to improve himself in every way he can, never suspecting that anybody wishes to hinder him.	1	0
10	I am a slow walker, but I never walk backwards.	1	0
11	I will prepare and some day my chance will come.	1	0
12	I want it said of me by those who knew me best; that I always plucked a thistle and planted a flower where I thought a flower would grow.	1	0
13	I never had a policy; I have just tried to do my very best each and every day.	1	0
14	If there is anything that a man can do well, I say let him do it. Give him a chance.	1	0
15	You cannot escape the responsibility of tomorrow by evading it today.	1	0
16	Nearly all men can stand adversity, but if you want to test a mans character, give him power.	1	0
17	I do not think much of a man who is not wiser today than he was yesterday.	1	0
18	Fourscore and seven years ago our fathers brought forth on this continent, a new nation, conceived in Liberty, and dedicated to the proposition that all men are created equal.	1	0
19	People are just as happy as they make up their minds to be.	1	0
21	With malice toward none, with charity for all.	1	0
22	That some should be rich, shows that others may become rich, and, hence, is just encouragement to industry and enterprise.	1	0
23	Always bear in mind, that your own resolution to succeed is more important than any other thing.	1	0
24	Determine that the thing can and shall be done, and then we shall find the way.	1	0
25	I have noticed that folks are generally about as happy as they make up their minds to be.	1	0
26	I don\\t think much of a man who is not wiser today than he was yesterday.	1	0
27	The best thing about the future is that it comes only one day at a time.	1	0
28	When I do good, I feel good. When I do bad, I feel bad. Thats my religion.	1	0
31	I don\\t like the man. I must get to know him better.	1	0
32	Those who deny freedom to others, deserve it not for themselves; and under a just God, can not long retain it.	1	0
33	What ever you are be a good one.	1	0
34	Always bear in mind that your own resolution to succeed is more important than any other one thing.	1	0
35	Any intelligent fool can make things bigger, more complex, and more violent. It takes a touch of genius -- and a lot of courage -- to move in the opposite direction.	2	0
36	Imagination is more important than knowledge.	2	0
37	Gravitation is not responsible for people falling in love.	2	0
38	I want to know Gods thoughts; the rest are details.	2	0
39	The hardest thing in the world to understand is the income tax.	2	0
40	Reality is merely an illusion, albeit a very persistent one.	2	0
41	The only real valuable thing is intuition.	2	0
42	A person starts to live when he can live outside himself.	2	0
43	I am convinced that He (God) does not play dice.	2	0
44	God is subtle but he is not malicious.	2	0
45	Weakness of attitude becomes weakness of character.	2	0
46	I never think of the future. It comes soon enough.	2	0
47	The eternal mystery of the world is its comprehensibility.	2	0
48	Sometimes one pays most for the things one gets for nothing.	2	0
49	Science without religion is lame. Religion without science is blind.	2	0
50	Anyone who has never made a mistake has never tried anything new.	2	0
51	Great spirits have often encountered violent opposition from weak minds.	2	0
52	Everything should be made as simple as possible, but not simpler.	2	0
53	Common sense is the collection of prejudices acquired by age eighteen.	2	0
54	Science is a wonderful thing if one does not have to earn ones living at it.	2	0
55	The secret to creativity is knowing how to hide your sources.	2	0
56	The only thing that interferes with my learning is my education.	2	0
57	God does not care about our mathematical difficulties. He integrates empirically.	2	0
58	The whole of science is nothing more than a refinement of everyday thinking.	2	0
59	Technological progress is like an axe in the hands of a pathological criminal.	2	0
60	Peace cannot be kept by force. It can only be achieved by understanding.	2	0
61	The most incomprehensible thing about the world is that it is comprehensible.	2	0
62	We can\\t solve problems by using the same kind of thinking we used when we created them.	2	0
63	Education is what remains after one has forgotten everything he learned in school.	2	0
64	The important thing is not to stop questioning. Curiosity has its own reason for existing.	2	0
65	Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.	2	0
66	Equations are more important to me, because politics is for the present, but an equation is something for eternity.	2	0
67	If A is a success in life, then A equals x plus y plus z. Work is x; y is play; and z is keeping your mouth shut.	2	0
68	Two things are infinite: the universe and human stupidity; and I\\m not sure about the the universe.	2	0
69	As far as the laws of mathematics refer to reality, they are not certain, as far as they are certain, they do not refer to reality.	2	0
70	Whoever undertakes to set himself up as a judge of Truth and Knowledge is shipwrecked by the laughter of the gods.	2	0
71	I know not with what weapons World War III will be fought, but World War IV will be fought with sticks and stones.	2	0
72	In order to form an immaculate member of a flock of sheep one must, above all, be a sheep.	2	0
73	The fear of death is the most unjustified of all fears, for theres no risk of accident for someone whos dead.	2	0
74	Too many of us look upon Americans as dollar chasers. This is a cruel libel, even if it is reiterated thoughtlessly by the Americans themselves.	2	0
75	Heroism on command, senseless violence, and all the loathsome nonsense that goes by the name of patriotism -- how passionately I hate them!	2	0
76	No, this trick won\\t work...How on earth are you ever going to explain in terms of chemistry and physics so important a biological phenomenon as first love?	2	0
77	My religion consists of a humble admiration of the illimitable superior spirit who reveals himself in the slight details we are able to perceive with our frail and feeble mind.	2	0
78	Yes, we have to divide up our time like that, between our politics and our equations. But to me our equations are far more important, for politics are only a matter of present concern. A mathematical equation stands forever.	2	0
79	The release of atom power has changed everything except our way of thinking...the solution to this problem lies in the heart of mankind. If only I had known, I should have become a watchmaker.	2	0
80	Great spirits have always found violent opposition from mediocrities. The latter cannot understand it when a man does not thoughtlessly submit to hereditary prejudices but honestly and courageously uses his intelligence.	2	0
81	The most beautiful thing we can experience is the mysterious. It is the source of all true art and all science. He to whom this emotion is a stranger, who can no longer pause to wonder and stand rapt in awe, is as good as dead: his eyes are closed.	2	0
82	A mans ethical behavior should be based effectually on sympathy, education, and social ties; no religious basis is necessary. Man would indeeded be in a poor way if he had to be restrained by fear of punishment and hope of reward after death.	2	0
83	The further the spiritual evolution of mankind advances, the more certain it seems to me that the path to genuine religiosity does not lie through the fear of life, and the fear of death, and blind faith, but through striving after rational knowledge.	2	0
84	Now he has departed from this strange world a little ahead of me. That means nothing. People like us, who believe in physics, know that the distinction between past, present, and future is only a stubbornly persistent illusion.	2	0
85	You see, wire telegraph is a kind of a very, very long cat. You pull his tail in New York and his head is meowing in Los Angeles. Do you understand this? And radio operates exactly the same way: you send signals here, they receive them there. The only difference is that there is no cat.	2	0
86	One had to cram all this stuff into ones mind for the examinations, whether one liked it or not. This coercion had such a deterring effect on me that, after I had passed the final examination, I found the consideration of any scientific problems distasteful to me for an entire year.	2	0
87	...one of the strongest motives that lead men to art and science is escape from everyday life with its painful crudity and hopeless dreariness, from the fetters of ones own ever-shifting desires. A finely tempered nature longs to escape from the personal life into the world of objective perception and thought.	2	0
88	He who joyfully marches to music rank and file, has already earned my contempt. He has been given a large brain by mistake, since for him the spinal cord would surely suffice. This disgrace to civilization should be done away with at once. Heroism at command, how violently I hate all this, how despicable and ignoble war is; I would rather be torn to shreds than be a part of so base an action. It is my conviction that killing under the cloak of war is nothing but an act of murder.	2	0
89	A real decision is measured by the fact that you\\ve taken a new action. If theres no action, you haven\\t truly decided.	3	0
90	Beliefs have the power to create and the power to destroy. Human beings have the awesome ability to take any experience of their lives and create a meaning that disempowers them or one that can literally save their lives.	3	0
91	Commit to CANI! - Constant And Never-ending Improvement	3	0
92	For changes to be of any true value, they\\ve got to be lasting and consistent.	3	0
93	I challenge you to make your life a masterpiece. I challenge you to join the ranks of those people who live what they teach, who walk their talk.	3	0
94	I\\ve come to believe that all my past failure and frustration were actually laying the foundation for the understandings that have created the new level of living I now enjoy.	3	0
95	If you do what you\\ve always done, you\\ll get what you\\ve always gotten.	3	0
96	In essence, if we want to direct our lives, we must take control of our consistent actions. Its not what we do once in a while that shapes our lives, but what we do consistently.	3	0
97	In life you need either inspiration or desperation.	3	0
98	It is in your moments of decision that your destiny is shaped.	3	0
99	It is not what we get. But who we become, what we contribute... that gives meaning to our lives.	3	0
100	It not knowing what to do, its doing what you know.	3	0
101	Its not the events of our lives that shape us, but our beliefs as to what those events mean.	3	0
102	Life is a gift, and it offers us the privilege, opportunity, and responsibility to give something back by becoming more.	3	0
103	Live with passion!	3	0
104	Most people have no idea of the giant capacity we can immediately command when we focus all of our resources on mastering a single area of our lives.	3	0
105	My definition of success is to live your life in a way that causes you to feel a ton of pleasure and very little pain - and because of your lifestyle, have the people around you feel a lot more pleasure than they do pain.	3	0
301	If you cannot do great things, do small things in a great way.	11	0
106	Once you have mastered time, you will understand how true it is that most people overestimate what they can accomplish in a year - and underestimate what they can achieve in a decade!	3	0
107	One reason so few of us achieve what we truly want is that we never direct our focus; we never concentrate our power. Most people dabble their way through life, never deciding to master anything in particular.	3	0
108	Only those who have learned the power of sincere and selfless contribution experience lifes deepest joy: true fulfillment.	3	0
109	Passion is the genesis of genius.	3	0
110	People are not lazy. They simply have impotent goals - that is, goals that do not inspire them.	3	0
111	Setting goals is the first step in turning the invisible into the visible.	3	0
112	Success comes from taking the initiative and following up... persisting... eloquently expressing the depth of your love. What simple action could you take today to produce a new momentum toward success in your life?	3	0
113	Surmounting difficulty is the crucible that forms character.	3	0
114	Take control of your consistent emotions and begin to consciously and deliberately reshape your daily experience of life.	3	0
115	The higher your energy level, the more efficient your body The more efficient your body, the better you feel and the more you will use your talent to produce outstanding results.	3	0
116	The meeting of preparation with opportunity generates the offspring we call luck.	3	0
117	The path to success is to take massive, determined action.	3	0
118	The secret of success is learning how to use pain and pleasure instead of having pain and pleasure use you. If you do that, you\\re in control of your life. If you don\\t, life controls you.	3	0
119	The truth is that we can learn to condition our minds, bodies, and emotions to link pain or pleasure to whatever we choose. By changing what we link pain and pleasure to, we will instantly change our behaviors.	3	0
120	The way we communicate with others and with ourselves ultimately determines the quality of our lives.	3	0
121	There is no greatness without a passion to be great, whether its the aspiration of an athlete or an artist, a scientist, a parent, or a businessperson.	3	0
122	There is no such thing as failure. There are only results.	3	0
123	Theres always a way - if you\\re committed.	3	0
124	Theres no abiding success without commitment. we perceive the world and use this understanding as a guide to our communication with others.	3	0
125	Want to learn to eat a lot? Here it is: Eat a little. That way, you will be around long enough to eat a lot.	3	0
126	We are the only beings on the planet who lead such rich internal lives that its not the events that matter most to us, but rather, its how we interpret those events that will determine how we think about ourselves and how we will act in the future.	3	0
127	We aren\\t in an information age, we are in an entertainment age.	3	0
128	We can change our lives. We can do, have, and be exactly what we wish.	3	0
129	We will act consistently with our view of who we truly are, whether that view is accurate or not.	3	0
130	What we can or cannot do, what we consider possible or impossible, is rarely a function of our true capability. It is more likely a function of our beliefs about who we are.	3	0
131	Whatever happens, take responsibility!	3	0
132	When people are like each other they tend to like each other.	3	0
133	You always succeed in producing a result.	3	0
134	You see, in life, lots of people know what to do, but few people actually do what they know. Knowing is not enough! You must take action.	3	0
135	You see, its never the environment; its never the events of our lives, but the meaning we attach to the events - how we interpret them - that shapes who we are today and who we\\ll become tomorrow.	3	0
136	The more credit you give away, the more will come back to you. The more you help others, the more they will want to help you.	4	0
137	Relationships are the hallmark of the mature person.	4	0
138	Only by contending with challenges that seem to be beyond your strength to handle at the moment you can grow more surely toward the stars.	4	0
139	Never say anything about yourself you do not want to come true.	4	0
140	The person we believe ourselves to be will always act in a manner consistent with our self-image.	4	0
141	Teamwork is so important that it is virtually impossible for you to reach the heights of your capabilities or make the money that you want without becoming very good at it.	4	0
142	We feel good about ourselves to the exact degree we feel in control of our lives.	4	0
143	The potential of the average person is like a huge ocean unsailed, a new continent unexplored, a world of possibilities waiting to be released and channeled toward some great good.	4	0
144	You have available to you, right now, a powerful supercomputer. This powerful tool has been used through-out history to take people from rags to riches, from poverty and obscurity to success and fame, from unhappiness and frustration to joy and self-fulfillment, and it can do the same for you.	4	0
145	You have within you right now, everything you need to deal with whatever the world can throw at you.	4	0
146	Success is predictable.	4	0
147	If you can\\t sleep, then get up and do something instead of lying there and worrying. Its the worry that gets you, not the loss of sleep.	5	0
148	Are you bored with life? Then throw yourself into some work you believe in with all your heart, live for it, die for it, and you will find happiness that you had thought could never be yours.	5	0
149	If you want to win friends, make it a point to remember them. If you remember my name, you pay me a subtle compliment; you indicate that I have made an impression on you. Remember my name and you add to my feeling of importance.	5	0
150	Take a chance! All life is a chance. The man who goes the furthest is generally the one who is willing to do and dare.	5	0
151	Don\\t be afraid to give your best to what seemingly are small jobs. Every time you conquer one it makes you that much stronger. If you do the little jobs well, the big ones tend to take care of themselves.	5	0
152	If you believe in what you are doing, then let nothing hold you up in your work. Much of the best work of the world has been done against seeming impossibilities. The thing is to get the work done.	5	0
153	It isn\\t what you have, or who you are, or where you are, or what you are doing that makes you happy or unhappy. It is what you think about.	5	0
154	The ideas I stand for are not mine. I borrowed them from Socrates. I swiped them from Chesterfield. I stole them from Jesus. And I put them in a book. If you don\\t like their rules whose would you use?	5	0
155	One of the most tragic things I know about human nature is that all of us tend to put off living. We are all dreaming of some magical rose garden over the horizon- instead of enjoying the roses blooming outside our windows today.	5	0
156	 ANY fool can criticize,\n    condemn,\n    AND complain -- and most fools do.	5	0
157	Most of the important things in the world have been accomplished by people who have kept on trying when there seemed to be no help at all.	5	0
158	You can make more friends in two months by becoming interested in other people than you can in two years by trying to get other people interested in you.	5	0
159	Remember happiness doesn\\t depend on who you are or what you have; it depends solely upon what you think.	5	0
160	The man who goes farthest is generally the one who is willing to do and dare. The sure-thing boat never gets far from shore.	5	0
161	 Success IS getting what you want.Happiness IS wanting what you GET.	5	0
162	 Those convinced AGAINST their will are of the same opinion still.	5	0
163	 I deal WITH the obvious.I present,\n    reiterate AND glorify the obvious -- because the obvious is what people need to be told.	5	0
164	The royal road to a mans heart is to talk to him about the things he treasures most.	5	0
165	There are four ways, and only four ways, in which we have contact with the world. We are evaluated and classified by these four contacts: what we do, how we look, what we say, and how we say it.	5	0
166	Your purpose is to make your audience see what you saw, hear what you heard, feel what you felt. Relevant detail, couched in concrete, colorful language, is the best way to recreate the incident as it happened and to picture it for the audience.	5	0
167	Flaming enthusiasm, backed up by horse sense and persistence, is the quality that most frequently makes for success.	5	0
168	If you want to be enthusiastic, act enthusiastic.	5	0
169	There is only one way... to get anybody to do anything. And that is by making the other person want to do it.	5	0
170	When fate hands us a lemon, lets try to make a lemonade.	5	0
171	The successful man will profit from his mistakes and try again in a different way.	5	0
172	Mistakes are painful when they happen, but years later a collection of mistakes is what is called experience.	6	0
173	If you believe you can, you probably can. If you believe you won\\t, you most assuredly won\\t. Belief is the ignition switch that gets you off the launching pad.	6	0
174	Forget about the consequences of failure. Failure is only a temporary change in direction to set you straight for your next success.	6	0
175	As long as we are persistence in our pursuit of our deepest destiny, we will continue to grow. We cannot choose the day or time when we will fully bloom. It happens in its own time.	6	0
176	Don\\t dwell on what went wrong. Instead, focus on what to do next. Spend your energies on moving forward toward finding the answer.	6	0
177	Expect the best, plan for the worst, and prepare to be surprised.	6	0
178	You must learn from your past mistakes, but not lean on your past successes.	6	0
179	Our limitations and success will be based, most often, on your own expectations for ourselves. What the mind dwells upon, the body acts upon.	6	0
180	The reason most people never reach their goals is that they don\\t define them, learn about them, or even seriously consider them as believable or achievable. Winners can tell you where they are going, what they plan to do along the way, and who will be sharing the adventure with them.	6	0
181	To establish true self-esteem we must concentrate on our successes and forget about the failures and the negatives in our lives.	6	0
182	Failure should be our teacher, not our undertaker. Failure is delay, not defeat. It is a temporary detour, not a dead end. Failure is something we can avoid only by saying nothing, doing nothing, and being nothing.	6	0
183	Its not what you are that holds you back, its what you think you are not.	6	0
184	Where there is life, there is hope. Where there are hopes, there are dreams. Where there are vivid dreams repeated, they become goals. Goals become the action plans and game plans that winners dwell on in intricate detail, knowing that achievement is almost automatic when the goal becomes an inner commitment. The response to the challenges of life -- purpose -- is the healing balm that enables each of us to face up to adversity and strife.	6	0
185	When you make a mistake or get ridiculed or rejected, look at mistakes as learning experiences, and ridicule as ignorance. . . . Look at rejection as part of one performance, not as a turn down of the performer.	6	0
186	Luck happens when opportunity encounters the prepared mind.	6	0
187	You must consider the bottom line, but make it integrity before profits.	6	0
188	Losers make promises they often break. Winners make commitments they always keep.	6	0
189	A life lived with integrity -- even if it lacks the trappings of fame and fortune is a shinning star in whose light others may follow in the years to come.	6	0
190	No man or woman is an island. To exist just for yourself is meaningless. You can achieve the most satisfaction when you feel related to some greater purpose in life, something greater than yourself.	6	0
191	Procrastination is the fear of success. People procrastinate because they are afraid of the success that they know will result if they move ahead now. Because success is heavy, carries a responsibility with it, it is much easier to procrastinate and live on the someday I\\ll philosophy.	6	0
192	Get excited and enthusiastic about you own dream. This excitement is like a forest fire -- you can smell it, taste it, and see it from a mile away.	6	0
193	Life is not accountable to us. We are accountable to life.	6	0
194	We have got to have a dream if we are going to make a dream come true.	6	0
195	Out of need springs desire, and out of desire springs the energy and the will to win.	6	0
196	Life is a do-it yourself project.	6	0
300	All great truths are simple in final analysis, and easily understood; if they are not, they are not great truths.	11	0
197	Life is the movie you see through your own eyes. It makes little difference whats happening out there. Its how you take it that counts.	6	0
198	Winners take time to relish their work, knowing that scaling the mountain is what makes the view from the top so exhilarating.	6	0
199	Happiness cannot be traveled to, owned, earned, worn or consumed. Happiness is the spiritual experience of living every minute with love, grace and gratitude.	6	0
200	The greatest gifts you can give your children are the roots of responsibility and the wings of independence.	6	0
201	Love is a daily, mutual exchange of value.	6	0
202	A smile is the light in your window that tells others that there is a caring, sharing person inside.	6	0
203	Time is an equal opportunity employer. Each human being has exactly the same number of hours and minutes every day. Rich people can\\t buy more hours. Scientists can\\t invent new minutes. And you can\\t save time to spend it on another day. Even so, time is amazingly fair and forgiving. No matter how much time you\\ve wasted in the past, you still have an entire tomorrow.	6	0
204	I try to learn from the past, but I plan for the future by focusing exclusively on the present. Thats were the fun is.	7	0
205	The point is that you can\\t be too greedy.	7	0
206	A little more moderation would be good. Of course, my life hasn\\t exactly been one of moderation.	7	0
207	Sometimes by losing a battle you find a new way to win the war.	7	0
208	I try to learn from the past, but I plan for the future by focusing exclusively on the present. Thats were the fun is. -Donald Trump.	7	0
209	Part of being a winner is knowing when enough is enough. Sometimes you have to give up the fight and walk away, and move on to something thats more productive.	7	0
210	I\\m a bit of a P. T. Barnum. I make stars out of everyone.	7	0
211	Experience taught me a few things. One is to listen to your gut, no matter how good something sounds on paper. The second is that you\\re generally better off sticking with what you know. And the third is that sometimes your best investments are the ones you don\\t make.	7	0
212	You have to think anyway, so why not think big?	7	0
213	Deals are my art form. Other people paint beautifully on canvas or write wonderful poetry. I like making deals, preferably big deals. Thats how I get my kicks.	7	0
214	Money was never a big motivation for me, except as a way to keep score. The real excitement is playing the game.	7	0
215	You become what you think about.	8	0
216	Our attitude toward life determines lifes attitude towards us.	8	0
217	People with goals succeed because they know where they\\re going.	8	0
218	Success is the progressive realization of a worthy goal or ideal	8	0
219	Open your ears before you open your mouth, it may surprise your eyes!	8	0
220	Am I motivated by what I really want out of life  or am I mass-motivated?	8	0
221	Your world is a living expression of how you are using and have used your mind	8	0
222	We can let circumstances rule us, or we can take charge and rule our lives from within	8	0
223	All you need is the plan, the road map, and the courage to press on to your destination	8	0
224	We can help others in the world more by making the most of yourself than in any other way.	8	0
225	Whenever we\\re afraid, its because we don\\t know enough. If we understood enough, we would never be afraid.	8	0
226	Whatever we plant in our subconscious mind and nourish with repetition and emotion will one day become a reality	8	0
227	People are where they are because thats exactly where they really want to be ... whether they\\ll admit that or not	8	0
228	Wherever there is danger, there lurks opportunity; whenever there is opportunity, there lurks danger. The two are inseparable. They go together.	8	0
229	A great attitude does much more than turn on the lights in our worlds; it seems to magically connect us to all sorts of serendipitous opportunities that were somehow absent before the change.	8	0
230	Spoken about Earl Nightingale by Steve King, radio announcer and good friend: Earl Nightingale never let a day go by that he didn\\t learn something new and, in turn pass it on to others. It was his consuming passion.	8	0
231	We are at our very best, and we are happiest, when we are fully engaged in work we enjoy on the journey toward the goal we\\ve established for ourselves. It gives meaning to our time off and comfort to our sleep. It makes everything else in life so wonderful, so worthwhile.	8	0
232	For a person to build a rich and rewarding life for himself there are certain qualities and bits of knowledge that he needs to acquire. There are also things, harmful attitudes, superstitions, and emotions that he needs to chip away. A person needs to chip away everything that doesn\\t look like the person he or she most wants to become.	8	0
233	We tend to live up to our expectations.	8	0
234	You\\ll find boredom where there is an absence of a good idea.	8	0
235	Creativity is a natural extension of our enthusiasm.	8	0
236	Everything in the world we want to do or get done, we must do with and through people.	8	0
237	Get into a line that you will find to be a deep personal interest, something you really enjoy spending twelve to fifteen hours a day working at, and the rest of the time thinking about.	8	0
238	Learn to enjoy every minute of your life. Be happy now. Don\\t wait for something outside of yourself to make you happy in the future. Think how really precious is the time you have to spend, whether its at work or with your family. Every minute should be enjoyed and savored.	8	0
239	Our first journey is to find that special place for us.	8	0
240	It doesn\\t matter which side of the fence you get off on sometimes. What matters most is getting off. You cannot make progress without making decisions.	9	0
241	Whoever renders service to many puts himself in line for greatness--great wealth, great return, great satisfaction, great reputation, and great joy.	9	0
242	For every disciplined effort there is a multiple reward.	9	0
243	Formal education will make you a living; self-education will make you a fortune.	9	0
244	Give whatever you are doing and whoever you are with the gift of your attention.	9	0
245	Words do two major things: They provide food for the mind and create light for understanding and awareness.	9	0
246	The worst thing one can do is not to try, to be aware of what one wants and not give in to it, to spend years in silent hurt wondering if something could have materialized--never knowing.	9	0
247	The major reason for setting a goal is for what it makes of you to accomplish it. What it makes of you will always be the far greater value than what you get.	9	0
248	To solve any problem, here are three questions to ask yourself: First, what could I do? Second, what could I read? And third, who could I ask?	9	0
249	Formal education will make you a living, self education will make you a fortune.	9	0
250	Discipline is the bridge between goals and accomplishment.	9	0
251	The book you don\\t read cant help.	9	0
252	Success is neither magical or mysterious. Success is the natural consequence of consistently applying the basic fundamentals.	9	0
253	Success is nothing more than a few simple disciplines, practiced every day...	9	0
254	Success is not to be pursued; it is to be attracted by the person you become.	9	0
255	Either you run the day or the day runs you.	9	0
256	Whatever good things we build end up building us.	9	0
257	We must all suffer one of two things: the pain of discipline or the pain of regret or disappointment.	9	0
258	Take advantage of every opportunity to practice your communication skills so that when important occasions arise, you will have the gift, the style, the sharpness, the clarity, and the emotions to affect other people.	9	0
259	Effective communication is 20% what you know and 80% how you feel about what you know.	9	0
260	Some people plant in the spring and leave in the summer. If you\\re signed up for a season, see it through. You don\\t have to stay forever, but at least stay until you see it through.	9	0
261	Take care of your body. Its the only place you have to live.	9	0
262	Don\\t wish it were easier, wish you were better.	9	0
263	You must take personal responsibility. You cannot change the circumstances, the seasons, or the wind, but you can change yourself. That is something you have charge of.	9	0
264	Don\\t wait until everything is just right. It will never be perfect. There will always be challenges, obstacles and less than perfect conditions. So what. Get started now. With each step you take, you will grow stronger and stronger, more and more skilled, more and more self-confident and more and more successful.	10	0
265	Don\\t think it, ink it.	10	0
266	In imagination, theres no limitation.	10	0
267	When your self-worth goes up, your net worth goes up with it.	10	0
268	True or true? Yes or yes?.	10	0
269	Imitate until you emulate; match and surpass those who launched you. Its the highest form of thankfulness.	10	0
270	Now is the only time there is. Make your now wow, your minutes miracles, and your days pay. Your life will have been magnificently lived and invested, and when you die you will have made a difference.	10	0
271	End your day by privately looking directly into your eyes in the mirror and saying, \\I love you! Do this for thirty days and watch how you transform.	10	0
272	Your belief determines your action and your action determines your results, but first you have to believe.	10	0
273	The more goals you set - the more goals you get.	10	0
274	Predetermine the objectives you want to accomplish. Think big, act big and set out to accomplish big results.	10	0
275	With vision, every person, organization and country can flourish. The Bible says, \\Without vision we perish\\.	10	0
276	Whatever you need more of is what you need to tithe some.	10	0
277	The best job goes to the person who can get it done without passing the buck or coming back with excuses.	11	0
278	Do not wait; the time will never be just RIGHT. Start where you stand, and work with whatever tools you may have at your command, and better tools will be found as you go along.	11	0
279	It is always your next move.	11	0
280	No one can make you jealous, angry, vengeful, or greedy -- unless you let him.	11	0
281	The battle is all over except the shouting when one knows what is wanted and has made up his mind to get it, whatever the price may be.	11	0
282	The starting point of all achievement is desire. Keep this constantly in mind. Weak desires bring weak results, just as a small amount of fire makes a small amount of heat.	11	0
283	Everyone enjoys doing the kind of work for which he is best suited.	11	0
284	It has always been my belief that a man should do his best, regardless of how much he receives for his services, or the number of people he may be serving or the class of people served.	11	0
285	When defeat comes, accept it as a signal that your plans are not sound, rebuild those plans, and set sail once more toward your coveted goal.	11	0
286	The most common cause of fear of old age is associated with the possibility of poverty.	11	0
287	There is one quality which one must possess to win, and that is definiteness of purpose, the knowledge of what one wants, and a burning desire to possess it.	11	0
288	Ideas... they have the power	11	0
289	First comes thought; then organization of that thought, into ideas and plans; then transformation of those plans into reality. The beginning, as you will observe, is in your imagination.	11	0
290	There is always room for those who can be relied upon to delivery the goods when they say they will.	11	0
291	Just as our eyes need light in order to see, our minds need ideas in order to conceive.	11	0
292	Money without brains is always dangerous.	11	0
293	War grows out of the desire of the individual to gain advantage at the expense of his fellow men.	11	0
294	Persistence is to the character of man as carbon is to steel.	11	0
295	Reduce your plan to writing. The moment you complete this, you will have definitely given concrete form to the intangible desire.	11	0
296	Don\\t wait. The time will never be just right.	11	0
297	Think and grow rich.	11	0
298	Every person who wins in any undertaking must be willing to cut all sources of retreat. Only by doing so can one be sure of maintaining that state of mind known as a burning desire to win -- essential to success.	11	0
299	The ladder of success is never crowded at the top.	11	0
302	No man can succeed in a line of endeavor which he does not like.	11	0
303	What we do not see, what most of us never suspect of existing, is the silent but irresistible power which comes to the rescue of those who fight on in the face of discouragement.	11	0
304	The majority of men meet with failure because of their lack of persistence in creating new plans to take the place of those which fail.	11	0
305	The most interesting thing about a postage stamp is the persistence with which it sticks to its job.	11	0
307	Strength and growth come only through continuous effort and struggle...	11	0
308	It is literally true that you can succeed best and quickest by helping others to succeed.	11	0
309	No alibi will save you from accepting the responsibility.	11	0
310	You might well remember that nothing can bring you success but yourself.	11	0
311	Indecision is the seedling of fear.	11	0
312	Procrastination is the bad habit of putting of until the day after tomorrow what should have been done the day before yesterday.	11	0
313	Big pay and little responsibility are circumstances seldom found together.	11	0
314	Empty pockets never held anyone back. Only empty heads and empty hearts can do that.	12	0
315	Live your life and forget your age.	12	0
316	When you become detached mentally from yourself and concentrate on helping other people with their difficulties, you will be able to cope with your own more effectively. Somehow, the act of self-giving is a personal power-releasing factor.	12	0
317	There is a real magic in enthusiasm. It spells the difference between mediocrity and accomplishment.	12	0
318	One of the greatest moments in anybodys developing experience is when he no longer tries to hide from himself but determines to get acquainted with himself as he really is.	12	0
319	Stand up to your obstacles and do something about them. You will find that they haven\\t half the strength you think they have.	12	0
320	Become a possibilitarian. No matter how dark things seem to be or actually are, raise your sights and see possibilities -- always see them, for they\\re always there.	12	0
321	Every problem has in it the seeds of its own solution. If you don\\t have any problems, you don\\t get any seeds.	12	0
322	It is of practical value to learn to like yourself. Since you must spend so much time with yourself you might as well get some satisfaction out of the relationship.	12	0
323	We struggle with the complexities and avoid the simplicities.	12	0
324	In every difficult situation is potential value. Believe this, then begin looking for it.	12	0
325	The more you lose yourself in something bigger than yourself, the more energy you will have.	12	0
326	Resentment or grudges do no harm to the person against whom you hold these feelings but every day and every night of your life, they are eating at you.	12	0
327	When a problem comes along, study it until you are completely knowledgeable. Then find that weak spot, break the problem apart, and the rest will be easy.	12	0
328	Understanding can overcome any situation, however mysterious or insurmountable it may appear to be.	12	0
329	The mind, ever the willing servant, will respond to boldness, for boldness, in effect, is a command to deliver mental resources.	12	0
330	Enthusiasm releases the drive to carry you over obstacles and adds significance to all you do.	12	0
331	Its always too soon to quit!	12	0
332	Cushion the painful effects of hard blows by keeping the enthusiasm going strong, even if doing so requires struggle.	12	0
333	Our happiness depends on the habit of mind we cultivate. So practice happy thinking every day. Cultivate the merry heart, develop the happiness habit, and life will become a continual feast.	12	0
334	Lifes blows cannot break a person whose spirit is warmed at the fire of enthusiasm.	12	0
335	You can be greater than anything that can happen to you.	12	0
336	One way to become enthusiastic is to look for the plus sign. To make progress in any difficult situation, you have to start with whats right about it and build on that.	12	0
337	When you wholeheartedly adopt a \\with all your heart attitude and go all out with the positive principle, you can do incredible things.	12	0
338	Watch your manner of speech if you wish to develop a peaceful state of mind. Start each day by affirming peaceful, contented and happy attitudes and your days will tend to be pleasant and successful.	12	0
339	To go fast, row slowly.	12	0
340	Anybody can do just about anything with himself that he really wants to and makes up his mind to do. We are all capable of greater things than we realize.	12	0
341	Go forward confidently, energetically attacking problems, expecting favorable outcomes.	12	0
342	Yesterday ended last night. Every day is a new beginning. Learn the skill of forgetting. And move on.	12	0
343	Believe it is possible to solve your problem. Tremendous things happen to the believer. So believe the answer will come. It will.	12	0
344	The way to happiness: keep your heart free from hate, your mind from worry. Live simply, expect little, give much. Fill your life with love. Scatter sunshine. Forget self, think of others. Do as you would be done by. Try this for a week and you will be surprised.	12	0
345	The positive thinker is a hard-headed, tough-minded, and factual realist. He sees all the difficulties clearly... which is more than can be said for the average negative thinker. But he sees more than difficulties -- he tries to see the solutions of those difficulties.	12	0
346	Practice loving people. It is true that this requires effort and continued practice, for some are not very lovable, or so it seems - with emphasis on ' seems.' Every person has lovable qualities when you really learn to know him.	12	0
347	Never react emotionally to criticism. Analyze yourself to determine whether it is justified. If it is, correct yourself. Otherwise, go on about your business.	12	0
348	When you are afraid, do the thing you are afraid of and soon you will lose your fear of it.	12	0
349	The more you venture to live greatly, the more you will find within you what it takes to get on top of things and stay there.	12	0
350	If you want things to be different, perhaps the answer is to become different yourself.	12	0
351	Remember, there is no situation so completely hopeless that something constructive cannot be done about it. When faced with a minus, ask yourself what you can do to make it a plus. A person practicing this attitude will extract undreamed-of outcomes from the most unpromising situations. Realize that there are no hopeless situations; there are only people who take hopeless attitudes.	12	0
352	Believe that you are bigger than your difficulties, for you are, indeed.	12	0
353	No matter how dark things seem to be or actually are, raise your sights and see the possibilities -- they\\re always there.	12	0
354	You know when you\\ve read a good book when you turn the last page and feel a little as if you have lost a friend.	13	0
355	True success is overcoming the fear of being unsuccessful.	13	0
356	A wedding anniversary is the celebration of love, trust, partnership, tolerance, and tenacity. The order varies for any given year.	13	0
358	How can a society that exists on instant mashed potatoes, packaged cake mixes, frozen dinners, and instant cameras teach patience to its young?	13	0
359	How often we fail to realize our good fortune in living in a country where happiness is more than a lack of tragedy.	13	0
360	Self delusion is pulling in your stomach when you step on the scales.	13	0
361	A hero is no braver than an ordinary man, but he is braver five minutes longer.	14	0
362	Beware when the great God lets loose a thinker on this planet.	14	0
363	Character is higher than intellect... A great soul will be strong to live, as well as to think.	14	0
364	Children are all foreigners.	14	0
365	Conversation is an art in which a man has all mankind for his competitors, for it is that which all are practicing every day while they live.	14	0
366	Do not be too timid and squeamish about your actions. All life is an experiment.	14	0
367	Do not go where the path may lead, go instead where there is no path and leave a trail.	14	0
368	Don\\t be too timid and squeamish about your actions. All life is an experiment. The more experiments you make the better.	14	0
369	Don\\t waste yourself in rejection, nor bark against the bad, but chant the beauty of the good.	14	0
370	Every hero becomes a bore at last.	14	0
371	Finish each day and be done with it. You have done what you could. Some blunders and absurdities no doubt crept in; forget them as soon as you can. Tomorrow is a new day; begin it well and serenely and with too high a spirit to be cumbered with your old nonsense.	14	0
372	Give all to love; obey thy heart.	14	0
373	I awoke this morning with devout thanksgiving for my friends, the old and the new.	14	0
374	I pack my trunk, embrace my friends, embark on the sea, and at last wake up in Naples, and there beside me is the Stern Fact, the Sad Self, unrelenting, identical, that I fled from.	14	0
375	If I have lost confidence in myself, I have the universe against me.	14	0
376	Insist on yourself; never imitate... Every great man is unique.	14	0
377	Let not a man guard his dignity, but let his dignity guard him.	14	0
378	Live in the sunshine, swim the sea, drink the wild air	14	0
379	Make the most of yourself, for that is all there is of you.	14	0
380	Nature magically suits a man to his fortunes, by making them the fruit of his character.	14	0
381	Nothing can bring you peace but yourself.	14	0
382	Nothing is at last sacred but the integrity of your own mind.	14	0
383	People seem not to see that their opinion of the world is also a confession of their character.	14	0
384	Speak what you think today in words as hard as cannon-balls and tomorrow speak what tomorrow thinks in hard words again, though it contradict every thing you said today.	14	0
385	The ancestor of every action is a thought.	14	0
386	The only way to have a friend is to be one.	14	0
387	The ornament of a house is the friends who frequent it.	14	0
388	The world belongs to the energetic.	14	0
389	We do what we must, and call it by the best names.	14	0
390	Whoever is open, loyal, true; of humane and affable demeanour; honourable himself, and in his judgement of others; faithful to his word as to law, and faithful alike to God and man....such a man is a true gentleman.	14	0
391	Nothing astonishes men so much as common sense and plain dealing.	14	0
392	He who is in love is wise and is becoming wiser, sees newly every time he looks at the object beloved, drawing from it with his eyes and his mind those virtues which it possesses.	14	0
393	Trust men and they will be true to you; treat them greatly, and they will show themselves great.	14	0
394	The best effect of fine persons is felt after we have left their presence.	14	0
395	Every artist was first an amateur.	14	0
396	None of us will every accomplish anything excellent or commanding except when he listens to this whisper which is heard by him alone.	14	0
397	A man builds a fine house; and now he has a master, and a task for life; he is to furnish, watch, show it, and keep it in repair, the rest of his days.	14	0
398	The reward of a thing well done is to have done it.	14	0
399	Commit yourself to a dream nobody who tries to do something great but fails is a total failure. Why? Because he can always rest assured that he succeeded in lifes most important battle -- he defeated the fear of trying.	15	0
400	Yes, you can be a dreamer and a doer too, if you will remove one word from your vocabulary: impossible.	15	0
401	You can often measure a person by the size of his dream.	15	0
402	Build a dream and the dream will build you.	15	0
403	Always look at what you have left. Never look at what you have lost.	15	0
404	Commit yourself to a dream... Nobody who tries to do something great but fails is a total failure. Why? Because he can always rest assured that he succeeded in lifes most important battle--he defeated the fear of trying.	15	0
405	If you listen to your fears, you will die never knowing what a great person you might have been.	15	0
406	Impossible situations can become possible miracles.	15	0
407	It takes but one positive thought when given a chance to survive and thrive to overpower an entire army of negative thoughts.	15	0
408	Let your imagination release your imprisoned possibilities.	15	0
409	Every achiever I have ever met says, ' My life turned around WHEN I began TO believe IN me.'	15	0
410	 Anyone can COUNT the seeds IN an apple,\n    but ONLY God can COUNT the NUMBER of apples IN a seed.	15	0
411	 Most people who succeed n the face of seemingly impossible conditions are people who simply don  t know how TO quit.	15	0
412	 Life IS but a moment,\n    death also IS but another.	15	0
413	 Better TO\nDO\n    something imperfectly THAN TO\nDO\n    nothing flawlessly.	15	0
414	 Again AND again,\n    the impossible problem IS solved WHEN we see that the problem IS ONLY a tough decision waiting TO be made.	15	0
415	 What great thing would you attempt IF you knew you could NOT fail ? 	15	0
416	 The ONLY place\nWHERE\n    your dream becomes impossible IS IN your own thinking.	15	0
417	 NEVER cut a tree down IN the wintertime.NEVER make a negative decision IN the low TIME.	15	0
418	 What would you attempt TO\nDO\n    IF you knew you could NOT fail ? 	15	0
419	 Failure doesn  t mean you are a failure...it just means you haven  t succeeded yet.	15	0
420	 Goals are NOT ONLY absolutely necessary TO motivate us.They are essential TO really keep us alive.	15	0
421	 Inch BY inch,\n    it  s a cinch.	15	0
422	 WHEN you can  t solve the problem,\n    manage it.	15	0
423	 NEVER bring the problem solving stage\nINTO the decision making stage.Otherwise,\nyou surrender yourself TO the problem rather THAN the solution.	15	0
424	 Problems are NOT STOP signs,\nthey are guidelines.	15	0
425	 Doomed are the hotheads ! Unhappy are they who lose their cool AND are too proud TO say,\n   I  m sorry.    	15	0
426	 Let your hopes,\nNOT your hurts,\nshape your future.	15	0
427	 Possibilitizing IS overcoming WHILE you  re undergoing.	15	0
428	 ALWAYS look AT what you have LEFT.NEVER look AT what you have lost.	15	0
429	 Failure defeats losers,\nfailure inspires winners.	16	0
430	 Your most expensive advice IS the free advice you receive\nFROM\n    your financially struggling friends AND relatives.	16	0
431	 Average investors are\nON\n    the outside trying TO look\nINTO the inside of the company OR property they are investing IN.	16	0
432	 It  s the investor who IS risky,\nNOT the investment.	16	0
433	 The idea of working ALL your life,\nsaving,\nAND putting money\nINTO a retirement ACCOUNT IS a very SLOW plan.	16	0
434	 IF you don  t FIRST handle fear AND desire,\nAND you GET rich,\nyou  ll be a high pay SLAVE.	16	0
435	 TO gain more abundance a person needs more skills AND needs TO be more creative AND cooperative.	16	0
436	 The UNIQUE ability TO take decisive ACTION WHILE maintaining focus\nON\n    the ultimate mission IS what defines a TRUE leader.	16	0
437	 Instead of labeling AND discriminating AGAINST ONE OR the other,\n    we need TO learn TO blend our gifts AND complement our geniuses.	16	0
438	 BY asking the question 'How can I afford it?' your brain IS put TO WORK.	16	0
439	 ONE of the main reasons people are NOT rich IS that they worry too much about things that might NEVER happen.	16	0
440	 Genius IS ONE per cent inspiration AND ninety - nine per cent perspiration.Accordingly,\n    a  genius   IS often merely a talented person who has done ALL of his OR her homework.	17	0
441	 Opportunity IS missed BY most people because it IS dressed IN overalls AND looks LIKE WORK.	17	0
442	 The FIRST requisite FOR success IS TO develop the ability TO focus AND apply your mental AND physical energies TO the problem AT hand - WITHOUT growing weary.Because such thinking IS often difficult,\n    there seems TO be NO\nLIMIT TO which SOME people will go TO avoid the effort AND labor that IS associated WITH it....	17	0
443	 I NEVER did anything worth doing entirely BY accident....Almost NONE of my inventions came about totally BY accident.They were achieved BY\nHAVING\n    trained myself TO endure AND tolerate hard WORK.	17	0
444	 Personally,\n    I enjoy working about 18 hours a DAY.Besides the short catnaps I take EACH DAY,\n    I average about four TO five hours of SLEEP per night.	17	0
445	 My main purpose IN life IS TO make money so I can afford TO go\nON\n    creating more inventions....	17	0
446	 My principal business IS giving commercial\nVALUE TO\n    the brilliant - but misdirected - ideas of others....	17	0
447	 I am quite correctly described AS  more of a sponge THAN an inventor....  	17	0
448	 Because I readily absorb ideas\nFROM EVERY SOURCE\n    - frequently STARTING\nWHERE\n    the LAST person LEFT off - I NEVER pick up an item WITHOUT thinking of how I might improve it.	17	0
449	 I am NOT overly impressed BY the great NAMES AND reputations of those who might be trying TO beat me TO an invention....Its their  ideas   that appeal TO me.	17	0
450	 Because ideas have TO be original ONLY WITH regard TO their adaptation TO the problem AT hand,\n    I am ALWAYS extremely interested IN how others have used used them....	17	0
451	 A good idea IS NEVER lost.Even though its originator OR possessor may die,\n    it will someday be reborn IN the mind of another....	17	0
452	 I NEVER perfected an invention that I did NOT think about IN terms of the service it might give others...I find OUT what the world needs,\n    THEN I proceed TO invent....	17	0
453	 The dove IS my emblem....I want TO save AND advance human life,\n    NOT destroy it....I am proud of the fact that I NEVER invented weapons TO KILL....	17	0
454	 Most of the exercise I GET IS\nFROM\n    standing AND walking around laboratory TABLES ALL DAY.I derive more benefit AND entertainment\nFROM\n    this THAN SOME of my friends AND competitors GET\nFROM\n    playing games LIKE golf.	17	0
455	 IF we ALL did the things we are really capable of doing,\n    we would literally astound ourselves....	17	0
456	 Our schools AND are NOT teaching students TO think.It IS astonishing how many young people have difficulty IN putting their brains definitely AND systematically TO WORK....	17	0
457	 The three things that are most essential TO achievement are common sense,\n    hard WORK AND stick - TO - it - iv - ness.....	17	0
458	 I have far more respect FOR the person WITH a single idea who gets there THAN FOR the person WITH a thousand ideas who does nothing....	17	0
503	 Determine NEVER TO be idle...It IS wonderful how much may be done IF we are ALWAYS doing.	18	0
459	 Many of life  s failures are experienced BY people who did NOT realize how CLOSE they were TO success WHEN they gave up.	17	0
460	 Pretty much everything will come TO him who hustles WHILE he waits.I believe that restlessness IS discontent,\n    AND discontent IS merely the FIRST necessity of progress.\nSHOW\n    me a thoroughly satisfied man AND I will\nSHOW\n    you a failure.	17	0
461	 Unfortunately,\n    there seems TO be far more opportunity OUT there THAN ability....We should remember that good fortune often happens WHEN opportunity meets WITH preparation.	17	0
462	 Sometimes,\n    ALL you need TO invent something IS a good imagination AND a pile of junk....	17	0
463	 Just because something doesn  t\nDO\n    what you planned it TO\nDO\n    IN the FIRST place doesn  t mean it  s useless....	17	0
464	 Results ? Why,\n    man,\n    I have gotten lots of results ! IF I find 10,\n    000 ways something won  t WORK,\n    I haven  t failed.I am NOT discouraged,\n    because EVERY wrong attempt discarded IS often a step forward....	17	0
465	 Surprises AND reverses can serve AS an incentive FOR great accomplishment.There are NO rules here,\n    we  re just trying TO accomplish something.	17	0
466	 AS a cure FOR worrying,\n    WORK IS far better THAN whiskey.I ALWAYS FOUND that,\n    IF I began TO worry,\n    the best thing I could\nDO\n    was focus upon doing something useful AND THEN WORK very hard AT it.Soon,\n    I would forget what was troubling me.	17	0
467	 Barring serious accidents,\n    IF you are NOT preoccupied WITH worry AND you WORK hard,\n    you can look forward TO a reasonably lengthy existence....Its NOT the hard WORK that kills,\n    its the worrying that kills.	17	0
468	 The ONLY TIME I really become discouraged IS WHEN I think of ALL the things I would LIKE TO\nDO AND\n    the little TIME I have IN which TO\nDO\n    them.	17	0
469	 The thing I lose patience WITH the most IS the clock.Its hands move too FAST.	17	0
470	 TIME IS really the ONLY capital that ANY human being has AND the thing that he can LEAST afford TO waste OR lose...	17	0
471	\nFROM\n    his neck down a man IS worth a couple of dollars a DAY,\nFROM\n    his neck up he IS worth anything that his brain can produce.	17	0
472	 The doctor of the future will give NO medicine,\n    but will interest his patients IN the care of the human body,\n    IN diet,\n    AND IN the cause AND prevention of disease.	17	0
473	 Whatever the mind of man creates,\n    should be controlled BY man  s CHARACTER.	17	0
474	 Even though I am nearly deaf,\n    I seem TO be gifted WITH a kind of INNER hearing which enables me TO detect SOUNDS AND noises which the ordinary person does NOT hear.	17	0
475	 I love great music AND art,\n    but I think  cubist   songs AND paintings are hideous.	17	0
476	 Someday,\n    man will harness the rise AND fall of the tides,\n    imprison the POWER of the sun,\n    AND RELEASE atomic POWER.	17	0
477	 I am BOTH pleased but astonished BY the fact that mankind has NOT yet begun TO\nUSE ALL\n    the means AND devices that are available FOR destruction.I hope that such weapons are NEVER manufactured IN quantity.	17	0
478	 The United States,\n    AND other advanced nations,\n    will someday be able TO produce instruments of death so terrible the world will be IN abject terror of itself AND its ability TO\nEND civilization....Such war - making weapons should be developed - but ONLY FOR purposes of discovery AND experimentation 	17	0
479	 The dove IS my emblem....I want TO save AND advance human life,\nNOT destroy it....I am proud of the fact that I NEVER invented weapons TO KILL...	17	0
480	 TO me,\nthe idea AND expectation that the DAY IS slowly AND surely coming WHEN we will be able TO honestly say we are our brother  s keeper AND NOT his oppressor IS very beautiful.	17	0
481	 UNTIL man duplicates a blade of grass,\nnature can laugh AT his so - called scientific knowledge....	17	0
482	 Its obvious that we don  t know ONE millionth of ONE percent about anything.	17	0
483	 I believe that the science of chemistry alone almost proves the existence of an intelligent creator.	17	0
484	 We have merely scratched the surface of the store of knowledge which will come TO us.I believe that we are NOW,\na - tremble\nON\n    the verge of vast discoveries - discoveries so wondrously important they will upset the present trend of human thought AND START it along completely NEW LINES.	17	0
485	 Be courageous ! Whatever setbacks America has encountered,\n    it has ALWAYS emerged AS a stronger AND more prosperous nation....Be brave AS your fathers BEFORE you.Have faith AND go forward ! 	17	0
486	 IF parents pass enthusiasm along TO their children,\n    they will LEAVE them an estate of incalculable\nVALUE\n    ....	17	0
487	 The MEMORY of my mother will ALWAYS be a blessing TO me....	17	0
488	 Life  s most soothing things are a child  s goodnight AND sweet music....	17	0
489	 Great music AND art are earthly wonders,\n    but I think  cubist   songs AND paintings are hideous.	17	0
490	 Even though I am nearly deaf,\n    I seem TO be gifted WITH a kind of INNER hearing which enables me TO detect SOUNDS AND noises which the ordinary listener does NOT hear.	17	0
491	 I believe that EVERY human mind feels pleasure IN doing good TO another.	18	0
492	 The energy,\n    the faith,\n    the devotion which we bring TO this endeavor will light our country AND ALL who serve it,\n    AND the glow\nFROM\n    that fire can truly light the world.	18	0
493	 The most valuable of ALL talents IS that of NEVER USING two words WHEN ONE will\nDO\n    .	18	0
494	 Merchants have NO country.The mere spot they stand\nON\n    does NOT constitute so strong an attachment AS that\nFROM\n    which they draw their gains.	18	0
495	 A coward IS much more exposed TO quarrels THAN a man of spirit.	18	0
496	 Enlighten the people generally,\n    AND tyranny AND oppressions of body AND mind will vanish LIKE evil spirits AT the dawn of DAY.	18	0
497	 Friendship IS precious,\n    NOT ONLY IN the shade,\n    but IN the sunshine of life.	18	0
498	 It IS my principle that the will of the majority should ALWAYS prevail.	18	0
499	 Peace AND friendship WITH ALL mankind IS our wisest policy,\n    AND I wish we may be permitted TO pursue it.	18	0
500	 WHEN a man assumes a public trust,\n    he should consider himself AS public property.	18	0
501	 The man who fears NO truths has nothing TO fear\nFROM\n    lies.	18	0
502	 Nothing can STOP the man WITH the RIGHT mental attitude\nFROM\n    achieving his goal; nothing\nON\n    earth can\nHELP\n    the man WITH the wrong mental attitude.	18	0
504	\nDO NOT\n    bite AT the bait of pleasure till you know there IS NO hook beneath it.	18	0
505	 I\nDO NOT\n    take a single newspaper,\n    nor READ ONE a MONTH,\n    AND I feel myself infinitely the happier FOR it.	18	0
506	 I  m a great believer IN luck,\n    AND I find the harder I WORK the more I have of it.	18	0
507	 NEVER fear the want of business.A man who qualifies himself well FOR his calling,\n    NEVER fails of employment.	18	0
508	 NEVER spend your money BEFORE you have it.	18	0
509	 NEVER trouble another FOR what you can\nDO FOR\n    yourself.	18	0
510	 Nothing gives ONE person so much advantage over another AS TO remain ALWAYS cool AND unruffled under ALL circumstances.	18	0
511	 The advertisement IS the most truthful part of a newspaper.	18	0
512	 Walking IS the best possible exercise.Habituate yourself TO walk very far.	18	0
513	 Aim FOR the moon.IF you miss,\n    you may hit a star.	19	0
514	 Be careful the environment you choose FOR it will shape you; be careful the friends you choose FOR you will become LIKE them.	19	0
515	 Everyone who achieves success IN a great venture,\n    solves EACH problem AS they came TO it.They helped themselves.AND they were helped through powers known AND UNKNOWN TO them AT the TIME they\nSET OUT\nON\n    their voyage.They keep going regardless of the obstacles they met.	19	0
516	 Have the courage TO say NO.Have the courage TO face the truth.\nDO\n    the RIGHT thing because it IS RIGHT.These are the magic KEYS TO living your life WITH integrity.	19	0
517	 I think there IS something,\n    more important THAN believing: ACTION ! The world IS FULL of dreamers,\n    there aren  t enough who will move ahead AND\nBEGIN\n    TO\n        take concrete steps TO actualize their vision.	19	0
518	 IF there IS something TO gain AND nothing TO lose BY asking,\n        BY ALL means ask ! 	19	0
519	 IF you employed study,\n        thinking,\n        AND planning TIME daily,\n        you could develop AND\n    USE\n        the POWER that can CHANGE the course of your destiny.	19	0
520	 Self - suggestion makes you MASTER of yourself.	19	0
521	 Tell everyone what you want TO\n    DO AND\n        someone will want TO\n    HELP\n        you\n    DO\n        it.	19	0
522	 Thinking will NOT overcome fear but ACTION will.	19	0
523	 Truth will ALWAYS be truth,\n        regardless of lack of understanding,\n        disbelief OR ignorance.	19	0
524	 Try,\n        try,\n        try,\n        AND keep\n    ON\n        trying IS the rule that must be followed TO become an expert IN anything.	19	0
525	 WHEN we direct our thoughts properly,\n        we can control our emotions...	19	0
526	 WHEN you discover your mission,\n        you will feel its demand.It will fill you WITH enthusiasm AND a burning desire TO GET TO WORK\n    ON\n        it.	19	0
527	 WHEN you\n    DO\n        the wrong thing,\n        knowing it IS wrong,\n        you\n    DO\n        so because you haven  t developed the habit of effectively controlling OR neutralizing strong INNER urges that tempt you,\n        OR because you have established the wrong habit AND don  t know how TO eliminate them effectively.	19	0
528	 You affect your subconscious mind BY verbal repetition.	19	0
529	 So many fail because they don  t GET started -- they don\\t go. They don\\t overcome inertia. They don\\t begin.	19	0
530	There is little difference in people, but that little difference makes a big difference. That little difference is attitude. The big difference is whether it is positive or negative.	19	0
531	You are a product of your environment. So choose the environment that will best develop you toward your objective. Analyze your life in terms of its environment. Are the things around you helping you toward success -- or are they holding you back?	19	0
532	You affect your subconscious mind by verbal repetition.	19	0
533	Definiteness of purpose is the starting point of all achievement	19	0
534	Success is achieved and maintained by those who try and keep trying.	19	0
535	We have a problem. \\\\Congratulations.\\ But its a tough problem. \\\\Then double congratulations.\\\\	19	0
536	To solve a problem or to reach a goal, you don\\t need to know all the answers in advance. But you must have a clear idea of the problem or the goal you want to reach.	19	0
537	You. too, can determine what you want. You can decide on your major objectives, targets, aims, and destination.	19	0
538	You are the only person on earth who can use your ability.	20	0
539	When you put faith, hope and love together, you can raise positive kids in a negative world.	20	0
540	There has never been a statue erected to honor a critic.	20	0
541	Failure is a detour, not a dead-end street.	20	0
542	What you get by achieving your goals is not as important as what you become by achieving your goals.	20	0
543	Happiness is not pleasure, it is victory.	20	0
544	Every sale has five basic obstacles: no need, no money, no hurry, no desire, no trust.	20	0
545	Its not what you\\ve got, its what you use that makes a difference.	20	0
546	Success is the maximum utilization of the ability that you have.	20	0
547	Winning is not everything, but the effort to win is.	20	0
548	Efficiency is doing things right. Effectiveness is doing the right thing.	20	0
549	The person who will not stand for something will fall for anything.	20	0
550	You are what you are and you are where you are because of what has gone into your mind. You change what you are and you change where you are by changing what goes into your mind.	20	0
551	Its your attitude not your aptitude that determines your altitude.	20	0
552	You do not pay the price of success, you enjoy the price of success.	20	0
553	The real test in golf and in life is not in keeping out of the rough, but in getting out after you are in.	20	0
554	People often say that motivation doesn\\t last. Well, neither does bathing-thats why we recommend it daily.	20	0
555	All resources are not obvious; great managers find and develop available talent.	20	0
556	A goal properly set is halfway reached.	20	0
557	Success is dependent upon the glands - sweat glands.	20	0
558	Go as far as you can see and when you get there, you will always be able to see farther.	20	0
559	If you want to reach a goal, you must see the reaching in your own mind before you actually arrive at your goal.	20	0
560	Positive thinking will let you do everything better than negative thinking will.	20	0
561	If you can dream it, then you can achieve it. You will get all you want in life if you help enough other people get what they want.	20	0
562	Success means doing the best we can with what we have. Success is the doing, not the getting; in the trying, not the triumph. Success is a personal standard, reaching for the highest that is in us, becoming all that we can be.	20	0
563	The most important persuasion tool you have in your entire arsenal is integrity.	20	0
564	Expect the best. Prepare for the worst. Capitalize on what comes.	20	0
\.


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: watsnav
--

SELECT pg_catalog.setval('public.authors_id_seq', 20, true);


--
-- Name: quotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: watsnav
--

SELECT pg_catalog.setval('public.quotes_id_seq', 564, true);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: watsnav
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: quotes quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: watsnav
--

ALTER TABLE ONLY public.quotes
    ADD CONSTRAINT quotes_pkey PRIMARY KEY (id);


--
-- Name: quotes quotes_quote_key; Type: CONSTRAINT; Schema: public; Owner: watsnav
--

ALTER TABLE ONLY public.quotes
    ADD CONSTRAINT quotes_quote_key UNIQUE (quote);


--
-- Name: quotes quotes_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: watsnav
--

ALTER TABLE ONLY public.quotes
    ADD CONSTRAINT quotes_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.authors(id);


--
-- PostgreSQL database dump complete
--

