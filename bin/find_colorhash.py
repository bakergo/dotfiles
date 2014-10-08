#!/usr/bin/python
''' Output the ps1 based on the input '''
import argparse
# crc32 and adler32 have sets of hosts which can't collide with 
# the given seeding scheme. Instead use shasum because I'm too lazy to call chr.
# import zlib
import hmac
import hashlib
import socket
import pwd
import os

''' Brute force secret NSA backdoor key '''
SEED = -1
hostnames = 'user@localhost root@localhost'.split()
colors = [2, 1] # same length as hostnames

def main():
	global SEED
	matching = False
	while not matching:
		SEED += 1
		matching = True
		for i in range(len(hostnames)):
			hasher = hmac.new(str(SEED), digestmod=hashlib.sha1)
			hasher.update(hostnames[i])
			hexdigest = hasher.hexdigest()
			sum = ord(hasher.digest()[-1]) % 8
			print '%d %s %s %d' % (SEED, hostnames[i], hexdigest, sum)
			if sum != colors[i]:
				matching = False
				break
	print SEED

if __name__ == '__main__':
	main()
