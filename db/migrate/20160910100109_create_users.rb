class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :image
      t.string :provider
      t.string :uid

      t.timestamps null: false
    end

    add_index :users, [:provider, :uid], unique: true
  end
end
