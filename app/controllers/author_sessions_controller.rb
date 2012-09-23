class AuthorSessionsController < ApplicationController
	def new
		@author = Author.new
	end

	def create
		if @author = login(params[:username], params[:password])
			redirect_back_or_to(articles_path, :notice => 'Logged in successfully.')
		else
			flash.now[:alert] = "Login failed."
			render :action => :new
		end
	end

	def destroy
		logout
		redirect_to(:authors, :notice => 'Logged out!')
	end
end