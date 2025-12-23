declare -A pomo_options
pomo_options["work"]="55"
pomo_options["break"]="5"

pomodoro () {
   if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
     val=$1
     echo $val | lolcat
     countdown ${pomo_options["$val"]}m
     
     say "$val session done" 
   fi
}

alias work="pomodoro 'work'"
alias br="pomodoro 'break'"
