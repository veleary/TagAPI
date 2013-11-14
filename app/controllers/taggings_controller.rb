class TaggingsController < ApplicationController
  # GET /taggings
  # GET /taggings.json
  def index
    @taggings = Tagging.all

    render json: @taggings
  end

  # GET /taggings/1
  # GET /taggings/1.json
  def show
    @tagging = Tagging.find(params[:id])

    render json: @tagging
  end

  # POST /taggings
  # POST /taggings.json
  def create
    @tagging = Tagging.new(params[:tagging])

    if @tagging.save
      render json: @tagging, status: :created, location: @tagging
    else
      render json: @tagging.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /taggings/1
  # PATCH/PUT /taggings/1.json
  def update
    @tagging = Tagging.find(params[:id])

    if @tagging.update(params[:tagging])
      head :no_content
    else
      render json: @tagging.errors, status: :unprocessable_entity
    end
  end

  # DELETE /taggings/1
  # DELETE /taggings/1.json
  def destroy
    @tagging = Tagging.find(params[:id])
    @tagging.destroy

    head :no_content
  end
end
