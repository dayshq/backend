class Room < ApplicationRecord
    has_many :member
    has_many :message
end
