class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def full_name
    return 'Anonymous' unless (first_name && last_name)
    first_name + ' ' + last_name
  end

  def initials
    return 'AN' unless (first_name && last_name)
   first_name.first + last_name.first
  end
end
