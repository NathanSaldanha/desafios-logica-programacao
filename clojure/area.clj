; plataforma - https://www.urionlinejudge.com.br/
; Id do desafio 1012

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

(defn circle-area
  [raio]
  (println "CIRCULO:" (transforms-into-double-precision (* pi (power (convert-to-double raio) 2)))))

(defn triangle-rectangle-area
  [base altura]
  (println "TRIANGULO:" (transforms-into-double-precision (/ (* (convert-to-double base) (convert-to-double altura)) 2))))

(defn trapeze-area
  [base-maior base-menos altura]
  (println "TRAPEZIO:" (transforms-into-double-precision (/ (* (convert-to-double altura)
                                                               (+ (convert-to-double base-maior) (convert-to-double base-menos))
                                                               ) 2))))
(defn square-area
  [lado]
  (println "QUADRADO:" (transforms-into-double-precision (power (convert-to-double lado) 2))))

(defn rectangle-area
  [base altura]
  (println "RETANGULO:" (transforms-into-double-precision (* (convert-to-double base) (convert-to-double altura)))))

(let [A (read-line)
      vetor (clojure.string/split A #" ")
      A (nth vetor 0)
      B (nth vetor 1)
      C (nth vetor 2)]
  (triangle-rectangle-area A C)
  (circle-area C)
  (trapeze-area A B C)
  (square-area B)
  (rectangle-area A B))