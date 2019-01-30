class hacking < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.has_many :comment, index:true
      t.string :url
      t.string :users
    end
    
    create_table :comment do |t|
      t.belongs_to :links, index:true
      t.has_many :comment_of_comment
      t.string :users
      t.text :body
    end

    create_table :comment_of_comment do |t| 
      t.belongs_to :comment
      t.string :users
      t.text :body
    end 
    ##TO-DO:
    #faire les liens entre les models : comment faire en sorte qu'un commentaire sache où dans la hiérarchie il se trouve ?
  end
end
