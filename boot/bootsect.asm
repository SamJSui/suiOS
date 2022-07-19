[org 0x7c00]

mov bx, boot_OS
mov ah, 0x0e ; tty mode

main: 
    mov al, [bx]
    cmp al, 0
    jle magic_number
    int 0x10
    inc bx
    jmp main

boot_OS:
    db 'Booting OS', 0

magic_number:
    times 510-($-$$) db 0
    dw 0xaa55