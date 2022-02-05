#ruledef {
    nop             => 0x00
    lda [{addr:u4}] => 0x1 @ addr`4
    add [{addr:u4}] => 0x2 @ addr`4
    sub [{addr:u4}] => 0x3 @ addr`4
    sta [{addr:u4}] => 0x4 @ addr`4
    ldi {imm:u4}    => 0x5 @ imm`4
    jmp {addr:u4}   => 0x6 @ addr`4
    jc  {addr:u4}   => 0x7 @ addr`4
    jz  {addr:u4}   => 0x8 @ addr`4
    jnc {addr:u4}   => 0x9 @ addr`4
    jnz {addr:u4}   => 0xA @ addr`4
    ; reserved      => 0xB0
    ; reserved      => 0xC0
    ina             => 0xD0
    out             => 0xE0
    hlt             => 0xF0
}
