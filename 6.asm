org 100h

.data
arr db 4, 6, 2, 10, 8, 0
c db 4
d db 8 
res dw 0
.code
main proc
    mov bh, [c]
    mov dh, [d]
    lea si, arr  
compare:
    mov al, byte ptr[si]
    cmp al, 0  
    je end
    jb skip
    cmp al, bh
    jb skip
    cmp al, dh
    ja skip
    inc res
    skip:
    add si,1
    jmp compare 
    end:
    mov ah, 02h 
    add res, 30h
    mov dx, res
    int 21h
main endp
ret
       