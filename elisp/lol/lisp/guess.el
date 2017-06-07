;;; guess.el --- The "Guess" game.

;; Author: Wu Tiefeng <icebergwtf@qq.com>
;; Maintainer: Wu Tiefeng
;; Keywords: games

;;; Commentary:

;;; Code:

(defvar *small* 1)
(defvar *big* 100)

(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (interactive)
  (setq *big* (1- (guess-my-number)))
  (message "%d" (guess-my-number)))

(defun bigger ()
  (interactive)
  (setq *small* (1+ (guess-my-number)))
  (message "%d" (guess-my-number)))

(defun start-over ()
  (interactive)
  (setq *small* 1)
  (setq *big* 100)
  (message "%d" (guess-my-number)))

(provide 'guess)

;;; guess.el ends here
