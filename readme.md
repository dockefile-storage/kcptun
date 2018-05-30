# kcptun

[github kcptun](https://github.com/xtaci/kcptun)


### BUILD

```
sudo docker build -t kcptun:20180316 .
```
### RUN
```
sudo docker run -d --restart=always -p 8388:8388 -p 4000:4000 --name=kcptun_test \
	-e TYPE="client" -e KCP_SERVER_IP='140.82.10.84' -e MODE='fast2' -e KEY='test' \
	kcptun:20180316

sudo docker run -d --restart=always -p 8388:8388 -p 4000:4000 --name=kcptun_test \
	-e TYPE="server" -e KCP_SERVER_IP='140.82.10.84' -e MODE='fast2' -e KEY='test' \
	kcptun:20180316

sudo docker logs -f   kcptun_test
```
