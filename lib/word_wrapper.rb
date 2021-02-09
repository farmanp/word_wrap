class WordWrapper 
  def initialize(txt, col=20)
    @txt = txt
    @col = col 
  end

  def wrap(txt, col=20)
    raise Exception.new "The column number must be less than or equal to the text" if txt.length < col 
    txt.gsub(/(.{1,#{col}})( +|$\n?)|(.{1,#{col}})/, "\\1\\3\n")
  end 

  def display 
    print wrap(@txt, @col)
  end
end

text_blob = "Wrap text using a more sophisticated algorithm such as the Knuth and Plass TeX algorithm. If your language provides this, you get easy extra credit, but you must reference documentation indicating that the algorithm is something better than a simple minimimum length algorithm."

wrapp = WordWrapper.new(text_blob)
puts wrapp.display