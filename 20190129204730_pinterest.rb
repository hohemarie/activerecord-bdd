class pinterest < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :url
      t.string :users
    end
    
    create_table :comment do |t|
      t.string :users
      t.text :body
    end
    ##TO-DO:
    #faire les liens entre les models : les utilisateurs peuvent commenter les pins mais ne peuvent pas commenter les commentaires

  end


end
