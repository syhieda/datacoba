class CreateGurus <ActiveRecord::Migration[7.1]
  def change
    create_table :gurus do |t|
      t.string :nama
      t.string :bid_studi
      t.timestamps
    end
  end
end
