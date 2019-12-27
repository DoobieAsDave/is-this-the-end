.8 => float maxVolume;
.0 => float minVolume;
.01 => float volumeInc;

maxVolume => dac.gain;

BPM tempo;
tempo.setBPM(138.0);

/* Machine.add(me.dir() + "units/808.ck");
while(true) second => now; */

//

Machine.add(me.dir() + "record.ck");

Machine.add(me.dir() + "units/sample.ck");
Machine.add(me.dir() + "units/808.ck");
tempo.note * 4 => now;

Machine.add(me.dir() + "drums/hihat.ck");
tempo.note * 4 => now;

Machine.add(me.dir() + "drums/clap.ck");
tempo.note * 4 => now;

Machine.add(me.dir() + "drums/kick.ck");
Machine.add(me.dir() + "drums/rim.ck");
Machine.add(me.dir() + "drums/wood.ck");
tempo.note * 4 => now;

tempo.note * 16 => now;
Machine.add(me.dir() + "drums/openhat.ck");

tempo.note * 16 => now;
Machine.status();