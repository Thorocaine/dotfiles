;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Jonathna Peel"
      user-mail-address "me@jonathanpeel.co.za")

(setq doom-font (font-spec :family "Fira Mono" :size 16 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 19))

(setq doom-theme 'doom-dracula)

(setq display-line-numbers-type t)

(server-start)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/OneDrive/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq org-latex-listings 'minted)

(setq org-fontify-done-headline nil
      org-hide-emphasis-markers t)

(add-hook! 'org-mode-hook
  (setq visual-fill-column-width 120
        visual-fill-column-center-text t)
  (visual-fill-column-mode 1))

(use-package org-pretty-tags
  :demand t
  :config
   (setq org-pretty-tags-surrogate-strings
         (quote
          (
           ("CLR"   . "☀")
           ("DZ"    . "🌦")
           ("RA"    . "🌧")
           ("TS"    . "⛈")
           ("TSRA"  . "⛈")
           ("SN"    . "🌨")
           ("SCT"   . "🌤")
           ("BKN"   . "🌤")
           ("OVC"   . "☁")

           ("dev"  . "💻")
           ("del"  . "🚚")
           ("plan" . "📝")
           ("meet" . "📞")

           ("work"  . "⚒")
           ("birthday" . "🎂")

                )))
   (org-pretty-tags-global-mode))

(setq org-todo-keyword-faces
  '(("MEET" . "#E35DBF")
    ("PLAN" . "4d4d4d")
    ("CANCELED" . (:foreground "white" :background "#4d4d4d" :weight bold))
    ("POSTPONED" . "#008080")))

(after! org-roam
  (setq org-roam-directory (concat org-directory "/roam"))
  (setq org-roam-completion-everywhere t))

(defvar zmy-location-tag-options "@%^{LOCATION|Krasnodar|Adler}")
(defvar zmy-wether-tag-options "%^{WEATHER|CLR|DZ|RA|TS|TSRA|SN|SCT|BKN|OVC|BR|}")
(defvar zmy-tags (concat ":" zmy-location-tag-options ":" zmy-wether-tag-options ":"))
(defvar zmy-dailys-entry-template (concat "* %T " zmy-tags " \n%?"))

(setq org-roam-dailies-capture-templates
      `(("d" "Journal" entry ,zmy-dailys-entry-template
         :target (file+datetree "%<%Y>.org" ""))))

(setq org-plantuml-jar-path "/home/me/bin/plantuml.jar")
(setq org-plantuml-default-exec-mode 'executable)
(setq plantuml-default-exec-mode 'executable)
