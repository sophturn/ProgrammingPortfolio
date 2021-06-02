#Sophia Turner
import random
import time
class Belldolpine:
  #member variables
  hp = 10
  exp = 0
  basicDamage = random.randint(7,9)
  specialDamage = random.randint(11,13)
  hpRegain = random.randint(3,5)
  #constructor

  #methods
  def basicAttack(self):
    damage = self.basicDamage
    return damage
    print('You did ', self.basicDamage, ' damage!')
  def specialAttack2(self):
    damage = self.specialDamage
    return damage
    print('You did ', self.specialDamage, ' Electric damage!')
  def heal(self):
    hp = 10
    return hp
  def takeDamage(self, hurt):
    hp = self.hp
    hp -= hurt
    return hp