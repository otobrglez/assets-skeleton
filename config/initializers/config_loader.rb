# By Oto Brglez - <oto.brglez@dlabs.si>

CONFIG = YAML.load(ERB.new(
  File.read(Rails.root.join('config','config.yml'))).result)[Rails.env]

$redis = ConnectionPool::Wrapper.new(
  size: CONFIG["redis_pool"]["size"],
  timeout: CONFIG["redis_pool"]["timeout"]) do

  Redis.new(url: CONFIG["redis_url"])
end
