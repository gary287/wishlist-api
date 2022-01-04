class WishList < ApplicationRecord
  has_many :items, dependent: :destroy
end
