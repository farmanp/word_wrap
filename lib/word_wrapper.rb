class WordWrapper 
  def initialize(txt, col=20)
    @txt = txt
    @col = col 
  end

  def wrap(txt, col)
    raise Exception.new "The column number must be less than or equal to the text" if txt.length < col 
    txt.gsub(/(.{1,#{col}})( +|$\n?)|(.{1,#{col}})/, "\\1\\3\n")
  end 

  def display_wrap 
    print wrap(@txt, @col)
  end
end