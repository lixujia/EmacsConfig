;;; my-conf.el --- 

;; Copyright 2013 Li Xujia
;;
;; Author: lxj@UB64
;; Version: $Id: my-conf.el,v 0.0 2013/12/20 05:37:45 lxj Exp $
;; Keywords: 
;; X-URL: not distributed yet

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:

;; 

;; Put this file into your load-path and the following into your ~/.emacs:
;;   (require 'my-conf)

;;; Code:

(tool-bar-mode 0)
(scroll-bar-mode 0)

;显示括号匹配
(show-paren-mode t)
;;不要生成临时文件
(setq-default make-backup-files nil)
;以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

; 关闭开始画面
(setq inhibit-startup-message t)
; 启动自动进入文本模式
;(set default-major-mode 'text-mode)

; 用空格代替tab字符进行缩进
(setq-default indent-tabs-mode nil)

(setq scroll-step 1
      scroll-margin 3
      scroll-conservatively 10000)

; 栈大小和elisp函数的递归深度设置
(setq max-lisp-eval-depth 10000)
(setq max-specpdl-size 20000)

;; For my language ﻿code setting ﻿(UTF-8)
(setq current-language-environment "UTF-8")
(setq default-input-method "chinese-py")
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; (set-default-font "Ubuntu Mono:pixelsize=16")
; (dolist (charset '(kana han symbol cjk-misc bopomofo))
;   (set-fontset-font (frame-parameter nil 'font)
;                     charset
;                     (font-spec :family "WenQuanYi Micro Hei" :size 16)))


; 缩进4个空格的风格
(setq c-default-style "linux"
          c-basic-offset 4)
; 回车是缩进新行
(global-set-key (kbd "RET") 'newline-and-indent)

(provide 'my-conf)
(eval-when-compile
  (require 'cl))

;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################





;;; my-conf.el ends here
