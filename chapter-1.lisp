(in-package #:paradigms)

(defparameter *titles*
  '(Mr Mrs Miss Ms Sir Madam Dr Admiral Major General)
  "A list of titles that can appear at the start of a name.")

(defun first-name (name)
  "Select the first name from a name represented as a list."
  (if (member (first name) *titles*)
      (first-name (rest name))
      (first name)))

(defparameter *suffixes*
  '(MD PhD Jr. Sr. I II III))

(defun last-name (name)
  "Select the last name from a name represented as a list."
  (let ((*titles* *suffixes*))
    (first-name (reverse name))))