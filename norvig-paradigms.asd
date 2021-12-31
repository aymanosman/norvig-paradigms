(defsystem "norvig-paradigms"
  :version "0.1.0"
  :author "Ayman Osman"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "norvig-paradigms/tests"))))

(defsystem "norvig-paradigms/tests"
  :author "Ayman Osman"
  :license ""
  :depends-on ("norvig-paradigms"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for norvig-paradigms"
  :perform (test-op (op c) (symbol-call :rove :run c)))
