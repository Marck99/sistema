class CommentsController < ApplicationController

  def create
  	article = Article.find(params[:article_id])
    comentario = article.comments.create(params[:comment])
  	redirect_to article
  end

end
