@[Link("c")]
lib LibFile
  type File = Void

  fun fopen(filename : LibC::Char*, mode : LibC::Char*) : File*
  fun fclose(file : File*) : LibC::Int

end
