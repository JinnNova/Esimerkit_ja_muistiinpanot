.data
  # Asetetaan kaksi viestia (stringia) Random Access Memoryyn
  prompt:  .asciiz "Anna kokonaisluku: "
  message: .asciiz "\nKokonaislukusi on "

.text
  main:
    # printataan kayttajalle eka ascii viesti "prompt"
    li $v0, 4
    la $a0, prompt
    syscall
	
    # system code 5 = halutaan kayttajalta integer syotteena.
    li $v0, 5
    # value tallentui $v0
    syscall
	
    # ei haluta tallentaa valuee $v0 joten siirretaan se sielta temporary rekisteriin $t0
    # move = pseudoinstruction
    move $t0, $v0
	
    # printataan kayttajalle "message" ascii.
    li $v0, 4
    la $a0, message
    syscall
	
    # printataan kayttajalle integer joka on $t0 rekisterissa.
    # siirretaan integer $t0 rekisterista $a0:aan jonne siirretaan aina printattava data.
    li $v0, 1
    move $a0, $t0
    syscall
	
    # lopetetaan ohjelma, system code = 10
    li $v0, 10
    syscall
