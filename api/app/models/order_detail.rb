class OrderDetail < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :menu, optional: true
end
