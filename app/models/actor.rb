class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters = self.characters
    all_roles =
      characters.map do |given_character|
        "#{given_character.name} - #{given_character.show.name}"
      end
    all_roles
  end
end
