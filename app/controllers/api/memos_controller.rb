class Api::MemosController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :getTweets]

  def create
    memo = Memmo.new(create_params)

    unless memo.save
      @error_message = [memo.errors.full_messages].compact
    end
  end

  def getTweets
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json
    end
  end

  private
  def create_params
    params.permit(:text)
  end
end
