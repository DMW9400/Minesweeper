class Grid < ApplicationRecord
  belongs_to :session
  # belongs_to :user, through: :sessions
  has_many :spaces
end
