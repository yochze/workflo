class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :user_id
      t.integer :project_id
      t.text :role
      t.integer :security_level

      t.timestamps
    end
  end
end
