## M101JS - "MongoDB with NodeJS".

================
Vagrant
================

- Install [Vagrant](http://vagrantup.com/)
- Install [VirtualBox](http://www.virtualbox.org/)
- ```
vagrant plugin install vagrant-berkshelf
```
- ```
vagrant up
```
- ```
vagrant ssh
```
- ssh may ask for a password for the "vagrant" user, which is also "vagrant"
- Run commands as you would in your standard dev environment


================
Notes
================

If you have 64 bit OS Vagrant will use 64bit box, or else it will use 32bit box.

Any content that needs to be accessible on the VM instance can be put in the ./src directory.

When installing NPM packages be sure to use the --no-bin-links flag, e.g:

``` bash
npm install <package> --no-bin-links
```
