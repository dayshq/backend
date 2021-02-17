class Person < ApplicationRecord
    has_many :post
    has_many :comment
    has_one_attached :avatar
end
