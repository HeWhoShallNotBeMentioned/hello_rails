class SayController < ApplicationController
  def hello
    @hello = Hello.new
    if params[:city]
      render :json => @hello.to_json(params[:city])
    else
      render :json => @hello.to_json("Portland")
    end
  end
end
