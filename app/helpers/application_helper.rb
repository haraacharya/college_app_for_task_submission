module ApplicationHelper

	def active(page)
  		return 'class="active"'.html_safe if current_page?(page)
  	end

end
