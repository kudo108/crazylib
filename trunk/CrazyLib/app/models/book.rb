class Book < ActiveRecord::Base
  self.inheritance_column = :user_type
  def self.searchByTitle(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
    #find(:all)
    end
  end
  def bookTopic(topic)
    case topic
      when 1
        return "Web development"
      when 2
        return "Database"
      else
        return "Others"
    end
  end
     
    
  def self.search(filter,keyword)
    puts "searching"
    if keyword
      case filter
      when 0 #all
        find(:all)
      when 1 #title
        find(:all, :conditions => ['title LIKE ?', "%#{keyword}%"])
      when 2 #author
        find(:all, :conditions => ['author LIKE ?', "%#{keyword}%"])
      when 3 #desciption
        find(:all, :conditions => ['description LIKE ?', "%#{keyword}%"])
      else 
        find(:all)
      end
      
    else
      find(:all)
    end
  end
  
end
