require 'rails_helper'

RSpec.describe Number, type: :model do

  describe "create_collect_numbersのテスト" do
    describe "正常系" do
      it "値を何も渡さなかった時" do

      end

    end
    describe "異常系" do
      it "値を何も渡さなかった時" do

      end

      it "nilを渡した時" do

      end

      it "空文字を渡した時" do

      end

      it "空配列を渡した時" do

      end

      it "余事象が存在しない集合を渡した時" do

      end
    end
  end

  describe "create_collect_numbersのテスト" do
    describe "正常系" do
      it "ランダムに生成した数値グループの余事象を返却するか？" do
        questionNumbers = []
        answerNumbers = []
        for num in 1..10000 do
          if rand(10000) % 1 == 0
            questionNumbers.push(num)
          else
            answerNumbers.push(num)
          end
        end
        expect(Number.create_collect_numbers(questionNumbers)).to eq(answerNumbers)
      end
    end

    describe "異常系" do
      it "値を何も渡さなかった時" do

      end

      it "nilを渡した時" do

      end

      it "空文字を渡した時" do

      end

      it "空配列を渡した時" do

      end

      it "余事象が存在しない集合を渡した時" do

      end
    end

  end



end
