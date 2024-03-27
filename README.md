* This project is extract version from meta-mender-community
* https://github.com/mendersoftware/meta-mender-community
* https://hub.mender.io/t/beaglebone-black/83
* The meta-mender-community project use u-boot + grub but this only use u-boot
* https://docs.mender.io/operating-system-updates-yocto-project/board-integration/bootloader-support/u-boot
* https://docs.mender.io/operating-system-updates-yocto-project/board-integration/bootloader-support/u-boot/manual-u-boot-integration
* Add CAN interface (SocketCAN) and CAN tools

```
mkdir my-mender-bbb
cd my-mender-bbb
repo init -u git@github.com:charlie388/meta-my-mender-bbb.git -b kirkstone
repo sync
source setup-environment
```
* modify MENDER_SERVER_URL in conf/local.conf, then do below
```
bitbake core-image-base
```

![show photo](photo/BBB_CAN0-1.jpg)

how to install `repo` on ubuntu:
* https://gerrit.googlesource.com/git-repo#install
* https://source.android.com/docs/setup/download#installing-repo
```
sudo apt-get install python-is-python3
mkdir -p ~/.bin
PATH="${HOME}/.bin:${PATH}"
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
chmod a+rx ~/.bin/repo
```

