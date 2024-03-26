FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://eth.network \
    file://80-can.network \
    file://80-can.link \
"

FILES:${PN} += " \
    ${sysconfdir}/systemd/network/eth.network \
    ${sysconfdir}/systemd/network/80-can.network \
    ${sysconfdir}/systemd/network/80-can.link \
"

do_install:append() {
    install -d ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/eth.network    ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/80-can.network ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/80-can.link    ${D}${sysconfdir}/systemd/network
}

