https://en.wikipedia.org/wiki/Fizz_buzz

(defn divisel-por? [dividendo divisor]
  (zero? (mod dividendo divisor)))
  
(defn fizzbuzz [numero]
  (cond (and (divisel-por? numero 3)
             (divisel-por? numero 5)) "fizzbuzz"
        (divisel-por? numero 3) "fizz"
        (divisel-por? numero 5) "buzz"
        :else numero))
