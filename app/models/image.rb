class Image < ActiveRecord::Base
  belongs_to :user
  has_attached_file :photo, styles: { large: "300x300<", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :photo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
