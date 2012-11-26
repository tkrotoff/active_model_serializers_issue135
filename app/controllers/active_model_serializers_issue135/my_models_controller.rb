require_dependency "active_model_serializers_issue135/application_controller"

module ActiveModelSerializersIssue135
  class MyModelsController < ApplicationController
    # GET /my_models
    # GET /my_models.json
    def index
      @my_models = MyModel.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @my_models }
      end
    end
  
    # GET /my_models/1
    # GET /my_models/1.json
    def show
      @my_model = MyModel.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @my_model }
      end
    end
  
    # GET /my_models/new
    # GET /my_models/new.json
    def new
      @my_model = MyModel.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @my_model }
      end
    end
  
    # GET /my_models/1/edit
    def edit
      @my_model = MyModel.find(params[:id])
    end
  
    # POST /my_models
    # POST /my_models.json
    def create
      @my_model = MyModel.new(params[:my_model])
  
      respond_to do |format|
        if @my_model.save
          format.html { redirect_to @my_model, notice: 'My model was successfully created.' }
          format.json { render json: @my_model, status: :created, location: @my_model }
        else
          format.html { render action: "new" }
          format.json { render json: @my_model.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /my_models/1
    # PUT /my_models/1.json
    def update
      @my_model = MyModel.find(params[:id])
  
      respond_to do |format|
        if @my_model.update_attributes(params[:my_model])
          format.html { redirect_to @my_model, notice: 'My model was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @my_model.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /my_models/1
    # DELETE /my_models/1.json
    def destroy
      @my_model = MyModel.find(params[:id])
      @my_model.destroy
  
      respond_to do |format|
        format.html { redirect_to my_models_url }
        format.json { head :no_content }
      end
    end
  end
end
