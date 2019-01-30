class hacking < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t| 
      t.string :url
      t.string :users
    end
    
    create_table :comment do |t| 
      t.string :users
      t.text :body
    end

    create_table :comment_of_comment do |t| 
      t.string :users
      t.text :body
       
    ##TO-DO:
    #faire les liens entre les models : comment faire en sorte qu'un commentaire sache où dans la hiérarchie il se trouve ?
  end
end
