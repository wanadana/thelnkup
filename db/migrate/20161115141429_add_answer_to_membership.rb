class AddAnswerToMembership < ActiveRecord::Migration[5.0]
  def change
    add_column :memberships, :answer, :text
  end
end
