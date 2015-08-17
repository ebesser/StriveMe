class ChangeTitleInComments < ActiveRecord::Migration
  def self.up
  	change_column :comments, :email, :text
  end

  def self.down
  	change_column :comments, :email, :string
  end
end
