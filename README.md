# RaspberryPi Power Button

The Pi will wake from a halt state  when BCM 3 (pin 5) is pulled low.

This project allows the Pi to be put into a halt state using the same button by waiting for a
pin interrupt on BCM 3.

## Installation

### Install

```sh
sudo make install
systemctl enable pi-powerbutton
systemctl start pi-powerbutton   # Or reboot
```

### Uninstall

```sh
systemctl stop pi-powerbutton    # Or reboot after uninstall
systemctl disable pi-powerbutton
sudo make uninstall
```

### Destination

Note that `make` can be passed `DESTDIR` to install/uninstall to/from a specific directory:

```sh
make DESTDIR=/my/system install
make DESTDIR=/my/system uninstall
```

## TODO

* Ditch Python and create a Linux kernel modules
