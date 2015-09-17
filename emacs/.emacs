;; -*- mode: lisp -*-

;;Starts on fullscreen mode
(run-with-idle-timer 0.1 nil 'toggle-frame-fullscreen)

(add-to-list 'load-path (expand-file-name "conf" user-emacs-directory))

(require 'init-constants)
(require 'init-ui)
(require 'init-path)
(require 'init-general)
(require 'init-packages)
(require 'init-helm)
(require 'init-magit)
(require 'init-projectile)
(require 'init-rbenv)
(require 'init-web-mode)
(require 'init-yaml)
(require 'init-indent-guide)
(require 'init-ruby)
(require 'ruby-tools)
(require 'rspec-mode)
(require 'init-guide-key)

(add-to-list 'load-path (expand-file-name "conf/rails-reloaded" user-emacs-directory))
  (require 'rails-autoload)
  ;;M x + rails/bytecompile


(add-to-list 'load-path (expand-file-name "conf/robe" user-emacs-directory))
  (require 'robe)
  (add-hook 'ruby-mode-hook 'robe-mode)
  (eval-after-load 'company
    '(push 'company-robe company-backends))
  (add-hook 'robe-mode-hook 'ac-robe-setup)

(add-to-list 'load-path "~/.emacs.d/conf/emacs-pry")
(require 'pry)


(defun custom/vcr-toggle ()
 (interactive)
 (if (getenv "VCR_OFF")
 (progn
 (setenv "VCR_OFF" nil)
 (message "VCR is ON"))
 (setenv "VCR_OFF" "true")
 (message "VCR is OFF")))

(global-set-key (kbd "M-0") 'custom/vcr-toggle)


(defun custom/remote-factory-toggle ()
 (interactive)
 (if (getenv "ENABLE_REMOTE_FACTORY_GIRL")
 (progn
 (setenv "ENABLE_REMOTE_FACTORY_GIRL" nil)
 (message "ENABLE_REMOTE_FACTORY_GIRL is ON"))
 (setenv "ENABLE_REMOTE_FACTORY_GIRL" "true")
 (message "ENABLE_REMOTE_FACTORY_GIRL is OFF")))

(global-set-key (kbd "M-9") 'custom/remote-factory-toggle)




;; optional suggestions
;; (global-set-key [S-f9] 'pry-intercept)
;; (global-set-key [f9] 'pry-intercept-rerun)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a6d39b3e27d45aea4bf0c20a9f6ccbff858eae1728ac0cf72d6a86bd873202d2" "94dfc2b6a8ac8b651f9aab66bc83bd5601f47166d86ee6d2d32de7dfb881185c" "29c97163610e10f0bee2e1d87b9e01624ccee8d012fab1f7a79cf34638d23e07" "77fac25c0276f636e3914636c45f714c2fd688fe1b1d40259be7ce84b8b5ab1e" "5e1d1564b6a2435a2054aa345e81c89539a72c4cad8536cfe02583e0b7d5e2fa" "cc495c40747ae22dd2de6e250cbd9a408e3588b59989368af565deeeff334126" "6184465774e662dc5f3ddb0751b20d97aaff2ae95d5cf3c885b6c1944ddcb371" "5d139820639cd941c60033dcdd462bf5fffa76da549e6bdf1d83945803d30f01" "67b6ff0b4786c485ea606167da3b963a35ba37406017c4f50754dcd16230b75b" "d3a86848a5e9bf123f3dd3bf82ab96995837b50f780dd7d5f65dc72c2b81a955" "6dbd0dd4c344f1ca534422cc5a1fd3ed822dcde947ae983948b70c7284a0ed33" "d7e434a3c19f87fa00b945edfaedc9a21a6e436a7814c23277d4112ad83b5e85" "fb8f17ed4cb2111ea49a31173b422b8bc07d67ad2b634e825023d1eb2a9ddd26" "4cc014287035b11d1f8d45af1ff18f3509496a760650d16c7771ac9bdf16b1a6" "3f04f37604c5f5cc3c71bc1a4a604ed8be340d0f150946b25658e403ccbad6d2" "3328e7238e0f6d0a5e1793539dfe55c2685f24b6cdff099c9a0c185b71fbfff9" "37783713b151d949b0da66ff7cd8736dd0893089cbad12eb5a71f3a72e201b47" "1abda075ebacaa3795d675bb2be0a905322ac856f9c0c259da63f9ccfe1962ec" "3539b3cc5cbba41609117830a79f71309a89782f23c740d4a5b569935f9b7726" "adcfcefbeff31fa982f9a59dd8f5499892cbb9f26236fe38fb1226485a388e85" "8a36587d6cbcc30c85372568ed29d45ec393a32e3c779cba8cfd5fade229025d" "3f7db1a70bee5e15a3d72b016a7e05f6d813b6868e88961c46019b57d0b29452" "f0dfe326bdbb237d6bc3f533d371ffa7c894a12bb0a5bcd4cb67a948a4a13101" "f0e69da2cf73c7f153fc09ed3e0ba6e1fd670fec09b8a6a8ed7b4f9efea3b501" "73ae6088787f6f72ef52f19698b25bc6f0edf47b9e677bf0a85e3a1e8a7a3b17" "1dd2d01010a9ae1f54775abceb080e231b6f9c781c5282b25b8c4edd3f3a14e0" "6ebb2401451dc6d01cd761eef8fe24812a57793c5ccc427b600893fa1d767b1d" "9fab7d4f70b99927d898a0c93b1ae90fc1529248b9c2604ed88e864fc2665aa7" "113ae6902d98261317b5507e55ac6e7758af81fc4660c34130490252640224a2" "0240d45644b370b0518e8407f5990a243c769fb0150a7e74297e6f7052a04a72" "d72836155cd3b3e52fd86a9164120d597cbe12a67609ab90effa54710b2ac53b" "17fd8388e49d3055185e817ed3a2b7c955a2dda92b990f475c14a8e1d97dbe4b" "83279c1d867646c5eea8a804a67a23e581b9b3b67f007e7831279ed3a4de9466" "9f3a4edb56d094366afed2a9ba3311bbced0f32ca44a47a765d8ef4ce5b8e4ea" "ced74ff794aad9ac93266bf9a9a92c5641c01b05715c6862e30459a24844eec9" "fe6fb0cb1aa50dc563d81aad98c470a30f4e89db6d55a108f1083f33317ad413" "17f35b689dd41e49cb740bfb810ac8a53d13292cbebf68f41f772787d8b3aebf" "ff5acbbf20c7ba4889eb2b14395fcd55eeecbfb57853e47c7d514503ad83d6bb" "e7ec0cc3ce134cc0bd420b98573bbd339a908ac24162b8034c98e1ba5ee1f9f6" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
