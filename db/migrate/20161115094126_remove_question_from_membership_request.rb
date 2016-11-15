class RemoveQuestionFromMembershipRequest < ActiveRecord::Migration[5.0]
  def change
    remove_column :membership_requests, :question, :string
  end
end
