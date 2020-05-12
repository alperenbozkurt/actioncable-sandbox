class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,
         :lockable, :timeoutable, :trackable

  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users

  has_many :messages
end
