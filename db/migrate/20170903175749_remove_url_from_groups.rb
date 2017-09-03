class RemoveUrlFromGroups < ActiveRecord::Migration[5.1]
  def change
    remove_column :groups, :url, :string
  end
end
