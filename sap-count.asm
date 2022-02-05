#include "sap.asm"

start:
    ldi 1
    sta [15]
    ldi 0
up:
    add [15]
    jc  dn
    jmp up
dn:
    sub [15]
    jz  done
    jmp dn
done:
    lda [14]
    out
    add [15]
    jc  halt
    sta [14]
    jmp up
halt:
    hlt
