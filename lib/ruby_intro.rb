# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0,:+)
    
end

def max_2_sum arr
  # YOUR CODE HERE
    arr.sort!
    sum=0
    sum+=arr.pop() if arr.length>0
    sum+=arr.pop() if arr.length>0
    return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
    if arr.length<2
        return false
    else
        for i in arr
            diff=n-i
            arr.delete(i)
            if arr.include?(diff)
                return true
            end
            arr.delete(diff)
        end
        return false
    end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
      return 'Hello, '+name
end

def starts_with_consonant? s
  # YOUR CODE HERE  
  if s=~ /^[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z](.*)/
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    if s.match('(^[01]+00$)|^0$')
        return true
    else
        return false
    end
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
    def isbn
        @isbn
    end

    def price 
        @price
    end 
    
    def isbn=(v)
        @isbn=v
    end

    def price=(v)
        @price=v
    end
    
    def initialize(isbn='isbn1',price=33.8)
        if isbn=='' or price<=0
            raise ArgumentError
#            return ArgumentError
        else
            @isbn=isbn
            @price=price
        end
    end

    def constructor(isbn,price)
        if isbn=='' or price<=0
#            raise ArgumentError
            return ArgumentError
        else
            isbn=isbn
            price=price
        end
    end

    def price_as_string 
      return "$"+format('%0.2f',@price)
    end
    
end
