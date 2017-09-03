class AddEventidToGroups < ActiveRecord::Migration[5.1]
  def change
    add_reference :groups, :event, foreign_key: true
  end
end
