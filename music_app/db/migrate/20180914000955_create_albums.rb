class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.integer :year, null: false
      t.string :title, null: false
      t.string :live, default: "False"


      t.timestamps
    end
  end
end
