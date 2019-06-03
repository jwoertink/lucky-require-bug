class CreateUsers::V20190603091447 < Avram::Migrator::Migration::V1
  def migrate
    create :users do
      add name : String
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
    drop :users
    # drop :things
  end
end
