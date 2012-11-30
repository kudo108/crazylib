class Transaction < ActiveRecord::Base
  def getBook
    book = Book.find(:first,:conditions => {:id=>self.book_id})
    return book
  end
  def getStatus
    case self.status
    when 1
      return "Waiting" #chua lay sach
    when 2
      return "Holding" #da lay sach chua tra
    when 3
      return "Returned" #da tra
    else
      return "Unknown"
    end
  end
end
