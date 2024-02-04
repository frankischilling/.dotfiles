# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: https://bbs.archlinux.org/viewtopic.php?pid=521888#p521888
PROMPT=$'\e[38;5;33m%B┌─[%b\e[0m\e[38;5;8m%n\e[38;5;242m@\e[0m\e[38;5;39m%m\e[38;5;33m%B]%b\e[0m - %b\e[38;5;33m%B[%b\e[38;5;247m%~\e[38;5;33m%B]%b\e[0m - \e[38;5;8m%B[%b\e[38;5;59m%D{%a %b %d, %I:%M %p}\e[38;5;8m%B]%b\e[0m\n\e[38;5;33m%B└─%B[%{\e[38;5;8m$\e[38;5;33m%B] <$(git_prompt_info)>%{\e[0m%}%b '

PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '

