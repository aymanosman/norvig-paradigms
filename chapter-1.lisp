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

(defun power (base n)
  "Return Nth power of BASE."
  (cond
    ((= n 0)
     1)
    ((evenp n)
     (expt (power base (/ n 2)) 2))
    (t
     (* base (power base (- n 1))))))

(defun count-atoms (exp)
  "Return the count of non-nil atoms in LIST."
  (cond
    ((null exp)
     0)
    ((atom exp)
     1)
    (t
     (+ (count-atoms (first exp))
        (count-atoms (rest exp))))))

(defun count-anywhere (item tree)
  "Return the count of ITEM appearing anywhere in TREE."
  (cond
    ((null tree)
     0)
    (t
     (+ (cond
          ((listp (first tree))
           (count-anywhere item (first tree)))
          ((eq item (first tree))
           1)
          (t
           0))
        (count-anywhere item (rest tree))))))

(defun dot-product (a b)
  "Return the dot product of A and B."
  (if (or (null a) (null b))
      0
      (+ (* (first a) (first b))
         (dot-product (rest a) (rest b)))))
