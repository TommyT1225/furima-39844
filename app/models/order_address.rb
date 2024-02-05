class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :area_id, :city, :street, :building_name, :phone_number ,:token

  with_options presence: true do
    validates :user_id, :item_id, :city, :street ,:token
    validates :postal_code, format: { with: /\A\d{3}[-]\d{4}\z/ }
    validates :area_id, numericality: { other_than: 1 , message: "can't be blank"}
    validates :phone_number, format: { with: /\A\d{10,11}\z/ }
  end

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, area_id: area_id, city: city, street: street, building_name: building_name, phone_number: phone_number, order_id: order.id)
  end
end