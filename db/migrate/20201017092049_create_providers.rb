class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :password

      t.timestamps
    end
  end
end
