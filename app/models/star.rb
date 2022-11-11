class Star < ApplicationRecord
  validates :user, uniqueness: { scope: :test_id }
  belongs_to :user
  belongs_to :test
end
