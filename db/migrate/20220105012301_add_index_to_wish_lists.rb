class AddIndexToWishLists < ActiveRecord::Migration[6.1]
  def change
    add_index :wish_lists, :shared_id, unique: true
  end
end
