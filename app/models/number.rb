class Number < ActiveRecord::Base
  def self.find_empty_number

  end


  def self.create_collect_numbers

  end

  #
  # str_to_numbers
  # カンマ区切りで数字がつながれた文字列から、数値の配列を作成
  # Author:: shunsuke.fujii
  # Create:: 2015/05/25
  # Copyright:: tabun_muri <tabun.muri100@gmail.com>
  #
  def self.str_to_numbers(numberString="")
    numbers = numberString.split(",").map {|val| val.to_i}
    numbers.reject!{|e| e == 0}
  end
end