;; vim: filetype=lisp
(asdf:defsystem #:vlime-patched
  :description "Asynchronous Vim <-> Swank interface (patched Swank)"
  :author "Kay Z. <l04m33@gmail.com>"
  :license "MIT"
  :version "0.1.0"
  :depends-on (#:vlime)
  :components ((:module "src"
                :pathname "src"
                :components ((:file "vlime-protocol")
                             (:file "vlime-patched" :depends-on ("vlime-protocol")))))
  :in-order-to ((test-op (test-op #:vlime-test))))