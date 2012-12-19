# == Schema Information
#
# Table name: breweries
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  email       :string(255)
#  image       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Brewery < ActiveRecord::Base
  attr_accessible :description, :email, :image, :name

  before_save { |brewery| brewery.email = email.downcase }

  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

end
