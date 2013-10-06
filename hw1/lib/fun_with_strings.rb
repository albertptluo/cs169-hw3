module FunWithStrings
  def palindrome?
    return self.downcase.gsub(/[^a-z]/,'').reverse==self.downcase.gsub(/[^a-z]/,'')
  end
  def count_words
    words = self.downcase.gsub(/[^a-z\s]/,'').split(' ')
    count = Hash.new
    count.default = 0
    words.each { |x| count[x] += 1 }
    return count
  end
  def anagram_groups
    words = self.downcase.gsub(/[^a-z\s]/,'').split(' ')
    groups = Hash.new {|h,k| h[k]=[]}
    words.each { |x| groups [x.chars.sort.join] << x}
    return groups.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end