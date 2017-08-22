		# MIPS - ohjelma joka printtaa ruudulle "Hei maailma!". Yksityiskohtaisesti kommentoitu.
		# MIPS ohjelma jaetaan sektioihin. -> Maaritellaan sektiot.
		# .data sektioon tulee kaikki ohjelman data. Kuten esim. muiden kielien muuttujat/vakiot.
		# data = random access memoryssa
	.data
out_string: .asciiz "Hei maailma!\n"
		# nimetaan out_string, jonne pistetaan dataa ja maaritetaan datatyyppi .asciiz:lla
		# ".asciiz = Store the string in the Data segment and add null terminator", sisalto laitetaan heittomerkkeihin.
	
		# .text sektio on ohjelman "instructionit"
	.text
main:
	li $v0, 4
		# load immidiate v0, 4 = "valmistaudu system, kohta joudut printtaamaan ascii character tai string"
		# kun rekisteriin $v0 laitetaan 4, systeemi ymmartaa etta nyt printataan asciita. ( 1 = integer, 4 = ascii ).
	la $a0, out_string
		# Kerrotaan mita halutaan printata, "load address $a0, message." = "Hei maailma!" laitetaan rekisteriin $a0
		# aina pitaa laittaa $a0:Aan kun halutaan printtaa, ja 'la' jos halutaan lataa string tai character, 'lw' jos integer.
		# $a0 = argument register 0
	syscall
		# syscall = call operating system, eli execute it / suorita yllaoleva. Just DO IT!
		# "used to read or print values or strings from input/output window, and indicate program end"
	
	li $v0, 10
		# 10 = systemcall code for exit
		# ohjelma tulee lopettaa laittamalla 10 $v0 rekisteriin ja sen jalkeen syscall. nain annetaan "exit systemcall"
	syscall