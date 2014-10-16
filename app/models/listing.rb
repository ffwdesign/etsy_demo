class Listing < ActiveRecord::Base
	if rials.env.development?
		has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "missing.png"
		validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)
	else

		has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "missing.png",
					:storage => :dropbox,
    				:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    				:path => ":style/:id_filename"
    	validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)
    end	
end
