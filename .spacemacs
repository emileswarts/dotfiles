(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     go
     sql
     (auto-completion
         :variables
         auto-completion-tab-key-behavior 'cycle)
     better-defaults
     docker
     clojure
     emacs-lisp
     git
     github
     gtags
     html
     helm
     ibuffer
     javascript
     ;(keyboard-layout :variables kl-layout 'qwerty)
     spacemacs-language
     markdown
     spell-checking
     ruby
     colors
     ranger
     terraform
     ruby-on-rails
     (shell :variables shell-default-shell 'eshell)
     spell-checking
     semantic
     version-control
     yaml)
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

;; (defun kl/post-config-ranger ()
;;   "home row"
;;   (kl/set-in-state ranger-mode-map (kbd "n") 'ranger-next-file)
;;   (kl/set-in-state ranger-mode-map (kbd "e") 'ranger-prev-file)
;;   (kl/set-in-state ranger-mode-map (kbd "i") 'ranger-find-file)
;;   (kl/set-in-state ranger-mode-map (kbd "l") 'ranger-preview-toggle))

(defun dotspacemacs/user-init ()
  (setq-default
    ranger-show-hidden t
    ranger-show-preview t
    ranger-show-literal nil
    evil-shift-round nil
    indent-tabs-mode nil
    require-final-newline t
    ring-bell-function 'ignore
    vc-follow-symlinks t
    global-linum-mode t
    theming-modifications)
  )

(defun dotspacemacs/user-config ()
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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(evil-want-Y-yank-to-eol t)
 '(package-selected-packages
   (quote
    (inf-ruby go-guru go-eldoc company-go go-mode zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme rainbow-mode rainbow-identifiers color-identifiers-mode floobits ibuffer-projectile clojure-snippets clj-refactor edn paredit peg cider-eval-sexp-fu cider sesman queue parseedn clojure-mode parseclj a dockerfile-mode docker tablist docker-tramp omnisharp csharp-mode magit-gh-pulls github-search github-clone github-browse-file gist gh marshal logito pcache ht typit mmt sudoku pacmacs 2048-game sql-indent noflet ensime sbt-mode scala-mode ranger terraform-mode hcl-mode powerline hydra lv avy anzu iedit smartparens evil goto-chg helm helm-core async projectile f dash yaml-mode xterm-color web-mode web-beautify unfill tagedit stickyfunc-enhance srefactor smeargle slim-mode shell-pop scss-mode sass-mode pug-mode projectile-rails inflections orgit mwim multi-term mmm-mode markdown-toc markdown-mode magit-gitflow magit-popup livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc helm-gtags helm-gitignore helm-css-scss helm-company helm-c-yasnippet haml-mode gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md ggtags fuzzy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck feature-mode evil-magit magit transient git-commit with-editor eshell-z eshell-prompt-extras esh-help emmet-mode diff-hl company-web web-completion-data company-tern dash-functional tern company-statistics company coffee-mode auto-yasnippet yasnippet auto-dictionary ac-ispell auto-complete monokai-theme ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline rvm ruby-tools ruby-test-mode rubocop rspec-mode robe restart-emacs request rbenv rake rainbow-delimiters popwin persp-mode paradox org-plus-contrib org-bullets open-junk-file neotree move-text minitest macrostep lorem-ipsum linum-relative link-hint indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word column-enforce-mode clean-aindent-mode chruby bundler auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C")))))
