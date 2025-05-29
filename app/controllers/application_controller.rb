class ApplicationController < ActionController::Base
	def about
		render "about"
	end

	def author
		render "author"
	end
end
