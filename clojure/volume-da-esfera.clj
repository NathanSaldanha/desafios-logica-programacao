(def pi 3.14159)

(defn transforms-into-double-precision
  [valor]
  (format "%.3f" valor))

(defn convert-to-double
  [valor]
  (Double/parseDouble valor))

(defn power
  [x n]
  (reduce * (repeat n x)))

(defn sphere-volume
  [raio]
  (println "VOLUME =" (transforms-into-double-precision (* pi (power (convert-to-double raio) 3) (/ 4.0 3)))))

(let [raio (read-line)]
  (sphere-volume raio))