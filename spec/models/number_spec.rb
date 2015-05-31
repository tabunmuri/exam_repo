require 'rails_helper'

RSpec.describe Number, type: :model do

  describe "find_empty_numberのテスト" do
    describe "正常系" do
      it "1〜10000までの間でランダムな数値のグループを渡した時、そのグループの余事象が返ってくるか" do
      end
    end
    describe "異常系" do
      describe "第一引数　numberListのテスト" do
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

      describe "第二引数　algorithmTypeのテスト" do
        it "値を何も渡さなかった時" do

        end

        it "nilを渡した時" do

        end

        it "空文字を渡した時" do

        end

        it "空配列を渡した時" do

        end

        it "対応外の数値を渡した時" do

        end
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

  describe "str_to_numbers" do

  end

  describe "create_numbers_list_hash" do
    it "正常系" do
      numnersList = [1,2,3,4]
      numbersHash = {}
      numnersList.each {|val| numbersHash[val] = false}
      expect(Number.send(:create_numbers_list_hash, numbersHash)).to eq([])
    end
    it "異常系" do

    end
  end

  describe "create_numbers_hash" do
    it "正常系" do

    end
    it "異常系" do

    end
  end
end
