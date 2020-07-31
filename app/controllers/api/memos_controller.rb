class Api::MemosController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    if params != ""
      memo = Memmo.new(create_params)
      unless memo.save
        @error_message = [memo.errors.full_messages].compact
      end
    end
  end

  private
  def create_params
    params.permit(:text)
  end
end
