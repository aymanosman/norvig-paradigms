(in-package #:paradigms)

;; Exercise 1.1
(check-equal (last-name '(Rex Morgan MD)) 'Morgan)

(check-equal (last-name '(Morton Downey Jr.)) 'Downey)

;; Exercise 1.2
(check-equal (power 3 2) 9)
(check-equal (power 2 3) 8)
