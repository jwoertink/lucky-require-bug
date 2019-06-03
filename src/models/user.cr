require "./team_role"

class User < BaseModel
  table :users do
    column name : String
    has_many team_roles : TeamRole
  end
end
