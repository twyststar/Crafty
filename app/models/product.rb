class Product < ApplicationRecord

  has_attached_file :image, :styles => { :large => "400x400>", :medium => "200x200>", :thumb => "100x100#" }, :default_url => ":style/craft-tools.jpeg"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


validates :name, presence: true
validates :description, presence: true

belongs_to :user


end
