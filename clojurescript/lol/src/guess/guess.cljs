(ns lol.guess
  (:require [cljs.nodejs :as node]))

;; (defonce conn
;;   (repl/connect "http://localhost:9000/repl"))

(def *small* 1)
(def *big* 100)

(defn guess-my-number []
  (bit-shift-right (+ *small* *big*) 1))

(defn smaller []
  (set! *big* (dec (guess-my-number)))
  (guess-my-number))

(defn bigger []
  (set! *small* (inc (guess-my-number)))
  (guess-my-number))

(defn start-over []
  (set! *small* 1)
  (set! *big* 100)
  (guess-my-number))

(defn -main [& args]
  (println (start-over))
  (println "Hello world!"))

(node/enable-util-print!)
(set! *main-cli-fn* -main)
