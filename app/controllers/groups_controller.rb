class GroupsController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new
    if @group.save
      redirect_to group_contents_path(@group.user_id)
      flash[:sucess] = "グループ作成いたしました"
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  # def group_params
  #   params.require(:group).permit(
  #   :name,
  #   )
  #   .merge(user_id: current_user.id)
  # end
end
