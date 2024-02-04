# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: https://bbs.archlinux.org/viewtopic.php?pid=521888#p521888
# user, host, full path, and time/date
PROMPT=$'%B┌─[%b%n%F{8}@%m%f%B]%b - %b[%~%B]%b - %B[%F{8}%D{%a %b %d, %I:%M %p}%f%B]%b\n%B└─[%B%F{8}λ%f%B] %b<%{\e[38;5;247m%}$(git_prompt_info)%{\e[0m%}>%b '

# Setting PS2 for multiline commands
PS2=$'%{\e[0;34m%}%b> '
