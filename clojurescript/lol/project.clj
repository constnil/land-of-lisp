(defproject lol "0.1.0-SNAPSHOT"
  :description "ClojureScript implementation of games from book 'Land of Lisp',
  by Conrad Barski, M.D."
  :url "https://github.com/constnil/land-of-lisp"
  :dependencies [[org.clojure/clojure "1.8.0"]
                 [org.clojure/clojurescript "1.9.562"]
                 [com.cemerick/piggieback "0.2.1"]]
  :plugins [[lein-cljsbuild "1.1.6"]]
  :source-paths ["src"]
  :target-path "target"
  :cljsbuild {:builds {:guess
                       {:source-paths ["src/guess"]
                        :compiler {:output-to "out/guess.js"
                                   :output-dir "out"
                                   :target :nodejs
                                   :optimizations :simple
                                   :pretty-print true}}}})
