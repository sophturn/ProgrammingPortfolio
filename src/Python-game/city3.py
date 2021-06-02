#Sophia Turner
import time
class city3:
  print ("Welcome to...")
  time.sleep(1)
  print ("Here you may battle to win medals to find your parents")
  time.sleep(1)
  print('But first you may choose to train your bokémon or learn a new skill')
  time.sleep(2)
  print('MAKE YOUR CHOICE')
  training = input('A: train your bokémon\nB: learn a new skill')
  if training == 'A':
    print('Which bokémon would you like to train?')
  elif training == 'B':
    print('What skill would you like to learn?')
    time.sleep(2)
    print('CHOOSE YOUR SKILL')
    newSkill = input('A: Bokémon Catching\nB: Lock Picking\nC:')