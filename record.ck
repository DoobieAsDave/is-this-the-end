me.arg(0) => string filename;

if (filename.length() == 0) {
    "is this the end II.wav" => filename;
}

dac => WvOut2 w => blackhole;

filename => w.wavFilename;
<<< "writing to: ", "'" + w.filename() + "'">>>;

null @=> w;

while(true)
    second => now;