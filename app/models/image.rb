class Image < ActiveRecord::Base
  acts_as_taggable
  # attr_accessor :tag_list

  belongs_to :user
  has_attached_file :photo, styles: { large: "300x300<", medium: "300x300>", thumb: "100x100>" }
  validates_attachment :photo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
