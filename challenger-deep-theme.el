;;; challenger-deep-theme.el --- Orbit Theme

;; Author: MaxSt
;; Version: 0.0.1
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/MaxSt/challenger-deep

;;; Commentary:
;; A dark color theme for Emacs

;;; Code:

(deftheme challenger-deep
  "challenger-deep theme")

(let ((c '((class color) (min-colors 89)))
      (bold           t)
      (italic         t)

      (black          "#100e23")
      (white          "#cbe3e7")
      (grey           "#cbe3e7")
      (grey-d         "#a6b3cc")
      (grey-dd        "#565575")
      (grey-ddd       "#2b2942")
      (yellow         "#ffe9aa")
      (yellow-d       "#ffb378")
      (red-d          "#ff5458")
      (red            "#ff8080")
      (magenta        "#c991e1")
      (magenta-d      "#906cff")
      (cyan           "#aaffe4")
      (cyan-d         "#63f2f1")
      (blue           "#91ddff")
      (blue-d         "#65b2ff")
      (green          "#95ffa4")
      (green-d        "#62d196"))


  (let* ((bg             "#1b182c")
         (bg-d           (if window-system "#1b182c" "#22252c"))
         (fg             grey)
         (highlight      magenta-d)
         (vertical-bar   black)
         (current-line   black)
         (selection      blue-d)
         (builtin        magenta)
         (comments       grey-dd)
         (doc-comments   green-d)
         (constants      cyan)
         (functions      magenta)
         (keywords       red)
         (methods        magenta)
         (operators      cyan-d)
         (type           blue)
         (strings        yellow)
         (variables      yellow)
         (numbers        yellow-d)
         (region         "#3d4451")
         ;; tabs
         (tab-unfocused-bg "#353a42")
         (tab-unfocused-fg "#1e2022")
         ;; main search regions
         (search-bg      cyan)
         (search-fg      black)
         ;; other search regions
         (search-rest-bg blue)
         (search-rest-fg black)
         ;; line number column
         (linum-bg       bg-d)
         (linum-fg       black)


         (linum-hl-fg    "#BBBBBB")
         (linum-hl-bg    bg-d)
         ;; mode line
         (modeline-fg    grey)
         (modeline-fg-l  blue)
         (modeline-bg    black)
         (modeline-bg-l  (if window-system blue current-line))
         (modeline-fg-inactive grey-dd)
         (modeline-bg-inactive black)
         ;; vcs
         (vc-modified    yellow-d)
         (vc-added       green)
         (vc-deleted     red))

    (custom-theme-set-faces
     'challenger-deep
     `(challenger-deep-default
       ((((type graphic)) :inherit default :background ,bg)
        (t                :inherit default)))
     `(challenger-deep-hl-line
       ((((type graphic)) :background ,current-line)
        (t                :inherit hl-line)))
     `(challenger-deep-linum
       ((((type graphic)) :inherit linum :background ,bg)
        (t                :inherit linum)))
     `(challenger-deep-minibuffer-active ((,c (:background ,bg))))
     `(challenger-deep-nlinum-highlight  ((,c (:foreground ,linum-hl-fg :bold nil))))
     `(challenger-deep-flycheck-error    ((,c (:underline nil :foreground ,black :background ,red))))
     `(challenger-deep-flycheck-warning  ((,c (:underline nil :foreground ,black :background ,yellow))))
     `(challenger-deep-flycheck-info     ((,c (:underline nil :foreground ,black :background ,green))))
     ;; Base
     `(bold                   ((,c (:weight ,(if bold 'bold 'normal) :color ,white))))
     `(italic                 ((,c (:slant  ,(if italic 'italic 'normal)))))
     `(bold-italic            ((,c (:weight ,(if bold 'bold 'normal) :slant ,(if italic 'italic 'normal) :foreground ,white))))
     ;; Global
     `(default                ((,c (:background ,bg-d :foreground ,fg))))
     `(fringe                 ((,c (:inherit default :foreground ,comments))))
     `(region                 ((,c (:background ,region))))
     `(highlight              ((,c (:background ,highlight :foreground ,black))))
     `(hl-line                ((,c (:background ,current-line))))
     `(cursor                 ((,c (:background ,blue))))
     `(shadow                 ((,c (:foreground ,grey))))
     `(minibuffer-prompt      ((,c (:foreground ,blue))))
     `(tooltip                ((,c (:background ,black :foreground ,fg))))
     `(error                  ((,c (:foreground ,red))))
     `(warning                ((,c (:foreground ,yellow))))
     `(success                ((,c (:foreground ,green))))
     `(secondary-selection    ((,c (:background ,blue :foreground ,black))))
     `(lazy-highlight         ((,c (:background ,blue-d :foreground ,white))))
     `(match                  ((,c (:foreground ,green :background ,black :bold ,bold))))
     `(trailing-whitespace    ((,c (:background ,doc-comments))))
     `(vertical-border        ((,c (:foreground ,vertical-bar :background ,vertical-bar))))
     `(show-paren-match       ((,c (:background ,blue-d :foreground ,black))))
     `(linum
       ((((type graphic)) :background ,black :foreground ,grey-dd :bold nil)
        (t                :background ,black :foreground ,grey-dd :bold nil)))

     `(font-lock-builtin-face           ((,c (:foreground ,builtin))))
     `(font-lock-comment-face           ((,c (:foreground ,comments))))
     `(font-lock-comment-delimiter-face ((,c (:foreground ,comments))))
     `(font-lock-doc-face               ((,c (:foreground ,doc-comments))))
     `(font-lock-doc-string-face        ((,c (:foreground ,doc-comments))))
     `(font-lock-constant-face          ((,c (:foreground ,constants))))
     `(font-lock-function-name-face     ((,c (:foreground ,functions))))
     `(font-lock-keyword-face           ((,c (:foreground ,keywords))))
     `(font-lock-string-face            ((,c (:foreground ,strings))))
     `(font-lock-type-face              ((,c (:foreground ,type))))
     `(font-lock-variable-name-face     ((,c (:foreground ,variables))))
     `(font-lock-warning-face           ((,c (:inherit warning))))
     `(font-lock-negation-char-face          ((,c (:foreground ,operators :bold ,bold))))
     `(font-lock-preprocessor-face           ((,c (:foreground ,operators :bold ,bold))))
     `(font-lock-preprocessor-char-face      ((,c (:foreground ,operators :bold ,bold))))
     `(font-lock-regexp-grouping-backslash   ((,c (:foreground ,operators :bold ,bold))))
     `(font-lock-regexp-grouping-construct   ((,c (:foreground ,operators :bold ,bold))))
     ;; Modeline
     `(mode-line                   ((,c (:foreground ,modeline-fg          :background ,modeline-bg))))
     `(mode-line-inactive          ((,c (:foreground ,modeline-fg-inactive :background ,modeline-bg-inactive))))
     `(header-line                 ((,c (:inherit mode-line))))
     `(challenger-deep-modeline-buffer-path       ((,c (:foreground ,(if bold white cyan) :bold ,bold))))
     `(challenger-deep-modeline-buffer-project    ((,c (:foreground ,fg))))
     `(challenger-deep-modeline-buffer-modified   ((,c (:foreground ,red))))
     `(challenger-deep-modeline-buffer-major-mode ((,c (:foreground ,(if bold white blue) :bold ,bold))))
     `(challenger-deep-modeline-highlight     ((,c (:foreground ,blue))))
     `(challenger-deep-modeline-panel         ((,c (:foreground ,black :background ,blue))))
     `(challenger-deep-modeline-bar           ((,c (:background ,blue))))
     `(challenger-deep-modeline-eldoc-bar     ((,c (:background ,yellow))))

     ;;nlinum-relative
     `(nlinum-relative-current-face ((,c (:foreground ,black :background ,blue :bold ,bold))))

     ;; Powerline/Spaceline
     `(spaceline-highlight-face    ((,c (:foreground ,blue))))
     `(powerline-active1           ((,c (:inherit mode-line))))
     `(powerline-active2           ((,c (:foreground ,blue))))
     `(powerline-inactive1         ((,c (:inherit mode-line-inactive))))
     `(powerline-inactive2         ((,c (:inherit mode-line-inactive))))

     ;; Dired/dired-k
     `(dired-directory             ((,c (:foreground ,red-d))))
     `(dired-ignored               ((,c (:foreground ,comments))))
     `(dired-k-directory           ((,c (:foreground ,blue))))

     ;; Search
     `(isearch                     ((,c (:background ,search-bg :foreground ,search-fg :bold ,bold))))
     `(isearch-lazy-highlight-face ((,c (:background ,search-rest-bg :foreground ,search-rest-fg))))
     `(yas-field-highlight-face    ((,c (:inherit match))))

     ;; `window-divider'
     `(window-divider              ((,c (:foreground ,vertical-bar))))
     `(window-divider-first-pixel  ((,c (:foreground ,vertical-bar))))
     `(window-divider-last-pixel   ((,c (:foreground ,vertical-bar))))

     ;; Plugins
     ;; Avy
     `(avy-lead-face-0    ((,c (:background ,search-bg :foreground ,search-fg))))
     `(avy-lead-face-1    ((,c (:background ,search-bg :foreground ,search-fg))))
     `(avy-lead-face-2    ((,c (:background ,search-bg :foreground ,search-fg))))
     `(avy-lead-face      ((,c (:background ,search-bg :foreground ,search-fg))))
     ;; company-mode
     `(company-tooltip             ((,c (:inherit tooltip))))
     `(company-tooltip-common      ((,c (:foreground ,blue))))
     `(company-tooltip-search      ((,c (:foreground ,search-fg :background ,highlight))))
     `(company-tooltip-selection   ((,c (:background ,selection))))
     `(company-tooltip-mouse       ((,c (:background ,magenta :foreground ,bg))))
     `(company-tooltip-annotation  ((,c (:foreground ,magenta-d))))
     `(company-scrollbar-bg        ((,c (:background ,black))))
     `(company-scrollbar-fg        ((,c (:background ,blue))))
     `(company-preview             ((,c (:foreground ,blue))))
     `(company-preview-common      ((,c (:foreground ,magenta :background ,black))))
     `(company-preview-search      ((,c (:inherit company-tooltip-search))))
     ;; diff-hl
     `(diff-hl-change              ((,c (:foreground ,vc-modified))))
     `(diff-hl-delete              ((,c (:foreground ,vc-deleted))))
     `(diff-hl-insert              ((,c (:foreground ,vc-added))))
     ;; ediff
     `(ediff-fine-diff-A    ((,c (:background ,red :foreground ,black :bold ,bold))))
     `(ediff-fine-diff-B    ((,c (:background ,green :foreground ,black :bold ,bold))))
     `(ediff-fine-diff-C    ((,c (:background ,grey-d :foreground ,black :bold ,bold))))
     `(ediff-current-diff-A ((,c (:background ,red))))
     `(ediff-current-diff-B ((,c (:background ,green))))
     `(ediff-current-diff-C ((,c (:background ,grey))))
     `(ediff-even-diff-A    ((,c (:background ,grey))))
     `(ediff-even-diff-B    ((,c (:background ,grey))))
     `(ediff-even-diff-C    ((,c (:background ,grey))))
     `(ediff-odd-diff-A     ((,c (:background ,grey))))
     `(ediff-odd-diff-B     ((,c (:background ,grey))))
     `(ediff-odd-diff-C     ((,c (:background ,grey))))
     ;; elscreen
     `(elscreen-tab-background-face     ((,c (:background ,bg-d))))
     `(elscreen-tab-control-face        ((,c (:background ,bg-d :foreground ,bg-d))))
     `(elscreen-tab-current-screen-face ((,c (:background ,bg :foreground ,fg))))
     `(elscreen-tab-other-screen-face   ((,c (:background ,tab-unfocused-bg :foreground ,tab-unfocused-fg))))
     ;; evil-mode
     `(evil-ex-substitute-matches                   ((,c (:background ,black :foreground ,red :strike-through t :bold ,bold))))
     `(evil-ex-substitute-replacement               ((,c (:background ,black :foreground ,green :bold ,bold))))
     `(evil-search-highlight-persist-highlight-face ((,c (:inherit isearch-lazy-highlight-face))))
     ;; evil-snipe
     `(evil-snipe-first-match-face ((,c (:foreground ,search-bg :background ,blue-d))))
     `(evil-snipe-matches-face     ((,c (:foreground ,search-bg :underline t :bold ,bold))))
     ;; flycheck
     `(flycheck-error     ((,c (:underline (:style wave :color ,red)))))
     `(flycheck-warning   ((,c (:underline (:style wave :color ,yellow)))))
     `(flycheck-info      ((,c (:underline (:style wave :color ,green)))))
     `(flyspell-incorrect ((,c (:underline (:style wave :color ,red) :inherit unspecified))))
     ;; git-gutter
     `(git-gutter-fr:modified         ((,c (:foreground ,vc-modified))))
     `(git-gutter-fr:added            ((,c (:foreground ,vc-added))))
     `(git-gutter-fr:deleted          ((,c (:foreground ,vc-deleted))))
     `(git-gutter+-modified        ((,c (:foreground ,vc-modified))))
     `(git-gutter+-added           ((,c (:foreground ,vc-added))))
     `(git-gutter+-deleted         ((,c (:foreground ,vc-deleted))))
     ;; Helm
     `(helm-selection              ((,c (:background ,selection))))
     `(helm-match                  ((,c (:foreground ,blue :underline t))))
     `(helm-source-header          ((,c (:background ,current-line :foreground ,grey))))
     `(helm-swoop-target-line-face ((,c (:foreground ,highlight :inverse-video t))))
     `(helm-ff-file                ((,c (:foreground ,fg))))
     `(helm-ff-prefix              ((,c (:foreground ,magenta))))
     `(helm-ff-dotted-directory    ((,c (:foreground ,grey-d))))
     `(helm-ff-directory           ((,c (:foreground ,red-d))))
     `(helm-ff-executable          ((,c (:foreground ,white :slant italic))))
     ;; indent-guide, highlight-{quoted,numbers,indentation}-mode
     `(indent-guide-face                         ((,c (:foreground "#2F2F38"))))
     `(highlight-indentation-face                ((,c (:background "#222830"))))
     `(highlight-indentation-current-column-face ((,c (:background "#222830"))))
     `(highlight-indentation-guides-odd-face     ((,c (:background ,bg))))
     `(highlight-indentation-guides-even-face    ((,c (:background "#222830"))))
     `(highlight-quoted-symbol                   ((,c (:foreground ,type))))
     `(highlight-quoted-quote                    ((,c (:foreground ,operators))))
     `(highlight-numbers-number                  ((,c (:foreground ,numbers))))
     ;; hide-show
     `(hs-face            ((,c (:foreground ,comments :background ,bg-d))))
     `(hs-fringe-face     ((,c (:foreground ,blue))))
     ;; iedit
     `(iedit-occurrence            ((,c (:foreground ,magenta :bold ,bold :inverse-video t))))
     `(iedit-read-only-occurrence  ((,c (:inherit region))))
     ;; ivy
     `(ivy-current-match           ((,c (:background ,black))))
     `(ivy-minibuffer-match-face-1 ((,c (:foreground ,cyan))))
     `(ivy-minibuffer-match-face-2 ((,c (:foreground ,magenta :bold ,bold))))
     `(ivy-minibuffer-match-face-3 ((,c (:foreground ,green :bold ,bold))))
     `(ivy-minibuffer-match-face-4 ((,c (:foreground ,yellow :bold ,bold))))
     `(ivy-virtual                 ((,c (:foreground ,fg))))
     ;; neotree
     `(neo-root-dir-face           ((,c (:foreground ,green :background ,bg))))
     `(neo-file-link-face          ((,c (:foreground ,fg))))
     `(neo-dir-link-face           ((,c (:foreground ,blue))))
     `(neo-expand-btn-face         ((,c (:foreground ,blue))))
     ;; pos-tip
     `(popup                       ((,c (:inherit tooltip))))
     `(popup-tip-face              ((,c (:inherit tooltip))))
     ;; swiper
     `(swiper-line-face            ((,c (:background ,blue    :foreground ,black))))
     `(swiper-match-face-1         ((,c (:background ,black   :foreground ,grey))))
     `(swiper-match-face-2         ((,c (:background ,red-d  :foreground ,black :bold ,bold))))
     `(swiper-match-face-3         ((,c (:background ,magenta :foreground ,black :bold ,bold))))
     `(swiper-match-face-4         ((,c (:background ,green   :foreground ,black :bold ,bold))))
     ;; stripe-buffer
     `(stripe-highlight            ((,c (:background ,bg))))
     ;; Volatile highlights
     `(vhl/default-face            ((,c (:background ,grey-d))))
     ;; Rainbow delimiters
     `(rainbow-delimiters-depth-1-face   ((,c (:bold ,bold :foreground ,blue))))
     `(rainbow-delimiters-depth-2-face   ((,c (:bold ,bold :foreground ,magenta))))
     `(rainbow-delimiters-depth-3-face   ((,c (:bold ,bold :foreground ,green))))
     `(rainbow-delimiters-depth-4-face   ((,c (:bold ,bold :foreground ,red-d))))
     `(rainbow-delimiters-depth-5-face   ((,c (:bold ,bold :foreground ,magenta-d))))
     `(rainbow-delimiters-unmatched-face ((,c (:bold ,bold :foreground ,red :inverse-video t))))
     ;; re-builder
     `(reb-match-0 ((,c (:foreground ,red-d   :inverse-video t))))
     `(reb-match-1 ((,c (:foreground ,magenta  :inverse-video t))))
     `(reb-match-2 ((,c (:foreground ,green    :inverse-video t))))
     `(reb-match-3 ((,c (:foreground ,yellow   :inverse-video t))))
     ;; which-key
     `(which-key-key-face                   ((,c (:foreground ,green))))
     `(which-key-group-description-face     ((,c (:foreground ,magenta-d))))
     `(which-key-command-description-face   ((,c (:foreground ,blue))))
     `(which-key-local-map-description-face ((,c (:foreground ,magenta))))
     ;; whitespace
     `(whitespace-tab              ((,c (:foreground ,grey-d))))
     `(whitespace-newline          ((,c (:foreground ,grey-d))))
     `(whitespace-trailing         ((,c (:background ,grey-d))))
     `(whitespace-line             ((,c (:background ,current-line :foreground ,magenta))))
     ;; workgroups2
     `(wg-current-workgroup-face   ((,c (:foreground ,black  :background ,blue))))
     `(wg-other-workgroup-face     ((,c (:foreground ,grey :background ,current-line))))
     `(wg-divider-face             ((,c (:foreground ,grey-d))))
     `(wg-brace-face               ((,c (:foreground ,blue))))

     ;; term and ansi-term
     `(term-color-black ((,c (:foreground ,black :background ,bg))))
     `(term-color-white ((,c (:foreground ,grey :background ,grey-d))))
     `(term-color-red ((,c (:foreground ,red :background ,red-d))))
     `(term-color-yellow ((,c (:foreground ,yellow :background ,yellow-d))))
     `(term-color-green ((,c (:foreground ,green :background ,green-d))))
     `(term-color-cyan ((,c (:foreground ,cyan :background ,cyan-d))))
     `(term-color-blue ((,c (:foreground ,blue :background ,blue-d))))
     `(term-color-magenta ((,c (:foreground ,magenta :background ,magenta-d))))


     ;; smartparens
     `(sp-pair-overlay-face ((,c ())))

     ;; highlight-symbol
     `(highlight-symbol-face ((,c (:underline t))))

     ;;evil-mc-cursor
     `(evil-mc-cursor-default-face ((,c (:background ,yellow :foreground ,black))))

     ;;all-the-icons-dired
     `(all-the-icons-dired-dir-face ((,c (:foreground ,blue))))

     ;;latex
     `(font-latex-sectioning-1-face               ((,c (:foreground ,green :bold ,bold :height 1.8 :box (:line-width 4 :color ,current-line)))))
     `(font-latex-sectioning-2-face               ((,c (:foreground ,green :bold ,bold :height 1.5))))
     `(font-latex-sectioning-3-face               ((,c (:foreground ,green :bold ,bold :height 1.3))))
     `(font-latex-sectioning-4-face               ((,c (:foreground ,green :bold ,bold :height 1.2))))
     `(font-latex-sectioning-5-face               ((,c (:foreground ,green :bold ,bold :height 1.1))))
     `(font-latex-sectioning-6-face               ((,c (:foreground ,green :bold ,bold))))
     `(font-latex-warning-face                    ((,c (:foreground ,yellow-d :bold ,bold))))


     ;;
     ;; Language-specific
     ;;

     ;; (css|scss)-mode
     `(css-proprietary-property ((,c (:foreground ,red-d))))
     `(css-property             ((,c (:foreground ,green))))
     `(css-selector             ((,c (:foreground ,blue))))
     ;; js2-mode
     `(js2-function-param  ((,c (:foreground ,variables))))
     `(js2-function-call   ((,c (:foreground ,functions))))
     `(js2-object-property ((,c (:foreground ,magenta-d))))
     `(js2-jsdoc-tag       ((,c (:foreground ,comments))))
     ;; typescript-mode
     `(ts-object-property  ((,c (:inherit js2-object-property))))
     ;; web-mode
     `(web-mode-doctype-face           ((,c (:foreground ,comments))))
     `(web-mode-html-tag-face          ((,c (:foreground ,methods))))
     `(web-mode-html-tag-bracket-face  ((,c (:foreground ,methods))))
     `(web-mode-html-attr-name-face    ((,c (:foreground ,type))))
     `(web-mode-html-entity-face       ((,c (:foreground ,cyan :italic ,italic))))
     `(web-mode-block-control-face     ((,c (:foreground ,red-d))))
     ;;`(web-mode-html-tag-bracket-face  ((,c (:foreground ,operators))))
     ;; makefile-*-mode
     `(makefile-targets     ((,c (:foreground ,blue))))
     ;; markdown-mode
     `(markdown-header-face           ((,c (:foreground ,red :bold nil))))
     `(markdown-header-delimiter-face ((,c (:inherit markdown-header-face))))
     `(markdown-metadata-key-face     ((,c (:foreground ,red))))
     ;; `(markdown-blockquote-face ((,c (:foreground ,magenta-d))))
     `(markdown-markup-face     ((,c (:foreground ,grey))))
     ;; `(markdown-markup-face     ((,c (:foreground ,operators))))
     `(markdown-pre-face        ((,c (:foreground ,green))))
     `(markdown-inline-face     ((,c (:foreground ,cyan))))
     `(markdown-list-face       ((,c (:foreground ,red))))
     `(markdown-link-face       ((,c (:foreground ,blue :bold nil))))
     `(markdown-url-face        ((,c (:foreground ,magenta :bold nil))))
     `(markdown-header-face-1   ((,c (:inherit markdown-header-face))))
     `(markdown-header-face-2   ((,c (:inherit markdown-header-face))))
     `(markdown-header-face-3   ((,c (:inherit markdown-header-face))))
     `(markdown-header-face-4   ((,c (:inherit markdown-header-face))))
     `(markdown-header-face-5   ((,c (:inherit markdown-header-face))))
     `(markdown-header-face-6   ((,c (:inherit markdown-header-face))))
     ;;`(markdown-header-rule-face       ((,c (:inherit shadow))))
     `(markdown-italic-face            ((,c (:inherit italic :foreground ,magenta-d))))
     `(markdown-bold-face              ((,c (:inherit bold :foreground ,red-d))))
     ;; org-mode
     `(org-tag                   ((,c (:foreground ,yellow :bold nil))))
     `(org-priority              ((,c (:foreground ,red))))
     ;;`(org-ellipsis            ((,c (:inherit hs-face))))
     `(org-hide                  ((,c (:foreground ,bg))))
     `(org-table                 ((,c (:foreground ,cyan))))
     `(org-quote                 ((,c (:slant italic :foreground ,grey :background ,current-line))))
     `(org-document-info         ((,c (:foreground ,red-d))))
     `(org-document-info-keyword ((,c (:foreground ,grey-d))))
     `(org-meta-line             ((,c (:foreground ,doc-comments))))
     `(org-block-begin-line      ((,c (:background ,grey-dd :foreground ,grey-d))))
     `(org-block-end-line        ((,c (:inherit org-block-begin-line))))
     `(org-block-background      ((,c (:background ,grey-ddd))))
     `(org-archived              ((,c (:foreground ,grey))))
     `(org-document-title        ((,c (:foreground ,cyan :height 1.2))))
     `(org-level-1               ((,c (:background ,current-line :foreground ,blue :bold ,bold :height 1.2 :box (:line-width 4 :color ,current-line)))))
     `(org-level-2               ((,c (:background ,current-line :foreground ,blue :height 1.1))))
     `(org-level-3               ((,c (:background ,current-line :foreground ,blue :height 1.1))))
     `(org-level-4               ((,c (:background ,current-line :foreground ,blue))))
     `(org-level-5               ((,c (:background ,current-line :foreground ,blue))))
     `(org-level-6               ((,c (:background ,current-line :foreground ,blue))))
     `(org-code                  ((,c (:foreground ,red-d))))
     `(org-verbatim              ((,c (:foreground ,green))))
     `(org-formula               ((,c (:foreground ,cyan))))
     `(org-list-dt               ((,c (:foreground ,cyan))))
     `(org-footnote              ((,c (:foreground ,red-d))))
     `(org-link                  ((,c (:foreground ,cyan :underline t))))
     `(org-date                  ((,c (:foreground ,magenta-d))))
     `(org-todo                  ((,c (:foreground ,yellow :bold inherit))))
     `(org-done                  ((,c (:foreground ,green  :bold inherit))))
     `(org-headline-done         ((,c (:foreground ,grey :bold nil :strike-through t))))
     `(org-special-keyword       ((,c (:foreground ,magenta))))
     `(org-checkbox              ((,c (:inherit org-todo))))
     `(org-checkbox-statistics-todo ((,c (:inherit org-todo))))
     `(org-checkbox-statistics-done ((,c (:inherit org-done))))
     ;; Custom org-mode faces
     `(org-list-bullet           ((,c (:foreground ,cyan))))
     `(message-header-name ((,c (:foreground ,green)))))
    ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'challenger-deep)
;;; challenger-deep-theme.el ends here
