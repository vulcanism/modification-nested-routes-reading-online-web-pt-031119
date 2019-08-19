class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

  def index
    @authors = Author.all
  end
  
  private
 
  def post_params
    params.require(:post).permit(:title, :description, :author_id)
end

end
