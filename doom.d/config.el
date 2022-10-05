;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Jonathna Peel"
      user-mail-address "me@jonathanpeel.co.za")

(setq doom-font (font-spec :family "Noto Sans Mono" :size 15 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Noto Sans Mono" :size 19))

(setq doom-theme 'doom-dracula)

(setq display-line-numbers-type t)

(add-hook 'emacs-startup-hook 'toggle-frame-maximized)

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
           ("SCT"   . "🌤")
           ("BKN"   . "🌤")
           ("OVC"   . "☁")
           ("RA"    . "🌧")
           ("SN"    . "🌨")
           ("TS"    . "⛈")

           ("dev"  . "💻")
           ("del"  . "🚚")
           ("plan" . "📝")
           ("meet" . "📞")

           ("work"  . "⚒")
           ("birthday" . "🎂")

                )))
   (org-pretty-tags-global-mode))

(after! org-roam
  (setq org-roam-directory (concat org-directory "/roam"))
  (setq org-roam-completion-everywhere t)

(setq org-roam-dailies-capture-templates
        '(("d" "Journal" entry "* %<%H:%M>\t:%^{WEATHER|CLR|SCT|BKN|OVC|RA|SN|TS|}:\n \n%?"
        :if-new (file+head+olp "%<%Y-w%V>.org"
                               ":PROPERTIES:
:ROAM_ALIASES: %<%Y-w%V>
:END:
#+title: %<%Y>, week %<%V>
#+author: Jonathan Peel
#+filetags: :@%^{LOCATION|Krasnodar|Adler}:journal:%<%Y:w%V:>"
                               ("[%<%F>] \t:%<%B:%A>:"))
        :empty-lines 1)))
)

(setq org-roam-db-gc-threshold most-positive-fixnum)
