contents = []
while True:
    try:
        inp = input()
        contents.append(inp)
    except EOFError:
        break
bytestr = ''.join(contents)
flag = bytearray.fromhex(bytestr).decode()
print(flag, end="")
