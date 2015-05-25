class EntranceController < ApplicationController
  def show
  end

  def answer
    p "params => #{params}"
    if params["type"] == 0
      # 全ての数字を入力する場合

    else params["type"] == 1
      # 1〜9999のうち、抜いて欲しい数字を直接入力する場合
    end
  end
end
