class CreateCoaches < ActiveRecord::Migration[6.1]
  def change
    create_table :coaches do |t|
      t.string :first_name
      t.string :last_name
      t.string :areas, array: true, default: []
      t.text :description
      t.integer :hourly_rate
      t.timestamps
    end
  end
end
