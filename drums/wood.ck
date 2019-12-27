BPM tempo;

SndBuf wood => dac;

//

me.dir(-1) + "audio/wood.wav" => wood.read;
wood.samples() => wood.pos;
.7 => wood.gain;

//

int repetitions;

while(true) {
    for (0 => int beat; beat < 2; beat++) {
        if (beat == 0) 2 => repetitions;
        else 3 => repetitions;        
        
        tempo.note * 1.75 => now;
    
        repeat(repetitions) {
            0 => wood.pos;
            (tempo.note * .25) / repetitions => now;
        }

        tempo.note * 2 => now;
    }
}