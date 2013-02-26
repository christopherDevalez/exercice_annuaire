class Annuaire < ActiveRecord::Base
  attr_accessible :email, :nom, :phone, :prenom
  validates :nom, :presence => true
  validates :prenom, :presence => true
  validates :email, :presence => true
  validates :phone, :presence => true, :length => {:minimum => 10}
end
