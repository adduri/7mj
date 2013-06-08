class Advertisement < ActiveRecord::Base
  attr_accessible :ad, :title,:ad_file_name
  has_attached_file :ad, :styles => { :small => "150x150>" },
   :url  => "/assets/ad/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/ad/:id/:style/:basename.:extension"

end
