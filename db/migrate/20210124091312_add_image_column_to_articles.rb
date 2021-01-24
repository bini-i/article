class AddImageColumnToArticles < ActiveRecord::Migration[6.0]
  def change
    add_attachment :articles, :image
  end
end
