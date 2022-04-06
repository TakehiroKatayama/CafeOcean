class AddStatusToCapacities < ActiveRecord::Migration[6.0]
  def change
    add_column :capacities, :status, :integer, default: 0
  end
end
