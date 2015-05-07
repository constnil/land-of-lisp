(ns guess.core)

(def ^:dynamic *small* (ref 1))
(def ^:dynamic *big* (ref 100))

(defn- setf [x val]
  (dosync (ref-set x val)))

(defn guess-my-number []
  (bit-shift-right (+ @*small* @*big*) 1))

(defn smaller []
  (setf *big* (dec (guess-my-number)))
  (guess-my-number))

(defn bigger []
  (setf *small* (inc (guess-my-number)))
  (guess-my-number))

(defn start-over []
  (setf *small* 1)
  (setf *big* 100)
  (guess-my-number))
