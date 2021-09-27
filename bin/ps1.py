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
# seed = 14152
seed = 18398
hostname = socket.gethostname()
username = pwd.getpwuid(os.getuid())[0]
hasher = hmac.new(bytes(seed), digestmod=hashlib.sha1)
hasher.update(('%s@%s' % (username, hostname)).encode('utf-8'))
sum = hasher.digest()[-1] % 256
print(sum)
