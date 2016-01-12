#!/usr/bin ruby

                          # =====================================
                          # ========= Class MyContainer =========
                          # =====================================

class MyContainer

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
    @data.push(el.data)
    self
  end
  def to_s
    @data.join(", ")
  end
end


# ctn1 = MyContainer.new
# ctn2 = MyContainer.new
# ctn1 << 1 << "toto" << "titi"
# ctn2 << 42
# ctn2 << "tata"
# ctn1 += ctn2
# puts ctn1
# ctn1.my_each {|elem| puts elem}
