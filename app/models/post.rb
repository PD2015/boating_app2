class Post < ActiveRecord::Base	
  belongs_to :logbook #has many through nested shortcut with user.
 
end



