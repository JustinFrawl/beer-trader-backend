class CreateTradeBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :trade_beers do |t|
      t.integer :beer_id
      t.integer :trade_id
    end
  end
end
