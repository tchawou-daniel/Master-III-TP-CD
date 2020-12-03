HTTPCODE=$(echo `curl -s -o /dev/null -w "%{http_code}" https://whispering-garden-62583.herokuapp.com/` | tr -d ' ')
if [ "$HTTPCODE" -ne 200 ];then
    echo "heroku app not responding, failing deploy"
    exit 1
fi
