(defpackage norvig-paradigms/tests/main
  (:use :cl
        :norvig-paradigms
        :rove))
(in-package :norvig-paradigms/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :norvig-paradigms)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
