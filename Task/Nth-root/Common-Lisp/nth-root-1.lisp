(defun nth-root (n a &optional (epsilon .0001) (guess (1- n)))
  (assert (and (> n 1) (> a 0)))
  (flet ((next (x)
           (/ (+ (* (1- n) x)
                 (/ a (expt x (1- n))))
              n)))
    (do* ((xi guess xi+1)
          (xi+1 (next xi) (next xi)))
         ((< (abs (- xi+1 xi)) epsilon) xi+1))))