class Post < ApplicationRecord
  belongs_to :creator, foreign_key: 'author_id', class_name: 'Author'
end
