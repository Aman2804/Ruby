class Dhh_jason
	require 'net/http'
	require 'json'
	def fetch_dhh_data()
		result = Net::HTTP.get(URI.parse('https://api.github.com/users/dhh/events/public'))
		dhh_score = 0 

		score_card = {
		"IssuesEvent" => 7,
		"IssueCommentEvent" => 6,
		"PushEvent" => 5,
		"PullRequestReviewCommentEvent" => 4,
		"WatchEvent" => 3,
		"CreateEvent" => 2,
		}

		JSON.parse(result).group_by{|obj| obj["type"]}.map {|k,v| [k, v.length]}.each do |record|
		  dhh_score += score_card.fetch(record[0],1) * record[1]
		end

		puts "DHH's github score is #{dhh_score}"
	end
end
obj1 = Dhh_jason.new.fetch_dhh_data()