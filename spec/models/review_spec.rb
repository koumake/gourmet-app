require 'rails_helper'

RSpec.describe Review, type: :model do
  describe '#create' do
    before do
      @review = FactoryBot.build(:review)
    end

    it "title,content,user_id,restaurant_idが存在すれば登録できること" do
      expect(@review).to be_valid
    end

    it "titleが空では登録できないこと" do
      @review.title = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("Title can't be blank")
    end

    it "contentが空では登録できないこと" do
      @review.content = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("Content can't be blank")
    end

  end
end
