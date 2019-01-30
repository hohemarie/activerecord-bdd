class program < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end

    add_column :users, :is_admin, :boolean
    remove_column :users, :is_admin, :boolean
    #comment faire pour que la table books par ex. ait une information en plus : par ex. celle de la référence de l'auteur de chaque livre
    #rajouter la ligne t.belongs_to :author, index: true
    create_table :articles do |t|
      t.string :title
      t.text :content
    end
    create_table :categories do |t|
      t.string :name
    end
    create_table :comments do |t|
      t.text :content
    end

  end


end
