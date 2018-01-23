class AddDateToTrades < ActiveRecord::Migration[5.1]
  def change
    add_column :trades, :date_created, :string
  end
end
