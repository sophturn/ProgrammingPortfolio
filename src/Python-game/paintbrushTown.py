#Sophia Turner
import time
import random
from player import Player
from boke_ascii_art import art 
from kennen import Kennen
from belldolpine import Belldolpine
from meisterBeast import MeisterBeast

class PaintbrushTown:

  def challenger():
      people=['Rocky','Slander','Kyle']
      f=random.randint(0,len(people)-1)
      print ('You are challenging', people[f])
      return people[f]
  
  def work():
    
    art.paintbrush_Town()
    print ("Welcome to Paintbrush Town!")
    time.sleep(1)
    print ("Here you may battle to win medals to find your parents")
    time.sleep(1)
    print('But first you may choose to train your bokémon or learn a new skill')
    time.sleep(2)
    print('MAKE YOUR CHOICE')

    

    while(True):
      training,cbokemon,which,question = '0','0','0','0'
      while training != 'a' and training != 'b':
        training = input('A: train your bokémon\nB: learn a new skill\n').lower()

      #TRAINING  
      if training == 'a':
        while cbokemon != 'k' and cbokemon != 'b' and cbokemon != 'm':
          cbokemon = input('Which bokémon would you like to train?\n[k = Kennen, b = Bell Dolpine, m = Meister beast]\n').lower()
        while which != 'b' and which !='s': 
          which = input('Would you like to improve basic attack [b] or special attack [s]\n').lower()
        if cbokemon == 'k':
          if which == 'b': print('Kennen has increased their skill by ', Kennen.basicDamage+1)
          if which == 's': print('Kennen has increased their skill by ', Kennen.specialDamage+1)
        if cbokemon == 'b':
          if which == 'b': print('Bell Dolpine has increased their skill by ', Belldolpine.basicDamage+1)
          if which == 's': print('Bell Dolpine has increased their skill by ', Belldolpine.specialDamage+1)
        if cbokemon == 'm':
          if which == 'b': print('Meister Beast has increased their skill by ', MeisterBeast.basicDamage+1)
          if which == 's': print('Meister Beast has increased their skill by ', MeisterBeast.specialDamage+1)
      #SKILL
      if training == 'b':
        print('What skill would you like to learn?')
        #time.sleep(1)
        print('CHOOSE YOUR SKILL')
        newSkill='0'
        while newSkill != 'a' and newSkill !='b': 
          newSkill = input('A: Bokémon Catching\nB: Lock Picking\n').lower()
        if newSkill == 'a' or newSkill == 'A':
          print('You find an old man named Jared and he gives you 4 BokeBalls\n')
          print('Jared teachs you how to catch Bokemon without hurting them')
          print('You now have', Player.bokeSqares+4,'BokeBalls in your inventory')

        if newSkill == 'b' or newSkill == 'B':
          def lockPicking():
            print("You see a girl breaking into someone's house and you stop her!\nShe thrashes around but you hold on. She tells you she will teach her how to pick locks if you let her go.\n   You agree.")
            Player.lockPick = True

          lockPicking()
    
      while question != 'y' and question != 'n': 
        question = input('Do you want to keep learning or training?\n[y] or [n]\n').lower()
      if question == 'y':
        print('ok')
      if question == 'n':
        print('You go to the Collisseum\n')
        break