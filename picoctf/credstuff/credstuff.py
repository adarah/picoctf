import codecs

def find_username_idx(path: str, username: str) -> int:
    with open(path) as f:
        lines = f.read().splitlines()
        for i, u in enumerate(lines):
            # print(l, end="")
            if u != username:
                continue
            return i
    raise Exception('user not found')


idx = find_username_idx('leak/usernames.txt', 'cultiris')
with open('leak/passwords.txt') as f:
    lines = f.read().splitlines()
    password = lines[idx]
    print(codecs.decode(password, 'rot_13'))
