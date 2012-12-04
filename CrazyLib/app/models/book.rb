class Book < ActiveRecord::Base
  self.inheritance_column = :user_type
  validates :title, :presence => true
   validates_numericality_of   :total_page, :greater_than =>0
   validates_numericality_of  :quantity, :greater_than=>0
  def self.searchByTitle(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
    #find(:all)
    end
  end
  def bookTopic(topic)
    #case topic
     # when 1
      #  return "Web development"
      #when 2
      #  return "Database"
      #else
      #  return "Others"
    #end
    category = BookCategory.find(:first,:conditions=>{:id=>topic.to_i})
    if (category)
      return category.name
    else 
       return "Other"
    end
  end
     
    
  def self.search(filter,keyword)
    puts "searching"
    if keyword
      case filter
      when 0 #all
        find(:all,:conditions=>['title LIKE ? or author LIKE ? or brief_content LIKE ?',"%#{keyword}%","%#{keyword}%","%#{keyword}%"])
      when 1 #title
        find(:all, :conditions => ['title LIKE ?', "%#{keyword}%"])
      when 2 #author
        find(:all, :conditions => ['author LIKE ?', "%#{keyword}%"])
      when 3 #desciption
        find(:all, :conditions => ['brief_content LIKE ?', "%#{keyword}%"])
      else 
        find(:all)
      end
      
    else
      find(:all)
    end
  end
  
end
