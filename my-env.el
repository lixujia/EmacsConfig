;;; my-env.el --- 

;; Copyright 2013 Li Xujia
;;
;; Author: lxj@UB64
;; Version: $Id: my-env.el,v 0.0 2013/12/26 01:33:22 lxj Exp $
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
;;   (require 'my-env)

;;; Code:

(setenv "PATH" (concat (getenv "PATH") ":" "/opt/arm-tools/bin"))
(setenv "PATH" (concat (getenv "PATH") ":" "/opt/uClinux/bfin-linux-uclibc/bin"))
(setenv "PATH" (concat (getenv "PATH") ":" "/opt/uClinux/bfin-uclinux/bin"))

(provide 'my-env)
(eval-when-compile
  (require 'cl))


;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################





;;; my-env.el ends here
