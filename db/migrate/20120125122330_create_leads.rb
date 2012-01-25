class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :Firmanavn
      t.string :Adresse
      t.string :Postnr
      t.integer :Telefon
      t.string :Primar_branche
      t.string :Email
      t.string :Tilladelse_til
      t.integer :Antal_tilladelser
      t.string :DTL_Regioner
      t.integer :Antal_biler
      t.integer :Antal_chaufforer
      t.string :Kunde
      t.string :Konkurrent
      t.string :Dorcanvas
      t.string :Telefoncanvas_EGO
      t.string :Telefoncanvas_outsourcet
      t.string :M1_Kontakt_etableret
      t.string :M2_Mode_booket
      t.string :M3_Mode_gennemfort
      t.string :M4_Aftale_indgaet
      t.string :M5_Deltager_booket
      t.string :Milepalsstatus
      t.string :Naste_kontakt
      t.string :Kommentarer_og_noter

      t.timestamps
    end
  end
end
