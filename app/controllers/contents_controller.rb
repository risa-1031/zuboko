class ContentsController < ApplicationController

  def index
    @content = Content.new
    @contents = Content.includes(:text).order("created_at DESC")
    # if @content.save
    #   respond_to do |format|
    #     format.json
    #   end
    # else
    #   @contents = @group.contents.includes(:user)
    #   flash.now[:alert] = 'メッセージを入力してください。'
    #   render :index
    # end
  end



end
