require 'ostruct'
class Tool < OpenStruct
  include ActiveModel::Validations

  validates_presence_of :name, :url
  validates :url, :format => URI::regexp(%w(http https))

  def to_param; name.parameterize end
  def ns; "tools:#{self.to_param}" end
  def to_s; "#{self.name}" end

  def save
    return false unless valid?
    result = $redis.hmset(ns, marshal_dump.to_a.flatten.map(&:to_s)) # store as hash
    false if result !~ /ok/i
    self
  end
end
