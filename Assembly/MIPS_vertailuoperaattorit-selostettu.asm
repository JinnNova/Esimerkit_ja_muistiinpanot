# "yksi tapa vertailla kahta lukua MIPSilla."

.data
  message1: .asciiz "t0 on pienempi kuin t1."
  message2: .asciiz "t0 on suurempi kuin t1."
  message3: .asciiz "t0 ja t1 ovat yhta suuret." 

.text
  main:
    # "rekisteriin voidaan laittaa immidiate joko load immidiatella tai add immidiatella"
    # "addi $t0, $zero, 1 - on periaatteessa lahes sama kuin - li $t0, 1"
    # "add(i) lisaa nollaan ykkosen(i) ja lataa sen rekisteriin, load(i) lataa ykkosen(i) rekisteriin"

    li $t0, 1
    li $t1, 100
	
    # "slt = set on less than              - jos haluat verrata kahta rekisteria"
    # "slti = set on less than immediate   - jos haluat verrata rekisterissa olevaa arvoa numeroon"
	
    # "muita: sltiu, sltu (set less than immidiate unsigned, set less than unsigned)"
    # "slt ottaa kolme argumenttia: 1. rekisteri johon tallennetaan tulos," 
    #                              "2. ensimmainen rekisteri jota verrataan,"
    #                              "3. toinen rekisteri johon verrataan."
    # "$s0 rekisteri = destination, arvo: true = 1 tai false = 0"
	
    # "slt = onko totta etta t0 < t1 ?"
    # "on totta, koska 1 < 100, $s0:aan tallennetaan '1'"
    slt $s0, $t0, $t1
    
    # "jos s0 ei ole nolla, eli on totta, niin..."
    # "if (s0 != 0) / if (t0 < t1)"
    bne $s0, $zero, pienempiKuin
	
    # "jos yllaoleva ei branchannut, jatketaan tarkistamista."
    # "kun $s0 on true(1), tiedetaan etta luku1 on pienempi kuin luku2..." 
    # "Mutta! kun s0 = 0 eli false, ei tiedeta onko luku1 suurempi vai yhtasuuri kuin luku2. siksi tarkistetaan:"
    # "onko t1 pienempi kuin t0? onko totta etta t1 < t0 ?"
    slt $s0, $t1, $t0
	
    # "jos on totta, eli s0 != 0, niin tiedetaan etta t1 < t0 eli t0 on suurempi kuin t1"
    bne $s0, $zero, suurempiKuin
	
    # "jos kumpikaan yllaolevista ei branchaa, eli kumpikaan luku ei ollut pienempi kuin toinen..."
    # "viimeinen vaihtoehto on, etta luvut ovat silloin yhtasuuret"
    # "jos t0 ja t1 ovat yhta suuret, branchaa"
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
