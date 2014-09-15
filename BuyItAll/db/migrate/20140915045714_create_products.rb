class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.belongs_to :user

      t.timestamps
    end
  end
end
