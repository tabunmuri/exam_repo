class Number < ActiveRecord::Base



  # @maxNumber = 9999
  @@maxNumber = 10

  # 1番から、@@maxNumberまでの数値が入った配列を作成
  @@numbersList = (1..@@maxNumber).to_a

  # 1〜@@maxNumberまで足した合計
  @@numTotalSum = (1 + @@maxNumber) * @@maxNumber / 2


  #
  # find_empty_number
  # 配列の中から、1〜@@maxNumberの中で抜けている数値を検索する為の関数
  # Author:: shunsuke.fujii
  # Create:: 2015/05/25
  # Update:: 2015/05/28
  # Copyright:: tabun_muri <tabun.muri100@gmail.com>
  #
  def self.find_empty_number(numberList = [], algorithmType = 0)

    # 渡された配列の個数が、0個もしくはnilの時は、抜け番は全部のため、自動生成する。
    return @@numbersList if numberList.blank? || numberList.size == 0

    # 渡された配列の個数が、@@maxNumberと同値の時は、抜け数字は必ず1つに絞られる為、引き算をする
    return @@numTotalSum - @@numTotalSum if numberList.size == @@maxNumber

    if algorithmType.blank? || algorithmType == 0
      # お手軽だけど、中は結構ヤバそうな方法
      return (1..@@maxNumber).to_a - numberList
    end

    # 配列から与えられた配列の数値を削除する事で実現する方法
    if algorithmType == 1
      return create_collect_numbers(numberList)
    end

    # hash使って、引いてくる方法
    if algorithmType == 2
      answer      = []
      numbersHash = create_numbers_list_hash(numberList)
      @@numbersList.each do |val|
        answer.push(val) if !numbersHash.has_key?(val)
      end
      return answer
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
    numbers = @@numbersList
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
    return numbers
  end

  private

  #
  # create_numbers_list_hash
  # 与えられた数値配列に基づいて、結果がfalseのハッシュを作成
  # Author:: shunsuke.fujii
  # Create:: 2015/05/26
  # Copyright:: tabun_muri <tabun.muri100@gmail.com>
  #
  def self.create_numbers_list_hash(numnersList = [])
    numbersHash = {}
    numnersList.each {|val| numbersHash[val] = false}
    return numbersHash
  end

  #
  # create_numbers_hash
  # max〜minで連番でhashを作成
  # Author:: shunsuke.fujii
  # Create:: 2015/05/26
  # Copyright:: tabun_muri <tabun.muri100@gmail.com>
  #
  def self.create_numbers_hash(min = 1, max = @@maxNumber)
    numbersHash = {}
    numnersList.each {|val| numbersHash[val] = false}
    return numbersHash
  end

  private_class_method :create_numbers_list_hash, :create_numbers_hash
end