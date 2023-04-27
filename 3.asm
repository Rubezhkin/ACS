org 100h
.data
a dw 0
b dw -1
x dw 0 
f db 0
.code
mov bx, [a]
mov cx, [b]

cmp bx, cx
je eq
jg higher
jl lower

eq:
mov x, -295    
jmp stop

higher: 
cmp cx, 0
je error
sub bx, 235
mov ax, bx  
cwd
idiv cx
mov x, ax  
jmp stop

lower:
cmp bx, 0
je error
mov ax,cx 
cwd                                                 
div bx
sub ax, 1  
mov x, ax
jmp stop
   
error:
mov f,1
ret

stop:
ret  
end




