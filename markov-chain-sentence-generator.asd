(in-package :asdf-user)

(defsystem "markov-chain-sentence-generator"
  :author "chu the pup <chufilthymutt@gmail.com>"
  :version "0.0.1"
  :license "GNU GPL-3.0"
  :description ""
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")

  ;; Dependencies.
  :depends-on ()

  ;; Project stucture.
  :serial T
  :components ((:module "src"
                        :serial T
                        :components ((:file "packages")
                                     (:file "markov-chain-sentence-generator"))))

  ;; Build a binary:
  ;; don't change this line.
  :build-operation "program-op"
  ;; binary name: adapt.
  :build-pathname "markov-chain-sentence-generator"
  ;; entry point: here "main" is an exported symbol. Otherwise, use a double ::
  :entry-point "markov-chain-sentence-generator:main")
