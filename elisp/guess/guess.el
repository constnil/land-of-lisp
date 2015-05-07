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
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over ()
  (setf *small* 1)
  (setf *big* 100)
  (guess-my-number))

(provide 'guess)

;;; guess.el ends here
