module Tasks
  def candies(x,y,z,w) 
    if x < 0 or y < 0 or z < 0 or w<=0
      puts "Enter x,y,z>=0 w>0"
    else
      gift = [x,y,z].sort.reverse  # sort the gifts in the array from high to low weight
      result = 0  # the desired result is set to 0
      n1 = w / gift[0]  # possible number of gifts with index 0
      0.upto(n1) do |i|  # cycle from 0 to n1 
        first = (w - i*gift[0])  # the total weight of the residue after placing first gift
        n2 = first / gift[1]  # possible number of gifts with index 1, after placing first gift
        0.upto(n2) do |k|  # cycle from 0 to n2 
          second = (first - k*gift[1])  # the total weight of the residue after placing second gift
          last = second % gift[2]  # determine the remainder when dividing by the third gift
          result += 1 if last == 0  #if the remainder of the division is 0 , the result added 1
        end
      end
      puts result
    end
  end
end
