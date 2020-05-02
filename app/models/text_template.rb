class TextTemplate < ActiveRecord::Base
  belongs_to :user
  has_many :texts
end