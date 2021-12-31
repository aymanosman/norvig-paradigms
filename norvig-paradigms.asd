(defsystem "norvig-paradigms"
  :version "0.1.0"
  :author "Ayman Osman"
  :license ""
  :depends-on ()
  :components ((:file "package")
               (:file "chapter-1"))
  :description ""
  :in-order-to ((test-op (test-op "norvig-paradigms/tests"))))

(defsystem "norvig-paradigms/tests"
  :author "Ayman Osman"
  :license ""
  :depends-on ("norvig-paradigms")
  :components ((:module "tests"
                :components
                ((:file "package")
                 (:file "test-framework")
                 (:file "chapter-1"))))
  :description "Test system for norvig-paradigms")
