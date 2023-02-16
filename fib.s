.text
.extern printf
.global main
main:
#a and b respectively
	mov x20, #0
	mov x21, #1
#counter
	mov x22, #0
#temp
	mov x23, #0

_looptop:		

	add x23, x21, x20
	mov x20, x21
	mov x21, x23
	mov x1, x21
#printf
	ldr x0, =string1
	bl  printf
#loop check, if not go back looptop	
	add x22, x22, #1
	cmp x22, #10
	bne _looptop
_exit:
	mov x8, #93
	mov x0, #0
	svc #0

.data
.global string1
string1:
	.ascii "%d\n"
	
		


