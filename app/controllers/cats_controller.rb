class CatsController < ApplicationController
    def index
        @cats = Cat.all 
        render json: @cats
    end

    def create
        @cat = Cat.create(
      name: params[:name],
      breed: params[:breed],
      age: params[:age]
    )
    render json: @cat
    end
    
    def show
        @cat = Cat.find(params[:id])
        render json: @cat
    end

    def update
        @cat = Cat.find(params[:id])
        @cat.update(
        name: params[:name],
        breed: params[:location],
        age: params[:capacity]
    )
    render json: @cat
    end

    def destroy
        @cats = Cat.all
        @cat = Cat.find(params[:id])
        @cat.destroy 
        render json: @cats
    end
end
