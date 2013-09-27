class Provider < ActiveRecord::Base
  attr_accessible :contact_first_name, :contact_last_name, :flavor, :hospital_affiliation, :name, :phone_number, :specialty, :messagesallowd, :city, :state, :street_number, :street_name, :zipcode, :country, :username, :password

  #include Mongoid::Document
  #include Mongoid::Timestamps 

  include Tire::Model::Search
  include Tire::Model::Callbacks
end
