class Post < ApplicationRecord
  belongs_to :creator, foreign_key: 'author_id', class_name: 'Author'
  has_and_belongs_to_many :emojis
end
