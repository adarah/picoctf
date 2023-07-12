# Trivial Flag Transfer Protocol
https://play.picoctf.org/practice/challenge/103

<details>
<summary>Spoilers</summary>

<details>
<summary>Obtaining the files</summary>

1. Launch wireshark
2. Filter for `tftp`
3. Right click > Protocol Preferences > Trivial File Transfer Protocol > Reassemble Fragmented TFTP files
4. Select the first stream > File > Export Packet Bytes > Save as instructions.txt
5. Break the caesar cipher
6. Do the same for other packets
</details>

<details>
<summary>Extracting the flag</summary>

They used [steghide](https://github.com/StefanoDeVuono/steghide) to hide the flag. Trying to extract it with
```bash
steghide extract -sf files/picture1.bmp 
```
asks for a password.

The plan.txt cipher contained:
```txt
IUSEDTHEPROGRAMANDHIDITWITH-DUEDILIGENCE.CHECKOUTTHEPHOTOS
```
The dash before `DUEDILIGENCE` seemed suspicious. Tried it as the password on all 3 photos. Got the flag!

</details>

</details>