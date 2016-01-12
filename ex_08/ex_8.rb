#!/usr/bin ruby

include Math
                          # ==============================
                          # ========= Class Area =========
                          # ==============================

class Area

  # ========= Attributes =========


  # ========= Constructor =========


  # ========= Methods =========
  
  def rectangle(l, w)
    area = l * w
  end
  def circle(r)
    area = Math::PI * (r * r)
  end
  def triangle(b, h)
    area = (b * h) / 2
  end
end

puts Area.rectangle(21, 42)
puts Area.circle(84)
puts Area.triangle(10, 20)
