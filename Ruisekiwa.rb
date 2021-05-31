class Ruisekiwa
  attr_accessor :ruisekiwa_array

  def initialize(numbers_array)
    @ruisekiwa_array = [0]
    for i in 0...(numbers_array.size)
      @ruisekiwa_array << @ruisekiwa_array[i] + numbers_array[i]
    end
  end

  # 開始点、終点を含む. 0-indexd.
  def sum(start, ends)
    @ruisekiwa_array[ends+1] - @ruisekiwa_array[start] 
  end
end

# r = Ruisekiwa.new([1,2,3,4,5,6,7,8,9,10])
# p r.sum(5,7)