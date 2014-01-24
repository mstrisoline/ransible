class Host < ActiveRecord::Base
  has_many :host_vars, dependent: :destroy
  belongs_to :group
end
