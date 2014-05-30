class Area < ActiveRecord::Base
  has_many :area_relations
  has_many :users, through: :area_relations
end
