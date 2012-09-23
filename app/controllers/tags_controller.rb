class TagsController < ApplicationController
  before_filter :get_tag, :only => [:show, :destroy]
  before_filter :require_login, :only => [:destroy]

  def get_tag
  	@tag = Tag.find(params[:id])
  end

  def index
  	@tags = Tag.all
  end

  def show
  end

  def destroy
  	@tag.destroy

  	redirect_to tags_path, [:notice] => "#{@tag.name} deleted"
  end
end
