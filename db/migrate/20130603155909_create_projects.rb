class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :sub_title
      t.text :introduction
      t.text :pitch

      t.timestamps
    end
  end
end
