# -*- coding: utf-8 -*-
#模範回答を見てやった
while (num = gets.chomp.to_i) != 0
  arry = []
  num.times do
    tmp = gets.split.map(&:to_i)
    arry << tmp.push(tmp.inject(:+))
  end

tmp = arry[0].zip(*arry[1..(num-1)]).map{|item| item.inject(:+)}
  arry << tmp
  arry.each {|item| item.map! {|item2| item2.to_s.rjust(5)}}
  arry.each{|item| puts item.join}
end
