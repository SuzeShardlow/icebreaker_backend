class AddFirstnameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :jobtitle, :string
    add_column :users, :linkedinurl, :text
    add_column :users, :bio, :text

  end
end
