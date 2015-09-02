class AddEncodedUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :encoded_url, :text
  end
end
