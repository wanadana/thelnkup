class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :photo
      t.string :link
      t.integer :capacity
      t.string :category

      t.timestamps
    end
  end
end
