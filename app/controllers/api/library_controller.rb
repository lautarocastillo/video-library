class Api::LibraryController < ApplicationController
  before_action :set_type

  def index
  end

  private

  def set_type
    @library = case params[:type]
               when 'movies'
                 Movie.all
               when 'seasons'
                 Season.includes(:episodes).all
               else
                 Video.all
               end
  end
end
