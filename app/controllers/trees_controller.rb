class TreesController < ApplicationController
  before_action :require_authentication
  before_action :set_tree, only: [:show, :edit, :update]

  def index
    @tree = Current.user.tree
  end

  def show
    # @tree is set by before_action
  end

  def edit
    # @tree is set by before_action
  end

  def new
    @tree = Current.user.build_tree
  end

  def create
    @tree = Current.user.build_tree(set_param)

    if @tree.save
      redirect_to tree_path(@tree), notice: "Tree was successfully created."
    else
      render :new, status: :unprocessable_entity  # Changed from :edit to :new
    end
  end

  def update
    # @tree is already set by before_action, don't build a new one!
    if @tree.update(set_param)  # Use update, not build and save
      redirect_to root_path, notice: "Tree was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_tree
    @tree = Current.user.tree
  end

  def set_param
    params.require(:tree).permit(:x, :youtube, :instagram, :facebook, :twitter, :linkedin, :whatsapp, :github)
  end
end