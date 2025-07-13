class PostsController < ApplicationController
  def index
    @search_form = PostSearchForm.new(search_params)
    @posts = @search_form.search.page(params[:page]).per(25)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path, success: t('defaults.flash_message.created', item: Post.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_created', item: Post.model_name.human)
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post), success: t('defaults.flash_message.updated', item: Post.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_updated', item: Post.model_name.human)
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    post = current_user.posts.find(params[:id])
    post.destroy!
    redirect_to posts_path, success: t('defaults.flash_message.deleted', item: Post.model_name.human), status: :see_other
  end

  private

  def post_params
    params.require(:post).permit(:title, :location, :category, :area, :access, :url, :content, :post_image, :post_image_cache)
  end

  def search_params
    params.fetch(:post_search_form, {}).permit(:gender, :age, :category, :area, :title)
  end

end
