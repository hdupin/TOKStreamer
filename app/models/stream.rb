class Stream < ActiveRecord::Base
  belongs_to :user

  validates :user, :title, :session_id, presence: true
end
