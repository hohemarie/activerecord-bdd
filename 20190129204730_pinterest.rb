class pinterest < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.has_many :comment, index:true
      t.string :url
      t.string :users
    end
    
    create_table :users do |t|
      t.has_many :comment, index: true
    end
 
    create_table :comment do |t|
      t.belongs_to :pins, index: true
      t.belongs_to :users, index: true
      t.text :body
    end
    #liens entre les models : les utilisateurs peuvent commenter les pins mais ne peuvent pas commenter les commentaires

  end


end
