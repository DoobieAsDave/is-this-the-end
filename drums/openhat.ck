BPM tempo;

SndBuf openhat => Pan2 stereo => dac;

//

me.dir(-1) + "audio/openhat.wav" => openhat.read;
openhat.samples() => openhat.pos;
.15 => openhat.gain;

//

while(true) {
    Math.random2f(.1, .15) => openhat.gain;
    Math.random2f(-.3, .3) => stereo.pan;

    tempo.quarterNote => now;
    Math.random2(Std.ftoi(openhat.samples() * (2 / 100)), Std.ftoi(openhat.samples() * (10 / 100))) => openhat.pos;
    tempo.quarterNote => now;
}