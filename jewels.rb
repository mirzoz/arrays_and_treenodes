def num_jewels_in_stones(j, s)
  jewels_count = 0
  # Compare every character in j with s and adding the result to a counter.
  # Use char to convert string in to an array
  j.chars.each do |stone|
    jewels_count += s.count(stone)
  end
  # returning an integer
  return jewels_count
end
