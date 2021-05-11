class LandingController < ApplicationController
  def show
  puts "$" * 10
   puts "Bienvenue"
   puts params[:user_entry]
   puts "$" * 10
  end
end
