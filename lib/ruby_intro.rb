# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  return arr.max(2).sum
end

def sum_to_n? arr, n
  while !arr.empty?
    ele = arr.pop
    for i in arr.each
      if ele + i == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.empty?
    return false
  end
  if /[[:alpha:]]/.match(s[0])
    if !/[aeiouAEIOU]/.match(s[0])
      return true
    end
  end
  return false
end

def binary_multiple_of_4? s
  for c in s.each_char
    if !/[01]/.match(c)
      return false
    end
  end
  if s == '0'
    return true
  end
  if s.size < 2
    return false
  end
  if s[s.size-1] == '0'
    if s[s.size-2] == '0'
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    raise ArgumentError.new(
    "Argument Error"
    ) if isbn == "" or price <= 0
    
    @isbn = isbn
    @price = price
    
  end
  
  def price
    @price
  end
  
  def isbn
    @isbn
  end
  
  def price= (p)
    @price = p
  end
  
  def isbn= (i)
    @isbn = i
  end
  
  def price_as_string
    return "$" + '%.2f' % @price
  end
end
