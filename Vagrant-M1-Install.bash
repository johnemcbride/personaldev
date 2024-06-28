brew install vagrant qemu
#Due to dependency errors, we must install vbguest first..
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-qemu

#cd to working dir you like to keep your vagrant files
cd ~/VM-and-containers/VagrantMachines/M1-vagrantfiles/ubuntu18-generic-64/

#Create a vagrant file
$EDITOR Vagrantfile

#Paste into the vagrantfile the recipe below used to launch the VM
#Setting qemu as hypervisor and importing a ubuntu image with support for libvrt

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu1804"

  config.vm.provider "qemu" do |qe|
    qe.arch = "x86_64"
    qe.machine = "q35"
    qe.cpu = "max"
    qe.net_device = "virtio-net-pci"
  end
end


#Save ./Vagrantfile

#Launch the VM, note, you can specify provider if using a Vagrantfile with mulltiple providers with vagrant up --provider qemu
vagrant up

#Get a shell inside the VM
vagrant ssh

#Check your VM is running x86
vagrant@ubuntu-1204:~$ uname -a
Linux ubuntu1804.localdomain 4.15.0-193-generic #204-Ubuntu SMP Fri Aug 26 19:20:21 UTC 2022 x86_64 x86_64 x86_64 GNU/Linux

#Success!




#FAQ

#ERROR
#If you face this error after running vagrant up
Vagrant SMB synced folders require the account password to be stored
in an NT compatible format. Please update your sharing settings to
enable a Windows compatible password and try again.
#SOLUTION
# Visit System Preferences -> Sharing -> File Sharing -> Options
# Tick to enable file sharing, see here -> https://i.ibb.co/F4ZwF4V/Screen-Shot-2022-09-29-at-10-49-21-am.png 

#ERROR
#If you face this error after running vagrant up
default: SSH username: vagrant
default: SSH auth method: private key
default: Warning: Connection reset. Retrying...
default: Warning: Remote connection disconnect. Retrying...
#SOLUTION
#You can hit ctrl+c here, and attempt to run vagrant ssh and it should work despite the apparent error.

