#Sophia Turner
import random
import time
#from bokeFight import BokeFight
class Player:
  global bokemonCatch
  #member variables
  inventory = 1
  bokeSqares = 20
  lockPick = False
  #constructor

  #methods
  def travel():
    bokemonFind = random.randint(1,3)
    return bokemonFind
  def catch(self):
    if(self.inventory >= 3):
      print('You already have three bokémon in your inventory. You cannot capture this bokémon.')
    else:
      #bokeSquares = self.bokeSquares
      #bokeSquares -= 1
      bokemonCatch = int(random.randint(1,3))
      if(bokemonCatch == 3):
        print('The Bokémon escaped. The fight continues!')
        return bokemonCatch
      elif (self.inventory < 3):
        self.inventory += 1
        print('Bokémon captured!\nYou have', self.inventory, 'Bokémon in your inventory')
        return bokemonCatch
      