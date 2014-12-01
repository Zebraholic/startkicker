class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :funding_goal
      t.datetime :end_date
      t.datetime :start_date
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
