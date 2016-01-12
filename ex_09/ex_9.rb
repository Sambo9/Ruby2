#!/usr/bin ruby

module MyDebug
  # ========= Methods =========
  def who_am_i
    "#{self.class} : #{self.object_id} : #{self.to_s}"
  end
end
