require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe '#create' do
    before do
      @reservation = FactoryBot.build(:item)
    end

    context "登録できること" do
      it "date_time,number,lastname,firstname,lastname_kana,firstname_kana,user_id,restaurant_idがあれば登録できること" do
      end
      
    end

    context "登録できないこと" do
      it "date_timeが空では登録できないこと" do
        @reservation.date_time = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("")
      end

      it "numberが空では登録できないこと" do
        @reservation.number = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("")
      end

      it "lastnameが空では登録できないこと" do
        @reservation.lastname = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("")
      end

      it "firstnameが空では登録できないこと" do
        @reservation.firstname = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("")
      end

      it "lastname_kanaが空では登録できないこと" do
        @reservation.lastname_kana = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("")
      end

      it "firstname_kanaが空では登録できないこと" do
        @reservation.firstname_kana = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("")
      end

      it "user_idが空では登録できないこと" do
        @reservation.user_id = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("")
      end

      it "restaurant_idが空では登録できないこと" do
        @reservation.restaurant_id = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("")
      end
    end


end
