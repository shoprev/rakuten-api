require "yaml"
require "rakuten/api"

config = YAML.load_file(File.dirname(__FILE__)+'/config.yml')

Rakuten::Api.configure do |options|
  options[:applicationId] = config['applicationId']
  options[:affiliateId] = config['affiliateId']
end
