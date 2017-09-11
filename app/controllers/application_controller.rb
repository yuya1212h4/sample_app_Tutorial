class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper # どのコントローラーでも使うことが出来る
end
