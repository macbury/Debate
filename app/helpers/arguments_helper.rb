module ArgumentsHelper
	
	def render_chart(debate)
		chellenger = debate.arguments.count(:conditions => { :val => ARGUMENT_CHELLENGER }) || 0
		defender = debate.arguments.count(:conditions => { :val => ARGUMENT_DEFENDER }) || 0
		
		
		defender = 100 if defender == 0 && chellenger == 0
		url = "http://chart.apis.google.com/chart?cht=p3&chd=t:#{chellenger},#{defender}&chs=800x150&chl=#{debate.challenger_option}|#{debate.defender_option}"
		
		image_tag(url)
	end
	
end
