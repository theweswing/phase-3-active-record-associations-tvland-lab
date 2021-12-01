class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors = self.actors
    full_names =
      actors.collect do |given_actor|
        "#{given_actor.first_name} #{given_actor.last_name}"
      end
    full_names
  end
end
