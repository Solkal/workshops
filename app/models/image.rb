class Image < ActiveRecord::Base
  acts_as_taggable
  has_reputation :votes, source: :user, aggregated_by: :sum

  belongs_to :user
  has_attached_file :photo, styles: { large: "500x500" }, :default_url => "/images/:style/missing.png", default_styles: :large
  validates_attachment :photo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
