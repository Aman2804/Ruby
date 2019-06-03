$SCORE_CARD = {
		"IssuesEvent" => 7,
		"IssueCommentEvent" => 6,
		"PushEvent" => 5,
		"PullRequestReviewCommentEvent" => 4,
		"WatchEvent" => 3,
		"CreateEvent" => 2,
		}
class Dhh_jason
	require 'net/http'
	require 'json'
	def fetch_dhh_data()
		result = Net::HTTP.get(URI.parse('https://api.github.com/users/dhh/events/public'))
		dhh_score = 0 
		
		JSON.parse(result).each{|val| dhh_score += $SCORE_CARD.fetch(val["type"],1)}

		puts "DHH's github score is #{dhh_score}"
	end
end
obj1 = Dhh_jason.new.fetch_dhh_data()