class Anagram
  def initialize(sentence1, sentence2)
    @sentence1 = sentence1.downcase
    @sentence2 = sentence2.downcase
  end

  def is_anagram
    if @sentence1 == "" or @sentence2 == ""
      return "One or two arguments are empty, please write 2 sentences!"
    else
      sen_1_char = ""
      sen_2_char = ""
      @sentence1.each_char do |char|
        if ("a".."z").include? char and char !=" "
          sen_1_char += char
        end
      end
      @sentence2.each_char do |char|
        if ("a".."z").include? char and char != " "
          sen_2_char += char
        end
      end
      if sen_1_char.chars.sort == sen_2_char.chars.sort
        true
      else
        false
      end
    end
  end
end
