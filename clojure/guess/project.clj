(defproject guess "0.1.0"
  :description "\"Guess\" game from \"Land of Lisp\" by Conrad Barski, M.D."
  :url "http://github.com/constnil/land-of-lisp"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.6.0"]
                 [org.clojure/tools.nrepl "0.2.7"]]
  :profiles {:dev {:plugins [[cider/cider-nrepl "0.8.1"]]}})
