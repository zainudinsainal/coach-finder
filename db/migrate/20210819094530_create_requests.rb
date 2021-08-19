class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :email
      t.text :message
      t.belongs_to :coach, foreign_key: true, index: true
      t.timestamps
    end
  end
end
