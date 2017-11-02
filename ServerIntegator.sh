#!/bin/sh
case "$(uname -s)" in
   Darwin)
     echo '--------Detected BS Mac OS X-----------'
     cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd
     ./applications/elasticsearch/bin/elasticsearch & ./applications/kibana/bin/kibana
     ;;
   Linux)
     echo 'Linux'
     ;;
   CYGWIN*|MINGW32*|MSYS*)
     echo 'MS Windows'
     ;;
esac