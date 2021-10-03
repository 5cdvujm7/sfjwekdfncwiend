apt-get update
apt-get install -y openssh-server git
echo "root:password"|chpasswd
wget https://github.com/fatedier/frp/releases/download/v0.37.1/frp_0.37.1_linux_amd64.tar.gz
tar -zxvf frp_0.37.1_linux_amd64.tar.gz
cd frp_0.37.1_linux_amd64
echo "[common]
server_addr = ${D}.freefrp.club
server_port = 7000
token = www.idonglei.com

[Okteto_${P}]
type = tcp
local_ip = 127.0.0.1
local_port = 22
remote_port = ${P}"
./frpc -c ./frpc.ini
