class CreateComment < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string :comment, null: false

      t.timestamps
    end
  end
end
