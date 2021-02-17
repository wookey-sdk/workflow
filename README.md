# USB stack automatic Frama-C proving workflow

This repository handle the overall automated frama-C formal proof of the new Wookey USB stack.

The overall USB stack is fully checked (EVA+WP) with both Frama-C 21.1 and 22.0 each day.

![Full proof](https://github.com/wookey-sdk/workflow/workflows/.github/workflows/main.yml/badge.svg)

Each time a new commit is received on one of the USB stack modules main branch, a new formal proof
check is triggered on this module (EVA+WP), again with Frama-C 21.1 and 22.0.

![usbdci     proof](https://github.com/wookey-sdk/workflow/workflows/.github/workflows/libusbctrl.yml/badge.svg)
![dfu        proof](https://github.com/wookey-sdk/workflow/workflows/.github/workflows/libdfu.yml/badge.svg)
![usbmsc     proof](https://github.com/wookey-sdk/workflow/workflows/.github/workflows/libusbmsc.yml/badge.svg)
![usbhid     proof](https://github.com/wookey-sdk/workflow/workflows/.github/workflows/libusbhid.yml/badge.svg)
![usb-otg-hs proof](https://github.com/wookey-sdk/workflow/workflows/.github/workflows/usbotghs.yml/badge.svg)


