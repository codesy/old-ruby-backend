class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :username
      t.string :url
      t.decimal :offer
      t.decimal :ask

      t.timestamps
    end
  end
end
