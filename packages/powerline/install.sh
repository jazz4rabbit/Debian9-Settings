# http://powerline.readthedocs.io/en/master/installation.html

apt-get update
apt-get install python-pip python-pip3

pip3 install powerline-status

cat >> /etc/bash.bashrc << EOF

setPowerline() {
    _powerline_home="/usr/local/lib/python3.5/dist-packages/powerline"
    . $_powerline_home/bindings/bash/powerline.sh
}
EOF

cat >> /etc/profile << EOF

setPowerline() {
    _powerline_home="/usr/local/lib/python3.5/dist-packages/powerline"
    . $_powerline_home/bindings/bash/powerline.sh
}
EOF
