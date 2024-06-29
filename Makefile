LISP ?= ros dynamic-space-size=8000 -Q run

all: test

run:
	rlwrap $(LISP) --load run.lisp

build:
	$(LISP)	--non-interactive \
		--load markov-chain-sentence-generator.asd \
		--eval '(ql:quickload :markov-chain-sentence-generator)' \
		--eval '(asdf:make :markov-chain-sentence-generator)'

test:
	$(LISP) --non-interactive \
		--load run-tests.lisp
