#Sophia Turner
import time
import random
from kennen import Kennen
from belldolpine import Belldolpine
from meisterBeast import MeisterBeast
from bat import Bat
from caterpillar import Caterpillar
from rat import Rat
from paintbrushTown import PaintbrushTown

class ColosseumFight:
  def fight():
    fight = True
    #PROBABLY CHANGE
    opponent = PaintbrushTown.challenger()
    if opponent == 'Rocky':
      enemy = 'bat'
    elif opponent == 'Slander':
      enemy = 'rat'
    elif opponent == 'Kyle':
      enemy = 'caterpillar'
    print(opponent,'chooses', enemy,'\b!')
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
            print(you,'does', pc.basicDamage, 'damage to the', enemy)
            combatant.takeDamage(pc.basicDamage)
            attack = '0'
            break
          if attack == 's':
            print(you, 'does', pc.specialDamage, 'damage to the', enemy)
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
          print('The', enemy, 'is knocked unconscious!\nYou have won!\n',opponent,'congradulates you and hands you a badge.')
          time.sleep(1)
          print('You should take the badge back to Professor Cottonwood so you can go find your parents.')
          time.sleep(5)
          pc.heal()
          fight = False
      break
