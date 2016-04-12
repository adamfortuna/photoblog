class HomeController < ApplicationController
  def index
    puts "request.subdomain"
    puts request.subdomain
  end
  def about; end
  def features; end
  def pricing; end
end
