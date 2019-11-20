require "anagram"

describe Anagram do
  describe ".is_anagram" do
    context "with empty string as argument" do
      it "returns error massage" do
        sample = Anagram.new
        expect(sample.is_anagram("","abc")).to eql("One or two arguments are empty, please write 2 sentences!")
      end
    end

    context "with punctations" do
      it "ignore punctations while comparing" do
        sample = Anagram.new
        expect(sample.is_anagram("abc!;'#]'","abc")).to eql(true)
      end
    end

    context "with spaces" do
      it "ignore spaces while comparing" do
        sample = Anagram.new
        expect(sample.is_anagram("a b c","abc")).to eql(true)
      end
    end

    context "with capital letters" do
      it "case insensitive while comparing" do
        sample = Anagram.new
        expect(sample.is_anagram("ABC","abc")).to eql(true)
      end
    end

    context "with mixed characters" do
      it "returns true" do
        sample = Anagram.new
        expect(sample.is_anagram("asdfg","gfdsa")).to eql(true)
      end
    end
  end
end
