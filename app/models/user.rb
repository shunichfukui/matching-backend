# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  mount_uploader :image, ImageUploader

  has_many :likes_from, class_name: "Like", foreign_key: :from_user_id, dependent: :destroy
  has_many :likes_to, class_name: "Like", foreign_key: :to_user_id, dependent: :destroy
  has_many :active_likes, through: :likes_from, source: :to_user
  has_many :passive_likes, through: :likes_to, source: :from_user

  has_many :messages
end
