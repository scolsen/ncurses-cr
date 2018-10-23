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
LibCurses.cbreak
LibCurses.addch x
y = LibCurses.getch
while y != 113
  y = LibCurses.getch  
end
Cantrip.stop
