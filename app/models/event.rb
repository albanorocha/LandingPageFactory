class Event < ActiveRecord::Base
  has_many :event_users
  has_many :users, :through => :event_users
  has_many :teams
  has_many :projects, through: :teams

  has_one :image, :as => :imageable, dependent: :destroy

  accepts_nested_attributes_for :image

  def to_param
    "#{code}".parameterize
  end

end
