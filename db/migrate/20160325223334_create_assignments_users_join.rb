class CreateAssignmentsUsersJoin < ActiveRecord::Migration
  def change
    create_table :assignments_users do |t|
      t.integer :user_id
      t.integer :assignment_id
    end
    add_index :assignments_users, ['user_id', 'assignment_id']

  end
end
