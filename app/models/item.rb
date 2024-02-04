class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_one :order

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :category
  belongs_to :situation
  belongs_to :fee
  belongs_to :area
  belongs_to :delivery

  validates :image, :name, :content, presence: true
  validates :category_id,:situation_id,:fee_id,:area_id,:delivery_id,  numericality: { other_than: 1 , message: "can't be blank"}
  validates :price,  numericality: {only_integer: true, greater_than: 299, less_than: 10000000}, presence: true

end
