"Hello World!".postln;
{SinOsc.ar}.play;
{SinOsc.ar(LFNoise0.kr(10).range(500, 1500), mul: 0.1)}.play;
{RLPF.ar(Dust.ar([12, 15]), LFNoise1.ar([0.2, 0.3]).range(100, 3000), 0.02)}.play;

100.do({"Print this line over and over...".scramble.postln});

// Example 1
(
a = "Hello, World"; // a string of characters
b = [0, 1, 2, 3, 5]; // a list
c = Pbind(\note, Pwhite(0, 10), \dur, 0.1); // you'll learn all about Pbind later, don't worry
// ...and now you can use them just like you would use the original data:
a.postln; // post it
b + 100; // do some math
c.play; // play that Pbind
d = b * 5; // take b, multiply by 5, and assign that to a new variable
)

// Example 2
(
~myFreqs = [415, 220, 440, 880, 220, 990];
~myDurs = [0.1, 0.2, 0.2, 0.5, 0.2, 0.1];

Pbind(\freq, Pseq(~myFreqs), \dur, Pseq(~myDurs)).play;
)

// Environment variables
~galaApples = 4;
~bloodOranges = 5;
~limes = 2;
~plantains = 1;

["Citrus", ~bloodOranges + ~limes];
["Non−citrus", ~plantains + ~galaApples];

// Local variables: valid only within the code block.
// Evaluate the block once and watch the Post window:
(
var apples = 4, oranges = 3, lemons = 8, bananas = 10;
["Citrus fruits", oranges + lemons].postln;
["Non−citrus fruits", bananas + apples].postln;
"End".postln;
)

~galaApples; // still exists
apples; // gone


