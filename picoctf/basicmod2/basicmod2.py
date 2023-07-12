def decode(n: int) -> str:
    if n < 27:
        return chr(ord('A') + n - 1)
    
    if n < 37:
        return chr(ord('0') + n - 26 - 1)
    
    return '_'


with open('message.txt') as f:
    message = f.read()
    nums = [pow(int(n), -1, 41) for n in message.split(' ') if len(n)]
    decoded = ''.join([decode(n) for n in nums])
    print(f'picoCTF{{{decoded}}}')

