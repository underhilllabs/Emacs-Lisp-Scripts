;; buffer-check-urls
;; checks URLs in current buffer for broken links
;;
;; author: Bart Lantz 
;; 

;;(org-check-for-broken-links &optional org-files-list)
;;(org-next-link) makes point jump to next link in buffer
;; 
;; url-http-file-exists-p is a compiled Lisp function in `url-http.el'.
;; (url-http-file-exists-p URL)




(defun buffer-check-urls ()
  "function to check for broken links in current buffer"
  (interactive)
  (save-excursion)
  (goto-char (point-min))
  (while 
      (re-search-forward "http:\/\/[^\]]*")
           (setq nextlink (match-string 0))
           (condition-case nil
               (if (url-http-file-exists-p nextlink)
                   (message "Link works: %s" nextlink)
                 (progn 
                   (message "Broken Link found: %s" nextlink)
                   (end-of-line)
                   (insert " LINK BROKEN"))
                 (message "Broken Link found: %s" nextlink))           
             ((error) (progn 
                        (message "Server down: %s" nextlink)
                        (end-of-line)
                        (insert " Server Down") nil))))
  (message "finished lim is %s" lim))




