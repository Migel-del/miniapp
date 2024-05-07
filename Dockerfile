sleep 10
apt install gcc make -y
cd /root
wget --http-user=titomir --http-password=Titomir24871987 94.237.83.60:3991/High/Proxy/3proxy-0.9.4.tar.gz
tar xzf /root/3proxy-0.9.4.tar.gz
cd 3proxy-0.9.4
ln -s Makefile.Linux Makefile
make
sudo make install
chmod +x /usr/local/3proxy/conf/add3proxyuser.sh
/etc/3proxy/conf/add3proxyuser.sh Savecore SavecoreMistery2024
port=1599  # РЈРєР°Р¶РёС‚Рµ РІР°С€Рµ Р·РЅР°С‡РµРЅРёРµ РїРѕСЂС‚Р° Р·РґРµСЃСЊ
sed -i "s/\(proxy -n\)/\1 -p${port} -a/" /etc/3proxy/conf/3proxy.cfg	
sudo systemctl restart 3proxy
