class moocademy < ActiveRecord::Migration[5.2]
  def change
    create_table :cours do |t|
      t.has_many :lecons, index: true
      t.string :titre
      t.string :description
    end

    #add_column :users, :is_admin, :boolean
    #remove_column :users, :is_admin, :boolean
    #comment faire pour que la table books par ex. ait une information en plus : par ex. celle de la référence de l'auteur de chaque livre
    #rajouter la ligne t.belongs_to :author, index: true
    create_table :lecons do |t|
      t.belongs_to :cours, index: true
      t.string :titre
      t.text :body
    end
    ##TO-DO:
    #faire les liens entre les models : chaque cours a plusieurs lecons

  end


end
