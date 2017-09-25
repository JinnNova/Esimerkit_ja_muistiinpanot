# Small program to convert Base64 to Hex and Hex to Base64
# by. Hanna "Jinn" Enqvist

import base64
import codecs

#Place your strings here
base64string = "3q3K/r7vq7rN"
hexstring = "437468756c68752052276c7965682077676168276e61676c2066687461676e"

b64tohex = codecs.encode(base64.b64decode(base64string), 'hex').decode()
print(b64tohex)
hextob64 = codecs.encode(codecs.decode(hexstring, 'hex'), 'base64').decode()
print(hextob64)

#Base64 string to hex will print: deadcafebeefabbacd
#Hex string to Base64 will print: Q3RodWxodSBSJ2x5ZWggd2dhaCduYWdsIGZodGFnbg==

