;;; guess.el --- "Guess" game from "Land of Lisp" by Conrad Barski, M.D.

;; Copyright (C) 2015, Wu Tiefeng.

;; Author: Wu Tiefeng <IcebergWTF@qq.com>
;; Maintainer: Wu Tiefeng
;; Keywords: games

;;; Commentary:

;;; Code:

(defvar *small* 1)
(defvar *big* 100)

(defun guess-my-number ()
  "Start a guess."
  (interactive)
  (let ((guess (ash (+ *small* *big*) -1)))
    (message "%d?" guess)
    guess))

(defun smaller ()
  "Inform the guess is smaller and start next guess."
  (interactive)
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger ()
  "Inform the guess is bigger and start next guess."
  (interactive)
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over ()
  "Restart guess game and start a guess."
  (interactive)
  (setf *small* 1)
  (setf *big* 100)
  (guess-my-number))

(provide 'guess)

;;; guess.el ends here
