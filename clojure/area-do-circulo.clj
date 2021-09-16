(defn transforms-into-double-precision
  [valor]
  (format "%.4f" valor))

(defn convert-to-double
  [valor]
  (Double/parseDouble valor))

(defn power
  [x n]
  (reduce * (repeat n x)))

(println (str "A=" (transforms-into-double-precision (let [raio (read-line)]
                                                       (* 3.14159 (power (convert-to-double raio) 2))))))