from bs4 import BeautifulSoup

with open('./drawing.flag.svg') as f:
    soup = BeautifulSoup(f, features="xml")
    txt = soup.getText().splitlines()
    for t in txt:
        joined = t.replace(' ', '')
        if not joined.startswith('picoCTF'):
            continue
        print(joined)
        break
