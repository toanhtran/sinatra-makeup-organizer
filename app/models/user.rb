class User < ActiveRecord::Base
  has_many  :makeup_bags
  has_secure_password

end
