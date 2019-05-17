

(deftemplate elevator
    (slot number (type INTEGER))
    (slot current-floor (type INTEGER))
    (slot direction (type SYMBOL))
)

(deftemplate button
    (slot floor (type INTEGER))
)

(defrule even_floor
 (elevator (current-floor ?current_floor))
 (button   (floor ?current_floor))
=>
  (assert (open_door))
)


(defrule above_floor
 (elevator (current-floor ?other_floor))
 (button   (floor ?current_floor))
 (test (> ?other_floor ?current_floor))
 (elevator (direction down))
=>
  (assert (go down ?other_floor))
)


(defrule up_floor
 (elevator (current-floor ?other_floor))
 (button   (floor ?current_floor))
 (test (< ?other_floor ?current_floor))
 (elevator (direction up))
=>
  (assert (goto up ?other_floor))
)
