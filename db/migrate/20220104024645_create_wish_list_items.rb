class CreateWishListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :wish_list_items, id: :uuid do |t|
      t.string :title
      t.string :url
      t.references :wish_list, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
