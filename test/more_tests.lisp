
(diff-eval '(+ X T) 'x) -> 1
(diff-eval '(* A B) 'A) -> B
(diff-eval '(- A 4) 'A) -> 1
(diff-eval '(- A B) 'B) -> -1
(diff-eval '(+ (* (/ (- X 2) 2) A) B) 'X) -> (* 1/2 A)
(diff-eval '(* A X (EXP (SIN X))) 'X) -> (* (+ (EXP (SIN X)) (* (* (EXP (SIN X)) (COS X)) X)) A)

(partial-eval '(- A B C) '((A . 2) (C . 1))) -> (- 1 B)
(partial-eval '(- A (- B) C) '((A . 2) (C . 1))) -> (- 1 (- B))
(partial-eval '(- A (+ B) C) '((A . 2) (C . 1))) -> (- 1 B)
(partial-eval '(* A (- B) C) '((A . 2) (C . 1))) -> (* 2 (- B))
(partial-eval '(/ A (- B) C) '((A . 2) (B . 1))) -> (/ 2 (* -1 C))
(partial-eval '(/ A (- B) C) '((A . 2) (B . 1) (C . 3))) -> -2/3