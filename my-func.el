;;; my-func.el --- 

;; Copyright 2014 Li Xujia
;;
;; Author: lxj@UB64
;; Version: $Id: my-func.el,v 0.0 2014/07/23 02:57:56 lxj Exp $
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
;;   (require 'my-func)

;;; Code:

(provide 'my-func)
(eval-when-compile
  (require 'cl))


;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################


(defun zh_date ()
  "Get the date of today, with Chinese language and format"
  (let ((wday (string-to-int (format-time-string "%w"))))
        (concat (format-time-string "%Y年%m月%d日 ")
                (nth wday '(" " "星期一" "星期二" "星期三" "星期四" "星期五" "星期六" "星期日")))))


;;; my-func.el ends here
