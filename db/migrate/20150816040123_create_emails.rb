class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
