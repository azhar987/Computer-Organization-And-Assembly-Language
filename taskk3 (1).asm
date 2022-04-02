org 0x0100
mov ax,0
mov bx,0
mov cx,0
mov dx,10
loop1:
	mov ax,[data+cx]
	mov bx,[data+dx]
	mov [data+cx],bx
	mov [data+dx],ax
	add cx,2
	sub dx,10
	jnz loop1
mov ax,0x4c00
int 0x21
data:dw 1,2,3,4,5,6