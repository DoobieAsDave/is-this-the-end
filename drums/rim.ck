BPM tempo;

SndBuf rim => dac;

//

me.dir(-1) + "audio/rim.wav" => rim.read;
rim.samples() => rim.pos;
.7 => rim.gain;

//

while(true) {
    tempo.halfNote * 1.75 => now;
    0 => rim.pos;
    tempo.quarterNote => now;
    0 => rim.pos;    

    (tempo.note * 3) - (tempo.halfNote * .25) => now;
}