# By Oto Brglez - <oto.brglez@dlabs.si>

CONFIG = YAML.load(ERB.new(
  File.read(Rails.root.join('config','config.yml'))).result)[Rails.env]