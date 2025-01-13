#! /bin/bash

virt-install \
--virt-type qemu \
--name alpine \
--os-variant alpinelinux3.15 \
--memory 1024 \
--graphics none \
--extra-args='console=ttyS0' \
--location https://dl-cdn.alpinelinux.org/alpine/v3.13/releases/x86/alpine-standard-3.13.5-x86.iso
--disk path=/disk/VMs/alpine.qcow2,size=10,bus=virtio,io=threads,cache=none
