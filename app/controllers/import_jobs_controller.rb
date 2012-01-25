class ImportJobsController < ApplicationController
  # GET /import_jobs
  # GET /import_jobs.json
  def csv
    require 'csv'
    #@import_job = ImportJob.find_by_id(:params[:id])
    @Firmanavn = 0
    @Adresse = 1
    @Postnr = 2
    @Telefon = 3
    @Primar_branche = 4
    @Email = 5
    @Tilladelse_til = 6
    @Antal_tilladelser = 7
    @DTL_Regioner = 8
    @Antal_biler = 9
    @Antal_chaufforer = 10
    @Kunde = 11
    @Konkurrent = 12
    @Dorcanvas = 13
    @Telefoncanvas_EGO = 14
    @Telefoncanvas_outsourcet = 15
    @M1_Kontakt_etableret = 16
    @M2_Mode_booket = 17
    @M3_Mode_gennemfort = 18
    @M4_Aftale_indgaet = 19
    @M5_Deltager_booket = 20
    @Milepalsstatus = 21
    @Naste_kontakt = 22
    @Kommentarer_og_noter = 23
    logger.info('HALLO')
    logger.info(params[:nyid])

    csv_text = File.read('kort_godsliste.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      #row = row.to_hash.with_indifferent_access
      @ny = Lead.new
      @ny.Firmanavn = row[@Firmanavn]
      logger.info(row)
      @ny.Adresse = row[@Adresse]
      @ny.Postnr = row[@Postnr]
      @ny.Telefon = row[@Telefon]
      @ny.Primar_branche = row[@Primar_branche]
      @ny.Email = row[@Email]
      @ny.Tilladelse_til = row[@Tilladelse_til]
      @ny.Antal_tilladelser = row[@Antal_tilladelser]
      @ny.DTL_Regioner = row[@DTL_Regioner]
      @ny.Antal_biler = row[@Antal_biler]
      @ny.Antal_chaufforer = row[@Antal_chaufforer]
      @ny.Kunde = row[@Kunde]
      @ny.Konkurrent = row[@Konkurrent]
      @ny.Dorcanvas = row[@Dorcanvas]
      @ny.Telefoncanvas_EGO = row[@Telefoncanvas_EGO]
      @ny.Telefoncanvas_outsourcet = row[@Telefoncanvas_outsourcet]
      @ny.M1_Kontakt_etableret = row[@M1_Kontakt_etableret]
      @ny.M2_Mode_booket = row[@M2_Mode_booket]
      @ny.M3_Mode_gennemfort = row[@M3_Mode_gennemfort]
      @ny.M4_Aftale_indgaet = row[@M4_Aftale_indgaet]
      @ny.M5_Deltager_booket = row[@M5_Deltager_booket]
      @ny.Milepalsstatus = row[@Milepalsstatus]
      @ny.Naste_kontakt = row[@Naste_kontakt]
      @ny.Kommentarer_og_noter = row[@Kommentarer_og_noter]
      @ny.save
      logger.info (@ny.to_yaml)
    end




      #Lead.create!(row.to_hash.symbolize_keys)
    #end
    redirect_to :root
  end

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
