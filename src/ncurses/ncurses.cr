@[Link("ncurses")]
lib LibCurses
  type Chtype = Int32
  type Window = Void
  type WideChar = LibC::Char # TODO: Redefine this appropriately.
  type WideString = LibC::Char # TODO: Redefine this appropriately. Wrapper for cchar_t, a string of wide characters.
  type Attr = LibC::UInt
  type File = Void
  type Screen = Void

  # Complex character functions.
  # wch is placed in the window at the current position and then advanced.
  # see: http://invisible-island.net/ncurses/man/curs_add_wch.3x.htmlhttp://invisible-island.net/ncurses/man/curs_add_wch.3x.html
  fun add_wch(wch : WideChar*) : Int32
  fun wadd_wch(win : Window*, wch : WideChar*) : Int32
  fun mvadd_wch(y : Int32, x : Int32, wch : WideChar*) : Int32
  fun mvwadd_wch(win : Window*, y : Int32, x : Int32, wch : WideChar*) : Int32
  fun echo_wchar (wch : WideChar*) : Int32
  fun wecho_wchar (win : Window*, wch : WideChar*) : Int32

  # Complex character string functions.
  # Copy an null-terminated array of complex characters into a window at the current cursor position. Arguments with an n copy at most n elements. 
  # see: http://invisible-island.net/ncurses/man/curs_add_wchstr.3x.html
  fun add_wchstr(wchstr : WideChar*) : Int32
  fun add_wchnstr(wchstr : WideChar*, n : Int32) : Int32
  fun wadd_wchstr(win : Window*, wchstr : WideChar*) : Int32
  fun wadd_wchnstr(win : Window*, wchstr : WideChar*, n : Int32) : Int32
  fun mvadd_wchstr(y : Int32, x : Int32, wchstr : WideChar*) : Int32
  fun mvadd_wchnstr(y : Int32, x : Int32, wchstr : WideChar*, n : Int32) : Int32
  fun mvwadd_wchstr(win : Window*, y : Int32, x : Int32, wchstr : WideChar*) : Int32
  fun mvwadd_wchnstr(win : Window*, y : Int32, x : Int32, wchstr : WideChar*, n : Int32) : Int32

  # Character functions.
  # see: http://invisible-island.net/ncurses/man/curs_addch.3x.html
  fun addch(ch : Chtype) : Int32 
  fun waddch(win : Window*, ch : Chtype) : Int32
  fun mvaddch(y : Int32, x : Int32, ch : Chtype) : Int32
  fun mvwaddch(win : Window*, y : Int32, x : Int32, ch : Chtype) : Int32
  fun echochar(ch : Chtype) : Int32
  fun wechochar(win : Window*, ch : Chtype) : Int32

  # Character string functions.
  # see: http://invisible-island.net/ncurses/man/curs_addchstr.3x.html 
  fun addchstr(chstr : Chtype*) : Int32
  fun addchnstr(chstr : Chtype*, n : Int32) : Int32
  fun waddchstr(win : Window*, chstr : Chtype*) : Int32
  fun waddchnstr(win : Window*, chstr : Chtype*, n : Int32) : Int32
  fun mvaddchstr(y : Int32, x : Int32, chstr : Chtype*) : Int32
  fun mvaddchnstr(y : Int32, x : Int32, chstr : Chtype*, n : Int32) : Int32
  fun mvwaddchstr(win : Window*, y : Int32, x : Int32, chstr : Chtype*) : Int32
  fun mvwaddchnstr(win : Window*, y : Int32, x : Int32, chstr : Chtype*, n : Int32) : Int32

  # String functions.
  # see: http://invisible-island.net/ncurses/man/curs_addstr.3x.html 
  fun addstr(str : LibC::Char*) : Int32
  fun addnstr(str : LibC::Char*, n : Int32) : Int32
  fun waddstr(win : Window*, str : LibC::Char*) : Int32
  fun waddnstr(win : Window*, str : LibC::Char*, n : Int32) : Int32
  fun mvaddstr(y : Int32, x : Int32, str : LibC::Char*) : Int32
  fun mvaddnstr(y : Int32, x : Int32, str : LibC::Char*, n : Int32) : Int32
  fun mvwaddstr(win : Window*, y : Int32, x : Int32, str : LibC::Char*) : Int32
  fun mvwaddnstr(win : Window*, y : Int32, x : Int32, str : LibC::Char*, n : Int32) : Int32

  # Wide string functions.
  # see: http://invisible-island.net/ncurses/man/curs_addwstr.3x.html
  fun addwstr() : Int32
  fun addnwstr() : Int32
  fun waddwstr() : Int32
  fun waddnwstr() : Int32
  fun mvaddwstr() : Int32
  fun mvaddnwstr() : Int32
  fun mvwaddwstr() : Int32
  fun mvwaddnwstr() : Int32

  # Color pair functions.
  # see: http://invisible-island.net/ncurses/man/new_pair.3x.html
  fun alloc_pair(fg : Int32, bg : Int32) : Int32
  fun find_pair(fg : Int32, bg : Int32) : Int32
  fun free_pair(pair : Int32) : Int32

  # Default color functions.
  # see: http://invisible-island.net/ncurses/man/default_colors.3x.html
  fun use_default_colors : Int32
  fun assume_default_colors(fg : Int32, bg : Int32) : Int32

  # Attribute functions.
  # see: http://invisible-island.net/ncurses/man/curs_attr.3x.html
  fun attr_get(attrs : Attr, pair : Int16*, opts : Void*) : Int32
  fun wattr_get(win : Window*, attrs : Attr, pair : Int16*, opts : Void*) : Int32
  fun attr_set(attrs : Attr, pair : Int16, opts : Void*) : Int32
  fun wattr_set(win : Window*, attrs : Attr, pair : Int16, opts : Void*) : Int32
  fun attr_off(attrs : Attr, opts : Void*) : Int32
  fun wattr_off(win : Window*, attrs : Attr, opts : Void*) : Int32
  fun attr_on(attrs : Attr, opts : Void*) : Int32
  fun wattr_on(win : Window*, attrs: Attr, opts : Void*) : Int32
  fun attroff(attrs : Int32) : Int32
  fun wattroff(win : Window*, attrs : Int32) : Int32
  fun attron(attrs : Int32) : Int32
  fun wattron(win : Window*, attrs : Int32) : Int32
  fun attrset(attrs : Int32) : Int32
  fun wattrset(win : Window*, attrs : Int32) : Int32
  fun chgat(n : Int32, attr : Attr, pair : Int16, opts : Void*) : Int32
  fun wchgat(win : Window*, n : Int32, attr : Attr, pair : Int16, opts : Void*) : Int32
  fun mvchgat(y : Int32, x : Int32, n : Int32, attr : Attr, pair : Int16, opts : Void*) : Int32
  fun mvwchgat(win : Window*, y : Int32, x : Int32, n : Int32, attr : Attr, pair : Int16, opts : Void*) : Int32
  fun color_set(pair : Int16, opts : Void*) : Int32
  fun wcolor_set(win : Window*, pair : Int16, opts : Void*) : Int32
  fun standend : Int32
  fun wstandend(win : Window*) : Int32
  fun standout : Int32
  fun wstandout(win : Window*) : Int32

  # Terminal properties functions.
  # see: http://invisible-island.net/ncurses/man/curs_termattrs.3x.html
  fun baudrate : Int32
  fun erasechar : LibC::Char
  fun erasewchar(ch : WideChar*) : Int32
  fun has_ic : Bool
  fun has_il : Bool
  fun killchar : LibC::Char
  fun killwchar(ch : WideChar*) : Int32
  fun longname : LibC::Char*
  fun term_attrs : Attr
  fun termattrs : Chtype
  fun termname : LibC::Char*

  # Terminal alert functions.
  # see: http://invisible-island.net/ncurses/man/curs_beep.3x.html
  fun beep : Int32
  fun flash : Int32
 
  # Background functions.
  # see: http://invisible-island.net/ncurses/man/curs_bkgd.3x.html
  fun bkgdset(ch : Chtype)
  fun wbkgdset(win : Window*, ch : Chtype)
  fun bkgd(ch : Chtype) : LibC::Int
  fun wbkgd(win : Window*, ch : Chtype) : LibC::Int
  fun getbkgd(win : Window*) : Chtype
 
  # Complex background functions.
  # see: http://invisible-island.net/ncurses/man/curs_bkgrnd.3x.html
  fun bkgrnd(wch : WideString*) : LibC::Int
  fun wbkgrnd(win : Window*, wch : WideString*) : LibC::Int
  fun bkgrndset(wch : WideString*)
  fun wbkgrndset(win : Window*, wch : WideString*)
  fun getbkgrnd(wch : WideString*) : LibC::Int
  fun wgetbkgrnd(win : Window*, wch : WideString*) : LibC::Int
 
  # Border and line functions.
  # see: http://invisible-island.net/ncurses/man/curs_border.3x.html
  fun border(ls : Chtype, rs : Chtype, ts : Chtype, bs : Chtype, tl : Chtype, tr : Chtype, bl : Chtype, br : Chtype) : LibC::Int
  fun wborder(win : Window*, ls : Chtype, rs : Chtype, ts : Chtype, bs : Chtype, tl : Chtype, tr : Chtype, bl : Chtype, br : Chtype) : LibC::Int
  fun box(win : Window*, verch : Chtype, horch : Chtype) : LibC::Int
  fun hline(ch : Chtype, n : LibC::Int) : LibC::Int
  fun whline(win : Window*, ch : Chtype, n : LibC::Int) : LibC::Int
  fun vline(ch : Chtype, n : LibC::Int) : LibC::Int
  fun wvline(win : Window*, ch : Chtype, n : LibC::Int) : LibC::Int
  fun mvhline(y : LibC::Int, x : LibC::Int, ch : Chtype, n : LibC::Int) : LibC::Int
  fun mvwhline(win : Window*, y : LibC::Int, x : LibC::Int, ch : Chtype, n : LibC::Int) : LibC::Int
  fun mvvline(y : LibC::Int, x : LibC::Int, ch : Chtype, n : LibC::Int) : LibC::Int
  fun mvwvline(win : Window*, y : LibC::Int, x : LibC::Int, ch : Chtype, n : LibC::Int) : LibC::Int
 
  # Complex character border functions.
  # see: http://invisible-island.net/ncurses/man/curs_border_set.3x.html
  fun border_set(ls : WideString*, rs : WideString*, ts : WideString*, bs : WideString*, tl : WideString*, tr : WideString*, bl : WideString*, br : WideString*) : LibC::Int
  fun wborder_set(win : Window*, ls : WideString*, rs : WideString*, ts : WideString*, bs : WideString*, tl : WideString*, tr : WideString*, bl : WideString*, br : WideString*) : LibC::Int
  fun box_set(win : Window*, verch : WideString*, horch : WideString*) : LibC::Int
  fun hline_set(wch : WideString*, n : LibC::Int) : LibC::Int
  fun whline_set(win : Window*, wch : WideString*, n : LibC::Int) : LibC::Int
  fun mvhline_set(y : LibC::Int, x : LibC::Int, wch : WideString*, n : LibC::Int) : LibC::Int
  fun mvwhline_set(win : Window*, y : LibC::Int, x : LibC::Int, wch : WideString*, n : LibC::Int) : LibC::Int
  fun vline_set(wch : WideString*, n : LibC::Int) : LibC::Int
  fun wvline_set(win : Window*, wch : WideString*, n : LibC::Int) : LibC::Int
  fun mvvline_set(y : LibC::Int, x : LibC::Int, wch : WideString*, n : LibC::Int) : LibC::Int
  fun mvwvline_set(win : Window*, y : LibC::Int, x : LibC::Int, wch : WideString*, n : LibC::Int) : LibC::Int

  # Color functions.
  # see: http://invisible-island.net/ncurses/man/curs_color.3x.html
  fun start_color : LibC::Int
  fun has_colors : Bool
  fun can_change_color : Bool
  fun init_pair(pair : LibC::Short, f : LibC::Short, b : LibC::Short) : LibC::Int
  fun init_color(color : LibC::Short, r : LibC::Short, g : LibC::Short, b : LibC::Short) : LibC::Int
  fun init_extended_pair(pair : LibC::Int, f : LibC::Short, b : LibC::Short) : LibC::Int
  fun init_extended_color(color : LibC::Int, r : LibC::Int, g : LibC::Int, b : LibC::Int) : LibC::Int
  fun color_content(color : LibC::Short, r : LibC::Short*, g : LibC::Short*, b : LibC::Short*) : LibC::Int
  fun pair_content(pair : LibC::Short, f : LibC::Short*, b : LibC::Short*) : LibC::Int
  fun extended_color_content(color : LibC::Int, r : LibC::Int*, g : LibC::Int*, b : LibC::Int*) : LibC::Int
  fun extended_pair_content(pair : LibC::Int, f : LibC::Int*, b : LibC::Int*) : LibC::Int
  fun reset_color_pairs
  fun COLOR_PAIR(n : LibC::Int) : LibC::Int

  # Input functions.
  # see: http://invisible-island.net/ncurses/man/curs_inopts.3x.html
  fun cbreak : LibC::Int
  fun nocbreak : LibC::Int
  fun echo : LibC::Int
  fun noecho : LibC::Int
  fun halfdelay(tenths : LibC::Int) : LibC::Int
  fun intrflush(win : Window*, flag : Bool) : LibC::Int
  fun keypad(win : Window*, flag : Bool) : LibC::Int
  fun meta(win : Window*, flag : Bool) : LibC::Int
  fun nodelay(win : Window*, flag : Bool) : LibC::Int
  fun raw : LibC::Int
  fun noraw : LibC::Int
  fun noqiflush
  fun qiflush
  fun notimeout(win : Window*, flag : Bool) : LibC::Int
  fun timeout(delay : LibC::Int)
  fun wtimeout(win : Window*, delay : LibC::Int)
  fun typeahead(fd : LibC::Int) : LibC::Int

  # Window clearing functions. 
  # see: http://invisible-island.net/ncurses/man/curs_clear.3x.html
  fun erase : LibC::Int
  fun werase(win : Window*) : LibC::Int
  fun clear : LibC::Int
  fun wclear(win : Window*) : LibC::Int
  fun clrtobot : LibC::Int
  fun wclrtobot(win : Window*) : LibC::Int
  fun clrtoeol : LibC::Int
  fun wclrtoeol(win : Window*) : LibC::Int

  # Output functions.
  # see: http://invisible-island.net/ncurses/man/curs_outopts.3x.html
  fun clearok(win : Window*, flag : Bool) : LibC::Int
  fun idlok(win : Window*, flag : Bool) : LibC::Int
  fun idcok(win : Window*, flag : Bool)
  fun immedok(win : Window*, flag : Bool)
  fun leaveok(win : Window*, flag : Bool) : LibC::Int
  fun setscrreg(top : LibC::Int, bot : LibC::Int) : LibC::Int
  fun wsetscrreg(win : Window*, top : LibC::Int, bot : LibC::Int) : LibC::Int
  fun scrollok(win : Window*, flag: Bool) : LibC::Int
  fun nl : LibC::Int
  fun nonl : LibC::Int

  # Window overlay functions.
  # see: http://invisible-island.net/ncurses/man/curs_overlay.3x.html
  fun overlay(srcwin : Window*, destwin : Window*) : LibC::Int
  fun overwrite(srcwin : Window*, destwin : Window*) : LibC::Int
  fun copywin(srcwin : Window*, destwin : Window*, sminrow : LibC::Int, smincol : LibC::Int, dminrow : LibC::Int, dmincol : LibC::Int, dmaxrow : LibC::Int, dmaxcol : LibC::Int, overlay : LibC::Int) : LibC::Int

  # Kernel functions not included.

  # Curses version.
  # see: http://invisible-island.net/ncurses/man/curs_extend.3x.html
  fun curses_version : LibC::Char*
  
  # Keycode function.
  # see: http://invisible-island.net/ncurses/man/define_key.3x.html
  fun define_key(definition : LibC::Char*, keycode : LibC::Int) : LibC::Int

  # Terminfo low-level functions.
  # see: http://invisible-island.net/ncurses/man/curs_terminfo.3x.html
  # TODO: Implement.

  # Utility functions.
  # see: http://invisible-island.net/ncurses/man/curs_util.3x.html
  # TODO: define File.
  fun unctrl(c : Chtype) : LibC::Char*
  fun wunctrl(c : WideString*): WideChar*
  fun keyname(c : LibC::Int) : LibC::Char*
  fun key_name(w : WideChar) : LibC::Char*
  fun filter
  fun nofilter
  fun use_env(f : Bool)
  fun use_tioctl(f : Bool)
  fun putwin(win : Window*, filep : File*) : LibC::Int
  fun getwin(filep : File*) : Window*
  fun delay_output(ms : LibC::Int) : LibC::Int
  fun flushinp : LibC::Int

  # Character deletion functions.
  # see: http://invisible-island.net/ncurses/man/curs_delch.3x.html
  fun delch : LibC::Int
  fun wdelch(win : Window*) : LibC::Int
  fun mvdelch(y : LibC::Int, x : LibC::Int) : LibC::Int
  fun mvwdelch(win : Window*, y : LibC::Int, x : LibC::Int) : LibC::Int

  # Line deletion functions.
  # see: http://invisible-island.net/ncurses/man/curs_deleteln.3x.html
  fun deleteln : LibC::Int
  fun wdeleteln(win : Window*) : LibC::Int
  fun insdelln(n : LibC::Int) : LibC::Int
  fun winsdelln(win : Window*, n : LibC::Int) : LibC::Int
  fun insertln : LibC::Int
  fun winsertln(win : Window*) : LibC::Int

  # Screen initialization functions.
  # see: http://invisible-island.net/ncurses/man/curs_initscr.3x.html
  # TODO: Define Screen type.
  fun initscr : Window*
  fun endwin : LibC::Int
  fun isendwin : Bool
  fun newterm(type : LibC::Char*, outfd : File*, infd : File*) : Screen*
  fun set_term(new : Screen*) : Screen*
  fun delscreen(sp : Screen*)

  # Window functions
  # see: http://invisible-island.net/ncurses/man/curs_window.3x.html
  fun newwin(nlines : LibC::Int, ncols : LibC::Int, begin_y : LibC::Int, begin_x : LibC::Int) : Window*
  fun delwin(win : Window*) : LibC::Int
  fun mvwin(win : Window*, y : LibC::Int, x : LibC::Int) : LibC::Int
  fun subwin(orig : Window*, nlines : LibC::Int, ncols : LibC::Int, begin_y : LibC::Int, begin_x : LibC::Int) : Window*
  fun derwin(orig : Window*, nlines : LibC::Int, ncols : LibC::Int, begin_y : LibC::Int, begin_x : LibC::Int) : Window*
  fun mvderwin(win : Window*, par_y : LibC::Int, par_x : LibC::Int) : LibC::Int
  fun dupwin(win : Window*) : Window*
  fun wsyncup(win : Window*)
  fun syncok(win : Window*, flag : Bool) : LibC::Int
  fun wcursyncup(win : Window*)
  fun wsyncdown(win : Window*)

  # Refresh functions.
  # see: http://invisible-island.net/ncurses/man/curs_refresh.3x.html
  fun refresh : LibC::Int
  fun wrefresh(win : Window*) : LibC::Int
  fun wnoutrefresh(win : Window*) : LibC::Int
  fun doupdate : LibC::Int
  fun redrawwin(win : Window*) : LibC::Int
  fun wredrawln(win : Window*, beg_line : LibC::Int, num_lines : LibC::Int) : LibC::Int

end
