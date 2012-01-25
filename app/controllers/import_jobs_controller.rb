class ImportJobsController < ApplicationController
  # GET /import_jobs
  # GET /import_jobs.json
  def index
    @import_jobs = ImportJob.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @import_jobs }
    end
  end

  # GET /import_jobs/1
  # GET /import_jobs/1.json
  def show
    @import_job = ImportJob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @import_job }
    end
  end

  # GET /import_jobs/new
  # GET /import_jobs/new.json
  def new
    @import_job = ImportJob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @import_job }
    end
  end

  # GET /import_jobs/1/edit
  def edit
    @import_job = ImportJob.find(params[:id])
  end

  # POST /import_jobs
  # POST /import_jobs.json
  def create
    @import_job = ImportJob.new(params[:import_job])

    respond_to do |format|
      if @import_job.save
        format.html { redirect_to @import_job, notice: 'Import job was successfully created.' }
        format.json { render json: @import_job, status: :created, location: @import_job }
      else
        format.html { render action: "new" }
        format.json { render json: @import_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /import_jobs/1
  # PUT /import_jobs/1.json
  def update
    @import_job = ImportJob.find(params[:id])

    respond_to do |format|
      if @import_job.update_attributes(params[:import_job])
        format.html { redirect_to @import_job, notice: 'Import job was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @import_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_jobs/1
  # DELETE /import_jobs/1.json
  def destroy
    @import_job = ImportJob.find(params[:id])
    @import_job.destroy

    respond_to do |format|
      format.html { redirect_to import_jobs_url }
      format.json { head :ok }
    end
  end
end
