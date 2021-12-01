class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |given|
      given.string :first_name
      given.string :last_name
    end
  end
end
