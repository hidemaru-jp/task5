class SearchsController < ApplicationController

  def search
    @model = params["model"]
    @content = params["content"]
    @method = params["method"]
    @tag_content = params["tag_content"]
    @records = search_for(@model, @content, @method, @tag_content)
  end

  private
  def search_for(model, content, method, tag_content)
    
    if tag_content != ''
      Book.where('tag LIKE ?', '%'+tag_content+'%')
    elsif model == 'user'
      if method == 'perfect'
        @users = User.where(name: content)
      else
        @users = User.where('name LIKE ?', '%'+content+'%')
      end
    elsif model == 'book'
      if method == 'perfect'
        Book.where(title: content)
      else
        Book.where('title LIKE ?', '%'+content+'%')
      end
    end
  end
end
