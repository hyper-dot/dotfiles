# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time


# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='nvim'
# fi
export EDITOR="nvim"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias nvconfig="cd ~/.config/nvim/ && nvim"
alias nv="nvim"
# Git and github
alias gla="git log --oneline --abbrev-commit --all --graph --decorate --color --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr)'"
alias gl="git log --oneline --decorate --date=short"
alias gs='git status -sb'
#Adding Git
alias ga="git add ."
alias lg="echo 'You Forgot. From now on only NATIV git'"

# GOLANG
alias gr="nodemon --watch './**/*.go' --signal SIGTERM --exec 'go' run main.go"

# PostgreSQL
alias pstart="LC_ALL="C" pg_ctl -D /opt/homebrew/var/postgresql@14 start"
alias pstop="LC_ALL="C" pg_ctl -D /opt/homebrew/var/postgresql@14 stop"

# PATHS
export PATH=/opt/homebrew/bin:$PATH # Homebrew Path
export PATH=/opt/nvim/bin:$PATH # Neovim Path
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin" # Vscode Path
export PATH=/usr/local/mysql/bin/:$PATH # Mysql Path

# pnpm
export PNPM_HOME="/Users/roshanpaudel/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

### GIT EMOJI
#.# Better Git Logs.
### Using EMOJI-LOG (https://github.com/ahmadawais/Emoji-Log).

# Git Commit, Add all and Push — in one step.
gcap() {
    git commit -m "$*"
}

gfeat() {
    gcap "✨ FEAT: $@"
}

# NEW.
gnew() {
    gcap "✨ NEW: $@"
}

# CHORE.
gchore() {
    gcap "🔧 CHORE: $@"
}

# IMPROVE.
gimp() {
    gcap "👌 IMPROVE: $@"
}

# FIX.
gfix() {
    gcap "🐞 FIX: $@"
}

# RELEASE.
grlz() {
    gcap "🚀 RELEASE: $@"
}

# DOC.
gdoc() {
    gcap "📖 DOC: $@"
}

# TEST.
gtst() {
    gcap "🤖 TEST: $@"
}

# BREAKING CHANGE.
gbrk() {
    gcap "‼️ BREAKING: $@"
}
gtype() {
NORMAL='\033[0;39m'
GREEN='\033[0;32m'
echo "$GREEN gnew$NORMAL — 📦 NEW
$GREEN gimp$NORMAL — 👌 IMPROVE
$GREEN gfix$NORMAL — 🐛 FIX
$GREEN grlz$NORMAL — 🚀 RELEASE
$GREEN gdoc$NORMAL — 📖 DOC
$GREEN gtst$NORMAL — 🧪️ TEST
$GREEN gbrk$NORMAL — ‼️ BREAKING"
}

# bun completions
[ -s "/Users/roshan/.bun/_bun" ] && source "/Users/roshan/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

export PATH="/Users/roshanpaudel/.detaspace/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
