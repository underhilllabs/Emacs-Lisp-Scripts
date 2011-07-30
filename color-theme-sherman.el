;; Author: Bart Lantz
;; http://github.com/underhilllabs/color-theme-seamus
;; 
;; this file is not part of GNU EMACS
;;
;; Usage:
;; 1. install color-theme package
;; 2. put file in emacs load path
;; 3. add "(require 'color-theme-seamus)" to .emacs file
;; 4. M-x color-theme-seamus
;; 

(defun color-theme-sherman ()
  "`color-theme-gnome2' via `color-theme-robin-hood'  with wheat on charcoal.
  I added colors for magit.  Maintained by Bart Lantz (underhilllabs@gmail.com)"
  (interactive)
  (color-theme-andreas)
  (let ((color-theme-is-cumulative t))
    (color-theme-install
     '(color-theme-sherman
       ((background-mode .  light)
        (foreground-color . "#232323")
        (background-color . "white"))
       ((CUA-mode-read-only-cursor-color . "white")
        (help-highlight-face . info-xref)
        (list-matching-lines-buffer-name-face . bold))
       (default ((t (nil))))
       (button ((t (:bold t))))
       (calendar-today-face ((t (:foreground "firebird"))))
       (custom-button-face ((t (:bold t :foreground "#454547"))))
       (diary-face ((t (:bold t :foreground "blue"))))
       (font-lock-comment-face ((t (:foreground "#686868"))))
       (font-lock-doc-string-face ((t (:foreground "green4"))))
       (font-lock-function-name-face ((t (:foreground "blue3"))))
       (font-lock-keyword-face ((t (:foreground "red1"))))
       (font-lock-preprocessor-face ((t (:foreground "blue3"))))
       (font-lock-reference-face ((t (:foreground "red3"))))
       (font-lock-string-face ((t (:foreground "green4"))))
       (font-lock-type-face ((t (:foreground "#6920ac"))))
       (font-lock-variable-name-face ((t (:foreground "blue3"))))
       (font-lock-warning-face ((t (:bold t :foreground "Red"))))
       (fringe ((t (:background "white"))))
       (header-line ((t (:background "#030" :foreground "#AA7"))))
       (holiday-face ((t (:bold t :foreground "peru"))))
       (ido-subdir-face ((t (:foreground "MediumSlateBlue"))))
       (isearch ((t (:foreground "pink" :background "red"))))
       (isearch-lazy-highlight-face ((t (:foreground "red"))))
       ;; magit stuff!!
       (diff-file-header ((t (:foreground "violet"))))
       (diff-hunk-header ((t (:foreground "MediumSlateBlue"))))
       (magit-header ((t (:foreground "cyan"))))
       (magit-tag-label ((t (:background "blue" :foreground "orange"))))
       (magit-diff-add ((t (:foreground "green3"))))
       (magit-diff-del ((t (:foreground "red3"))))
       (magit-item-highlight ((t (:background "MediumSlateBlue"))))
       (magic-log-sha1 ((t (:foreground "red2"))))
       (menu ((t (:background "#304020" :foreground "navajo white"))))
       (minibuffer-prompt ((t (:foreground "green"))))
       (modeline ((t (:background "#464646" :foreground "black" :box (:line-width 1 :style released-button)))))
       (mode-line-inactive ((t (:background "MediumSlateBlue" :foreground "black" :box (:line-width 1 :style released-button)))))
       (modeline-buffer-id ((t (:background "#464646" :foreground "maroon")))) 
       (semantic-dirty-token-face ((t (:background "grey22"))))
       (tool-bar ((t (:background "#252525" :foreground "wheat" :box (:line-width 1 :style released-button)))))
       (tooltip ((t (:background "lemon chiffon" :foreground "black"))))))))
;; provide color-theme
(provide 'color-theme-sherman)



