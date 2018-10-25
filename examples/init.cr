require "../src/ncurses"

x = 123

#LibCurses.initscr
#LibCurses.cbreak
#LibCurses.addch x
#y = LibCurses.getch
#while y != 113
#y = LibCurses.getch  
#end
#LibCurses.endwin

Cantrip.start
Cantrip.character_mode
Cantrip.main.addch x
while Cantrip.main.getch != 113
  next
end
Cantrip.main.save "test"
Cantrip.stop
