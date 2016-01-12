#!/usr/bin ruby

# require './ex_10.rb'
                          # =====================================
                          # ========= Class MyContainer =========
                          # =====================================

class MyContainer
  include MyEnumerable

  # ========= Attributes =========
  attr_reader :data

  # ========= Constructor =========
  def initialize()
    @data = Array.new
  end

  # ========= Methods =========
  def my_each
    for i in 0...@data.length
      yield @data[i]
    end
  end
  def <<(el)
    @data.push(el)
    self
  end
  def +(el)
    @data = @data + el.data
    self
  end
  def to_s
    @data.join(", ")
  end
end


# cnt = MyContainer.new
# cnt << 1 << "toto" << "titi" << 2 << "tata"
# cnt.my_each {|elem| puts elem}

# puts cnt.my_map {|elem| elem.is_a?(Integer) ? elem + 1 : elem}
# puts cnt.my_select {|elem| elem.is_a?(Integer)}
# puts cnt.inspect
# puts cnt.my_sort {|elem1, elem2| elem1.is_a?(Integer) ? -1 : 1}



# ctn = MyContainer.new
# ctn << 1 << "toto" << "titi" << 42 << "tata"
# puts ctn.who_am_i


# ctn1 = MyContainer.new
# ctn2 = MyContainer.new
# ctn1 << 1 << "toto" << "titi"
# ctn2 << 42
# ctn2 << "tata"
# ctn1 += ctn2
# puts ctn1
# ctn1.my_each {|elem| puts elem}
