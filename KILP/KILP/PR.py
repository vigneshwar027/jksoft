import glob
import os
from datetime import *

current_time = datetime.now()
month = str(current_time.month).rjust(4, '0')
print(month)

for name in glob.iglob('Source Data/*Beneficiary*'):
    print((name))
    print(os.path.splitext(os.path.basename(name))[0])
    print(os.path.splitext(os.path.basename(name))[1])
