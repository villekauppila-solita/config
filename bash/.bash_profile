if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

export PATH="${PATH}:/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/usr/local/go/bin:/usr/local/sbin"

# export PATH=/opt/homebrew/bin:/Users/ville.kauppila/repos/github.com/villekauppila-solita/personal_repo/mac_scripts:/Users/ville.kauppila/repos/github.com/villekauppila-solita/personal_repo/mac_scripts:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/ville.kauppila/Work/personal_repo/scripts:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/usr/local/go/bin:/usr/local/sbin

# Prompt tuning

# Prompt definition
PS1="\[\e[34m\]\W\[\e[0m\]\[\e[32m\]\$(git_branch)\[\e[0m\] \$ "

# If in git directory, bring the branch to prompt
git_branch() {
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$branch" ]; then
    echo " ($branch)"
  fi
}
. "$HOME/.cargo/env"
