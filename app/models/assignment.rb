class Assignment < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :classrooms

  mount_uploader :attachment, AttachmentUploader
end
