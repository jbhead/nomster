class Photo < ApplicationRecord
  belongs_to :place
  ## belongs_to :user -- removed because it was causing db not to write
  ## user not authenticated. 
  
end
