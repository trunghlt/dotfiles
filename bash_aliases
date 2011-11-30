# git status with a dirty flag
function __git_status_flag {
  git_status="$(git status 2> /dev/null)"
  remote_pattern="^# Your branch is (.*) of"
  diverge_pattern="# Your branch and (.*) have diverged"
  if [[ ! ${git_status}} =~ "working directory clean" ]]; then
    state="⚡"                                                                                                         
    spacer=" "
  fi

  if [[ ${git_status} =~ ${remote_pattern} ]]; then
    spacer=" "
    if [[ ${BASH_REMATCH[1]} == "ahead" ]]; then
      remote="↑"
    else
      remote="↓"
    fi
  fi

  if [[ ${git_status} =~ ${diverge_pattern} ]]; then
    remote="↕"
    spacer=" "
  fi

  echo "${state}${remote}${spacer}"
}

# Color prompt with git branch info
if [ "$color_prompt" = yes ]; then
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] $(__git_ps1 "(\[\e[33m\]$(__git_status_flag)\[\e[35m\]%s) ")\[\e[0m\]\$ '
    PS1='\[\e[32m\]\u\[\e[2m\]@\[\e[1m\]\h\[\e[22m\]:\[\e[1;34m\]\w\[\e[22;35m\] $(__git_ps1 "(\[\e[33m\]$(__git_status_flag)\[\e[35m\]%s)")\n\[\e[33m\]\$ \[\e[0m\]'
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# Color svn diff
function svndiff () { svn diff $@ | colordiff | less -R; }
