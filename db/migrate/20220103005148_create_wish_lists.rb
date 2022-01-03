class CreateWishLists < ActiveRecord::Migration[6.1]
  def change
    create_table :wish_lists, id: :uuid do |t|
      t.string :title

      t.timestamps
    end
  end
end
