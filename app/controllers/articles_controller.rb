class ArticlesController < ApplicationController
  
  def new
  end

  def create

   @article = Article.new(article_params)
      if @article.valid?
        @article.save
        redirect_to @article # автоматич определяет куда редиректить/ добавляет номер страницы
      else
        render action: 'new'
      end  
#      render plain: params[:article].inspect
    end

 private

 def article_params
    params.require(:article).permit(:title, :text)  
 end

end
