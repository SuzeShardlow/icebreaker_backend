class CreateJoinTableGatheringsUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :gatherings, :users do |t|
      # t.index [:gathering_id, :user_id]
      # t.index [:user_id, :gathering_id]
    end
  end
end
