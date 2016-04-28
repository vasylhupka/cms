class Article < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  acts_as_taggable

  has_many :category_articles
  has_many :categories, through: :category_articles
end
