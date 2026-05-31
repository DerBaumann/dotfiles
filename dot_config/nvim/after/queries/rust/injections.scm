; ; Leptos / Yew config
; (
;  (macro_invocation
;    macro: (identifier) @_name
;    token_tree: (token_tree) @html)
;  (#match? @_name "^(view|html)$")
;  (#set! injection.language "html")
;  )
;
; ; Dioxus config
; (
;  (macro_invocation
;    macro: (identifier) @_name
;    token_tree: (token_tree) @html)
;  (#eq? @_name "rsx")
;  (#set! injection.language "tsx")
;  )
