xml.instruct!
xml.response do
	if @argument.valid?
		xml.error 0
	else
		xml.error 1
		xml.message @argument.errors.full_messages.join(', ')
	end
	
end