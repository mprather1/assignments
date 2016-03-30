class CreateAssignmentsClassroomsJoin < ActiveRecord::Migration
  def change
    create_table :assignments_classrooms do |t|
      t.integer :assignment_id
      t.integer :classroom_id
    end
    add_index :assignments_classrooms, ['classroom_id', 'assignment_id']

  end
end
