

yum -ty install epel-release
yum -ty groupinstall "Xfce"
yum -ty install lightdm xorg-x11-drv-libinput.x86_64
yum -ty install firefox
yum -ty install xfce4-about xfce4-eyes-plugin  xfce4-screenshooter xfce4-screenshooter-plugin 
yum -ty install ristretto  # image viewer
yum -ty install thunar # should be installed already.  this is a gui file manager
#yum -ty install xfe twm file manager, not avail anymore
#systemctl set-default multi-user.target
systemctl disable gdm
systemctl enable lightdm

