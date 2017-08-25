.data
  message: .asciiz "Samat numerot."
  message2: .asciiz "Eri numerot."
  message3: .asciiz "Mitaan ei tapahtunut."

.text
  main:
    addi $t0, $zero, 5
    addi $t1, $zero, 20
	
    beq $t0, $t1, samatNumerot
	
    # bne = branch if not equal
    bne $t0, $t1, eriNumerot
	
    li $v0, 4
    la $a0, message3
    syscall
  
    li $v0, 10
    syscall
	
	
  samatNumerot:
    li $v0, 4
    la $a0, message
    syscall
	
    li $v0, 10
    syscall	
	
  eriNumerot:
    li $v0, 4
    la $a0, message2
    syscall
	
    li $v0, 10
    syscall
