class WomenController < ApplicationController
  before_action :set_woman, only: [:show, :edit, :update, :destroy]

 
  def index
    @women = Woman.all
  end

  
  def show
  end

  
  def new
    @woman = Woman.new
  end

  
  def edit
  end


  def create
    @woman = Woman.new(woman_params)

    respond_to do |format|
      if @woman.save
        format.html { redirect_to @woman, notice: 'Woman was successfully created.' }
        
      else
        format.html { render :new }
        
      end
    end
  end

  
  def update
    respond_to do |format|
      if @woman.update(woman_params)
        format.html { redirect_to @woman, notice: 'Woman was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

 
  def destroy
    @woman.destroy
    respond_to do |format|
      format.html { redirect_to women_url, notice: 'Woman was successfully destroyed.' }
      
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.   
    def set_woman
      @woman = Woman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.     
    def woman_params
      params.require(:woman).permit(:name, :website, :status, :image)
    end
end
