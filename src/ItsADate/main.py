import time;
print("Welcome to Age Calculator! Please enter your birthday")
bool = True
sameDay = True
while (bool == True):
  birthDay = int(input('Enter day:'))
  birthMonth = int(input('Enter month (number):'))
  birthYear = int(input('Enter year:'))
  todayDay = int(time.strftime("%d", time.localtime()))
  todayMonth = int(time.strftime("%m", time.localtime()))
  todayYear = int(time.strftime("%Y", time.localtime()))
  birthDaySecs = birthDay * 86400
  birthMonthSecs = birthMonth * 2628000
  birthYearSecs = birthYear * 31540000
  todayDaySecs = todayDay * 86400
  todayMonthSecs = todayMonth * 2628000
  todayYearSecs = todayYear * 31540000
  birthSecs = birthDaySecs + birthMonthSecs + birthYearSecs
  todaySecs = todayDaySecs + todayMonthSecs + todayYearSecs
  ageSecs = todaySecs - birthSecs
  ageMinutes = ageSecs/60
  ageHours = ageMinutes/60
  ageDays = ageHours/24
  ageMonths = ageSecs/2628000
  ageYears = ageMonths/12
  ageDecades = ageYears/10
  ageCenturies = ageYears/100
  ageMillenniums = ageYears/1000
  while (sameDay == True):
    convertTo = input('What do you want to convert your age into \n(sec, min, hr, day, mon, yr, dec, cent, mill)?')
    if(convertTo == 'sec'):
      print(ageSecs)
    elif(convertTo == 'min'):
      print(ageMinutes)
    elif(convertTo == 'hr'):
      print(ageHours)
    elif(convertTo == 'day'):
      print(ageDays)
    elif(convertTo == 'mon'):
      print(ageMonths)
    elif(convertTo == 'yr'):
      print(ageYears)
    elif(convertTo == 'dec'):
      print(ageDecades)
    elif(convertTo == 'cent'):
      print(ageCenturies)
    else:
      print(ageMillenniums)
    again = input('Same date (y/n)?')
    if (again == 'y'):
      sameDay = True
    if (again == 'n'):
      sameDay = False
  new = input('Different date (y/n)?')
  if (new == 'y'):
    bool = True
    sameDay = True
  if (new == 'n'):
    bool = False
