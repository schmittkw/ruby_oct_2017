module GamesHelper
	def farm
		puts "\n\n\n\n\n\n\n\n\n\nfarm\n\n\n\n\n\n\n\n\n\n"
	end
	def payout
		gold = 0
		case params[:building]
		when "farm"
			gold = rand(10..20)
		when "cave"
			gold = rand(5..10)
		when "house"
			gold = rand(2..5)
		when "casino"
			gold = rand(-50..50)
		end
		session[:gold] += gold
		return gold		
	end
	def addActivity gold, building
		activity = {
			message: "",
			color: ""
		}
		if gold > 0
			activity[:color] = "win"
			activity[:message] = "earned #{gold} gold from the #{building}!"
		elsif gold <0
			activity[:color] = "loss"
			activity[:message] = "lost #{gold} from the #{building} ... :("
		else gold
			activity[:color] = "tie"
			activity[:message] = "went to the #{building} and broke even"
		end
		
		session[:activities].unshift activity		
	end
end
