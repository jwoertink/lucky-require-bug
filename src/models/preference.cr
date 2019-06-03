require "./user"
require "./team"

class Preference < BaseModel
  table :preferences do
    column subscribed : Bool
    belongs_to user : User
    belongs_to team : Team
  end
end
