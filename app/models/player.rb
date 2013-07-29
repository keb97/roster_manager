class Player < ActiveRecord::Base
  belongs_to :club
  belongs_to :nation
  attr_accessible :name, :club_id
end
