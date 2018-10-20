lib LibCurses
 
  type Chtype = Int32

  fun addch(ch : Chtype): Int32
  fun addchnstr(ch : Chtype*, Int32) : Int32
  fun addchstr(ch : Chtype*) : Int32
  fun addnstr(ch : Char*, Int32) : Int32
  fun addnwstr(wch : Wchar*, Int32) : Int32
  fun addstr(ch : Char*) : Int32
