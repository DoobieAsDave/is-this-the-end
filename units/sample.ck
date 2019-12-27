BPM tempo;

SndBuf sample => NRev reverb => dac;

//

sample.samples() => sample.pos;
.8 => sample.gain;

.2 => reverb.mix;

//

while(true) {
    for (0 => int beat; beat < 4; beat++) {
        if (beat < 2) {
            me.dir(-1) + "audio/arax1.wav" => sample.read;            
        }
        else {
            me.dir(-1) + "audio/arax2.wav" => sample.read;
        }

        0 => sample.pos;
        tempo.note => now;
    }
}