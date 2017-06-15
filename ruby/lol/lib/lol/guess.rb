def guess_my_number()
  ($big + $small) >> 1
end

def smaller
  $big = guess_my_number
  guess_my_number
end

def bigger
  $small = guess_my_number
  guess_my_number
end

def start_over
  $small = 1
  $big = 100
  guess_my_number
end
