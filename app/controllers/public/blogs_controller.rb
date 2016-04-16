module Public
  class BlogsController < ApplicationController
    def index
      @blog = Blog.find_by(identifier: request.subdomain)
      page = @blog.page_for(params[:id])

      if page

        # Compile this page
        if true || !page.cached_content
          handlebars = Handlebars::Context.new
          template = handlebars.compile(page.template.content)
          page.cached_content = template.call({
            page: {
              title: page.title,
              content: page.content,
              short_description: page.short_description
            }
          })
          page.save
        end


        render text: page.cached_content
      else
        head :not_found
      end
    end
  end
end
