section .data
    msg db 'Hello, World!',0

section .text
    global _start

_start:
    mov eax, 4         ; sys_write
    mov ebx, 1         ; stdout
    mov ecx, msg       ; pesan
    mov edx, 13        ; panjang pesan
    int 0x80           ; interrupt

    mov eax, 1         ; sys_exit
    xor ebx, ebx       ; status
    int 0x80           ; interrupt
