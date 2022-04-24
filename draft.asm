movl r1, 0xF
movl r2, 0xC
str r1, [r2]        ; store the value in r1 (0xF) into RAM at address r2 (0xC)

ldr r3, [r2]        ; load the value at address [r2] into r3 using ldr  (R-mode)
                    ; machine code: 0101 0011 0010 0000

ld r4, 0xC          ; load the value at address 0xC into r4 using ld    (I-mode)
                    ; machine code: 0010 0100 0000 1100

; now r3 and r4 should both equal to 0xF
