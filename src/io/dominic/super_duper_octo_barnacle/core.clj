(ns io.dominic.super-duper-octo-barnacle.core
  (:require
    [github-percentile.core :as github-percentile]))

(defn fire
  "Fire ze missiles"
  []
  nil)

(defn -main
  [& [username]]
  (assert username)
  (println (github-percentile/percentile username)))
