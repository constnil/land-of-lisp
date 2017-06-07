;;; lol.el --- Land of Lisp games in emacs lisp.

;; Author: Wu Tiefeng <icebergwtf@qq.com>
;; Maintainer: Wu Tiefeng
;; Keywords: games

;;; Commentary:

;;; Code:

(when (fboundp 'normal-top-level-add-to-load-path)
  (normal-top-level-add-to-load-path "lisp")
  (require 'guess))

(provide 'lol)

;;; lol.el ends here
