module Tasks
  def candies(x,y,z,w)
    if x < 0 or y < 0 or z < 0 or w<=0
      puts "Enter x,y,z>=0 w>0"
    else
      rusik = [x,y,z].sort.reverse
      n1 = w / rusik[0]
      result = 0
      0.upto(n1) do |i|
        first = (w - i*rusik[0])
        n2 = first / rusik[1]
        0.upto(n2) do |k|
          second = (first - k*rusik[1])
          last = second % rusik[2]
          result += 1 if last == 0
        end
      end
      puts result
    end
  end
end