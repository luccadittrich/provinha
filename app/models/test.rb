class Test < ApplicationRecord
  has_many :answers, dependent: :destroy
end
