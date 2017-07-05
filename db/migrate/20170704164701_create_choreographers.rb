class CreateChoreographers < ActiveRecord::Migration[5.1]
  def change
    create_table :choreographers do |t|
      t.string :name

      t.timestamps
    end
  end
end
