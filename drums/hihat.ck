BPM tempo;

SndBuf hihat => dac;

//

me.dir(-1) + "audio/hihat.wav" => hihat.read;
hihat.samples() => hihat.pos;

//

function void playAccents() {
    while(true) {
        tempo.note * 3 => now;

        tempo.note * .75 => now;
        repeat(4) {
            0 => hihat.pos;
            (tempo.note * .25) / 4 => now;
        }
    }
}

spork ~ playAccents();

while(true) {
    for (0 => int step; step < 16; step++) {
        if (step % 2 == 0) {
            .25 => hihat.gain;
        }
        else {
            hihat.gain() / 2 => hihat.gain;
        }

        Math.random2(0, Std.ftoi(hihat.samples() * (10 / 100))) => hihat.pos;
        tempo.eighthNote => now;
    }
}