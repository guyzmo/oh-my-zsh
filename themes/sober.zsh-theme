
CC=%{$fg_bold[$ZSH_HOST_COLOR]%}
CCH=%{$fg[$ZSH_HOST_COLOR]%}
RC=%{$reset_color%}
# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX="$CC)-($RC"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_STATUS_BEFORE=""
ZSH_THEME_GIT_PROMPT_STATUS_AFTER=""
ZSH_THEME_GIT_PROMPT_BRANCH_BEFORE=""
ZSH_THEME_GIT_PROMPT_BRANCH_AFTER=""
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=""
ZSH_THEME_GIT_PROMPT_SHA_AFTER=""

# Format for parse_git_dirty()
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗${RC}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✓${RC}"
ZSH_THEME_RUBY_PROMPT_BEFORE="$CC)-(rvm:$RC"
ZSH_THEME_RUBY_PROMPT_AFTER=""
ZSH_THEME_VENV_PROMPT_BEFORE="$CC)-(venv:$RC"
ZSH_THEME_VENV_PROMPT_AFTER=""
ZSH_THEME_NVM_PROMPT_BEFORE="$CC)-(nvm:$RC"
ZSH_THEME_NVM_PROMPT_AFTER=""

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[red]%}⚑${RC}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[yellow]%}!${RC}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%}±${RC}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}≠${RC}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[yellow]%}✚${RC}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}…${RC}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[green]%}↑${RC}"

local ret_prompt="%(?:%#:%{$fg_bold[red]%}%#%s)${RC}"

if [[ $(uname) == "Darwin" ]]; then
    PROMPT='${CC}[${RC}$(battery_pct_prompt)${CC}]-(${RC}%n${CCH}@%m${RC}${CC})-(${RC}%D{%H:%M}${CC})${RC} ${ret_prompt} '
else
    PROMPT='${BATT_PROMPT}${CC}(${RC}%n${CCH}@%m${RC}${CC})-(${RC}%D{%H:%M}${CC})${RC} ${ret_prompt} '
fi

RPROMPT='${CC}(${RC}%3~$(git_prompt_info)$(git_prompt_status)$(rvm_prompt_info)$(virtualenv_prompt_info)$(nvm_prompt_info)${CC})-${RC}'

