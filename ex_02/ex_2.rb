#!/usr/bin ruby

def reverse_array_sort(arr)
  arr.sort!{ |x,y| y <=> x }
end

# arr = %w(hello how are you doing)
# puts (reverse_array_sort arr).inspect
