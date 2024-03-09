from Crypto.Cipher import DES
from itertools import product
import time

def encrypt(plaintext, key):
    cipher = DES.new(key, DES.MODE_ECB)
    ciphertext = cipher.encrypt(plaintext.encode())
    return ciphertext

def brute_force_des(ciphertext, plaintext, keyspace):
    start_time = time.time()
    for key in keyspace:
        key_bytes = ''.join(key).encode()
        cipher = DES.new(key_bytes, DES.MODE_ECB)
        decrypted = cipher.decrypt(ciphertext).decode()
        if decrypted == plaintext:
            end_time = time.time()
            execution_time = end_time - start_time
            return key_bytes, execution_time
    return None, None

# Example usage
plaintext = "Hello, DES!"
key = "12345678"  # 8-byte key (64 bits)

ciphertext = encrypt(plaintext, key)
print("Ciphertext:", ciphertext.hex())

keyspace = product(map(chr, range(256)), repeat=8)  # Generate all possible 8-byte keys

found_key, execution_time = brute_force_des(ciphertext, plaintext, keyspace)

if found_key:
    print("Key found:", found_key)
    print("Execution time:", execution_time, "seconds")
else:
    print("Key not found.")