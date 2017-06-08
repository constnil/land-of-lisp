;;; guess.el --- The "Guess" game.

;; Author: Wu Tiefeng <icebergwtf@qq.com>
;; Maintainer: Wu Tiefeng
;; Keywords: games

;;; Commentary:

;;; Code:

(defvar lol-guess/small 1)
(defvar lol-guess/big 100)

(defun lol-guess--guess-my-number ()
  (ash (+ lol-guess/small lol-guess/big) -1))

(defun lol-guess/smaller ()
  (interactive)
  (setq lol-guess/big (1- (lol-guess--guess-my-number)))
  (message "%d" (lol-guess--guess-my-number)))

(defun lol-guess/bigger ()
  (interactive)
  (setq lol-guess/small (1+ (lol-guess--guess-my-number)))
  (message "%d" (lol-guess--guess-my-number)))

(defun lol-guess-start-over ()
  (interactive)
  (setq lol-guess/small 1)
  (setq lol-guess/big 100)
  (message "%d" (lol-guess--guess-my-number)))

(provide 'lol-guess)

;;; guess.el ends here
