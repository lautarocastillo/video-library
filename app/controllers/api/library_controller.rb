class Api::LibraryController < ApplicationController
  before_action :set_type

  def index
    render json: @data
  end

  private

  def set_type
    @data = case params[:type]
            when 'movies'
              Video.movie
            when 'seasons'
              Video.season
            else
              Video.all
            end
    end
end
