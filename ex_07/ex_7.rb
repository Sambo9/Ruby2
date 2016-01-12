#!/usr/bin ruby

def execute(dico)
  dico.each do |key, arr|
    send(key, *arr)
  end
end


# 
# def titi
# puts 'titi'
# end
# def tata
# puts 'tata'
# end
# def addition(a, b)
# puts a + b
# end
# code = {titi: [], tata: [], addition: [1,2]}
# execute code
