class AddDefaultToMemberships < ActiveRecord::Migration[5.0]
  def change
    change_column :memberships, :admin, :boolean, :default => false
    change_column :memberships, :status, :string, :default => "pending"
  end
end
