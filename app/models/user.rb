class User < ApplicationRecord
  has_one_attached :photo, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :stars
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
