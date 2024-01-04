mov ah, 0x0e
mov al, 0x21
int 0x10

loop:
  inc al
  int 0x10
  cmp al, 0x7e
  je cnt
  jmp loop

cnt: 
  jmp $

times 510-($-$$) db 0
db 0x55, 0xaa
