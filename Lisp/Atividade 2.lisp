(setf *ultimo* 1)
(setf *penultimo* 1)
(defun fibonacci (n)
    (cond
    ((<= n 2)
        (format t "O termo é 1"))
    (t 
        (setf count 3)
        (loop
            (setf termo (+ *ultimo* *penultimo*))
            (setf *penultimo* *ultimo*)
            (setf *ultimo* termo)
            (setf count (+ count 1))
            (when (> count n) (return termo))
        )
        (format t "O ~d° termo é ~d ~%" n termo)
    ))
)

(defvar *numero* (read))
(fibonacci *numero*)