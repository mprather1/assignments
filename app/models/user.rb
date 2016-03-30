class User < ActiveRecord::Base
  has_and_belongs_to_many :assignments
  has_and_belongs_to_many :classrooms

  has_secure_password validations: false

  #validates_presence_of :password, :on => :create
  #validates_presence_of :password_confirmation
  #validates_confirmation_of :password

  def name
    "#{first_name} #{last_name}"
  end
end
