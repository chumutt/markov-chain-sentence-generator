"
Usage:

rlwrap sbcl --load run.lisp

or

ros -Q --load run.lisp

This loads the project's asd, loads the quicklisp dependencies, and
calls the main function.

Then, we are given the lisp prompt.

If you don't want to land in the REPL, you can (quit) below or call lisp with the --non-interactive flag.

Another solution to run the app is to build and run a binary (see README).
"

(load "markov-chain-sentence-generator.asd")

(ql:quickload "markov-chain-sentence-generator")

(in-package #:markov-chain-sentence-generator)

(handler-case
    (main)
  (error (c)
    (format *error-output* "~&An error occured: ~a~&" c)
    (uiop:quit 1)))
