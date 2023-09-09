Pbind(\degree, Pseries(0, 1, 30), \dur, 0.05).play;
Pbind(\degree, 5).play;

Pbind(\degree, Pseq([0, 1, 2, 3, 4, 5, 6, 7], 1), \dur, 0.2).play;
(
Pbind(
	\degree, Pseq([0, 1, 2, 3, 4, 5, 6, 7], 5),
	\dur, Pseq([0.2, 0.1, 0.1, 0.2, 0.2, 0.35], inf)
).play;
)

// my try
(
Pbind(
	\degree, 1,
	\amp, Pseq([0.1, 0.4, 0.9], 1)
).play;
)

(
Pbind(
	\degree, Pseq([0, −1, 2, −3, 4, −3, 7, 11, 4, 2, 0, −3], 5),
	\dur, Pseq([0.2, 0.1, 0.1], inf),
	\amp, Pseq([0.7, 0.5, 0.3, 0.2], inf),
	\legato, 0.4
).play;
)

// my try for 'twinkle star'
(
Pbind(
	\degree, Pseq([0, 0, 4, 4, 5, 5, 4,  3, 3, 2, 2, 1, 1, 0], 1),
	\dur, Pseq([0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1], 2),
	\amp, Pseq([0.2, 0.2, 0.3, 0.3, 0.5, 0.4, 0.3], 2),
	\legato, 0.4
).play;
)

(
Pbind(
	\note, Prand([0, 2, 3, 5, 7, 9, 11], inf),
	\dur, Prand([0.1, 0.2, 0.3, 0.4], inf),
	\amp, 0.2,
	\legato, 0.5
).play;
)

(
Pbind(
	\freq, Pwhite(100, 500),
	\dur, Prand([0.1, 0.2, 0.3, 0.4], inf),
	\amp, 0.2,
	\legato, 0.3
).trace.play;
)

(
Pbind(
	\note, Pser([0, 2, 3, 5, 7, 8, 11, 12], 11),
	\dur, 0.15
).play;
)

// xrand相比rand, 前后两个不会重复
(
Pbind(
	\note, Pxrand([0, 2, 3, 5, 7, 8, 11, 12], inf),
	\dur, 0.15
).play;
)

(
Pbind(
	\note, Prand([0, 2, 3, 5, 7, 8, 11, 12], inf),
	\dur, 0.15;
).play;
)

// 列表随机打乱之后，循环
(
Pbind(
	\note, Pshuf([0, 2, 3, 5, 7, 8, 11, 12], 6),
	\dur, 0.15;
).play;
)

(
Pbind(
	\note, Pslide([0, 2, 3, 5, 7, 8, 11, 12], 7, 3, 1),
	\dur, 0.15;
).trace.play;
)

(
Pbind(
	\note, Pseries(0, 2, 15),
	\dur, 0.15;
).trace.play;
)

(
Pbind(
	\note, Pseq([0, 2, 3, 5, 7, 8, 11, 12], inf),
	\dur, Pgeom(0.1, 1.1, 25);
).trace.play;
)

(
Pbind(
	\note, Pseq([0, Pn(2, 3), 3, Pn(5, 3), 7, Pn(8, 3), 11, 12], 1),
	\dur, 0.15;
).trace.play;
)



(
Pbind(
	\note, Pseq([[0, 3, 7], [2, 5, 8], [3, 7, 10], [5, 8, 12]], 3),
	\dur, 0.15
).play;
)

(
Pbind(
	\note, Pseq([[-7, 3, 7, 10], [0, 3, 5, 8]], 2),
	\dur, 1,
	\legato, 0.4,
	\strum, 0.1
).play;
)

(
Pbind(
	\scale, Scale.indian,
	\degree, Pseq([0, 1, 2, 3, 4, 5 ,6, 7], 1),
	\dur, 0.15
).play;
)

Scale.directory;

(
Pbind(
	\degree, Pseq([0, 1, 2, 3, 3.1, 4], 1),
).play;
)

// transposition
(
Pbind(
	\note, Pser([0, 2, 3, 5, 7, 8, 11, 12], 11),
	\ctranspose, 12,
	\dur, 0.15
).play;
)

// microtones
(
Pbind(
	\note, Pseq([0, 0.5, 1, 1.5, 1.75, 2], 1),
	\dur, 0.15
).play;
)

(
Pbind(
	\midinote, Pseq([60, 69, 68.5, 60.25, 70], 1),
	\dur, 0.15
).play;
)

// tempo
(
Pbind(
	\degree, Pseq([0, 0.1, 1, 2, 3, 4, 5, 6, 7]),
	\dur, 1
).play(TempoClock(120/60));
)
