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
     $currentDir/applications/elasticsearch/bin/elasticsearch & osascript <<END 
        tell application "Terminal"
    do script "$currentDir/applications/kibana/bin/kibana"
    end tell
END
     ;;
   Linux)
     echo '--------Detected Linux-----------'
     cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd
     DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
     currentDir=$(
     cd $(dirname "$0")
     pwd
     )
     $currentDir/applications/elasticsearch/bin/elasticsearch & xterm  -e $currentDir/applications/kibana-linux/bin/kibana
     echo 'Linux'
     ;;
   CYGWIN*|MINGW32*|MSYS*)
     echo 'MS Windows'
     ;;
esac
