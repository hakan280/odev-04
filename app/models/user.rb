class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :ratings
  has_many :movies , through: :ratings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
