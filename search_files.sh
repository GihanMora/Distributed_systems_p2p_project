
#Searching a file in a particular node.

#query="SER 127.0.1.1 $port \"$filename\" $hop_count"

query="SER 127.0.1.1 57002 \"Twillight\" 3" #searching "Twillight" in node 57002, # of hops=3
query="$(printf '%04d' $((${#query}+5))) $query" #adding the length of query
echo -n "$query" | nc -u 127.0.1.1 57002 &




