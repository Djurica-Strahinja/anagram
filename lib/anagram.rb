class Anagram
  def initialize(sentence1, sentence2)
    @sentence1 = sentence1
    @sentence2 = sentence2
  end

  def is_anagram
    if @sentence1 == "" or @sentence2 == ""
      return "One or two arguments are empty, please write 2 sentences!"
    elsif @sentence1.is_a? Numeric or @sentence2.is_a? Numeric
      return "Numbers are not allowed"

    end
    sen_1_char = ""
    sen_2_char = ""

    @sentence1.each_char do |char|
      if ("A".."Z").include? char or ("a".."z").include? char
        sen_1_char += char
      end
    end
    @sentence2.each_char do |char|
      if ("A".."Z").include? char or ("a".."z").include? char
        sen_2_char += char
      end
    end

    sen_1_char = sen_1_char.downcase.delete(' ')
    sen_2_char = sen_2_char.downcase.delete(' ')

    if sen_1_char.chars.sort == sen_2_char.chars.sort
      true
    else
      false
    end
  end
end

sample = Anagram.new("dsds", "ss")
puts sample.is_anagram
