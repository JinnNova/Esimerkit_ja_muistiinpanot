.data
  message: .asciiz "Samat numerot."
  message2: .asciiz "Eri numerot."
  message3: .asciiz "Mitaan ei tapahtunut."

.text
  main:
    # "zero register always holds the constant 0."
    addi $t0, $zero, 5
    addi $t1, $zero, 20
	
    # "If-lause esimerkki. Brach if equal"
    # "if($t0 == $t1){ go to: samatNumerot }"
    # "samatnumerot = label, kuten main"
    beq $t0, $t1, samatNumerot
	
    # "Else if - esimerkki." 
    # "(else) if($t0 != $t1){ go to: eriNumerot }"
    # "bne = branch if not equal, b = branch jos haluaa vakisin branchaa"
    bne $t0, $t1, eriNumerot
	
    # "jos ei ollut kumpikaan yllaolevista, suoritetaan tama (ohjelma loppuun)"
    # "else {"
    li $v0, 4
    la $a0, message3
    syscall
  
    # "ohjelman lopetuskutsu, jos ei tee tata niin ohjelma jatkaa ja suorittaa loputkin labelit."
    li $v0, 10
    syscall
	
	
  samatNumerot:
    li $v0, 4
    la $a0, message
    syscall
	
    # "uusi lopetuskutsu"
    li $v0, 10
    syscall	
	
  eriNumerot:
    li $v0, 4
    la $a0, message2
    syscall

    # "uusi lopetuskutsu, tama ei ole pakollinen koska ohjelma loppuu kuitenkin, mutta hyva totutella."
    li $v0, 10
    syscall
