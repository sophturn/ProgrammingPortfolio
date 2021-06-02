#Alan Pham, Sophia Turner
#mc finds their parents
from player import Player
class Parents:
  def work():
    print("") #IN CAGE
    if(Player.lockPick == True):
      print('You pick the lock! Your parents are freed and they leave the cave')
    else:
      print('You are unable to open the cage. Your parents remain trapped.')