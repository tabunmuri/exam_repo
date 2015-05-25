class Number < ActiveRecord::Base
  # @maxNumber = 9999
  @maxNumber = 99
  #
  # find_empty_number
  # 配列の中から、1〜9999の中で抜けている数値を検索する為の関数
  # Author:: shunsuke.fujii
  # Create:: 2015/05/25
  # Copyright:: tabun_muri <tabun.muri100@gmail.com>
  #
  def self.find_empty_number

  end


  #
  # create_collect_numbers
  # 抜け番の数値配列が与えられると、その数値を抜いた数値配列を生成する関数
  # Author:: shunsuke.fujii
  # Create:: 2015/05/25
  # Copyright:: tabun_muri <tabun.muri100@gmail.com>
  #
  def self.create_collect_numbers(emptyNumbers = [])
    numbers = (1..@maxNumber).to_a
    emptyNumbers.each do |val|
      numbers.reject!{|e| e == val}
    end
    return numbers
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