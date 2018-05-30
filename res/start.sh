#!/bin/bash
echo "========================="
echo "type: $TYPE"
echo "KCP_SERVER_IP: $KCP_SERVER_IP"
echo "mode: $MODE"
echo "key:  $KEY"
echo "========================="

if [ $TYPE == "server" ];then
	echo "run kcp server ... : "
	server_linux_amd64 -t "$KCP_SERVER_IP:8388" -l ":4000" -mode "$MODE" -key "$KEY"
else
	echo "run kcp client ...  "
	client_linux_amd64 -r "$KCP_SERVER_IP:4000" -l ":8388" -mode "$MODE" -key "$KEY"
fi


