from datetime import datetime
import sys
import ipdb

FOLDER = sys.argv[1]

#ipdb.set_trace()
with open(f'{FOLDER}/checkpoint.log', 'r') as f:
    s = f.readlines()

# acc
print(s[-1][-7:-2], end='')
