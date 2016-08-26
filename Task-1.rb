module Tasks
  def candies(x,y,z,w) 
    if x < 0 or y < 0 or z < 0 or w<=0
      puts "Enter x,y,z>=0 w>0"
    else
      gift = [x,y,z].sort.reverse  # sort the variables(gifts) in the array from high to low weight
      result = 0  # the desired result is set to 0
      n1 = w / gift[0]  # possible number of gifts with index 0
      0.upto(n1) do |i| # cycle from 0 to n1 gifts with index 0
        first = (w - i*gift[0])  # the total weight of the residue after placing first gift
        n2 = first / gift[1]  #
        0.upto(n2) do |k|
          second = (first - k*gift[1])
          last = second % gift[2]
          result += 1 if last == 0
        end
      end
      puts result
    end
  end
end
