;; org-check-for-broken-links 
;; author: Bart Lantz 
;;(org-check-for-broken-links &optional org-files-list)
;;(org-next-link) makes point jump to next link in buffer
;; 
;; (when (looking-at org-bracket-link-analytic-regexp)
;; 
;; url-http-file-exists-p is a compiled Lisp function in `url-http.el'.
;; (url-http-file-exists-p URL)
;;
;; check 

;(defun org-check-for-broken-urls ()
;  "function to check for broken links in orgmode doc"
;  (interactive)
;  (goto-char (point-min))
;  (while (org-next-link)
;    (unless (url-http-file-exists-p link)
;      (format "broken link found: %s" link)))) 

;(setq link "http://google.com")
;(format "broken link found: %s" link)
;(setq urls '("http://google.com" "http://bing.com" "http://coavp.org" "http://denvertech.org" "http://binglydown.net" "http://denvertech.org/shja.html"))

(defun buffer-check-urls ()
  "function to check for broken links in current buffer"
  (interactive)
  (save-excursion)
  (setq lim 0)
  (goto-char (point-min))
  (while 
      (and (< lim 200) (re-search-forward "http:\/\/[^\]]*")
           (setq nextlink (match-string 0))
           (condition-case nil
               (if (url-http-file-exists-p nextlink)
                   (message "Link works: %s" nextlink)
                 (progn 
                   (message "Broken Link found: %s" nextlink)
                   (end-of-line)
                   (insert " LINK BROKEN"))
                 (message "Broken Link found: %s" nextlink))           
             ((error) (message "Server down: %s" nextlink)))
           ;;(setq urls (cdr urls))
           (setq lim (1+ lim))))
  (message "finished lim is %s" lim))




;; (defun notify-broken-link ()
;;   "notify user broken link"
;;   (interactive)
;;   (progn 
;;     (message "Broken Link found: %s" nextlink)
;;     (end-of-line)
;;     (insert "LINK BROKEN")))
;;(notify-broken-link)LINK BROKEN
;; ;; "http:\/\/[^\]]*?"