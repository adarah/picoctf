import pwn

conn = pwn.remote('jupiter.challenges.picoctf.org', 25103)
while True:
    try:
        b: bytes = conn.recv()
        print(b.decode(), end="")
    except EOFError:
        break
