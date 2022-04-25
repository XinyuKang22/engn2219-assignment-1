movl r1, 0xF
movl r2, 0xC

str r1, [r2]        ; store the value in r1 into RAM at the address stored in r2    (R-mode)
                    ; machine code: 0100 0001 0010 0000

sti r1, 0xA         ; store the value in r1 into RAM at address 0xA                 (I-mode)
                    ; machine code: 0010 0001 0000 1010

ldr r3, [r2]        ; load the value at address [r2] into r3                        (R-mode)
                    ; machine code: 0101 0011 0010 0000

ldi r4, 0xC          ; load the value at address 0xC into r4                        (I-mode)
                    ; machine code: 0011 0100 0000 1100

; now in RAM, the 16-bit values stored at address 0xA and 0xC should both equal to 0xF
; also, r3 and r4 should both equal to 0xF
