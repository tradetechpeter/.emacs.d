(require 'package) ;; You might already have this line
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(toggle-scroll-bar -1)
(tool-bar-mode -1)

(load-theme 'spacemacs-dark t)

(set-default-font "Menlo 16")

(setq tramp-default-method "ssh")

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(custom-set-variables '(markdown-command "/usr/local/Cellar/markdown/1.0.1/bin/markdown"))
