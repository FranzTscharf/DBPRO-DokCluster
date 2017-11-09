#!/bin/bash
case "$(uname -s)" in
   Darwin)
     echo '--------Detected BS Mac OS X-----------'
     cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd
     DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

     currentDir=$(
     cd $(dirname "$0")
     pwd
     ) 
     ./applications/elasticsearch/bin/elasticsearch & osascript <<END 
        tell application "Terminal"
    do script "$currentDir/applications/kibana/bin/kibana"
    end tell
END
     ;;
   Linux)
     echo 'Linux'
     ;;
   CYGWIN*|MINGW32*|MSYS*)
     echo 'MS Windows'
     ;;
esac