require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    context  '商品が出品できる場合' do
      it '全ての情報が存在すれば登録できる' do
        expect(@item).to be_valid
      end
    end

    context  '商品が出品できない場合' do
      it 'imageが空では登録できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'nameが空では登録できない' do
        @item.name = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it 'contentが空では登録できない' do
        @item.content = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Content can't be blank")
      end
      it 'category_idが初期値(1)では登録できない' do
        @item.category_id = "1"
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it 'situation_idが初期値(1)では登録できない' do
        @item.situation_id = "1"
        @item.valid?
        expect(@item.errors.full_messages).to include("Situation can't be blank")
      end
      it 'fee_idが初期値(1)では登録できない' do
        @item.fee_id = "1"
        @item.valid?
        expect(@item.errors.full_messages).to include("Fee can't be blank")
      end
      it 'area_idが初期値(1)では登録できない' do
        @item.area_id = "1"
        @item.valid?
        expect(@item.errors.full_messages).to include("Area can't be blank")
      end
      it 'delivery_idが初期値(1)では登録できない' do
        @item.delivery_id = "1"
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery can't be blank")
      end
      it 'priceが空では登録できない' do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it 'priceが300以下では登録できない' do
        @item.price = "299"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than 299")
      end
      it 'priceが9999999以上では登録できない' do
        @item.price = "10000000"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be less than 10000000")
      end
      it 'priceが半角数値以外では登録できない' do
        @item.price = "１０００"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price is not a number")
      end
      it 'userが紐づいていないと登録できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("User must exist")
      end
    end
  end
end