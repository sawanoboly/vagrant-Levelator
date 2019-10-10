# vagrant-Levelator

Run Levelator CLI on Ubuntu14.04-i386.

Ref: https://gist.github.com/bmaupin/c87ac42ecbbfcff4ad0d


## Requirements

- Vagrant
- vagrant-vbguest

## Setup

```
$ vagrant up
```

## Usage

put wave/aif file to current directory.

```
$ vagrant ssh
(vagrant)$ cd /vagrant  # <= shared with host.

(vagrant)$ levelator foo.aif foo.output.aif
```


## (optional) Enable GUI

```
$ ENABLE_GUI=true vagrant up
# It takes a very long time...

$ vagrant reload
```

### Launch GUI(Exclusive with CLI.)

After the VM reboots, it's in a desktop environment.

1. login desktop with password `vagrant`
2. Launch Terminal.
3. `rm -rf /opt/Levelator-1.3.0-Python2.5/.levelator/wx`

```
$ cd /opt/Levelator-1.3.0-Python2.5/
$ ./levelator.bak
```

Drag and drop a WAV or AIFF file.
