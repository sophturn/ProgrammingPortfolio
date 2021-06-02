#Sophia Turner, alan pham
#cave is to find parents
import time
from parents import Parents
from player import Player
from cottonwoodFight import CottonwoodFight

class Cave:
  def work():
    print ("you enter cave find messy...")
    time.sleep(1)
    Parents.work()
    print()#COTTONWOOD ENTER
    CottonwoodFight.fight()
    print('Professor Cottonwood and his bokémon are thrown against the wall. You stand there for a moment, savoring your victory.')
    time.sleep(3)
    print('Then the ground begins to shake.\n')
    time.sleep(1)
    print('The cave is collapsing.\n')
    time.sleep(2)
    if(Player.lockPick == True):
      print('As rocks fall all around you, you scoop up your bokémon and escape!\nYou run out of the cave and into your parents arms. The cave collapses behind you, sealing Professor Cottonwood and his bokémon inside.\n\n\n\n\n')
      time.sleep(3)
      print(chr(27) + "[2J")
      time.sleep(5)
      print('Congratulations!!!\nYou defeated Professor Cottonwood!\nYou saved your parents and your bokémon!\nYou won!!!')
    else:
      print()