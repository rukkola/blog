class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id]) # к чему обращаться можно увидеть в rake routes(article_id)
    @article.comments.create(comment_params) #  или так, но это не безопасно ({author: 'Mike', body: 'Helloy'})

    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)  
  end

end