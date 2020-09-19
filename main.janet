(defn format-debug [input]
 (string "[debug] " input " [;]"))

(defn loop-dispatch [input]
  (cond
    # used to have (quit)
    (= input "quit") (os/exit 0)
    (->> input
         # Must wrap in parens
         # Or it prints emptiness
         (format-debug)
         (print))))

(defn getline->string []
  (->> (getline)
       (string)
       (string/trim)))

(defn main-loop []
  (let [input (getline->string)]
    (loop-dispatch input)
    (main-loop)))

(main-loop)

