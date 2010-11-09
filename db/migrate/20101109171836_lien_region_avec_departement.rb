class LienRegionAvecDepartement < ActiveRecord::Migration
  def self.up
    add_column :departements, :region_id, :integer
    
    #lien entre le département et la région par l'id
    #boucle de chez boucle
    departements = Departement.all
    regions = Region.all
    departements.each do |d|
      regions.each do |r|
        if r.code == d.code_region
          d.region_id = r.id
          d.save
        end
      end
    end
    
    #on retire le code région temporraire
    remove_column :departements, :code_region
  end

  def self.down
  end
end
