;;; packages.el --- xkcd Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2021 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.


(setq xkcd-packages '(xkcd))

(defun xkcd/init-xkcd ()
  (use-package xkcd-mode
    :defer t
    :init
    (progn
      (setq xkcd-cache-dir (concat spacemacs-cache-directory "xkcd/"))
      (when (not (file-directory-p xkcd-cache-dir))
        (make-directory xkcd-cache-dir))
      (spacemacs/set-leader-keys
        "afx" 'xkcd)
      (evilified-state-evilify xkcd-mode xkcd-mode-map
        "h" 'xkcd-prev
        "j" 'xkcd-next
        "k" 'xkcd-prev
        "l" 'xkcd-next))))
