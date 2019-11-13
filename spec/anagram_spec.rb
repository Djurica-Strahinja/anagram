require "anagram"

describe Anagram do
  describe ".is_anagram" do
    context "run with empty string as argument" do
      it "returns error massage" do
        sample = Anagram.new("","abc")
        expect(sample.is_anagram).to eql("One or two arguments are empty, please write 2 sentences!")
      end
    end

    context "run with number as argument" do
      it "returns error massage" do
        sample = Anagram.new(1,"abc")
        expect(sample.is_anagram).to eql("Numbers are not allowed")
      end
    end

    context "run with punctations" do
      it "ignore punctations while comparing" do
        sample = Anagram.new("abc!;'#]'","abc")
        expect(sample.is_anagram).to eql(true)
      end
    end

    context "run with spaces" do
      it "ignore spaces while comparing" do
        sample = Anagram.new("a b c","abc")
        expect(sample.is_anagram).to eql(true)
      end
    end

    context "run with capital letters" do
      it "case insensitive while comparing" do
        sample = Anagram.new("ABC","abc")
        expect(sample.is_anagram).to eql(true)
      end
    end

    context "run with mixed characters" do
      it "returns true" do
        sample = Anagram.new("asdfg","gfdsa")
        expect(sample.is_anagram).to eql(true)
      end
    end
  end
end
