class CreateProfiles::V20190603091917 < Avram::Migrator::Migration::V1
  def migrate
    create :profiles do
      add name : String
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
    drop :profiles
    # drop :things
  end
end
