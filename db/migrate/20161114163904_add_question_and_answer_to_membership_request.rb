class AddQuestionAndAnswerToMembershipRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :membership_requests, :question, :string
    add_column :membership_requests, :answer, :text
  end
end
