require 'word_wrapper' 
require 'io/console'

describe WordWrapper do 
  describe "#wrap" do
    it "wraps around lines based on column size" do 
      text_blob = "The quick fox jumped over the sleeping dog."
      expected =  "The\nquick\nfox\njumpe\nd\nover\nthe\nsleep\ning\ndog.\n"
      wrapped = WordWrapper.new(text_blob, 5)
      expect(wrapped.wrap(text_blob, 5)).to eq expected
    end 

    it "wraps around a bigger file" do 
      text_blob = IO.readlines("./test/gettysburg_address.txt")
      expected = "idk"
      wrapped = WordWrapper.new(text_blob, 100)
      expect(wrapped.wrap(text_blob, 100)).to eq expected
    end      
  end 
end 