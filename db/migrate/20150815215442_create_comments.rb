class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :email
      t.string :text
      t.date :created_at
      t.date :updated_at

      t.timestamps
    end
  end
end
