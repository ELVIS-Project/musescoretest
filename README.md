# musescoretest
Test files for export to various formats from Musescore

Testing is done using bash diff (for comparing separate exports in the same format from Musescore) and using the compare.py script from https://github.com/napulen/encoding_matters for different file types

Results so far:

The MIDI files are for Cory to test (prefixed "midi-test"), and they correspond to the original three XML files (no prefix). I downloaded XML from JLSDD, opened in Musescore, and re-exported as MIDI. 

I also tested the MIDI exports with Néstor's compare.py script (so comparing original XML to MIDI export):

    La Rue Missa de Sancta Anna - Benedictus = 51%
    La Rue Missa Incessament - Pleni = 57%
    La Rue Missa Pro fidelibus defunctis - Sitivit anima mea = 54%

I also did some XML export testing with much better results...

I took the same three files in XML from JLSDD, opened in Musescore, exported as MusicXML twice (prefixed test1 and test2), and did a diff of the resulting files:

    La Rue Missa de Sancta Anna - Benedictus = no difference
    La Rue Missa Incessament - Pleni = no difference
    La Rue Missa Pro fidelibus defunctis - Sitivit anima mea = no difference

I also used Néstor's compare.py script from Encoding Matters to compare the original XML from JLSDD with the Musescore exports, with the following results:

    La Rue Missa de Sancta Anna - Benedictus = 100%
    La Rue Missa Incessament - Pleni = 97.75%
    La Rue Missa Pro fidelibus defunctis - Sitivit anima mea = 100%
