(require 'package)
(add-to-list 'package-archives
     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-to-list 'load-path "git/elisp")
(load-library "binds")
(load-library "appearance")
(load-library "modes")
(load-library "vt-funcs")