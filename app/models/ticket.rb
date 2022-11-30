class Ticket < ApplicationRecord
  belongs_to :user
  # def generate_code
    # self.code = SecureRandom.hex
    # save
  # end

end
