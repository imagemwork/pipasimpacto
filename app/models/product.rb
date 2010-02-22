class Product < ActiveRecord::Base
	 has_attached_file :photo,
    :styles => {
      :larger => "500x500#",
      :small  => ["120x120>", :png] },
	      	:convert_options => { 
	          :small => "\\( +clone  -threshold -1 \
	                -draw 'fill black polygon 0,0 0,15 15,0 fill white circle 15,15 15,0' \
	                \\( +clone -flip \\) -compose Multiply -composite \
	                \\( +clone -flop \\) -compose Multiply -composite \
	                \\) +matte -compose CopyOpacity -composite"
	          }
	          
	          
	def self.busca(busca)
		if busca
					find(:all, :conditions => ['title LIKE ?', "%#{busca}%"], :order => "liters")
			else
				find(:all, :order => "liters")
			end
		end	
end
