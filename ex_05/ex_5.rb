#!/usr/bin ruby

def var_dump_array
  Proc.new {|val| puts "#{val.class} : #{val}"}
end
