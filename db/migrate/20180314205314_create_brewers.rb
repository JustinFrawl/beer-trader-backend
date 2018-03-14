class CreateBrewers < ActiveRecord::Migration[5.1]
  def change
    create_table :brewers do |t|
      t.string :name
      t.integer :years

      t.timestamps
    end
  end
end
