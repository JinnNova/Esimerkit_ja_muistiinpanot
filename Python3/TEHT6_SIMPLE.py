import base64
import codecs

base64string = "3q3K/r7vq7rN"
hexstring = "437468756c68752052276c7965682077676168276e61676c2066687461676e"

vastaus1 = codecs.encode(base64.b64decode(base64string), 'hex').decode()
print(vastaus1)
vastaus2 = codecs.encode(codecs.decode(hexstring, 'hex'), 'base64').decode()
print(vastaus2)

#Base64 string to hex: deadcafebeefabbacd
#Hex string to Base64: Q3RodWxodSBSJ2x5ZWggd2dhaCduYWdsIGZodGFnbg==

