;; Gripes

;; lingering minibuffer prompts? C-o C-g

;; How do I...
;;   Pipe stdout into the ae cmd-line util?

;; General
;;   Set default tab to 2
;;   I would like auto-indentation when inside a code block or other nested code
;;   I would like a command combo to flash/highlight the current line really loudly

;; Haml-mode
;;   Ruby syntax highlighting doesn't take place if you have a space after the = sign
;;   Div declarations shouldn't be a different color fom classes, tags
;;   Sass: default tab indentation is 4 spaces, why?
;;   Sass: selector names with dashes not highlighted completely
;;   In general, what the fuck is up with tab indentation?
;;   Constants lack highlighting
;;   Hashes after tags are no longer highlighted after braces are closed
;;   Strings with dots in them break highlighting

;; Rinari (?)
;;   Class constant not highlighted correctly, eg Status::NEW

;; Shortcut cheetsheet

;; C-h k describe key
;;     m          modes
;;     v          variable
;;     f          function
;;     i          general info

;; M-x shell
;; C-d      exit

;; C-x n n narrow to region
;;       w zoom out


;; Notes
;; "electric indentation" controls indentation
;; ruby mode missing electric indentation?
;; tramp: edit remote files over ssh
;;        from dired, C-x f /user@host:
;; whenever you update your .emacs you can highlight the region you added and do
;; M-x eval-region
;; or
;; M-x eval-buffer
;; You even have a "command line" eval with 
;; M-x eval-expression
;;
;;
;;
;; M-x customize-face RET linum
;; http://www.emacswiki.org/emacs/LineNumbers
;; http://homes.esat.kuleuven.be/~emacs/config.html


(add-to-list 'load-path "~/.emacs.d")

;; Application Chrome
(tool-bar-mode 0)

;; Colors n visual stuff
(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/themes/color-theme-twilight.el")
(color-theme-twilight)
;; Line highlighting
(global-hl-line-mode 1)
(set-face-background 'hl-line "#1b1b1b")
;; Gutter line numbering
(require 'linum)
(global-linum-mode 1)

;; Mode Line customizations
(display-time)

;; Minibuffer customizations

;;
;; Development tools
;;

(add-to-list 'load-path "~/.emacs.d/rinari")
(require 'rinari)

(require 'textmate)
(textmate-mode)

(require 'haml-mode)
(require 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(require 'rcodetools)

;; Tips from Greg Grubbs 4/2009

;; shows a stack trace when you get an error
;; (setq debug-on-error t)

;; never open a new window for a new buffer
;; (setq one-buffer-one-frame nil)

;; ensure that the default for searches is case-insensitive
;; (setq case-fold-search t)

;; highligt/colorize everything that can be colorized!
;; (global-font-lock-mode 1)

;; auto-compression mode! auto-uncompress visited files so you can open .zip, .gz, etc
;; (auto-compression-mode t)

;; enable hugely useful things that are disabled by default
;; (put 'narrow-to-region 'disabled nil)
;; (put 'set-goal-column 'disabled nil)

;; keep the screen from jumping wildly as I cursor down/up
;; (setq scroll-conservatively 5)

;; do NOT add newlines if I cursor past last line in file
;; (setq next-line-add-newlines nil)

;; show completions in the minubuffer as you type
;; (call-if-fbound 'icomplete-mode)

;; change title to name of buffer
;; (setq frame-title-format (concat "emacs@" (system-name) " - %f; %b"))

;; if point is at end of line, keep it there for vertical movement
;; (setq track-eol t)

