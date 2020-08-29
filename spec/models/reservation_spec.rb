require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe '#create' do
    before do
      @reservation = FactoryBot.build(:reservation)
    end

    context "登録できること" do
      it "date_time,number,lastname,firstname,lastname_kana,firstname_kana,user_id,restaurant_idがあれば登録できること" do
      end
      
    end

    context "登録できないこと" do
      it "date_timeが空では登録できないこと" do
        @reservation.date_time = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("Date time can't be blank")
      end

      it "numberが空では登録できないこと" do
        @reservation.number = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("Number can't be blank")
      end

      it "lastnameが空では登録できないこと" do
        @reservation.lastname = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("Lastname can't be blank", "Lastname is invalid")
      end

      it "firstnameが空では登録できないこと" do
        @reservation.firstname = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("Firstname can't be blank", "Firstname is invalid")
      end

      it "lastname_kanaが空では登録できないこと" do
        @reservation.lastname_kana = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("Lastname kana can't be blank", "Lastname kana is invalid")
      end

      it "firstname_kanaが空では登録できないこと" do
        @reservation.firstname_kana = nil
        @reservation.valid?
        expect(@reservation.errors.full_messages).to include("Firstname kana can't be blank", "Firstname kana is invalid")
      end

    end

  end
end
