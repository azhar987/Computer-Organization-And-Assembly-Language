org 0x0100
mov ax,0
mov bx,200
mov cx,30
outerloop:
cmp ax,bx
jne addd
addd:
add cx,10
mov ax,cx
cmp ax,100
jb addd
cmp ax,100
je outt
add ax,10
outt:
mov ax,0x4c00
int 0x21