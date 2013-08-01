class Musician < ActiveRecord::Base
  #devise :database_authenticatable, :registerable,
         #:recoverable, :rememberable, :trackable, :validatable

  has_many :band_members
  has_many :bands, :through => :band_members

end
