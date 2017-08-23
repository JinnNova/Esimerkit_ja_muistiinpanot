    # MIPS-ohjelma joka printtaa screenille integerin.
.data
  numero: .word 29
    # .word varastoi arvon "29" 32-bittisena "wordina". esim. Integer.
    # Integer tarvitsee 32 bittia.
	
.text
  main:
    li $v0, 1
    # load immidiate $v0 = 1 = system valmistaudu: seuraavaksi printataan word
    lw $a0, numero
    # load word "numero" rekisteriin $a0
    syscall
    # DO IT!
	
    li $v0, 10
    # ohjelman lopetuskoodi = 10
    syscall
