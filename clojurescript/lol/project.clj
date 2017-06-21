(defproject lol "0.1.0-SNAPSHOT"
  :description "ClojureScript implementation of games from book 'Land of Lisp', by Conrad Barski, M.D."
  :url "https://github.com/constnil/land-of-lisp"
  :dependencies [[org.clojure/clojure "1.8.0"]
                 [org.clojure/clojurescript "1.9.521"]]
  :plugins [[lein-cljsbuild "1.1.6"]]
  :cljsbuild {:builds {:guess
                       {:source-paths ["src/guess"]
                        :compiler {:output-to "resources/public/guess.js"
                                   :optimizations :whitespace
                                   :pretty-print true}}}})
