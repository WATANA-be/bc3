class AddPhraseToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_column:bookmarks,:phrase,:text
  end
end
