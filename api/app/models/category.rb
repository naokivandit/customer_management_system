class Category < ApplicationRecord
  belongs_to :menu, optional: true
  validates :name, presence: true
end
