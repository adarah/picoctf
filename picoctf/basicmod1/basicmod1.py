def decode(n: int) -> str:
    if n < 26:
        return chr(ord('A') + n)
    
    if n < 36:
        return chr(ord('0') + n - 26)
    
    return '_'


with open('message.txt') as f:
    message = f.read()
    nums = [int(n) % 37 for n in message.split(' ') if len(n)]
    decoded = ''.join([decode(n) for n in nums])
    print(f'picoCTF{{{decoded}}}')

