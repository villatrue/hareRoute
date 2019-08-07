class User < ApplicationRecord
    has_many :routes
    has_many :addresses, through: :routes  
end
