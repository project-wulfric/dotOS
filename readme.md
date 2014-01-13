dotOS Remastering System
========================

As long as we're reinventing the wheel now, I've frequently found automated ways  
of remastering GNU/Linux based Operating Systems to be a little frustrating for  
one reason or the other. This project is to build a remastering system which  
suits my needs. It will eventually be written to create remastered systems for  
muiltipe target architectures, right now beginning with x86 and x86_64 because  
of the relative ease combined with their prevalence.  

How it works
------------------------
The systems are built by a very, very simple process.  
  * First, a backup of the host machine's installed programs is gnerated. The  
  settings, however, are not backed up at this stage, simply a copy of  
  /etc/apt/sources.list, a file called "Packages.list" which containes a list  
  of installed packages on the host system, and Repo.Keys, a copy of the apt  
  keys on the host system.  
  * Next, a chroot is created and a core system is installed. The sources.list,  
  Pakcages.list, and Repo.keys are imported to the chrooted machine and the core  
  system is updated to reflect thost packages.(You will probably have to press  
  "Y" at many times during this part for now).  
  * (WIP) After that, preinstall scripts are run to copy desired settings from  
  the host system to the chrooted system. These are a set of shell scripts that  
  for now have to be user generated and in the end that will be unacceptable.
  * Then a set of oprional post-install scripts are copied to the /home/  
  directory for one-time use after the user installs the OS, in case there is  
  something the end user absolutely MUST configure.  
  * then we configure the system for automatic login, remove the configuration  
  files and generate an ISO from the chroot filesystem.  

How to run
----------

	Currently, dotOS runs only from /home/$USER/.OS directory. This will  
	need to chancge and when it does this will be the first place that knows  
	about it. But if you want to try these scripts out, for now, clone in 
	this fashion.
	
        cd ~
        git clone https://github.com/project-wulfric/dotOS.git .OS
        cd .OS
        ./config64.sh 
        ./build64.sh
	
