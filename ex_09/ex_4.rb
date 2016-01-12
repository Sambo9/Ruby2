#!/usr/bin ruby

require './ex_9.rb'
                          # =====================================
                          # ========= Class MyContainer =========
                          # =====================================

class MyContainer
  include MyDebug

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
