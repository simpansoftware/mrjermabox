#!/bin/bash
#


#define these here for easy updating
script_date="[2016-12-22]"

#where the stuff is
util_source="https://www.mrchromebox.tech/files/util/"
rwlegacy_source="https://www.mrchromebox.tech/files/firmware/rw_legacy/"
bootstub_source="https://www.mrchromebox.tech/files/firmware/boot_stub/"
fullrom_source="https://www.mrchromebox.tech/files/firmware/full_rom/"
shellball_source="https://www.mrchromebox.tech/files/firmware/shellball/"
cbfs_source="https://www.mrchromebox.tech/files/firmware/cbfs/"

#LE sources
LE_url_official="http://releases.libreelec.tv/"
LE_url=${LE_url_official}
chrx_url="https://chrx.org/go"

#LE version
LE_version_base="LibreELEC-Generic.x86_64"
LE_version_stable="7.0.2"
LE_version_latest="7.90.010"

#syslinux version
syslinux_version="syslinux-6.04-pre1"

#UEFI Full ROMs
#SNB/IVB
coreboot_uefi_parrot="coreboot_tiano-parrot_snb-mrchromebox_20161214.rom"
coreboot_uefi_parrot_ivb="coreboot_tiano-parrot_ivb-mrchromebox_20161214.rom"
#Haswell
coreboot_uefi_falco="coreboot_tiano-falco-mrchromebox_20161214.rom"
coreboot_uefi_leon="coreboot_tiano-leon-mrchromebox_20161214.rom"
coreboot_uefi_mccloud="coreboot_tiano-mccloud-mrchromebox_20161214.rom"
coreboot_uefi_monroe="coreboot_tiano-monroe-mrchromebox_20161214.rom"
coreboot_uefi_panther="coreboot_tiano-panther-mrchromebox_20161214.rom"
coreboot_uefi_peppy="coreboot_tiano-peppy-mrchromebox_20161214.rom"
coreboot_uefi_peppy_elan="coreboot_tiano-peppy_elan-mrchromebox_20161214.rom"
coreboot_uefi_tricky="coreboot_tiano-tricky-mrchromebox_20161214.rom"
coreboot_uefi_wolf="coreboot_tiano-wolf-mrchromebox_20161214.rom"
coreboot_uefi_zako="coreboot_tiano-zako-mrchromebox_20161214.rom"
#Broadwell
coreboot_uefi_auron_paine="coreboot_tiano-auron_paine-mrchromebox_20161214.rom"
coreboot_uefi_auron_yuna="coreboot_tiano-auron_yuna-mrchromebox_20161214.rom"
coreboot_uefi_gandof="coreboot_tiano-gandof-mrchromebox_20161214.rom"
coreboot_uefi_guado="coreboot_tiano-guado-mrchromebox_20161214.rom"
coreboot_uefi_lulu="coreboot_tiano-lulu-mrchromebox_20161214.rom"
coreboot_uefi_rikku="coreboot_tiano-rikku-mrchromebox_20161214.rom"
coreboot_uefi_samus="coreboot_tiano-samus-mrchromebox_20161214.rom"
coreboot_uefi_tidus="coreboot_tiano-tidus-mrchromebox_20161214.rom"


#Legacy Full ROMs (deprecated)
#SNB/IVB
coreboot_stumpy="coreboot_seabios-stumpy-mrchromebox_20161208.rom"
coreboot_parrot="coreboot_seabios-parrot_snb-mrchromebox_20161127.rom"
coreboot_parrot_ivb="coreboot_seabios-parrot_ivb-mrchromebox_20161127.rom"
#Haswell
coreboot_falco="coreboot_seabios-falco-mrchromebox_20161107.rom"
coreboot_leon="coreboot_seabios-leon-mrchromebox_20161107.rom"
coreboot_monroe="coreboot_seabios-monroe-mrchromebox_20161107.rom"
coreboot_hsw_box="coreboot_seabios-panther-mrchromebox_20161107.rom"
coreboot_peppy="coreboot_seabios-peppy-mrchromebox_20161107.rom"
coreboot_peppy_elan="coreboot_seabios-peppy_elan-mrchromebox_20161107.rom"
coreboot_wolf="coreboot_seabios-wolf-mrchromebox_20161107.rom"
#Broadwell
coreboot_auron_paine="coreboot_seabios-auron_paine-mrchromebox_20161107.rom"
coreboot_auron_yuna="coreboot_seabios-auron_yuna-mrchromebox_20161107.rom"
coreboot_gandof="coreboot_seabios-gandof-mrchromebox_20161107.rom"
coreboot_guado="coreboot_seabios-guado-mrchromebox_20161107.rom"
coreboot_lulu="coreboot_seabios-lulu-mrchromebox_20161107.rom"
coreboot_rikku="coreboot_seabios-rikku-mrchromebox_20161107.rom"
coreboot_samus="coreboot_seabios-samus-mrchromebox_20161107.rom"
coreboot_tidus="coreboot_seabios-tidus-mrchromebox_20161107.rom"
#BayTrail
coreboot_candy="coreboot_seabios-candy-mrchromebox_20161107.rom"
coreboot_enguarde="coreboot_seabios-enguarde-mrchromebox_20161107.rom"
coreboot_glimmer="coreboot_seabios-glimmer-mrchromebox_20161107.rom"
coreboot_gnawty="coreboot_seabios-gnawty-mrchromebox_20161107.rom"
coreboot_kip="coreboot_seabios-kip-mrchromebox_20161107.rom"
coreboot_ninja="coreboot_seabios-ninja-mrchromebox_20161107.rom"
coreboot_quawks="coreboot_seabios-quawks-mrchromebox_20161107.rom"
coreboot_swanky="coreboot_seabios-swanky-mrchromebox_20161107.rom"


#RW_LEGACY payloads
seabios_hswbdw_box="seabios-hswbdw_box-mrchromebox_20161107.bin"
seabios_hsw_book="seabios-hsw_book-mrchromebox_20161107.bin"
seabios_bdw_book="seabios-bdw_book-mrchromebox_20161107.bin"
seabios_baytrail="seabios-byt-mrchromebox_20161107.bin"
seabios_braswell="seabios-bsw-mrchromebox_20161107.bin"
seabios_skylake="seabios-skl-mrchromebox_20161107.bin"
seabios_link="seabios-link.bin"

#BOOT_STUB payloads
bootstub_payload_baytrail="seabios-byt_bootstub-mrchromebox_20161107.bin"


#hsw/bdw headless VBIOS
hswbdw_headless_vbios="hswbdw_vgabios_1040_cbox_headless.dat"

#PXE ROM for Chromeboxes w/RTL81xx ethernet
pxe_optionrom="10ec8168.rom"
