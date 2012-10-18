class CurrentMovie < ActiveRecord::Base
  attr_accessible :title, :description, :director, :actors, :image_url, :language, :votes
end
