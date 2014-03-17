class CommentsController < ApplicationController

  def new
  	@article = Article.find(params[:article_id])
   	@comentario = Comment.new
  end

  def create
  	#comentario = Comment.new(:content => params[:comment][:content], :article_id => params[:article_id] )
  	article = Article.find(params[:article_id])
  	comentario = article.comments.create(:content => params[:comment][:content])
  	redirect_to article
  end

end
