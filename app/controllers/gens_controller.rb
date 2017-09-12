class GensController < ApplicationController
  before_action :set_gen, only: [:edit, :destroy]
  
  def index
    @gens = Gen.all
  end
  
  def new
   if params[:back]
      @gen = Gen.new(gens_params)
   else
    @gen = Gen.new
   end
  end
  
  def confirm
   @gen = Gen.new(gens_params)
   render :new if @gen.invalid?
  end  
  
  def create
   @gen = Gen.new(gens_params)
   if @gen.save
      redirect_to gens_path, notice:"ツイッターを作成しました！"
   else
     render 'new'
   end     
  end
  
  def edit
    @gen = Gen.find(params[:id])
  end
  
  def update
    @gen = Gen.find(params[:id]) 
    @gen.update(gens_params)
     redirect_to gens_path, notice:"ツイッターを更新しました！"
  end
  
   
  def destroy
    @gen.destroy
    redirect_to gens_path, notice:"ツイッターを削除しました！"
  end
  
  private
    def gens_params
      params.require(:gen).permit(:content)
    end
    
    def set_gen
     @gen = Gen.find(params[:id])    
    end
 end