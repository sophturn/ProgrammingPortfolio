#Sophia Turner
import time
import random
from kennen import Kennen
from belldolpine import Belldolpine
from meisterBeast import MeisterBeast
from twomew import Twomew

class CottonwoodFight:
  def fight():
    fight = True
    enemy = 'Towmew'
    combatant = Twomew()
    Twomew.work()
    print('Professor Cottonwood chooses', enemy,'\b!')
    time.sleep(1)
    while(True):
      start,attack, = '0','0'
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
        while attack != 'b' and attack != 's':
          attack = input('Would you like to use your basic attack [b] or your special attack [s]\n')
          if attack == 'b':
            print(you,'does', pc.basicDamage, 'damage to', enemy)
            combatant.takeDamage(pc.basicDamage)
            attack = '0'
            break
          if attack == 's':
            print(you, 'does', pc.specialDamage, 'damage to', enemy)
            combatant.takeDamage(pc.specialDamage)
            attack = '0'
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
          print('You hit Twomew so hard it goes flying backwards and hits Professor Cottonwood.\n')
          time.sleep(2)
          print('   You have won the fight!\n\n')
          time.sleep(5)
          pc.heal()
          fight = False
      break
