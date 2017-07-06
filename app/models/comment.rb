class Comment < ActiveRecord::Base
  belongs_to :image
  validates :author, :presence => true
  validates :content, :presence => true
end
