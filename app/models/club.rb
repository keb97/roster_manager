class Club < ActiveRecord::Base
  attr_accessible :league, :name

  has_many :players, :dependent => :delete_all
end
