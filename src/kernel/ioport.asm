; Code generated by GCC
; Manually put into assembly since inline asm is a pain to work with

GLOBAL inb
GLOBAL outb

inb:
    mov edx, DWORD [esp + 0x4]      ; [esp+0x4] (uint16_t port) -> edx
    in al, dx                       ; read input to al (return)
    ret

outb:
    mov edx, DWORD [esp + 0x4]      ; [esp+0x4] (uint8_t data) -> edx
    mov eax, DWORD [esp + 0x8]      ; [esp+0x8] (uint16_t port) -> eax
    out dx, al                      ; do output, which happens to end up in eax (return)
    ret