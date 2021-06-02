#Sophia Turner
import random
class Twomew:
  def work():
  #member variables
    
    global hp
    global exp
    global basicDamage
    global specialDamage

    hp = 10
    exp = random.randint(4,7)

    basicDamage = random.randint(3,5)
    specialDamage = random.randint(8,10)

  #constructor

  #methods
  def basicAttack(self):
    self.damage = basicDamage
    return self.damage
    print('You did', self.basicDamage, 'damage!')
  def specialAttack2(self):
    self.damage = specialDamage
    return self.damage
  def takeDamage(self, hurt):
    self.hp = hp
    self.hp -= hurt
    return hp