# This project is extract version from meta-mender-community
# https://github.com/mendersoftware/meta-mender-community
# https://hub.mender.io/t/beaglebone-black/83
# The meta-mender-community repository use u-boot + grub for BBB.
# This version only use u-boot.
# https://docs.mender.io/operating-system-updates-yocto-project/board-integration/bootloader-support/u-boot
# https://docs.mender.io/operating-system-updates-yocto-project/board-integration/bootloader-support/u-boot/manual-u-boot-integration
mkdir my-mender-bbb
cd my-mender-bbb
repo init -u git@github.com:charlie388/meta-my-mender-bbb.git -b kirkstone
repo sync
source setup-environment
# modify MENDER_SERVER_URL in conf/local.conf
bitbake core-image-base

Note:
# how to install repo comd on ubuntu
# https://gerrit.googlesource.com/git-repo#install
# https://source.android.com/docs/setup/download#installing-repo
sudo apt-get install python-is-python3
mkdir -p ~/.bin
PATH="${HOME}/.bin:${PATH}"
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
chmod a+rx ~/.bin/repo
