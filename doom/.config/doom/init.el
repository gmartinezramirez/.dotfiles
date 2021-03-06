;;; init.el -*- lexical-binding: t; -*-

(map-put default-frame-alist 'inhibit-double-buffering t)

;; I've swapped these keys on my keyboard
(setq x-super-keysym 'alt
      x-alt-keysym   'meta

      user-mail-address "henrik@lissner.net"
      user-full-name    "Henrik Lissner"

      +org-dir (expand-file-name "~/work/org/")
      org-ellipsis " ▼ "

      ;; doom-variable-pitch-font (font-spec :family "Fira Sans")
      ;; doom-unicode-font (font-spec :family "Input Mono Narrow" :size 12)
      doom-big-font (font-spec :family "Fira Mono" :size 19))


(pcase (system-name)
  ((or "proteus" "halimede")
   (setq ivy-posframe-font (font-spec :family "Hack" :size 16)
         ivy-height 12))
  (_
   (setq doom-font (font-spec :family "Hack" :size 12 :weight 'semi-light))))

;;
(doom! :feature
       (popup            ; tame sudden yet inevitable temporary windows
        +all             ; catch all popups that start with an asterix
        +defaults)       ; default popup rules
      ;debugger          ; FIXME stepping through code, to help you add bugs
       eval              ; run code, run (also, repls)
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       (lookup           ; helps you navigate your code and documentation
        +devdocs         ; ...on devdocs.io online
        +docsets)        ; ...or in Dash docsets locally
      ;services          ; TODO managing external services & code builders
       snippets          ; my elves. They type so I don't have to
       spellcheck        ; tasing you for misspelling mispelling
       syntax-checker    ; tasing you for every semicolon you forget
       version-control   ; remember, remember that commit in November
       workspaces        ; tab emulation, persistence & separate workspaces

       :completion
       company           ; the ultimate code completion backend
       ivy               ; a search engine for love and life
      ;helm              ; the *other* search engine for love and life
      ;ido               ; the other *other* search engine...

       :ui
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       doom-modeline     ; a snazzy Atom-inspired mode-line
      ;doom-quit         ; DOOM quit-message prompts when you quit Emacs
       hl-todo           ; highlight TODO/FIXME/NOTE tags
       nav-flash         ; blink the current line after jumping
       evil-goggles      ; display visual hints when editing in evil
      ;unicode           ; extended unicode support for various languages
      ;tabbar            ; FIXME an (incomplete) tab bar for Emacs
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       window-select     ; visually switch windows
       posframe          ; use child frames where possible (Emacs 26+ only)

       :tools
       dired             ; making dired pretty [functional]
       electric-indent   ; smarter, keyword-based electric-indent
       eshell            ; a consistent, cross-platform shell (WIP)
      ;gist              ; interacting with github gists
       imenu             ; an imenu sidebar and searchable code index
      ;impatient-mode    ; show off code over HTTP
      ;macos             ; MacOS-specific commands
       magit             ;
      ;make              ; run make tasks from Emacs
       neotree           ; a project drawer, like NERDTree for vim
      ;password-store    ; password manager for nerds
      ;pdf               ; pdf enhancements
       rotate-text       ; cycle region at point between text candidates
      ;term              ; terminals in Emacs
      ;tmux              ; an API for interacting with tmux
      ;upload            ; map local to remote projects via ssh/ftp

       :lang
      ;assembly          ; assembly for fun or debugging
       cc                ; C/C++/Obj-C madness
       crystal           ; ruby at the speed of c
      ;clojure           ; java with a lisp
      ;csharp            ; unity, .NET, and mono shenanigans
       data              ; config/data formats
       elixir            ; erlang done right
      ;elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
      ;ess               ; emacs speaks statistics
      ;go                ; the hipster dialect
       (haskell +intero) ; a language that's lazier than I am
      ;hy                ; readability of scheme w/ speed of python
      ;(java +meghanada) ; the poster child for carpal tunnel syndrome
       javascript        ; all(hope(abandon(ye(who(enter(here))))))
      ;julia             ; a better, faster MATLAB
      ;latex             ; writing papers in Emacs has never been so fun
      ;ledger            ; an accounting system in Emacs
       lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
      ;ocaml             ; an objective camel
       (org              ; organize your plain life in plain text
        +attach          ; custom attachment system
        +babel           ; running code in org
        +capture         ; org-capture in and outside of Emacs
        +export          ; Exporting org to whatever you want
        +present         ; Emacs for presentations
       ;+publish         ; Emacs+Org as a static site generator
        )
      ;perl            ; write code no one else can comprehend
       php             ; make php less awful to work with
      ;plantuml          ; diagrams for confusing people more
      ;purescript        ; javascript, but functional
       python          ; beautiful is better than ugly
       rest            ; Emacs as a REST client
      ;ruby            ; 1.step do {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       rust            ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
      ;scala           ; java, but good
       sh              ; she sells (ba|z)sh shells on the C xor
      ;swift             ; who asked for emoji variables?
      ;typescript      ; javascript, but better
       web             ; the tubes

       ;; Applications are opinionated modules that transform Emacs to fulfill a
       ;; specific purpose. They should be loaded last.
       :app
      ;crm               ; TODO org-mode for client relations management
      ;(email +gmail)    ; emacs as an email client
      ;irc               ; how neckbeards socialize
      ;regex             ; emacs as a regexp IDE
      ;rss               ; emacs as an RSS reader
      ;torrents          ; emacs as a torrent client
      ;twitter           ; twitter client https://twitter.com/vnought
      ;(write            ; emacs as a word processor (latex + org + markdown)
      ; +wordnut         ; wordnet (wn) search
      ; +langtool)       ; a proofreader (grammar/style check) for Emacs

       :config
       (default +bindings +snippets +evil-commands))
