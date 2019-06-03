class CreatePreferences::V20190603092203 < Avram::Migrator::Migration::V1
  def migrate
    create :preferences do
      add subscribed : Bool
      add_belongs_to user : User, on_delete: :cascade
      add_belongs_to team : Team, on_delete: :cascade
    end
    # create :things do
    #   add title : String
    #   add description : String?
    # end

    # Run custom SQL with execute
    #
    # execute "CREATE UNIQUE INDEX things_title_index ON things (title);"
  end

  def rollback
    drop :preferences
    # drop :things
  end
end
