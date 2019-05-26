class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :authentication_keys => [:name]
  attachment :profile_image

  has_many :books



  validates :name,
  length: { minimum: 2, maximum: 20}

  validates :introduction,
  length:{ maximum: 50}

  validates_uniqueness_of :name
  validates_presence_of :name



  #登録時にemailを不要とする
  def email_required?
    false
  end

  def email_changed?
    false
  end
end

