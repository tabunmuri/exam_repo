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
    p "params => #{params}"
    if params["type"] == 0
      # 全ての数字を入力する場合

    else params["type"] == 1
      # 1〜9999のうち、抜いて欲しい数字を直接入力する場合
      nums = Number.str_to_numbers(params["nums"])
    end
  end
end
