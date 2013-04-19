module ApplicationHelper

def full_title(page_title)
	generic_title = 'Waku Shop: Online Shopping'
		if page_title.empty?
			generic_title
		else 
			"#{generic_title} | #{page_title}"
		end

	end
end
