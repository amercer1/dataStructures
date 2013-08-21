require_relative '../linked_list'
 
require 'yaml'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :progress #:documentation, :progress, :html, :textmate
end
