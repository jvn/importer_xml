class ImportDefsController < ApplicationController
  # GET /import_defs
  # GET /import_defs.json
  def index
    @import_defs = ImportDef.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @import_defs }
    end
  end

  # GET /import_defs/1
  # GET /import_defs/1.json
  def show
    @import_def = ImportDef.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @import_def }
    end
  end

  # GET /import_defs/new
  # GET /import_defs/new.json
  def new
    @import_def = ImportDef.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @import_def }
    end
  end

  # GET /import_defs/1/edit
  def edit
    @import_def = ImportDef.find(params[:id])
  end

  # POST /import_defs
  # POST /import_defs.json
  def create
    @import_def = ImportDef.new(params[:import_def])

    respond_to do |format|
      if @import_def.save
        format.html { redirect_to @import_def, notice: 'Import def was successfully created.' }
        format.json { render json: @import_def, status: :created, location: @import_def }
      else
        format.html { render action: "new" }
        format.json { render json: @import_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /import_defs/1
  # PUT /import_defs/1.json
  def update
    @import_def = ImportDef.find(params[:id])

    respond_to do |format|
      if @import_def.update_attributes(params[:import_def])
        format.html { redirect_to @import_def, notice: 'Import def was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @import_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_defs/1
  # DELETE /import_defs/1.json
  def destroy
    @import_def = ImportDef.find(params[:id])
    @import_def.destroy

    respond_to do |format|
      format.html { redirect_to import_defs_url }
      format.json { head :ok }
    end
  end
end
