class PagesController < ApplicationController
  before_action :require_login, except: [:login, :authenticate]

  def home
  end

  def workshops
  end

  def info
  end

  def registration
  end

  def speakers
  end

  def login
    render 'login', layout: false
  end

  def logout
    cookies[:ytl] = nil
    redirect_to root_path
  end

  def authenticate
    input = params[:passphrase]
    if input == "ytlleaders2017"
      cookies[:ytl] = {
        value: 'cookie',
        expires: 1.month.from_now
      }
    end
    redirect_to root_path
  end

  def require_login
    if cookies[:ytl] != "cookie"
      redirect_to '/login'
    end
  end
end
