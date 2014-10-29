class Person < ActiveRecord::Base
  validates :first_name, :last_name, :email, :address_line_one, :city, :state, :zip_code, presence: true
  validates_email_format_of :email, :message => 'is not a valid format.'
  validates :zip_code,
    length: {maximum: 5,
      message: 'has too many characters (should be 5).'
    }
  validates :zip_code, numericality: true
end
