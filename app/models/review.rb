class Review < ActiveRecord::Base
  belongs_to :bookdatum
  belongs_to :user
end
