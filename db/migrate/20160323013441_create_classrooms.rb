class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :period
      



      t.timestamps
    end
  end
end
