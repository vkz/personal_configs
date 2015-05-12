#.profile gets executed automatically for all login shells
#.bash_profile same as .profile but gets executed automatically for all bash login shells
#.bashrc executed only by non-login bash and zsh shells
############################################

export PS1="\u@:\w$ "
export EMAIL="vladilen.kozin@gmail.com"

# path
PATH="/usr/local/bin:${PATH}"
PATH="${PATH}:/Users/kozin/Documents/racket/racket/bin"
PATH="${PATH}:/usr/local/lib/python2.7/site-packages"
# PATH="${PATH}:node_modules/.bin"

# PATH="${PATH}:/Applications/Racket/bin:/Applications/factor:/usr/local/sml/bin:/Applications/Gnuplot.app/Contents/Resources/bin"
# PATH="${PATH}:/usr/local/Cellar/scheme48/1.9/bin"
MANPATH="$/usr/share/man:/usr/local/share/man:/usr/X11/share/man:{MANPATH}"
MANPATH="${MANPATH}:/Users/kozin/Documents/racket/racket/man"

# Chromium depot tools required for V8
# apparently need to be in the front
PATH="/Users/kozin/Documents/depot_tools:${PATH}"

# Add GHC 7.8.3 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.3.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

EDITOR='/usr/local/bin/emacsclient'
alias Emacs='open -a Emacs.app'
alias emacs=Emacs
# alias em="${EDITOR}"
# alias emt="${EDITOR} -t"
# alias xamarin='open -a Xamarin\ Studio.app'
alias ls='ls -G'
alias la='ls -a'
alias ll='la -lh'
# alias gtypist='gtypist --scoring=cpm'

# IR Hydra
alias nodeir='node --redirect-code-traces --redirect-code-traces-to=code.asm --trace-deopt --trace-hydrogen --trace-phase=Z --print-opt-code --code-comments --hydrogen-track-positions'
alias d8='/Users/kozin/Documents/v8/xcodebuild/Release/d8'
alias d8ir='d8 --redirect-code-traces --redirect-code-traces-to=code.asm --trace-deopt --trace-hydrogen --trace-phase=Z --print-opt-code --code-comments --hydrogen-track-positions'

# #IJulia
# alias ijulia='ipython notebook --profile=julia'

#Homebrew
export HOMEBREW_EDITOR=$EDITOR

#adding ssh-keys
#'ssh-add -l' to see what keys are installed
ssh-add ~/.ssh/id-rsa > /dev/null 2> /dev/null || true

# # ocaml
eval `opam config env`;

# # mono
# PKG_CONFIG_PATH=/Library/Frameworks/Mono.framework/Versions/Current/lib/pkgconfig; export PKG_CONFIG_PATH
# PATH="${PATH}:/usr/local/mono/bin:/usr/local/mono/lib"

# node
# to check that node sees the npm packages installed
NODE_PATH=/usr/local/lib/node_modules; export NODE_PATH;

# # shell completions
for f in $(brew --prefix)/etc/bash_completion.d/*; do source $f; done

# #source racket-completion.bash for raco completions
# if [ -f /Applications/Racket/share/pkgs/shell-completion/racket-completion.bash ]; then
#   . /Applications/Racket/share/pkgs/shell-completion/racket-completion.bash
# fi

# #source opam (caml) completion
# if [ -f $(brew --prefix)/etc/bash_completion.d/opam_completion.sh ]; then
#     . $(brew --prefix)/etc/bash_completion.d/opam_completion.sh
# fi
