(in-package :asdf-user)

(defsystem "markov-chain-sentence-generator-tests"
  :description "Test suite for the markov-chain-sentence-generator system"
  :author "chu the pup <chufilthymutt@gmail.com>"
  :version "0.0.1"
  :depends-on (:markov-chain-sentence-generator
               :fiveam)
  :license "GNU GPL-3.0"
  :serial T
  :components ((:module "tests"
                        :serial T
                        :components ((:file "packages")
                                     (:file "test-markov-chain-sentence-generator"))))

  ;; The following would not return the right exit code on error, but still 0.
  ;; :perform (test-op (op _) (symbol-call :fiveam :run-all-tests))
  )
