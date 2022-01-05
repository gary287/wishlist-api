class AddSharedIdToWishLists < ActiveRecord::Migration[6.1]
  def change
    add_column :wish_lists, :shared_id, :uuid, null: false, default: 'gen_random_uuid()'
  end
end
