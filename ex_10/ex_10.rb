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
    arr = Array.new
    arr_index = Array.new

    res = 0
    res_i = 0
    i = 0
    self.my_each {|el|
      j = 0
      res = el
      res_i = i

        self.my_each{|el2|
            puts "compare #{res} and #{el2}"
            if ((yield res, el2) == -1)
              res = res
            elsif !arr_index.include? j
               res = el2
               res_i = j
            end
          j+=1
        }
        puts "------"
        arr_index.push(res_i)
        arr.push(res)
        puts arr_index.inspect
        puts arr.inspect
        i+=1
     }
     arr
  end
end
