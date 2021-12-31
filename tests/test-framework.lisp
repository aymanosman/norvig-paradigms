(in-package #:paradigms)

(define-condition check-failure ()
  ((actual :initarg :actual)
   (expected :initarg :expected)))

(defun check-equal (actual expected)
  (unless (equal actual expected)
    (error 'check-failure :actual actual
                          :expected expected)))
