class LeadsController < ApplicationController
  # GET /leads
  # GET /leads.json
  # encoding: UTF-8
  def csv
    require 'csv'
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

    csv_text = File.read('godslisten.csv')
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
    @leads = Lead.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leads }
    end
  end

  # GET /leads/1
  # GET /leads/1.json
  def show
    @lead = Lead.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lead }
    end
  end

  # GET /leads/new
  # GET /leads/new.json
  def new
    @lead = Lead.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lead }
    end
  end

  # GET /leads/1/edit
  def edit
    @lead = Lead.find(params[:id])
  end

  # POST /leads
  # POST /leads.json
  def create
    @lead = Lead.new(params[:lead])

    respond_to do |format|
      if @lead.save
        format.html { redirect_to @lead, notice: 'Lead was successfully created.' }
        format.json { render json: @lead, status: :created, location: @lead }
      else
        format.html { render action: "new" }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leads/1
  # PUT /leads/1.json
  def update
    @lead = Lead.find(params[:id])

    respond_to do |format|
      if @lead.update_attributes(params[:lead])
        format.html { redirect_to @lead, notice: 'Lead was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leads/1
  # DELETE /leads/1.json
  def destroy
    @lead = Lead.find(params[:id])
    @lead.destroy

    respond_to do |format|
      format.html { redirect_to leads_url }
      format.json { head :ok }
    end
  end
end
