org 100h

.data
arr db 4, 6, 0, 2, 10, 8
c db 4
d db 8 
res dw 0
.code
main proc
mov cx, 6
mov bh, [c]
mov dh, [d]
compare:
mov si, cx 
sub si,1
cmp arr[si], 0
jb skip
cmp arr[si], bh
jb skip
cmp arr[si], dh
ja skip
inc res
skip:
loop compare 
  mov ah, 02h 
  add res, 30h
  mov dx, res
  int 21h
main endp
ret




