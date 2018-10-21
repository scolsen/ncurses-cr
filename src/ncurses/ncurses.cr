lib LibCurses
 
  type Chtype = Int32
  type Widechar = Nil # TODO: Redefine this appropriately.

  # Complex character functions.
  # wch is placed in the window at the current position and then advanced.
  # see: http://invisible-island.net/ncurses/man/curs_add_wch.3x.htmlhttp://invisible-island.net/ncurses/man/curs_add_wch.3x.html
  fun add_wch(wch : Widechar*) : Int32
  fun wadd_wch(win : Window*, wch : Widechar*) : Int32
  fun mvadd_wch(y : Int32, x : Int32, wch : Widechar*) : Int32
  fun mvwadd_wch(win : Window*, y : Int32, x : Int32, wch : Widechar*) : Int32
  fun echo_wchar (wch : Widechar*) : Int32
  fun wecho_wchar (win : Window*, wch : Widechar*) : Int32

  # Complex character string functions.
  # Copy an null-terminated array of complex characters into a window at the current cursor position. Arguments with an n copy at most n elements. 
  # see: http://invisible-island.net/ncurses/man/curs_add_wchstr.3x.html
  fun add_wchstr(wchstr : Widechar*) : Int32
  fun add_wchnstr(wchstr : Widechar*, n : Int32) : Int32
  fun wadd_wchstr(win : Window*, wchstr : Widechar*) : Int32
  fun wadd_wchnstr(win : Window*, wchstr : Widechar*, n : Int32) : Int32
  fun mvadd_wchstr(y : Int32, x : Int32, wchstr : Widechar*) : Int32
  fun mvadd_wchnstr(y : Int32, x : Int32, wchstr : Widechar*, n : Int32) : Int32
  fun mvwadd_wchstr(win : Window*, y : Int32, x : Int32, wchstr : Widechar*) : Int32
  fun mvwadd_wchnstr(win : Window*, y : Int32, x : Int32, wchstr : Widechar*, n : Int32) : Int32

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

