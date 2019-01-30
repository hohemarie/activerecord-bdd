class class < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t| 
      t.string :name
    end
    
    create_table :class do |t| 
      t.string :title
    end

    #TO-DO:
    #faire les liens entre les models : dans ce site il y aura des élèves qui peuvent s'inscrire à un seul cours ; un cours pourra avoir plusieurs élèves. 
  end
end
