class PagesController < ApplicationController
  before_action :set_blog
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  # GET /pages
  def index
    @pages = @blog.pages.all
  end

  # GET /pages/1
  def show
  end

  # GET /pages/new
  def new
    @page = Page.new
    @page.type = 'Pages::TextPage'
    @page.template = Template.first
  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages
  def create
    @page = Page.new(page_params)

    @page.blog = @blog
    @page.type = 'Pages::TextPage'
    @page.template = Template.first

    if @page.save
      redirect_to blog_pages_path(blog: @blog, page: @page), notice: 'Page was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pages/1
  def update
    if @page.update(page_params)
      redirect_to blog_pages_path(blog: @blog, page: @page), notice: 'Page was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pages/1
  def destroy
    @page.destroy
    redirect_to blog_pages_path(@blog), notice: 'Page was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = @blog.pages.friendly.find(params[:id])
    end

    def set_blog
      @blog = current_user.blogs.friendly.find(params[:blog_id] ? params[:blog_id] : params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def page_params
      params.require(:page).permit(:title, :template_id, :photos_count, :videos_count, :content, :parent_id, :order, :header_photo, :permalink, :allow_comments, :disqus_identifier, :blog_id, :type, :cached_content, :published_at, :short_description)
    end
end
