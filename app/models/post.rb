class Post < ApplicationRecord
    belongs_to :person
    attribute :author_id, default: 1
    has_many_attached :media
end
