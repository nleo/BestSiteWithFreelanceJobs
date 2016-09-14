class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :image
      t.text   :about
      t.string :provider
      t.string :uid

      t.timestamps null: false
    end

    add_index :users, [:provider, :uid], unique: true
  end
end
