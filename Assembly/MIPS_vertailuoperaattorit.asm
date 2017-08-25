.data
  message1: .asciiz "t0 on pienempi kuin t1."
  message2: .asciiz "t0 on suurempi kuin t1."
  message3: .asciiz "t0 ja t1 ovat yhta suuret." 

.text
  main:

    li $t0, 1
    li $t1, 100

    slt $s0, $t0, $t1
    bne $s0, $zero, pienempiKuin

    slt $s0, $t1, $t0
    bne $s0, $zero, suurempiKuin

    beq $t0, $t1, yhtaSuuret

    li $v0, 10
    syscall


  pienempiKuin:
    li $v0, 4
    la $a0, message1
    syscall

    li $v0, 10
    syscall


  suurempiKuin:
    li $v0, 4
    la $a0, message2
    syscall

    li $v0, 10
    syscall


  yhtaSuuret:
    li $v0, 4
    la $a0, message3
    syscall

    li $v0, 10
    syscall
