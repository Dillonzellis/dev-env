# Define DEV_PATH constant
DEV_PATH="~/.dev-env"

# config

alias dev="cd $DEV_PATH"
alias so="source $DEV_PATH/.zshrc"

# utilities

alias nvim="XDG_CONFIG_HOME=$DEV_PATH nvim"
alias vi="XDG_CONFIG_HOME=$DEV_PATH nvim"

# vimwiki git
alias notepush="(cd ~/vimwiki && git add . && git commit -m \"$(date '+%Y-%m-%d %H:%M:%S')\" && git push)"

alias rf="rm -rf"
alias lash="ls -lash"
alias cl="clear"
alias gs="git status"
alias tmux="tmux -f $DEV_PATH/.tmux.conf"

# yabai
alias startyab="yabai --start-service"
alias stopyab="yabai --stop-service"

# night light
alias nl="nightlight on"
alias nlday="nightlight temp 45"
alias nlnight="nightlight temp 100"

# directory aliases
alias desktop="cd ~/Desktop"
alias prj="cd ~/Projects"
alias dl="cd ~/Downloads"
alias gbd="cd ~/Projects/gbd"
alias temp="cd ~/Projects/temp"
alias notes="cd ~/vimwiki"

# project directories
alias smcu="cd ~/Projects/gbd/small-cu/"
alias port="cd ~/Projects/dillonzellis-portfolio/"
alias ecom="cd ~/Projects/ecommerce-admin/"
alias mood="cd ~/Projects/mood"
alias fpic="cd ~/Projects/family-pic/"

# gbd directories
BASEDIR="~/Projects/gbd"

alias muts="cd $BASEDIR/muts"
alias plat="cd $BASEDIR/Platinum-2018"
alias cufs="cd $BASEDIR/CUFS-2018"
alias northmain="cd $BASEDIR/North-Main-Responsive"
alias wright="cd $BASEDIR/The-Wright-Responsive"
alias combined="cd $BASEDIR/Combined-Employees-Responsive"
alias cgr="cd $BASEDIR/CGR-Responsive"
alias chatt="cd $BASEDIR/Chattahoochee-FCU-2016"
alias ffcu="cd $BASEDIR/ffcu20"
alias sav="cd $BASEDIR/savannahpostal"
alias lev="cd $BASEDIR/LEVERAGE"
alias telco="cd $BASEDIR/telcoplus-utils"
alias ngcu="cd $BASEDIR/ngcu-util"
alias hike="cd $BASEDIR/lscu/hikethehill"
alias byte="cd $BASEDIR/byte-reality"

# LSCU directories
alias lscu-about="cd $BASEDIR/lscu/LSCU-about"
alias lscu-mem="cd $BASEDIR/lscu/LSCU-member-engagement"
alias lscu-found="cd $BASEDIR/lscu/LSCU-foundation"
