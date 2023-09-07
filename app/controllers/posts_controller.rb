class PostsController < ApplicationController
  def index
    @student = Student.find(params[:student_id])
    @posts = @student.posts
  end

  def new
    @student = Student.find(params[:student_id])
    @post = Post.new
  end

  def create
    @post = Student.find(params[:student_id]).posts.new(params.require(:posts).permit(:title,:description))
    if @post.save
      flash[:notice] = "Created new post"
      redirect_to student_posts_path
    else
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:posts).permit(:title,:description))
    if @post.save
      flash[:notice] = "Updated #{@post.title}"
      redirect_to student_posts_path
    else
      render "edit"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Deleted successfully"
    redirect_to student_posts_path
  end
end