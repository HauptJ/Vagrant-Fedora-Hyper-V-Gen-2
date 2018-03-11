# Vagrant-Fedora-Hyper-V-Gen-2 AMD 64
Hyper-V Generation 2 Fedora 27 with Cinnamon Desktop Vagrant Box

This is a Hyper-V generation 2 box with nested virtualization.

[Vagrant Cloud](https://app.vagrantup.com/hauptj/boxes/Fedora27WS)

Usage:
------

Simply `cd` into the directory with the Vagrantfile and run:
```
vagrant up
```
**Note:** Having [Vagrant](https://www.vagrantup.com/downloads.html) installed
beforehand would be helpful.

**Vagrantfile**

```
Vagrant.configure("2") do |config|
  config.vm.box = "hauptj/Fedora27WS"
end
```

**CLI**

```
vagrant init hauptj/Fedora27WS
vagrant up
```

Contributing:
-------------
Just submit a pull request. If you can get the kickstart file, ks.cfg, to work,
that would be more than awesome.

Building:
---------
Simply `cd` into the directory with the fedora.json file and run:
```
packer build -force fedora.json
```

Screenshot of VirtualBox running in a Hyper-V VM:
![Screenshot](https://raw.githubusercontent.com/HauptJ/Vagrant-Fedora-Hyper-V-Gen-2/master/Capture.PNG "Screenshot")
