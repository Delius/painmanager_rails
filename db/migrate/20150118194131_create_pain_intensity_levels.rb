class CreatePainIntensityLevels < ActiveRecord::Migration
  def change
    create_table :pain_intensity_levels do |t|
      t.integer :intensity_level
      t.references :user, index: true
      t.references :diary, index: true

      t.timestamps null: false
    end
    add_foreign_key :pain_intensity_levels, :users
    add_foreign_key :pain_intensity_levels, :diaries
  end
end
