# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def javascripts(*files)
		content_for(:javascripts) { javascript_include_tag(*files) }	
	end
	
	def stylesheets(*files)
		content_for(:head) { stylesheet_link_tag(*files) }
	end
	
	def title(title, title2=nil)
		if title2
			"<h3><span class='titulos'>#{title}</span> #{title2}</h3>" 
		else
			"<h3><span class='titulos'>#{title}</span></h3>" 
			end
	end
	
	#titulos(title)
	def title_page(page_title)
		content_for(:title) { page_title }
	end
	
end
