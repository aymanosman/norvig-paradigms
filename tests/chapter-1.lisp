(in-package #:paradigms)

;; Exercise 1.1
(check-equal (last-name '(Rex Morgan MD)) 'Morgan)

(check-equal (last-name '(Morton Downey Jr.)) 'Downey)

;; Exercise 1.2
(check-equal (power 3 2) 9)
(check-equal (power 2 3) 8)

;; Exercise 1.3
(check-equal (count-atoms '(a (b) c)) 3)
(check-equal (count-atoms '(a nil c)) 2)
(check-equal (count-atoms '(a (b c) d)) 4)

;; Exercise 1.4
(check-equal (count-anywhere 'a '(a ((a) b) a)) 3)
