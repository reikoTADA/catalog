class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :image, :image_cache
  mount_uploader :image, ProductImageUploader

  validates_presence_of :name, :description
  validates_uniqueness_of :name
  validates_numericality_of :price, :only_integer => true, :greater_than_or_equal_to => 0
end
