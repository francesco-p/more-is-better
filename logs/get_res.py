import numpy as np
import sys

base = sys.argv[1]

accs = []
for s in [0,1,2,3,4]:
    fname = base+f"{s}/checkpoint.log"
    try:
        with open(fname, 'r') as f:
            a = float(f.readlines()[-1][-7:-2])
            accs.append(a)
        print(fname, a)
    except:
        print(f"No seed {s = }")
        pass

print(np.array(accs).mean()*100, "+/-", np.array(accs).std()*100)
