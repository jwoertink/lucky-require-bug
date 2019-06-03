require "./user"
require "./team"

class Profile < BaseModel
  table :profiles do
    column name : String
    belongs_to user : User
    belongs_to team : Team
  end
end
