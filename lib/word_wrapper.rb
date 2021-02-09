class WordWrapper 
  def initialize(text, column=20)
    @text = text
    @column = column 
  end

=begin
The wrap function takes in a @String of text and an @Integer for column
number. The method returns a copy of the string occurrences for the
pattern in the second argument, which is choosing between match group
1 or match group 3. The regex in the first argument is split into three
matchgroups: 1) looking between 1-column OR 2) literal space or newlines 
and if neither, alternating to 3) ONLY looking looking between 1-column. 
Otherwise, it will run an alternator (|) which means if the previous 
match does not work, it goes to the next one which is the match group 
without the newlines.

INPUT: @String text, @Integer column
OUTPUT: @String
=end  
  def wrap(text, column) 
    text.gsub(/(.{1,#{column}})( +|$\n?)|(.{1,#{column}})/, "\\1\\3\n")
  end 

  def display_wrap 
    print wrap(@text, @column)
  end
end