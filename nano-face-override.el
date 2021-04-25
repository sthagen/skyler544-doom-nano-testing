;;; nano-face-override.el -*- lexical-binding: t; -*-

; this is my way of customizing the faces used by nano.
; by default, nano's faces are too limiting in my opinion;
; syntax highlighting is much less effective when so many
; fields receive the same face attributes.

(set-face-attribute 'nano-face-critical nil
                    :foreground "#9c2f18" :background nil       )

(set-face-attribute 'help-key-binding nil
                    :foreground "#2f3b41" :background "#c2c5c8"
                    :weight 'bold         :box nil              )

(after! eros
 (set-face-attribute 'eros-result-overlay-face nil
                     :foreground "#2f3b41" :background "#c2c5c8"
                     :weight 'bold         :box t                ))

(after! flycheck
 (set-face-attribute 'flycheck-error nil
                     :underline '(:color "#9c2f18" :style wave  ))
 (set-face-attribute 'flycheck-warning nil
                     :underline '(:color "#ab9d27" :style wave  )))

(after! avy
 (set-face-attribute 'avy-lead-face nil
                     :foreground "#2f3b41" :background "#8494A3"
                     :underline t                               )
 (set-face-attribute 'avy-lead-face-1 nil
                     :foreground "#2f3b41" :background "#8494A3"
                     :underline t                               )
 (set-face-attribute 'avy-lead-face-0 nil
                     :foreground "#2f3b41" :background "#8494A3"
                     :underline t                               ))

(after! lsp-ui
  (set-face-attribute 'lsp-ui-doc-url nil
                      :inherit nil
                      :underline t
                      :background "#B2BAC2"                     )
  (set-face-attribute 'lsp-ui-doc-background nil
                      :inherit nil
                      :box        t
                      :background "#B2BAC2"                     ))

(after! lsp-mode
  (set-face-attribute 'lsp-signature-face nil
                      :background "#B2BAC2"
                      :inherit nil                              )
  (set-face-attribute 'lsp-face-highlight-read nil
                      :underline nil
                      :inherit nil
                      :background "#B2BAC2"                     )
  (set-face-attribute 'lsp-face-highlight-write nil
                      :underline t
                      :inherit nil
                      :background "#B2BAC2"                     ))

(after! popup
 (set-face-attribute 'popup-tip-face nil
                     :background "#B2BAC2"                      ))

(set-face-attribute 'link nil
                    :underline  t                               )
(set-face-attribute 'button nil
                    :underline  t                               )
(after! hl-line
 (set-face-attribute 'hl-line nil :background "#98A5B3"         ))

(set-face-attribute 'cursor nil
                                          :background "#718591" )
(after! web-mode
  (set-face-attribute 'web-mode-doctype-face nil
                      :foreground "#485961"                     )
  (set-face-attribute 'web-mode-html-attr-name-face nil
                      :foreground "#335B6B"                     )
  (set-face-attribute 'web-mode-html-tag-face nil
                      :foreground "#664273"                     ))

(after! diredfl
 (set-face-attribute 'diredfl-dir-heading nil
                     :foreground "#466662" :background nil
                     :weight 'bold
                     :underline  t                              )
 (set-face-attribute 'diredfl-dir-name nil
                     :foreground "#476a87" :background nil      )
 (set-face-attribute 'diredfl-file-name nil
                     :foreground "#2f3b41"                      )
 (set-face-attribute 'diredfl-file-suffix nil
                     :foreground "#4c5e6e"                      ))

(set-face-attribute 'org-link nil
                    :underline  t                               )

(set-face-attribute 'font-lock-builtin-face nil
                    :foreground "#664273"                       )

(defun set-shell-face (                                         )
  (set-face-attribute 'sh-quoted-exec nil
                      :foreground "#547894"                     ))
(add-hook 'sh-mode-hook #'set-shell-face                        )

(defun vterm-faces (                                            )
 (set-face-attribute 'vterm-color-red nil
                     :foreground "#9c2f18" :background nil      )
 (set-face-attribute 'vterm-color-yellow nil
                     :foreground "#ab9d27" :background nil      )
 (set-face-attribute 'vterm-color-blue nil
                     :foreground "#4D6794" :background nil      )
 (set-face-attribute 'vterm-color-magenta nil
                     :foreground "#664273" :background nil      )
 (set-face-attribute 'vterm-color-green nil
                     :foreground "#4C6B3D" :background nil      ))
(add-hook 'vterm-mode-hook #'vterm-faces                        )

(after! mu4e-thread-folding
 (set-face-attribute 'mu4e-header-highlight-face nil
                     :underline nil :background nil             )
 (set-face-attribute 'mu4e-thread-folding-root-unfolded-face nil
                     :underline nil :background "#98a5b3"       )
 (set-face-attribute 'mu4e-thread-folding-child-face nil
                     :background "#98a5b3"                      ))

(after! font-latex
 (set-face-attribute 'font-latex-script-char-face nil
                     :foreground "#516575"
                     :weight 'bold                              )
 (set-face-attribute 'font-latex-math-face nil
                     :foreground "#516575"
                     :weight 'bold                              ))
(after! hydra
 (set-face-attribute 'hydra-face-red nil
                     :foreground "#9c2f18"
                     :weight 'bold                              ))

(after! smartparens
 (set-face-attribute 'show-paren-match nil
                     :foreground "#7A4A82" :background "#628F88"
                     :weight 'bold         :inverse-video t     )
 (set-face-attribute 'sp-show-pair-match-face nil
                     :foreground "#7A4A82" :background "#628F88"
                     :weight 'bold         :inverse-video t     ))

;(after! haskell-mode
; (set-face-attribute 'haskell-constructor-face nil
;                     :foreground "#2f3b41"                      )
; (set-face-attribute 'haskell-operator-face nil
;                     :foreground "#644977"
;                     :weight 'normal                            )
; (set-face-attribute 'haskell-type-face nil
;                     :foreground "#334954"                      )
; (set-face-attribute 'haskell-keyword-face nil
;                     :weight 'bold                              ))

; for reference
;(set-face-attribute face nil
;                    :foreground 'unspecified :background 'unspecified
;                    :family     'unspecified :slant      'unspecified
;                    :weight     'unspecified :height     'unspecified
;                    :underline  'unspecified :overline   'unspecified
;                    :box        'unspecified :inherit    style )

(provide 'nano-face-override                                    )
