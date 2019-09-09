# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0;
  arr.each do |item|
    sum += item;
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if (arr.empty?)
    return 0;
  end
  if (arr.length == 1)
    return arr[0];
  end
  
  max1 = arr.max;
  arr.delete_at(arr.index(max1));
  max2 = arr.max;
  return max1 + max2;
      
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if (arr.empty?)
    return false
  end
  
  
  temp  = arr.at(0);
  arr.delete_at(0);
  arr.each do |item|
    if(temp+item == n)
      return true
    end
  end
  return sum_to_n?(arr,n);
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  hellodude = 'Hello, ' + name;
  return hellodude;
end

def starts_with_consonant? s
  # YOUR CODE HERE
  start = s[0];
  
  if (s.length == 0)
    return false
  elsif (start == 'A' || start == 'a' || start == 'E' || start == 'e' || start == 'I' || start == 'i' || start == 'O' || start == 'o' || start == 'U' || start == 'u')
    return false
  elsif (start < 65.chr || (start > 90.chr && start < 97.chr) || start > 122.chr)
    return false
  else
    return true
  end
  
end


  

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s.length == 0)
    return false;
  end
  
 s.each_char do |item|
   if (item != '1' && item != '0')
     return false;
   end
 end
   
  string_length = s.length;
  last_num = s[string_length-1];
  sec_last_num = s[string_length-2];
  if(last_num == '0' && sec_last_num == '0')
    return true
  else 
    return false;
  end
end




class BookInStock
  attr_reader :isbn , :price
  attr_writer :isbn , :price
  
  def initialize(isbn,price)
    if(price <= 0 || isbn.empty?)
      raise ArgumentError.new("")
    else
      @isbn = isbn;
      @price = price;
    end
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def price_as_string
    
    s_price = "$" + @price.to_s;
    if (s_price.include?('.'))
      index = s_price.index('.')
      temp_str = s_price[index,s_price.length]
      if(temp_str.length == 2)
        s_price = s_price + '0';
      end
    else 
      s_price = s_price + ".00";
    end
      puts s_price
      return s_price
      
  end   
end


