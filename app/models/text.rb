class Text < ActiveRecord::Base
  belongs_to :text_template
  belongs_to :recipient
end