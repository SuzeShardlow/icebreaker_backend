class AddGatheringIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :gathering_id, :bigint
  end
end
