import time
from boke_ascii_art import art
from player import Player 
from kennen import Kennen
from belldolpine import Belldolpine
from meisterBeast import MeisterBeast
from bokeFight import BokeFight
from paintbrushTown import PaintbrushTown
from colosseumFight import ColosseumFight
#from chameleonCity import ChameleonCity
#city 3
from cave import Cave
#jamerson kent

#3 bokemons: belldolpine, kennen, meisterBeast

#Belldolpine.work()

#PaintbrushTown.work()

#Cave.work()


def main():
  intro()
  global PK
  print ("Hello there! Welcome to the world of Bokémon! My name is Dr. Cottonwood! People call me the Bokémon Professor! This world is inhabited by creatures called Bokémon! For some people, Bokémon are pets. Others use them for fights. Myself...I study Bokémon as a profession.\n")
  time.sleep(2)
  art.bokesquare()
  art.cottonwood()
  time.sleep(4)
  PK = input ("What is your name?\n")
  print("Nice to meet you,",PK,'\n')
  time.sleep(1)
  print("What an interesting name")
  time.sleep(3)
  print("Im so sorry to jump right into it but your parents have disapeared\nthey were working at their laboratory at the dig site right out of town")
  time.sleep(4)
  print(" you see,")
  time.sleep(3)
  print("I tried to warn them that it was a bad idea to be working that late at night but they insisted")
  time.sleep(3)
  print("I am going to send you out on a journey to defeat the leader at the collesseum in this region, the Kantob region")
  time.sleep(3)
  print("You will catch bokémon and train them to battle the collisseum leader to get the badge")
  time.sleep(3)
  print("once you get a colosseum badge I will feel confident in sending you to the dig site to look for you parents")
  time.sleep(3)
  print("I have 3 bokémon and you can choose one of these bokémon as your companion")
  print('you will also run into other bokémon on your journey.\n sadly you can only carry 3 bokémon at a time')
  time.sleep(3)
  print("so you will send the rest back to me")
  time.sleep(3)
  print('take these 20 bokesquares. they can be used to capture wild bokémon')
  time.sleep(3)
  
  #choosing starter bokemon

  print('The time has come')
  time.sleep(4)
  print('Which bokémon do you want')
  print('you will type the corresponding letter ')
  print('CHOOSE YOUR BOKEMON')
  starter = input('(A): Kennen, the electic mouse bokémon\n(B): Belldolpine, the E-dolphin time bokémon\n(C): Meister beast, The monkey bokémon\n')
  while starter not in ("A","a","B","b","C","c"):
    starter = input('please input: A,B, or C\n')

  if starter == 'A' or starter == 'a':
    boke1 = Kennen()
    sboke = 'Kennen'
  elif starter == 'B' or starter == 'b':
    boke1 = Belldolpine()
    sboke = 'Belldolpine'
  elif starter == 'C' or starter == 'c':
    boke1 = MeisterBeast()
    sboke = 'MeisterBeast'


  print('I see you chose',sboke,'\n well then I will see you on your journey')

  #go to Paintbrush Town

  time.sleep(3)
  print(chr(27) + "[2J")
  journey1()
  time.sleep(3)
  PaintbrushTown.work()
  ColosseumFight.fight()
  print(chr(27) + "[2J")
  journey2()
  Cave.work()
  time.sleep(5)
  print(chr(27) + "[2J")
  art.bokesquare()




def journey1(): 
  print('Professor Cottonwood leads you out of your small town \nand points you in the direction of the next town, Paintbrush Town')
  time.sleep(2)
  print('you have a chance to catch pokemon on your journey\nbut remeber you may only carry 3 at a time')
  time.sleep(2) 
  Player.travel()
  if(Player.travel() == 1):
    print('As you walk, you hear a rustling in the bushes...')
    time.sleep(2)
    BokeFight.fight()
  elif(Player.travel() == 2):
    print('As you walk, you hear a rustling in the bushes...')
    time.sleep(2)
    BokeFight.fight()
    time.sleep(5)
    print('Suddenly, something jumps on the path in front of you!')
    time.sleep(2)
    BokeFight.fight()
  elif(Player.travel() == 3):
    print('As you walk, you hear a rustling in the bushes...')
    time.sleep(2)
    BokeFight.fight()
    time.sleep(5)
    print('Suddenly, something jumps on the past in front of you!')
    time.sleep(2)
    BokeFight.fight()
    time.sleep(5)
    print('You have almost arrived at your destination, but there is one more bokemón blocking your path...')
    time.sleep(2)
    BokeFight.fight()
    time.sleep(1)




def journey2():
  print('You leave Paintbrush Town and return to your town. There you find Professor Cottonwood, who points you in the direction of the dig site. \n   You go there to find your parents.')
  time.sleep(2)




def intro():
  print('Welcome to Bokémon Game\n\n')
  art.bokesquare()
  time.sleep(2)
  print ("Just a reminder to full screen console when you are playing this game!!\n\n\n\n")
  time.sleep(5)
  print(chr(27) + "[2J")



#main()