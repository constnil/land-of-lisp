(ns guess.core)
(defparameter *small* 1)
(defparameter *big* 100)

(defn guess-my-number []
  (/ (+ *small* *big*) 2))
