class CreateUniqueLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :unique_links do |t|
      t.string :link
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
