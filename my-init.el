;; So the idea is that you copy/paste this code into your *scratch* buffer,
;; hit C-j, and you have a working developper edition of el-get.
;(url-retrieve
; "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
; (lambda (s)
;   (let (el-get-master-branch)
;     (goto-char (point-max))
;     (eval-print-last-sexp))))


(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
;(add-to-list 'load-path "~/.emacs.d/manual-added")

;(load "astyle-hooks.el")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(el-get 'sync)

; (add-to-list 'load-path "~/.emacs.d/myMolokai")
; ;(require 'molokai-theme-kit)
; (require 'molokai-theme)

(require 'tabbar)
(tabbar-mode 1)

; ;;; activate ecb
; (require 'ecb)
; (require 'ecb-autoloads)

; ;(require 'cc-mode+)
; (require 'cc-mode)

(require 'python-mode)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional

;(require 'org-mode)
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/org")
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (python . t)
   (js . t)
   (C . t)))

(require 'auto-complete-config)
(ac-config-default)

(autoload 'autopair-global-mode "autopair" nil t)
(autopair-global-mode)
(add-hook 'lisp-mode-hook #'(lambda () (setq autopair-dont-activate t)))

(add-hook 'python-mode-hook
          #'(lambda () (push '(?' . ?')
			     (getf autopair-extra-pairs :code))
	      (setq autopair-handle-action-fns
		    (list #'autopair-default-handle-action
			  #'autopair-python-triple-quote-action))))


(autoload 'pylookup-lookup "pylookup")
(autoload 'pylookup-update "pylookup")
(setq pylookup-program "~/.emacs.d/el-get/pylookup/pylookup.py")
(setq pylookup-db-file "~/.emacs.d/el-get/pylookup/pylookup.db")
(global-set-key "\C-ch" 'pylookup-lookup)

; 文件模板
(setq load-path (cons (expand-file-name "~/.emacs.d/lisp")
		      load-path))

  ;; 自己定义的函数，用来替换‘-’ 为 ‘_’的
  (defun myreplace (str)
    (defun real-replace (lst)
      (defun char-replace (c)
	(if (= c 45) 95 c))
      (if (car lst)
	  (cons
	   (char-replace (car lst))
	   (real-replace (cdr lst)))
	nil))
    (eval (cons 'string
		(real-replace (string-to-list str)))))

(require 'template-simple)

; (require 'auto-complete-clang)
; (global-set-key (kbd "C-.") 'ac-complete-clang)

; (defun my:ac-c-headers-init ()
;     (require 'auto-complete-c-headers)
;       (add-to-list 'ac-sources 'ac-source-c-headers)
;       (add-to-list 'achead:include-directories '"/usr/local/include")
;       (add-to-list 'achead:include-directories '"/usr/include/x86_64-linux-gnu")
;       (add-to-list 'achead:include-directories '"/usr/include")
;       (add-to-list 'achead:include-directories '"."))
; 
; (add-hook 'c++-mode-hook 'my:ac-c-headers-init)
; (add-hook 'c-mode-hook 'my:ac-c-headers-init)
; 
; (setq ac-clang-flags (list "-I/usr/local/include"
;                            "-I/usr/include/x86_64-linux-gnu"
;                            "-I/usr/include"
;                            "-I/usr/include/linux"
;                            "-I/usr/include/c++/4.8"
;                            "-I/usr/include/c++/4.8/tr1"
;                            "-I/usr/include/x86_64-linux-gnu/c++/4.8"
;                            "-I/home/lxj/codes/MyIncludes"))
; smex 
;(global-set-key [(meta x)] (lambda ()
;                             (interactive)
;                             (or (boundp 'smex-cache)
;                                 (smex-initialize))
;                             (global-set-key [(meta x)] 'smex)
;                             (smex)))
;
;(global-set-key [(shift meta x)] (lambda ()
;                                   (interactive)
;                                   (or (boundp 'smex-cache)
;                                       (smex-initialize))
;                                   (global-set-key [(shift meta x)] 'smex-major-mode-commands)
;                                   (smex-major-mode-commands)))

(add-to-list 'load-path "~/.emacs.d/yasnippet-0.6.1c")
(require 'yasnippet)

(setq yas/root-directory "~/.emacs.d/snippets")
(yas/load-directory yas/root-directory)
(yas/global-mode 1)
(yas/minor-mode 1)

; (require 'xcscope+)

(require 'linum-ex)
(global-linum-mode 1)

(setq sml/no-confirm-load-theme t)
(sml/setup)

(require 'virtualenvwrapper)
(venv-initialize-eshell)
(venv-initialize-interactive-shells)
(setq venv-location "~/PyEnv/")

(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(add-hook 'after-init-hook #'global-flycheck-mode)

;(require 'undo-tree)
;(global-undo-tree-mode)

; (require 'ido-gnus)
; (ido-mode 1)

;(require 'sr-speedbar)
;(setq sr-speedbar-right-side 1)

(provide 'my-init)


