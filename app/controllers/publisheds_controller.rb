class PublishedsController < ApplicationController
  # GET /publisheds
  # GET /publisheds.json
  def index
    @publisheds = Published.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @publisheds }
    end
  end

  # GET /publisheds/1
  # GET /publisheds/1.json
  def show
    @published = Published.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @published }
    end
  end

  # GET /publisheds/new
  # GET /publisheds/new.json
  def new
    @published = Published.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @published }
    end
  end

  # GET /publisheds/1/edit
  def edit
    @published = Published.find(params[:id])
  end

  # POST /publisheds
  # POST /publisheds.json
  def create
    @published = Published.new(params[:published])

    respond_to do |format|
      if @published.save
        format.html { redirect_to @published, notice: 'Published was successfully created.' }
        format.json { render json: @published, status: :created, location: @published }
      else
        format.html { render action: "new" }
        format.json { render json: @published.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /publisheds/1
  # PUT /publisheds/1.json
  def update
    @published = Published.find(params[:id])

    respond_to do |format|
      if @published.update_attributes(params[:published])
        format.html { redirect_to @published, notice: 'Published was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @published.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publisheds/1
  # DELETE /publisheds/1.json
  def destroy
    @published = Published.find(params[:id])
    @published.destroy

    respond_to do |format|
      format.html { redirect_to publisheds_url }
      format.json { head :no_content }
    end
  end
end
