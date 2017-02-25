#.profile gets executed automatically for all login shells
#.bash_profile same as .profile but gets executed automatically for all bash login shells
#.bashrc executed only by non-login bash and zsh shells
############################################

export PS1="\u@:\w$ "
export EMAIL="vladilen.kozin@gmail.com"

# !!!!!!!!!!!!!!!!!!!!!!!!! NOTE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# Shell PATH does not understand relative paths starting with ~
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

# path
PATH="/Users/zerusski/.bin:/Users/zerusski/Documents/racket/racket/bin:/usr/local/bin:${PATH}"
# PATH="/usr/local/bin:${PATH}"
# PATH="${PATH}:/usr/local/lib/python2.7/site-packages"
PATH="${PATH}:/Users/zerusski/Documents/bin"
PATH="${PATH}:/Users/zerusski/Downloads/terra-OSX-x86_64-332a506/bin"
# PATH="${PATH}:~/Applications/Racket\ v6.5/bin"
# PATH="${PATH}:node_modules/.bin"

# PATH="${PATH}:/Applications/Racket/bin:/Applications/factor:/usr/local/sml/bin:/Applications/Gnuplot.app/Contents/Resources/bin"
# PATH="${PATH}:/usr/local/Cellar/scheme48/1.9/bin"
MANPATH="$/usr/share/man:/usr/local/share/man:/usr/X11/share/man:{MANPATH}"
MANPATH="${MANPATH}:/Users/zerusski/Documents/racket/racket/man"

# Chromium depot tools required for V8
# apparently need to be in the front
# PATH="~/Documents/depot_tools:${PATH}"

EDITOR='/usr/local/bin/emacsclient'
alias dc='docker-compose'
alias Emacs='open -a Emacs.app'
alias emacs=Emacs
alias e="${EDITOR}"
## edit in terminal
# alias et="${EDITOR} -t"
alias ls='ls -G'
alias la='ls -a'
alias ll='la -lh'
# alias gtypist='gtypist --scoring=cpm'

# IR Hydra
alias nodeir='node --redirect-code-traces --redirect-code-traces-to=code.asm --trace-deopt --trace-hydrogen --trace-phase=Z --print-opt-code --code-comments --hydrogen-track-positions'
alias d8='~/Documents/v8/xcodebuild/Release/d8'
alias d8ir='d8 --redirect-code-traces --redirect-code-traces-to=code.asm --trace-deopt --trace-hydrogen --trace-phase=Z --print-opt-code --code-comments --hydrogen-track-positions'

# #IJulia
# alias ijulia='ipython notebook --profile=julia'

#Homebrew
export HOMEBREW_EDITOR=$EDITOR

#adding ssh-keys
#'ssh-add -l' to see what keys are installed
ssh-add ~/.ssh/id_rsa > /dev/null 2> /dev/null || true
ssh-agent > /dev/null 2> /dev/null || true

# Add GHC 7.10.1 to the PATH, via https://ghcformacosx.github.io/
# export GHC_DOT_APP="/Applications/ghc-7.10.1.app"
# if [ -d "$GHC_DOT_APP" ]; then
#   export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
# fi

# # mono
# PKG_CONFIG_PATH=/Library/Frameworks/Mono.framework/Versions/Current/lib/pkgconfig; export PKG_CONFIG_PATH
# PATH="${PATH}:/usr/local/mono/bin:/usr/local/mono/lib"

# node
# to check that node sees the npm packages installed
NODE_PATH=/usr/local/lib/node_modules; export NODE_PATH;

# # shell completions
for f in $(brew --prefix)/etc/bash_completion.d/*; do source $f; done

#source racket-completion.bash for raco completions
if [ -f ~/Documents/racket/racket/share/pkgs/shell-completion/racket-completion.bash ]; then
  . ~/Documents/racket/racket/share/pkgs/shell-completion/racket-completion.bash
fi

# # ocaml
. ~/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
eval `opam config env`;

# Droit
alias dc="docker-compose"
alias dm="docker-machine"
alias cdd="cd ~/Documents/dft/droit/"
alias cddm="cd ~/Documents/dft/droit/"
alias cdte="cd ~/Documents/dft/tdss-environments/"
alias cddf="cd ~/Documents/dft/datafiles/"
alias cdde="cd ~/Documents/dft/droit-engine/"
alias cddw="cd ~/Documents/dft/workflows/"
alias cdtb="cd ~/Documents/dft/droit/adept/tdss-build/"
alias cdae="cd ~/Documents/dft/droit/adept/adept-environments/droit-local/docker/config/"

alias ec="open -a Emacs.app -n --args -q -l ~/.personal-configs/emacs.candidate1/init.el"
alias ecc="open -a Emacs.app -n --args -q -l ~/.personal-configs/emacs.candidate2/init.el"

# initialize jenv to manage Java versions
# $ brew install jenv
# $ jenv add /Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home/
# $ jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_66.jdk/Contents/Home/
# List available versions
# $ jenv versions
# Configure global version
# $ jenv global oracle64-1.6.0.39
# Configure local version (per directory)
# $ jenv local oracle64-1.6.0.39
# Configure shell instance version
# $ jenv shell oracle64-1.6.0.39
# Or use a ".java-version" file to set the version of Java in specific
# directories. So for projects where u need Java 6 save a ".java-version" file
# with oracle64-1.6.0.65 as the contents, and jEnv will set the local Java
# version when u enter the directory.
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# Lua
alias lua='lua-5.1'
alias luarocks='luarocks-5.1'
eval $(luarocks path --bin)
