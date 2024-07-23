def sort(arr)
  return arr if arr.length.eql?(1)

  lby2 = (arr.length/2).floor
  left_half =  sort( arr.slice(0, lby2) )
  right_half=  sort( arr.slice(lby2,arr.length) )
  # puts "left_half: #{left_half}, size: #{left_half.size}" #for_debugging
  # puts "right_half: #{right_half}, size: #{right_half.size}" #for_debugging
  merged_arr = []

  arr.size.times do
    if left_half.empty?
      merged_arr.concat(right_half)
      break
    elsif right_half.empty?
      merged_arr.concat(left_half)
      break
    else
      merged_arr.push(left_half.first < right_half.first  ? left_half.slice!(0) : right_half.slice!(0))
    end
    # puts "merged: #{merged_arr}"  #for_debugging
  end
  # puts "merged: #{merged_arr}" #for_debugging
  return merged_arr
end


  

# puts "final #{sort([4,7,7,2,9,9,7,3,2,6,4])}" 
# puts "final #{sort([1,5,2,3]) }"
puts "final #{sort([4,3,2,1])}"

# puts "final: #{sort([8,0,0,7,3,0,6,1,4,8])}"