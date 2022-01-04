class WishList < ApplicationRecord
  has_many :items, dependent: :destroy
  has_one :shared_wish_list, dependent: :destroy
end
