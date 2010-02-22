class Factory < ActiveRecord::Base
	 has_attached_file :photo,
    :styles => {
      :larger => ["450x450#", :png],
      :small  => ["120x120>",:png] },
      	:convert_options => { 
                :small => "\\( +clone  -threshold -1 \
                     -draw 'fill black polygon 0,0 0,15 15,0 fill white circle 15,15 15,0' \
                     \\( +clone -flip \\) -compose Multiply -composite \
                     \\( +clone -flop \\) -compose Multiply -composite \
                     \\) +matte -compose CopyOpacity -composite"
                }
end


