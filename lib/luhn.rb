module Luhn
  def self.is_valid?(number)
    #WRITE YOUR SOLUTION HERE
    sum = 0
    num = number.to_s.split("")
    n_size = num.size
    num.each_with_index do |n, i|
      if (n_size == 16)
        if (i % 2 == 0)
          x = 2 * n.to_i 
          if (x>9) 
            x = x - 9
          else
            x = x
          end
        else
          x = n.to_i
               
        end
      else
        if (i % 2 != 0)
          x = 2 * n.to_i 
          if (x>9) 
            x = x - 9
          else
            x = x
          end
        else
          x = n.to_i
               
        end
      end
      i = i + 1
      sum = sum + x  
       
    end
    if (sum % 10) == 0
      return true
    else
      return false
    end
  end
end
