class ImportJob < ActiveRecord::Base
  attr_accessible :name, :filename
  mount_uploader :filename, UploadsUploader
end
