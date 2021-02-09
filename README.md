# Word Wrap

> You write a class called Wrapper, that has a single static function named wrap that takes two arguments, a string, and a column number. The function returns the string, but with line breaks inserted at just the right places to make sure that no line is longer than the column number. You try to break lines at word boundaries.

Like a word processor, break the line by replacing the last space in a line with a newline.

[More Details](https://codingdojo.org/kata/WordWrap/)

# How to use

Initialize in `word_wrapper` file: 

```
text = "The wrap function takes in a @String of text and an @Integer for columnumn
number. The method returns a copy of the string occurrences for the pattern
in the second argument, which is choosing between match group 1 or match group 3. 
The regex in the first argument is split into three matchgroups: 
1) looking between 1-column OR 2) literal space or newlines and if neither,
alternating to 3) ONLY looking looking between 1-column. Otherwise, it will run an 
alternator (|) which means if the previous match does not work, it goes to the next one which is the match
group without the newlines."

comments = WordWrapper.new(text, 72)
puts comments.wrap(text, 72)
```

# TODO 
- Write directions on how to use Word Wrap 
- Enhance static type checking with [RBS](https://github.com/ruby/rbs)
- Write tests for running bigger files 
- Package for ruby gem usage
