require "./user"
require "./team"

class TeamRole < BaseModel
  table :team_roles do
    column role : String
    belongs_to user : User
    belongs_to team : Team
  end
end
