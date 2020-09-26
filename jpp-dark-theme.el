(deftheme jpp-dark
  "Created 2018-02-18.")

;; Foreground colors
(defvar fg "#f4f4f4")

(defvar fg-dark-gray-1 "#000000")
(defvar fg-dark-gray-2 "#585858")

(defvar fg-gray-1 "#848484")
(defvar fg-gray-2 "#c6c6c6")

(defvar fg-white-1 "#ffffff")

(defvar fg-magenta-1 "#f33eff")
(defvar fg-red-1     "#ff4d36")
(defvar fg-orange-1  "#ffc557")
(defvar fg-yellow-1  "#fffe44")
(defvar fg-green-1   "#17bf74")
(defvar fg-cyan-1    "#43dcfd")
(defvar fg-blue-1    "#57a0ff")

(defvar fg-magenta-2 "#f784ff")
(defvar fg-red-2     "#ff8294")
(defvar fg-orange-2  "#ffcf76")
(defvar fg-yellow-2  "#ffff7a")
(defvar fg-green-2   "#1ce68c")
(defvar fg-cyan-2    "#85e9ff")
(defvar fg-blue-2    "#7ab4ff") 

;; Background colors
(defvar bg "#1c1e20")

(defvar bg-dark-gray-1 "#1c2e20")
(defvar bg-dark-gray-2 "#242629")
(defvar bg-dark-gray-3 "#2c3033")
(defvar bg-dark-gray-4 "#313438")
(defvar bg-dark-gray-5 "#3c4045")
(defvar bg-dark-gray-6 "#4b5157")

(defvar bg-magenta-1 "#711b71")
(defvar bg-red-1     "#7c251a")
(defvar bg-orange-1  "#967433")
(defvar bg-yellow-1  "#807a22")
(defvar bg-green-1   "#133d13")
(defvar bg-cyan-1    "#103a3a")
(defvar bg-blue-1    "#2d2e58")

(defvar bg-magenta-2 fg-magenta-1)
(defvar bg-red-2     fg-red-1)
(defvar bg-orange-2  fg-orange-1)
(defvar bg-yellow-2  fg-yellow-1)
(defvar bg-green-2   fg-green-1)
(defvar bg-cyan-2    fg-cyan-1)
(defvar bg-blue-2    fg-blue-1)

(custom-theme-set-faces
 'jpp-dark

 ;; ----- basic fonts -----
 `(default ((t (:foreground ,fg :background ,bg))))
 `(vertical-border ((t (:foreground ,bg-dark-gray-1 background ,bg))))
 `(fringe ((t (:background ,bg :foreground ,fg-dark-gray-2))))

 ;; basic UI
 `(minibuffer-prompt ((t (:foreground ,fg-white-1))))
 `(mode-line ((t (:background ,bg-dark-gray-2 :foreground ,fg-gray-1))))
 `(mode-line-inactive ((t (:background ,bg-dark-gray-2 :foreground ,fg-gray-1))))
 `(mode-line-highlight ((t nil)))
 `(mode-line-buffer-id ((t (:background ,bg-dark-gray-2 :foreground ,fg-white-1 :inherit 'bold))))
 `(link ((t (:foreground ,fg-white-1 :underline t))))
 `(link-visited ((t (:foreground ,fg-white-1 :underline t))))
 `(header-line ((t (:foreground nil :background nil :inherit 'bold))))

 ;; Dired
 `(dired-directory ((t (:foreground ,fg))))
 `(dired-symlink ((t (:foreground ,fg))))
 `(dired-header ((t (:foreground ,fg-white-1 :inherit 'bold))))
 `(dired-flagged ((t (:foreground ,fg-white-1 :background ,bg-red-2))))

 ;; highlight, search, selection
 `(highlight ((t (:background ,bg-dark-gray-2))))
 `(region ((t (:foreground ,fg-white-1 :background ,bg-dark-gray-6))))
 `(isearch ((t (:foreground ,fg-dark-gray-1 :background ,bg-yellow-2))))
 `(lazy-highlight ((t (:foreground ,fg-white-1 :background ,bg-dark-gray-6))))
 `(isearch-fail ((t (:background ,bg-red-2))))

 ;; ----- font lock -----
 `(font-lock-builtin-face ((t (:foreground nil :inherit 'default))))
 `(font-lock-string-face ((t (:foreground ,fg-green-2))))
 `(font-lock-keyword-face ((t (:foreground ,fg-cyan-2))))
 `(font-lock-type-face ((t (:foreground ,fg-yellow-1))))
 `(font-lock-variable-name-face ((t (:foreground ,fg-orange-2))))
 `(font-lock-function-name-face ((t (:foreground ,fg-yellow-2))))
 `(font-lock-comment-face ((t (:foreground ,fg-blue-2))))
 `(font-lock-constant-face ((t (:foreground ,fg-blue-1))))
 `(error ((t (:foreground ,fg-white-1))))
 `(sh-quoted-exec ((t (:inherit 'font-lock-string-face))))
 `(css-proprietary-property ((t (:inherit css-property))))
 `(sh-heredoc ((t (:inherit 'font-lock-string-face))))

 ;; ----- helm -----
 `(helm-selection ((t (:background ,bg-dark-gray-4))))
 `(helm-selection-line ((t (:inherit 'helm-selection))))
 `(helm-match ((t (:foreground ,fg-blue-1))))
 `(helm-M-x-key ((t (:inherit link))))

 `(helm-candidate-number ((t (:foreground nil :background nil))))
 `(helm-header ((t (:inherit 'default))))
 `(helm-source-header ((t (:background nil :foreground ,fg-white-1 :inherit 'bold))))
 `(helm-buffer-directory ((t (:background nil :foreground nil))))
 `(helm-buffer-file ((t (:background nil :foreground nil))))
 `(helm-buffer-not-saved ((t (:background nil :foreground nil))))
 `(helm-buffer-modified ((t (:background nil :foreground nil))))
 `(helm-buffer-process ((t (:background nil :foreground nil))))
 `(helm-buffer-saved-out ((t (:background nil :foreground nil))))
 `(helm-non-file-buffer ((t (:inherit 'default))))
 `(helm-buffer-size ((t (:inherit 'default))))

 `(helm-ff-prefix ((t (:foreground nil :background nil :inherit 'bold))))
 `(helm-ff-directory ((t (:foreground ,fg-white-1 :background nil))))
 `(helm-ff-dotted-directory ((t (:foreground nil :background nil))))
 `(helm-ff-dotted-symlink-directory ((t (:foreground nil :background nil))))
 `(helm-ff-executable ((t (:foreground nil :background nil))))
 `(helm-ff-invalid-symlink ((t (:foreground nil :background nil))))
 `(helm-ff-symlink ((t (:foreground nil :background nil))))
 `(helm-history-remote ((t (:foreground nil :background nil))))

 `(helm-moccur-buffer ((t (:foreground ,fg-white-1 :underline t))))
 `(helm-grep-lineno ((t (:foreground ,fg))))

 ;; ----- ivy -----
 `(ivy-current-match ((t (:background ,bg-dark-gray-4 :foreground ,fg-white-1))))
 `(ivy-minibuffer-match-face-1 ((t (:inherit 'default))))
 `(ivy-minibuffer-match-face-2 ((t (:inherit 'default))))
 `(ivy-minibuffer-match-face-3 ((t (:inherit 'default))))
 `(ivy-minibuffer-match-face-4 ((t (:inherit 'default))))

 ;; ----- magit -----
 `(magit-header-line ((t (:foreground ,fg-white-1 :inherit 'bold))))
 `(magit-section-heading ((t (:inherit 'magit-header-line))))
 `(magit-section-highlight ((t (:foreground nil :background nil))))
 `(magit-diff-hunk-heading ((t (:foreground nil :background nil))))
 `(magit-diff-hunk-heading-highlight ((t (:inherit 'magit-diff-hunk-heading))))
 `(magit-diff-context-highlight ((t (:inherit 'magit-diff-context))))
 `(magit-diff-added ((t (:foreground ,fg-green-1 :background ,bg :inherit 'default))))
 `(magit-diff-added-highlight ((t (:inherit 'magit-diff-added))))
 `(magit-diff-base-higlight ((t (:inherit 'magit-diff-base))))
 `(magit-diff-removed ((t (:foreground ,fg-red-1 :background ,bg :inherit 'default))))
 `(magit-diff-removed-highlight ((t (:inherit 'magit-diff-removed))))
 `(magit-diff-our-highlight ((t (:inherit 'magit-diff-our))))
 `(magit-diff-their-highlight ((t (:inherit 'magit-diff-their))))
 `(magit-diff-whitespace-warning ((t (:background nil))))
 `(magit-branch-local ((t (:foreground ,fg-white-1))))
 `(magit-branch-remote ((t (:foreground ,fg-white-1))))
 `(magit-tag ((t (:foreground ,fg-white-1))))
 `(magit-diff-file-heading-selection ((t (:inherit 'region))))
 `(magit-diff-hunk-heading-selection ((t (:inherit 'region))))
 `(magit-section-heading-selection ((t (:inherit 'region))))
 `(magit-diff-lines-boundary ((t (:inherit 'region))))
 `(magit-diff-lines-heading ((t (:inherit 'default))))
 `(magit-diff-hunk-region ((t (:inherit 'region))))
 `(magit-hash ((t ())))
 `(magit-log-author ((t ())))
 `(git-commit-summary ((t (:foreground ,fg-white-1))))

 ;; ----- diff ----
 `(diff-context ((t (:inherit 'default))))

 ;; ----- treemacs -----
 `(treemacs-file-face ((t (:foreground ,fg-gray-2))))
 `(treemacs-directory-face ((t (:inherit 'treemacs-file-face))))
 `(treemacs-git-added-face ((t (:inherit (font-lock-type-face treemacs-file-face)))))
 `(treemacs-git-conflict-face ((t (:inherit (error treemacs-file-face)))))
 `(treemacs-git-ignored-face ((t (:foreground ,fg-gray-1 :inherit 'treemacs-file-face))))
 `(treemacs-git-modified-face ((t (:inherit (font-lock-type-face treemacs-file-face)))))
 `(treemacs-git-renamed-face ((t (:inherit (font-lock-doc-face treemacs-file-face)))))
 `(treemacs-git-untracked-face ((t (:inherit (font-lock-string-face treemacs-file-face)))))
 `(treemacs-header-face ((t (:inherit treemacs-file-face :foreground ,fg-white-1))))
 `(treemacs-term-node-face ((t (:foreground ,fg-gray-1))))
 `(treemacs-root-face ((t (:foreground ,fg-gray-2))))
 ;; Not an official Treemacs face: used by my treemacs-mode-handler to set the default face for the
 ;; Treemacs pane
 `(treemacs-default-face ((t (:foreground ,fg-gray-2 :background ,bg))))
 `(treemacs-highlight-face ((t (:foreground ,fg-white-1 :background ,bg-dark-gray-6))))

 ;; ----- diff -----
 `(diff-header ((t (:inherit 'default :foreground ,fg-white-1))))
 `(diff-file-header ((t (:inherit 'diff-header))))
 `(diff-removed ((t (:foreground ,fg-red-1 :background ,bg :inherit 'default))))
 `(diff-added ((t (:foreground ,fg-green-1 :background ,bg :inherit 'default))))

 ;; ----- org mode -----
 `(org-level-1 ((t (:inherit (bold default)))))
 `(org-level-2 ((t (:inherit (bold default)))))
 `(org-level-3 ((t (:inherit (bold default)))))
 `(org-level-4 ((t (:inherit (bold default)))))
 `(org-level-5 ((t (:inherit (bold default)))))
 `(org-level-6 ((t (:inherit (bold default)))))
 `(org-level-7 ((t (:inherit (bold default)))))

 ;; ----- compilation/grep -----
 `(compilation-info ((t (:inherit 'link))))
 `(compilation-mode-line-run ((t (:inherit 'bold))))
 `(compilation-mode-line-fail ((t (:inherit 'bold))))
 `(compilation-mode-line-exit ((t (:inherit 'bold))))

 `(line-number ((t (:foreground ,fg-dark-gray-2))))
 `(line-number-current-line ((t (:foreground ,fg-white-1 :inherit 'bold))))

 ;; ----- whitespace-mode ----
 `(whitespace-tab ((t (:inherit 'default :foreground ,fg-dark-gray-2))))
 `(whitespace-space ((t (:inherit 'default :foreground ,fg-dark-gray-2))))
 `(whitespace-newline ((t (:inherit 'default :foreground ,fg-dark-gray-2))))
 `(whitespace-trailing ((t (:inherit 'default :foreground ,fg-dark-gray-2))))

 ;; ----- customize ----
 `(custom-variable-tag ((t (:inherit 'default))))
 `(custom-comment-tag ((t (:inherit 'default))))
 `(custom-face-tag ((t (:inherit 'default))))
 `(custom-group-tag ((t (:inherit 'default))))

 ;; ----- evil-mode ----
  `(evil-ex-info ((t (:inherit 'default :foreground ,fg-red-1))))
  `(evil-ex-substitute-matches ((t (:inherit 'default :foreground ,fg-dark-gray-1 :background ,bg-yellow-2))))
  `(evil-ex-substitute-replacement ((t (:inherit 'default :foreground ,fg-dark-gray-1 :background ,bg-orange-2))))

  ;; Not official evil faces: faces I add in my emacs setup for modeline indicators
  `(evil-ml-normal ((t (:foreground ,fg-dark-gray-1 :background ,bg-magenta-2 :inherit 'bold))))
  `(evil-ml-insert ((t (:foreground ,fg-dark-gray-1 :background ,bg-green-2 :inherit 'bold))))
  `(evil-ml-visual ((t (:foreground ,fg-dark-gray-1 :background ,bg-blue-2 :inherit 'bold))))
  `(evil-ml-misc ((t (:foreground ,fg-dark-gray-1 :background ,bg-orange-2 :inherit 'bold))))
 
  ;; ----- smerge ----
  `(smerge-upper ((t (:background ,bg-red-1))))
  `(smerge-lower ((t (:background ,bg-green-1))))
  `(smerge-refined-removed ((t (:background ,bg-red-2))))
  `(smerge-refined-added ((t (:background ,bg-green-2))))
  `(smerge-markers ((t (:background ,bg-dark-gray-4))))

  ;; ----- markdown ----
  `(markdown-markup-face ((t (:foreground ,fg-gray-1))))
  `(markdown-header-face ((t (:inherit (bold default)))))
  `(markdown-header-face-1 ((t (:inherit (bold default)))))
  `(markdown-header-face-2 ((t (:inherit (bold default)))))
  `(markdown-header-face-3 ((t (:inherit (bold default)))))
  `(markdown-header-face-4 ((t (:inherit (bold default)))))
  `(markdown-header-face-5 ((t (:inherit (bold default)))))
  `(markdown-header-face-6 ((t (:inherit (bold default)))))
  `(markdown-blockquote-face ((t (:foreground ,fg-gray-2))))
  `(markdown-pre-face ((t (:inherit 'default))))
  `(markdown-url-face ((t (:foreground ,fg-gray-2))))
  `(markdown-language-keyword-face ((t (:foreground ,fg-gray-1))))
)
(provide-theme 'jpp-dark)

(provide 'jpp-dark-theme)

;; jpp-dark-theme.el ends here
