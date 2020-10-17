class ChangeProvidersColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :password_digest, :string
    remove_column :providers, :password, :string
  end
end
