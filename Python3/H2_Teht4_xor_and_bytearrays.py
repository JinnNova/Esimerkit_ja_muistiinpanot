# Hanna Enqvist 
# binäärinen XOR operaatio kahdelle HEX:lle ja tuloksen tulostus ASCII:na



hexString1 = "7b36fd5b41383389dec3be3a9ee577beb51f77c94e330779"
hexString2 = "3c59892f201854ecaae3da55e98b57d1db3f31bb27576600"

# Muunna HEX stringit integereiksi ja XOR:aa yhteen. 
xorred = int(hexString1, 16) ^ int(hexString2, 16)

# ASCII: Decimal (int) bytearrayksi, 1 byte(tavu) = 8 bittiä. length = arrayn pituus tavuina. byteorder = big
vastaus = xorred.to_bytes((xorred.bit_length() + 7) // 8, 'big').decode()
print(vastaus)

# vastaus = Gotta get down on Friday

