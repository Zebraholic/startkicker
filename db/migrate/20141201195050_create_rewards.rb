class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.integer :amount
      t.text :description
      t.integer :backer_limit

      t.timestamps
    end
  end
end
