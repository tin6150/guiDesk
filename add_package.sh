

yum -ty install epel-release
yum -ty groupinstall "Xfce"
yum -ty install lightdm xorg-x11-drv-libinput.x86_64
yum -ty install firefox
yum -ty install xfe
#systemctl set-default multi-user.target
systemctl disable gdm
systemctl enable lightdm

