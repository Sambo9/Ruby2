#!/usr/bin ruby

                    # ====================================
                    # ========= Class TextEditor =========
                    # ====================================

class TextEditor

  # ========= Attributes =========
  attr_reader :text

  # ========= Constructor =========
  def initialize(arr)
    @text = arr
  end

  # ========= Methods =========
  def crypt_text
    @text.map!{|s| s.chars.map! {|c| nextChar(c)}.join("")}
  end
  def decrypt_text
    @text.map!{|s| s.chars.map! {|c| previousChar(c)}.join("")}
  end
  def remove_word(str)
    @text.select! {|string| !string.downcase.include?(str.downcase)}
  end

  def nextChar(s)
    if(s == "z")
      s = "a"
    elsif (s == "Z")
        s = "A"
    elsif (s != " ")
      (s.ord+1).chr
    else
      s = " "
    end
  end
  def previousChar(s)
    if(s == "a")
      s = "z"
    elsif(s == "A")
        s = "Z"
    elsif (s != " ")
      (s.ord-1).chr
    else
      s = " "
    end
  end
end


arr = ["Toto est un grand chat noirz", "Le Platypus de Martin est mort", "Le gros minet a manger titi", "Le gros minet et toto se sont maries"]
t = TextEditor.new arr
t.crypt_text
puts t.text.inspect
t.decrypt_text
puts t.text.inspect
t.remove_word "toto"
p t.text
