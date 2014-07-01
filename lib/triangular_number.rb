class HighlyDivisibleTriangularNumber

  def generates_triangle_number(ordinal_tri_num)
    (ordinal_tri_num + 1) * ordinal_tri_num / 2 	
  end

  def find_all_factors(dividend_num)
    num_of_factors = 0
    (1..Math.sqrt(dividend_num)).each do |divisor_num|
      if dividend_num % divisor_num == 0
        num_of_factors += 1
      end
    end
    num_of_factors *= 2 
  end

  def highly_divisible_triangular_number(num_of_factors)
    i = 0
    until find_all_factors(generates_triangle_number(i)) > num_of_factors
      find_all_factors(generates_triangle_number(i))
      i += 1
    end
    generates_triangle_number(i)
  end

end


