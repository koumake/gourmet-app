require 'rails_helper'

RSpec.describe Review, type: :model do
  descrive '#create' do
    before do
      @review = FactoryBot.build(:review)
    end

    it "title,content,user_id,restaurant_idが存在すれば登録できること" do
      expect(@review).to be_valid
    end

    it "titleが空では登録できないこと" do
      @review.title = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("")
    end

    it "contentが空では登録できないこと" do
      @review.content = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("")
    end

    it "user_idが空では登録できないこと" do
      @review.user_id = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("")
    end

    it "restaurant_idが空では登録できないこと" do
      @review.restaurant_id = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("")
    end
  end
end
