class Tool < ActiveRecord::Base

  attr_accessible :name, :url
  validates_presence_of :name, :url
  validates :url, :format => URI::regexp(%w(http https))
  validates_uniqueness_of :name

  def to_s; name end

end
