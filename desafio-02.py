from os import access, getpid
import os
from time import sleep
import logging


count = 0
pid = getpid()

logging.basicConfig(
     filename= 'cromai.log',
    format='%(asctime)s - %(message)s',
    datefmt='%a %b %d %H:%M:%S %z %Y'
)

logger = logging.getLogger(__name__)

try:
    with open("pid.txt","w+") as pid_file:
            pid_file.write(str(pid))

    while(count < 3):
        print("2: I am alive")
        logger.info('2: I am alive')
        count+=1
        sleep(5)
    print("2: I gonna die now, bye.") 
    logger.info('2: I gonna die now, bye.')     
        
except Exception as e:
     print(f'Error creating or writing to PID.txt file - {e}')