#Sophia Turner
import time
import random
from kennen import Kennen
from belldolpine import Belldolpine
from meisterBeast import MeisterBeast
from bat import Bat
from caterpillar import Caterpillar
from rat import Rat
from player import Player

class BokeFight:
  def fight():
    fight = True
    enemyList = ['bat', 'caterpillar', 'rat'] #finish this?
    enemySelect = random.randint(0,len(enemyList)-1)
    enemy = enemyList[enemySelect]
    print('You are facing off with a', enemy)
    if(enemy == 'bat'):
      combatant = Bat()
      Bat.work()
    elif(enemy == 'caterpillar'):
      combatant = Caterpillar()
      Caterpillar.work()
    elif(enemy == 'rat'):
      combatant = Rat()
      Rat.work()
    time.sleep(1)
    while(True):
      start,action,attack, = '0','0','0'
      while start != 'k' and start != 'b' and start != 'm':
        start = input('Which bokémon would you like to start with?\n[k = Kennen, b = Belldolpine, m = Meister Beast]\n').lower()
      while(fight == True):
        #PLAYER TURN
        if start == 'k':
          print('You have chosen Kennen!')
          you = 'Kennen'
          pc = Kennen()
        elif start == 'b':
          print('You have chosen Belldolpine!')
          you = 'Belldolpine'
          pc = Belldolpine()
        elif start == 'm':
          print('You have chosen Meister Beast!')
          you = 'MeisterBeast'
          pc = MeisterBeast()
        while action != 'a' and action !='c' and action !='r': 
            action = input('Would you like to attack [a] or catch [c] or run [r]\n').lower()
        if action == 'a':
          while attack != 'b' and attack != 's':
            attack = input('Would you like to use your basic attack [b] or your special attack [s]\n')
            if attack == 'b':
              print(you,'does', pc.basicDamage, 'damage to the', enemy)
              combatant.takeDamage(pc.basicDamage)
              attack = '0'
              break
            if attack == 's':
              print(you, 'does', pc.specialDamage, 'damage to the', enemy)
              combatant.takeDamage(pc.specialDamage)
              attack = '0'
              break 
          action = '0'
        elif action == 'c': 
          print('You attempt to capture the', enemy)
          time.sleep(2)
          bokeCaught = Player.catch(Player)
          if(bokeCaught < 3):
            fight = False
            break
        elif action == 'r': 
          print('You ran away from the fight.')
          fight = False
          break
        #ENEMY TURN
        if(combatant.hp > 0):
          time.sleep(1)
          print('The', enemy, 'attacks!')
          combatant.basicAttack()
          print('The', enemy, 'does', combatant.basicAttack(), 'damage to you!')
          pc.takeDamage(combatant.damage)
        else:
          time.sleep(1)
          print('The', enemy, 'dies!\nYou gain', combatant.dropExp(), 'EXP!')
          pc.heal()
          fight = False
      break
