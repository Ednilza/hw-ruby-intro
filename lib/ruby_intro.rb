# When done, submit this entire file to the autograder.

# Part 1
# Soma os elementos de um array, retorna 0 para array vazio
def sum arr
  if !arr.empty?
    soma = 0
    arr.each do |elt| ; soma += elt ; end
    return soma
  end
  return 0  
end

# Soma os dois maiores elementos de um array, retorna 0 para array vazio
def max_2_sum arr
  if arr.count > 1 
    arr_ord = arr.sort 
    return arr_ord[-1] + arr_ord[-2]
  elsif arr.count == 1
    return arr[0]
  else
    return 0
  end
end

# Retorna true se a soma de quaisquer dois elementos do array é igual ao número dado, retorna falso caso contrario e para array vazio
def sum_to_n? arr, n
  if !(arr.empty?)
    arr.each do |elt1|
      arr.reject {|elt2| elt2 == elt1}.each do |elt2|
        if elt1 + elt2 == n
          return true
        end
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
  if (s =~ /^[a-z]/i) and (s =~ /^[^AEIOU]/i)
    return true
  else    
    return false
  end
end

def binary_multiple_of_4? s
  if (s.empty?) or (s.match(/[^01]/))
    return false
  end
  if s.match(/0$/)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock

  def initialize (isbn, price)
    raise ArgumentError, 'price is less than or equal to zero' unless price > 0
    raise ArgumentError, 'ISBN number is empty' unless isbn != '' 
    @isbn = isbn
    @price = price
  end

  def isbn ; isbn = @isbn ; end

  def isbn=(new_isbn) 
    raise ArgumentError, 'ISBN number is empty' unless new_isbn != ''
    @isbn = new_isbn
  end

  def price ; price = @price ; end

  def price=(new_price)
    raise ArgumentError, 'price is less than or equal to zero' unless new_price > 0	  
    @price = new_price 
  end

  def price_as_string
    return "$%.2f" % @price
  end

end

