class HomeController < ApplicationController
	def index
		@latest_posts = Post.order(created_at: :desc).limit(5).page params[:page]
		@latest_tourneys = Tournament.order(created_at: :desc).limit(5)
		@top_ten = Player.where("flag !='i'").order(rating: :desc).limit(10)
		@top_juniors = Player.where("birthday>=#{Date.today.strftime('%Y').to_i - 20}").order(rating: :desc).limit(10)
		@top_girls = Player.where("sex = 'F' AND rating > 0 AND birthday>=#{Date.today.strftime('%Y').to_i - 20}").order(rating: :desc).limit(10)
		@top_women = Player.where("sex = 'F' AND rating > 0").order(rating: :desc).limit(10)
	end
	
	
end