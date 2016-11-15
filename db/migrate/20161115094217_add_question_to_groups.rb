class AddQuestionToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :question, :string
  end
end
