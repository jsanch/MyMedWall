class Location < ActiveRecord::Base
  attr_accessible :city, :country, :provider_id, :state, :street_name, :street_number, :zipcode
  belongs_to :provider
end
