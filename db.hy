(setv db [])
(global db) ; sticking close to PCL

(defn make-cd [title artist rating ripped]
  (do
    (setv cd {})
    (assoc cd "title" title)
    (assoc cd "artist" artist)
    (assoc cd "rating" rating)
    (assoc cd "ripped" ripped))
  cd)

(defn add-record [cd]
  (.append db cd))

; helper
(defn print-dict [d]
  (for [key (.keys d)]
       (print (+ key ": " (str (get d key))))))

(defn dump-db []
  (for [cd db]
       (print-dict cd)
       (print)))

(defn prompt-for-cd []
  (make-cd
    (raw_input "Title")
    (raw_input "Artist")
    (raw_input "Rating")
    (raw_input "Ripped [y/n]")))

; TODO: y-or-n-p function. then add-cds. test.
