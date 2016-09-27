OpenTX Text To Speech
=====================

A simple tool for creating wav files to use with your transmitter running OpenTX.

- Contains configuration for OpenTX 2.1.X core system sounds.
- Ability to create customized phrases both for and in addition to core system sounds.
- Ability to create custom directory structures for generated files.

Requirements
------------

- OSX
- OpenTX 2.1.X (though it may work for other branches / applications)

Usage
-----

1. Clone or download this repository.
2. Make sure make.sh is executable.
3. Edit `phrases.txt` to your liking.
4. Run `make.sh`, all files will be placed in the `build` directory.
