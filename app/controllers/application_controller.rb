class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    @entities = Entity.all
  end
end
