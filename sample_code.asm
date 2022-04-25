movl r1, 0xF
movl r2, 0xC

str r1, [r2]        ; Stores the word held by r1 into memory at the address held by r2 (R-mode)
                    ; machine code: 0100 0001 0010 0000

sti r1, 0xA         ; Stores the word held by r1 into memory at address 0xA            (I-mode)
                    ; machine code: 0010 0001 0000 1010

ldr r3, [r2]        ; Reads the word in memory at the address held by r2,              (R-mode)
                    ; and writes this value to r3
                    ; machine code: 0101 0011 0010 0000

ldi r4, 0xC         ; Reads the word in memory at address 0xC,                         (I-mode)
                    ; and writes this value to r4
                    ; machine code: 0011 0100 0000 1100

; Now in RAM, the 16-bit values stored at address 0xA and 0xC should both equal to 0xF
; Also, r3 and r4 should both equal to 0xF
