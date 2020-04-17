class StatusController < ApplicationController
  def index
    render plain: 'I am alive!'
  end
end
