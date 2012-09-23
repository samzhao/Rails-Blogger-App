class ArticlesController < ApplicationController

	before_filter :get_article, :only => [:show, :edit, :update, :destroy]
	before_filter :require_login, :except => [:index, :show]

	def get_article
		@article = Article.find(params[:id])
	end

	def index
		@articles = Article.all
	end

	def show
		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(params[:article])
		@article.save

		redirect_to(article_path(@article),
			:notice => "#{@article.title} is created.")
	end

	def edit
	end

	def update
		@article.update_attributes(params[:article])

		redirect_to(article_path(@article),
			:notice => "You have updated #{@article.title}.")
	end

	def destroy
		@article.destroy

		redirect_to(articles_path,
			:notice => "You have deleted #{@article.title}.")
	end

end
