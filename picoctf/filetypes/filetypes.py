contents = []
while True:
    try:
        inp = input()
        print
    except EOFError:
        break
    contents.append(inp)
bytestr = ''.join(contents)
flag = bytearray.fromhex(bytestr).decode()
print(flag, end="")