# buffer overflow 0
https://play.picoctf.org/practice/challenge/257

The provided binary is for x86, you can compile for ARM64 with:
```bash
gcc -o vuln vuln.c
```

Interestingly enough, creating a buffer overflow on arm64 does not trigger SIGSEGV. Instead, it triggers SIGBUS. I don't know how to cause a SIGSEGV intentionally with a buffer overflow.