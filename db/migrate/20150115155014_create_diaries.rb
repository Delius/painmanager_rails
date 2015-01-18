class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
