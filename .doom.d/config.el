;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;
;; Fonts
(setq doom-font (font-spec :family "Jetbrains Mono" :size 30))
(setq menu-bar-mode nil)

(setq-default tab-width 2)

;; Aeon
(projectile-add-known-project "~/aeon")
(projectile-add-known-project "~/cookbooks")
(projectile-add-known-project "~/aeon-ui")
(projectile-add-known-project "~/aeon-infrastructure")
(projectile-add-known-project "~/cookbooks")
(projectile-add-known-project "~/Dropbox/org")


;; Learnmate
(projectile-add-known-project "~/learnmate-rails")

;; Relative Line numbers
(setq display-line-numbers-type 'relative)
(global-visual-line-mode t)


;; Swap half page up and down with full page up and down in normal mode
(map! :n "C-u" #'evil-scroll-page-up)
(map! :n "C-d" #'evil-scroll-page-down)

(map! :n "C-b" #'evil-scroll-up)
(map! :n "C-f" #'evil-scroll-down)


;; Open link in browser to buildkite branch

;; Rspec config for docker
(setq rspec-use-docker-when-possible t)
(setq rspec-docker-command "docker-compose exec")
(setq rspec-docker-cwd "/var/www/aeon/")
(setq rspec-docker-container "spec")

;; TODO: write function to insert binding.pry
;; (map! :leader
;;       (:prefix "i"
;;         :desc "Insert binding.pry debug statement" "d" '(lambda (&optional) (interactive "P") (insert "binding.pry\n"))))

;; Automatically match any file called staging.conf or production.conf,
;; and then put them into nginx mode.
(add-to-list 'auto-mode-alist '("staging.conf\\'" . nginx-mode))
(add-to-list 'auto-mode-alist '("production.conf\\'" . nginx-mode))

;; Set the theme of emacs to light when it's daytime, and dark otherwise.
;; (setq doom-theme
;;       (if (< (nth 2 (decode-time (current-time))) 17)
;;           'doom-one-light
;;         'doom-one))

;; LSP settings
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))
(setq lsp-print-performance t)

(setq doom-theme 'doom-material)
;; (setq doom-theme 'doom-nord)
;; Enable dash docsets in ruby mode
(set-docsets! 'ruby-mode "Ruby on Rails" "Ruby")

;; TODO run shell in vterm within project (with name)
;; TODO change shell name to last ran command vterm
;;
;; add spc p d as 'open dired in project root'
(map! :leader "p d" #'projectile-dired)
;; add s f to switch windows (frames)
(map! :leader "s f" #'other-frame)

;; Enable notifications on mac for org-pomodoro.
;;
;; Needs terminal-notifier (brew install terminal-notifier)
;; https://gist.github.com/jstewart/7664823

;; Set rails console command to use docker
(setq projectile-rails-custom-console-command "docker-compose exec app rails c")


;; Set org directory to Dropbox/org/
(setq org-directory "~/Dropbox/org/")
(setq org-agenda-files '("~/Dropbox/org/next-aeon.org"
                        "~/Dropbox/org/next-uni.org"
                        "~/Dropbox/org/next.org"
                        "~/Dropbox/org/todo.org"
                        "~/Dropbox/org/waiting.org"
                        "~/Dropbox/org/calls.org"
                        "~/Dropbox/org/errands.org"))

;; ansible
(add-hook 'yaml-mode-hook '(lambda () (ansible 1)))


;; ;; Change cursor colour (for using the dasung)
;; (setq default-frame-alist
;;       '((cursor-color . "Black")))
;; (setq evil-normal-state-cursor '(box "blue")
;;       evil-insert-state-cursor '(bar "medium sea green")
;;       evil-visual-state-cursor '(hollow "orange"))

;; (org-gtasks-register-account :name "Hector"
;;                              :directory "~/.emacs.d/gtasks/"
;;                              :client-id "180665904652-jt3ms3pjgq2jultej2699nac0coikkng.apps.googleusercontent.com"
;;                              :client-secret "7qf0ltoVLLlzxIIWQ7R3x0Ah")

;; (org-gtasks-register-account :name "Hector"
;;                              :directory "~/.emacs.d/gtasks/"
;;                              :client-id "180665904652-jt3ms3pjgq2jultej2699nac0coikkng.apps.googleusercontent.com"
;;                              :client-secret "7qf0ltoVLLlzxIIWQ7R3x0Ah")
