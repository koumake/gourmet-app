require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe '#create' do
    before do
      @restaurant = FactoryBot.build(:restaurant)
      @restaurant.image = fixture_file_upload('public/images/test_image.jpg')
      
    end

    context "登録できること" do
      it "name,name_alias,tel,about,prefecture,city_address,genre,scene,feature,user_id,areaが存在すれば登録できること"
        expect(@restaurant).to be_valid
      end
    end

    context "登録できないこと" do
      it "imageが空では登録できないこと" do
        @restaurant.image = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include
      end

      it "nameが空では登録できないこと" do
        @restaurant.name = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "name_aliasが空では登録できないこと" do
        @restaurant.name_alias = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "telが空では登録できないこと" do
        @restaurant.tel = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "aboutが空では登録できないこと" do
        @restaurant.about = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "prefectureが空では登録できないこと" do
        @restaurant.prefecture = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "city_addressが空では登録できないこと" do
        @restaurant.city_address = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "genreが空では登録できないこと" do
        @restaurant.genre = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "sceneが空では登録できないこと" do
        @restaurant.scene = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "featureが空では登録できないこと" do
        @restaurant.feature = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "user_idが空では登録できないこと" do
        @restaurant.user_id = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "areaが空では登録できないこと" do
        @restaurant.area = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "reserve_idが1だと登録できないこと" do
        @restaurant.reserve_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "budget_dinner_idが1だと登録できないこと" do
        @restaurant.budget_dinner_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "budget_lunch_idが1だと登録できないこと" do
        @restaurant.budget_lunch_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "private_room_idが1だと登録できないこと" do
        @restaurant.private_room_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "charter_idが1だと登録できないこと" do
        @restaurant.charter_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "smoking_idが1だと登録できないこと" do
        @restaurant.smoking_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "dorink_idが1だと登録できないこと" do
        @restaurant.drink_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "food_idが1だと登録できないこと" do
        @restaurant.food_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("")
      end

      it "電話番号にハイフンがあると登録できない" do
        @restaurant.tel = 000-0000-0000
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Tel is invalid")
      end
      it "電話番号が１２桁以上だと登録できない" do
        @restaurant.tel = 000000000000
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Tel is invalid")
      end

      
    end



  end
end
