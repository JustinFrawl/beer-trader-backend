class CreateTrades < ActiveRecord::Migration[5.1]
  def change
    create_table :trades do |t|
      t.integer :creator_id
      t.integer :receiver_id
      t.integer :creator_beer_id
      t.integer :receiver_beer_id
    end
  end
end
