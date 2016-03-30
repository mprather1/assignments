class CreateClassroomsUsersJoin < ActiveRecord::Migration
  def change
    create_table :classrooms_users do |t|
      t.integer :user_id
      t.integer :classroom_id
    end
    add_index :classrooms_users, ['user_id', 'classroom_id']

  end
end
