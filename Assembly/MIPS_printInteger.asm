.data
  numero: .word 29

.text
  main:
    li $v0, 1
    lw $a0, numero
    syscall
	
    li $v0, 10
    syscall
