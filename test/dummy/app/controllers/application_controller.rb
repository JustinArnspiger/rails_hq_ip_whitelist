require "rails_hq_ip_whitelist"
class ApplicationController < ActionController::Base
  include IPWhitelist::Controller
  protect_from_forgery with: :exception
  before_action :check_ip_whitelist

  def main
    render plain: "OK"
  end
end
