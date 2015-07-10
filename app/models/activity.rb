class Activity < ActiveRecord::Base
belongs_to :admin
has_many :teachers
has_many :students

end
