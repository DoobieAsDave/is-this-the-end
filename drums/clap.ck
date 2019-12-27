BPM tempo;

SndBuf clap => dac;

//

me.dir(-1) + "audio/clap.wav" => clap.read;
clap.samples() => clap.pos;
.7 => clap.gain;

//

while(true) {
    tempo.halfNote => now;
    0 => clap.pos;
    tempo.halfNote => now;
}