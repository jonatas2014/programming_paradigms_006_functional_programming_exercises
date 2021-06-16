(defvar *n* (read))
(defvar *m* (read))
(setf *n* (+ *n* *m*))
(loop  for x from *m* to *n*
    do (print x)
)
