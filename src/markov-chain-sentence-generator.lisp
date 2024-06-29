;; (in-package #:markov-chain-sentence-generator)

;; Define your project functionality here...

(defun pick (xs)
  (nth (random (length xs)) xs))

(defun markov (path n limit)
  (defun xs () (uiop:split-string (uiop:read-file-string path)))
  (defparameter *database* (make-hash-table))
  (q))



(defun greet (&optional (name "chu the pup"))
  (format T "Hello ~a from ~a!~&" name "markov-chain-sentence-generator"))

(defun help ()
  (format T "~&Usage:

  markov-chain-sentence-generator [name]~&"))

(defun %main (argv)
  "Parse CLI args."
  (when (member "-h" argv :test #'equal)
    ;; To properly parse command line arguments, use a third-party library such as
    ;; clingon, unix-opts, defmain, adopt… when needed.
    (help)
    (uiop:quit))
  (greet  (or (first argv)
              "dear lisp user")))

(defun main ()
  "Entry point for the executable.
  Reads command line arguments."
  ;; uiop:command-line-arguments returns a list of arguments (sans the script name).
  ;; We defer the work of parsing to %main because we call it also from the Roswell script.
  (%main (uiop:command-line-arguments)))
