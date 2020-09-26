(deftheme jpp-lite
  "Created 2018-02-18.")

(defvar fg "#1c1c1c")
(defvar bg "#f7f7f7")

(defvar fg-bright "#000000")
(defvar vert-border "#e4e4e4")
(defvar fg-fringe "#a8a8a8")
(defvar cursor "#1dc000")

(defvar ml-bg "#f7f7f7")
(defvar ml-bg-i "#f7f7f7")
(defvar ml-fg "#000000")
(defvar ml-fg-i "#000000")

(defvar fl-string "#0000d7")
(defvar fl-keyword "#875f00")
(defvar fl-type "#005fff")
(defvar fl-function "#d700af")
(defvar fl-comment "#005f00")
(defvar fl-variable "#870000")

(defvar region-bg "#e0e0e4")
(defvar region-fg "#000000")
;; I can't figure out how to disable hl-line mode in doom emacs
;; So I'm just making the face invisible
(defvar hl-bg "#f7f7f7")
(defvar isearch-bg "#ffff00")
(defvar isearch-lazy-bg "#eeeeee")

(defvar linum-fg "#a8a8a8")
(defvar linum-bg bg)
(defvar nlinum-current-fg fg)
(defvar nlinum-current-bg bg)

(defvar ln-fg "#a8a8a8")
(defvar ln-c-fg fg-bright)

(defvar helm-selection-bg region-bg)
(defvar helm-selection-fg region-fg)

(defvar error-color "#af0000")

(defvar diff-added-fg "#007000")
(defvar diff-removed-fg "#af0000")

(defvar yascroll-bg "#7c7c7c")

(defvar whitespace-mode-fg "#a8a8a8")

(defvar treemacs-bg bg)

(custom-theme-set-faces
 'jpp-lite

 ;; ----- basic fonts -----
 `(default ((t (:foreground ,fg :background ,bg))))
 `(vertical-border ((t (:foreground ,vert-border))))
 `(fringe ((t (:background ,bg :foreground ,fg-fringe))))

 ;; basic UI
 `(cursor ((t (:background ,cursor))))
 `(minibuffer-prompt ((t (:foreground ,fg-bright))))
 `(mode-line ((t (:background ,ml-bg :foreground ,ml-fg))))
 `(mode-line-inactive ((t (:background ,ml-bg-i :foreground ,ml-fg-i))))
 `(mode-line-buffer-id ((t (:inherit 'bold))))
 `(mode-line-highlight ((t nil)))
 `(link ((t (:foreground ,fg-bright :underline t))))
 `(link-visited ((t (:foreground ,fg-bright :underline t))))
 `(header-line ((t (:foreground nil :background nil :inherit 'bold))))

 ;; Dired
 `(dired-directory ((t (:foreground ,fg-bright))))
 `(dired-header ((t (:foreground ,fg-bright :inherit 'bold))))
 `(dired-flagged ((t (:background ,error-color :foreground ,bg :inherit 'bold))))

 ;; highlight, search, selection
 `(highlight ((t (:background ,hl-bg))))
 `(region ((t (:foreground ,region-fg :background ,region-bg))))
 `(isearch ((t (:foreground ,fg-bright :background ,isearch-bg))))
 `(isearch-fail ((t (:background ,error-color :foreground ,bg))))
 `(lazy-highlight ((t (:foreground ,fg-bright :background ,isearch-lazy-bg))))

 ;; ----- font lock -----
 `(font-lock-builtin-face ((t (:foreground nil :inherit 'default))))
 `(font-lock-string-face ((t (:foreground ,fl-string))))
 `(font-lock-keyword-face ((t (:foreground ,fl-keyword))))
 `(font-lock-type-face ((t (:foreground ,fl-type))))
 `(font-lock-variable-name-face ((t (:foreground ,fl-variable))))
 `(font-lock-function-name-face ((t (:foreground ,fl-function))))
 `(font-lock-comment-face ((t (:foreground ,fl-comment))))
 `(font-lock-constant-face ((t (:foreground ,fg-bright))))
 `(error ((t (:foreground ,fg-bright))))
 `(sh-quoted-exec ((t (:inherit 'font-lock-string-face))))
 `(sh-heredoc ((t (:inherit 'font-lock-string-face))))

 ;; ----- linum -----
 `(linum ((t (:foreground ,linum-fg :background ,linum-bg))))
 `(nlinum-current-line ((t (:foreground ,nlinum-current-fg :background ,nlinum-current-bg :inherit 'bold))))

 ;; display-line-number-mode
 `(line-number ((t (:foreground ,ln-fg))))
 `(line-number-current-line ((t (:foreground ,ln-c-fg :inherit 'bold))))

 ;; ----- helm -----
 `(helm-selection ((t (:background ,helm-selection-bg :foreground ,helm-selection-fg))))
 `(helm-selection-line ((t (:inherit 'helm-selction))))
 `(helm-match ((t (:inherit 'bold))))
 `(helm-M-x-key ((t (:inherit link))))

 `(helm-candidate-number ((t (:foreground nil :background nil))))
 `(helm-header ((t (:inherit 'default))))
 `(helm-source-header ((t (:background nil :foreground ,fg-bright :inherit 'bold))))
 `(helm-buffer-directory ((t (:background nil :foreground nil))))
 `(helm-buffer-file ((t (:background nil :foreground nil))))
 `(helm-buffer-not-saved ((t (:background nil :foreground nil))))
 `(helm-buffer-modified ((t (:background nil :foreground nil))))
 `(helm-buffer-process ((t (:background nil :foreground nil))))
 `(helm-buffer-saved-out ((t (:background nil :foreground nil))))
 `(helm-non-file-buffer ((t (:inherit 'default))))
 `(helm-buffer-size ((t (:inherit 'default))))

 `(helm-ff-prefix ((t (:foreground nil :background nil :inherit 'bold))))
 `(helm-ff-directory ((t (:foreground ,fg-bright :background nil))))
 `(helm-ff-dotted-directory ((t (:foreground nil :background nil))))
 `(helm-ff-dotted-symlink-directory ((t (:foreground nil :background nil))))
 `(helm-ff-executable ((t (:foreground nil :background nil))))
 `(helm-ff-invalid-symlink ((t (:foreground nil :background nil))))
 `(helm-ff-symlink ((t (:foreground nil :background nil))))
 `(helm-history-remote ((t (:foreground nil :background nil))))
 `(helm-moccur-buffer ((t (:foreground ,fg-bright :inherit 'underline))))
 `(helm-grep-lineno ((t (:foreground ,fg-bright))))

 ;; ----- ivy -----
 `(ivy-current-match ((t (:background ,helm-selection-bg))))
 `(ivy-minibuffer-match-face-1 ((t (:foreground ,fg-bright :inherit 'bold))))
 `(ivy-minibuffer-match-face-2 ((t (:foreground ,fg-bright :inherit 'bold))))
 `(ivy-minibuffer-match-face-3 ((t (:foreground ,fg-bright :inherit 'bold))))
 `(ivy-minibuffer-match-face-4 ((t (:foreground ,fg-bright :inherit 'bold))))

 ;; ----- magit -----
 `(magit-header-line ((t (:foreground ,fg-bright :inherit 'bold))))
 `(magit-section-heading ((t (:inherit 'magit-header-line))))
 `(magit-section-highlight ((t (:foreground nil :background nil))))
 `(magit-diff-hunk-heading ((t (:foreground nil :background nil))))
 `(magit-diff-hunk-heading-highlight ((t (:inherit 'magit-diff-hunk-heading))))
 `(magit-diff-context-highlight ((t (:inherit 'magit-diff-context))))
 `(magit-diff-added ((t (:foreground ,diff-added-fg :inherit 'default))))
 `(magit-diff-added-highlight ((t (:inherit 'magit-diff-added))))
 `(magit-diff-base-higlight ((t (:inherit 'magit-diff-base))))
 `(magit-diff-removed ((t (:foreground ,diff-removed-fg :inherit 'default))))
 `(magit-diff-removed-highlight ((t (:inherit 'magit-diff-removed))))
 `(magit-diff-our-highlight ((t (:inherit 'magit-diff-our))))
 `(magit-diff-their-highlight ((t (:inherit 'magit-diff-their))))
 `(magit-diff-whitespace-warning ((t (:background nil))))
 `(magit-branch-local ((t (:foreground ,fg-bright))))
 `(magit-branch-remote ((t (:foreground ,fg-bright))))
 `(magit-tag ((t (:foreground ,fg-bright))))
 `(magit-diff-file-heading ((t (:inherit 'default))))
 `(magit-diff-file-heading-selection ((t (:inherit 'region))))
 `(magit-diff-hunk-heading-selection ((t (:inherit 'region))))
 `(magit-section-heading-selection ((t (:inherit 'region))))
 `(magit-diff-lines-boundary ((t (:inherit 'region))))
 `(magit-diff-lines-heading ((t (:inherit 'default))))
 `(magit-diff-hunk-region ((t (:inherit 'region))))
 `(magit-diff-context ((t (:inherit 'default))))
 `(magit-hash ((t ())))
 `(git-commit-summary ((t (:foreground ,fg-bright))))

 ;; ----- diff ----

 `(diff-context ((t (:inherit 'default))))

 ;; ----- treemacs -----
 `(treemacs-file-face ((t (:foreground ,fg :inherit 'variable-pitch))))
 `(treemacs-directory-face ((t (:inherit 'treemacs-file-face))))
 `(treemacs-git-added-face ((t (:inherit (font-lock-type-face treemacs-file-face)))))
 `(treemacs-git-conflict-face ((t (:inherit (error treemacs-file-face)))))
 `(treemacs-git-ignored-face ((t (:inherit (font-lock-comment-face treemacs-file-face)))))
 `(treemacs-git-modified-face ((t (:inherit (font-lock-type-face treemacs-file-face)))))
 `(treemacs-git-renamed-face ((t (:inherit (font-lock-doc-face treemacs-file-face)))))
 `(treemacs-git-untracked-face ((t (:inherit (font-lock-string-face treemacs-file-face)))))
 `(treemacs-root-face ((t (:inherit 'default))))
 `(treemacs-term-node-face ((t (:inherit nil :foreground ,fg-bright))))
 ;; Not an official Treemacs face: used by my treemacs-mode-handler to set the default face for the
 ;; Treemacs pane
 `(treemacs-default-face ((t (:foreground ,fg :background ,treemacs-bg))))

 ;; ----- diff -----
 `(diff-header ((t (:inherit 'default :foreground ,fg-bright))))
 `(diff-file-header ((t (:inherit 'diff-header))))
 `(diff-removed ((t (:foreground ,error-color :inherit 'default))))
 `(diff-added ((t (:foreground ,fl-string :inherit 'default))))

 ;; ----- compilation/grep -----
 `(compilation-info ((t (:inherit 'link))))
 `(compilation-mode-line-run ((t (:inherit 'bold))))
 `(compilation-mode-line-fail ((t (:inherit 'bold))))
 `(compilation-mode-line-exit ((t (:inherit 'bold))))

 ;; ----- org mode -----
 `(org-level-1 ((t (:inherit (bold default)))))
 `(org-level-2 ((t (:inherit (bold default)))))
 `(org-level-3 ((t (:inherit (bold default)))))
 `(org-level-4 ((t (:inherit (bold default)))))
 `(org-level-5 ((t (:inherit (bold default)))))
 `(org-level-6 ((t (:inherit (bold default)))))
 `(org-level-7 ((t (:inherit (bold default)))))
 `(org-level-8 ((t (:inherit (bold default)))))

 ;; ----- evil ------

 `(evil-ml-normal ((t (:foreground ,ml-fg :inherit bold))))
 `(evil-ml-insert ((t (:foreground ,ml-fg :inherit bold))))
 `(evil-ml-visual ((t (:foreground ,ml-fg :inherit bold))))
 `(evil-ml-misc ((t (:foreground ,ml-fg :inherit bold))))

 ;; ----- yascroll -----
 `(yascroll:thumb-text-area ((t (:foreground ,yascroll-bg))))
 `(yascroll:thumb-fringe ((t (:foreground ,yascroll-bg :background ,yascroll-bg))))

 ;; ----- misc -----
 `(show-paren-match ((t (:background ,isearch-bg))))

 ;; ----- whitespace-mode ----
 `(whitespace-tab ((t (:inherit 'default :foreground ,whitespace-mode-fg))))
 `(whitespace-space ((t (:inherit 'default :foreground ,whitespace-mode-fg))))
 `(whitespace-newline ((t (:inherit 'default :foreground ,whitespace-mode-fg))))
 `(whitespace-trailing ((t (:inherit 'default :foreground ,whitespace-mode-fg))))
 )

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'jpp-lite)

(provide 'jpp-lite-theme)

;; jpp-lite-theme.el ends here
