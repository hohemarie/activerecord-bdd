class class < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t| 
      t.belongs_to :class, index: true
      t.string :name
    end
    
    create_table :class do |t|
      t.has_many :students, index: true
      t.string :title
    end

    #liens entre les models : dans ce site il y aura des élèves qui peuvent s'inscrire à un seul cours ; un cours pourra avoir plusieurs élèves. 
  end
end
