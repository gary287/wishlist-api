class CreateSharedWishLists < ActiveRecord::Migration[6.1]
  def change
    create_table :shared_wish_lists, id: :uuid do |t|
      t.references :wish_list, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
