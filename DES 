from Crypto.Cipher import DES
from Crypto.Random import get_random_bytes
import time

# Create a function to pad the message since DES requires the data to be a multiple of 8 bytes
def pad(text):
    while len(text) % 8 != 0:
        text += b' '
    return text

# Encrypt a message
key = get_random_bytes(8)  # DES uses 8-byte keys
cipher = DES.new(key, DES.MODE_ECB)  # Create a new DES cipher in ECB mode
message = b"Hello, DES!"  # Our message to encrypt
padded_message = pad(message)  # Pad the message to be a multiple of 8 bytes
encrypted_message = cipher.encrypt(padded_message)  # Encrypt the message

# Attempt to brute force the encrypted message (simplified)
start_time = time.time()
for i in range(2**20):  # This is far fewer than the total DES keyspace; just for demonstration
    attempt_key = i.to_bytes(8, byteorder='big')
    attempt_cipher = DES.new(attempt_key, DES.MODE_ECB)
    decrypted_message = attempt_cipher.decrypt(encrypted_message)
    
    # Check if decryption is successful
    if decrypted_message.rstrip() == message:
        print(f"Key found: {attempt_key}")
        break

end_time = time.time()
print(f"Elapsed time: {end_time - start_time} seconds")