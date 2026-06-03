(ns clojure.simple-array-sum
  (:require [clojure.string :as str]))

;
; Complete the 'simpleArraySum' function below.
;
; The function is expected to return an INTEGER.
; The function accepts INTEGER_ARRAY ar as parameter.
;

(defn simpleArraySum [ar]
      (reduce + ar)
      )

(def fptr (get (System/getenv) "OUTPUT_PATH"))

(def ar-count (Integer/parseInt (str/trim (read-line))))

(def ar (vec (map #(Integer/parseInt %) (str/split (str/trimr (read-line)) #" "))))

(def result (simpleArraySum ar))

(spit fptr (str result "\n") :append true)
