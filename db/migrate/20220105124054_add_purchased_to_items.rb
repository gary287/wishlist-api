class AddPurchasedToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :purchased, :boolean, null: false, default: false
  end
end
