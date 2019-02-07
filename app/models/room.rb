class Room < ApplicationRecord
  before_create :generate_token

  has_many :messages

  private

  def generate_nickname
    self.token = SecureRandom.hex(2)
  end
end
