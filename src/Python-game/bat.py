#Sophia Turner, Alan Pham
import random
class Bat:
  def work():
  #member variables
    
    global hp
    global exp
    global basicDamage
    global specialDamage

    hp = 8
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
    print('You did', self.specialDamage, 'Electric damage!')
  def dropExp(self):
    self.exp = exp
    return exp
  def takeDamage(self, hurt):
    self.hp = hp
    self.hp -= hurt
    return hp
    
    

'''#alan pham
import random
class Bat:
  def work():
  #member variables
    
    global hp
    global exp
    global basicDamage
    global specialDamage

    hp = 8
    exp = 0

    basicDamage = random.randint(3,5)
    specialDamage = random.randint(8,10)

  #constructor

  #methods
  def __init__(self, basicAttack, specialAttack, dropExp):
    self.basicAttack = attack
    self.specialAttack2 = attack
  def basicAttack(self):
    damage = self.basicDamage
    print('You did ', self.basicDamage, ' damage!')
  def specialAttack1(self):
    damage = self.specialDamage
    print('You did ', self.specialDamage, ' Electric damage!')
  def dropExp(self):
    damage = ('Bat dropped' ,' exp!')'''