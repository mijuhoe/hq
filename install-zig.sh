vsn=0.9.1
pkg=zig-linux-x86_64-${vsn}
file=${pkg}.tar.xz
cd /tmp
wget https://ziglang.org/download/${vsn}/${file}
sudo rm -f /usr/local/bin/zig
sudo rm -rf /usr/local/lib/${pkg}
sudo tar xvf $pkg.tar.xz -C /usr/local/lib
sudo ln -s /usr/local/lib/${pkg}/zig /usr/local/bin
rm ${file}
