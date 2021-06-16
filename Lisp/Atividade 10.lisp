(defvar *numero* (read))

(defun fatorial_aux (num parcial)
    (cond
    ((= num 1) parcial)
    (t 
        (fatorial_aux (- num 1) (* parcial num)))
    )    
)

(defun fatorial_cauda (num-1)
    (fatorial_aux num-1 1)
)


(format t "O fatorial de ~d é ~d ~%" *numero* (fatorial_cauda *numero*))