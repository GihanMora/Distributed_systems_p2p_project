#remove previous log file
rm ./query_log.txt ./node_*.txt

#start bootstrap server
kill $(lsof -t -i:55555);
sleep 1
xterm -e javac BootstrapServer.java; java BootstrapServer &
sleep 2

#start and connect peers
port=57000


NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1);
xterm -geometry "80x15+20+35" -e "javac Peer.java; java Peer 57000 $NEW_UUID" &
sleep 1	
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1);
xterm -geometry "80x15+570+35" -e "javac Peer.java; java Peer 57001 $NEW_UUID" &
sleep 1
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1);
xterm -geometry "80x15+1080+35" -e "javac Peer.java; java Peer 57002 $NEW_UUID" &
sleep 1
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1);
xterm -geometry "80x15+20+285" -e "javac Peer.java; java Peer 57003 $NEW_UUID" &
sleep 1
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1);
xterm -geometry "80x15+570+285" -e "javac Peer.java; java Peer 57004 $NEW_UUID" &
sleep 1
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1);
xterm -geometry "80x15+1080+285" -e "javac Peer.java; java Peer 57005 $NEW_UUID" &
sleep 1
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1);
xterm -geometry "80x15+20+535" -e "javac Peer.java; java Peer 57006 $NEW_UUID" &
sleep 1
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1);
xterm -geometry "80x15+570+535" -e "javac Peer.java; java Peer 57007 $NEW_UUID" &
sleep 1
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1);
xterm -geometry "80x15+1080+535" -e "javac Peer.java; java Peer 57008 $NEW_UUID" &
sleep 1
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1);
xterm -geometry "80x15+20+785" -e "javac Peer.java; java Peer 57009 $NEW_UUID" &
sleep 1
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1);
xterm -geometry "80x15+570+785" -e "javac Peer.java; java Peer 57010 $NEW_UUID" &
sleep 1
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1);
xterm -geometry "80x15+1080+785" -e "javac Peer.java; java Peer 57011 $NEW_UUID" &
sleep 1














