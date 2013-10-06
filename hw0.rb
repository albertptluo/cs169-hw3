def sum(arr)
  total = 0
  arr.each { |x| total += x }
  return total
end
#puts sum([])

def max_2_sum(arr)
  return sum(arr.sort.last(2))
end
#puts max_2_sum([2, 5, 4, 8, 10])

def sum_to_n?(arr, n)
  for x in arr
    if arr.include?(n - x)
      return true
    end
  end
  return n==0 && arr.empty?
end
#puts sum_to_n?([], 0)

def hello(name)
  return "Hello, ".concat(name)
end
#puts hello("World")

def starts_with_consonant?(s)
  return s.index(%r{(?=[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ])})==0
end
#puts starts_with_consonant?("apple")

def binary_multiple_of_4?(s)
  return s[-2..-1]=="00" && s=~/^[01]+$/
end
#puts binary_multiple_of_4?("10101000")


class BookInStock

  attr_accessor :isbn, :price

  def initialize(p_isbn, p_price)
    if p_price <= 0 or p_isbn == ""
      raise ArgumentError
    end
    @isbn = p_isbn
    @price = p_price
  end

  def price_as_string
    return "\$".concat("%.2f" % price)
  end
end
