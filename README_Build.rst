
Info
----

modeled after vnfs-desktop.def for w0000


bulk of install in shell script,
so singularity and docker invoke the same setup script.
hopefully doesn't end up with cache poison problem.


Build 
-----

zink#
sudo singularity build --sandbox ./guiDesk Singularity 2>&1 | tee singularity_build.log  

