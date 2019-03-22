class Array
  def remove_dups
    hash = Hash.new(0)

    self.each do |el|
      hash[el] += 1
    end
    hash.keys
  end

  def two_sum
    pairs = []
    self.each_with_index do |num1,i|
      self.each_with_index do |num2,j|
        next if j <= i
        pairs << [i,j] if num1 + num2 == 0
      end
    end
    
    pairs
  end
  
  def my_transpose
    size.times do |i|
      0.upto(i) do |j|                                   
        self[i][j], self[j][i] = self[j][i], self[i][j]  
      end
    end
    self                                               
  end
end

def stock_picker(stock_prices)
  raise ArgumentError unless stock_prices.is_a?(Array) 
  
  best_days = Hash.new { |h,k| h[k] = [] }
  stock_prices.each_with_index do |daily_price,i|
    (i+1...stock_prices.length).each do |j|
        profit = stock_prices[j] - daily_price
        best_days[profit] = [i,j]
    end
  end
  highest_profit = best_days.keys.max
  best_days[highest_profit]
end