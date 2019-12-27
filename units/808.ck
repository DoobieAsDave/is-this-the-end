BPM tempo;

Gain master;
SinOsc voice1 => master;
TriOsc voice2 => master;
master => ADSR adsr => BRF filter => dac;

//

(1.0 / 2.0) => master.gain;

(100 :: ms, 100 :: ms, .6, 600 :: ms) => adsr.set;

35 => Std.mtof => filter.freq;
2.0 => filter.Q;

//

31 => int key;

[key, key, key - 3, key - 3] @=> int sequence[];

while(true) {
    for (0 => int step; step < sequence.cap(); step++) {
        sequence[step] => Std.mtof => voice1.freq;
        sequence[step] => Std.mtof => voice2.freq;

        1 => adsr.keyOn;
        tempo.note - adsr.releaseTime() => now;

        1 => adsr.keyOff;
        adsr.releaseTime() => now;
    }
}