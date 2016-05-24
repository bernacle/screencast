class AddUsersToEpisodes < ActiveRecord::Migration
  def change
    add_reference :episodes, :user, index: true, foreign_key: true
  end
end
