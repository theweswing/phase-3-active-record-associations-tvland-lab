class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |given|
      given.string :name
      given.integer :actor_id
      given.integer :show_id
    end
  end
end
