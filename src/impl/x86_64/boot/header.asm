section .multiboot_header
header_start:
    ;magic number that bootloader looks for
    dd 0xe85250d6 ; multiboot 2

    ;architecture of the system
    dd 0 ;protected mode i386

    ;header length
    dd header_end - header_start
    
    ;checksum
    dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))

    ;end tag
    dw 0
    dw 0
    dw 8
header_end: