class WelcomeController < ApplicationController

  def index
  end

  def about
  end

  def code
  	redirect_to "https://github.com/jessicag/findmynewhome"
  end
end
