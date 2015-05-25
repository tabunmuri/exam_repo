class Number < ActiveRecord::Base
  # @maxNumber = 9999
  @maxNumber = 99

  # 1〜10000まで足した合計
  @numTotalSum = 50005000
  #
  # find_empty_number
  # 配列の中から、1〜9999の中で抜けている数値を検索する為の関数
  # Author:: shunsuke.fujii
  # Create:: 2015/05/25
  # Copyright:: tabun_muri <tabun.muri100@gmail.com>
  #
  def self.find_empty_number(numberList = [])
    # 渡された配列の個数が、0個の時は、抜け番は全部のため、自動生成する。
    return (1..@maxNumber).to_a if numberList.size == 0

    if numberList.size == 9999
      # 渡された配列の個数が、9999個の時は、抜け数字は必ず1つに絞られる為、引き算をする
    else
      # それ以外の時

    end
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
  def self.str_to_numbers(numberString = "")
    numbers = numberString.split(",").map {|val| val.to_i}
    numbers.reject!{|e| e == 0}
  end

end