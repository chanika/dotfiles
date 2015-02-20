(require 'package)
(add-to-list 'package-archives
     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

(add-to-list 'load-path "~/git/elisp")
(load-library "appearance")
(load-library "modes")
(load-library "helpers")
(load-library "vt-funcs")
(load-library "binds")
