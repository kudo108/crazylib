class Book < ActiveRecord::Base
  def self.searchByTitle(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      #find(:all)
    end
  end
  
  def self.search(search_project, search_client) 
  return scoped unless search_project.present? || search_client.present?
  where(['project_name LIKE ? AND client LIKE ?', "%#{search_project}%", "%#{search_client}%"])
end
end
