#!/usr/bin ruby

include Math
                          # ==============================
                          # ========= Class Area =========
                          # ==============================

class Area

  # ========= Attributes =========


  # ========= Constructor =========


  # ========= Methods =========

  def self.rectangle(l, w)
    area = l * w
  end
  def self.circle(r)
    area = Math::PI * (r * r)
  end
  def self.triangle(b, h)
    area = (b * h) / 2
  end
end

# puts Area.rectangle(21, 42)
# puts Area.circle(84)
# puts Area.triangle(10, 20)
