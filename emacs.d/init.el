;; Emacs Customizations
;; Author: Ronaldo F. Lima <ronaldo@chicletemkt.com>

;; MELPA support
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Global variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(column-number-mode 1)
 '(current-language-environment "Latin-1")
 '(default-input-method "latin-1-prefix")
 '(default-tab-width 4 t)
 '(dired-use-ls-dired nil)
 '(fill-column 80)
 '(global-font-lock-mode t nil (font-lock))
 '(gutter-buffers-tab-visible-p nil)
 '(line-number-mode 1)
 '(linum-format " %5i ")
 '(menu-bar-mode nil)
 '(modeline-3d-p nil)
 '(nxml-section-element-name-regexp
   "article\\|\\(sub\\)*section\\|chapter\\|div\\|appendix\\|part\\|preface\\|reference\\|simplesect\\|bibliography\\|bibliodiv\\|glossary\\|glossdiv\\|methodResponse")
 '(package-selected-packages
   (quote
    (wiki-nav pomodoro fixmee pyimport sudoku py-autopep8 yaml-mode auto-complete-c-headers virtualenvwrapper pyenv-mode jedi projectile noxml-fold python markdown-mode+ markdown-mode csv-mode csv csv-nav ssh emacsql-sqlite emacsql-mysql emacsql-psql swift-mode lex json-mode graphviz-dot-mode web-mode scss-mode sass-mode rvm ruby-dev ruby-compilation realgud-rdb2 org omniref list-utils inf-mongo gitty git-command git gist)))
 '(safe-local-variable-values
   (quote
    ((eval venv-workon "fbreports")
     (eval setenv "POSTGRESQLCONNSTR_CHLTMKT_DB_PASSWORD" "au%Y2SPTph-3J1Q")
     (eval setenv "POSTGRESQLCONNSTR_CHLTMKT_DB_USER" "fbreports")
     (eval setenv "POSTGRESQLCONNSTR_CHLTMKT_DB" "fbreportsdb")
     (eval setenv "CHLTMKT_SECRET_KEY" ")595+35e+n$+h7zj3^kc5y=y$*r5upf3yzsos*czwrpqoj$+h4")
     (eval venv-workon "reports")
     (eval setenv "POSTGRESQLCONNSTR_CHLTMKT_DB_PASSWORD" "hQ3fw8t6QjYa0570z7bk")
     (eval setenv "POSTGRESQLCONNSTR_CHLTMKT_DB_USER" "chiclein")
     (eval setenv "POSTGRESQLCONNSTR_CHLTMKT_DB" "chicleindb")
     (eval setenv "POSTGRESQLCONNSTR_CHLTMKT_DEBUG" "TRUE")
     (eval setenv "CHLTMKT_SECRET_KEY" "9!#%j+2%7lq&f(%cnr35uxk(7c60tavzj!%xjwiz9lr7krnvdp")
     (eval setenv "CHLTMKT_DEBUG" "TRUE")
     (eval setenv "WEBSITE_SITE_NAME" "localhost")
     (eval setenv "DASHBOARD_DEBUG" "TRUE")
     (eval venv-workon "groodme-dashboard")
     (eval setenv "POSTGRESQLCONNSTR_CHLTMKT_DB_HOST" "localhost")
     (eval setenv "POSTGRESQLCONNSTR_CHLTMKT_DB_PASSWORD" "EgCxEJI7pRn3BDX")
     (eval setenv "POSTGRESQLCONNSTR_CHLTMKT_DB_USER" "clientarea")
     (eval setenv "POSTGRESQLCONNSTR_CHLTMKT_DB" "clientareadb")
     (eval venv-workon "estudos")
     (eval venv-workon "mailing")
     (eval venv-workon "groodme-inetools")
     (eval venv-workon "email-validator")
     (eval setenv "GROODME_DEBUG" "FALSE")
     (eval venv-workon "cp-facebook")
     (eval venv-workon "concept-guide-gen")
     (eval venv-workon "chiclein_service")
     (eval venv-workon "chiclein-service")
     (eval setenv "CHICLEIN_DEBUG" "TRUE")
     (eval venv-workon "chiclein")
     (eval venv-workon "groodme-graphics")
     (indent . 4)
     (eval venv-workon "concept-pub-builder")
     (eval venv-workon "image-curator")
     (auto-insert-alist
      ("\\.py$" . python-chtmkt))
     (eval setenv "GROODME_DEBUG" "TRUE")
     (eval venv-workon "groodme"))))
 '(send-mail-function (quote smtpmail-send-it))
 '(toolbar-visible-p nil)
 '(truncate-lines nil)
 '(user-full-name "Ronaldo Faria Lima")
 '(user-mail-address "ronaldo@chicletemkt.com")
 '(visible-bell t))
(put 'erase-buffer 'disabled nil)
;; No tabs!
(setq-default indent-tabs-mode nil)

;; Time formts
(setq display-time-format "%H:%M %d/%m/%Y")
(setq display-time-default-load-average nil)
(display-time-mode 1)

;; Skelletons
(add-to-list 'load-path "~/.emacs.d/skeletons")
(load-library "skeletons.el")
(add-hook 'find-file-hook 'auto-insert)
(setq auto-insert-alist '(("router.*\\.js$"    . node-router)
                          ("\\.js$"    . node-new-file)
						  ("\\.rb$"    . ruby-formaweb-file)
                          ("\\.c$"     . c-mit-file)
                          ("\\.h$"     . c-mit-file)
                          ("\\.swift$" . swift-mit-file)
                          ("\\.py$"    . python-chtmkt)
                          ("\\.sql$"   . skel-sql-file)))

;; Web Mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(defun chiclete-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 4)
)
(add-hook 'web-mode-hook  'chiclete-mode-hook)

;; MongoDB
(defcustom inf-mongo-command "mongo 127.0.0.1:27017" "Default MongoDB shell command used.")

;; Javascript preferences
(setq js-indent-level 4)

;; Python Preferences
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(venv-initialize-eshell)

(setq jedi:tooltip-method nil)
(add-hook 'python-mode-hook 'jedi:setup)

(setq python-indent-offset 4)
(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;; Modes
(auto-fill-mode 1)

;; Visuals
(turn-on-font-lock)       
(setq make-backup-files nil) 
(global-auto-revert-mode 1)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
(cond
 ((string-equal system-type "darwin")
  (set-face-attribute 'default nil :family "Menlo" :height 145 :weight 'normal)
  (setq mac-allow-anti-aliasing t))
 ((string-equal system-type "gnu/linux")
  (set-face-attribute 'default nil :family "Consolas" :height 145 :weight 'regular))
 )
(set-face-foreground 'default "green")
(set-face-background 'default "black")
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 120))
(tool-bar-mode 0)
(setq inhibit-startup-message t)

;; Encodings
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)

;; I prefer the scroll bar on the right side.
(set-scroll-bar-mode 'right)

;; Abbrev settings
(setq abbrev-file-name "~/.emacs.d/abbrevs.el")
(setq abbrev-mode t)

;; Keymaps
(global-set-key "%"  'match-paren)
(global-set-key [M-left] 'beginning-of-line)
(global-set-key [M-right] 'end-of-line)
(global-set-key [M-down] 'end-of-buffer)
(global-set-key [M-up] 'beginning-of-buffer)

;; Dired customizations
(require 'dired-x)
(setq dired-guess-shell-alist-user
      '(("\\.py\\'" "python")))

;; Tramp mode
(setq tramp-default-method "ssh")

;; Kill whatever is running on exit.
(require 'cl)

(defadvice save-buffers-kill-emacs
  (around no-query-kill-emacs activate)
  "Prevent \"Active processes exist\" query on exit."
  (cl-flet ((process-list ())) ad-do-it))

;; VC Customizations
(require 'vc-dir)
(define-key vc-dir-mode-map (kbd "\C-cc") 'vc-find-conflicted-file)
(setq smerge-command-prefix "\C-cm")

;; Match parenthesis function
;; Credit: Dirk Heumann routine, got in 2003
;; I still use it dude!
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

;; Hooks
;; Make hideshow minor mode always active for all program modes
(add-hook 'prog-mode-hook #'(lambda () (hs-minor-mode t)))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; Support to inferior shell
(setq shell-file-name "bash")
(setq explicit-bash-args '("--noediting" "--login" "-i"))
(setenv "SHELL" shell-file-name)
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; macOS specific preferences
(cond
 ((string-equal system-type "darwin")
  (eval-after-load "dired"
    '(progn
     (define-key dired-mode-map (kbd "z")
       (lambda () (interactive)
         (let ((fn (dired-get-file-for-visit)))
           (message "Opening `%s'" fn)
           (start-process "default-app" nil "open" fn))))))
  )
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; auto complete
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;; ido mode
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t)

;; Fixmee
(require 'button-lock)
(require 'fixmee)
(global-fixmee-mode 1)

;; Sudoku
(add-to-list 'auto-mode-alist '("\\.sdk\\'" . sudoku-mode))

;; Insert current date function
;; Reference: https://www.emacswiki.org/emacs/InsertingTodaysDate
(require 'calendar)
(defun insdate-insert-current-date (&optional omit-day-of-week-p)
  "Insert today's date using the current locale.
  With a prefix argument, the date is inserted without the day of
  the week."
  (interactive "P*")
  (insert (calendar-date-string (calendar-current-date) nil
                                omit-day-of-week-p)))

(global-set-key "\C-x\M-d" `insdate-insert-current-date)
