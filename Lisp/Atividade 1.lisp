(defun fatorial (n)
    (cond
    ((= n 1) 1)
    (t (* n (fatorial (- n 1)))))
)

(defvar *numero* (read))


(format t "O fatorial de ~d é ~d ~%" *numero* (fatorial *numero*))