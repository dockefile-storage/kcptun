all:
	sudo docker build -t kcptun:20180316 .
test_rm:
	sudo docker rm -f  kcptun_test
test_run:
	sudo docker run -d --restart=always -p 8388:8388 -p 4000:4000 --name=kcptun_test \
		-e TYPE="client" -e KCP_SERVER_IP=${KCP_SERVER_IP} -e MODE='fast2' -e KEY='test' \
		kcptun:20180316
	sudo docker logs -f   kcptun_test

