require 'word_wrapper' 

describe WordWrapper do 
  describe "#wrap" do
    it "wraps around lines based on column size" do 
      text = "jfas jf alkdkljf "
      expected = " "
      wrapped = WordWrapper.new(text, 10)
      expect(wrapped).to eq expected
    end 
  end 
end 