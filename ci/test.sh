#!/bin/sh
#|-*- mode:lisp -*-|#
#|
exec ros -Q -- $0 "$@"
|#
(progn ;;init forms
  (ros:ensure-asdf)
  #+quicklisp(ql:quickload '() :silent t)
  )

(defpackage :ros.script.test.3849961620
  (:use :cl))
(in-package :ros.script.test.3849961620)

(defun main (&rest argv)
  (declare (ignorable argv))
  (asdf:test-system "norvig-paradigms"))
;;; vim: set ft=lisp lisp:
