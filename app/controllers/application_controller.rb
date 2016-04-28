class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :most_used_tags

  def most_used_tags
    @most_used_tags ||= ActsAsTaggableOn::Tag.most_used(10)
  end
end
