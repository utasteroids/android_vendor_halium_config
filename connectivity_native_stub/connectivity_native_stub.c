/*
 * Stand-in for libcom.android.tethering.connectivity_native.so, the LLNDK
 * client library of the Tethering APEX.
 *
 * The real library forwards each call to the "connectivity_native" binder
 * service in system_server and returns EAGAIN when that service is not
 * registered. Halium runs no system_server, so the real library already
 * returns EAGAIN for every call; this stub does the same without the APEX.
 * Vendor daemons (e.g. Qualcomm's qms and nicmd) only need it to load.
 */

#include <errno.h>
#include <netinet/in.h>
#include <stddef.h>

#define EXPORT __attribute__((visibility("default")))

EXPORT int AConnectivityNative_blockPortForBind(in_port_t port) {
    (void)port;
    return EAGAIN;
}

EXPORT int AConnectivityNative_unblockPortForBind(in_port_t port) {
    (void)port;
    return EAGAIN;
}

EXPORT int AConnectivityNative_unblockAllPortsForBind(void) {
    return EAGAIN;
}

EXPORT int AConnectivityNative_getPortsBlockedForBind(in_port_t* ports, size_t* count) {
    (void)ports;
    (void)count;
    return EAGAIN;
}
