
## How to use Roswell to build and share binaries

From the project root:

Run as a script:

    chmod +x roswell/markov-chain-sentence-generator.ros
    ./roswell/markov-chain-sentence-generator.ros

Build a binary:

    ros build roswell/markov-chain-sentence-generator.ros

and run it:

    ./roswell/markov-chain-sentence-generator

Or install it in ~/.roswell/bin:

    ros install roswell/markov-chain-sentence-generator.ros

It creates the binary in ~/.roswell/bin/
Run it:

    ~/.roswell/bin/markov-chain-sentence-generator [name]~&

Your users can install the script with ros install chu/markov-chain-sentence-generator

Use `+Q` if you don't have Quicklisp dependencies to save startup time.
Use `ros build --disable-compression` to save on startup time and loose on application size.


## See

- https://github.com/roswell/roswell/wiki/
- https://github.com/roswell/roswell/wiki/Reducing-Startup-Time
