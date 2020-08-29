require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe '#create' do
    before do
      @restaurant = FactoryBot.build(:restaurant)
      @restaurant.image = fixture_file_upload('public/images/test_image.jpg')
      
    end

    context "登録できること" do
      it "name,name_alias,tel,about,prefecture,city_address,genre,scene,feature,user_id,areaが存在すれば登録できること" do
        expect(@restaurant).to be_valid
      end
    end

    context "登録できないこと" do
      #it "imageが空では登録できないこと" do
        #@restaurant.image = nil
        #@restaurant.valid?
        #expect(@restaurant.errors.full_messages).to include
      #end

      it "nameが空では登録できないこと" do
        @restaurant.name = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Name can't be blank")
      end

      it "name_aliasが空では登録できないこと" do
        @restaurant.name_alias = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Name alias can't be blank", "Name alias is invalid")
      end

      it "telが空では登録できないこと" do
        @restaurant.tel = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Tel can't be blank", "Tel is invalid")
      end

      it "aboutが空では登録できないこと" do
        @restaurant.about = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("About can't be blank")
      end

      it "prefectureが空では登録できないこと" do
        @restaurant.prefecture = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Prefecture can't be blank")
      end

      it "city_addressが空では登録できないこと" do
        @restaurant.city_address = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("City address can't be blank")
      end

      it "genreが空では登録できないこと" do
        @restaurant.genre = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Genre can't be blank")
      end

      it "sceneが空では登録できないこと" do
        @restaurant.scene = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Scene can't be blank")
      end

      it "featureが空では登録できないこと" do
        @restaurant.feature = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Feature can't be blank")
      end

      it "areaが空では登録できないこと" do
        @restaurant.area = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Area can't be blank")
      end

      it "reserve_idが1だと登録できないこと" do
        @restaurant.reserve_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Reserve must be other than 1")
      end

      it "budget_dinner_idが1だと登録できないこと" do
        @restaurant.budget_dinner_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Budget dinner must be other than 1")
      end

      it "budget_lunch_idが1だと登録できないこと" do
        @restaurant.budget_lunch_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Budget lunch must be other than 1")
      end

      it "private_room_idが1だと登録できないこと" do
        @restaurant.private_room_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Private room must be other than 1")
      end

      it "charter_idが1だと登録できないこと" do
        @restaurant.charter_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Charter must be other than 1")
      end

      it "smoking_idが1だと登録できないこと" do
        @restaurant.smoking_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Smoking must be other than 1")
      end

      it "dorink_idが1だと登録できないこと" do
        @restaurant.drink_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Drink must be other than 1")
      end

      it "food_idが1だと登録できないこと" do
        @restaurant.food_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Food must be other than 1")
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
