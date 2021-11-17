class AddPetSitterToUsers < ActiveRecord::Migration[6.0]
  def change
     add_column :users, :pet_sitter, :boolean
  end
end
