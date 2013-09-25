class Provider < ActiveRecord::Base
  attr_accessible :contact_first_name, :contact_last_name, :flavor, :hospital_affiliation, :name, :phone_number, :specialty, :messagesallowd
  has_many :locations

  #include Mongoid::Document
  #include Mongoid::Timestamps 

  include Tire::Model::Search
  include Tire::Model::Callbacks
end
