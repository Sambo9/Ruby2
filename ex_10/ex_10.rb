#!/usr/bin ruby

module MyEnumerable
  # ========= Methods =========
  def my_select
    arr = Array.new
    self.my_each {|el| arr.push(el) if yield el}
    arr
  end
  def my_map
    arr = Array.new
    self.my_each {|el| arr.push(yield el = el)}
    arr
  end
  def my_sort
    array = []
    array1 = []
    self.my_each do |n, m|
      integ = yield(n, m)
      if integ == 1
        array << n
      end
      if integ == -1
        array1 << n
      end
    end
    array1 << array.reverse
  end
end
