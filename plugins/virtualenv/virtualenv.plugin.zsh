function virtualenv_prompt_info(){
  [[ -n ${VIRTUAL_ENV} ]] || return
  echo "${ZSH_THEME_VIRTUALENV_PREFIX:=[}${VIRTUAL_ENV:t}${ZSH_THEME_VIRTUALENV_SUFFIX:=]}"
#  if [[ -n $VIRTUAL_ENV ]]; then
#    #printf "%s[%s] " "%{${fg[yellow]}%}" ${${VIRTUAL_ENV}:t}
#    echo -n "${ZSH_THEME_VENV_PROMPT_BEFORE}${${VIRTUAL_ENV}:t}${ZSH_THEME_VENV_PROMPT_AFTER}" 
#  fi
}

# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=1
