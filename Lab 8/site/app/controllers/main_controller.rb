require 'functions.rb'

class MainController < ApplicationController
  def index
  end
  def results
    @num = params[:n].to_i
    @list = find_twins(@num).map { |pair| pair.join(' и ') }
    # render 'results'
  end
end
