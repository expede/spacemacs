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
    company
    flymake-vyper
    ))

(defun vyper/init-vyper-mode ()
  (use-package vyper-mode
    :defer t

    :config
    (spacemacs/set-leader-keys-for-major-mode 'vyper-mode
      "g" 'vyper-estimate-gas-at-point)))

(defun vyper/post-init-company ()
  (spacemacs|add-company-backends :modes vyper-mode))

(defun vyper/init-flymake-vyper ()
  (use-package flymake-vyper
    :defer t

    :init
    (require 'flymake-vyper)
    (add-hook 'vyper-mode-hook 'flymake-vyper-load)))

;;; packages.el ends here
