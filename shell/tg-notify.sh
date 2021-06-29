notify_telegram() {
    local message="$(echo -e $3)"
    local bot_token=$2
    local user_id=$1
    local api_url="https://api.telegram.org/bot${bot_token}/sendMessage"

    curl -Ss -H "Content-Type:application/x-www-form-urlencoded" -X POST -d "chat_id=${user_id}&text=${message}&disable_web_page_preview=true" "$api_url" &>/dev/null
}

notify_telegram $1 $2 $3