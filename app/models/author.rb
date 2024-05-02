class Author < ApplicationRecord
    has_many :posts, foreign_key: 'author_id', class_name: "Post"
end
