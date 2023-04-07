;var 16: (c/d+1,5a)/(c-a+1)       
;include 'emu8086.inc'
.model tiny 
org 100h
.data
a dw -1
c dw -10
d dw 1
x dw 0
.code   

mov ax, 3d 
mov bx, [a]
mul bx
mov bx,2d 
cwd
idiv bx
mov bx,ax  ;(1,5a)

mov cx, d
mov ax,c 
cwd
idiv cx
add bx, ax;(c/d+1,5a)

mov cx,c
sub cx, [a]
add cx,1 ; (c-a+1)

mov ax, bx
cwd
idiv cx  
mov x, ax
ret               
