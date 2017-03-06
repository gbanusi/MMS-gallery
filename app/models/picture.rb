class Picture < ApplicationRecord

	has_attached_file :pic, styles: { medium: "200x200>", thumb: "100x100>" }
  	validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/

end
