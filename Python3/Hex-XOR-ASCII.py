# 1st: XOR operation for two HEX strings
# 2nd: Converting the integer data into a bytearray (string) to print it in ASCII
# by. Hanna "Jinn" Enqvist 

# Put your hex strings here or use these.
hexString1 = "7b36fd5b41383389dec3be3a9ee577beb51f77c94e330779"
hexString2 = "3c59892f201854ecaae3da55e98b57d1db3f31bb27576600"

# Converting hex (base16) strings to integers and XORing them together.  
xorred = int(hexString1, 16) ^ int(hexString2, 16)

# Int To ASCII: Int to bytearray, 1 byte = 8 bits. byteorder = "big".
result = xorred.to_bytes((xorred.bit_length() + 7) // 8, 'big').decode()
print(result)

# result = Gotta get down on Friday

