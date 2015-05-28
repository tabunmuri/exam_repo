class EntranceController < ApplicationController
  #
  # show
  # 数字を入力する画面
  # Author:: shunsuke.fujii
  # Create:: 2015/05/25
  # Copyright:: tabun_muri <tabun.muri100@gmail.com>
  #
  def show
  end

  #
  # answer
  # 回答を出力する画面
  # Author:: shunsuke.fujii
  # Create:: 2015/05/25
  # Copyright:: tabun_muri <tabun.muri100@gmail.com>
  #
  def answer

    numbersList = Number.str_to_numbers(params["nums"])
    if params["type"] == 1
        # 1〜9999のうち、抜いて欲しい数字を直接入力する場合は、処理をする
      numbersList = Number.create_collect_numbers(numbersList)
    end
    @input = numbersList
    @answer = Number.find_empty_number(numbersList, 2)
    p "@answer => #{@answer}"
  end
end
