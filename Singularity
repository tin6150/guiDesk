
# Singularity container definition for 
# guiDesk
# lightweight gui desktop (file manager, browser)
# centos  7 
# https://github.com/tin6150/guiDesk
# https://singularity-hub.org/collections/...


BootStrap: docker
#From: centos:7.6.1810
From: centos:7
#From: centos:8

%help
	This container is a CentOS  with a light GUI desktop (file manager, firefox)
  Pull and run via singularity hub:
	singularity pull --name guiDesk.sif shub://tin6150/guiDesk
	singularity exec guiDesk.sif xfe

# copy files into the container 
# https://singularity.lbl.gov/docs-recipes#:~:text=If%20you%20want%20to%20copy,a%20path%20in%20the%20container.
# no destination means /
%files
	add_package.sh 

%runscript
	#echo "vim from inside the container..."
	xfe "$@"


%post
	#echo "Hello from inside the container"
	touch /THIS_IS_INSIDE_SINGULARITY
	#yum -ty update 
	#yum -ty install vim python2 zsh environment-modules
	#dnf --assumeyes --quiet install vim python2 zsh environment-modules
	pwd
	ls 
	bash -x ./add_package.sh | tee add_package.log

	echo "end"                  >> /THIS_IS_INSIDE_SINGULARITY
	date                        >> /THIS_IS_INSIDE_SINGULARITY

%labels
	MAINTAINER  Tin Ho tin'at'lbl.gov

