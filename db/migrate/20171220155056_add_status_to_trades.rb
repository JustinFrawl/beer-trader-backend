class AddStatusToTrades < ActiveRecord::Migration[5.1]
  def change
    add_column :trades, :status, :boolean
  end
end
