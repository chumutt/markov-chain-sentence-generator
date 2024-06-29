(load "markov-chain-sentence-generator.asd")

(load "markov-chain-sentence-generator-tests.asd")

(ql:quickload "markov-chain-sentence-generator-tests")

(in-package #:markov-chain-sentence-generator-tests)

(uiop:quit (if (run-all-tests) 0 1))
