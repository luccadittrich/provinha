class Test < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :stars
end
