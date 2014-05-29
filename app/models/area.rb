class Area < ActiveRecord::Base
  has_many :are_arelations
  has_many :users, through: :are_arelations
end
