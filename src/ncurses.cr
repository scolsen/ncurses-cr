require "./ncurses/*"

# TODO: Write documentation for `Ncurses`
module Cantrip
  extend self  

  @@main = Window.new(LibCurses.initscr)

  # Start cantrip.
  # Wraps `LibCurses.initscr` functions to enter curses mode.
  # Sets a number of module class variables to manage overall state.
  # @@main_window stores the main window reference returned by LibCurses.  
  def start 
    raise "Cantrip is already initalized" if @@started
    @@started = true
  end

  # Stops cantrip.
  # Wrapper around `LibCurses.endwin`.
  def stop
    LibCurses.endwin
  end

  def main
    @@main
  end

  # Enter character input mode. 
  # Convenience function to invoke the common sequence of `LibCurses.cbreak`
  # and `LibCurses.noecho`
  def character_mode
    LibCurses.cbreak
    LibCurses.noecho
  end

  class Window
    
    def initialize(window : LibCurses::Window*)
      @window = window
    end
  
    def initialize(lines : Int32, columns : Int32, y : Int32, x : Int32)
      @window = LibCurses.newwin(lines, columns, y, x)
    end

    def to_unsafe
      @window
    end

    def addch(character : Int32)
      LibCurses.waddch(@window, character)
    end

    def getch
      LibCurses.wgetch(@window)
    end
  end
end
