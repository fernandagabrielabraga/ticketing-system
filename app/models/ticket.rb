class Ticket < ApplicationRecord
  after_create :generate_code
  belongs_to :user


  def generate_code
    self.code = SecureRandom.hex
    save
  end

 


end
