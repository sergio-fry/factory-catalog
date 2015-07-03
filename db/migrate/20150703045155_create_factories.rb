class CreateFactories < ActiveRecord::Migration
  def change
    create_table :factories do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.text :products
      t.string :city
      t.string :address
      t.string :phone
      t.string :email
      t.string :site

      t.timestamps null: false
    end
  end
end
