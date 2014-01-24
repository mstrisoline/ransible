class Group < ActiveRecord::Base
  has_many :hosts, dependent: :destroy
end
