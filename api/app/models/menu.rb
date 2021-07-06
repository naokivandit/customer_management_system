class Menu < ApplicationRecord
  belongs_to :order_detail, optional: true
  belongs_to :cart_detail, optional: true
  has_one :category
  # name,priceどちらもないとデータベースに保存されない
  validates :name, :price, presence: true

end
