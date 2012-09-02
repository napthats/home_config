;;basic settings
(setq load-path (cons "~/.emacs.d/elisp/" load-path))
(global-set-key "\C-h" 'delete-backward-char)
(define-key isearch-mode-map "\C-h" 'isearch-delete-char)
(setq-default indent-tabs-mode nil)
(tool-bar-mode -1)
(menu-bar-mode -1)
(show-paren-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(toggle-scroll-bar nil)

;;smart tab
(require 'smart-tab)
(global-smart-tab-mode 1)

;;scala-mode
(require 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
(add-hook 'scala-mode-hook 'jaspace-mode)

;;jsx-mode
(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/"))

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)

(custom-set-variables
 '(jsx-indent-level 2)
)

(defun jsx-mode-init ()
  (define-key jsx-mode-map (kbd "C-c d") 'jsx-display-popup-err-for-current-line)
  (when (require 'auto-complete nil t)
    (auto-complete-mode t)))

(add-hook 'jsx-mode-hook 'jsx-mode-init)

;;Marmalade
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;;evernote
(require 'evernote-mode)
(setq evernote-username "naokiyoshinaga")
(setq evernote-enml-formatter-command '("w3m" "-dump" "-I" "UTF8" "-O" "UTF8"))
(global-set-key "\C-cec" 'evernote-create-note-in-notebook)
(global-set-key "\C-ceo" 'evernote-open-note)
(global-set-key "\C-ces" 'evernote-search-notes)
(global-set-key "\C-ceS" 'evernote-do-saved-search)
(global-set-key "\C-cew" 'evernote-write-note)
(global-set-key "\C-cep" 'evernote-post-region)
(global-set-key "\C-ceb" 'evernote-browser)
