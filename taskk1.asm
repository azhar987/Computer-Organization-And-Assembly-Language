org 0x0100
mov ax,0
mov cx,6
mov bx,0
loop1:
	mov ax,[data+bx]
	cmp ax,12
	ja greaterr

	mov [less+bx],ax
	add bx,2
	sub cx,1
	jnz loop1
greaterr:
	mov [greater],ax
	add bx,2
	sub cx,1
	jnz loop1
mov ax,0x4c00
int 0x21
data:dw 5,10,8,6,11,20
greater:dw 0
less:dw 0