    defcode "GPIO-DATA!", GPIO_DATASTORE @ ( value mask gpio -- )
    pop {r1}
    pop {r0}
    lsls r0, r0, #2
    adds r0, r1
    pop {r1}
    strb r1, [r0]
    NEXT

    defdata "DISP-FONT", DISP_FONT
    .byte 0x00, 0x00, 0x00, 0x00, 0x00   @ " "
    .byte 0x00, 0x00, 0x4f, 0x00, 0x00   @ !
    .byte 0x00, 0x07, 0x00, 0x07, 0x00   @ "
    .byte 0x14, 0x7f, 0x14, 0x7f, 0x14   @ #
    .byte 0x24, 0x2a, 0x7f, 0x2a, 0x12   @ $
    .byte 0x23, 0x13, 0x08, 0x64, 0x62   @ %
    .byte 0x36, 0x49, 0x55, 0x22, 0x50   @ &
    .byte 0x00, 0x05, 0x03, 0x00, 0x00   @ '
    .byte 0x00, 0x1c, 0x22, 0x41, 0x00   @ (
    .byte 0x00, 0x41, 0x22, 0x1c, 0x00   @ )
    .byte 0x14, 0x08, 0x3e, 0x08, 0x14   @ *
    .byte 0x08, 0x08, 0x3e, 0x08, 0x08   @ +
    .byte 0x00, 0x50, 0x30, 0x00, 0x00   @ ,
    .byte 0x08, 0x08, 0x08, 0x08, 0x08   @ -
    .byte 0x00, 0x60, 0x60, 0x00, 0x00   @ .
    .byte 0x20, 0x10, 0x08, 0x04, 0x02   @ /
    .byte 0x3e, 0x51, 0x49, 0x45, 0x3e   @ 0
    .byte 0x00, 0x42, 0x7f, 0x40, 0x00   @ 1
    .byte 0x42, 0x61, 0x51, 0x49, 0x46   @ 2
    .byte 0x21, 0x41, 0x45, 0x4b, 0x31   @ 3
    .byte 0x18, 0x14, 0x12, 0x7f, 0x10   @ 4
    .byte 0x27, 0x45, 0x45, 0x45, 0x39   @ 5
    .byte 0x3c, 0x4a, 0x49, 0x49, 0x30   @ 6
    .byte 0x01, 0x71, 0x09, 0x05, 0x03   @ 7
    .byte 0x36, 0x49, 0x49, 0x49, 0x36   @ 8
    .byte 0x06, 0x49, 0x49, 0x29, 0x1e   @ 9
    .byte 0x00, 0x36, 0x36, 0x00, 0x00   @ :
    .byte 0x00, 0x56, 0x36, 0x00, 0x00   @ ;
    .byte 0x08, 0x14, 0x22, 0x41, 0x00   @ <
    .byte 0x14, 0x14, 0x14, 0x14, 0x14   @ =
    .byte 0x00, 0x41, 0x22, 0x14, 0x08   @ >
    .byte 0x02, 0x01, 0x51, 0x09, 0x06   @ ?
    .byte 0x32, 0x49, 0x79, 0x41, 0x3e   @ @
    .byte 0x7e, 0x11, 0x11, 0x11, 0x7e   @ A
    .byte 0x7f, 0x49, 0x49, 0x49, 0x36   @ B
    .byte 0x3e, 0x41, 0x41, 0x41, 0x22   @ C
    .byte 0x7f, 0x41, 0x41, 0x22, 0x1c   @ D
    .byte 0x7f, 0x49, 0x49, 0x49, 0x41   @ E
    .byte 0x7f, 0x09, 0x09, 0x09, 0x01   @ F
    .byte 0x3e, 0x41, 0x49, 0x49, 0x7a   @ G
    .byte 0x7f, 0x08, 0x08, 0x08, 0x7f   @ H
    .byte 0x00, 0x41, 0x7f, 0x41, 0x00   @ I
    .byte 0x20, 0x40, 0x41, 0x3f, 0x01   @ J
    .byte 0x7f, 0x08, 0x14, 0x22, 0x41   @ K
    .byte 0x7f, 0x40, 0x40, 0x40, 0x40   @ L
    .byte 0x7f, 0x02, 0x0c, 0x02, 0x7f   @ M
    .byte 0x7f, 0x04, 0x08, 0x10, 0x7f   @ N
    .byte 0x3e, 0x41, 0x41, 0x41, 0x3e   @ O
    .byte 0x7f, 0x09, 0x09, 0x09, 0x06   @ P
    .byte 0x3e, 0x41, 0x51, 0x21, 0x5e   @ Q
    .byte 0x7f, 0x09, 0x19, 0x29, 0x46   @ R
    .byte 0x46, 0x49, 0x49, 0x49, 0x31   @ S
    .byte 0x01, 0x01, 0x7f, 0x01, 0x01   @ T
    .byte 0x3f, 0x40, 0x40, 0x40, 0x3f   @ U
    .byte 0x1f, 0x20, 0x40, 0x20, 0x1f   @ V
    .byte 0x3f, 0x40, 0x38, 0x40, 0x3f   @ W
    .byte 0x63, 0x14, 0x08, 0x14, 0x63   @ X
    .byte 0x07, 0x08, 0x70, 0x08, 0x07   @ Y
    .byte 0x61, 0x51, 0x49, 0x45, 0x43   @ Z
    .byte 0x00, 0x7f, 0x41, 0x41, 0x00   @ [
    .byte 0x02, 0x04, 0x08, 0x10, 0x20   @ "\"
    .byte 0x00, 0x41, 0x41, 0x7f, 0x00   @ ]
    .byte 0x04, 0x02, 0x01, 0x02, 0x04   @ ^
    .byte 0x40, 0x40, 0x40, 0x40, 0x40   @ _
    .byte 0x00, 0x01, 0x02, 0x04, 0x00   @ `
    .byte 0x20, 0x54, 0x54, 0x54, 0x78   @ a
    .byte 0x7f, 0x48, 0x44, 0x44, 0x38   @ b
    .byte 0x38, 0x44, 0x44, 0x44, 0x20   @ c
    .byte 0x38, 0x44, 0x44, 0x48, 0x7f   @ d
    .byte 0x38, 0x54, 0x54, 0x54, 0x18   @ e
    .byte 0x08, 0x7e, 0x09, 0x01, 0x02   @ f
    .byte 0x0c, 0x52, 0x52, 0x52, 0x3e   @ g
    .byte 0x7f, 0x08, 0x04, 0x04, 0x78   @ h
    .byte 0x00, 0x44, 0x7d, 0x40, 0x00   @ i
    .byte 0x20, 0x40, 0x44, 0x3d, 0x00   @ j
    .byte 0x7f, 0x10, 0x28, 0x44, 0x00   @ k
    .byte 0x00, 0x41, 0x7f, 0x40, 0x00   @ l
    .byte 0x7c, 0x04, 0x18, 0x04, 0x78   @ m
    .byte 0x7c, 0x08, 0x04, 0x04, 0x78   @ n
    .byte 0x38, 0x44, 0x44, 0x44, 0x38   @ o
    .byte 0x7c, 0x14, 0x14, 0x14, 0x08   @ p
    .byte 0x08, 0x14, 0x14, 0x18, 0x7c   @ q
    .byte 0x7c, 0x08, 0x04, 0x04, 0x08   @ r
    .byte 0x48, 0x54, 0x54, 0x54, 0x20   @ s
    .byte 0x04, 0x3f, 0x44, 0x40, 0x20   @ t
    .byte 0x3c, 0x40, 0x40, 0x20, 0x7c   @ u
    .byte 0x1c, 0x20, 0x40, 0x20, 0x1c   @ v
    .byte 0x3c, 0x40, 0x30, 0x40, 0x3c   @ w
    .byte 0x44, 0x28, 0x10, 0x28, 0x44   @ x
    .byte 0x0c, 0x50, 0x50, 0x50, 0x3c   @ y
    .byte 0x44, 0x64, 0x54, 0x4c, 0x44   @ z
    .byte 0x00, 0x08, 0x36, 0x41, 0x00   @ {
    .byte 0x00, 0x00, 0x7f, 0x00, 0x00   @ |
    .byte 0x00, 0x41, 0x36, 0x08, 0x00   @ }
    .byte 0x02, 0x01, 0x02, 0x04, 0x02   @ ~

    defcode "RETI", RETI
    pop {r4 - r7, pc}

    defword ";I", SEMICOLONI, F_IMMED
    .word LIT, RETI, COMMAXT, REVEAL, LBRACKET, EXIT

    defcode "FOPEN", FOPEN
    pop {r0, r1}
    push {r0}
    push {r1}
    movs r0, #1
    mov r1, sp
    bkpt #0xab
    add sp, #8
    push {r0}
    NEXT

    defcode "FWRITE", FWRITE
    pop {r0 - r2}
    push {r0}
    push {r1}
    push {r2}
    movs r0, #5
    mov r1, sp
    bkpt #0xab
    add sp, #12
    push {r0}
    NEXT

    defcode "FREAD", FREAD
    pop {r0 - r2}
    push {r0}
    push {r1}
    push {r2}
    movs r0, #6
    mov r1, sp
    bkpt #0xab
    add sp, #12
    push {r0}
    NEXT

    defcode "FSEEK", FSEEK
    pop {r0, r1}
    push {r0}
    push {r1}
    movs r0, #10
    mov r1, sp
    bkpt #0xab
    add sp, #8
    push {r0}
    NEXT

    defcode "FCLOSE", FCLOSE
    movs r0, #2
    mov r1, sp
    bkpt #0xab
    add sp, #4
    push {r0}
    NEXT

    defcode "KEY?", KEYQ
    ldr r0, =addr_SBUF_HEAD
    ldr r1, [r0]
    ldr r0, =addr_SBUF_TAIL
    ldr r0, [r0]
    subs r0, r1
    beq 1f
    movs r0, #0
    mvns r0, r0
1:  push {r0}
    NEXT

    defvar "SBUF", SBUF, 16
    defvar "SBUF-HEAD", SBUF_HEAD
    defvar "SBUF-TAIL", SBUF_TAIL
    defvar "IVT", IVT, 48 * 4
    defvar "UART0-TASK", UARTZ_TASK

    .ltorg
