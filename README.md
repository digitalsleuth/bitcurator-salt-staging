![Logo](https://github.com/BitCurator/bitcurator.github.io/blob/master/logos/BitCurator-Basic-400px.png)

# bitcurator-distro-salt

[![GitHub issues](https://img.shields.io/github/issues/bitcurator/bitcurator-distro-salt.svg)](https://github.com/bitcurator/bitcurator-distro-salt/issues)
[![GitHub forks](https://img.shields.io/github/forks/bitcurator/bitcurator-distro-salt.svg)](https://github.com/bitcurator/bitcurator-distro-salt/network)
[![Twitter Follow](https://img.shields.io/twitter/follow/bitcurator.svg?style=social&label=Follow)](https://twitter.com/bitcurator)

This repo includes relevant salt states and supporting files to build a stack of data analysis, forensics, and security tools using Ubuntu and SaltStack. This build stack is intended to support setup of the BitCurator imaging and disk analysis environment.

Visit https://github.com/BitCurator/bitcurator-distro/wiki/Releases to download pre-built VMs for specific releases.

## Pre-Installation Setup

Install Ubuntu 18.04LTS environment in a VM or on a dedicated host (see https://ubuntu.com/tutorials/tutorial-install-ubuntu-desktop for help with this). Our pre-built VMs use the hostname "bitcurator" and the username "bcadmin", but any hostname and username are ok. Log in, ensure you are connected to a network, and execute the following in a terminal:

```shell
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt install git
```

## Simple install

A simple bash installer script that fully automates the creation of the BitCurator environment is provided by our [bitcurator-distro-installer](https://github.com/bitcurator/bitcurator-distro-installer) repository. Run the following in a terminal:

```shell
git clone https://github.com/bitcurator/bitcurator-distro-installer
cd bitcurator-distro-installer
sudo ./install.sh -u username
```

Replace **username** with the name of an existing user. The installation may take an hour or longer to complete.

## Manual install

Current packaging of SaltStack is available in the 18.04 repositories. Simply run:

```shell
sudo apt install salt-minion
sudo service salt-minion stop
```

Visit http://repo.saltstack.com/#ubuntu for additional details.

Next, clone this repository and run the required salt-call:

```shell
sudo git clone https://github.com/bitcurator/bitcurator-distro-salt /srv/salt
cd /srv/salt
sudo salt-call -l info --local state.sls bitcurator.primary pillar='{"bitcurator_version": "dev", "bitcurator_user": "TYPE_YOUR_USERNAME_HERE"}'
```

Reboot the VM or host and log in. The OS should now be configured to operate as a BitCurator environment.

## What's in this repository

This repo has been organized to make the process of maintaining and contributing to BitCurator development as transparent as possible. An explanation of the layout follows.

The **bitcurator** directory contains all support files and salt states in a number of different directories:

- **attic**: Legacy and unused files that have been kept for reference or potential future use
- **config**: Salt states and support files for environment and user configuration
- **debs**: Deb packages that are required but do not have a stable external home
- **env**: Environment support files and salt states for the user desktop and various tools
- **externals**: Source packages that are either not deb packaged or for which a legacy version is required
- **mounter**: Mount policy tools
- **packages**: all deb packages (to be installed with apt-get)
- **python-packages**: all Python 3 packages (to be installed with pip3)
- **repos**: additional repositories that must be enabled
- **tools**: tools that must be installed from source

## Alternate Build and Configuration Options (not required for regular build) 

Installing only select packages

```shell
sudo salt-call --local --file-root=/tmp/bitcurator state.sls bitcurator.packages,bitcurator.python-packages
```

Salt may also be installed from a dedicated repo (if needed for alternate buidls):

```shell
wget -O - https://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
echo "deb http://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest bionic main" | sudo tee /etc/apt/sources.list.d/saltstack.list
sudo apt-get update
sudo apt-get install salt-minion
sudo service salt-minion stop
```

## BitCurator documentation, help, and other information

User documentation and additional resources are available on
[the BitCurator Environment wiki](https://confluence.educopia.org/display/BC).

Questions and comments can also be directed to the bitcurator-users list.

[https://groups.google.com/d/forum/bitcurator-users](https://groups.google.com/d/forum/bitcurator-users)

## License(s)

The BitCurator logo, BitCurator project documentation, and other non-software products of the BitCurator team are subject to the the Creative Commons Attribution 4.0 Generic license (CC By 4.0).

Unless otherwise indicated, software items in this repository are distributed under the terms of the GNU General Public License v3.0. See the LICENSE file for additional details.

In addition to software produced by the BitCurator team, BitCurator packages and modifies open source software produced by other developers. Licenses and attributions are retained here where applicable.

## Development Team and Support

The BitCurator environment is a product of the BitCurator team housed at the School of Information and Library Science at the University of North Carolina at Chapel Hill. Funding between 2011 and 2014 was provided by the Andrew W. Mellon Foundation.

Ongoing support for the BitCurator environment is managed by the BitCurator Consortium. Find out more at:

http://www.bitcuratorconsortium.net/


