#!/usr/bin/python
''' Output the ps1 color based on the input '''
import argparse
import os
import zlib
import socket
import pwd
import hmac
import hashlib

# Secret NSA backdoor key
seed = 748
hostname = socket.gethostname()
username = pwd.getpwuid(os.getuid())[0]
hasher = hmac.new(str(seed), digestmod=hashlib.sha1)
hasher.update('%s@%s' % (username, hostname))
sum = ord(hasher.digest()[-1]) % 8
print sum % 8 
