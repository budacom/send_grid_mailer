require "sendgrid-ruby"
require "send_grid_mailer/engine"

module SendGridMailer
  extend self

  # You can add, in this module, your own configuration options as in the example below...
  #
  # attr_writer :my_option
  #
  # def my_option
  #   return "Default Value" unless @my_option
  #   @my_option
  # end
  #
  # Then, you can customize the default behaviour (typically in a Rails initializer) like this:
  #
  # SendGridMailer.setup do |config|
  #   config.root_url = "Another value"
  # end

  def setup
    yield self
    require "send_grid_mailer"
  end
end
