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

(defun power (base exp)
  "Return BASE raised to the power of EXP."
  (apply #'* (make-list exp :initial-element base)))

(defun count-atoms (list)
  "Return the count of atoms in LIST. Does not count NIL as an atom."
  (cond
    ((null list)
     0)
    (t
     (+ (cond
          ((null (first list)) 0)
          ((listp (first list)) (count-atoms (first list)))
          (t 1))
        (count-atoms (rest list))))))

(defun count-anywhere (x list)
  "Return the count of X in LIST and in any list contained in LIST."
  (cond
    ((null list) 0)
    (t
     (+ (cond
          ((listp (first list)) (count-anywhere x (first list)))
          ((eq x (first list)) 1)
          (t 0))
        (count-anywhere x (rest list))))))

(defun dot-product (x y)
  "Return the dot product of X and Y."
  (if (or (null x) (null y))
      0
      (+ (* (first x) (first y))
         (dot-product (rest x) (rest y)))))
