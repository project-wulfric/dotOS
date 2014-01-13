#! /bin/sh
sudo rm -rv i386
mkdir i386
sudo debootstrap --arch=amd64 wheezy i386 http://http.debian.net/debian
sudo cp -v mount.sh ~/.OS/i386/mount.sh
sudo chroot i386 chmod +x mount.sh
sudo cp -v cfgmnt ~/.OS/i386/home/cfgmnt
sudo chroot i386 chmod +x /home/cfgmnt
sudo cp -v sources.list ~/.OS/i386/etc/apt/sources.list 
sudo cp -v Package.list ~/.OS/i386/home/Package.list 
sudo cp -v Repo.keys ~/.OS/i386/home/Repo.keys
sudo chroot i386 ./mount.sh
sudo rm -v i386/home/cfgmnt
sudo cp -v -r postinstall-scripts-req ~/.OS/i386/home/postinstall-scripts-req/

