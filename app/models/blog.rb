class Blog < ActiveRecord::Base

#validates_attachment_presence :photo
#validates_attachment_size :photo, 
#	:less_than => 5.megabytes
#validates_attachment_content_type :photo, 
#	:content_type => {"image.jpeg", "image.jpg", "image.png"}

has_attached_file :photo,
:styles => {
  :thumb => "100x100#",
  :small => "150x150>",
  :medium => "300x300>",
  :large => "600x600>"}

include Tire::Model::Search
include Tire::Model::Callbacks

#searchable do
#  text :name, :title, :article, :created_at
#  string :name, :title, :article
#  time :created_at
#end

end
