# ohjelmassa on kolme labelia: main, loop ja end
.text
.globl main
main:
    li $t0, 10 # load immediate, laitetaan temp registeriin arvo 10 joka on number of iterations looppia varten.
	li $t1, 0 # t1 rekisteriin laitetaan counter (i) jonka arvo on 0
	li $t2, 15 # t2 rekisterissa pidetaan arvoa jota muokataan loopissa
loop:
    beq $t1, $t0, end 
	# beq = branch if equal, eli if t1 == 0 end loop. 
	# jos t1 ja t0 ovat arvoiltaan samoja, siirrytaan labeliin end heti loop labelin alussa.
	add $t2, $t2, $t1 
	# body of the loop, tahan mita loopin halutaan tekevan. 
	# loop summaa t2 ja t1 rekisterien arvot ja laittaa tuloksen t2 rekisteriin. 
	# add yhdistaa kahden rekisterin arvot.
	addi $t1, $t1, 1 
	# lisaa t1 rekisteriin yhden. Ensin rekisteri mihin laitetaan ja sitten mitka lisataan yhteen.
	# t1 on loopin counter, jota lisataan ettei tule ikuista looppia ja jotta beq toteutuisi joskus. 
	# addi = add immediate = yhdistaa rekisterin ja sign-extended immediate valuen ja storee summan rekisteriin
	j loop 
	# j = jump eli hypataan loop labeliin
end:
    li $v0,10
	syscall