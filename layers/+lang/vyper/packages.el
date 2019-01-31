;;; packages.el --- vyper layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Brooklyn Zelenka <be.zelenka@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(defconst vyper-packages
  '(vyper-mode
    ))

(defun vyper/init-vyper-mode ()
  (use-package vyper-mode
    :defer t))

;;; packages.el ends here
