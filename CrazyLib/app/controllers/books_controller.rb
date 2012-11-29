class BooksController < ApplicationController
  # GET /books
  # GET /books.json
  def index
    @books = Book.all
    @sciences = Book.find(:all,:limit=>8,:conditions=>{:topic=>1});
    respond_to do |format|
      format.html # view.html
      format.json { render json: @sciences }
    end
  end
  def viewbyid
  end
  #
  def viewbytype
  
  end
  # GET /books/1
  # GET /books/1.json
  def show
    @book = Book.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book }
    end
    @book = Book.find(:all,:conditions=>{:bookId=>params[:id]});
    respond_to do|format|
      format.html
    end
  end

  # GET /books/new
  # GET /books/new.json
  def new
    @book = Book.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book }
    end
  end
  
  def page
  respond_to do |format|
      format.html {render :layout => false}
    end
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(params[:book])

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render json: @book, status: :created, location: @book }
      else
        format.html { render action: "new" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /books/1
  # PUT /books/1.json
  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end

  #def searchByTitle
   # @books = Book.searchByTitle params[:search]
  #end

  def search
    if params[:keyword]
      @books = Book.search(params[:filter] ,params[:keyword])
    else
      @book = Book.find(:all)
    end
  end
end
