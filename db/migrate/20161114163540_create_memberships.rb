class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.string :status
      t.boolean :admin

      t.timestamps
    end
  end
end
