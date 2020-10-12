
#Searching a file in a particular node.


query="DOWNLOAD_TRIGGER 127.0.1.1 57000 \"Windows 8\" 3" 
query="$(printf '%04d' $((${#query}+5))) $query" 
echo -n "$query" | nc -u 127.0.1.1 55555 &


