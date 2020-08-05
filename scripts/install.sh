# INSTALL R
sudo apt update
sudo apt install r-base
sudo -i R

wget http://bioinfo.single-cell.cn/Released_Software/parallel-meta/3.5.3/parallel-meta-3.5.3-src.tar.gz
tar -xzvf parallel-meta-3.5.3-src.tar.gz
mkdir /opt/tools/parallel-meta
mv parallel-meta /opt/tools/
cd /opt/tools/parallel-meta
source install.sh

