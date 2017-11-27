class User < ActiveRecord::Base
  devise :recoverable, :rememberable, :trackable

  enum role: [:normal, :admin]

  has_many :rides
  has_many :attractions, through: :rides

  validates :password, presence: true

  # has_secure_password

  def mood
    if self.nausea > self.happiness
      'sad'
    else
      'happy'
    end
  end
end
