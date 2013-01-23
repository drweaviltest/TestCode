class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :user_id
      t.text :post

      t.timestamps
    end
  end
end
