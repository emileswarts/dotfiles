(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     html
     yaml
     ruby
     (auto-completion
         :variables
         auto-completion-tab-key-behavior 'cycle)
     github
     git
     helm
     ibuffer
     javascript
     ;(keyboard-layout :variables kl-layout 'qwerty)
     ;; spacemacs-language
     markdown
     (ruby :variables ruby-version-manager 'rbenv
                      ruby-enable-enh-ruby-mode t)
     ranger
     osx
     terraform
     ;; ruby-on-rails
     ;; (shell :variables shell-default-shell 'eshell)
     spell-checking
     ;; semantic
     version-control
     )
   dotspacemacs-additional-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  (setq-default
   js2-strict-missing-semi-warning nil
   js2-missing-semi-one-line-override nil
   js2-basic-offset 2
   js-indent-level 2
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '(recents projects)
   dotspacemacs-startup-recent-list-size 5
   dotspacemacs-themes '(monokai
                         solarized-dark
                         leuven
                         zenburn)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Source Code Pro"
                               :size 17
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-command-key ":"
   dotspacemacs-remap-Y-to-y$ t
   dotspacemacs-auto-save-file-location 'nil
   dotspacemacs-use-ido nil
   dotspacemacs-helm-resize nil
   dotspacemacs-helm-no-header t
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   dotspacemacs-which-key-delay 1
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar nil
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup t
   evil-escape-key-sequence (kbd "tn")
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling nil
   smooth-scroll-margin nil
   smooth-scroll-strict-margins t
   smooth-scroll-lines-from-window-top 0
   smooth-scroll-lines-from-window-bottom 0
   dotspacemacs-line-numbers t
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  (setq-default
    ranger-show-hidden t
    ranger-show-preview t
    ;; ranger-cleanup-eagerly t
    ;; ranger-show-literal nil
    ;; ranger-cleanup-on-disable t
    evil-shift-round nil
    indent-tabs-mode nil
    require-final-newline t
    ring-bell-function 'ignore
    vc-follow-symlinks t
    global-linum-mode t
    theming-modifications)
  )

(defun dotspacemacs/user-config ()
  (add-hook 'enh-ruby-mode-hook (lambda () (rainbow-delimiters-mode -1)) t)
  ;; (use-package osx-clipboard
  ;;   :config
  ;;   (progn
  ;;     (osx-clipboard-mode +1)
  ;;     (diminish 'osx-clipboard-mode)))

    (evil-leader/set-key
    "fef" '(lambda () (interactive) (find-file "~/formbuilder_cheatsheet.org"))
    "feg" '(lambda () (interactive) (find-file "~/gov_cheatsheet"))
    "fes" '(lambda () (interactive) (find-file "~/spacemacs_notes.org"))
    "fen" '(lambda () (interactive) (find-file "~/notes"))
  )

  (let ((comint-hooks '(eshell-mode-hook
                        term-mode-hook
                        erc-mode-hook
                        messages-buffer-mode-hook
                        comint-mode-hook)))
    (spacemacs/add-to-hooks (defun bb/no-hl-line-mode ()
                              (setq-local global-hl-line-mode nil))
                            comint-hooks))
   )
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (bind-key dash-functional hydra f phpunit phpcbf php-extras php-auto-yasnippets drupal-mode php-mode evil company lv yasnippet with-editor smartparens highlight request helm helm-core projectile avy ht org-plus-contrib magit transient git-commit async inf-ruby simple-httpd dash macrostep elisp-slime-nav define-word auto-compile packed yaml-mode ws-butler winum which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toc-org terraform-mode tagedit spaceline smeargle slim-mode scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reveal-in-osx-finder restart-emacs rbenv ranger rake rainbow-delimiters pug-mode popwin persp-mode pbcopy paradox osx-trash osx-dictionary orgit org-bullets open-junk-file neotree move-text monokai-theme mmm-mode minitest markdown-toc magit-gitflow magit-gh-pulls lorem-ipsum livid-mode linum-relative link-hint launchctl json-mode js2-refactor js-doc indent-guide ibuffer-projectile hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md fuzzy flyspell-correct-helm flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu enh-ruby-mode emmet-mode dumb-jump diminish diff-hl company-web company-tern company-statistics column-enforce-mode coffee-mode clean-aindent-mode chruby bundler auto-yasnippet auto-highlight-symbol auto-dictionary aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
