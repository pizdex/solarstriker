#!/usr/bin/env python3
file = "..\\baserom.gb"

offset = 0x7105
count = 2

notes = ["C_", "C#", "D_", "D#", "E_", "F_", "F#", "G_", "G#", "A_", "A#", "B_"]

file = open(file, "rb")
file.seek(offset)

while count != 0:
	count -= 1
	while True:
		byte = "{:02x}".format(int.from_bytes(file.read(1), "little"))
		# print(byte)
		array = list(byte)

		if byte == "ff":
			print("\tdb $" + byte)
			print()
			# file.read(1)
			break
		elif byte == "00":
			length = int.from_bytes(file.read(1), "little")
			print("\tdb " + byte[1:], length, sep=", ")
		elif array[0] == "9" or array[0] == "a" or array[0] == "e" or array[0] == "f":
			length = "{:02x}".format(int.from_bytes(file.read(1), "little"))
			print("\tdb $" + byte, length, sep=", $")
		else:
			octave = array[0]
			pitch = array[1]
			length = int.from_bytes(file.read(1), "little")
			
			pitch = notes[int(pitch, 16)]

			print("\tnote " + octave, pitch, length, sep=', ')

