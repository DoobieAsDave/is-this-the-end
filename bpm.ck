public class BPM
{
    static dur note, halfNote, quarterNote, eighthNote, sixteenthNote, thirtiethNote;

    function void setBPM(float bpm) {
        60.0 / bpm => float spb;

        spb :: second => quarterNote;
        quarterNote * 2 => halfNote;
        halfNote * 2 => note;
        quarterNote / 2 => eighthNote;
        eighthNote / 2 => sixteenthNote;
        sixteenthNote / 2 => thirtiethNote;
    }
}