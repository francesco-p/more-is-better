from datetime import datetime
import sys
import ipdb

FOLDER = sys.argv[1]

#ipdb.set_trace()
with open(f'{FOLDER}/checkpoint.log', 'r') as f:
    s = f.readlines()

# start
start_time = s[1].split(']')[0][1:-4]
start_dtime = datetime.strptime(start_time, '%Y-%m-%d %H:%M:%S')

end_time = s[-1].split(']')[0][1:-4]
end_dtime = datetime.strptime(end_time, '%Y-%m-%d %H:%M:%S')

deltatime = end_dtime - start_dtime

print(deltatime.seconds, end='')
#print(deltatime.seconds//60, 'm :', deltatime.seconds%60, 's')


